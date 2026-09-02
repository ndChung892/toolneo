package
{
   import com.qeedoo.ui.view.compDragable.TempBagSlot;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_TempBagSlotWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_TempBagSlotWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TempBagSlot.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_TempBagSlotWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[11] = new PropertyWatcher("slotRep",{"propertyChange":true},[param3[5]],param2);
         param4[12] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[5]],null);
         param4[21] = new PropertyWatcher("mxslotRep",{"propertyChange":true},[param3[11]],param2);
         param4[22] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[11]],null);
         param4[11].updateParent(param1);
         param4[11].addChild(param4[12]);
         param4[21].updateParent(param1);
         param4[21].addChild(param4[22]);
      }
   }
}

