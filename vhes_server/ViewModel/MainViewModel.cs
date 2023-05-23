using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Windows.Threading;
using Vhes.Common;
using Vhes.Model;

namespace Xpeng.ViewModel
{
    public class MainViewModel
    {
        public MainModel MainModel { get; set; }
        public Timer AverageBitrateCountTimer { get; set; } = null;
        public DispatcherTimer PlotRefreshTimer { get; set; } = null;

        public MainViewModel()
        {
            // 初始化 MainModel
            MainModel = new MainModel() 
            {
                ServerLaunched = false,
                LaunchServerCommand = new CommandBase()
                {
                    DoCanExecute = new Func<object, bool>((o) => true),
                    DoExecute = (o) =>
                    {
                        if (MainModel.ServerLaunched)
                        {
                            // 关闭服务器
                            MainModel.ServerSocket.Close();
                            MainModel.ServerLaunched = false;
                        }
                        else
                        {
                            // 启动服务器
                            MainModel.ServerSocket = InitServer(MainModel.AppSetting);
                            MainModel.ServerLaunched = (MainModel.ServerSocket != null);
                        }
                    }
                },
                Fps = 0,
                Psnr = 0,
                AverageBitrate = 0,
                HevcBsReceiveBitCnt = 0,
                HevcBsPartialString = "暂无码流数据"
            };
        }


        /// <summary>
        /// 初始化服务器
        /// </summary>
        /// <param name="setting">应用设置</param>
        /// <returns></returns>
        private Socket InitServer(AppSetting setting)
        {
            // 初始化平均码率统计定时器
            InitAverageBitRateTimer(100, 100);
            // 初始化服务器套接字
            var serverSocket = InitServerSocket(setting.Connection);
            // 开启服务器连接线程
            new Thread(() =>
            {
                try
                {
                    while (serverSocket.IsBound)
                    {
                        // 等待客户端连接
                        Socket client = serverSocket.Accept();
                        new Thread((o) =>
                        {
                            try
                            {
                                if (o is Socket clientSocket)
                                {
                                    // 检查握手信号
                                    var recvBuffer = new byte[4096];
                                    var recvBytes = clientSocket.Receive(recvBuffer, SocketFlags.None);
                                    if (Encoding.UTF8.GetString(recvBuffer, 0, recvBytes) == setting.Connection.HandshakeSignal)
                                    {
                                        ClientCommunicate(clientSocket, setting.VideoStream);
                                    }
                                    clientSocket.Close();
                                }
                            }
                            catch (Exception)
                            {
                                client.Close();
                            }
                        })
                        {
                            IsBackground = true
                        }.Start(client);
                        Thread.Sleep(100);
                    }
                }
                catch(Exception)
                {
                    serverSocket.Close();
                }
            })
            {
                IsBackground = true
            }.Start();
            return serverSocket;
        }


        /// <summary>
        /// 初始化服务器套接字
        /// </summary>
        /// <param name="setting">服务器连接设置</param>
        /// <returns></returns>
        private Socket InitServerSocket(ConnectionSetting setting)
        {
            // 创建连接终结点
            var ipEndPoint = new IPEndPoint(IPAddress.Parse(setting.Address), setting.Port);
            var videoServerListener = new Socket(ipEndPoint.AddressFamily, SocketType.Stream, ProtocolType.Tcp);
            // 绑定连接终结点及相关信息
            videoServerListener.Bind(ipEndPoint);
            videoServerListener.Listen(setting.MaxAllowConnections);
            // 返回服务器 Socket
            return videoServerListener;
        }


        /// <summary>
        /// 初始化平均码率统计定时器
        /// </summary>
        /// <param name="countInterval"></param>
        private void InitAverageBitRateTimer(int countInterval = 10, int plotRefreshInterval = 50)
        {
            // 平均码率计算定时器
            AverageBitrateCountTimer = new Timer(_ =>
            {
                // 计算平均码率
                MainModel.AverageBitrate = MainModel.HevcBsReceiveBitInc * 1000 / countInterval;
                MainModel.HevcBsReceiveBitCntCache = MainModel.HevcBsReceiveBitCnt;
                // 更新平均码率数据
                Array.Copy(MainModel.AverageBitrateArray, 1, MainModel.AverageBitrateArray, 0, MainModel.AverageBitrateArray.Length - 1);
                MainModel.AverageBitrateArray[MainModel.AverageBitrateArray.Length - 1] = MainModel.AverageBitrate / (1024.0 * 1024.0);
            }, null, 0, countInterval);

            // UI 更新定时器
            PlotRefreshTimer = new DispatcherTimer()
            {
                Interval = TimeSpan.FromMilliseconds(plotRefreshInterval)
            };
            PlotRefreshTimer.Tick += (serder, args) =>
            {
                MainModel.FpsPlot.Refresh();
                MainModel.AverageBitratePlot.Refresh();
                MainModel.PsnrBitratePlot.Refresh();
            };
            PlotRefreshTimer.Start();
        }


        /// <summary>
        /// 客户端通信
        /// </summary>
        /// <param name="client">客户端套接字</param>
        /// <param name="setting">视频流设置</param>
        private void ClientCommunicate(Socket client, VideoStreamSetting setting)
        {
            // 创建码流文件
            if(MainModel.HevcStream == null)
            {
                var videoStreamDirectory = Path.GetDirectoryName(setting.Location);
                if (!Directory.Exists(videoStreamDirectory))
                {
                    Directory.CreateDirectory(videoStreamDirectory);
                }
                MainModel.HevcStream = new FileStream(setting.Location, FileMode.Create, FileAccess.Write);
            }
            // 循环接收下位机数据
            var recvBytes = 0;
            var recvBuffer = new byte[4 * 1024];
            while((recvBytes = client.Receive(recvBuffer)) > 1)
            {
                if (recvBuffer[0] is (byte)PackageCode.Fps)
                {
                    Array.Copy(MainModel.FpsArray, 1, MainModel.FpsArray, 0, MainModel.FpsArray.Length - 1);
                    MainModel.FpsArray[MainModel.FpsArray.Length - 1] = recvBuffer[1];
                }
                else if (recvBuffer[0] is (byte)PackageCode.Psnr)
                {
                    Array.Copy(MainModel.PsnrArray, 1, MainModel.PsnrArray, 0, MainModel.PsnrArray.Length - 1);
                    MainModel.PsnrArray[MainModel.PsnrArray.Length - 1] = recvBuffer[1];
                }
                else if (recvBuffer[0] is (byte)PackageCode.Bs)
                {
                    // 统计接收码流长度
                    MainModel.HevcBsReceiveBitCnt += (recvBytes - 1) * 8;
                    // 将码流写入文件
                    MainModel.HevcStream.Write(recvBuffer, 1, recvBytes - 1);
                    // 更新 UI 界面截取码流
                    var hevcPartialBytes = (recvBytes - 1 > MainModel.HEVC_PARTIAL_STRING_LENGTH) ? MainModel.HEVC_PARTIAL_STRING_LENGTH : (recvBytes - 1);
                    MainModel.HevcBsPartialString = BitConverter.ToString(recvBuffer, 1, hevcPartialBytes).Replace("-", "  ");
                }
            }
        }
    }


    /// <summary>
    /// 包数据类型
    /// </summary>
    public enum PackageCode
    {
        Fps = 0,
        Psnr,
        Bs
    }
}
