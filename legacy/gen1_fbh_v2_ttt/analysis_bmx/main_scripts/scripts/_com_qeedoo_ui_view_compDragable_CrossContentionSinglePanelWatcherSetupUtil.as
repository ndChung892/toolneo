package
{
   import com.qeedoo.ui.view.compDragable.CrossContentionSinglePanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_CrossContentionSinglePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_CrossContentionSinglePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CrossContentionSinglePanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_CrossContentionSinglePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[21] = new PropertyWatcher("singleStateList",{"propertyChange":true},[param3[10]],param2);
         param4[21].updateParent(param1);
      }
   }
}

