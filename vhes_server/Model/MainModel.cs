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
        /// 帧率（fps）
        /// </summary>
        private double _fps = 0;
        public double Fps
        {
            get { return _fps; }
            set
            {
                _fps = value;
                FpsFormatted = $"{_fps:F2} fps";
            }
        }

        /// <summary>
        /// 平均码率（byte/s）
        /// </summary>
        private double _averageBitRate = 0;
        public double AverageBitRate
        {
            get { return _averageBitRate; }
            set
            {
                _averageBitRate = value;
                if(_averageBitRate < FILE_SIZE_KB)
                {
                    AverageBitRateFormatted = $"{_averageBitRate} B/s";
                }
                else if(_averageBitRate < FILE_SIZE_MB)
                {
                    AverageBitRateFormatted = $"{(_averageBitRate / FILE_SIZE_KB):F2} KB/s";
                }
                else if (_averageBitRate < FILE_SIZE_GB)
                {
                    AverageBitRateFormatted = $"{(_averageBitRate / FILE_SIZE_MB):F2} MB/s";
                }
                else
                {
                    AverageBitRateFormatted = $"{(_averageBitRate / FILE_SIZE_MB):F2} GB/s";
                }
            }
        }

        /// <summary>
        /// PSNR（dB）
        /// </summary>
        private double _psnr = 0;
        public double PSnr
        {
            get { return _psnr; }
            set
            {
                _psnr = value;
                _psnrFormatted = $"{_psnr:F2} dB";
            }
        }

        /// <summary>
        /// HEVC 已接收码流字节数缓存（用于计算平均码率）
        /// </summary>
        public long HevcBsReceiveByteCntCache { get; set; } = 0L;

        /// <summary>
        /// HEVC 码流增长数（字节）
        /// </summary>
        public long HevcBsReceiveByteInc => HevcBsReceiveByteCnt - HevcBsReceiveByteCntCache;

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
                    HevcBsReceivedByteCntFormatted = $"{_hevcBsReceiveByteCnt} Byte";
                }
                else if(_hevcBsReceiveByteCnt < FILE_SIZE_MB)
                {
                    HevcBsReceivedByteCntFormatted = $"{(_hevcBsReceiveByteCnt / FILE_SIZE_KB):F2} KB";
                }
                else if(_hevcBsReceiveByteCnt < FILE_SIZE_GB)
                {
                    HevcBsReceivedByteCntFormatted = $"{(_hevcBsReceiveByteCnt / FILE_SIZE_MB):F2} MB";
                }
                else
                {
                    HevcBsReceivedByteCntFormatted = $"{(_hevcBsReceiveByteCnt / FILE_SIZE_GB):F2} GB";
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
        private string _fpsFormatted = string.Empty;
        public string FpsFormatted
        {
            get { return _fpsFormatted; }
            set
            {
                _fpsFormatted = value;
                DoNotify();
            }
        }

        /// <summary>
        /// 平均码率
        /// </summary>
        private string _averageBitRateFormatted = string.Empty;
        public string AverageBitRateFormatted
        {
            get { return _averageBitRateFormatted; }
            set
            {
                _averageBitRateFormatted = value;
                DoNotify();
            }
        }

        /// <summary>
        /// PSNR（单位：dB）
        /// </summary>
        private string _psnrFormatted = string.Empty;
        public string PsnrFormatted
        {
            get { return _psnrFormatted; }
            set
            {
                _psnrFormatted = value;
                DoNotify();
            }
        }

        /// <summary>
        /// 已接受码流大小
        /// </summary>
        private string _hevcBsReceivedByteCntFormatted = string.Empty;
        public string HevcBsReceivedByteCntFormatted
        {
            get { return _hevcBsReceivedByteCntFormatted; }
            set
            {
                _hevcBsReceivedByteCntFormatted = value;
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
