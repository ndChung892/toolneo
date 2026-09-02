package
{
   import com.qeedoo.ui.view.compDragable.TaskSweepPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_TaskSweepPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_TaskSweepPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TaskSweepPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_TaskSweepPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new PropertyWatcher("_left",{"propertyChange":true},[param3[5]],param2);
         param4[0] = new PropertyWatcher("_taskName",{"propertyChange":true},[param3[0]],param2);
         param4[5].updateParent(param1);
         param4[0].updateParent(param1);
      }
   }
}

