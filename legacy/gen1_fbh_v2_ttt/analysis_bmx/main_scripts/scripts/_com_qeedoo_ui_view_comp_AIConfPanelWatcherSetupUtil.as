package
{
   import com.qeedoo.ui.view.comp.AIConfPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_AIConfPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_AIConfPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AIConfPanel.watcherSetupUtil = new _com_qeedoo_ui_view_comp_AIConfPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[32] = new PropertyWatcher("tg5",{"propertyChange":true},[param3[14]],param2);
         param4[33] = new PropertyWatcher("selected",{
            "valueCommit":true,
            "click":true
         },[param3[14]],null);
         param4[29] = new PropertyWatcher("tgId",{"propertyChange":true},[param3[12]],param2);
         param4[30] = new PropertyWatcher("selectedIndex",{
            "collectionChange":true,
            "change":true,
            "valueCommit":true
         },[param3[12]],null);
         param4[32].updateParent(param1);
         param4[32].addChild(param4[33]);
         param4[29].updateParent(param1);
         param4[29].addChild(param4[30]);
      }
   }
}

