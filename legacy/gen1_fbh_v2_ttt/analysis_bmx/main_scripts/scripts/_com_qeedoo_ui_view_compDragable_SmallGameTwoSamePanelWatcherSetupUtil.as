package
{
   import com.qeedoo.ui.view.compDragable.SmallGameTwoSamePanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_SmallGameTwoSamePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_SmallGameTwoSamePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SmallGameTwoSamePanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_SmallGameTwoSamePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("_iconUrl",{"propertyChange":true},[param3[1]],param2);
         param4[3].updateParent(param1);
      }
   }
}

