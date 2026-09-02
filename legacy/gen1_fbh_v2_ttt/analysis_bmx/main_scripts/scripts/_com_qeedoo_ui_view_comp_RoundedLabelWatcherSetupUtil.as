package
{
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_RoundedLabelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_RoundedLabelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RoundedLabel.watcherSetupUtil = new _com_qeedoo_ui_view_comp_RoundedLabelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
      }
   }
}

