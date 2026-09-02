package
{
   import com.qeedoo.ui.view.compDragable.CrossContentionFirstAward;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_CrossContentionFirstAwardWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_CrossContentionFirstAwardWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CrossContentionFirstAward.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_CrossContentionFirstAwardWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[20] = new PropertyWatcher("totleScore",{"propertyChange":true},[param3[10]],param2);
         param4[20].updateParent(param1);
      }
   }
}

