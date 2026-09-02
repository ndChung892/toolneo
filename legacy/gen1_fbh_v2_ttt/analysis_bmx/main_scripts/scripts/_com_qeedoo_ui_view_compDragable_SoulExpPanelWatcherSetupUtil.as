package
{
   import com.qeedoo.ui.view.compDragable.SoulExpPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_SoulExpPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_SoulExpPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SoulExpPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_SoulExpPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new PropertyWatcher("expL",{"propertyChange":true},[param3[2]],param2);
         param4[6] = new PropertyWatcher("_exp",{"propertyChange":true},[param3[4]],param2);
         param4[5] = new PropertyWatcher("_expL",{"propertyChange":true},[param3[3]],param2);
         param4[3] = new PropertyWatcher("nameL",{"propertyChange":true},[param3[1]],param2);
         param4[4].updateParent(param1);
         param4[6].updateParent(param1);
         param4[5].updateParent(param1);
         param4[3].updateParent(param1);
      }
   }
}

