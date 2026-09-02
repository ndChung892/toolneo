package
{
   import com.qeedoo.ui.view.comp.TipMap;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_TipMapWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_TipMapWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TipMap.watcherSetupUtil = new _com_qeedoo_ui_view_comp_TipMapWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("vo",{"propertyChange":true},[param3[0],param3[1],param3[2],param3[3],param3[4],param3[5],param3[6],param3[8],param3[10],param3[12],param3[14]],param2);
         param4[16] = new PropertyWatcher("cre4",{"propertyChange":true},[param3[14]],null);
         param4[14] = new PropertyWatcher("cre2",{"propertyChange":true},[param3[10]],null);
         param4[15] = new PropertyWatcher("cre3",{"propertyChange":true},[param3[12]],null);
         param4[9] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[13] = new PropertyWatcher("cre1",{"propertyChange":true},[param3[8]],null);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("description",{"propertyChange":true},[param3[1]],null);
         param4[10] = new PropertyWatcher("type",{"propertyChange":true},[param3[4]],null);
         param4[11] = new PropertyWatcher("costVisible",{"propertyChange":true},[param3[5],param3[6]],null);
         param4[3] = new PropertyWatcher("btnVisible",{"propertyChange":true},[param3[2]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[16]);
         param4[0].addChild(param4[14]);
         param4[0].addChild(param4[15]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[13]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[11]);
         param4[0].addChild(param4[3]);
      }
   }
}

