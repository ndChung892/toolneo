package
{
   import com.qeedoo.ui.view.compDragable.ThreeDiabetes;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_ThreeDiabetesWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_ThreeDiabetesWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ThreeDiabetes.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_ThreeDiabetesWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[10] = new PropertyWatcher("canMove",{"propertyChange":true},[param3[8]],param2);
         param4[10].updateParent(param1);
      }
   }
}

