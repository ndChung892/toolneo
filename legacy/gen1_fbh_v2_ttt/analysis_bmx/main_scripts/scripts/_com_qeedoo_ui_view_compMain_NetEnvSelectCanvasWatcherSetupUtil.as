package
{
   import com.qeedoo.ui.view.compMain.NetEnvSelectCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compMain_NetEnvSelectCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compMain_NetEnvSelectCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NetEnvSelectCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compMain_NetEnvSelectCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
      }
   }
}

