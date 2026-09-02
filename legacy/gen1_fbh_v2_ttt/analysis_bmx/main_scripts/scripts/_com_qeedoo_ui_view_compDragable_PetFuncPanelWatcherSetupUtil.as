package
{
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.PetFuncPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_PetFuncPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_PetFuncPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PetFuncPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_PetFuncPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[21] = new StaticPropertyWatcher("TOTEM_PET_FUNC1",{"propertyChange":true},[param3[10]],null);
         param4[5] = new StaticPropertyWatcher("TOTEM_PET_FUNC2",{"propertyChange":true},[param3[33],param3[2],param3[19],param3[41],param3[26],param3[47]],null);
         param4[28] = new PropertyWatcher("seniorPetJoinEnable",{"propertyChange":true},[param3[14]],param2);
         param4[21].updateParent(ResManager);
         param4[5].updateParent(ResManager);
         param4[28].updateParent(param1);
      }
   }
}

