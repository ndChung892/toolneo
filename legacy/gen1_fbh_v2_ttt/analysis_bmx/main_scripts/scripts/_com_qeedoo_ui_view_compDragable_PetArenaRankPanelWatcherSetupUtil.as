package
{
   import com.qeedoo.ui.view.compDragable.PetArenaRankPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_PetArenaRankPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_PetArenaRankPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PetArenaRankPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_PetArenaRankPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("rankDataProvider",{"propertyChange":true},[param3[1]],param2);
         param4[12] = new PropertyWatcher("comboDataProvider",{"propertyChange":true},[param3[6]],param2);
         param4[3].updateParent(param1);
         param4[12].updateParent(param1);
      }
   }
}

