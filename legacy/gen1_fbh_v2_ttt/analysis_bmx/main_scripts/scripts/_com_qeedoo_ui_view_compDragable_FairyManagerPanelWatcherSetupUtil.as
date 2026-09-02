package
{
   import com.qeedoo.ui.view.compDragable.FairyManagerPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_FairyManagerPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_FairyManagerPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FairyManagerPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_FairyManagerPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new PropertyWatcher("_fairyPageAc",{"propertyChange":true},[param3[3]],param2);
         param4[6].updateParent(param1);
      }
   }
}

