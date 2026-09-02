package
{
   import com.qeedoo.ui.view.compDragable.CrossFightPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_CrossFightPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_CrossFightPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CrossFightPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_CrossFightPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[17] = new PropertyWatcher("hotTeamData2",{"propertyChange":true},[param3[9]],param2);
         param4[28] = new PropertyWatcher("hotTeamData",{"propertyChange":true},[param3[15]],param2);
         param4[17].updateParent(param1);
         param4[28].updateParent(param1);
      }
   }
}

