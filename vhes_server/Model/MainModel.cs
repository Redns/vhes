using System.IO;
using System.Net.Sockets;
using Vhes.Common;

namespace Vhes.Model
{
    public class MainModel : NotifyBase
    {
        private readonly double FILE_SIZE_KB = 1024;
        private readonly double FILE_SIZE_MB = 1024 * 1024;
        private readonly double FILE_SIZE_GB = 1024 * 1024 * 1024;

        #region 局域变量
        /// <summary>
        /// 应用设置
        /// </summary>
        private static AppSetting _appSetting = null;
        public static AppSetting AppSetting
        {
            get
            {
                if (_appSetting is null)
                {
                    _appSetting = AppSetting.Load();
                }
                return _appSetting;
            }
            set
            {
                _appSetting = value;
            }
        }

        /// <summary>
        /// 服务器启动标志
        /// </summary>
        private bool _serverLaunched = false;
        public bool ServerLaunched
        {
            get { return _serverLaunched; }
            set
            {
                _serverLaunched = value;
                if (_serverLaunched)
                {
                    LaunchButtonContent = "停   止";
                    LaunchButtonBackgroundColor = "#FFC04048";
                }
                else
                {
                    LaunchButtonContent = "启   动";
                    LaunchButtonBackgroundColor = "#FF0682FF";
                }
            }
        }

        /// <summary>
        /// 服务器套接字
        /// </summary>
        public Socket ServerSocket { get; set; } = null;

        /// <summary>
        /// HEVC 码流接收长度
        /// </summary>
        private long _hevcBsReceiveByteCnt = 0L;
        public long HevcBsReceiveByteCnt
        {
            get { return _hevcBsReceiveByteCnt; }
            set
            {
                _hevcBsReceiveByteCnt = value;
                if(_hevcBsReceiveByteCnt < FILE_SIZE_KB)
                {
                    ReceivedBsLength = $"{_hevcBsReceiveByteCnt} Byte";
                }
                else if(_hevcBsReceiveByteCnt < FILE_SIZE_MB)
                {
                    ReceivedBsLength = $"{(_hevcBsReceiveByteCnt / FILE_SIZE_KB):.2f} KB";
                }
                else if(_hevcBsReceiveByteCnt < FILE_SIZE_GB)
                {
                    ReceivedBsLength = $"{(_hevcBsReceiveByteCnt / FILE_SIZE_MB):.2f} MB";
                }
                else
                {
                    ReceivedBsLength = $"{(_hevcBsReceiveByteCnt / FILE_SIZE_GB):.2f} GB";
                }
            }
        }

        /// <summary>
        /// HEVC 码流
        /// </summary>
        public FileStream HevcStream { get; set; } = null;
        #endregion

        #region 绑定变量
        /// <summary>
        /// 帧率（frame/s）
        /// </summary>
        private string _fps = string.Empty;
        public string Fps
        {
            get { return _fps; }
            set
            {
                _fps = value;
                DoNotify();
            }
        }

        /// <summary>
        /// 平均码率
        /// </summary>
        private string _averageBitRate = string.Empty;
        public string AverageBitRate
        {
            get { return _averageBitRate; }
            set
            {
                _averageBitRate = value;
                DoNotify();
            }
        }

        /// <summary>
        /// PSNR（单位：dB）
        /// </summary>
        private string _psnr = string.Empty;
        public string Psnr
        {
            get { return _psnr; }
            set
            {
                _psnr = value;
                DoNotify();
            }
        }

        /// <summary>
        /// 已接受码流大小
        /// </summary>
        private string _receivedBsLength = string.Empty;
        public string ReceivedBsLength
        {
            get { return _receivedBsLength; }
            set
            {
                _receivedBsLength = value;
                DoNotify();
            }
        }

        /// <summary>
        /// 启动按钮背景颜色
        /// </summary>
        private string _launchButtonBackgroundColor = string.Empty;
        public string LaunchButtonBackgroundColor
        {
            get { return _launchButtonBackgroundColor; }
            set
            {
                _launchButtonBackgroundColor = value;
                DoNotify();
            }
        }

        /// <summary>
        /// 启动按钮文本
        /// </summary>
        private string _launchButtonContent = string.Empty;
        public string LaunchButtonContent
        {
            get { return _launchButtonContent; }
            set
            {
                _launchButtonContent = value;
                DoNotify();
            }
        }
        #endregion

        #region 绑定命令
        public CommandBase LaunchServerCommand { get; set; }
        #endregion

        public MainModel()
        {
            
        }
    }
}
