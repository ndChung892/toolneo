package
{
   import com.qeedoo.ui.view.comp.Currency;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_CurrencyWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_CurrencyWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Currency.watcherSetupUtil = new _com_qeedoo_ui_view_comp_CurrencyWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new PropertyWatcher("textAlign",{"propertyChange":true},[param3[5]],param2);
         param4[11] = new PropertyWatcher("priceType",{"propertyChange":true},[param3[7]],param2);
         param4[2] = new PropertyWatcher("type",{"propertyChange":true},[param3[1],param3[2]],param2);
         param4[0] = new PropertyWatcher("showBorder",{"propertyChange":true},[param3[0]],param2);
         param4[3] = new PropertyWatcher("value",{"propertyChange":true},[param3[1],param3[6]],param2);
         param4[6] = new PropertyWatcher("inputEnabled",{"propertyChange":true},[param3[3]],param2);
         param4[9].updateParent(param1);
         param4[11].updateParent(param1);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[3].updateParent(param1);
         param4[6].updateParent(param1);
      }
   }
}

