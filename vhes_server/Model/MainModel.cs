using System.Diagnostics;
using System.IO;
using System.Net.Sockets;
using Vhes.Common;

namespace Vhes.Model
{
    public class MainModel : NotifyBase
    {
        #region 相关常数
        /// <summary>
        /// 文件大小
        /// </summary>
        public const double FILE_SIZE_Kb = 1024;
        public const double FILE_SIZE_Mb = 1024 * 1024;
        public const double FILE_SIZE_Gb = 1024 * 1024 * 1024;

        /// <summary>
        /// ScottPlot 绘图区域缓冲区长度
        /// </summary>
        public const int PLOT_DATA_BUFFER_SIZE = 128;

        /// <summary>
        /// HEVC 截取码流长度（单位：字节）
        /// </summary>
        public const int HEVC_PARTIAL_STRING_LENGTH = 110;

        /// <summary>
        /// HEVC 播放阈值
        /// </summary>
        public const double HEVC_PLAY_BITS_THRESHOLD = 1 * FILE_SIZE_Mb;
        #endregion

        #region 局域变量
        /// <summary>
        /// 视频播放器开启标志
        /// </summary>
        public bool VideoPlayerStarted
        {
            get
            {
                return VideoPlayerProcess != null;
            }
        }

        /// <summary>
        /// 视频播放器进程句柄
        /// </summary>
        public Process VideoPlayerProcess { get; set; } = null;

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
        /// 平均码率（bit/s）
        /// </summary>
        private double _averageBitrate = 0;
        public double AverageBitrate
        {
            get { return _averageBitrate; }
            set
            {
                _averageBitrate = value;
                if(_averageBitrate < FILE_SIZE_Kb)
                {
                    AverageBitrateFormatted = $"{_averageBitrate} b/s";
                }
                else if(_averageBitrate < FILE_SIZE_Mb)
                {
                    AverageBitrateFormatted = $"{(_averageBitrate / FILE_SIZE_Kb):F2} kb/s";
                }
                else if (_averageBitrate < FILE_SIZE_Gb)
                {
                    AverageBitrateFormatted = $"{(_averageBitrate / FILE_SIZE_Mb):F2} Mb/s";
                }
                else
                {
                    AverageBitrateFormatted = $"{(_averageBitrate / FILE_SIZE_Mb):F2} Gb/s";
                }
            }
        }

        /// <summary>
        /// PSNR（dB）
        /// </summary>
        private double _psnr = 0;
        public double Psnr
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
        public long HevcBsReceiveBitCntCache { get; set; } = 0L;

        /// <summary>
        /// HEVC 码流增长数（字节）
        /// </summary>
        public long HevcBsReceiveBitInc => HevcBsReceiveBitCnt - HevcBsReceiveBitCntCache;

        /// <summary>
        /// HEVC 码流接收长度
        /// </summary>
        private long _hevcBsReceiveBitCnt = 0L;
        public long HevcBsReceiveBitCnt
        {
            get { return _hevcBsReceiveBitCnt; }
            set
            {
                _hevcBsReceiveBitCnt = value;
                if(_hevcBsReceiveBitCnt < FILE_SIZE_Kb)
                {
                    HevcBsReceivedBitCntFormatted = $"{_hevcBsReceiveBitCnt} bit";
                }
                else if(_hevcBsReceiveBitCnt < FILE_SIZE_Mb)
                {
                    HevcBsReceivedBitCntFormatted = $"{(_hevcBsReceiveBitCnt / FILE_SIZE_Kb):F2} kb";
                }
                else if(_hevcBsReceiveBitCnt < FILE_SIZE_Gb)
                {
                    HevcBsReceivedBitCntFormatted = $"{(_hevcBsReceiveBitCnt / FILE_SIZE_Mb):F2}  Mb";
                }
                else
                {
                    HevcBsReceivedBitCntFormatted = $"{(_hevcBsReceiveBitCnt / FILE_SIZE_Gb):F2} Gb";
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
        private string _averageBitrateFormatted = string.Empty;
        public string AverageBitrateFormatted
        {
            get { return _averageBitrateFormatted; }
            set
            {
                _averageBitrateFormatted = value;
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
        private string _hevcBsReceivedBitCntFormatted = string.Empty;
        public string HevcBsReceivedBitCntFormatted
        {
            get { return _hevcBsReceivedBitCntFormatted; }
            set
            {
                _hevcBsReceivedBitCntFormatted = value;
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

        /// <summary>
        /// HEVC 接收码流截取部分（前 128 字节）
        /// </summary>
        private string _hevcBsPartialString = string.Empty;
        public string HevcBsPartialString
        {
            get { return _hevcBsPartialString; }
            set
            {
                _hevcBsPartialString = value;
                DoNotify();
            }
        }
        #endregion

        #region 绑定命令
        public CommandBase LaunchServerCommand { get; set; }
        #endregion

        #region ScottPlot 绘图控件句柄
        /// <summary>
        /// 帧率绘图控件
        /// </summary>
        public ScottPlot.WpfPlot FpsPlot { get; set; } = null;

        /// <summary>
        /// 平均码率绘图控件
        /// </summary>
        public ScottPlot.WpfPlot AverageBitratePlot { get; set; } = null;

        /// <summary>
        /// PSNR 绘图控件
        /// </summary>
        public ScottPlot.WpfPlot PsnrBitratePlot { get; set; } = null;
        #endregion

        #region ScottPlot 数据源
        /// <summary>
        /// 帧率（fps）
        /// </summary>
        public double[] FpsArray { get; set; } = new double[PLOT_DATA_BUFFER_SIZE];

        /// <summary>
        /// 平均码率（Byte/s）
        /// </summary>
        public double[] AverageBitrateArray { get; set; } = new double[PLOT_DATA_BUFFER_SIZE];

        /// <summary>
        /// PSNR（dB）
        /// </summary>
        public double[] PsnrArray { get; set; } = new double[PLOT_DATA_BUFFER_SIZE];
        #endregion

        public MainModel()
        {
            
        }
    }
}
