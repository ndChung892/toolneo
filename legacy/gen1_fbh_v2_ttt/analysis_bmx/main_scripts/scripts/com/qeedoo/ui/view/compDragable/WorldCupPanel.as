package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.WorldCupCanvas;
   import com.qeedoo.ui.view.comp.WorldCupShopSlot;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WorldCupPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2003077507lab6_B_0:Label;
      
      private var _2006772552lab2_A_0:Label;
      
      private var _735133884img4_A_0:Image;
      
      private var _320271553btnLastPage:Button;
      
      private var _1178662790item18:WorldCupShopSlot;
      
      private var _1178662762item25:WorldCupShopSlot;
      
      private var _2002148220lab7_H_0:Label;
      
      private var _732359477img7_E_0:Image;
      
      private var _2012833818yLab5_D:Label;
      
      private var _2012833820yLab5_B:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1917162409btnLastPageShopGold:Button;
      
      private var _2012832857yLab6_D:Label;
      
      private var WORLD_CUP_GROUP:Object = {};
      
      private var _1178662795item13:WorldCupShopSlot;
      
      private var _1178662767item20:WorldCupShopSlot;
      
      public var _WorldCupPanel_LinkButton1:LinkButton;
      
      private var _2004001028lab5_B_0:Label;
      
      private var _732357554img7_G_1:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var jieduan:Object = {
         7:Language.WORLD_CUP_STATE[7],
         6:Language.WORLD_CUP_STATE[6],
         5:Language.WORLD_CUP_STATE[5],
         4:Language.WORLD_CUP_STATE[4],
         2:Language.WORLD_CUP_STATE[2]
      };
      
      private var _1110415956labg_1:Label;
      
      private var _click:Number = -1;
      
      public var _WorldCupPanel_Image39:Image;
      
      private var _1178662789item19:WorldCupShopSlot;
      
      public var _WorldCupPanel_Image40:Image;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var GROUP_INDEX_STATE:Object = {
         8:32 + Language.WORLD_CUP_PANEL[27],
         7:16 + Language.WORLD_CUP_PANEL[27],
         6:8 + Language.WORLD_CUP_PANEL[27],
         5:4 + Language.WORLD_CUP_PANEL[27],
         4:Language.WORLD_CUP_PANEL[25],
         2:Language.WORLD_CUP_PANEL[26]
      };
      
      public var _WorldCupPanel_Image50:Image;
      
      public var _WorldCupPanel_Image51:Image;
      
      public var _WorldCupPanel_Image52:Image;
      
      private var _967394996btnNextPageShop:Button;
      
      private var _1378849180btn7_H:DelayButton;
      
      public var _WorldCupPanel_DelayButton1:DelayButton;
      
      public var _WorldCupPanel_DelayButton2:DelayButton;
      
      private var _688048726imgg_2_2:Image;
      
      private var _defaultMaxIndex:Number = 8;
      
      private var _732362360img7_B_0:Image;
      
      private var _1378850147btn6_B:DelayButton;
      
      private var _1378849185btn7_C:DelayButton;
      
      private var _732359476img7_E_1:Image;
      
      private var _255677842rankGrid:DataGrid;
      
      private var _734208441img5_C_0:Image;
      
      private var _1378851109btn5_A:DelayButton;
      
      private var _2002153986lab7_B_0:Label;
      
      private var _2089469638txtPageIndicatorShop:TextInput;
      
      private var _733284920img6_C_0:Image;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var _1178662760item27:WorldCupShopSlot;
      
      private var _732361399img7_C_0:Image;
      
      private var _2012835743yLab3_A:Label;
      
      private var _2002150142lab7_F_0:Label;
      
      private var _2012832854yLab6_G:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _groupNum:Object = {
         7:16,
         6:8,
         5:4,
         4:2,
         3:1,
         2:2,
         1:1
      };
      
      private var _2012834782yLab4_A:Label;
      
      private var _1178662793item15:WorldCupShopSlot;
      
      private var _1178662765item22:WorldCupShopSlot;
      
      private var _119152xz2:WorldCupCanvas;
      
      private var _shopIndex:Number = 1;
      
      private var _1957841314labg_1_1:Image;
      
      private var _timeAward:String = "";
      
      private var _2005849031lab3_A_0:Label;
      
      private var WORLD_CUP_LIMIT_1:Object = {};
      
      private var _1178662759item28:WorldCupShopSlot;
      
      private var _shopDataGold:Array = new Array();
      
      private var _2012832859yLab6_B:Label;
      
      private var _clickgState:Number = -1;
      
      private var _1178662798item10:WorldCupShopSlot;
      
      private var WORLD_CUP_MINUS:Object = {
         "A":"A|B",
         "B":"C|D",
         "C":"E|F",
         "D":"G|H"
      };
      
      private var _733286842img6_A_0:Image;
      
      private var _2002153985lab7_B_1:Label;
      
      private var _2003072702lab6_G_0:Label;
      
      private var _733283959img6_D_0:Image;
      
      public var _checkTime:Number = 0;
      
      private var _737904447img1_A_0:Image;
      
      private var _808459627vsBang:ViewStack;
      
      private var _2002152064lab7_D_0:Label;
      
      private var _1378850145btn6_D:DelayButton;
      
      private var _1378849183btn7_E:DelayButton;
      
      private var _1863324752bangBtn4:BasicGlowButton;
      
      private var _119154xz4:WorldCupCanvas;
      
      private var _2002150141lab7_F_1:Label;
      
      private var _732361398img7_C_1:Image;
      
      private var _736980926img2_A_0:Image;
      
      private var _701799496_myTeamSc:Number = 0;
      
      private var _733280115img6_H_0:Image;
      
      private var WORLD_CUP_REQUIRE:Object = {};
      
      private var _734210363img5_A_0:Image;
      
      private var _873453351title1:Image;
      
      private var _2004925510lab4_A_0:Label;
      
      private var _582286198introCon:IntroText;
      
      private var _1957841313labg_1_2:Image;
      
      private var WORLD_CUP_ADD:Object = {
         "A":"A",
         "B":"A",
         "C":"B",
         "D":"B",
         "E":"C",
         "F":"C",
         "G":"D",
         "H":"D"
      };
      
      private var _2003074624lab6_E_0:Label;
      
      private var GoldSchedule:Object = {};
      
      private var jieduanImage:Object = {
         7:"4130220000472",
         6:"4130220000473",
         5:"4130220000474",
         4:"4130220000475",
         2:"4130220000475"
      };
      
      private var WORLD_CUP_TIME_GOLD_LIMIT:Object = {};
      
      private var _2004001989lab5_A_0:Label;
      
      public var _WorldCupPanel_Image1:Image;
      
      public var _WorldCupPanel_Image2:Image;
      
      public var _WorldCupPanel_Image3:Image;
      
      public var _WorldCupPanel_Image4:Image;
      
      private var _732356594img7_H_0:Image;
      
      private var _1178662791item17:WorldCupShopSlot;
      
      private var _1178662763item24:WorldCupShopSlot;
      
      private var _119156xz6:WorldCupCanvas;
      
      private var _2002152063lab7_D_1:Label;
      
      private var _allTeamArr:Object = {};
      
      private var _clickId:Number = -1;
      
      private var _735132923img4_B_0:Image;
      
      private var _733282037img6_F_0:Image;
      
      private var _2012832856yLab6_E:Label;
      
      public var _WorldCupPanel_DelayButton19:DelayButton;
      
      private var _version:String = "wc_-1";
      
      private var GoldScheduleState:Number = 8;
      
      private var _289667927btnLastPageShop:Button;
      
      private var _732358516img7_F_0:Image;
      
      public var _WorldCupPanel_DelayButton20:DelayButton;
      
      public var _WorldCupPanel_DelayButton21:DelayButton;
      
      public var _WorldCupPanel_DelayButton22:DelayButton;
      
      public var _WorldCupPanel_DelayButton23:DelayButton;
      
      private var _1863324751bangBtn5:BasicGlowButton;
      
      private var _2004924549lab4_B_0:Label;
      
      private var _1178662796item12:WorldCupShopSlot;
      
      public var _WorldCupPanel_DataGridColumn10:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn11:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn12:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn13:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn14:DataGridColumn;
      
      private var _2003076546lab6_C_0:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _442404173_myOutSc:Number = 0;
      
      private var _2006771591lab2_B_0:Label;
      
      private var _1378849181btn7_G:DelayButton;
      
      private var _clickgGroup:String = "A";
      
      public var _WorldCupPanel_Label51:Label;
      
      public var _WorldCupPanel_Label52:Label;
      
      public var _WorldCupPanel_Label53:Label;
      
      public var _WorldCupPanel_Label54:Label;
      
      public var _WorldCupPanel_Label55:Label;
      
      public var _WorldCupPanel_Label56:Label;
      
      public var _WorldCupPanel_Label59:Label;
      
      private var _119158xz8:WorldCupCanvas;
      
      private var _1378850148btn6_A:DelayButton;
      
      public var _WorldCupPanel_Label60:Label;
      
      public var _WorldCupPanel_Label61:Label;
      
      public var _WorldCupPanel_Label63:Label;
      
      private var _1378849186btn7_B:DelayButton;
      
      private var _1378803074btng_2:Button;
      
      private var _2003999106lab5_D_0:Label;
      
      private var _alert:Alert;
      
      private var _2004000067lab5_C_0:Label;
      
      private var _732356593img7_H_1:Image;
      
      private var _688049688imgg_1_1:Image;
      
      private var _1378852070btn4_A:DelayButton;
      
      private var _2003078468lab6_A_0:Label;
      
      private var _732358515img7_F_1:Image;
      
      private var _1863324750bangBtn6:BasicGlowButton;
      
      private var _worldCupFlag:Object = {};
      
      private var _shopMaxIndex:Number = 1;
      
      private var WORLD_CUP_ODDS:Object = {};
      
      private var _2002149181lab7_G_0:Label;
      
      private var _2012832853yLab6_H:Label;
      
      private var _1178662761item26:WorldCupShopSlot;
      
      private var _1829757008ginfo_grid:DataGrid;
      
      private var _defaultIndex:Number = 1;
      
      public var _WorldCupPanel_DataGridColumn1:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn2:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn3:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn4:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn5:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn6:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn7:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn8:DataGridColumn;
      
      public var _WorldCupPanel_DataGridColumn9:DataGridColumn;
      
      private var _2012834781yLab4_B:Label;
      
      private var saveBtnId:Object = {
         7:{
            1:"A",
            2:"B",
            3:"C",
            4:"D",
            5:"E",
            6:"F",
            7:"G",
            8:"H"
         },
         6:{
            1:"A",
            2:"B",
            3:"C",
            4:"D"
         },
         5:{
            1:"A",
            2:"B"
         },
         4:{1:"A"},
         2:{1:"A"}
      };
      
      private var _2012833819yLab5_C:Label;
      
      private var _732363321img7_A_0:Image;
      
      private var _2012833821yLab5_A:Label;
      
      private var _732360438img7_D_0:Image;
      
      private var _shopData:Array = new Array();
      
      private var _734207480img5_D_0:Image;
      
      private var _1178662794item14:WorldCupShopSlot;
      
      private var _1178662766item21:WorldCupShopSlot;
      
      private var _2012832858yLab6_C:Label;
      
      private var _1110415955labg_2:Label;
      
      private var _rankVersion:String = "wcr_-1";
      
      private var _2012832860yLab6_A:Label;
      
      private var _564183348btnNextPageShopGold:Button;
      
      private var _1378853992btn2_A:DelayButton;
      
      private var _734209402img5_B_0:Image;
      
      private var _charData:Object = {};
      
      private var _688049687imgg_1_2:Image;
      
      private var _2002154947lab7_A_0:Label;
      
      private var _119151xz1:WorldCupCanvas;
      
      private var WORLD_CUP_LIMIT:Object = {};
      
      private var _vsObject:Object = {};
      
      private var _1378850146btn6_C:DelayButton;
      
      private var _1378849184btn7_D:DelayButton;
      
      private var _736979965img2_B_0:Image;
      
      private var _2002149180lab7_G_1:Label;
      
      private var _1957840353labg_2_1:Image;
      
      private var _2002151103lab7_E_0:Label;
      
      private var _732363320img7_A_1:Image;
      
      private var _1378851108btn5_B:DelayButton;
      
      private var _415230022txtPageIndicatorShopGold:TextInput;
      
      private var _2002148219lab7_H_1:Label;
      
      private var _732360437img7_D_1:Image;
      
      private var _groupCanvasId:Object = {
         "A":"xz1",
         "B":"xz2",
         "C":"xz3",
         "D":"xz4",
         "E":"xz5",
         "F":"xz6",
         "G":"xz7",
         "H":"xz8"
      };
      
      private var _showObject:Object = {};
      
      private var _1229795408txtPageIndicator:TextInput;
      
      private var _733285881img6_B_0:Image;
      
      private var _2003071741lab6_H_0:Label;
      
      private var _733282998img6_E_0:Image;
      
      private var _119153xz3:WorldCupCanvas;
      
      private var _2012837665yLab1_A:Label;
      
      private var _2002154946lab7_A_1:Label;
      
      private var _2002153025lab7_C_0:Label;
      
      private var _2012832855yLab6_F:Label;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _1178662792item16:WorldCupShopSlot;
      
      private var _1178662764item23:WorldCupShopSlot;
      
      private var _shopGoldMaxIndex:Number = 1;
      
      private var _736057405img3_A_0:Image;
      
      public var _WorldCupPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1178662758item29:WorldCupShopSlot;
      
      private var _1957840352labg_2_2:Image;
      
      private var _2002151102lab7_E_1:Label;
      
      private var _732362359img7_B_1:Image;
      
      private var _1178662797item11:WorldCupShopSlot;
      
      private var _1607243192endTime:Label;
      
      private var _2003073663lab6_F_0:Label;
      
      private var _119155xz5:WorldCupCanvas;
      
      private var _refreshBtn:Boolean = true;
      
      private var _2007696073lab1_A_0:Label;
      
      private var _1378849182btn7_F:DelayButton;
      
      private var _733281076img6_G_0:Image;
      
      private var _choseTeam:Object = {};
      
      private var _732357555img7_G_0:Image;
      
      private var _1378849187btn7_A:DelayButton;
      
      private var _1378803075btng_1:Button;
      
      mx_internal var _watchers:Array = [];
      
      private var _2002153024lab7_C_1:Label;
      
      private var _1090881890btnNextPage:Button;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _2003075585lab6_D_0:Label;
      
      private var _1715068648endTime0:Label;
      
      private var _119157xz7:WorldCupCanvas;
      
      private var _688048727imgg_2_1:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":850,
               "height":572,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WorldCupPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.top = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "percentWidth":100,
                        "height":26,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn0",
                           "events":{"click":"__bangBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "selected":true,
                                 "labelPlacement":"bottom",
                                 "width":61
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn1",
                           "events":{"click":"__bangBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "width":61
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn2",
                           "events":{"click":"__bangBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "width":61
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn3",
                           "events":{"click":"__bangBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "width":61
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn4",
                           "events":{"click":"__bangBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "width":61
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn5",
                           "events":{"click":"__bangBtn5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "width":81
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn6",
                           "events":{"click":"__bangBtn6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "height":26,
                                 "width":81
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"_WorldCupPanel_DelayButton1",
                  "events":{"click":"___WorldCupPanel_DelayButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":735,
                        "y":35,
                        "clickDelay":3000,
                        "styleName":"BtnStdRed",
                        "width":95
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsBang",
                  "stylesFactory":function():void
                  {
                     this.top = "60";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":190,
                                          "x":10.3,
                                          "y":9.15,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_WorldCupPanel_Image1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":1,
                                                   "y":1,
                                                   "width":803,
                                                   "height":188
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___WorldCupPanel_Button1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"duihuanjiangli",
                                                   "x":514,
                                                   "y":148,
                                                   "width":109,
                                                   "height":34
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":264,
                                          "x":10.3,
                                          "y":202,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introCon",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":800,
                                                   "height":254,
                                                   "x":3,
                                                   "y":5
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"_WorldCupPanel_DelayButton2",
                                    "events":{"click":"___WorldCupPanel_DelayButton2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":367.6,
                                          "y":470,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":95
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_WorldCupPanel_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":825,
                                          "height":500,
                                          "x":0,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":1,
                                          "styleName":"RoundedGradientBorder"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":208,
                                          "styleName":"RoundedGradientBorder"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":415,
                                          "styleName":"RoundedGradientBorder"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":622,
                                          "styleName":"RoundedGradientBorder",
                                          "width":203
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":1,
                                          "y":251,
                                          "styleName":"RoundedGradientBorder"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":208,
                                          "y":251,
                                          "styleName":"RoundedGradientBorder"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":415,
                                          "y":251,
                                          "styleName":"RoundedGradientBorder"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WorldCupCanvas,
                                    "id":"xz8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":622,
                                          "y":251,
                                          "styleName":"RoundedGradientBorder",
                                          "width":203
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_WorldCupPanel_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":825,
                                          "height":500,
                                          "x":0,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_WorldCupPanel_Image4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":155,
                                          "height":163,
                                          "x":331,
                                          "y":-4
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_A_0",
                                    "events":{"click":"__img7_A_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":35,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":48,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_A",
                                    "events":{"click":"__btn7_A_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":53,
                                          "y":70,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_A_1",
                                    "events":{"click":"__img7_A_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":88,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_A_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":101,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_B_0",
                                    "events":{"click":"__img7_B_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":153,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_B_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":166,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_B",
                                    "events":{"click":"__btn7_B_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":53,
                                          "y":188,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_B_1",
                                    "events":{"click":"__img7_B_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":210,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_B_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":221,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_C_0",
                                    "events":{"click":"__img7_C_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":281,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_C_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":292,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_C",
                                    "events":{"click":"__btn7_C_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":53,
                                          "y":316,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_C_1",
                                    "events":{"click":"__img7_C_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":334,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_C_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":348,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_D_0",
                                    "events":{"click":"__img7_D_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":398,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_D_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":411,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_D",
                                    "events":{"click":"__btn7_D_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":53,
                                          "y":433,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_D_1",
                                    "events":{"click":"__img7_D_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":9,
                                          "y":453,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_D_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":466,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_E_0",
                                    "events":{"click":"__img7_E_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":779,
                                          "y":35,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_E_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":48,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_E",
                                    "events":{"click":"__btn7_E_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":695,
                                          "y":70,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_E_1",
                                    "events":{"click":"__img7_E_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":88,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_E_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":101,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_F_0",
                                    "events":{"click":"__img7_F_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":153,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_F_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":166,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_F",
                                    "events":{"click":"__btn7_F_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":695,
                                          "y":188,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_F_1",
                                    "events":{"click":"__img7_F_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":210,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_F_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":221,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_G_0",
                                    "events":{"click":"__img7_G_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":281,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_G_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":292,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_G",
                                    "events":{"click":"__btn7_G_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":695,
                                          "y":316,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_G_1",
                                    "events":{"click":"__img7_G_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":334,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_G_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":348,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_H_0",
                                    "events":{"click":"__img7_H_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":398,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_H_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":411,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn7_H",
                                    "events":{"click":"__btn7_H_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":695,
                                          "y":433,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img7_H_1",
                                    "events":{"click":"__img7_H_1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":777,
                                          "y":449,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7_H_1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "48";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":466,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_A",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":135,
                                          "y":35,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_E",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":583,
                                          "y":38,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_A_0",
                                    "events":{"click":"__img6_A_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":138,
                                          "y":62,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":74,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn6_A",
                                    "events":{"click":"__btn6_A_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":120,
                                          "y":130,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_B",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":135,
                                          "y":227,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_F",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":583,
                                          "y":228,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_B_0",
                                    "events":{"click":"__img6_B_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":138,
                                          "y":182,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_B_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":196,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_C",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":138,
                                          "y":282,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_G",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":585,
                                          "y":283,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_D",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":138,
                                          "y":470,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab6_H",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":589,
                                          "y":470,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_C_0",
                                    "events":{"click":"__img6_C_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":138,
                                          "y":307,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_C_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":320,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn6_B",
                                    "events":{"click":"__btn6_B_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":120,
                                          "y":375,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_D_0",
                                    "events":{"click":"__img6_D_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":138,
                                          "y":427,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_D_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":440,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_E_0",
                                    "events":{"click":"__img6_E_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":639,
                                          "y":62,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_E_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "188";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":74,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn6_C",
                                    "events":{"click":"__btn6_C_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":628,
                                          "y":130,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_F_0",
                                    "events":{"click":"__img6_F_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":639,
                                          "y":182,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_F_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "188";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":196,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_G_0",
                                    "events":{"click":"__img6_G_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":639,
                                          "y":307,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_G_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "188";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":320,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn6_D",
                                    "events":{"click":"__btn6_D_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":628,
                                          "y":375,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img6_H_0",
                                    "events":{"click":"__img6_H_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":639,
                                          "y":427,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6_H_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "188";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":440,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab5_A",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":213,
                                          "y":97,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab5_C",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":518,
                                          "y":97,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab5_D",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":517,
                                          "y":348,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab5_B",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":213,
                                          "y":348,
                                          "width":119,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img5_A_0",
                                    "events":{"click":"__img5_A_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":213,
                                          "y":120,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab5_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":134,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn5_A",
                                    "events":{"click":"__btn5_A_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":254,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img5_B_0",
                                    "events":{"click":"__img5_B_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":213,
                                          "y":372,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab5_B_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":385,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img5_C_0",
                                    "events":{"click":"__img5_C_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":564,
                                          "y":120,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab5_C_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "264";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":134,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img5_D_0",
                                    "events":{"click":"__img5_D_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":564,
                                          "y":372,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab5_D_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "264";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":385,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn5_B",
                                    "events":{"click":"__btn5_B_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":560,
                                          "y":254,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab4_A",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":275,
                                          "y":255,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab4_B",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":430,
                                          "y":255,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab3_A",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":332,
                                          "y":171,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img4_A_0",
                                    "events":{"click":"__img4_A_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":275,
                                          "y":212,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab4_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":316,
                                          "y":225,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img4_B_0",
                                    "events":{"click":"__img4_B_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":502,
                                          "y":212,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab4_B_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "326";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":225,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn4_A",
                                    "events":{"click":"__btn4_A_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":379,
                                          "y":226,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img3_A_0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":355,
                                          "y":128,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab3_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":396,
                                          "y":141,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"yLab1_A",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":355,
                                          "y":402,
                                          "width":122,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img2_A_0",
                                    "events":{"click":"__img2_A_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":275,
                                          "y":279,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab2_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":316,
                                          "y":294,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img2_B_0",
                                    "events":{"click":"__img2_B_0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":502,
                                          "y":279,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab2_B_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.right = "326";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":294,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"btn2_A",
                                    "events":{"click":"__btn2_A_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":379,
                                          "y":291,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":67
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"img1_A_0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "useHandCursor":true,
                                          "x":355,
                                          "y":358,
                                          "width":39,
                                          "height":39
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab1_A_0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":396,
                                          "y":372,
                                          "width":77,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"_WorldCupPanel_LinkButton1",
                                    "events":{"click":"___WorldCupPanel_LinkButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16118284;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":332,
                                          "y":438,
                                          "width":220
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":50,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "y":175,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":815,
                                          "height":459,
                                          "x":5,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"rankGrid",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "doubleClickEnabled":true,
                                                   "height":400,
                                                   "columns":[_WorldCupPanel_DataGridColumn1_i(),_WorldCupPanel_DataGridColumn2_i(),_WorldCupPanel_DataGridColumn3_i(),_WorldCupPanel_DataGridColumn4_i(),_WorldCupPanel_DataGridColumn5_i(),_WorldCupPanel_DataGridColumn6_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupPanel_Label51",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37,
                                          "y":467,
                                          "width":171,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupPanel_Label52",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":135,
                                          "y":467,
                                          "width":171,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupPanel_Label53",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37,
                                          "y":467,
                                          "width":171,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupPanel_Label54",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":235,
                                          "y":467,
                                          "width":171,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupPanel_Label55",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":467,
                                          "width":171,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupPanel_Label56",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":510,
                                          "y":467,
                                          "width":197,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"_WorldCupPanel_DelayButton19",
                                    "events":{"click":"___WorldCupPanel_DelayButton19_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":715,
                                          "y":467,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":95
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":50,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "y":175,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":190,
                                          "x":10.3,
                                          "y":9.15,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_WorldCupPanel_Image39",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":1,
                                                   "y":1,
                                                   "width":803,
                                                   "height":188
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___WorldCupPanel_Button2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"duihuanjiangli",
                                                   "x":514,
                                                   "y":148,
                                                   "width":109,
                                                   "height":34
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":264,
                                          "x":10.3,
                                          "y":202,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_WorldCupPanel_Image40",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":1,
                                                   "y":1,
                                                   "width":803,
                                                   "height":262
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"title1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":319.95,
                                                   "width":163,
                                                   "height":39,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"imgg_1_1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":18,
                                                   "y":47,
                                                   "width":133,
                                                   "height":135
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"imgg_1_2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":264,
                                                   "y":47,
                                                   "width":133,
                                                   "height":135
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"labg_1_1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":191.45,
                                                   "width":120,
                                                   "height":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"labg_1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777015;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90,
                                                   "y":230,
                                                   "width":207,
                                                   "height":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"imgg_2_1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":408,
                                                   "y":47,
                                                   "width":133,
                                                   "height":135
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"imgg_2_2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":650,
                                                   "y":47,
                                                   "width":133,
                                                   "height":135
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"labg_2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777015;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":510,
                                                   "y":230,
                                                   "width":207,
                                                   "height":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalAlign = "middle";
                                                this.horizontalGap = 5;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":328.5,
                                                   "y":233,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Button,
                                                      "id":"btnLastPage",
                                                      "events":{"buttonDown":"__btnLastPage_buttonDown"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"LastPage",
                                                            "autoRepeat":true,
                                                            "label":"上一页",
                                                            "width":45,
                                                            "useHandCursor":true
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"txtPageIndicator",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"PageNoIndicator",
                                                            "width":50,
                                                            "height":16,
                                                            "text":"0",
                                                            "y":2.5,
                                                            "editable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Button,
                                                      "id":"btnNextPage",
                                                      "events":{"buttonDown":"__btnNextPage_buttonDown"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"NextPage",
                                                            "autoRepeat":true,
                                                            "label":"下一页",
                                                            "width":45,
                                                            "useHandCursor":true,
                                                            "y":0
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"labg_1_2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":273,
                                                   "y":190,
                                                   "width":120,
                                                   "height":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"labg_2_1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":417,
                                                   "y":190,
                                                   "width":120,
                                                   "height":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"labg_2_2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":660,
                                                   "y":190,
                                                   "width":120,
                                                   "height":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"btng_1",
                                             "events":{"click":"__btng_1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"yazhu",
                                                   "x":206,
                                                   "y":185.46,
                                                   "width":61,
                                                   "height":29
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"btng_2",
                                             "events":{"click":"__btng_2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"yazhu",
                                                   "x":596,
                                                   "y":185.46,
                                                   "width":61,
                                                   "height":29
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"_WorldCupPanel_DelayButton20",
                                    "events":{"click":"___WorldCupPanel_DelayButton20_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":370.6,
                                          "y":470,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":95
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":50,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "y":175,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":190,
                                          "x":10.3,
                                          "y":9.15,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_WorldCupPanel_Image50",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":1,
                                                   "y":1,
                                                   "width":803,
                                                   "height":188
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___WorldCupPanel_Button7_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"duihuanjiangli",
                                                   "x":514,
                                                   "y":148,
                                                   "width":109,
                                                   "height":34
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":264,
                                          "x":10.3,
                                          "y":202,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":795,
                                                   "height":208,
                                                   "x":5,
                                                   "y":28,
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "styleName":"RoundedGradientBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"ginfo_grid",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":19,
                                                            "y":30,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "doubleClickEnabled":true,
                                                            "height":180,
                                                            "columns":[_WorldCupPanel_DataGridColumn7_i(),_WorldCupPanel_DataGridColumn8_i(),_WorldCupPanel_DataGridColumn9_i(),_WorldCupPanel_DataGridColumn10_i(),_WorldCupPanel_DataGridColumn11_i(),_WorldCupPanel_DataGridColumn12_i(),_WorldCupPanel_DataGridColumn13_i(),_WorldCupPanel_DataGridColumn14_i()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WorldCupPanel_Label59",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 15;
                                                this.color = 16766720;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":18.95,
                                                   "y":239,
                                                   "width":285,
                                                   "height":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WorldCupPanel_Label60",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 15;
                                                this.color = 16766720;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":356,
                                                   "y":7,
                                                   "width":123,
                                                   "height":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"_WorldCupPanel_DelayButton21",
                                             "events":{"click":"___WorldCupPanel_DelayButton21_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":687.6,
                                                   "y":237,
                                                   "clickDelay":5000,
                                                   "styleName":"BtnStdRed",
                                                   "width":95
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"_WorldCupPanel_DelayButton22",
                                    "events":{"click":"___WorldCupPanel_DelayButton22_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":367.6,
                                          "y":470,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":95
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":825,
                                 "height":500,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "23";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":225,
                                          "x":10,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"_WorldCupPanel_DelayButton23",
                                             "events":{"click":"___WorldCupPanel_DelayButton23_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":698.5,
                                                   "y":11,
                                                   "clickDelay":3000,
                                                   "styleName":"BtnStdRed",
                                                   "width":95
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":38
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168,
                                                   "y":38
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":327.5,
                                                   "y":38
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":485.5,
                                                   "y":38
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":643.5,
                                                   "y":38
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":11.5,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item26",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169.5,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item27",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":329,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item28",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":487,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item29",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":645,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalAlign = "middle";
                                                this.horizontalGap = 5;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":328.5,
                                                   "y":196,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Button,
                                                      "id":"btnLastPageShopGold",
                                                      "events":{"buttonDown":"__btnLastPageShopGold_buttonDown"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"LastPage",
                                                            "autoRepeat":true,
                                                            "label":"上一页",
                                                            "width":45,
                                                            "useHandCursor":true
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"txtPageIndicatorShopGold",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"PageNoIndicator",
                                                            "width":50,
                                                            "height":16,
                                                            "text":"0",
                                                            "y":2.5,
                                                            "editable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Button,
                                                      "id":"btnNextPageShopGold",
                                                      "events":{"buttonDown":"__btnNextPageShopGold_buttonDown"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"NextPage",
                                                            "autoRepeat":true,
                                                            "label":"下一页",
                                                            "width":45,
                                                            "useHandCursor":true,
                                                            "y":0
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_WorldCupPanel_Image51",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":645,
                                                   "y":197,
                                                   "width":20,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WorldCupPanel_Label61",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":672.5,
                                                   "y":197,
                                                   "height":20,
                                                   "width":129.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"endTime",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.color = 16777015;
                                                this.fontSize = 14;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":297,
                                                   "y":10,
                                                   "width":211,
                                                   "height":23
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "265";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":805,
                                          "height":225,
                                          "x":10,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":41
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168,
                                                   "y":41
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":327.5,
                                                   "y":41
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":485.5,
                                                   "y":41
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":643.5,
                                                   "y":41
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":11.5,
                                                   "y":119
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169.5,
                                                   "y":119
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":329,
                                                   "y":119
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":487,
                                                   "y":119
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":WorldCupShopSlot,
                                             "id":"item19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":645,
                                                   "y":119
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalAlign = "middle";
                                                this.horizontalGap = 5;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":328.5,
                                                   "y":196,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Button,
                                                      "id":"btnLastPageShop",
                                                      "events":{"buttonDown":"__btnLastPageShop_buttonDown"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"LastPage",
                                                            "autoRepeat":true,
                                                            "label":"上一页",
                                                            "width":45,
                                                            "useHandCursor":true
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"txtPageIndicatorShop",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"PageNoIndicator",
                                                            "width":50,
                                                            "height":16,
                                                            "text":"0",
                                                            "y":2.5,
                                                            "editable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Button,
                                                      "id":"btnNextPageShop",
                                                      "events":{"buttonDown":"__btnNextPageShop_buttonDown"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"NextPage",
                                                            "autoRepeat":true,
                                                            "label":"下一页",
                                                            "width":45,
                                                            "useHandCursor":true,
                                                            "y":0
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_WorldCupPanel_Image52",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":645,
                                                   "y":197,
                                                   "width":20,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WorldCupPanel_Label63",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":671.5,
                                                   "y":197,
                                                   "height":20,
                                                   "width":129.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"endTime0",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.color = 16777015;
                                                this.fontSize = 14;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":297,
                                                   "y":10,
                                                   "width":211,
                                                   "height":23
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _shopGoldIndex:Number = 1;
      
      public function WorldCupPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 850;
         this.height = 572;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.addEventListener("creationComplete",___WorldCupPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WorldCupPanel._watcherSetupUtil = param1;
      }
      
      public function set img2_B_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._736979965img2_B_0;
         if(_loc2_ !== param1)
         {
            this._736979965img2_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2_B_0",_loc2_,param1));
         }
      }
      
      public function ___WorldCupPanel_DelayButton1_click(param1:MouseEvent) : void
      {
         tradeAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_H_0() : Image
      {
         return this._732356594img7_H_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_H_1() : Image
      {
         return this._732356593img7_H_1;
      }
      
      public function set img7_H_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732356594img7_H_0;
         if(_loc2_ !== param1)
         {
            this._732356594img7_H_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_H_0",_loc2_,param1));
         }
      }
      
      public function set img7_H_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732356593img7_H_1;
         if(_loc2_ !== param1)
         {
            this._732356593img7_H_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_H_1",_loc2_,param1));
         }
      }
      
      public function __img7_E_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"E");
      }
      
      public function __img6_G_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"G");
      }
      
      public function set yLab4_A(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012834782yLab4_A;
         if(_loc2_ !== param1)
         {
            this._2012834782yLab4_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab4_A",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPageIndicatorShopGold() : TextInput
      {
         return this._415230022txtPageIndicatorShopGold;
      }
      
      public function set yLab4_B(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012834781yLab4_B;
         if(_loc2_ !== param1)
         {
            this._2012834781yLab4_B = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab4_B",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img2_A_0() : Image
      {
         return this._736980926img2_A_0;
      }
      
      public function __btng_2_click(param1:MouseEvent) : void
      {
         showVsPanel(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab3_A() : Label
      {
         return this._2012835743yLab3_A;
      }
      
      [Bindable(event="propertyChange")]
      public function get item10() : WorldCupShopSlot
      {
         return this._1178662798item10;
      }
      
      [Bindable(event="propertyChange")]
      public function get item11() : WorldCupShopSlot
      {
         return this._1178662797item11;
      }
      
      [Bindable(event="propertyChange")]
      public function get item12() : WorldCupShopSlot
      {
         return this._1178662796item12;
      }
      
      [Bindable(event="propertyChange")]
      public function get item13() : WorldCupShopSlot
      {
         return this._1178662795item13;
      }
      
      [Bindable(event="propertyChange")]
      public function get item17() : WorldCupShopSlot
      {
         return this._1178662791item17;
      }
      
      [Bindable(event="propertyChange")]
      public function get item18() : WorldCupShopSlot
      {
         return this._1178662790item18;
      }
      
      [Bindable(event="propertyChange")]
      public function get item19() : WorldCupShopSlot
      {
         return this._1178662789item19;
      }
      
      private function getWorldCupGoldPoint() : void
      {
         _core.remote.call("getWorldCupGoldPoint",new Responder(OnGetWorldCupGoldPoint));
      }
      
      public function set lab3_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2005849031lab3_A_0;
         if(_loc2_ !== param1)
         {
            this._2005849031lab3_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab3_A_0",_loc2_,param1));
         }
      }
      
      private function initGoldScheduleCanvas() : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Date = null;
         var _loc4_:String = null;
         var _loc1_:Number = 0;
         this["imgg_2_1"].visible = false;
         this["imgg_2_2"].visible = false;
         this["labg_2_1"].visible = false;
         this["labg_2_2"].visible = false;
         this["btng_2"].visible = false;
         this["labg_2"].visible = false;
         this["imgg_1_1"].visible = false;
         this["imgg_1_2"].visible = false;
         this["labg_1_1"].visible = false;
         this["labg_1_2"].visible = false;
         this["btng_1"].visible = false;
         this["labg_1"].visible = false;
         this["title1"].visible = false;
         _showObject = {};
         for(_loc2_ in GoldSchedule)
         {
            _loc1_++;
            _showObject[_loc1_] = GoldSchedule[_loc2_];
            if(Math.ceil(_loc1_ / 2) == _defaultIndex)
            {
               if(_loc1_ % 2 != 0)
               {
                  this["imgg_1_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][0]["team"]].icon2));
                  this["imgg_1_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][1]["team"]].icon2));
                  _loc3_ = new Date(GoldSchedule[_loc2_][0]["time"]);
                  _loc4_ = _loc3_.fullYear + "/" + (_loc3_.month + 1) + "/" + _loc3_.date + " " + _loc3_.hours + ":" + _loc3_.minutes + ":" + _loc3_.seconds;
                  _loc4_ = Language.WORLD_CUP_PANEL[30].replace("{time}",_loc4_) + "\n";
                  this["labg_1"].text = _loc4_;
                  this["labg_1_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][0]["team"]].icon3));
                  this["labg_1_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][1]["team"]].icon3));
                  this["imgg_1_1"].visible = true;
                  this["imgg_1_2"].visible = true;
                  this["labg_1_1"].visible = true;
                  this["labg_1_2"].visible = true;
                  this["btng_1"].visible = true;
                  this["labg_1"].visible = true;
                  this["title1"].source = ResManager.getIconUrl(parseInt(jieduanImage[GoldSchedule[_loc2_][0]["state"]]));
                  this["title1"].visible = true;
               }
               else
               {
                  this["imgg_2_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][0]["team"]].icon2));
                  this["imgg_2_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][1]["team"]].icon2));
                  _loc3_ = new Date(GoldSchedule[_loc2_][0]["time"]);
                  _loc4_ = _loc3_.fullYear + "/" + (_loc3_.month + 1) + "/" + _loc3_.date + " " + _loc3_.hours + ":" + _loc3_.minutes + ":" + _loc3_.seconds;
                  _loc4_ = Language.WORLD_CUP_PANEL[30].replace("{time}",_loc4_) + "\n";
                  this["labg_2_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][0]["team"]].icon3));
                  this["labg_2_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc2_][1]["team"]].icon3));
                  this["labg_2"].text = _loc4_;
                  this["imgg_2_1"].visible = true;
                  this["imgg_2_2"].visible = true;
                  this["labg_2_1"].visible = true;
                  this["labg_2_2"].visible = true;
                  this["btng_2"].visible = true;
                  this["labg_2"].visible = true;
               }
            }
         }
         _defaultMaxIndex = Math.ceil(_loc1_ / 2);
         txtPageIndicator.text = _defaultIndex + "/" + _defaultMaxIndex;
      }
      
      public function __btn6_C_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("C",6);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab2_B_0() : Label
      {
         return this._2006771591lab2_B_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_H_0() : Image
      {
         return this._733280115img6_H_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get item14() : WorldCupShopSlot
      {
         return this._1178662794item14;
      }
      
      private function _WorldCupPanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn12 = _loc1_;
         _loc1_.dataField = "odds";
         _loc1_.width = 70;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn12",_WorldCupPanel_DataGridColumn12);
         return _loc1_;
      }
      
      private function gotUpOrBack(param1:Boolean) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Date = null;
         var _loc5_:String = null;
         if(param1)
         {
            if(_defaultIndex >= _defaultMaxIndex)
            {
               return;
            }
            ++_defaultIndex;
         }
         else
         {
            if(_defaultIndex <= 1)
            {
               return;
            }
            --_defaultIndex;
         }
         this["imgg_2_1"].visible = false;
         this["imgg_2_2"].visible = false;
         this["labg_2_1"].visible = false;
         this["labg_2_2"].visible = false;
         this["btng_2"].visible = false;
         this["labg_2"].visible = false;
         this["imgg_1_1"].visible = false;
         this["imgg_1_2"].visible = false;
         this["labg_1_1"].visible = false;
         this["labg_1_2"].visible = false;
         this["btng_1"].visible = false;
         this["labg_1"].visible = false;
         this["title1"].visible = false;
         var _loc2_:Number = 0;
         for(_loc3_ in GoldSchedule)
         {
            _loc2_++;
            if(Math.ceil(_loc2_ / 2) == _defaultIndex)
            {
               if(_loc2_ % 2 != 0)
               {
                  this["imgg_1_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][0]["team"]].icon2));
                  this["imgg_1_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][1]["team"]].icon2));
                  _loc4_ = new Date(GoldSchedule[_loc3_][0]["time"]);
                  _loc5_ = _loc4_.fullYear + "/" + (_loc4_.month + 1) + "/" + _loc4_.date + " " + _loc4_.hours + ":" + _loc4_.minutes + ":" + _loc4_.seconds;
                  _loc5_ = Language.WORLD_CUP_PANEL[30].replace("{time}",_loc5_) + "\n";
                  this["labg_1"].text = _loc5_;
                  this["labg_1_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][0]["team"]].icon3));
                  this["labg_1_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][1]["team"]].icon3));
                  this["imgg_1_1"].visible = true;
                  this["imgg_1_2"].visible = true;
                  this["labg_1_1"].visible = true;
                  this["labg_1_2"].visible = true;
                  this["btng_1"].visible = true;
                  this["labg_1"].visible = true;
                  this["title1"].source = ResManager.getIconUrl(parseInt(jieduanImage[GoldSchedule[_loc3_][0]["state"]]));
                  this["title1"].visible = true;
               }
               else
               {
                  this["imgg_2_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][0]["team"]].icon2));
                  this["imgg_2_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][1]["team"]].icon2));
                  _loc4_ = new Date(GoldSchedule[_loc3_][0]["time"]);
                  _loc5_ = _loc4_.fullYear + "/" + (_loc4_.month + 1) + "/" + _loc4_.date + " " + _loc4_.hours + ":" + _loc4_.minutes + ":" + _loc4_.seconds;
                  _loc5_ = Language.WORLD_CUP_PANEL[30].replace("{time}",_loc5_) + "\n";
                  this["labg_2"].text = _loc5_;
                  this["labg_2_1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][0]["team"]].icon3));
                  this["labg_2_2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[GoldSchedule[_loc3_][1]["team"]].icon3));
                  this["labg_2"].text = _loc5_;
                  this["imgg_2_1"].visible = true;
                  this["imgg_2_2"].visible = true;
                  this["labg_2_1"].visible = true;
                  this["labg_2_2"].visible = true;
                  this["btng_2"].visible = true;
                  this["labg_2"].visible = true;
               }
            }
         }
         _defaultMaxIndex = Math.ceil(_loc2_ / 2);
         txtPageIndicator.text = _defaultIndex + "/" + _defaultMaxIndex;
      }
      
      public function __img5_D_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,5,"D");
      }
      
      [Bindable(event="propertyChange")]
      public function get item24() : WorldCupShopSlot
      {
         return this._1178662763item24;
      }
      
      [Bindable(event="propertyChange")]
      public function get item21() : WorldCupShopSlot
      {
         return this._1178662766item21;
      }
      
      public function set img7_G_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732357555img7_G_0;
         if(_loc2_ !== param1)
         {
            this._732357555img7_G_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_G_0",_loc2_,param1));
         }
      }
      
      public function set img7_G_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732357554img7_G_1;
         if(_loc2_ !== param1)
         {
            this._732357554img7_G_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_G_1",_loc2_,param1));
         }
      }
      
      public function onUpdateShopAmount() : void
      {
         if(initialized)
         {
            bangSele(6);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item26() : WorldCupShopSlot
      {
         return this._1178662761item26;
      }
      
      [Bindable(event="propertyChange")]
      public function get item27() : WorldCupShopSlot
      {
         return this._1178662760item27;
      }
      
      [Bindable(event="propertyChange")]
      public function get item20() : WorldCupShopSlot
      {
         return this._1178662767item20;
      }
      
      [Bindable(event="propertyChange")]
      public function get item22() : WorldCupShopSlot
      {
         return this._1178662765item22;
      }
      
      [Bindable(event="propertyChange")]
      public function get item23() : WorldCupShopSlot
      {
         return this._1178662764item23;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_F_1() : Image
      {
         return this._732358515img7_F_1;
      }
      
      public function set img2_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._736980926img2_A_0;
         if(_loc2_ !== param1)
         {
            this._736980926img2_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2_A_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item28() : WorldCupShopSlot
      {
         return this._1178662759item28;
      }
      
      [Bindable(event="propertyChange")]
      public function get item29() : WorldCupShopSlot
      {
         return this._1178662758item29;
      }
      
      private function turnPage(param1:Boolean, param2:Number) : void
      {
         if(param1)
         {
            if(param2 == 1 && _shopMaxIndex <= _shopIndex)
            {
               return;
            }
            if(param2 == 2 && _shopGoldMaxIndex <= _shopGoldIndex)
            {
               return;
            }
            if(param2 == 1)
            {
               ++_shopIndex;
               goToShopPage(_shopIndex,_shopData,1);
               txtPageIndicatorShop.text = _shopIndex + "/" + _shopMaxIndex;
            }
            else
            {
               ++_shopGoldIndex;
               goToShopPage(_shopGoldIndex,_shopDataGold,2);
               txtPageIndicatorShopGold.text = _shopGoldIndex + "/" + _shopGoldMaxIndex;
            }
         }
         else
         {
            if(param2 == 1 && _shopIndex <= 1)
            {
               return;
            }
            if(param2 == 2 && _shopGoldIndex <= 1)
            {
               return;
            }
            if(param2 == 1)
            {
               --_shopIndex;
               goToShopPage(_shopIndex,_shopData,1);
               txtPageIndicatorShop.text = _shopIndex + "/" + _shopMaxIndex;
            }
            else
            {
               --_shopGoldIndex;
               goToShopPage(_shopGoldIndex,_shopDataGold,2);
               txtPageIndicatorShopGold.text = _shopGoldIndex + "/" + _shopGoldMaxIndex;
            }
         }
      }
      
      public function __img4_A_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,4,"A");
      }
      
      public function set btnLastPageShopGold(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1917162409btnLastPageShopGold;
         if(_loc2_ !== param1)
         {
            this._1917162409btnLastPageShopGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLastPageShopGold",_loc2_,param1));
         }
      }
      
      public function ___WorldCupPanel_Button1_click(param1:MouseEvent) : void
      {
         tradeAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get item15() : WorldCupShopSlot
      {
         return this._1178662793item15;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_F_0() : Image
      {
         return this._732358516img7_F_0;
      }
      
      public function __btnLastPageShop_buttonDown(param1:FlexEvent) : void
      {
         turnPage(false,1);
      }
      
      [Bindable(event="propertyChange")]
      public function get img1_A_0() : Image
      {
         return this._737904447img1_A_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get item25() : WorldCupShopSlot
      {
         return this._1178662762item25;
      }
      
      public function set txtPageIndicatorShopGold(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._415230022txtPageIndicatorShopGold;
         if(_loc2_ !== param1)
         {
            this._415230022txtPageIndicatorShopGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPageIndicatorShopGold",_loc2_,param1));
         }
      }
      
      private function _WorldCupPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_BasicTitleCanvas1.text = param1;
         },"_WorldCupPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn4.label = param1;
         },"bangBtn4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn5.label = param1;
         },"bangBtn5.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn6.label = param1;
         },"bangBtn6.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton1.label = param1;
         },"_WorldCupPanel_DelayButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000471"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image1.source = param1;
         },"_WorldCupPanel_Image1.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introCon.htmlText = param1;
         },"introCon.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton2.label = param1;
         },"_WorldCupPanel_DelayButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000397"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image2.source = param1;
         },"_WorldCupPanel_Image2.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000398"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image3.source = param1;
         },"_WorldCupPanel_Image3.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000431"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image4.source = param1;
         },"_WorldCupPanel_Image4.source");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_A.label = param1;
         },"btn7_A.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_B.label = param1;
         },"btn7_B.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_C.label = param1;
         },"btn7_C.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_D.label = param1;
         },"btn7_D.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_E.label = param1;
         },"btn7_E.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_F.label = param1;
         },"btn7_F.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_G.label = param1;
         },"btn7_G.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7_H.label = param1;
         },"btn7_H.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6_A.label = param1;
         },"btn6_A.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6_B.label = param1;
         },"btn6_B.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6_C.label = param1;
         },"btn6_C.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6_D.label = param1;
         },"btn6_D.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn5_A.label = param1;
         },"btn5_A.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn5_B.label = param1;
         },"btn5_B.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn4_A.label = param1;
         },"btn4_A.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2_A.label = param1;
         },"btn2_A.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_LinkButton1.label = param1;
         },"_WorldCupPanel_LinkButton1.label");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn1.headerText = param1;
         },"_WorldCupPanel_DataGridColumn1.headerText");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn2.headerText = param1;
         },"_WorldCupPanel_DataGridColumn2.headerText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn3.headerText = param1;
         },"_WorldCupPanel_DataGridColumn3.headerText");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn4.headerText = param1;
         },"_WorldCupPanel_DataGridColumn4.headerText");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn5.headerText = param1;
         },"_WorldCupPanel_DataGridColumn5.headerText");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn6.headerText = param1;
         },"_WorldCupPanel_DataGridColumn6.headerText");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label51.text = param1;
         },"_WorldCupPanel_Label51.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _myTeamSc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label52.text = param1;
         },"_WorldCupPanel_Label52.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label53.text = param1;
         },"_WorldCupPanel_Label53.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label54.text = param1;
         },"_WorldCupPanel_Label54.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _myOutSc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label55.text = param1;
         },"_WorldCupPanel_Label55.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[37] + "" + _core.player.worldCupPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label56.text = param1;
         },"_WorldCupPanel_Label56.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton19.label = param1;
         },"_WorldCupPanel_DelayButton19.label");
         result[44] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000471"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image39.source = param1;
         },"_WorldCupPanel_Image39.source");
         result[45] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000470"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image40.source = param1;
         },"_WorldCupPanel_Image40.source");
         result[46] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            txtPageIndicator.filters = param1;
         },"txtPageIndicator.filters");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton20.label = param1;
         },"_WorldCupPanel_DelayButton20.label");
         result[48] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000471"));
         },function(param1:Object):void
         {
            _WorldCupPanel_Image50.source = param1;
         },"_WorldCupPanel_Image50.source");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn7.headerText = param1;
         },"_WorldCupPanel_DataGridColumn7.headerText");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn8.headerText = param1;
         },"_WorldCupPanel_DataGridColumn8.headerText");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn9.headerText = param1;
         },"_WorldCupPanel_DataGridColumn9.headerText");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn10.headerText = param1;
         },"_WorldCupPanel_DataGridColumn10.headerText");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn11.headerText = param1;
         },"_WorldCupPanel_DataGridColumn11.headerText");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn12.headerText = param1;
         },"_WorldCupPanel_DataGridColumn12.headerText");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn13.headerText = param1;
         },"_WorldCupPanel_DataGridColumn13.headerText");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DataGridColumn14.headerText = param1;
         },"_WorldCupPanel_DataGridColumn14.headerText");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[47] + "" + _core.player.worldCupGoldPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label59.text = param1;
         },"_WorldCupPanel_Label59.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label60.text = param1;
         },"_WorldCupPanel_Label60.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton21.label = param1;
         },"_WorldCupPanel_DelayButton21.label");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton22.label = param1;
         },"_WorldCupPanel_DelayButton22.label");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_DelayButton23.label = param1;
         },"_WorldCupPanel_DelayButton23.label");
         result[62] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            txtPageIndicatorShopGold.filters = param1;
         },"txtPageIndicatorShopGold.filters");
         result[63] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_WORLD_CUP_GOLD;
         },function(param1:Object):void
         {
            _WorldCupPanel_Image51.source = param1;
         },"_WorldCupPanel_Image51.source");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.worldCupGoldPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label61.text = param1;
         },"_WorldCupPanel_Label61.text");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            endTime.text = param1;
         },"endTime.text");
         result[66] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            endTime.filters = param1;
         },"endTime.filters");
         result[67] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            txtPageIndicatorShop.filters = param1;
         },"txtPageIndicatorShop.filters");
         result[68] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_WORLD_CUP;
         },function(param1:Object):void
         {
            _WorldCupPanel_Image52.source = param1;
         },"_WorldCupPanel_Image52.source");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.worldCupPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupPanel_Label63.text = param1;
         },"_WorldCupPanel_Label63.text");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[56];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            endTime0.text = param1;
         },"endTime0.text");
         result[71] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            endTime0.filters = param1;
         },"endTime0.filters");
         result[72] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_G_0() : Label
      {
         return this._2002149181lab7_G_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_G_1() : Label
      {
         return this._2002149180lab7_G_1;
      }
      
      public function set yLab3_A(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012835743yLab3_A;
         if(_loc2_ !== param1)
         {
            this._2012835743yLab3_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab3_A",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item16() : WorldCupShopSlot
      {
         return this._1178662792item16;
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         bangSele(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get title1() : Image
      {
         return this._873453351title1;
      }
      
      public function set item10(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662798item10;
         if(_loc2_ !== param1)
         {
            this._1178662798item10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item10",_loc2_,param1));
         }
      }
      
      public function set item11(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662797item11;
         if(_loc2_ !== param1)
         {
            this._1178662797item11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item11",_loc2_,param1));
         }
      }
      
      public function ___WorldCupPanel_DelayButton22_click(param1:MouseEvent) : void
      {
         tradeAward();
      }
      
      public function set item13(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662795item13;
         if(_loc2_ !== param1)
         {
            this._1178662795item13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item13",_loc2_,param1));
         }
      }
      
      public function initWorldCupPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set item17(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662791item17;
         if(_loc2_ !== param1)
         {
            this._1178662791item17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item17",_loc2_,param1));
         }
      }
      
      public function set item14(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662794item14;
         if(_loc2_ !== param1)
         {
            this._1178662794item14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item14",_loc2_,param1));
         }
      }
      
      public function set item18(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662790item18;
         if(_loc2_ !== param1)
         {
            this._1178662790item18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item18",_loc2_,param1));
         }
      }
      
      public function set item15(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662793item15;
         if(_loc2_ !== param1)
         {
            this._1178662793item15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item15",_loc2_,param1));
         }
      }
      
      public function set item19(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662789item19;
         if(_loc2_ !== param1)
         {
            this._1178662789item19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item19",_loc2_,param1));
         }
      }
      
      public function __img7_A_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"A");
      }
      
      public function set lab2_B_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2006771591lab2_B_0;
         if(_loc2_ !== param1)
         {
            this._2006771591lab2_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab2_B_0",_loc2_,param1));
         }
      }
      
      public function set item16(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662792item16;
         if(_loc2_ !== param1)
         {
            this._1178662792item16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab1_A() : Label
      {
         return this._2012837665yLab1_A;
      }
      
      public function __btn7_A_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("A",7);
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_D_0() : Image
      {
         return this._732360438img7_D_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_F_0() : Image
      {
         return this._733282037img6_F_0;
      }
      
      public function OnGetWorldCupGoldPoint(param1:Object) : void
      {
         if(param1)
         {
            if(param1)
            {
               _worldCupFlag = param1;
               _core.player.worldCupGoldPoint = Number(param1.sc_gold);
            }
            else
            {
               _worldCupFlag = {};
            }
            initCharAugurGoldInfoCanvas();
         }
      }
      
      private function showChangePanel() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_WORLD_CUP_CHANGE);
         if(_loc1_)
         {
            _loc1_.initWorldCupChangePanel();
         }
      }
      
      public function set lab7_H_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002148219lab7_H_1;
         if(_loc2_ !== param1)
         {
            this._2002148219lab7_H_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_H_1",_loc2_,param1));
         }
      }
      
      public function set item12(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662796item12;
         if(_loc2_ !== param1)
         {
            this._1178662796item12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item12",_loc2_,param1));
         }
      }
      
      private function _WorldCupPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn10 = _loc1_;
         _loc1_.dataField = "trueCity";
         _loc1_.width = 105;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn10",_WorldCupPanel_DataGridColumn10);
         return _loc1_;
      }
      
      public function set img6_H_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733280115img6_H_0;
         if(_loc2_ !== param1)
         {
            this._733280115img6_H_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_H_0",_loc2_,param1));
         }
      }
      
      private function initShopCanvas() : void
      {
         _initShopCanvas();
      }
      
      public function set img7_F_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732358516img7_F_0;
         if(_loc2_ !== param1)
         {
            this._732358516img7_F_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_F_0",_loc2_,param1));
         }
      }
      
      public function __btnLastPage_buttonDown(param1:FlexEvent) : void
      {
         gotUpOrBack(false);
      }
      
      public function set item20(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662767item20;
         if(_loc2_ !== param1)
         {
            this._1178662767item20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_D_1() : Image
      {
         return this._732360437img7_D_1;
      }
      
      public function set item21(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662766item21;
         if(_loc2_ !== param1)
         {
            this._1178662766item21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item21",_loc2_,param1));
         }
      }
      
      public function set item22(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662765item22;
         if(_loc2_ !== param1)
         {
            this._1178662765item22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item22",_loc2_,param1));
         }
      }
      
      public function set item23(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662764item23;
         if(_loc2_ !== param1)
         {
            this._1178662764item23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item23",_loc2_,param1));
         }
      }
      
      public function set img7_F_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732358515img7_F_1;
         if(_loc2_ !== param1)
         {
            this._732358515img7_F_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_F_1",_loc2_,param1));
         }
      }
      
      public function set item25(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662762item25;
         if(_loc2_ !== param1)
         {
            this._1178662762item25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item25",_loc2_,param1));
         }
      }
      
      public function set item26(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662761item26;
         if(_loc2_ !== param1)
         {
            this._1178662761item26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item26",_loc2_,param1));
         }
      }
      
      public function set item27(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662760item27;
         if(_loc2_ !== param1)
         {
            this._1178662760item27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item27",_loc2_,param1));
         }
      }
      
      public function set item24(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662763item24;
         if(_loc2_ !== param1)
         {
            this._1178662763item24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item24",_loc2_,param1));
         }
      }
      
      public function set item28(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662759item28;
         if(_loc2_ !== param1)
         {
            this._1178662759item28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item28",_loc2_,param1));
         }
      }
      
      public function __img7_D_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"D");
      }
      
      public function set lab7_H_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002148220lab7_H_0;
         if(_loc2_ !== param1)
         {
            this._2002148220lab7_H_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_H_0",_loc2_,param1));
         }
      }
      
      public function __img6_F_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"F");
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_E_0() : Label
      {
         return this._2002151103lab7_E_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnNextPageShopGold() : Button
      {
         return this._564183348btnNextPageShopGold;
      }
      
      public function __btnNextPageShop_buttonDown(param1:FlexEvent) : void
      {
         turnPage(true,1);
      }
      
      public function __btn7_F_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("F",7);
      }
      
      public function set item29(param1:WorldCupShopSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1178662758item29;
         if(_loc2_ !== param1)
         {
            this._1178662758item29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item29",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_G_0() : Label
      {
         return this._2003072702lab6_G_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_E_1() : Label
      {
         return this._2002151102lab7_E_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get xz1() : WorldCupCanvas
      {
         return this._119151xz1;
      }
      
      public function __img5_C_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,5,"C");
      }
      
      [Bindable(event="propertyChange")]
      public function get xz3() : WorldCupCanvas
      {
         return this._119153xz3;
      }
      
      [Bindable(event="propertyChange")]
      public function get xz4() : WorldCupCanvas
      {
         return this._119154xz4;
      }
      
      [Bindable(event="propertyChange")]
      public function get xz5() : WorldCupCanvas
      {
         return this._119155xz5;
      }
      
      [Bindable(event="propertyChange")]
      public function get xz6() : WorldCupCanvas
      {
         return this._119156xz6;
      }
      
      [Bindable(event="propertyChange")]
      public function get xz7() : WorldCupCanvas
      {
         return this._119157xz7;
      }
      
      [Bindable(event="propertyChange")]
      public function get xz8() : WorldCupCanvas
      {
         return this._119158xz8;
      }
      
      public function set lab2_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2006772552lab2_A_0;
         if(_loc2_ !== param1)
         {
            this._2006772552lab2_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab2_A_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xz2() : WorldCupCanvas
      {
         return this._119152xz2;
      }
      
      public function set btnLastPage(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._320271553btnLastPage;
         if(_loc2_ !== param1)
         {
            this._320271553btnLastPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLastPage",_loc2_,param1));
         }
      }
      
      public function set img1_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._737904447img1_A_0;
         if(_loc2_ !== param1)
         {
            this._737904447img1_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img1_A_0",_loc2_,param1));
         }
      }
      
      public function set lab7_G_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002149181lab7_G_0;
         if(_loc2_ !== param1)
         {
            this._2002149181lab7_G_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_G_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_B_0() : Image
      {
         return this._732362360img7_B_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_D_0() : Image
      {
         return this._733283959img6_D_0;
      }
      
      public function set img7_E_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732359477img7_E_0;
         if(_loc2_ !== param1)
         {
            this._732359477img7_E_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_E_0",_loc2_,param1));
         }
      }
      
      public function set lab7_G_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002149180lab7_G_1;
         if(_loc2_ !== param1)
         {
            this._2002149180lab7_G_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_G_1",_loc2_,param1));
         }
      }
      
      public function set img6_G_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733281076img6_G_0;
         if(_loc2_ !== param1)
         {
            this._733281076img6_G_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_G_0",_loc2_,param1));
         }
      }
      
      public function set img7_E_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732359476img7_E_1;
         if(_loc2_ !== param1)
         {
            this._732359476img7_E_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_E_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_B_1() : Image
      {
         return this._732362359img7_B_1;
      }
      
      public function ___WorldCupPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         worldCupTimeAward();
      }
      
      public function set title1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._873453351title1;
         if(_loc2_ !== param1)
         {
            this._873453351title1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title1",_loc2_,param1));
         }
      }
      
      private function _WorldCupPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "myCity";
         _loc1_.width = 105;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn9",_WorldCupPanel_DataGridColumn9);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_C_0() : Label
      {
         return this._2002153025lab7_C_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_E_0() : Label
      {
         return this._2003074624lab6_E_0;
      }
      
      public function set yLab1_A(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012837665yLab1_A;
         if(_loc2_ !== param1)
         {
            this._2012837665yLab1_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab1_A",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_C_1() : Label
      {
         return this._2002153024lab7_C_1;
      }
      
      private function update32thCanvas() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(Boolean(WORLD_CUP_GROUP) && Boolean(WORLD_CUP_GROUP[8]))
         {
            for(_loc1_ in WORLD_CUP_GROUP[8])
            {
               if(WORLD_CUP_GROUP[8][_loc1_])
               {
                  _loc2_ = "xz1";
                  if(_groupCanvasId[_loc1_])
                  {
                     _loc2_ = _groupCanvasId[_loc1_];
                     this[_loc2_].group = _loc1_;
                     this[_loc2_].teamInfo = WORLD_CUP_GROUP[8][_loc1_];
                     this[_loc2_].teamChar = Boolean(_charData) && Boolean(_charData[8]) && Boolean(_charData[8][_loc1_]) ? _charData[8][_loc1_] : {};
                     _loc3_ = "|";
                     if(WORLD_CUP_GROUP[7])
                     {
                        _loc4_ = WORLD_CUP_GROUP[8][_loc1_].split("|");
                        _loc5_ = 0;
                        while(_loc5_ < _loc4_.length)
                        {
                           if(GamePredef.WORLD_CUP_INFO[_loc4_[_loc5_]])
                           {
                              for(_loc6_ in WORLD_CUP_GROUP[7])
                              {
                                 if(WORLD_CUP_GROUP[7][_loc6_].indexOf("|" + _loc4_[_loc5_] + "|") >= 0)
                                 {
                                    _loc3_ = _loc3_ + _loc4_[_loc5_] + "|";
                                 }
                              }
                           }
                           _loc5_++;
                        }
                     }
                     this[_loc2_].teamRealy = _loc3_ != "|" ? _loc3_ : null;
                     this[_loc2_].updateInfo();
                  }
               }
            }
         }
      }
      
      private function getWorldCupFreePoint() : void
      {
         _core.remote.call("getWorldCupFreePoint",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get imgg_1_1() : Image
      {
         return this._688049688imgg_1_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgg_1_2() : Image
      {
         return this._688049687imgg_1_2;
      }
      
      public function __img7_H_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"H");
      }
      
      public function set lab7_F_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002150142lab7_F_0;
         if(_loc2_ !== param1)
         {
            this._2002150142lab7_F_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_F_0",_loc2_,param1));
         }
      }
      
      public function __btn6_A_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("A",6);
      }
      
      public function set lab6_H_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003071741lab6_H_0;
         if(_loc2_ !== param1)
         {
            this._2003071741lab6_H_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_H_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_B_0() : Image
      {
         return this._733285881img6_B_0;
      }
      
      public function set lab7_F_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002150141lab7_F_1;
         if(_loc2_ !== param1)
         {
            this._2002150141lab7_F_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_F_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img5_D_0() : Image
      {
         return this._734207480img5_D_0;
      }
      
      public function set img7_D_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732360438img7_D_0;
         if(_loc2_ !== param1)
         {
            this._732360438img7_D_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_D_0",_loc2_,param1));
         }
      }
      
      public function set img6_F_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733282037img6_F_0;
         if(_loc2_ !== param1)
         {
            this._733282037img6_F_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_F_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labg_2_2() : Image
      {
         return this._1957840352labg_2_2;
      }
      
      public function set img7_D_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732360437img7_D_1;
         if(_loc2_ !== param1)
         {
            this._732360437img7_D_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_D_1",_loc2_,param1));
         }
      }
      
      public function __img2_B_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,2,"B");
      }
      
      private function _WorldCupPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WORLD_CUP_PANEL[0];
         _loc1_ = Language.WORLD_CUP_PANEL[7];
         _loc1_ = Language.WORLD_CUP_PANEL[8];
         _loc1_ = Language.WORLD_CUP_PANEL[9];
         _loc1_ = Language.WORLD_CUP_PANEL[10];
         _loc1_ = Language.WORLD_CUP_PANEL[35];
         _loc1_ = Language.WORLD_CUP_PANEL[36];
         _loc1_ = Language.WORLD_CUP_PANEL[53];
         _loc1_ = Language.WORLD_CUP_PANEL[50];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000471"));
         _loc1_ = Language.WORLD_CUP_PANEL[21];
         _loc1_ = Language.WORLD_CUP_PANEL[50];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000397"));
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000398"));
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000431"));
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[11];
         _loc1_ = Language.WORLD_CUP_PANEL[28];
         _loc1_ = Language.WORLD_CUP_PANEL[15];
         _loc1_ = Language.WORLD_CUP_PANEL[16];
         _loc1_ = Language.WORLD_CUP_PANEL[17];
         _loc1_ = Language.WORLD_CUP_PANEL[18];
         _loc1_ = Language.WORLD_CUP_PANEL[19];
         _loc1_ = Language.WORLD_CUP_PANEL[20];
         _loc1_ = Language.WORLD_CUP_PANEL[22];
         _loc1_ = _myTeamSc;
         _loc1_ = Language.WORLD_CUP_PANEL[22];
         _loc1_ = Language.WORLD_CUP_PANEL[23];
         _loc1_ = _myOutSc;
         _loc1_ = Language.WORLD_CUP_PANEL[37] + "" + _core.player.worldCupPoint;
         _loc1_ = Language.WORLD_CUP_PANEL[38];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000471"));
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000470"));
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.WORLD_CUP_PANEL[39];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000471"));
         _loc1_ = Language.WORLD_CUP_PANEL[40];
         _loc1_ = Language.WORLD_CUP_PANEL[41];
         _loc1_ = Language.WORLD_CUP_PANEL[42];
         _loc1_ = Language.WORLD_CUP_PANEL[43];
         _loc1_ = Language.WORLD_CUP_PANEL[44];
         _loc1_ = Language.WORLD_CUP_PANEL[54];
         _loc1_ = Language.WORLD_CUP_PANEL[45];
         _loc1_ = Language.WORLD_CUP_PANEL[46];
         _loc1_ = Language.WORLD_CUP_PANEL[47] + "" + _core.player.worldCupGoldPoint;
         _loc1_ = Language.WORLD_CUP_PANEL[48];
         _loc1_ = Language.WORLD_CUP_PANEL[49];
         _loc1_ = Language.WORLD_CUP_PANEL[50];
         _loc1_ = Language.WORLD_CUP_PANEL[61];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = ResManager.ICON_WORLD_CUP_GOLD;
         _loc1_ = _core.player.worldCupGoldPoint;
         _loc1_ = Language.WORLD_CUP_PANEL[55];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = ResManager.ICON_WORLD_CUP;
         _loc1_ = _core.player.worldCupPoint;
         _loc1_ = Language.WORLD_CUP_PANEL[56];
         _loc1_ = [GamePredef.FILTER_TITLE];
      }
      
      public function onGetWorldCupRank(param1:Array, param2:String) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:ArrayCollection = null;
         var _loc7_:* = undefined;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:* = undefined;
         var _loc14_:String = null;
         if(initialized)
         {
            _rankVersion = param2;
            _loc3_ = 0;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_ = new ArrayCollection();
            _loc7_ = 0;
            while(_loc7_ < param1.length)
            {
               _loc8_ = {};
               _loc9_ = param1[_loc7_].ci;
               _loc5_++;
               if(Number(param1[_loc7_].t) != _loc4_)
               {
                  _loc4_ = Number(param1[_loc7_].t);
                  _loc3_ = _loc5_;
               }
               _loc8_["rank"] = _loc3_;
               _loc8_["name"] = param1[_loc7_]["n"];
               _loc8_["sid"] = ToolKit.getServerName(param1[_loc7_]["sid"]);
               _loc10_ = 0;
               _loc11_ = 0;
               _loc12_ = 1;
               for(_loc13_ in _loc9_)
               {
                  if(_loc13_ != "t")
                  {
                     if(String(_loc13_) == "8")
                     {
                        _loc10_ = Number(_loc9_[_loc13_]);
                     }
                     else
                     {
                        if(String(_loc13_) == "3")
                        {
                           if(Boolean(_loc9_[_loc13_]) && ToolKit.isBigThan(_loc9_[_loc13_],0))
                           {
                              _loc12_ = 3;
                           }
                           _loc12_ = 2;
                        }
                        _loc11_ = ToolKit.add(_loc11_,_loc9_[_loc13_]);
                     }
                  }
               }
               _loc8_["osc"] = _loc11_;
               _loc8_["tsc"] = _loc10_;
               _loc14_ = "";
               if(_loc12_ == 2)
               {
                  _loc14_ = Language.WORLD_CUP_PANEL[32];
               }
               else if(_loc12_ == 3)
               {
                  _loc14_ = Language.WORLD_CUP_PANEL[31];
               }
               _loc8_["g"] = _loc14_;
               _loc6_.addItem(_loc8_);
               _loc7_++;
            }
            rankGrid.dataProvider = _loc6_;
         }
      }
      
      private function _WorldCupPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "vs";
         _loc1_.width = 190;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn7",_WorldCupPanel_DataGridColumn7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get labg_2_1() : Image
      {
         return this._1957840353labg_2_1;
      }
      
      public function __img7_C_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"C");
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_A_0() : Label
      {
         return this._2002154947lab7_A_0;
      }
      
      public function __img6_E_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"E");
      }
      
      [Bindable(event="propertyChange")]
      public function get endTime() : Label
      {
         return this._1607243192endTime;
      }
      
      private function replaceAll(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         bangSele(1);
      }
      
      public function ___WorldCupPanel_DelayButton20_click(param1:MouseEvent) : void
      {
         bangSele(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_C_0() : Label
      {
         return this._2003076546lab6_C_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_A_1() : Label
      {
         return this._2002154946lab7_A_1;
      }
      
      public function __img5_B_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,5,"B");
      }
      
      public function set lab1_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2007696073lab1_A_0;
         if(_loc2_ !== param1)
         {
            this._2007696073lab1_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab1_A_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btng_1() : Button
      {
         return this._1378803075btng_1;
      }
      
      public function set lab7_E_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002151103lab7_E_0;
         if(_loc2_ !== param1)
         {
            this._2002151103lab7_E_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_E_0",_loc2_,param1));
         }
      }
      
      public function set lab6_G_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003072702lab6_G_0;
         if(_loc2_ !== param1)
         {
            this._2003072702lab6_G_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_G_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btng_2() : Button
      {
         return this._1378803074btng_2;
      }
      
      [Bindable(event="propertyChange")]
      public function get img5_B_0() : Image
      {
         return this._734209402img5_B_0;
      }
      
      public function set lab7_E_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002151102lab7_E_1;
         if(_loc2_ !== param1)
         {
            this._2002151102lab7_E_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_E_1",_loc2_,param1));
         }
      }
      
      public function set img6_E_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733282998img6_E_0;
         if(_loc2_ !== param1)
         {
            this._733282998img6_E_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_E_0",_loc2_,param1));
         }
      }
      
      public function set btnNextPageShopGold(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._564183348btnNextPageShopGold;
         if(_loc2_ !== param1)
         {
            this._564183348btnNextPageShopGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnNextPageShopGold",_loc2_,param1));
         }
      }
      
      public function set img7_C_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732361399img7_C_0;
         if(_loc2_ !== param1)
         {
            this._732361399img7_C_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_C_0",_loc2_,param1));
         }
      }
      
      public function __bangBtn6_click(param1:MouseEvent) : void
      {
         bangSele(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6_A() : DelayButton
      {
         return this._1378850148btn6_A;
      }
      
      private function initCharAugurGoldInfoCanvas() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:* = 7;
         while(_loc2_ >= 1)
         {
            if(jieduan[_loc2_])
            {
               if(_worldCupFlag[_loc2_])
               {
                  for(_loc3_ in _worldCupFlag[_loc2_])
                  {
                     _loc4_ = new Object();
                     _loc5_ = checkIsGetResult(_loc2_,_loc3_);
                     if(_loc5_)
                     {
                        _loc4_["vs"] = GamePredef.WORLD_CUP_INFO[_loc5_["vs"][0]].name + " vs " + GamePredef.WORLD_CUP_INFO[_loc5_["vs"][1]].name;
                        _loc4_["state"] = jieduan[_loc2_];
                        _loc4_["myCity"] = GamePredef.WORLD_CUP_INFO[_loc3_].name;
                        switch(Number(_loc5_["flag"]))
                        {
                           case 1:
                              _loc4_["trueCity"] = _loc5_["vs"][0] == _loc3_ ? GamePredef.WORLD_CUP_INFO[_loc5_["vs"][0]].name : GamePredef.WORLD_CUP_INFO[_loc5_["vs"][1]].name;
                              _loc4_["res"] = Language.WORLD_CUP_PANEL[31];
                              break;
                           case 2:
                              _loc4_["trueCity"] = _loc5_["vs"][0] == _loc3_ ? GamePredef.WORLD_CUP_INFO[_loc5_["vs"][1]].name : GamePredef.WORLD_CUP_INFO[_loc5_["vs"][0]].name;
                              _loc4_["res"] = Language.WORLD_CUP_PANEL[32];
                              break;
                           case 3:
                              _loc4_["trueCity"] = Language.WORLD_CUP_PANEL[33];
                              _loc4_["res"] = Language.WORLD_CUP_PANEL[33];
                        }
                        _loc4_["odds"] = WORLD_CUP_ODDS[_loc2_][_loc3_];
                        _loc4_["goldCost"] = _worldCupFlag[_loc2_][_loc3_];
                        _loc4_["point"] = Boolean(_worldCupFlag[_loc2_ * 10]) && Boolean(_worldCupFlag[_loc2_ * 10][_loc3_]) ? _worldCupFlag[_loc2_ * 10][_loc3_] : 0;
                        _loc1_.addItem(_loc4_);
                     }
                  }
               }
            }
            _loc2_--;
         }
         ginfo_grid.dataProvider = _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6_C() : DelayButton
      {
         return this._1378850146btn6_C;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6_D() : DelayButton
      {
         return this._1378850145btn6_D;
      }
      
      public function set img7_C_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732361398img7_C_1;
         if(_loc2_ !== param1)
         {
            this._732361398img7_C_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_C_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6_B() : DelayButton
      {
         return this._1378850147btn6_B;
      }
      
      [Bindable(event="propertyChange")]
      public function get vsBang() : ViewStack
      {
         return this._808459627vsBang;
      }
      
      private function _WorldCupPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "osc";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn5",_WorldCupPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _myOutSc() : Number
      {
         return this._442404173_myOutSc;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab5_C_0() : Label
      {
         return this._2004000067lab5_C_0;
      }
      
      public function ___WorldCupPanel_DelayButton19_click(param1:MouseEvent) : void
      {
         getWorldCupFreePoint();
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_A_0() : Label
      {
         return this._2003078468lab6_A_0;
      }
      
      public function __btn7_D_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("D",7);
      }
      
      public function set xz1(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119151xz1;
         if(_loc2_ !== param1)
         {
            this._119151xz1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz1",_loc2_,param1));
         }
      }
      
      public function set xz2(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119152xz2;
         if(_loc2_ !== param1)
         {
            this._119152xz2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz2",_loc2_,param1));
         }
      }
      
      private function checkIsGetResult(param1:Number, param2:String) : Object
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc3_:String = "";
         for(_loc4_ in WORLD_CUP_GROUP[param1])
         {
            if(WORLD_CUP_GROUP[param1][_loc4_].indexOf("|" + param2 + "|") >= 0)
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         _loc5_ = ToolKit.minus(param1,1);
         if(!WORLD_CUP_GROUP[_loc5_])
         {
            return {
               "flag":3,
               "vs":_vsObject[param1][param2]
            };
         }
         var _loc6_:String = _loc3_;
         if(param1 < 7)
         {
            _loc6_ = WORLD_CUP_ADD[_loc3_];
         }
         if(Boolean(WORLD_CUP_GROUP[_loc5_]) && Boolean(WORLD_CUP_GROUP[_loc5_][_loc6_]))
         {
            if(WORLD_CUP_GROUP[_loc5_][_loc6_].indexOf("|" + param2 + "|") >= 0)
            {
               return {
                  "flag":1,
                  "vs":_vsObject[param1][param2]
               };
            }
            return {
               "flag":2,
               "vs":_vsObject[param1][param2]
            };
         }
         return {
            "flag":3,
            "vs":_vsObject[param1][param2]
         };
      }
      
      public function set xz3(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119153xz3;
         if(_loc2_ !== param1)
         {
            this._119153xz3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz3",_loc2_,param1));
         }
      }
      
      public function set xz4(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119154xz4;
         if(_loc2_ !== param1)
         {
            this._119154xz4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz4",_loc2_,param1));
         }
      }
      
      public function set xz5(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119155xz5;
         if(_loc2_ !== param1)
         {
            this._119155xz5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz5",_loc2_,param1));
         }
      }
      
      public function set xz6(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119156xz6;
         if(_loc2_ !== param1)
         {
            this._119156xz6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz6",_loc2_,param1));
         }
      }
      
      public function set xz7(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119157xz7;
         if(_loc2_ !== param1)
         {
            this._119157xz7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz7",_loc2_,param1));
         }
      }
      
      public function __img7_G_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"G");
      }
      
      public function set xz8(param1:WorldCupCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119158xz8;
         if(_loc2_ !== param1)
         {
            this._119158xz8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xz8",_loc2_,param1));
         }
      }
      
      public function sortFun(param1:Object, param2:Object) : int
      {
         if(Number(param1.pNum1) > Number(param2.pNum1))
         {
            return -1;
         }
         if(Number(param1.pNum1) == Number(param2.pNum1))
         {
            return 0;
         }
         return 1;
      }
      
      public function set lab6_F_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003073663lab6_F_0;
         if(_loc2_ !== param1)
         {
            this._2003073663lab6_F_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_F_0",_loc2_,param1));
         }
      }
      
      public function __btn5_A_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("A",5);
      }
      
      [Bindable(event="propertyChange")]
      public function get img4_B_0() : Image
      {
         return this._735132923img4_B_0;
      }
      
      public function set lab7_D_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002152064lab7_D_0;
         if(_loc2_ !== param1)
         {
            this._2002152064lab7_D_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_D_0",_loc2_,param1));
         }
      }
      
      public function set lab7_D_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002152063lab7_D_1;
         if(_loc2_ !== param1)
         {
            this._2002152063lab7_D_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_D_1",_loc2_,param1));
         }
      }
      
      public function set img6_D_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733283959img6_D_0;
         if(_loc2_ !== param1)
         {
            this._733283959img6_D_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_D_0",_loc2_,param1));
         }
      }
      
      public function __btnNextPage_buttonDown(param1:FlexEvent) : void
      {
         gotUpOrBack(true);
      }
      
      public function set img7_B_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732362360img7_B_0;
         if(_loc2_ !== param1)
         {
            this._732362360img7_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_B_0",_loc2_,param1));
         }
      }
      
      public function set img7_B_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732362359img7_B_1;
         if(_loc2_ !== param1)
         {
            this._732362359img7_B_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_B_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4_A() : DelayButton
      {
         return this._1378852070btn4_A;
      }
      
      public function set rankGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._255677842rankGrid;
         if(_loc2_ !== param1)
         {
            this._255677842rankGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankGrid",_loc2_,param1));
         }
      }
      
      private function _WorldCupPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "sid";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn3",_WorldCupPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function __img7_B_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"B");
      }
      
      public function onGetWorldCupShopLimitDataTcn(param1:Object) : void
      {
         if(initialized)
         {
            if(param1)
            {
               WORLD_CUP_LIMIT = param1;
               _initShopCanvas();
            }
         }
      }
      
      public function __img6_D_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"D");
      }
      
      public function __img2_A_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,2,"A");
      }
      
      [Bindable(event="propertyChange")]
      public function get lab5_A_0() : Label
      {
         return this._2004001989lab5_A_0;
      }
      
      public function ___WorldCupPanel_DelayButton2_click(param1:MouseEvent) : void
      {
         tradeAward();
      }
      
      public function set imgg_2_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._688048727imgg_2_1;
         if(_loc2_ !== param1)
         {
            this._688048727imgg_2_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgg_2_1",_loc2_,param1));
         }
      }
      
      public function set imgg_2_2(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._688048726imgg_2_2;
         if(_loc2_ !== param1)
         {
            this._688048726imgg_2_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgg_2_2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLastPageShop() : Button
      {
         return this._289667927btnLastPageShop;
      }
      
      public function set labg_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1110415956labg_1;
         if(_loc2_ !== param1)
         {
            this._1110415956labg_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labg_1",_loc2_,param1));
         }
      }
      
      public function set labg_2(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1110415955labg_2;
         if(_loc2_ !== param1)
         {
            this._1110415955labg_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labg_2",_loc2_,param1));
         }
      }
      
      public function __img5_A_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,5,"A");
      }
      
      public function set lab7_C_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002153025lab7_C_0;
         if(_loc2_ !== param1)
         {
            this._2002153025lab7_C_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_C_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get introCon() : IntroText
      {
         return this._582286198introCon;
      }
      
      private function calculateWorldCupGroupOnKnockOut(param1:Number, param2:Number, param3:String) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(!WORLD_CUP_GROUP[param2] || !WORLD_CUP_GROUP[param2][param3] || !WORLD_CUP_REQUIRE[param2] || !WORLD_CUP_REQUIRE[param2]["ft"][param3] || param2 == 3 || param2 == 1)
         {
            return;
         }
         var _loc4_:* = new Date().getTime();
         if(Number(WORLD_CUP_GROUP[param2][param3]) <= _loc4_)
         {
            return;
         }
         if(!_allTeamArr[param2] || !_allTeamArr[param2][param3] || !_allTeamArr[param2][param3][param1])
         {
            return;
         }
         if(param2 < 7 && !this["btn" + param2 + "_" + WORLD_CUP_ADD[param3]].visible)
         {
            return;
         }
         if(param2 == 7 && !this["btn" + param2 + "_" + param3].visible)
         {
            return;
         }
         if(ToolKit.minus(_loc4_,_click) <= 700 && _clickId == param1 && _clickgState == param2 && _clickgGroup == param3)
         {
            _loc5_ = param3;
            if(param2 < 7)
            {
               _loc5_ = WORLD_CUP_ADD[param3];
            }
            _loc6_ = ToolKit.minus(param2,1);
            this["img" + _loc6_ + "_" + _loc5_ + "_0"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_allTeamArr[param2][param3][param1]].icon));
            this["img" + _loc6_ + "_" + _loc5_ + "_0"].visible = true;
            this["lab" + _loc6_ + "_" + _loc5_ + "_0"].text = GamePredef.WORLD_CUP_INFO[_allTeamArr[param2][param3][param1]].name;
            this["lab" + _loc6_ + "_" + _loc5_ + "_0"].visible = true;
            if(!_choseTeam[_loc6_])
            {
               _choseTeam[_loc6_] = {};
            }
            _choseTeam[_loc6_][_loc5_] = {};
            _choseTeam[_loc6_][_loc5_][_allTeamArr[param2][param3][param1]] = 1;
         }
         else
         {
            _click = _loc4_;
            _clickId = param1;
            _clickgState = param2;
            _clickgGroup = param3;
         }
      }
      
      public function set lab6_E_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003074624lab6_E_0;
         if(_loc2_ !== param1)
         {
            this._2003074624lab6_E_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_E_0",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WorldCupPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WorldCupPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WorldCupPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      public function set img7_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732363321img7_A_0;
         if(_loc2_ !== param1)
         {
            this._732363321img7_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_A_0",_loc2_,param1));
         }
      }
      
      public function set lab7_C_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002153024lab7_C_1;
         if(_loc2_ !== param1)
         {
            this._2002153024lab7_C_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_C_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_B() : Label
      {
         return this._2012832859yLab6_B;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_C() : Label
      {
         return this._2012832858yLab6_C;
      }
      
      public function set img6_C_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733284920img6_C_0;
         if(_loc2_ !== param1)
         {
            this._733284920img6_C_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_C_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_F() : Label
      {
         return this._2012832855yLab6_F;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_G() : Label
      {
         return this._2012832854yLab6_G;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_A() : Label
      {
         return this._2012832860yLab6_A;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn5() : BasicGlowButton
      {
         return this._1863324751bangBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn4() : BasicGlowButton
      {
         return this._1863324752bangBtn4;
      }
      
      [Bindable(event="propertyChange")]
      private function get _myTeamSc() : Number
      {
         return this._701799496_myTeamSc;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn6() : BasicGlowButton
      {
         return this._1863324750bangBtn6;
      }
      
      private function _WorldCupPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "rank";
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn1",_WorldCupPanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_D() : Label
      {
         return this._2012832857yLab6_D;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_E() : Label
      {
         return this._2012832856yLab6_E;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab4_A_0() : Label
      {
         return this._2004925510lab4_A_0;
      }
      
      public function ___WorldCupPanel_Button2_click(param1:MouseEvent) : void
      {
         tradeAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2_A() : DelayButton
      {
         return this._1378853992btn2_A;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn3() : BasicGlowButton
      {
         return this._1863324753bangBtn3;
      }
      
      public function __btn6_D_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("D",6);
      }
      
      public function set img7_A_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._732363320img7_A_1;
         if(_loc2_ !== param1)
         {
            this._732363320img7_A_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7_A_1",_loc2_,param1));
         }
      }
      
      public function set imgg_1_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._688049688imgg_1_1;
         if(_loc2_ !== param1)
         {
            this._688049688imgg_1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgg_1_1",_loc2_,param1));
         }
      }
      
      public function set imgg_1_2(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._688049687imgg_1_2;
         if(_loc2_ !== param1)
         {
            this._688049687imgg_1_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgg_1_2",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(_core.player.level < 50)
         {
            return;
         }
         _core.remote.call("initWorldCupPanelData",null,_version);
         _core.remote.call("getWorldCupRank",null,_rankVersion);
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab6_H() : Label
      {
         return this._2012832853yLab6_H;
      }
      
      public function __img7_F_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"F");
      }
      
      public function set lab7_B_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002153986lab7_B_0;
         if(_loc2_ !== param1)
         {
            this._2002153986lab7_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_B_0",_loc2_,param1));
         }
      }
      
      public function set lab6_D_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003075585lab6_D_0;
         if(_loc2_ !== param1)
         {
            this._2003075585lab6_D_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_D_0",_loc2_,param1));
         }
      }
      
      public function __btn4_A_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("A",4);
      }
      
      public function set lab7_B_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002153985lab7_B_1;
         if(_loc2_ !== param1)
         {
            this._2002153985lab7_B_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_B_1",_loc2_,param1));
         }
      }
      
      public function ___WorldCupPanel_Button7_click(param1:MouseEvent) : void
      {
         tradeAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get img2_B_0() : Image
      {
         return this._736979965img2_B_0;
      }
      
      public function set img6_B_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733285881img6_B_0;
         if(_loc2_ !== param1)
         {
            this._733285881img6_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_B_0",_loc2_,param1));
         }
      }
      
      public function onInitWorldCupPanelData(param1:Object, param2:Object, param3:Object, param4:Object, param5:Object, param6:Object, param7:String, param8:Object) : void
      {
         var _loc9_:* = undefined;
         if(initialized)
         {
            if(param5)
            {
               WORLD_CUP_GROUP = param5;
               initVsObject();
            }
            if(param6)
            {
               WORLD_CUP_REQUIRE = param6;
            }
            if(param2)
            {
               WORLD_CUP_ODDS = param2;
            }
            if(param1)
            {
               WORLD_CUP_TIME_GOLD_LIMIT = param1;
            }
            if(param8)
            {
               _worldCupFlag = param8;
            }
            else
            {
               _worldCupFlag = {};
            }
            _myTeamSc = 0;
            _myOutSc = 0;
            if(param4)
            {
               for(_loc9_ in param4)
               {
                  if(String(_loc9_) == "8")
                  {
                     _myTeamSc = Number(param4[_loc9_]);
                  }
                  else if(String(_loc9_) != "t")
                  {
                     _myOutSc += Number(param4[_loc9_]);
                  }
               }
            }
            _version = param7;
            _charData = param3;
            if(!param3)
            {
               _charData = {};
            }
         }
         update32thCanvas();
         updateKnockOutCanvas();
         initCharAugurGoldInfoCanvas();
         initGoldScheduleObject();
         initGoldScheduleCanvas();
      }
      
      public function set img5_D_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._734207480img5_D_0;
         if(_loc2_ !== param1)
         {
            this._734207480img5_D_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img5_D_0",_loc2_,param1));
         }
      }
      
      public function __bangBtn4_click(param1:MouseEvent) : void
      {
         bangSele(4);
      }
      
      public function ___WorldCupPanel_DelayButton23_click(param1:MouseEvent) : void
      {
         showChangePanel();
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab4_B() : Label
      {
         return this._2012834781yLab4_B;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab4_A() : Label
      {
         return this._2012834782yLab4_A;
      }
      
      public function __img7_A_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"A");
      }
      
      public function __img6_C_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"C");
      }
      
      [Bindable(event="propertyChange")]
      public function get lab3_A_0() : Label
      {
         return this._2005849031lab3_A_0;
      }
      
      private function _WorldCupPanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn13 = _loc1_;
         _loc1_.dataField = "goldCost";
         _loc1_.width = 110;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn13",_WorldCupPanel_DataGridColumn13);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_G_0() : Image
      {
         return this._732357555img7_G_0;
      }
      
      public function __btn7_B_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("B",7);
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_G_1() : Image
      {
         return this._732357554img7_G_1;
      }
      
      public function set labg_2_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1957840353labg_2_1;
         if(_loc2_ !== param1)
         {
            this._1957840353labg_2_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labg_2_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLastPageShopGold() : Button
      {
         return this._1917162409btnLastPageShopGold;
      }
      
      public function set labg_2_2(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1957840352labg_2_2;
         if(_loc2_ !== param1)
         {
            this._1957840352labg_2_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labg_2_2",_loc2_,param1));
         }
      }
      
      public function set lab7_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002154947lab7_A_0;
         if(_loc2_ !== param1)
         {
            this._2002154947lab7_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_A_0",_loc2_,param1));
         }
      }
      
      public function set lab6_C_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003076546lab6_C_0;
         if(_loc2_ !== param1)
         {
            this._2003076546lab6_C_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_C_0",_loc2_,param1));
         }
      }
      
      public function set lab7_A_1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2002154946lab7_A_1;
         if(_loc2_ !== param1)
         {
            this._2002154946lab7_A_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7_A_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_H_0() : Label
      {
         return this._2002148220lab7_H_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_H_1() : Label
      {
         return this._2002148219lab7_H_1;
      }
      
      public function __btn7_G_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("G",7);
      }
      
      public function set img5_C_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._734208441img5_C_0;
         if(_loc2_ !== param1)
         {
            this._734208441img5_C_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img5_C_0",_loc2_,param1));
         }
      }
      
      public function set img6_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._733286842img6_A_0;
         if(_loc2_ !== param1)
         {
            this._733286842img6_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6_A_0",_loc2_,param1));
         }
      }
      
      public function set endTime(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1607243192endTime;
         if(_loc2_ !== param1)
         {
            this._1607243192endTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endTime",_loc2_,param1));
         }
      }
      
      private function getServerTime() : Number
      {
         return new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet;
      }
      
      private function _WorldCupPanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn11 = _loc1_;
         _loc1_.dataField = "res";
         _loc1_.width = 70;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn11",_WorldCupPanel_DataGridColumn11);
         return _loc1_;
      }
      
      public function set btn7_A(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849187btn7_A;
         if(_loc2_ !== param1)
         {
            this._1378849187btn7_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_A",_loc2_,param1));
         }
      }
      
      public function set btn7_B(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849186btn7_B;
         if(_loc2_ !== param1)
         {
            this._1378849186btn7_B = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_B",_loc2_,param1));
         }
      }
      
      private function clearnGroupImage() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:* = undefined;
         var _loc10_:String = null;
         var _loc11_:Array = null;
         var _loc12_:* = undefined;
         var _loc13_:Date = null;
         var _loc14_:String = null;
         _timeAward = "";
         var _loc1_:Number = getServerTime();
         for(_loc2_ in saveBtnId)
         {
            for(_loc3_ in saveBtnId[_loc2_])
            {
               _loc4_ = _loc2_;
               _loc5_ = "";
               _loc6_ = saveBtnId[_loc2_][_loc3_];
               if(_loc2_ == 5 && saveBtnId[_loc2_][_loc3_] == "B")
               {
                  _loc6_ = "C";
               }
               if(Boolean(WORLD_CUP_REQUIRE[_loc2_]) && Boolean(WORLD_CUP_REQUIRE[_loc2_]["ft"]) && Boolean(WORLD_CUP_REQUIRE[_loc2_]["ft"][_loc6_]) && ToolKit.isSmallThan(_loc1_,WORLD_CUP_REQUIRE[_loc2_]["ft"][_loc6_]))
               {
                  this["btn" + _loc2_ + "_" + saveBtnId[_loc2_][_loc3_]].visible = true;
                  if(Boolean(GROUP_INDEX_STATE[_loc2_]) && Boolean(WORLD_CUP_GROUP[_loc2_]))
                  {
                     _loc7_ = Language.WORLD_CUP_PANEL[24];
                     if(_loc2_ >= 7)
                     {
                        _loc8_ = WORLD_CUP_GROUP[_loc2_][saveBtnId[_loc2_][_loc3_]].split("|");
                        _loc9_ = 0;
                        while(_loc9_ < _loc8_.length)
                        {
                           if(GamePredef.WORLD_CUP_INFO[_loc8_[_loc9_]])
                           {
                              _loc7_ = _loc7_.replace("{name}",GamePredef.WORLD_CUP_INFO[_loc8_[_loc9_]].name);
                           }
                           _loc9_++;
                        }
                        if(_loc2_ == 7)
                        {
                           _loc12_ = "16强";
                           _loc5_ = saveBtnId[_loc2_][_loc3_];
                        }
                     }
                     else
                     {
                        _loc10_ = saveBtnId[_loc2_][_loc3_];
                        _loc11_ = WORLD_CUP_MINUS[_loc10_].split("|");
                        _loc12_ = 0;
                        while(_loc12_ < _loc11_.length)
                        {
                           if(_loc11_[0])
                           {
                              _loc5_ = _loc11_[0];
                           }
                           _loc8_ = WORLD_CUP_GROUP[_loc2_][_loc11_[_loc12_]].split("|");
                           _loc9_ = 0;
                           while(_loc9_ < _loc8_.length)
                           {
                              if(GamePredef.WORLD_CUP_INFO[_loc8_[_loc9_]])
                              {
                                 _loc7_ = _loc7_.replace("{name}",GamePredef.WORLD_CUP_INFO[_loc8_[_loc9_]].name);
                              }
                              _loc9_++;
                           }
                           _loc12_++;
                        }
                     }
                     if(_loc12_ != "")
                     {
                        _loc13_ = new Date(WORLD_CUP_REQUIRE[_loc2_]["ft"][_loc5_]);
                        _loc14_ = _loc13_.fullYear + "/" + (_loc13_.month + 1) + "/" + _loc13_.date + " " + _loc13_.hours + ":" + _loc13_.minutes + ":" + _loc13_.seconds;
                        _timeAward = _timeAward + _loc7_.replace("{num}",GROUP_INDEX_STATE[_loc2_]).replace("{time}",_loc14_) + "\n";
                     }
                  }
               }
               else
               {
                  this["btn" + _loc2_ + "_" + saveBtnId[_loc2_][_loc3_]].visible = false;
               }
               this["yLab" + ToolKit.minus(_loc2_,1) + "_" + saveBtnId[_loc2_][_loc3_]].visible = false;
            }
         }
         for(_loc3_ in WORLD_CUP_ADD)
         {
            if(this["img6_" + _loc3_ + "_0"])
            {
               this["img6_" + _loc3_ + "_0"].visible = false;
               this["lab6_" + _loc3_ + "_0"].visible = false;
            }
         }
         this["img5_A_0"].visible = false;
         this["img5_B_0"].visible = false;
         this["img5_C_0"].visible = false;
         this["img5_D_0"].visible = false;
         this["img4_A_0"].visible = false;
         this["img4_B_0"].visible = false;
         this["img2_A_0"].visible = false;
         this["img2_B_0"].visible = false;
         this["img3_A_0"].visible = false;
         this["img1_A_0"].visible = false;
         this["lab5_A_0"].visible = false;
         this["lab5_B_0"].visible = false;
         this["lab5_C_0"].visible = false;
         this["lab5_D_0"].visible = false;
         this["lab4_A_0"].visible = false;
         this["lab4_B_0"].visible = false;
         this["lab2_A_0"].visible = false;
         this["lab2_B_0"].visible = false;
         this["lab3_A_0"].visible = false;
         this["lab1_A_0"].visible = false;
      }
      
      public function set btn7_C(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849185btn7_C;
         if(_loc2_ !== param1)
         {
            this._1378849185btn7_C = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_C",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab2_A_0() : Label
      {
         return this._2006772552lab2_A_0;
      }
      
      public function set btn7_D(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849184btn7_D;
         if(_loc2_ !== param1)
         {
            this._1378849184btn7_D = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_D",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLastPage() : Button
      {
         return this._320271553btnLastPage;
      }
      
      public function set btn7_E(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849183btn7_E;
         if(_loc2_ !== param1)
         {
            this._1378849183btn7_E = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_E",_loc2_,param1));
         }
      }
      
      public function set labg_1_2(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1957841313labg_1_2;
         if(_loc2_ !== param1)
         {
            this._1957841313labg_1_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labg_1_2",_loc2_,param1));
         }
      }
      
      public function set btn7_G(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849181btn7_G;
         if(_loc2_ !== param1)
         {
            this._1378849181btn7_G = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_G",_loc2_,param1));
         }
      }
      
      public function set btn7_F(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849182btn7_F;
         if(_loc2_ !== param1)
         {
            this._1378849182btn7_F = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_F",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_G_0() : Image
      {
         return this._733281076img6_G_0;
      }
      
      public function set btn7_H(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378849180btn7_H;
         if(_loc2_ !== param1)
         {
            this._1378849180btn7_H = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7_H",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_E_1() : Image
      {
         return this._732359476img7_E_1;
      }
      
      public function set labg_1_1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1957841314labg_1_1;
         if(_loc2_ !== param1)
         {
            this._1957841314labg_1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labg_1_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_E_0() : Image
      {
         return this._732359477img7_E_0;
      }
      
      private function initShopData() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _shopData = new Array();
         _shopDataGold = new Array();
         var _loc1_:Object = {};
         var _loc2_:Object = GameData.d[GamePredef.TBL_SHOP_SLOT];
         for(_loc3_ in _loc2_)
         {
            if(ToolKit.isEqual(_loc2_[_loc3_].sid,107))
            {
               _loc1_[_loc3_] = _loc2_[_loc3_];
            }
         }
         for(_loc4_ in _loc1_)
         {
            if(_loc1_[_loc4_].pType1 == 29)
            {
               _shopData.push(_loc1_[_loc4_]);
            }
            else
            {
               _shopDataGold.push(_loc1_[_loc4_]);
            }
         }
         _shopData = _shopData.sort(sortFun);
         _shopDataGold = _shopDataGold.sort(sortFun);
      }
      
      public function __img7_E_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"E");
      }
      
      public function set btng_1(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378803075btng_1;
         if(_loc2_ !== param1)
         {
            this._1378803075btng_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btng_1",_loc2_,param1));
         }
      }
      
      private function updateKnockOutCanvas() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:Array = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = undefined;
         if(!WORLD_CUP_GROUP[7])
         {
            return;
         }
         clearnGroupImage();
         _allTeamArr = {};
         for(_loc1_ in _charData)
         {
            if(ToolKit.isSmallOrEqual(_loc1_,7))
            {
               for(_loc2_ in _charData[_loc1_])
               {
                  if(Boolean(_charData[_loc1_]) && Boolean(_charData[_loc1_][_loc2_]))
                  {
                     _loc3_ = ToolKit.minus(_loc1_,1);
                     for(_loc4_ in _charData[_loc1_][_loc2_])
                     {
                        this["img" + _loc3_ + "_" + _loc2_ + "_0"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_loc4_].icon));
                        this["lab" + _loc3_ + "_" + _loc2_ + "_0"].text = GamePredef.WORLD_CUP_INFO[_loc4_].name;
                        this["img" + _loc3_ + "_" + _loc2_ + "_0"].visible = true;
                        this["lab" + _loc3_ + "_" + _loc2_ + "_0"].visible = true;
                     }
                  }
               }
            }
         }
         for(_loc1_ in WORLD_CUP_GROUP)
         {
            if(Boolean(WORLD_CUP_GROUP[_loc1_]) && ToolKit.isSmallOrEqual(_loc1_,7))
            {
               _allTeamArr[_loc1_] = {};
               for(_loc2_ in WORLD_CUP_GROUP[_loc1_])
               {
                  _allTeamArr[_loc1_][_loc2_] = {};
                  if(ToolKit.isEqual(_loc1_,7))
                  {
                     _loc5_ = WORLD_CUP_GROUP[_loc1_][_loc2_].split("|");
                     if(_loc5_.length != 0)
                     {
                        _loc6_ = 0;
                        _loc4_ = 0;
                        while(_loc4_ < _loc5_.length)
                        {
                           if(GamePredef.WORLD_CUP_INFO[_loc5_[_loc4_]])
                           {
                              this["img" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_loc5_[_loc4_]].icon));
                              this["lab" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].text = GamePredef.WORLD_CUP_INFO[_loc5_[_loc4_]].name;
                              this["img" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].visible = true;
                              this["lab" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].visible = true;
                              _allTeamArr[_loc1_][_loc2_][_loc6_] = _loc5_[_loc4_];
                              _loc6_++;
                           }
                           _loc4_++;
                        }
                     }
                  }
                  else
                  {
                     _loc5_ = WORLD_CUP_GROUP[_loc1_][_loc2_].split("|");
                     if(_loc5_.length != 0)
                     {
                        _loc6_ = 0;
                        _loc4_ = 0;
                        while(_loc4_ < _loc5_.length)
                        {
                           if(GamePredef.WORLD_CUP_INFO[_loc5_[_loc4_]])
                           {
                              this["img" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_loc5_[_loc4_]].icon));
                              this["img" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].visible = true;
                              this["lab" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].text = GamePredef.WORLD_CUP_INFO[_loc5_[_loc4_]].name;
                              this["lab" + _loc1_ + "_" + _loc2_ + "_" + _loc6_].visible = true;
                              _loc7_ = ToolKit.add(_loc1_,1);
                              if(Boolean(_charData) && Boolean(_charData[_loc7_]) && Boolean(_charData[_loc7_][_loc2_]))
                              {
                                 for(_loc8_ in _charData[_loc7_][_loc2_])
                                 {
                                    if(_loc8_ == _loc5_[_loc4_])
                                    {
                                       this["yLab" + _loc1_ + "_" + _loc2_].htmlText = "<font color=\'#53FF53\'>" + Language.WORLD_CUP_PANEL[12].replace("{name}",GamePredef.WORLD_CUP_INFO[_loc8_].name) + "</font>";
                                    }
                                    else
                                    {
                                       this["yLab" + _loc1_ + "_" + _loc2_].htmlText = "<font color=\'#FF5809\'>" + Language.WORLD_CUP_PANEL[12].replace("{name}",GamePredef.WORLD_CUP_INFO[_loc8_].name) + "</font>";
                                    }
                                    this["yLab" + _loc1_ + "_" + _loc2_].visible = true;
                                 }
                              }
                              _allTeamArr[_loc1_][_loc2_][_loc6_] = _loc5_[_loc4_];
                              _loc6_++;
                           }
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function set lab6_B_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003077507lab6_B_0;
         if(_loc2_ !== param1)
         {
            this._2003077507lab6_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_B_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_F_0() : Label
      {
         return this._2002150142lab7_F_0;
      }
      
      public function set btng_2(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378803074btng_2;
         if(_loc2_ !== param1)
         {
            this._1378803074btng_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btng_2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_H_0() : Label
      {
         return this._2003071741lab6_H_0;
      }
      
      public function set img5_B_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._734209402img5_B_0;
         if(_loc2_ !== param1)
         {
            this._734209402img5_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img5_B_0",_loc2_,param1));
         }
      }
      
      public function set lab5_D_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003999106lab5_D_0;
         if(_loc2_ !== param1)
         {
            this._2003999106lab5_D_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab5_D_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_F_1() : Label
      {
         return this._2002150141lab7_F_1;
      }
      
      public function set vsBang(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._808459627vsBang;
         if(_loc2_ !== param1)
         {
            this._808459627vsBang = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsBang",_loc2_,param1));
         }
      }
      
      public function __img6_B_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"B");
      }
      
      public function __btng_1_click(param1:MouseEvent) : void
      {
         showVsPanel(1);
      }
      
      public function __img7_H_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"H");
      }
      
      public function set btn6_B(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378850147btn6_B;
         if(_loc2_ !== param1)
         {
            this._1378850147btn6_B = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6_B",_loc2_,param1));
         }
      }
      
      public function onUpdateCharWorldCupData(param1:Object) : void
      {
         if(initialized && Boolean(param1))
         {
            if(!_charData[param1.state])
            {
               _charData[param1.state] = {};
            }
            if(!_charData[param1.state][param1.group])
            {
               _charData[param1.state][param1.group] = {};
            }
            _charData[param1.state][param1.group] = param1["info"];
            if(param1.state == 8)
            {
               update32thCanvasByGroup(param1.group);
            }
         }
         else if(initialized)
         {
            update32thCanvas();
            updateKnockOutCanvas();
         }
      }
      
      public function set btn6_C(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378850146btn6_C;
         if(_loc2_ !== param1)
         {
            this._1378850146btn6_C = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6_C",_loc2_,param1));
         }
      }
      
      public function set btn6_D(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378850145btn6_D;
         if(_loc2_ !== param1)
         {
            this._1378850145btn6_D = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6_D",_loc2_,param1));
         }
      }
      
      public function set btn6_A(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378850148btn6_A;
         if(_loc2_ !== param1)
         {
            this._1378850148btn6_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6_A",_loc2_,param1));
         }
      }
      
      public function set btnNextPage(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1090881890btnNextPage;
         if(_loc2_ !== param1)
         {
            this._1090881890btnNextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnNextPage",_loc2_,param1));
         }
      }
      
      public function __btn6_B_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("B",6);
      }
      
      private function goToShopPage(param1:Number, param2:Array, param3:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = ToolKit.add(ToolKit.minus(param1,1) * 10,10);
         var _loc5_:Number = ToolKit.minus(param1,1) * 10;
         if(param2.length < ToolKit.add(_loc5_,10))
         {
            _loc4_ = param2.length;
         }
         cleanShopCanvas(param3);
         if(param3 == 1)
         {
            _loc6_ = 0;
            _loc7_ = _loc5_;
            while(_loc7_ < _loc4_)
            {
               this["item" + param3 + _loc6_].slotData = param2[_loc7_];
               _loc8_ = WORLD_CUP_LIMIT_1[param2[_loc7_].id] ? Number(WORLD_CUP_LIMIT_1[param2[_loc7_].id]) : 0;
               this["item" + param3 + _loc6_].setLimit(_loc8_);
               _loc6_++;
               _loc7_++;
            }
         }
         else
         {
            _loc6_ = 0;
            _loc7_ = _loc5_;
            while(_loc7_ < _loc4_)
            {
               this["item" + param3 + _loc6_].slotData = param2[_loc7_];
               _loc8_ = WORLD_CUP_LIMIT[param2[_loc7_].id] ? Number(WORLD_CUP_LIMIT[param2[_loc7_].id]) : 0;
               this["item" + param3 + _loc6_].setLimit(_loc8_);
               _loc6_++;
               _loc7_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_C_0() : Image
      {
         return this._732361399img7_C_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_E_0() : Image
      {
         return this._733282998img6_E_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab1_A_0() : Label
      {
         return this._2007696073lab1_A_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_C_1() : Image
      {
         return this._732361398img7_C_1;
      }
      
      private function saveCalculateResultOnKnockOut(param1:String, param2:Number) : void
      {
         if(!WORLD_CUP_GROUP[param2] || !WORLD_CUP_GROUP[param2][param1] || !WORLD_CUP_REQUIRE[param2] || !WORLD_CUP_REQUIRE[param2]["ft"][param1] || param2 == 3 || param2 == 1)
         {
            return;
         }
         var _loc3_:* = new Date().getTime();
         if(Number(WORLD_CUP_GROUP[param2][param1]) <= _loc3_)
         {
            return;
         }
         var _loc4_:* = ToolKit.minus(param2,1);
         var _loc5_:Boolean = !_choseTeam[_loc4_][param1];
         if(_loc4_ == 4 && param1 == "C")
         {
            _loc5_ = false;
         }
         if(!_choseTeam[_loc4_] || _loc5_)
         {
            return;
         }
         var _loc6_:Object = new Object();
         _loc6_["group"] = param1;
         _loc6_["state"] = param2;
         _loc6_["info"] = _choseTeam[_loc4_][param1];
         if(_loc4_ == 4 && param1 == "C")
         {
            _loc6_["info"] = _choseTeam[_loc4_]["B"];
         }
         _core.remote.call("updateCharWorldCupData",null,_loc6_);
      }
      
      private function set _myOutSc(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._442404173_myOutSc;
         if(_loc2_ !== param1)
         {
            this._442404173_myOutSc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_myOutSc",_loc2_,param1));
         }
      }
      
      public function set btnNextPageShop(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._967394996btnNextPageShop;
         if(_loc2_ !== param1)
         {
            this._967394996btnNextPageShop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnNextPageShop",_loc2_,param1));
         }
      }
      
      public function set lab5_C_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2004000067lab5_C_0;
         if(_loc2_ !== param1)
         {
            this._2004000067lab5_C_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab5_C_0",_loc2_,param1));
         }
      }
      
      public function set lab6_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2003078468lab6_A_0;
         if(_loc2_ !== param1)
         {
            this._2003078468lab6_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6_A_0",_loc2_,param1));
         }
      }
      
      public function initVsObject() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         for(_loc1_ in WORLD_CUP_GROUP)
         {
            if(_loc1_ <= 7)
            {
               if(WORLD_CUP_GROUP[_loc1_])
               {
                  if(!_vsObject[_loc1_])
                  {
                     _vsObject[_loc1_] = {};
                  }
                  if(_loc1_ == 7)
                  {
                     for(_loc2_ in WORLD_CUP_GROUP[_loc1_])
                     {
                        _loc3_ = WORLD_CUP_GROUP[_loc1_][_loc2_].substring(1,WORLD_CUP_GROUP[_loc1_][_loc2_].toString().length - 1);
                        _loc4_ = _loc3_.split("|");
                        _loc5_ = 0;
                        while(_loc5_ < _loc4_.length)
                        {
                           _vsObject[_loc1_][_loc4_[_loc5_]] = new Array();
                           _vsObject[_loc1_][_loc4_[_loc5_]] = _loc4_;
                           _loc5_++;
                        }
                     }
                  }
                  else
                  {
                     _loc6_ = {};
                     for(_loc2_ in WORLD_CUP_GROUP[_loc1_])
                     {
                        _loc7_ = WORLD_CUP_ADD[_loc2_];
                        if(!_loc6_[_loc7_])
                        {
                           _loc6_[_loc7_] = WORLD_CUP_GROUP[_loc1_][_loc2_].substring(1,WORLD_CUP_GROUP[_loc1_][_loc2_].toString().length - 1);
                        }
                        else
                        {
                           _loc6_[_loc7_] += WORLD_CUP_GROUP[_loc1_][_loc2_].substring(0,WORLD_CUP_GROUP[_loc1_][_loc2_].toString().length - 1);
                        }
                     }
                     for(_loc2_ in _loc6_)
                     {
                        _loc4_ = _loc6_[_loc2_].split("|");
                        _loc5_ = 0;
                        while(_loc5_ < _loc4_.length)
                        {
                           _vsObject[_loc1_][_loc4_[_loc5_]] = new Array();
                           _vsObject[_loc1_][_loc4_[_loc5_]] = _loc4_;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_F_0() : Label
      {
         return this._2003073663lab6_F_0;
      }
      
      public function set txtPageIndicatorShop(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2089469638txtPageIndicatorShop;
         if(_loc2_ !== param1)
         {
            this._2089469638txtPageIndicatorShop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPageIndicatorShop",_loc2_,param1));
         }
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         bangSele(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_D_0() : Label
      {
         return this._2002152064lab7_D_0;
      }
      
      public function ___WorldCupPanel_DelayButton21_click(param1:MouseEvent) : void
      {
         getWorldCupGoldPoint();
      }
      
      [Bindable(event="propertyChange")]
      public function get rankGrid() : DataGrid
      {
         return this._255677842rankGrid;
      }
      
      private function bangSele(param1:int) : void
      {
         if(param1 == 2 && !WORLD_CUP_GROUP[7])
         {
            Alert.show(Language.WORLD_CUP_PANEL[51]);
            return;
         }
         var _loc2_:int = 7;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["bangBtn" + _loc3_].selected = false;
            _loc3_++;
         }
         if(param1 == 6)
         {
            initShopCanvas();
            _core.remote.call("getWorldCupShopLimitDataTcn",null);
         }
         this["bangBtn" + param1].selected = true;
         vsBang.selectedIndex = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgg_2_1() : Image
      {
         return this._688048727imgg_2_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgg_2_2() : Image
      {
         return this._688048726imgg_2_2;
      }
      
      public function set img5_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._734210363img5_A_0;
         if(_loc2_ !== param1)
         {
            this._734210363img5_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img5_A_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labg_1() : Label
      {
         return this._1110415956labg_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get labg_2() : Label
      {
         return this._1110415955labg_2;
      }
      
      public function set btn5_A(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378851109btn5_A;
         if(_loc2_ !== param1)
         {
            this._1378851109btn5_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5_A",_loc2_,param1));
         }
      }
      
      public function set btn5_B(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378851108btn5_B;
         if(_loc2_ !== param1)
         {
            this._1378851108btn5_B = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5_B",_loc2_,param1));
         }
      }
      
      public function onUpdateCharWorldCupFlagData(param1:Number, param2:String, param3:Number) : void
      {
         var _loc4_:* = undefined;
         if(initialized)
         {
            if(!_worldCupFlag[param1])
            {
               _worldCupFlag[param1] = {};
            }
            if(!_worldCupFlag[param1][param2])
            {
               _worldCupFlag[param1][param2] = param3;
            }
            else
            {
               _worldCupFlag[param1][param2] = ToolKit.add(_worldCupFlag[param1][param2],param3);
            }
            initCharAugurGoldInfoCanvas();
            initGoldScheduleObject();
            initGoldScheduleCanvas();
            _loc4_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP_VS);
            if(_loc4_)
            {
               _loc4_.updateMyCost(param1,param2,_worldCupFlag[param1][param2]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_C_0() : Image
      {
         return this._733284920img6_C_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_A_1() : Image
      {
         return this._732363320img7_A_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_D_1() : Label
      {
         return this._2002152063lab7_D_1;
      }
      
      public function set endTime0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1715068648endTime0;
         if(_loc2_ !== param1)
         {
            this._1715068648endTime0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endTime0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img7_A_0() : Image
      {
         return this._732363321img7_A_0;
      }
      
      public function __img7_D_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"D");
      }
      
      private function _WorldCupPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "state";
         _loc1_.width = 85;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn8",_WorldCupPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function set lab5_B_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2004001028lab5_B_0;
         if(_loc2_ !== param1)
         {
            this._2004001028lab5_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab5_B_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_B_0() : Label
      {
         return this._2002153986lab7_B_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_D_0() : Label
      {
         return this._2003075585lab6_D_0;
      }
      
      public function __btn2_A_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("A",2);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7_B_1() : Label
      {
         return this._2002153985lab7_B_1;
      }
      
      public function __btn7_E_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("E",7);
      }
      
      public function set img4_B_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._735132923img4_B_0;
         if(_loc2_ !== param1)
         {
            this._735132923img4_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img4_B_0",_loc2_,param1));
         }
      }
      
      public function __img6_A_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"A");
      }
      
      public function set btn4_A(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378852070btn4_A;
         if(_loc2_ !== param1)
         {
            this._1378852070btn4_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4_A",_loc2_,param1));
         }
      }
      
      public function __img7_G_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"G");
      }
      
      public function __btn5_B_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("B",5);
      }
      
      [Bindable(event="propertyChange")]
      public function get img6_A_0() : Image
      {
         return this._733286842img6_A_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_A() : DelayButton
      {
         return this._1378849187btn7_A;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_B() : DelayButton
      {
         return this._1378849186btn7_B;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_C() : DelayButton
      {
         return this._1378849185btn7_C;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_D() : DelayButton
      {
         return this._1378849184btn7_D;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_E() : DelayButton
      {
         return this._1378849183btn7_E;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_F() : DelayButton
      {
         return this._1378849182btn7_F;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_G() : DelayButton
      {
         return this._1378849181btn7_G;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7_H() : DelayButton
      {
         return this._1378849180btn7_H;
      }
      
      [Bindable(event="propertyChange")]
      public function get labg_1_1() : Image
      {
         return this._1957841314labg_1_1;
      }
      
      private function initGoldScheduleObject() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = undefined;
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         GoldSchedule = {};
         _loc1_ = 1;
         while(_loc1_ <= 7)
         {
            if(WORLD_CUP_ODDS[_loc1_])
            {
               if(_loc1_ != GoldScheduleState)
               {
                  _refreshBtn = true;
                  _defaultIndex = 1;
               }
               GoldScheduleState = _loc1_;
               break;
            }
            _loc1_++;
         }
         if(GoldScheduleState == 2 || GoldScheduleState == 4)
         {
            for(_loc2_ in WORLD_CUP_GROUP[4])
            {
               if(!WORLD_CUP_GROUP[4]["A"] || !WORLD_CUP_GROUP[4]["B"])
               {
                  return;
               }
               if(!WORLD_CUP_ODDS[4])
               {
                  return;
               }
               _loc3_ = WORLD_CUP_ADD[_loc2_];
               _loc4_ = replaceAll(WORLD_CUP_GROUP[4]["A"],"|","");
               _loc5_ = replaceAll(WORLD_CUP_GROUP[4]["B"],"|","");
               _loc6_ = WORLD_CUP_ODDS[4][_loc4_] ? Number(WORLD_CUP_ODDS[4][_loc4_]) : 0;
               _loc7_ = WORLD_CUP_ODDS[4][_loc5_] ? Number(WORLD_CUP_ODDS[4][_loc5_]) : 0;
               _loc8_ = Boolean(WORLD_CUP_TIME_GOLD_LIMIT[4]) && Boolean(WORLD_CUP_TIME_GOLD_LIMIT[4][_loc4_]) ? Number(WORLD_CUP_TIME_GOLD_LIMIT[4][_loc4_]) : 999999999999;
               _loc9_ = Boolean(WORLD_CUP_TIME_GOLD_LIMIT[4]) && Boolean(WORLD_CUP_TIME_GOLD_LIMIT[4][_loc5_]) ? Number(WORLD_CUP_TIME_GOLD_LIMIT[4][_loc5_]) : 999999999999;
               if(Boolean(_loc6_) && Boolean(_loc7_))
               {
                  if(!GoldSchedule["A"])
                  {
                     GoldSchedule["A"] = {};
                     GoldSchedule["A"][0] = {};
                     GoldSchedule["A"][0] = {
                        "goldLimit":_loc8_,
                        "odds":_loc6_,
                        "state":4,
                        "group":"A",
                        "team":_loc4_,
                        "time":WORLD_CUP_REQUIRE[4]["ft"]["A"],
                        "cost":(Boolean(_worldCupFlag[4]) && Boolean(_worldCupFlag[4][_loc4_]) ? _worldCupFlag[4][_loc4_] : 0)
                     };
                  }
                  else
                  {
                     GoldSchedule["A"][1] = {};
                     GoldSchedule["A"][1] = {
                        "goldLimit":_loc9_,
                        "odds":_loc7_,
                        "state":4,
                        "group":"B",
                        "team":_loc5_,
                        "time":WORLD_CUP_REQUIRE[4]["ft"]["B"],
                        "cost":(Boolean(_worldCupFlag[4]) && Boolean(_worldCupFlag[4][_loc5_]) ? _worldCupFlag[4][_loc5_] : 0)
                     };
                  }
               }
            }
            for(_loc2_ in WORLD_CUP_GROUP[2])
            {
               if(!WORLD_CUP_GROUP[2]["A"] || !WORLD_CUP_GROUP[2]["B"])
               {
                  return;
               }
               if(!WORLD_CUP_ODDS[2])
               {
                  return;
               }
               _loc4_ = replaceAll(WORLD_CUP_GROUP[2]["A"],"|","");
               _loc5_ = replaceAll(WORLD_CUP_GROUP[2]["B"],"|","");
               _loc6_ = WORLD_CUP_ODDS[2][_loc4_] ? Number(WORLD_CUP_ODDS[2][_loc4_]) : 0;
               _loc7_ = WORLD_CUP_ODDS[2][_loc5_] ? Number(WORLD_CUP_ODDS[2][_loc5_]) : 0;
               _loc8_ = Boolean(WORLD_CUP_TIME_GOLD_LIMIT[2]) && Boolean(WORLD_CUP_TIME_GOLD_LIMIT[2][_loc4_]) ? Number(WORLD_CUP_TIME_GOLD_LIMIT[2][_loc4_]) : 999999999999;
               _loc9_ = Boolean(WORLD_CUP_TIME_GOLD_LIMIT[2]) && Boolean(WORLD_CUP_TIME_GOLD_LIMIT[2][_loc5_]) ? Number(WORLD_CUP_TIME_GOLD_LIMIT[2][_loc5_]) : 999999999999;
               if(Boolean(_loc6_) && Boolean(_loc7_))
               {
                  if(!GoldSchedule["B"])
                  {
                     GoldSchedule["B"] = {};
                     GoldSchedule["B"][0] = {};
                     GoldSchedule["B"][0] = {
                        "goldLimit":_loc8_,
                        "odds":_loc6_,
                        "state":2,
                        "group":"A",
                        "team":_loc4_,
                        "time":WORLD_CUP_REQUIRE[2]["ft"]["A"],
                        "cost":(Boolean(_worldCupFlag[2]) && Boolean(_worldCupFlag[2][_loc4_]) ? _worldCupFlag[2][_loc4_] : 0)
                     };
                  }
                  else
                  {
                     GoldSchedule["B"][1] = {};
                     GoldSchedule["B"][1] = {
                        "goldLimit":_loc9_,
                        "odds":_loc7_,
                        "state":2,
                        "group":"B",
                        "team":_loc5_,
                        "time":WORLD_CUP_REQUIRE[2]["ft"]["B"],
                        "cost":(Boolean(_worldCupFlag[2]) && Boolean(_worldCupFlag[2][_loc4_]) ? _worldCupFlag[2][_loc4_] : 0)
                     };
                  }
               }
            }
         }
         else if(GoldScheduleState == 7)
         {
            for(_loc2_ in WORLD_CUP_GROUP[GoldScheduleState])
            {
               _loc10_ = WORLD_CUP_GROUP[GoldScheduleState][_loc2_].split("|");
               _loc1_ = 0;
               while(_loc1_ < _loc10_.length)
               {
                  if(Boolean(GamePredef.WORLD_CUP_INFO[_loc10_[_loc1_]]) && Boolean(WORLD_CUP_ODDS[GoldScheduleState][_loc10_[_loc1_]]))
                  {
                     _loc11_ = _loc10_[_loc1_];
                     _loc12_ = Number(WORLD_CUP_ODDS[GoldScheduleState][_loc10_[_loc1_]]);
                     _loc13_ = Boolean(WORLD_CUP_TIME_GOLD_LIMIT[GoldScheduleState]) && Boolean(WORLD_CUP_TIME_GOLD_LIMIT[GoldScheduleState][_loc11_]) ? Number(WORLD_CUP_TIME_GOLD_LIMIT[GoldScheduleState][_loc11_]) : 999999999999;
                     if(!GoldSchedule[_loc2_])
                     {
                        GoldSchedule[_loc2_] = {};
                        GoldSchedule[_loc2_][0] = {};
                        GoldSchedule[_loc2_][0] = {
                           "goldLimit":_loc13_,
                           "odds":_loc12_,
                           "state":GoldScheduleState,
                           "group":_loc2_,
                           "team":_loc10_[_loc1_],
                           "time":WORLD_CUP_REQUIRE[GoldScheduleState]["ft"][_loc2_],
                           "cost":(Boolean(_worldCupFlag[GoldScheduleState]) && Boolean(_worldCupFlag[GoldScheduleState][_loc11_]) ? _worldCupFlag[GoldScheduleState][_loc11_] : 0)
                        };
                     }
                     else
                     {
                        GoldSchedule[_loc2_][1] = {};
                        GoldSchedule[_loc2_][1] = {
                           "goldLimit":_loc13_,
                           "odds":_loc12_,
                           "state":GoldScheduleState,
                           "group":_loc2_,
                           "team":_loc10_[_loc1_],
                           "time":WORLD_CUP_REQUIRE[GoldScheduleState]["ft"][_loc2_],
                           "cost":(Boolean(_worldCupFlag[GoldScheduleState]) && Boolean(_worldCupFlag[GoldScheduleState][_loc11_]) ? _worldCupFlag[GoldScheduleState][_loc11_] : 0)
                        };
                     }
                  }
                  _loc1_++;
               }
            }
         }
         else if(GoldScheduleState < 7)
         {
            for(_loc2_ in WORLD_CUP_GROUP[GoldScheduleState])
            {
               if(!WORLD_CUP_ODDS[GoldScheduleState])
               {
                  return;
               }
               _loc3_ = WORLD_CUP_ADD[_loc2_];
               _loc14_ = replaceAll(WORLD_CUP_GROUP[GoldScheduleState][_loc2_],"|","");
               if(Boolean(WORLD_CUP_ODDS[GoldScheduleState]) && Boolean(WORLD_CUP_ODDS[GoldScheduleState][_loc14_]))
               {
                  _loc12_ = Number(WORLD_CUP_ODDS[GoldScheduleState][_loc14_]);
                  _loc11_ = _loc14_;
                  _loc13_ = Boolean(WORLD_CUP_TIME_GOLD_LIMIT[GoldScheduleState]) && Boolean(WORLD_CUP_TIME_GOLD_LIMIT[GoldScheduleState][_loc11_]) ? Number(WORLD_CUP_TIME_GOLD_LIMIT[GoldScheduleState][_loc11_]) : 999999999999;
                  if(!GoldSchedule[_loc3_])
                  {
                     GoldSchedule[_loc3_] = {};
                     GoldSchedule[_loc3_][0] = {};
                     GoldSchedule[_loc3_][0] = {
                        "goldLimit":_loc13_,
                        "odds":_loc12_,
                        "state":GoldScheduleState,
                        "group":_loc2_,
                        "team":_loc11_,
                        "time":WORLD_CUP_REQUIRE[GoldScheduleState]["ft"][_loc2_],
                        "cost":(Boolean(_worldCupFlag[GoldScheduleState]) && Boolean(_worldCupFlag[GoldScheduleState][_loc11_]) ? _worldCupFlag[GoldScheduleState][_loc11_] : 0)
                     };
                  }
                  else
                  {
                     GoldSchedule[_loc3_][1] = {};
                     GoldSchedule[_loc3_][1] = {
                        "goldLimit":_loc13_,
                        "odds":_loc12_,
                        "state":GoldScheduleState,
                        "group":_loc2_,
                        "team":_loc11_,
                        "time":WORLD_CUP_REQUIRE[GoldScheduleState]["ft"][_loc2_],
                        "cost":(Boolean(_worldCupFlag[GoldScheduleState]) && Boolean(_worldCupFlag[GoldScheduleState][_loc11_]) ? _worldCupFlag[GoldScheduleState][_loc11_] : 0)
                     };
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img5_C_0() : Image
      {
         return this._734208441img5_C_0;
      }
      
      private function _WorldCupPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "g";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn6",_WorldCupPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function set lab5_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2004001989lab5_A_0;
         if(_loc2_ !== param1)
         {
            this._2004001989lab5_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab5_A_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labg_1_2() : Image
      {
         return this._1957841313labg_1_2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6_B_0() : Label
      {
         return this._2003077507lab6_B_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab5_D_0() : Label
      {
         return this._2003999106lab5_D_0;
      }
      
      public function bangSeleByVsPanel(param1:Number) : void
      {
         if(initialized)
         {
            this.visible = true;
            bangSele(param1);
         }
      }
      
      public function set img4_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._735133884img4_A_0;
         if(_loc2_ !== param1)
         {
            this._735133884img4_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img4_A_0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnNextPage() : Button
      {
         return this._1090881890btnNextPage;
      }
      
      public function set btnLastPageShop(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._289667927btnLastPageShop;
         if(_loc2_ !== param1)
         {
            this._289667927btnLastPageShop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLastPageShop",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnNextPageShop() : Button
      {
         return this._967394996btnNextPageShop;
      }
      
      public function __btnNextPageShopGold_buttonDown(param1:FlexEvent) : void
      {
         turnPage(true,2);
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPageIndicatorShop() : TextInput
      {
         return this._2089469638txtPageIndicatorShop;
      }
      
      [Bindable(event="propertyChange")]
      public function get img5_A_0() : Image
      {
         return this._734210363img5_A_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5_A() : DelayButton
      {
         return this._1378851109btn5_A;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5_B() : DelayButton
      {
         return this._1378851108btn5_B;
      }
      
      [Bindable(event="propertyChange")]
      public function get endTime0() : Label
      {
         return this._1715068648endTime0;
      }
      
      public function __img7_C_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"C");
      }
      
      public function set introCon(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._582286198introCon;
         if(_loc2_ !== param1)
         {
            this._582286198introCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introCon",_loc2_,param1));
         }
      }
      
      private function _WorldCupPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "tsc";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn4",_WorldCupPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab5_B_0() : Label
      {
         return this._2004001028lab5_B_0;
      }
      
      public function set lab4_B_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2004924549lab4_B_0;
         if(_loc2_ !== param1)
         {
            this._2004924549lab4_B_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab4_B_0",_loc2_,param1));
         }
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         bangSele(0);
      }
      
      private function cleanShopCanvas(param1:Number) : void
      {
         var _loc2_:Number = 0;
         while(_loc2_ < 10)
         {
            this["item" + param1 + _loc2_].visible = false;
            _loc2_++;
         }
      }
      
      public function set btn2_A(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1378853992btn2_A;
         if(_loc2_ !== param1)
         {
            this._1378853992btn2_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2_A",_loc2_,param1));
         }
      }
      
      public function __img7_F_1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(1,7,"F");
      }
      
      private function _initShopCanvas() : void
      {
         _shopMaxIndex = Math.ceil(_shopData.length / 10) > 0 ? Math.ceil(_shopData.length / 10) : 1;
         _shopGoldMaxIndex = Math.ceil(_shopDataGold.length / 10) > 0 ? Math.ceil(_shopDataGold.length / 10) : 1;
         goToShopPage(_shopIndex,_shopData,1);
         goToShopPage(_shopGoldIndex,_shopDataGold,2);
         txtPageIndicatorShop.text = _shopIndex + "/" + _shopMaxIndex;
         txtPageIndicatorShopGold.text = _shopGoldIndex + "/" + _shopGoldMaxIndex;
      }
      
      public function __img6_H_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,6,"H");
      }
      
      public function set yLab6_A(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832860yLab6_A;
         if(_loc2_ !== param1)
         {
            this._2012832860yLab6_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_A",_loc2_,param1));
         }
      }
      
      public function set yLab6_B(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832859yLab6_B;
         if(_loc2_ !== param1)
         {
            this._2012832859yLab6_B = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_B",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img4_A_0() : Image
      {
         return this._735133884img4_A_0;
      }
      
      public function set yLab6_C(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832858yLab6_C;
         if(_loc2_ !== param1)
         {
            this._2012832858yLab6_C = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_C",_loc2_,param1));
         }
      }
      
      public function set yLab6_E(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832856yLab6_E;
         if(_loc2_ !== param1)
         {
            this._2012832856yLab6_E = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_E",_loc2_,param1));
         }
      }
      
      public function set yLab6_G(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832854yLab6_G;
         if(_loc2_ !== param1)
         {
            this._2012832854yLab6_G = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_G",_loc2_,param1));
         }
      }
      
      public function set yLab6_D(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832857yLab6_D;
         if(_loc2_ !== param1)
         {
            this._2012832857yLab6_D = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_D",_loc2_,param1));
         }
      }
      
      public function set bangBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324756bangBtn0;
         if(_loc2_ !== param1)
         {
            this._1863324756bangBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn0",_loc2_,param1));
         }
      }
      
      public function ___WorldCupPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initShopData();
      }
      
      public function set yLab6_H(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832853yLab6_H;
         if(_loc2_ !== param1)
         {
            this._2012832853yLab6_H = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_H",_loc2_,param1));
         }
      }
      
      public function __bangBtn5_click(param1:MouseEvent) : void
      {
         bangSele(5);
      }
      
      public function set bangBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324751bangBtn5;
         if(_loc2_ !== param1)
         {
            this._1863324751bangBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn5",_loc2_,param1));
         }
      }
      
      public function set bangBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324754bangBtn2;
         if(_loc2_ !== param1)
         {
            this._1863324754bangBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn2",_loc2_,param1));
         }
      }
      
      public function set bangBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324753bangBtn3;
         if(_loc2_ !== param1)
         {
            this._1863324753bangBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn3",_loc2_,param1));
         }
      }
      
      public function set bangBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324752bangBtn4;
         if(_loc2_ !== param1)
         {
            this._1863324752bangBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn4",_loc2_,param1));
         }
      }
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      public function set yLab6_F(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012832855yLab6_F;
         if(_loc2_ !== param1)
         {
            this._2012832855yLab6_F = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab6_F",_loc2_,param1));
         }
      }
      
      public function set ginfo_grid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1829757008ginfo_grid;
         if(_loc2_ !== param1)
         {
            this._1829757008ginfo_grid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ginfo_grid",_loc2_,param1));
         }
      }
      
      private function _WorldCupPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn2",_WorldCupPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function tradeAward() : void
      {
         bangSele(6);
      }
      
      public function set bangBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324750bangBtn6;
         if(_loc2_ !== param1)
         {
            this._1863324750bangBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn6",_loc2_,param1));
         }
      }
      
      public function set lab4_A_0(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2004925510lab4_A_0;
         if(_loc2_ !== param1)
         {
            this._2004925510lab4_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab4_A_0",_loc2_,param1));
         }
      }
      
      private function set _myTeamSc(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._701799496_myTeamSc;
         if(_loc2_ !== param1)
         {
            this._701799496_myTeamSc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_myTeamSc",_loc2_,param1));
         }
      }
      
      public function set txtPageIndicator(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1229795408txtPageIndicator;
         if(_loc2_ !== param1)
         {
            this._1229795408txtPageIndicator = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPageIndicator",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab4_B_0() : Label
      {
         return this._2004924549lab4_B_0;
      }
      
      public function __btn7_C_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("C",7);
      }
      
      private function showVsPanel(param1:Number) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:Number = param1 + ToolKit.minus(_defaultIndex,1) * 2;
         var _loc3_:Number = getServerTime();
         if(_showObject[_loc2_])
         {
            if(ToolKit.isSmallOrEqual(_showObject[_loc2_][0]["time"],_loc3_))
            {
               _core.sysMsg(Language.WORLD_CUP_PANEL[34]);
               return;
            }
            _loc4_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP_VS);
            if(_loc4_)
            {
               _loc4_.initWorldCupVSPanel(_showObject[_loc2_]);
            }
         }
      }
      
      public function set img3_A_0(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._736057405img3_A_0;
         if(_loc2_ !== param1)
         {
            this._736057405img3_A_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img3_A_0",_loc2_,param1));
         }
      }
      
      private function worldCupTimeAward() : void
      {
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         if(_timeAward.indexOf("vs") < 0)
         {
            _timeAward = Language.WORLD_CUP_PANEL[29];
         }
         _alert = Alert.show(_timeAward,null,Alert.YES,null,null);
         var _loc1_:IUITextField = _alert.mx_internal::alertForm.mx_internal::textField;
         _loc1_.htmlText = _timeAward;
         _loc1_.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function __img4_B_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,4,"B");
      }
      
      [Bindable(event="propertyChange")]
      public function get ginfo_grid() : DataGrid
      {
         return this._1829757008ginfo_grid;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPageIndicator() : TextInput
      {
         return this._1229795408txtPageIndicator;
      }
      
      public function __btnLastPageShopGold_buttonDown(param1:FlexEvent) : void
      {
         turnPage(false,2);
      }
      
      public function set yLab5_A(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012833821yLab5_A;
         if(_loc2_ !== param1)
         {
            this._2012833821yLab5_A = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab5_A",_loc2_,param1));
         }
      }
      
      public function set yLab5_B(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012833820yLab5_B;
         if(_loc2_ !== param1)
         {
            this._2012833820yLab5_B = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab5_B",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img3_A_0() : Image
      {
         return this._736057405img3_A_0;
      }
      
      public function __btn7_H_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOut("H",7);
      }
      
      public function set yLab5_C(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012833819yLab5_C;
         if(_loc2_ !== param1)
         {
            this._2012833819yLab5_C = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab5_C",_loc2_,param1));
         }
      }
      
      public function set yLab5_D(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2012833818yLab5_D;
         if(_loc2_ !== param1)
         {
            this._2012833818yLab5_D = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yLab5_D",_loc2_,param1));
         }
      }
      
      public function onGetWorldCupShopLimitDataTcnByPve(param1:Object) : void
      {
         if(initialized)
         {
            if(param1)
            {
               WORLD_CUP_LIMIT_1 = param1;
               _initShopCanvas();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab5_A() : Label
      {
         return this._2012833821yLab5_A;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab5_B() : Label
      {
         return this._2012833820yLab5_B;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab5_C() : Label
      {
         return this._2012833819yLab5_C;
      }
      
      [Bindable(event="propertyChange")]
      public function get yLab5_D() : Label
      {
         return this._2012833818yLab5_D;
      }
      
      public function __img7_B_0_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroupOnKnockOut(0,7,"B");
      }
      
      private function update32thCanvasByGroup(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(Boolean(WORLD_CUP_GROUP) && Boolean(WORLD_CUP_GROUP[8]))
         {
            if(WORLD_CUP_GROUP[8][param1])
            {
               _loc2_ = param1;
               _loc3_ = "xz1";
               if(!_groupCanvasId[_loc2_])
               {
                  return;
               }
               _loc3_ = _groupCanvasId[_loc2_];
               this[_loc3_].group = _loc2_;
               this[_loc3_].teamInfo = WORLD_CUP_GROUP[8][_loc2_];
               this[_loc3_].teamChar = Boolean(_charData) && Boolean(_charData[8]) && Boolean(_charData[8][_loc2_]) ? _charData[8][_loc2_] : {};
               _loc4_ = "|";
               if(WORLD_CUP_GROUP[7])
               {
                  _loc5_ = WORLD_CUP_GROUP[8][_loc2_].split("|");
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.length)
                  {
                     if(GamePredef.WORLD_CUP_INFO[_loc5_[_loc6_]])
                     {
                        for(_loc7_ in WORLD_CUP_GROUP[7])
                        {
                           if(WORLD_CUP_GROUP[7][_loc7_].indexOf("|" + _loc5_[_loc6_] + "|") >= 0)
                           {
                              _loc4_ = _loc4_ + _loc5_[_loc6_] + "|";
                           }
                        }
                     }
                     _loc6_++;
                  }
               }
               this[_loc3_].teamRealy = _loc4_ != "|" ? _loc4_ : null;
               this[_loc3_].updateInfo();
            }
         }
      }
      
      private function _WorldCupPanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WorldCupPanel_DataGridColumn14 = _loc1_;
         _loc1_.dataField = "point";
         _loc1_.width = 110;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_WorldCupPanel_DataGridColumn14",_WorldCupPanel_DataGridColumn14);
         return _loc1_;
      }
   }
}

