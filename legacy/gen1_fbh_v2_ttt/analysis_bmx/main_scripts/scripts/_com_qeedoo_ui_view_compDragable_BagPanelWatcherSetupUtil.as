package
{
   import com.qeedoo.ui.view.compDragable.BagPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_BagPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_BagPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BagPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_BagPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[34] = new PropertyWatcher("secondTile",{"propertyChange":true},[param3[107],param3[108]],param2);
         param4[19] = new PropertyWatcher("canvas4",{"propertyChange":true},[param3[51],param3[56],param3[138],param3[75],param3[76],param3[94],param3[47]],param2);
         param4[27] = new PropertyWatcher("canvas5",{"propertyChange":true},[param3[144],param3[115],param3[69],param3[70],param3[88],param3[89],param3[154]],param2);
         param4[4] = new PropertyWatcher("canvas6",{"propertyChange":true},[param3[2],param3[146],param3[116],param3[150],param3[151],param3[155],param3[92],param3[156]],param2);
         param4[13] = new PropertyWatcher("canvas1",{"propertyChange":true},[param3[53],param3[85],param3[86],param3[25],param3[137],param3[26],param3[95]],param2);
         param4[9] = new PropertyWatcher("canvas2",{"propertyChange":true},[param3[96],param3[83],param3[84],param3[54],param3[23],param3[136],param3[10]],param2);
         param4[20] = new PropertyWatcher("canvas3",{"propertyChange":true},[param3[48],param3[81],param3[82],param3[52],param3[55],param3[139],param3[93]],param2);
         param4[8] = new PropertyWatcher("gold",{"propertyChange":true},[param3[16],param3[8],param3[9],param3[15]],param2);
         param4[42] = new PropertyWatcher("btnTabBag5",{"propertyChange":true},[param3[124]],param2);
         param4[41] = new PropertyWatcher("btnTabBag6",{"propertyChange":true},[param3[123]],param2);
         param4[36] = new PropertyWatcher("tile4",{"propertyChange":true},[param3[112],param3[111]],param2);
         param4[44] = new PropertyWatcher("btnTabBag3",{"propertyChange":true},[param3[126]],param2);
         param4[33] = new PropertyWatcher("firstTile",{"propertyChange":true},[param3[117],param3[105],param3[106]],param2);
         param4[37] = new PropertyWatcher("tile5",{"propertyChange":true},[param3[113],param3[114]],param2);
         param4[43] = new PropertyWatcher("btnTabBag4",{"propertyChange":true},[param3[125]],param2);
         param4[46] = new PropertyWatcher("btnTabBag1",{"propertyChange":true},[param3[128]],param2);
         param4[45] = new PropertyWatcher("btnTabBag2",{"propertyChange":true},[param3[127]],param2);
         param4[29] = new PropertyWatcher("bagtitle",{"propertyChange":true},[param3[118],param3[90]],param2);
         param4[47] = new PropertyWatcher("btnTabBag0",{"propertyChange":true},[param3[129]],param2);
         param4[50] = new PropertyWatcher("tile1",{"propertyChange":true},[param3[147],param3[149],param3[152],param3[153]],param2);
         param4[127] = new PropertyWatcher("_core",{"propertyChange":true},[param3[482],param3[485],param3[487],param3[490]],param2);
         param4[128] = new PropertyWatcher("player",{"propertyChange":true},[param3[482],param3[485],param3[487],param3[490]],null);
         param4[142] = new PropertyWatcher("gold",{"propertyChange":true},[param3[490]],null);
         param4[134] = new PropertyWatcher("money",{"propertyChange":true},[param3[485]],null);
         param4[137] = new PropertyWatcher("goldBind",{"propertyChange":true},[param3[487]],null);
         param4[129] = new PropertyWatcher("moneyBind",{"propertyChange":true},[param3[482]],null);
         param4[11] = new PropertyWatcher("radioMoneyBind",{"propertyChange":true},[param3[32],param3[21],param3[71],param3[72],param3[31]],param2);
         param4[18] = new PropertyWatcher("boxlabel2",{"propertyChange":true},[param3[50],param3[44],param3[45],param3[46]],param2);
         param4[28] = new PropertyWatcher("petTabHBox",{"propertyChange":true},[param3[87],param3[103],param3[140],param3[141],param3[142],param3[143]],param2);
         param4[12] = new PropertyWatcher("boxlabel4",{"propertyChange":true},[param3[22],param3[27],param3[28]],param2);
         param4[10] = new PropertyWatcher("boxlabel3",{"propertyChange":true},[param3[19],param3[20],param3[24]],param2);
         param4[17] = new PropertyWatcher("boxlabel5",{"propertyChange":true},[param3[49],param3[39],param3[40],param3[41]],param2);
         param4[26] = new PropertyWatcher("button1",{"propertyChange":true},[param3[98],param3[130],param3[67],param3[68]],param2);
         param4[16] = new PropertyWatcher("radioGold",{"propertyChange":true},[param3[80],param3[36],param3[38],param3[43],param3[79]],param2);
         param4[40] = new PropertyWatcher("btnTabBag7",{"propertyChange":true},[param3[122]],param2);
         param4[23] = new PropertyWatcher("button4",{"propertyChange":true},[param3[101],param3[133],param3[61],param3[62]],param2);
         param4[51] = new PropertyWatcher("firstPetCanvas",{"propertyChange":true},[param3[148],param3[157]],param2);
         param4[3] = new PropertyWatcher("basicglowbutton1",{"propertyChange":true},[param3[1],param3[121]],param2);
         param4[25] = new PropertyWatcher("button2",{"propertyChange":true},[param3[65],param3[66],param3[99],param3[131]],param2);
         param4[24] = new PropertyWatcher("button3",{"propertyChange":true},[param3[64],param3[100],param3[132],param3[63]],param2);
         param4[14] = new PropertyWatcher("radioMoney",{"propertyChange":true},[param3[33],param3[34],param3[77],param3[30],param3[78]],param2);
         param4[15] = new PropertyWatcher("radioGoldBind",{"propertyChange":true},[param3[35],param3[37],param3[73],param3[42],param3[74]],param2);
         param4[7] = new PropertyWatcher("button6",{"propertyChange":true},[param3[17],param3[18],param3[6],param3[7]],param2);
         param4[5] = new PropertyWatcher("button7",{"propertyChange":true},[param3[3],param3[11],param3[12],param3[29]],param2);
         param4[35] = new PropertyWatcher("thirdTile",{"propertyChange":true},[param3[109],param3[110]],param2);
         param4[21] = new PropertyWatcher("buttonSort",{"propertyChange":true},[param3[102],param3[134],param3[57],param3[58]],param2);
         param4[22] = new PropertyWatcher("btnPetTrade",{"propertyChange":true},[param3[97],param3[135],param3[59],param3[60]],param2);
         param4[6] = new PropertyWatcher("silver",{"propertyChange":true},[param3[4],param3[5],param3[13],param3[14]],param2);
         param4[32] = new PropertyWatcher("tnBag",{"propertyChange":true},[param3[104],param3[120]],param2);
         param4[34].updateParent(param1);
         param4[19].updateParent(param1);
         param4[27].updateParent(param1);
         param4[4].updateParent(param1);
         param4[13].updateParent(param1);
         param4[9].updateParent(param1);
         param4[20].updateParent(param1);
         param4[8].updateParent(param1);
         param4[42].updateParent(param1);
         param4[41].updateParent(param1);
         param4[36].updateParent(param1);
         param4[44].updateParent(param1);
         param4[33].updateParent(param1);
         param4[37].updateParent(param1);
         param4[43].updateParent(param1);
         param4[46].updateParent(param1);
         param4[45].updateParent(param1);
         param4[29].updateParent(param1);
         param4[47].updateParent(param1);
         param4[50].updateParent(param1);
         param4[127].updateParent(param1);
         param4[127].addChild(param4[128]);
         param4[128].addChild(param4[142]);
         param4[128].addChild(param4[134]);
         param4[128].addChild(param4[137]);
         param4[128].addChild(param4[129]);
         param4[11].updateParent(param1);
         param4[18].updateParent(param1);
         param4[28].updateParent(param1);
         param4[12].updateParent(param1);
         param4[10].updateParent(param1);
         param4[17].updateParent(param1);
         param4[26].updateParent(param1);
         param4[16].updateParent(param1);
         param4[40].updateParent(param1);
         param4[23].updateParent(param1);
         param4[51].updateParent(param1);
         param4[3].updateParent(param1);
         param4[25].updateParent(param1);
         param4[24].updateParent(param1);
         param4[14].updateParent(param1);
         param4[15].updateParent(param1);
         param4[7].updateParent(param1);
         param4[5].updateParent(param1);
         param4[35].updateParent(param1);
         param4[21].updateParent(param1);
         param4[22].updateParent(param1);
         param4[6].updateParent(param1);
         param4[32].updateParent(param1);
      }
   }
}

