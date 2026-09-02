package
{
   import com.qeedoo.ui.view.compBattle.BattleInfoCanvas;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compBattle_BattleInfoCanvasWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compBattle_BattleInfoCanvasWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BattleInfoCanvas.watcherSetupUtil = new _com_qeedoo_ui_view_compBattle_BattleInfoCanvasWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
      }
   }
}

