package
{
   import com.qeedoo.ui.view.compDragable.SystemShopPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_SystemShopPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_SystemShopPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SystemShopPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_SystemShopPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[10] = new PropertyWatcher("player",{"propertyChange":true},[param3[4],param3[8],param3[11]],null);
         param4[20] = new PropertyWatcher("gold",{"propertyChange":true},[param3[8]],null);
         param4[11] = new PropertyWatcher("goldBind",{"propertyChange":true},[param3[4]],null);
         param4[25] = new PropertyWatcher("exPoint",{"propertyChange":true},[param3[11]],null);
         param4[10].updateParent(param2.apply(param1,["_core"]));
         param4[10].addChild(param4[20]);
         param4[10].addChild(param4[11]);
         param4[10].addChild(param4[25]);
      }
   }
}

