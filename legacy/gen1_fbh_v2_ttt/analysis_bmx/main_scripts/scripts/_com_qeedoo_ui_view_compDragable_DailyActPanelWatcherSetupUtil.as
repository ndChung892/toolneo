package
{
   import com.qeedoo.ui.view.compDragable.DailyActPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_DailyActPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_DailyActPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailyActPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_DailyActPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[47] = new PropertyWatcher("_haveDiaryAwarded",{"propertyChange":true},[param3[33],param3[36],param3[24],param3[27],param3[30]],param2);
         param4[27] = new PropertyWatcher("diaryList",{"propertyChange":true},[param3[14]],param2);
         param4[48] = new PropertyWatcher("totalAct",{"propertyChange":true},[param3[33],param3[36],param3[24],param3[27],param3[30]],param2);
         param4[49] = new PropertyWatcher("text",{"valueCommit":true},[param3[33],param3[36],param3[24],param3[27],param3[30]],null);
         param4[24] = new PropertyWatcher("activityDescription",{"propertyChange":true},[param3[11]],param2);
         param4[47].updateParent(param1);
         param4[27].updateParent(param1);
         param4[48].updateParent(param1);
         param4[48].addChild(param4[49]);
         param4[24].updateParent(param1);
      }
   }
}

