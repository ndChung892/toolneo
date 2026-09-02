package
{
   import com.qeedoo.ui.view.compDragable.CrossContentionTotalPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_CrossContentionTotalPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_CrossContentionTotalPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CrossContentionTotalPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_CrossContentionTotalPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new PropertyWatcher("totalStateList",{"propertyChange":true},[param3[4]],param2);
         param4[25] = new PropertyWatcher("myStateList",{"propertyChange":true},[param3[13]],param2);
         param4[16] = new PropertyWatcher("serverStateList",{"propertyChange":true},[param3[8]],param2);
         param4[9].updateParent(param1);
         param4[25].updateParent(param1);
         param4[16].updateParent(param1);
      }
   }
}

