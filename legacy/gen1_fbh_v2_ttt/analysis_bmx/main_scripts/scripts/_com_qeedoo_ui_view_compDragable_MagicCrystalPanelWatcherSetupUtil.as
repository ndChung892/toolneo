package
{
   import com.qeedoo.ui.view.compDragable.MagicCrystalPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_MagicCrystalPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_MagicCrystalPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MagicCrystalPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_MagicCrystalPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[8] = new PropertyWatcher("player",{"propertyChange":true},[param3[3],param3[4],param3[11]],null);
         param4[9] = new PropertyWatcher("magiccystallimit",{"propertyChange":true},[param3[3]],null);
         param4[10] = new PropertyWatcher("magiccystalpre",{"propertyChange":true},[param3[4]],null);
         param4[22] = new PropertyWatcher("magiccystalrec",{"propertyChange":true},[param3[11]],null);
         param4[8].updateParent(param2.apply(param1,["_core"]));
         param4[8].addChild(param4[9]);
         param4[8].addChild(param4[10]);
         param4[8].addChild(param4[22]);
      }
   }
}

