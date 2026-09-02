package
{
   import com.qeedoo.ui.view.compDragable.TripleTownPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_TripleTownPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_TripleTownPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TripleTownPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_TripleTownPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new PropertyWatcher("pageTab",{"propertyChange":true},[param3[3]],param2);
         param4[7] = new PropertyWatcher("selectedIndex",{"propertyChange":true},[param3[3]],null);
         param4[6].updateParent(param1);
         param4[6].addChild(param4[7]);
      }
   }
}

