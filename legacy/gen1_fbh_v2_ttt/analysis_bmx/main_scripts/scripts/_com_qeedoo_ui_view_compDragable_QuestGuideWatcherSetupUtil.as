package
{
   import com.qeedoo.ui.view.compDragable.QuestGuide;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_QuestGuideWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_QuestGuideWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         QuestGuide.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_QuestGuideWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("infoTitle",{"propertyChange":true},[param3[4],param3[5]],param2);
         param4[0] = new PropertyWatcher("guideInfo",{"propertyChange":true},[param3[0],param3[1],param3[2],param3[3]],param2);
         param4[2] = new PropertyWatcher("button1",{"propertyChange":true},[param3[6],param3[7],param3[10]],param2);
         param4[3] = new PropertyWatcher("changeButton",{"propertyChange":true},[param3[8],param3[9],param3[11]],param2);
         param4[1].updateParent(param1);
         param4[0].updateParent(param1);
         param4[2].updateParent(param1);
         param4[3].updateParent(param1);
      }
   }
}

