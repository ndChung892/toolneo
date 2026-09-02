package
{
   import com.qeedoo.ui.view.compDragable.FazendaPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_FazendaPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_FazendaPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FazendaPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_FazendaPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new PropertyWatcher("moveCanva",{"propertyChange":true},[param3[34]],param2);
         param4[6].updateParent(param1);
      }
   }
}

