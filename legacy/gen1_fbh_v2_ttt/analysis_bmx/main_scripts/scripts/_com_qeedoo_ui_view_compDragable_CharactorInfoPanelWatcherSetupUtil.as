package
{
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.CharactorInfoPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_CharactorInfoPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_CharactorInfoPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CharactorInfoPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_CharactorInfoPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[88] = new PropertyWatcher("_tbnEnabled",{"propertyChange":true},[param3[49],param3[55],param3[58],param3[60],param3[63]],param2);
         param4[74] = new StaticPropertyWatcher("TOTEM_MAGIC_WEAPON",{"propertyChange":true},[param3[36]],null);
         param4[88].updateParent(param1);
         param4[74].updateParent(ResManager);
      }
   }
}

