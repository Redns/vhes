using System.Net;
using System.Net.Sockets;
using System.Text;
using vhes_server.Common;

namespace vhes_server
{
    public class Program
    {
        public static async Task Main()
        {
            // 加载应用设置
            var setting = AppSetting.Load();

            // HEVC 视频流
            using var videoStreamWriter = InitVideoStream(setting.VideoStream);
            using var videoServer = await InitConnectionAsync(setting.Connection);
            

            var buffer = new byte[64 * 1024];
            while (true)
            {
                var recvByteCnt = await videoServer.ReceiveAsync(buffer, SocketFlags.None);
                if (recvByteCnt > 0)
                {
                    videoStreamWriter.Write(buffer, 0, recvByteCnt);
                }
            }
        }


        /// <summary>
        /// 初始化连接
        /// </summary>
        /// <param name="setting">连接设置</param>
        /// <returns></returns>
        public static async ValueTask<Socket> InitConnectionAsync(ConnectionSetting setting)
        {
            // 创建连接终结点
            var ipEndPoint = new IPEndPoint(IPAddress.Parse(setting.Address), setting.Port);
            var videoServerListener = new Socket(ipEndPoint.AddressFamily, SocketType.Stream, ProtocolType.Tcp);
            // 绑定连接终结点及相关信息
            videoServerListener.Bind(ipEndPoint);
            videoServerListener.Listen(setting.MaxAllowConnections);
            // 等待握手信号
            var buffer = new byte[1024];
            var videoServerHandler = await videoServerListener.AcceptAsync();
            while (true)
            {
                var bufferReceiveByteCount = await videoServerHandler.ReceiveAsync(buffer, SocketFlags.None);
                if (Encoding.UTF8.GetString(buffer, 0, bufferReceiveByteCount) == setting.HandshakeSignal)
                {
                    await videoServerHandler.SendAsync(Encoding.UTF8.GetBytes(setting.HandshakeSignal), SocketFlags.None); break;
                }
            }
            return videoServerHandler;
        }


        /// <summary>
        /// 初始化视频流
        /// </summary>
        /// <param name="setting"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        public static FileStream InitVideoStream(VideoStreamSetting setting)
        {
            var videoStreamDirectory = Path.GetDirectoryName(setting.Location);
            if(!Directory.Exists(videoStreamDirectory))
            {
                Directory.CreateDirectory(videoStreamDirectory ?? throw new Exception("The format of the code stream saving path is incorrect"));
            }

            if (File.Exists(setting.Location))
            {
                File.Delete(setting.Location);
            }

            return new FileStream(setting.Location, FileMode.CreateNew, FileAccess.Write);
        }
    }
}