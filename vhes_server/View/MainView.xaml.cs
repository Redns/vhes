using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using Xpeng.Common;
using Xpeng.ViewModel;

namespace Xpeng.View
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainView : Window
    {
        public Point lastPoint;
        public MainView()
        {
            InitializeComponent();
            MaxHeight = SystemParameters.PrimaryScreenHeight;

            GlobalValues.mainViewModel = new MainViewModel();
            DataContext = GlobalValues.mainViewModel;
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
