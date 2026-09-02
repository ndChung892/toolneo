package
{
   import com.qeedoo.ui.view.comp.TipCre;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_comp_TipCreWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_comp_TipCreWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TipCre.watcherSetupUtil = new _com_qeedoo_ui_view_comp_TipCreWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("star",{"propertyChange":true},[param3[2]],param2);
         param4[4] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("vo",{"propertyChange":true},[param3[0],param3[1],param3[3],param3[4],param3[5],param3[6],param3[7],param3[8],param3[9],param3[10],param3[11],param3[12],param3[13],param3[14],param3[15],param3[16],param3[17],param3[18],param3[19],param3[20],param3[21],param3[22],param3[23],param3[24],param3[25],param3[26],param3[27],param3[28],param3[29],param3[31],param3[33],param3[35],param3[37],param3[39],param3[41],param3[43],param3[45],param3[47],param3[49],param3[51],param3[53],param3[55],param3[57],param3[59]],param2);
         param4[2] = new PropertyWatcher("color",{"propertyChange":true},[param3[1]],null);
         param4[45] = new PropertyWatcher("skill15",{"propertyChange":true},[param3[59]],null);
         param4[44] = new PropertyWatcher("skill14",{"propertyChange":true},[param3[57]],null);
         param4[12] = new PropertyWatcher("className",{"propertyChange":true},[param3[11]],null);
         param4[21] = new PropertyWatcher("attSpr",{"propertyChange":true},[param3[21]],null);
         param4[41] = new PropertyWatcher("skill11",{"propertyChange":true},[param3[51]],null);
         param4[40] = new PropertyWatcher("skill10",{"propertyChange":true},[param3[49]],null);
         param4[17] = new PropertyWatcher("attStr",{"propertyChange":true},[param3[17]],null);
         param4[23] = new PropertyWatcher("life",{"propertyChange":true},[param3[23]],null);
         param4[43] = new PropertyWatcher("skill13",{"propertyChange":true},[param3[55]],null);
         param4[42] = new PropertyWatcher("skill12",{"propertyChange":true},[param3[53]],null);
         param4[20] = new PropertyWatcher("attInt",{"propertyChange":true},[param3[20]],null);
         param4[33] = new PropertyWatcher("skill3",{"propertyChange":true},[param3[35]],null);
         param4[34] = new PropertyWatcher("skill4",{"propertyChange":true},[param3[37]],null);
         param4[31] = new PropertyWatcher("skill1",{"propertyChange":true},[param3[31]],null);
         param4[14] = new PropertyWatcher("bind",{"propertyChange":true},[param3[13],param3[14]],null);
         param4[32] = new PropertyWatcher("skill2",{"propertyChange":true},[param3[33]],null);
         param4[37] = new PropertyWatcher("skill7",{"propertyChange":true},[param3[43]],null);
         param4[38] = new PropertyWatcher("skill8",{"propertyChange":true},[param3[45]],null);
         param4[35] = new PropertyWatcher("skill5",{"propertyChange":true},[param3[39]],null);
         param4[36] = new PropertyWatcher("skill6",{"propertyChange":true},[param3[41]],null);
         param4[39] = new PropertyWatcher("skill9",{"propertyChange":true},[param3[47]],null);
         param4[5] = new PropertyWatcher("btnVisible",{"propertyChange":true},[param3[3]],null);
         param4[16] = new PropertyWatcher("close",{"propertyChange":true},[param3[16]],null);
         param4[26] = new PropertyWatcher("aptSta",{"propertyChange":true},[param3[26]],null);
         param4[7] = new PropertyWatcher("urlIcon",{"propertyChange":true},[param3[5]],null);
         param4[10] = new PropertyWatcher("element",{"propertyChange":true},[param3[9]],null);
         param4[13] = new PropertyWatcher("classInfo",{"propertyChange":true},[param3[12]],null);
         param4[19] = new PropertyWatcher("attSta",{"propertyChange":true},[param3[19]],null);
         param4[22] = new PropertyWatcher("attLast",{"propertyChange":true},[param3[22]],null);
         param4[15] = new PropertyWatcher("level",{"propertyChange":true},[param3[15]],null);
         param4[6] = new PropertyWatcher("catchable",{"propertyChange":true},[param3[4]],null);
         param4[24] = new PropertyWatcher("aptStr",{"propertyChange":true},[param3[24]],null);
         param4[9] = new PropertyWatcher("petColor",{"propertyChange":true},[param3[8]],null);
         param4[11] = new PropertyWatcher("elementInfo",{"propertyChange":true},[param3[10]],null);
         param4[27] = new PropertyWatcher("aptInt",{"propertyChange":true},[param3[27]],null);
         param4[1] = new PropertyWatcher("urlRes",{"propertyChange":true},[param3[0]],null);
         param4[29] = new PropertyWatcher("growRate",{"propertyChange":true},[param3[29]],null);
         param4[28] = new PropertyWatcher("aptSpr",{"propertyChange":true},[param3[28]],null);
         param4[8] = new PropertyWatcher("name",{"propertyChange":true},[param3[6],param3[7]],null);
         param4[25] = new PropertyWatcher("aptAgi",{"propertyChange":true},[param3[25]],null);
         param4[18] = new PropertyWatcher("attAgi",{"propertyChange":true},[param3[18]],null);
         param4[3].updateParent(param1);
         param4[3].addChild(param4[4]);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[45]);
         param4[0].addChild(param4[44]);
         param4[0].addChild(param4[12]);
         param4[0].addChild(param4[21]);
         param4[0].addChild(param4[41]);
         param4[0].addChild(param4[40]);
         param4[0].addChild(param4[17]);
         param4[0].addChild(param4[23]);
         param4[0].addChild(param4[43]);
         param4[0].addChild(param4[42]);
         param4[0].addChild(param4[20]);
         param4[0].addChild(param4[33]);
         param4[0].addChild(param4[34]);
         param4[0].addChild(param4[31]);
         param4[0].addChild(param4[14]);
         param4[0].addChild(param4[32]);
         param4[0].addChild(param4[37]);
         param4[0].addChild(param4[38]);
         param4[0].addChild(param4[35]);
         param4[0].addChild(param4[36]);
         param4[0].addChild(param4[39]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[16]);
         param4[0].addChild(param4[26]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[13]);
         param4[0].addChild(param4[19]);
         param4[0].addChild(param4[22]);
         param4[0].addChild(param4[15]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[24]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[11]);
         param4[0].addChild(param4[27]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[29]);
         param4[0].addChild(param4[28]);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[25]);
         param4[0].addChild(param4[18]);
      }
   }
}

