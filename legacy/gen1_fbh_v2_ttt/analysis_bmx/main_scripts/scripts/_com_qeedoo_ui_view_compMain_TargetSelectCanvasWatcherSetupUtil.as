package
{
   import com.qeedoo.ui.view.compMain.TargetSelectCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compMain_TargetSelectCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compMain_TargetSelectCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TargetSelectCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compMain_TargetSelectCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
      }
   }
}

