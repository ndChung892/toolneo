package
{
   import com.qeedoo.ui.view.compDragable.PetGuardPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_PetGuardPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_PetGuardPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PetGuardPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_PetGuardPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[49] = new PropertyWatcher("player",{"propertyChange":true},[param3[50]],null);
         param4[50] = new PropertyWatcher("petguardout",{"propertyChange":true},[param3[50]],null);
         param4[49].updateParent(param2.apply(param1,["_core"]));
         param4[49].addChild(param4[50]);
      }
   }
}

