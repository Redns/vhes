using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using Vhes.Common;
using Vhes.Model;

namespace Xpeng.ViewModel
{
    public class MainViewModel
    {
        public MainModel MainModel { get; set; }
        public System.Timers.Timer AverageBitRateCountTimer { get; set; } = new System.Timers.Timer();

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
                }
            };
            // 初始化平均码率统计计数器
            
        }


        /// <summary>
        /// 初始化服务器
        /// </summary>
        /// <param name="setting">应用设置</param>
        /// <returns></returns>
        private Socket InitServer(AppSetting setting)
        {
            // 初始化平均码率统计定时器
            InitAverageBitRateCountTimer(100);
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
        /// <param name="interval"></param>
        private void InitAverageBitRateCountTimer(double interval)
        {
            AverageBitRateCountTimer.Interval = interval;
            AverageBitRateCountTimer.Elapsed += (serder, args) =>
            {
                MainModel.AverageBitRate = MainModel.HevcBsReceiveByteInc / interval * 10;
                MainModel.HevcBsReceiveByteCntCache = MainModel.HevcBsReceiveByteCnt;
            };
            AverageBitRateCountTimer.AutoReset = true;
            AverageBitRateCountTimer.Enabled = true;
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
            // 循环接收码流
            var recvBytes = 0;
            var recvBuffer = new byte[4 * 1024];
            while((recvBytes = client.Receive(recvBuffer)) > 0)
            {
                MainModel.HevcBsReceiveByteCnt += recvBytes;
                MainModel.HevcStream.Write(recvBuffer, 0, recvBytes);
            }
        }
    }
}
