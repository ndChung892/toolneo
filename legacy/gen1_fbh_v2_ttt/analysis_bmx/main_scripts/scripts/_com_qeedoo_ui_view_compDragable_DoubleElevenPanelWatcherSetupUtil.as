package
{
   import com.qeedoo.ui.view.compDragable.DoubleElevenPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_DoubleElevenPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_DoubleElevenPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DoubleElevenPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_DoubleElevenPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[16] = new PropertyWatcher("chanceCount",{"propertyChange":true},[param3[7]],param2);
         param4[22] = new PropertyWatcher("keyNum",{"propertyChange":true},[param3[9]],param2);
         param4[19] = new PropertyWatcher("allPoints",{"propertyChange":true},[param3[8]],param2);
         param4[16].updateParent(param1);
         param4[22].updateParent(param1);
         param4[19].updateParent(param1);
      }
   }
}

