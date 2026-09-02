package
{
   import com.qeedoo.ui.view.comp.LevelSlot;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_LevelSlotWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_LevelSlotWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LevelSlot.watcherSetupUtil = new _com_qeedoo_ui_view_comp_LevelSlotWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("shopSlotVO",{"propertyChange":true},[param3[0],param3[1],param3[2],param3[3],param3[4],param3[6]],param2);
         param4[9] = new PropertyWatcher("itemName",{"propertyChange":true},[param3[6]],null);
         param4[4] = new PropertyWatcher("stackMax",{"propertyChange":true},[param3[3]],null);
         param4[5] = new PropertyWatcher("stackNum",{"propertyChange":true},[param3[4]],null);
         param4[2] = new PropertyWatcher("type",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("slotData",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("giid",{"propertyChange":true},[param3[2]],null);
         param4[10] = new PropertyWatcher("level",{"propertyChange":true},[param3[7]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[3]);
         param4[10].updateParent(param1);
      }
   }
}

