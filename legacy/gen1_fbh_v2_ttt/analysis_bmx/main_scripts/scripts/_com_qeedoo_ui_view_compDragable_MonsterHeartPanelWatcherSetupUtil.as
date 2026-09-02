package
{
   import com.qeedoo.ui.view.compDragable.MonsterHeartPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_MonsterHeartPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_MonsterHeartPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MonsterHeartPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_MonsterHeartPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[25] = new PropertyWatcher("player",{"propertyChange":true},[param3[25],param3[31]],null);
         param4[26] = new PropertyWatcher("monsterHeart",{"propertyChange":true},[param3[25]],null);
         param4[36] = new PropertyWatcher("mhjingshi",{"propertyChange":true},[param3[31]],null);
         param4[25].updateParent(param2.apply(param1,["_core"]));
         param4[25].addChild(param4[26]);
         param4[25].addChild(param4[36]);
      }
   }
}

