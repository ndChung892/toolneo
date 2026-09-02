package
{
   import com.qeedoo.ui.view.compDragable.AddictEnterPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_AddictEnterPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_AddictEnterPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AddictEnterPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_AddictEnterPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new PropertyWatcher("defaultQuestionIndex",{"propertyChange":true},[param3[2]],param2);
         param4[5].updateParent(param1);
      }
   }
}

