package
{
   import com.qeedoo.ui.view.comp.LimitShopSlot;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_LimitShopSlotWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_LimitShopSlotWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LimitShopSlot.watcherSetupUtil = new _com_qeedoo_ui_view_comp_LimitShopSlotWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("is_soldout",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("shopSlotVO",{"propertyChange":true},[param3[0],param3[2],param3[3],param3[5],param3[6],param3[8],param3[9],param3[12],param3[13]],param2);
         param4[6] = new PropertyWatcher("itemName",{"propertyChange":true},[param3[5]],null);
         param4[9] = new PropertyWatcher("itemColor",{"propertyChange":true},[param3[6]],null);
         param4[12] = new PropertyWatcher("itemCost",{"propertyChange":true},[param3[8]],null);
         param4[13] = new PropertyWatcher("moneyType",{"propertyChange":true},[param3[9]],null);
         param4[3] = new PropertyWatcher("type",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("slotData",{"propertyChange":true},[param3[0],param3[5]],null);
         param4[7] = new PropertyWatcher("remain",null,[param3[5]],null);
         param4[8] = new PropertyWatcher("num",null,[param3[5]],null);
         param4[4] = new PropertyWatcher("giid",{"propertyChange":true},[param3[3]],null);
         param4[19] = new PropertyWatcher("limitNu",{"propertyChange":true},[param3[12],param3[13]],null);
         param4[10] = new PropertyWatcher("cost",{"propertyChange":true},[param3[7]],param2);
         param4[11] = new PropertyWatcher("value",{"propertyChange":true},[param3[7]],null);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[12]);
         param4[0].addChild(param4[13]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[7]);
         param4[1].addChild(param4[8]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[19]);
         param4[10].updateParent(param1);
         param4[10].addChild(param4[11]);
      }
   }
}

