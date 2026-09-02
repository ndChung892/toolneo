package
{
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.MedalPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_MedalPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_MedalPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MedalPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_MedalPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[34] = new StaticPropertyWatcher("TOTEM_CHARACTER",{"propertyChange":true},[param3[40],param3[31]],null);
         param4[48] = new PropertyWatcher("player",{"propertyChange":true},[param3[39],param3[47]],null);
         param4[49] = new PropertyWatcher("medalExp",{"propertyChange":true},[param3[39],param3[47]],null);
         param4[34].updateParent(ResManager);
         param4[48].updateParent(param2.apply(param1,["_core"]));
         param4[48].addChild(param4[49]);
      }
   }
}

