package
{
   import com.qeedoo.ui.view.compBattle.SkillCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compBattle_SkillCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compBattle_SkillCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SkillCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compBattle_SkillCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("fadeOut",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("fadeIn",{"propertyChange":true},[param3[0]],param2);
         param4[2] = new PropertyWatcher("_text",{"propertyChange":true},[param3[2]],param2);
         param4[1].updateParent(param1);
         param4[0].updateParent(param1);
         param4[2].updateParent(param1);
      }
   }
}

