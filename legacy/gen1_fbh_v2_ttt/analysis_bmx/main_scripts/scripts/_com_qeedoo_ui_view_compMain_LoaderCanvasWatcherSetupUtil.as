package
{
   import com.qeedoo.ui.view.compMain.LoaderCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compMain_LoaderCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compMain_LoaderCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LoaderCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compMain_LoaderCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("_title",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("_text",{"propertyChange":true},[param3[0]],param2);
         param4[1].updateParent(param1);
         param4[0].updateParent(param1);
      }
   }
}

