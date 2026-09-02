package
{
   import com.qeedoo.ui.view.compDragable.DailySignInPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_DailySignInPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_DailySignInPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailySignInPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_DailySignInPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[24] = new PropertyWatcher("critNum",{"propertyChange":true},[param3[11]],param2);
         param4[24].updateParent(param1);
      }
   }
}

