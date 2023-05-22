using ScottPlot;
using ScottPlot.Plottable;
using System;
using System.Windows;
using System.Windows.Input;
using Xpeng.Common;
using Xpeng.ViewModel;

namespace Xpeng.View
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainView : Window
    {
        public MainView()
        {
            // 初始化控件
            InitializeComponent();
            // MVVM 初始化
            InitMvvm();
            // 初始化 ScottPlot 控件
            InitScottPlotComponent();
        }


        /// <summary>
        /// MVVM 初始化
        /// </summary>
        private void InitMvvm()
        {
            MaxHeight = SystemParameters.PrimaryScreenHeight;
            GlobalValues.MainViewModel = new MainViewModel();
            DataContext = GlobalValues.MainViewModel;
        }


        /// <summary>
        /// 初始化 ScottPlot 绘图控件
        /// </summary>
        private void InitScottPlotComponent()
        {
            // 绑定控件句柄
            GlobalValues.MainViewModel.MainModel.FpsPlot = FpsPlot;
            GlobalValues.MainViewModel.MainModel.AverageBitratePlot = AverageBitRatePlot;
            GlobalValues.MainViewModel.MainModel.PsnrBitratePlot = PsnrPlot;
            // 添加数据源
            var fpsSignal = FpsPlot.Plot.AddSignal(GlobalValues.MainViewModel.MainModel.FpsArray);
            var averageBitrateSignal = AverageBitRatePlot.Plot.AddSignal(GlobalValues.MainViewModel.MainModel.AverageBitrateArray);
            var psnrSignal = PsnrPlot.Plot.AddSignal(GlobalValues.MainViewModel.MainModel.PsnrArray);
            // 设置绘图控件标题和坐标轴
            FpsPlot.Plot.Title("FPS", bold: false);
            FpsPlot.Plot.YLabel("fps");
            FpsPlot.Plot.AxisAutoX(margin: 0);
            FpsPlot.Plot.SetAxisLimits(yMin: 0, yMax: 70);
            AverageBitRatePlot.Plot.Title("Average Bitrate", bold: false);
            AverageBitRatePlot.Plot.YLabel("Mb/s");
            AverageBitRatePlot.Plot.AxisAutoX(margin: 0);
            AverageBitRatePlot.Plot.SetAxisLimits(yMin: 0, yMax: 15);
            PsnrPlot.Plot.Title("PSNR", bold: false);
            PsnrPlot.Plot.YLabel("dB");
            PsnrPlot.Plot.AxisAutoX(margin: 0);
            PsnrPlot.Plot.SetAxisLimits(yMin: 0, yMax: 60);
            // 隐藏标记点以获得光滑曲线
            fpsSignal.LineWidth = 3;
            averageBitrateSignal.LineWidth = 3;
            psnrSignal.LineWidth = 3;
            // 设置透明背景
            FpsPlot.Plot.Style(figureBackground: System.Drawing.Color.Transparent);
            AverageBitRatePlot.Plot.Style(figureBackground: System.Drawing.Color.Transparent);
            PsnrPlot.Plot.Style(figureBackground: System.Drawing.Color.Transparent);
            // 更新绘图控件
            FpsPlot.Refresh();
            AverageBitRatePlot.Refresh();
            PsnrPlot.Refresh();
        }


        /// <summary>
        /// 拖动上方窗体跟随移动
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void StackPanel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                if (WindowState == WindowState.Maximized)
                {
                    WindowState = WindowState.Normal;
                }
                DragMove();
            }
        }


        /// <summary>
        /// 最小化窗口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void WindowMinSize(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }


        /// <summary>
        /// 最大化窗口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void WindowMaxSize(object sender, RoutedEventArgs e)
        {
            WindowState = (WindowState == WindowState.Maximized) ? WindowState.Normal : WindowState.Maximized;
        }


        /// <summary>
        /// 关闭窗口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void WindowClose(object sender, RoutedEventArgs e)
        {
            // 释放码流文件句柄
            GlobalValues.MainViewModel.MainModel.HevcStream.Flush();
            GlobalValues.MainViewModel.MainModel.HevcStream.Close();

            // 关闭 TCP 服务器
            if (GlobalValues.MainViewModel.MainModel.ServerSocket.IsBound)
            {
                GlobalValues.MainViewModel.MainModel.ServerSocket.Close();
            }

            // 释放定时器资源
            GlobalValues.MainViewModel.AverageBitrateCountTimer?.Dispose();
            GlobalValues.MainViewModel.PlotRefreshTimer?.Stop();

            // 关闭窗口
            Close();
        }


        /// <summary>
        /// 关闭窗口，同时关闭应用程序
        /// </summary>
        /// <param name="e"></param>
        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
            Application.Current.Shutdown();
        }
    }
}
