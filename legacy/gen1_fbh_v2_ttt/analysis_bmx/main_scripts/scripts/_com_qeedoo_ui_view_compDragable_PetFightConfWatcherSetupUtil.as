package
{
   import com.qeedoo.ui.view.compDragable.PetFightConf;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_PetFightConfWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_PetFightConfWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PetFightConf.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_PetFightConfWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[16] = new PropertyWatcher("_petArenaHasTicket",{"propertyChange":true},[param3[11]],param2);
         param4[10] = new PropertyWatcher("_setForPetCross",{"propertyChange":true},[param3[10],param3[11]],param2);
         param4[19] = new PropertyWatcher("_randNmae",{"propertyChange":true},[param3[13]],param2);
         param4[16].updateParent(param1);
         param4[10].updateParent(param1);
         param4[19].updateParent(param1);
      }
   }
}

