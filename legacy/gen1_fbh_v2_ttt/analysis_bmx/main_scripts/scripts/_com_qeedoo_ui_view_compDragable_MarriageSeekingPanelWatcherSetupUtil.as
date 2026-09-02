package
{
   import com.qeedoo.ui.view.compDragable.MarriageSeekingPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_MarriageSeekingPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_MarriageSeekingPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MarriageSeekingPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_MarriageSeekingPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("_marriageWords",{"propertyChange":true},[param3[1]],param2);
         param4[3].updateParent(param1);
      }
   }
}

