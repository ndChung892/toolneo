package
{
   import com.qeedoo.ui.view.comp.ItemSlotStoneSeal;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_ItemSlotStoneSealWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_ItemSlotStoneSealWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ItemSlotStoneSeal.watcherSetupUtil = new _com_qeedoo_ui_view_comp_ItemSlotStoneSealWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
      }
   }
}

