using System;
using System.IO;
using System.Text.Json;

namespace Vhes.Common
{
    public class AppSetting
    {
        public ConnectionSetting Connection { get; set; }
        public VideoStreamSetting VideoStream { get; set; }


        /// <summary>
        /// 加载应用设置
        /// </summary>
        /// <param name="path">设置保存路径</param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        public static AppSetting Load(string path = "vhes_settings.json")
        {
            return JsonSerializer.Deserialize<AppSetting>(File.ReadAllText(path)) ?? throw new Exception($"Application settings file {path} parsing failed");
        }
    }


    /// <summary>
    /// 视频数据流设置
    /// </summary>
    public class VideoStreamSetting
    {
        /// <summary>
        /// 视频播放器路径
        /// </summary>
        public string Player { get; set; }

        /// <summary>
        /// 数据流路径
        /// </summary>
        public string Location { get; set; }
    }


    /// <summary>
    /// TCP 连接设置
    /// </summary>
    public class ConnectionSetting
    {
        /// <summary>
        /// 连接端口
        /// </summary>
        public int Port { get; set; }

        /// <summary>
        /// IP 地址
        /// </summary>
        public string Address { get; set; }

        /// <summary>
        /// 最大允许连接数量
        /// </summary>
        public int MaxAllowConnections { get; set; }

        /// <summary>
        /// 握手信号（握手成功后开始数据传输）
        /// </summary>
        public string HandshakeSignal { get; set; }
    }
}
