package
{
   import com.qeedoo.ui.view.compDragable.AchievementPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_AchievementPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_AchievementPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AchievementPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_AchievementPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new PropertyWatcher("canvasOverView",{"propertyChange":true},[param3[2]],param2);
         param4[3] = new PropertyWatcher("canvasDetail",{"propertyChange":true},[param3[1]],param2);
         param4[4].updateParent(param1);
         param4[3].updateParent(param1);
      }
   }
}

