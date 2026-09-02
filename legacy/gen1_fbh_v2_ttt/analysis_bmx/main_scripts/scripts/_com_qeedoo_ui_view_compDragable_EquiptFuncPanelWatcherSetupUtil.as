package
{
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.EquiptFuncPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_EquiptFuncPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_EquiptFuncPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EquiptFuncPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_EquiptFuncPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[260] = new PropertyWatcher("sublimeHint",{"propertyChange":true},[param3[165],param3[167],param3[169]],param2);
         param4[261] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param3[165],param3[167],param3[169]],null);
         param4[46] = new StaticPropertyWatcher("TOTEM_MAGIC_WEAPON",{"propertyChange":true},[param3[24]],null);
         param4[176] = new StaticPropertyWatcher("TOTEM_PET_EQUIP",{"propertyChange":true},[param3[106]],null);
         param4[168] = new PropertyWatcher("hintTxt",{"propertyChange":true},[param3[99],param3[101]],param2);
         param4[169] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param3[99],param3[101]],null);
         param4[19] = new StaticPropertyWatcher("TOTEM_CHARACTER",{"propertyChange":true},[param3[16],param3[9]],null);
         param4[272] = new PropertyWatcher("restrainHint",{"propertyChange":true},[param3[181],param3[185],param3[188],param3[190]],param2);
         param4[273] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param3[181],param3[185],param3[188],param3[190]],null);
         param4[260].updateParent(param1);
         param4[260].addChild(param4[261]);
         param4[46].updateParent(ResManager);
         param4[176].updateParent(ResManager);
         param4[168].updateParent(param1);
         param4[168].addChild(param4[169]);
         param4[19].updateParent(ResManager);
         param4[272].updateParent(param1);
         param4[272].addChild(param4[273]);
      }
   }
}

