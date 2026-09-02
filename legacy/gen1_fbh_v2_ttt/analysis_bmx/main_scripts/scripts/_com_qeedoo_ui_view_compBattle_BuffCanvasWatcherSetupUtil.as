package
{
   import com.qeedoo.ui.view.compBattle.BuffCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.RepeaterItemWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compBattle_BuffCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compBattle_BuffCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BuffCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compBattle_BuffCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("buffAC",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("rp",{"propertyChange":true},[param3[1],param3[2]],param2);
         param4[2] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[1],param3[2]],null);
         param4[3] = new RepeaterItemWatcher(param4[2]);
         param4[5] = new PropertyWatcher("toolTip",null,[param3[2]],null);
         param4[6] = new PropertyWatcher("roundLeft",null,[param3[2]],null);
         param4[4] = new PropertyWatcher("source",null,[param3[1]],null);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[5]);
         param4[3].addChild(param4[6]);
         param4[3].addChild(param4[4]);
      }
   }
}

