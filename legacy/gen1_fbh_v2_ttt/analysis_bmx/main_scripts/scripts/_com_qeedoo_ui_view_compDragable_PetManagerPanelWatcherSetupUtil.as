package
{
   import com.qeedoo.ui.view.compDragable.PetManagerPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_PetManagerPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_PetManagerPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PetManagerPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_PetManagerPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[55] = new PropertyWatcher("styleAddName",{"propertyChange":true},[param3[64],param3[67],param3[55],param3[58],param3[61]],param2);
         param4[291] = new PropertyWatcher("star",{"propertyChange":true},[param3[210]],param2);
         param4[292] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[210]],null);
         param4[293] = new PropertyWatcher("xiebieshaidp",{"propertyChange":true},[param3[211]],param2);
         param4[30] = new PropertyWatcher("petPageAc",{"propertyChange":true},[param3[14]],param2);
         param4[217] = new PropertyWatcher("aptIntelligence",null,[param3[185]],null);
         param4[211] = new PropertyWatcher("aptStamina",null,[param3[184]],null);
         param4[232] = new PropertyWatcher("aptAgilityEx",null,[param3[188]],null);
         param4[201] = new PropertyWatcher("property",null,[param3[192],param3[193],param3[194],param3[195],param3[196],param3[182],param3[183],param3[184],param3[185],param3[186]],null);
         param4[258] = new PropertyWatcher("aptIntelligence",null,[param3[195]],null);
         param4[226] = new PropertyWatcher("aptEnergyEvolution",null,[param3[196],param3[186]],null);
         param4[254] = new PropertyWatcher("aptStamina",null,[param3[194]],null);
         param4[220] = new PropertyWatcher("aptIntelligenceEvolution",null,[param3[195],param3[185]],null);
         param4[247] = new PropertyWatcher("growRateAdd",null,[param3[192],param3[193],param3[194],param3[195],param3[196]],null);
         param4[208] = new PropertyWatcher("aptAgilityEvolution",null,[param3[193],param3[183]],null);
         param4[214] = new PropertyWatcher("aptStaminaEvolution",null,[param3[194],param3[184]],null);
         param4[202] = new PropertyWatcher("aptStrengthEvolution",null,[param3[192],param3[182]],null);
         param4[244] = new PropertyWatcher("aptStrength",null,[param3[192]],null);
         param4[262] = new PropertyWatcher("aptEnergy",null,[param3[196]],null);
         param4[246] = new PropertyWatcher("growRate",null,[param3[192],param3[193],param3[194],param3[195],param3[196]],null);
         param4[250] = new PropertyWatcher("aptAgility",null,[param3[193]],null);
         param4[235] = new PropertyWatcher("aptStaminaEx",null,[param3[189]],null);
         param4[241] = new PropertyWatcher("aptEnergyEx",null,[param3[191]],null);
         param4[229] = new PropertyWatcher("aptStrengthEx",null,[param3[187]],null);
         param4[238] = new PropertyWatcher("aptIntelligenceEx",null,[param3[190]],null);
         param4[198] = new PropertyWatcher("aptStrength",null,[param3[182]],null);
         param4[223] = new PropertyWatcher("aptEnergy",null,[param3[186]],null);
         param4[205] = new PropertyWatcher("aptAgility",null,[param3[183]],null);
         param4[55].updateParent(param1);
         param4[291].updateParent(param1);
         param4[291].addChild(param4[292]);
         param4[293].updateParent(param1);
         param4[30].updateParent(param1);
         param4[217].updateParent(param2.apply(param1,["petData"]));
         param4[211].updateParent(param2.apply(param1,["petData"]));
         param4[232].updateParent(param2.apply(param1,["petData"]));
         param4[201].updateParent(param2.apply(param1,["petData"]));
         param4[201].addChild(param4[258]);
         param4[201].addChild(param4[226]);
         param4[201].addChild(param4[254]);
         param4[201].addChild(param4[220]);
         param4[201].addChild(param4[247]);
         param4[201].addChild(param4[208]);
         param4[201].addChild(param4[214]);
         param4[201].addChild(param4[202]);
         param4[201].addChild(param4[244]);
         param4[201].addChild(param4[262]);
         param4[201].addChild(param4[246]);
         param4[201].addChild(param4[250]);
         param4[235].updateParent(param2.apply(param1,["petData"]));
         param4[241].updateParent(param2.apply(param1,["petData"]));
         param4[229].updateParent(param2.apply(param1,["petData"]));
         param4[238].updateParent(param2.apply(param1,["petData"]));
         param4[198].updateParent(param2.apply(param1,["petData"]));
         param4[223].updateParent(param2.apply(param1,["petData"]));
         param4[205].updateParent(param2.apply(param1,["petData"]));
      }
   }
}

