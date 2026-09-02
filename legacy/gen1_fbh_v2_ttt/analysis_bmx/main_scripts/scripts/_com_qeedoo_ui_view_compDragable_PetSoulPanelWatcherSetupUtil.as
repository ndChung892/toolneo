package
{
   import com.qeedoo.ui.view.compDragable.PetSoulPanel;
   import flash.display.Sprite;
   import mx.binding.ArrayElementWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_PetSoulPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_PetSoulPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PetSoulPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_PetSoulPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[10] = new PropertyWatcher("soulInfo",null,[bindings[5],bindings[6],bindings[7],bindings[8],bindings[9],bindings[10],bindings[11],bindings[12]],null);
         watchers[19] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[7]]);
         watchers[35] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[11]]);
         watchers[23] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[8]]);
         watchers[39] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[12]]);
         watchers[11] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[5]]);
         watchers[27] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[9]]);
         watchers[15] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[6]]);
         watchers[31] = new ArrayElementWatcher(target,function():*
         {
            return "openNum2";
         },[bindings[10]]);
         watchers[6] = new PropertyWatcher("petPageAc",{"propertyChange":true},[bindings[2]],propertyGetter);
         watchers[10].updateParent(propertyGetter.apply(target,["selPetData"]));
         watchers[19].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[19]);
         watchers[35].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[35]);
         watchers[23].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[23]);
         watchers[39].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[39]);
         watchers[11].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[11]);
         watchers[27].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[27]);
         watchers[15].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[15]);
         watchers[31].arrayWatcher = watchers[10];
         watchers[10].addChild(watchers[31]);
         watchers[6].updateParent(target);
      }
   }
}

