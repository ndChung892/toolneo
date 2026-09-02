package
{
   import com.qeedoo.ui.view.comp.TipBattle;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_TipBattleWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_TipBattleWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TipBattle.watcherSetupUtil = new _com_qeedoo_ui_view_comp_TipBattleWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new PropertyWatcher("boss",{"propertyChange":true},[param3[2]],param2);
         param4[3] = new PropertyWatcher("level",{"propertyChange":true},[param3[1]],param2);
         param4[4].updateParent(param1);
         param4[3].updateParent(param1);
      }
   }
}

