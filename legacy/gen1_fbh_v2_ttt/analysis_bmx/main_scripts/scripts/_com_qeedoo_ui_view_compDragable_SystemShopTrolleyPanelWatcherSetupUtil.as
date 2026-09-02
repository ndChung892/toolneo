package
{
   import com.qeedoo.ui.view.compDragable.SystemShopTrolleyPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_SystemShopTrolleyPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_SystemShopTrolleyPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SystemShopTrolleyPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_SystemShopTrolleyPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[16] = new PropertyWatcher("totalNum",{"propertyChange":true},[param3[8]],param2);
         param4[24] = new PropertyWatcher("totalPrice",{"propertyChange":true},[param3[13]],param2);
         param4[3] = new PropertyWatcher("pageTrolleyGoods",{"propertyChange":true},[param3[1]],param2);
         param4[25] = new PropertyWatcher("acDetail",{"propertyChange":true},[param3[14]],param2);
         param4[16].updateParent(param1);
         param4[24].updateParent(param1);
         param4[3].updateParent(param1);
         param4[25].updateParent(param1);
      }
   }
}

