package
{
   import com.qeedoo.ui.view.comp.PageSelector;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_PageSelectorWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_PageSelectorWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PageSelector.watcherSetupUtil = new _com_qeedoo_ui_view_comp_PageSelectorWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("lastBtnLabel",{"propertyChange":true},[param3[0]],param2);
         param4[3] = new PropertyWatcher("nextBtnLabel",{"propertyChange":true},[param3[2]],param2);
         param4[0].updateParent(param1);
         param4[3].updateParent(param1);
      }
   }
}

