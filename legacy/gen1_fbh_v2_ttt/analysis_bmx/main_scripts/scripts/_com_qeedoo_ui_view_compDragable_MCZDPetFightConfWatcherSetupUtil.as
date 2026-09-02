package
{
   import com.qeedoo.ui.view.compDragable.MCZDPetFightConf;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_MCZDPetFightConfWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_MCZDPetFightConfWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MCZDPetFightConf.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_MCZDPetFightConfWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
      }
   }
}

