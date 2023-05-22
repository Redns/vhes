using Xpeng.View;
using Xpeng.ViewModel;

namespace Xpeng.Common
{
    public static class GlobalValues
    {
        #region MVVM 相关句柄
        public static MainView MainView { get; set; } = null;
        public static MainViewModel MainViewModel { get; set; } = null;
        #endregion
    }
}
