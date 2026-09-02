package
{
   import com.qeedoo.ui.view.compMain.UserBarCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compMain_UserBarCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compMain_UserBarCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UserBarCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compMain_UserBarCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("bar1",{"propertyChange":true},[param3[16],param3[2]],param2);
         param4[0] = new PropertyWatcher("bar2",{"propertyChange":true},[param3[0],param3[17],param3[3],param3[14]],param2);
         param4[3] = new PropertyWatcher("btnContainer",{"propertyChange":true},[param3[19],param3[20],param3[5],param3[6]],param2);
         param4[5] = new PropertyWatcher("abc",{"propertyChange":true},[param3[22],param3[8]],param2);
         param4[8] = new PropertyWatcher("barNum3",{"propertyChange":true},[param3[25],param3[12],param3[13]],param2);
         param4[4] = new PropertyWatcher("numCanvas",{"propertyChange":true},[param3[21],param3[7]],param2);
         param4[6] = new PropertyWatcher("barNum1",{"propertyChange":true},[param3[23],param3[9]],param2);
         param4[7] = new PropertyWatcher("barNum2",{"propertyChange":true},[param3[24],param3[10],param3[11]],param2);
         param4[1] = new PropertyWatcher("bar3",{"propertyChange":true},[param3[1],param3[18],param3[4],param3[15]],param2);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[3].updateParent(param1);
         param4[5].updateParent(param1);
         param4[8].updateParent(param1);
         param4[4].updateParent(param1);
         param4[6].updateParent(param1);
         param4[7].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

