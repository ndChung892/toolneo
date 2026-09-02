package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RendererItemArray;
   import com.qeedoo.ui.view.comp.RendererItemMonthlyWelfare;
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
   import mx.containers.ViewStack;
   import mx.controls.DataGrid;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.VRule;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class WelfarePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2036238828goldNum2:Label;
      
      private var _822732858sliverAward0:RendererItemArray;
      
      private var _1216049948idDaysOfMonthDiff:BasicTxtButton;
      
      private var _280293143sliverBtn:DelayButton;
      
      private var _959359506diamondTime3:Label;
      
      public var _WelfarePanel_BasicTxtButton1:BasicTxtButton;
      
      public var _WelfarePanel_BasicTxtButton8:BasicTxtButton;
      
      public var _WelfarePanel_IntroText1:IntroText;
      
      private var _962374393idFinancingVS:ViewStack;
      
      public var _WelfarePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1352736404idPointLC:BoxLabel;
      
      public var isFirstFlag:Boolean = true;
      
      private var _418938956crystalAward3:RendererItemArray;
      
      private var _944522636allAward0:RendererItemArray;
      
      private var _1295920506goldTime3:Label;
      
      private var _1655054676diamond:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _WelfarePanel_BasicGlowButton1:BasicGlowButton;
      
      private var _1414914821allBtn:BasicDelayButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _822732855sliverAward3:RendererItemArray;
      
      private var _1020431502idMonthlyWelfarePlan1:DataGrid;
      
      private var _2050198026goldAward3:RendererItemArray;
      
      private var _1970442463diamondNum1:Label;
      
      private var _2035880407goldBtn3:BasicDelayButton;
      
      private var _949764824idTabBtnLC1:BasicGlowButton;
      
      private var _280281581sliverNum:Label;
      
      private var _1081099861crystalBtn1:BasicDelayButton;
      
      private var _2050198029goldAward0:RendererItemArray;
      
      private var _949764827idTabBtnLC4:BasicGlowButton;
      
      private var _2036238827goldNum1:Label;
      
      private var _418938954crystalAward1:RendererItemArray;
      
      private var _monthlyWelfareEnable:Boolean = false;
      
      private var _1080741438crystalNum2:Label;
      
      private var _1970084043diamondBtn3:BasicDelayButton;
      
      private var _1567217493idLastMonPoint:BasicTxtButton;
      
      private var _99152791sliverBtn2:BasicDelayButton;
      
      private var _861939055crystalTime2:Label;
      
      private var _855994392diamondAward1:RendererItemArray;
      
      private var _1237527121sliverTime1:Label;
      
      private var _1081099859crystalBtn3:BasicDelayButton;
      
      private var _1780150739allLabel:Label;
      
      private var _1295920507goldTime2:Label;
      
      private var _959359505diamondTime2:Label;
      
      private var _822732857sliverAward1:RendererItemArray;
      
      private var _490638232diamondBtn:DelayButton;
      
      private var _2035880406goldBtn2:BasicDelayButton;
      
      internal var monthlyWelfarePlan2:ArrayCollection = new ArrayCollection();
      
      private var _1025887444idMonthlyWelfareViews:ViewStack;
      
      private var _204220892goldBtn:DelayButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _WelfarePanel_DataGridColumn1:DataGridColumn;
      
      public var _WelfarePanel_DataGridColumn2:DataGridColumn;
      
      private var _899629965sliver:Canvas;
      
      private var _855994390diamondAward3:RendererItemArray;
      
      private var _1970442464diamondNum2:Label;
      
      private var _2050198028goldAward1:RendererItemArray;
      
      private var _949764825idTabBtnLC2:BasicGlowButton;
      
      private var _1759725291idViewLists:List;
      
      public var _WelfarePanel_Label1:Label;
      
      public var _WelfarePanel_Label2:Label;
      
      public var _WelfarePanel_Label3:Label;
      
      public var _WelfarePanel_Label4:Label;
      
      public var _WelfarePanel_Label5:Label;
      
      private var _1970084041diamondBtn1:BasicDelayButton;
      
      private var _1080741439crystalNum1:Label;
      
      private var _99152790sliverBtn3:BasicDelayButton;
      
      private var _1638814005idPoint:BoxLabel;
      
      private var numArray:Object = {
         "sliver":0,
         "gold":0,
         "crystal":0,
         "diamond":0
      };
      
      private var _1295920508goldTime1:Label;
      
      private var _418938955crystalAward2:RendererItemArray;
      
      private var _1237527122sliverTime2:Label;
      
      private var _2035880405goldBtn1:BasicDelayButton;
      
      private var _98794369sliverNum2:Label;
      
      private var _861939054crystalTime1:Label;
      
      private var _1788695790idTabBtn0:BasicGlowButton;
      
      public var _WelfarePanel_Label35:Label;
      
      private var _855994393diamondAward0:RendererItemArray;
      
      internal var monthlyWelfarePlan2Intro:String = Language.WELFAREPANEL_U[21];
      
      private var _959359504diamondTime1:Label;
      
      private var _2036238829goldNum3:Label;
      
      private var _822732856sliverAward2:RendererItemArray;
      
      private var _204232454goldNum:Label;
      
      private var _3178592gold:Canvas;
      
      private var _1047561014crystal:Canvas;
      
      private var _944522635allAward1:RendererItemArray;
      
      private var _1060469145idGainMonthlyWelfare:BasicDelayButton;
      
      private var _1020431503idMonthlyWelfarePlan2:RendererItemMonthlyWelfare;
      
      private var _490626670diamondNum:Label;
      
      private var _98794370sliverNum1:Label;
      
      private var _657862470crystalBtn:DelayButton;
      
      private var _1911223459idThisMonPoint:BasicTxtButton;
      
      private var _418938953crystalAward0:RendererItemArray;
      
      private var _2050198027goldAward2:RendererItemArray;
      
      private var _949764823idTabBtnLC0:BasicGlowButton;
      
      private var _1970442465diamondNum3:Label;
      
      private var _1081099860crystalBtn2:BasicDelayButton;
      
      private var _949764826idTabBtnLC3:BasicGlowButton;
      
      private var _2144564220managePlanInfo:BasicTxtButton;
      
      public var isInited:Boolean = false;
      
      mx_internal var _watchers:Array = [];
      
      private var _plan2Doubling:Number = 0;
      
      private var _855994391diamondAward2:RendererItemArray;
      
      private var planNum:int = 0;
      
      private var _719164643idMonthlyWelfarePlan2Intro:IntroText;
      
      private var _1970084042diamondBtn2:BasicDelayButton;
      
      private var _1080741437crystalNum3:Label;
      
      private var _861939056crystalTime3:Label;
      
      private var _1644172819idViews:ViewStack;
      
      private var _301946299wlListItemArr:Array = new Array();
      
      private var _657874032crystalNum:Label;
      
      private var _1776100761labalTotalCost:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _98794368sliverNum3:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":672,
               "height":444,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WelfarePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"idViewLists",
                  "events":{
                     "change":"__idViewLists_change",
                     "creationComplete":"__idViewLists_creationComplete"
                  },
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "10";
                     this.backgroundAlpha = 0;
                     this.fontSize = 12;
                     this.fontWeight = "bold";
                     this.left = "9";
                     this.textRollOverColor = 16366965;
                     this.textSelectedColor = 1961723;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":107};
                  }
               }),new UIComponentDescriptor({
                  "type":VRule,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":120};
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"idViews",
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "10";
                     this.top = "40";
                     this.left = "130";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___WelfarePanel_Canvas1_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "horizontalScrollPolicy":"off",
                              "verticalScrollPolicy":"off",
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"_WelfarePanel_BasicTxtButton1",
                                 "stylesFactory":function():void
                                 {
                                    this.fontSize = 14;
                                    this.color = 16407301;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":24,
                                       "y":10,
                                       "width":100,
                                       "height":30
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"_WelfarePanel_BasicTxtButton2",
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalCenter = "0";
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":480,
                                       "height":75,
                                       "y":30
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_WelfarePanel_Label1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16776960;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":65,
                                       "x":190,
                                       "y":104
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"idLastMonPoint",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":255,
                                       "y":104,
                                       "width":40,
                                       "label":"20000"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_WelfarePanel_Label2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16776960;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":15,
                                       "x":295,
                                       "y":104
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_WelfarePanel_Label3",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16776960;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":65,
                                       "x":190,
                                       "y":124
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"idThisMonPoint",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":255,
                                       "y":124,
                                       "width":40,
                                       "label":"100"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_WelfarePanel_Label4",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16776960;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":15,
                                       "x":295,
                                       "y":124
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"idDaysOfMonthDiff",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":100,
                                       "height":22,
                                       "x":320,
                                       "y":104
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"_WelfarePanel_BasicTxtButton6",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":320,
                                       "y":124,
                                       "width":55
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BoxLabel,
                                 "id":"idPoint",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "left";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":50,
                                       "height":18,
                                       "x":376,
                                       "y":124
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"_WelfarePanel_BasicGlowButton1",
                                 "events":{"click":"___WelfarePanel_BasicGlowButton1_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "center";
                                    this.fontSize = 12;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"BtnStdRed",
                                       "width":50,
                                       "height":19,
                                       "x":428,
                                       "y":124
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtn0",
                                 "events":{"click":"__idTabBtn0_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":24,
                                       "y":140,
                                       "width":80,
                                       "selected":true,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtn1",
                                 "events":{"click":"__idTabBtn1_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":106,
                                       "y":140,
                                       "width":80,
                                       "selected":false,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":ViewStack,
                                 "id":"idMonthlyWelfareViews",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "10";
                                    this.top = "160";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":213,
                                       "width":503,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"idMonthlyWelfarePlan1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "7";
                                                      this.top = "4";
                                                      this.paddingTop = 4;
                                                      this.paddingBottom = 4;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "variableRowHeight":true,
                                                         "draggableColumns":false,
                                                         "percentHeight":100,
                                                         "percentWidth":100,
                                                         "columns":[_WelfarePanel_DataGridColumn1_i(),_WelfarePanel_DataGridColumn2_i()]
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "events":{"show":"___WelfarePanel_Canvas3_show"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":IntroText,
                                                   "id":"_WelfarePanel_IntroText1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalCenter = "0";
                                                      this.top = "3";
                                                      this.bottom = "2";
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"TxtHorStyle",
                                                         "horizontalScrollPolicy":"off",
                                                         "verticalScrollPolicy":"off",
                                                         "width":470,
                                                         "height":30
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":IntroText,
                                                   "id":"idMonthlyWelfarePlan2Intro",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.top = "35";
                                                      this.horizontalCenter = "0";
                                                      this.color = 16776960;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"TxtHorStyle",
                                                         "horizontalScrollPolicy":"off",
                                                         "verticalScrollPolicy":"off",
                                                         "width":430,
                                                         "height":46
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_WelfarePanel_Label5",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "width":130,
                                                         "height":22,
                                                         "x":28,
                                                         "y":98
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemMonthlyWelfare,
                                                   "id":"idMonthlyWelfarePlan2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":48,
                                                         "y":115
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"idGainMonthlyWelfare",
                                                   "events":{"click":"__idGainMonthlyWelfare_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22,
                                                         "x":226.5,
                                                         "y":161
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
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___WelfarePanel_Canvas4_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "horizontalScrollPolicy":"off",
                              "verticalScrollPolicy":"off",
                              "styleName":"CanvasBorder",
                              "x":25,
                              "y":-8,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"managePlanInfo",
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalCenter = "0";
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":480,
                                       "height":88,
                                       "y":9
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"_WelfarePanel_BasicTxtButton8",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":347,
                                       "y":97,
                                       "width":55
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BoxLabel,
                                 "id":"idPointLC",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "left";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":50,
                                       "height":18,
                                       "x":403,
                                       "y":97
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"labalTotalCost",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16776960;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":26,
                                       "y":105,
                                       "width":313,
                                       "visible":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtnLC0",
                                 "events":{"click":"__idTabBtnLC0_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":24,
                                       "y":129,
                                       "width":80,
                                       "selected":true,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtnLC1",
                                 "events":{"click":"__idTabBtnLC1_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":106,
                                       "y":129,
                                       "width":80,
                                       "selected":false,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtnLC2",
                                 "events":{"click":"__idTabBtnLC2_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":188,
                                       "y":129,
                                       "width":80,
                                       "selected":false,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtnLC3",
                                 "events":{"click":"__idTabBtnLC3_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":270,
                                       "y":129,
                                       "width":80,
                                       "selected":false,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"idTabBtnLC4",
                                 "events":{"click":"__idTabBtnLC4_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":352,
                                       "y":129,
                                       "width":80,
                                       "selected":false,
                                       "styleName":"HorizontalTab",
                                       "height":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":ViewStack,
                                 "id":"idFinancingVS",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "10";
                                    this.top = "150";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":226,
                                       "width":503,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"sliver",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverNum",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.left = "17";
                                                      this.top = "10";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"sliverAward0",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "27";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":DelayButton,
                                                   "id":"sliverBtn",
                                                   "events":{"click":"__sliverBtn_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "36";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":15000,
                                                         "styleName":"BtnStdRed"
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HRule,
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.right = "10";
                                                      this.top = "67";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"sliverAward1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "80";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverNum1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "100";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverTime1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "84";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"sliverBtn1",
                                                   "events":{"click":"__sliverBtn1_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "81";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"sliverAward2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "126";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverNum2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "146";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverTime2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "130";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"sliverBtn2",
                                                   "events":{"click":"__sliverBtn2_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "128";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"sliverAward3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "175";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverNum3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "195";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sliverTime3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "180";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"sliverBtn3",
                                                   "events":{"click":"__sliverBtn3_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "174";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"gold",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldNum",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.left = "17";
                                                      this.top = "10";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"goldAward0",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "27";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":DelayButton,
                                                   "id":"goldBtn",
                                                   "events":{"click":"__goldBtn_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "36";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":15000,
                                                         "styleName":"BtnStdRed"
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HRule,
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.right = "10";
                                                      this.top = "67";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"goldAward1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "80";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldNum1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "100";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldTime1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "84";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"goldBtn1",
                                                   "events":{"click":"__goldBtn1_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "81";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"goldAward2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "126";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldNum2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "146";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldTime2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "130";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"goldBtn2",
                                                   "events":{"click":"__goldBtn2_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "128";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"goldAward3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "175";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldNum3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "195";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"goldTime3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "180";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"goldBtn3",
                                                   "events":{"click":"__goldBtn3_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "174";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"crystal",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalNum",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.left = "17";
                                                      this.top = "10";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"crystalAward0",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "27";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":DelayButton,
                                                   "id":"crystalBtn",
                                                   "events":{"click":"__crystalBtn_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "36";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":15000,
                                                         "styleName":"BtnStdRed"
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HRule,
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.right = "10";
                                                      this.top = "67";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"crystalAward1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "80";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalNum1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "100";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalTime1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "84";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"crystalBtn1",
                                                   "events":{"click":"__crystalBtn1_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "81";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"crystalAward2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "126";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalNum2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "146";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalTime2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "130";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"crystalBtn2",
                                                   "events":{"click":"__crystalBtn2_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "128";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"crystalAward3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "175";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalNum3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "195";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"crystalTime3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "180";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"crystalBtn3",
                                                   "events":{"click":"__crystalBtn3_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "174";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"diamond",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondNum",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.left = "17";
                                                      this.top = "10";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"diamondAward0",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "27";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":DelayButton,
                                                   "id":"diamondBtn",
                                                   "events":{"click":"__diamondBtn_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "36";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":15000,
                                                         "styleName":"BtnStdRed"
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HRule,
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.right = "10";
                                                      this.top = "67";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"diamondAward1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "80";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondNum1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "100";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondTime1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "84";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"diamondBtn1",
                                                   "events":{"click":"__diamondBtn1_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "81";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"diamondAward2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "126";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondNum2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "146";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondTime2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "130";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"diamondBtn2",
                                                   "events":{"click":"__diamondBtn2_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "128";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"diamondAward3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "175";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondNum3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.top = "195";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "htmlText":"",
                                                         "visible":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"diamondTime3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.right = "77";
                                                      this.top = "180";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"htmlText":""};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"diamondBtn3",
                                                   "events":{"click":"__diamondBtn3_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "174";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22
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
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_WelfarePanel_Label35",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "10";
                                                      this.color = 16777215;
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"allAward0",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "27";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RendererItemArray,
                                                   "id":"allAward1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "17";
                                                      this.top = "75";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"visible":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"allLabel",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.right = "100";
                                                      this.top = "130";
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"height":22};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicDelayButton,
                                                   "id":"allBtn",
                                                   "events":{"click":"__allBtn_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.fontSize = 12;
                                                      this.right = "20";
                                                      this.top = "128";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "clickDelay":2000,
                                                         "styleName":"BtnStdRed",
                                                         "width":50,
                                                         "height":22,
                                                         "enabled":false
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
                     })]};
                  }
               })]
            };
         }
      });
      
      private var _99152792sliverBtn1:BasicDelayButton;
      
      public var _WelfarePanel_BasicTxtButton6:BasicTxtButton;
      
      private var _1788695791idTabBtn1:BasicGlowButton;
      
      public var _WelfarePanel_BasicTxtButton2:BasicTxtButton;
      
      private var _1237527123sliverTime3:Label;
      
      public function WelfarePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 672;
         this.height = 444;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 308;
         this.addEventListener("creationComplete",___WelfarePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WelfarePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondAward2() : RendererItemArray
      {
         return this._855994391diamondAward2;
      }
      
      public function __idTabBtnLC3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3,idFinancingVS);
      }
      
      private function daysInMonth(param1:Date) : int
      {
         var _loc2_:int = param1.getMonth();
         var _loc3_:int = param1.getFullYear();
         var _loc4_:Array = [31,28,31,30,31,30,31,31,30,31,30,31];
         if(_loc2_ == 1 && isLeapYear(_loc3_))
         {
            _loc4_[1] += 1;
         }
         return _loc4_[_loc2_];
      }
      
      public function set managePlanInfo(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._2144564220managePlanInfo;
         if(_loc2_ !== param1)
         {
            this._2144564220managePlanInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"managePlanInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverAward0() : RendererItemArray
      {
         return this._822732858sliverAward0;
      }
      
      [Bindable(event="propertyChange")]
      public function get managePlanInfo() : BasicTxtButton
      {
         return this._2144564220managePlanInfo;
      }
      
      public function set diamondTime2(param1:Label) : void
      {
         var _loc2_:Object = this._959359505diamondTime2;
         if(_loc2_ !== param1)
         {
            this._959359505diamondTime2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondTime2",_loc2_,param1));
         }
      }
      
      public function set diamondTime3(param1:Label) : void
      {
         var _loc2_:Object = this._959359506diamondTime3;
         if(_loc2_ !== param1)
         {
            this._959359506diamondTime3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondTime3",_loc2_,param1));
         }
      }
      
      public function set idViews(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1644172819idViews;
         if(_loc2_ !== param1)
         {
            this._1644172819idViews = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idViews",_loc2_,param1));
         }
      }
      
      public function set diamondTime1(param1:Label) : void
      {
         var _loc2_:Object = this._959359504diamondTime1;
         if(_loc2_ !== param1)
         {
            this._959359504diamondTime1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondTime1",_loc2_,param1));
         }
      }
      
      public function set sliverNum(param1:Label) : void
      {
         var _loc2_:Object = this._280281581sliverNum;
         if(_loc2_ !== param1)
         {
            this._280281581sliverNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalAward0() : RendererItemArray
      {
         return this._418938953crystalAward0;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalAward2() : RendererItemArray
      {
         return this._418938955crystalAward2;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalAward3() : RendererItemArray
      {
         return this._418938956crystalAward3;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalAward1() : RendererItemArray
      {
         return this._418938954crystalAward1;
      }
      
      [Bindable(event="propertyChange")]
      public function get gold() : Canvas
      {
         return this._3178592gold;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverBtn2() : BasicDelayButton
      {
         return this._99152791sliverBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverBtn3() : BasicDelayButton
      {
         return this._99152790sliverBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondBtn() : DelayButton
      {
         return this._490638232diamondBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalNum() : Label
      {
         return this._657874032crystalNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverBtn1() : BasicDelayButton
      {
         return this._99152792sliverBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliver() : Canvas
      {
         return this._899629965sliver;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverNum2() : Label
      {
         return this._98794369sliverNum2;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverNum3() : Label
      {
         return this._98794368sliverNum3;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverNum1() : Label
      {
         return this._98794370sliverNum1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idMonthlyWelfarePlan2() : RendererItemMonthlyWelfare
      {
         return this._1020431503idMonthlyWelfarePlan2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idMonthlyWelfarePlan1() : DataGrid
      {
         return this._1020431502idMonthlyWelfarePlan1;
      }
      
      public function onGetMonthlyWelfare(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:ArrayCollection = null;
         var _loc8_:* = undefined;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         idPoint.text = param1.point;
         idLastMonPoint.text = param1.prevMonthGolds;
         idThisMonPoint.text = param1.thisMonthGolds;
         var _loc2_:Object = param1.welfareList;
         _plan2Doubling = Number(param1.doubling);
         _monthlyWelfareEnable = param1.welfareEnable ? true : false;
         idGainMonthlyWelfare.enabled = _monthlyWelfareEnable;
         if(!_monthlyWelfareEnable)
         {
            idGainMonthlyWelfare.label = Language.WELFAREPANEL_U[25];
         }
         var _loc3_:ArrayCollection = new ArrayCollection();
         if(_loc2_ != null)
         {
            for(_loc4_ in _loc2_)
            {
               _loc5_ = _loc2_[_loc4_];
               _loc6_ = new Object();
               _loc6_.point = _loc5_.point;
               _loc7_ = new ArrayCollection();
               if(_loc5_.plan == "p2")
               {
                  monthlyWelfarePlan2Intro = Language.WELFAREPANEL_U[20].replace("{num}",_loc5_.point);
               }
               for(_loc8_ in _loc5_.award)
               {
                  _loc9_ = _loc5_.award[_loc8_];
                  _loc10_ = new Object();
                  _loc10_.type = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc10_.itemId = _loc9_.itemId;
                  _loc10_.stackNum = _loc5_.plan == "p1" ? _loc9_.stackNum : Number(_loc9_.stackNum) * _plan2Doubling;
                  _loc10_.quality = _loc9_.quality;
                  _loc7_.addItem(_loc10_);
                  if(_loc5_.plan == "p2")
                  {
                     monthlyWelfarePlan2Intro += GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc9_.itemId].name + "*" + _loc9_.stackNum + "\t";
                  }
               }
               _loc6_.array = _loc7_;
               if(_loc5_.plan == "p1")
               {
                  _loc3_.addItem(_loc6_);
               }
               else
               {
                  monthlyWelfarePlan2.addItem(_loc7_);
               }
            }
         }
         idMonthlyWelfarePlan1.dataProvider = _loc3_;
      }
      
      public function set crystalAward3(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._418938956crystalAward3;
         if(_loc2_ !== param1)
         {
            this._418938956crystalAward3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalAward3",_loc2_,param1));
         }
      }
      
      private function _WelfarePanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemMonthlyWelfare;
         return _loc1_;
      }
      
      public function __crystalBtn3_click(param1:MouseEvent) : void
      {
         takeManageAward("crystal",3);
      }
      
      public function set sliverTime1(param1:Label) : void
      {
         var _loc2_:Object = this._1237527121sliverTime1;
         if(_loc2_ !== param1)
         {
            this._1237527121sliverTime1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverTime1",_loc2_,param1));
         }
      }
      
      public function set sliverTime2(param1:Label) : void
      {
         var _loc2_:Object = this._1237527122sliverTime2;
         if(_loc2_ !== param1)
         {
            this._1237527122sliverTime2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverTime2",_loc2_,param1));
         }
      }
      
      public function set crystalAward2(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._418938955crystalAward2;
         if(_loc2_ !== param1)
         {
            this._418938955crystalAward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalAward2",_loc2_,param1));
         }
      }
      
      public function set sliverTime3(param1:Label) : void
      {
         var _loc2_:Object = this._1237527123sliverTime3;
         if(_loc2_ !== param1)
         {
            this._1237527123sliverTime3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverTime3",_loc2_,param1));
         }
      }
      
      public function toggleLists() : void
      {
         if(wlListItemArr.length == 1)
         {
            return;
         }
         idViews.selectedIndex = idViewLists.selectedIndex;
      }
      
      public function set crystalAward0(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._418938953crystalAward0;
         if(_loc2_ !== param1)
         {
            this._418938953crystalAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalAward0",_loc2_,param1));
         }
      }
      
      public function set crystalAward1(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._418938954crystalAward1;
         if(_loc2_ !== param1)
         {
            this._418938954crystalAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalAward1",_loc2_,param1));
         }
      }
      
      public function set gold(param1:Canvas) : void
      {
         var _loc2_:Object = this._3178592gold;
         if(_loc2_ !== param1)
         {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",_loc2_,param1));
         }
      }
      
      public function __idTabBtnLC2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2,idFinancingVS);
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondBtn1() : BasicDelayButton
      {
         return this._1970084041diamondBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondBtn3() : BasicDelayButton
      {
         return this._1970084043diamondBtn3;
      }
      
      public function onShowCurPoint(param1:int) : void
      {
         if(idViews.selectedIndex == 0)
         {
            idPoint.text = "" + param1;
         }
         else
         {
            idPointLC.text = "" + param1;
         }
      }
      
      private function _WelfarePanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WelfarePanel_DataGridColumn2 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.itemRenderer = _WelfarePanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_WelfarePanel_DataGridColumn2",_WelfarePanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function set diamondBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._490638232diamondBtn;
         if(_loc2_ !== param1)
         {
            this._490638232diamondBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondBtn",_loc2_,param1));
         }
      }
      
      public function onGetManagePlanInfo(param1:Object) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         if(param1.type == "all")
         {
            if(!this[param1.type + "Award0"].hasData())
            {
               _loc3_ = new Array();
               _loc4_ = new Array();
               for(_loc5_ in param1["award"])
               {
                  if(_loc3_.length < 10)
                  {
                     _loc3_[_loc3_.length] = param1["award"][_loc5_];
                  }
                  else
                  {
                     _loc4_[_loc4_.length] = param1["award"][_loc5_];
                  }
               }
               this[param1.type + "Award0"].data = {"array":_loc3_};
               if(_loc4_.length > 0)
               {
                  this[param1.type + "Award1"].visible = true;
                  this[param1.type + "Award1"].data = {"array":_loc4_};
               }
            }
            planNum = param1.num;
            allLabel.text = Language.WELFAREPANEL_U[34].replace("{num}",param1.num);
            if(param1.num >= 4 && !param1.take0)
            {
               allBtn.enabled = true;
               allBtn.label = Language.WELFAREPANEL_U[16];
            }
            else
            {
               allBtn.enabled = false;
               if(param1.take0)
               {
                  allBtn.label = Language.WELFAREPANEL_U[25];
               }
               else
               {
                  allBtn.label = Language.WELFAREPANEL_U[16];
               }
            }
            if(param1.overTake)
            {
               allBtn.enabled = false;
               allBtn.label = Language.WELFAREPANEL_U[16];
            }
            return;
         }
         if(!this[param1.type + "Award0"].hasData())
         {
            this[param1.type + "Award0"].isManagePlan = true;
            this[param1.type + "Award1"].isManagePlan = true;
            this[param1.type + "Award2"].isManagePlan = true;
            this[param1.type + "Award3"].isManagePlan = true;
            this[param1.type + "Award0"].data = {
               "array":param1.award0,
               "point":param1.awardPoint
            };
            this[param1.type + "Award1"].data = {
               "array":param1.award1,
               "point":param1.awardPoint
            };
            this[param1.type + "Award2"].data = {
               "array":param1.award2,
               "point":param1.awardPoint
            };
            this[param1.type + "Award3"].data = {
               "array":param1.award3,
               "point":param1.awardPoint
            };
         }
         if(param1.isBuy)
         {
            this[param1.type + "Num1"].x = 20 + this[param1.type + "Award1"].width;
            this[param1.type + "Num2"].x = 20 + this[param1.type + "Award2"].width;
            this[param1.type + "Num3"].x = 20 + this[param1.type + "Award3"].width;
            this[param1.type + "Num1"].htmlText = "×" + param1.num;
            this[param1.type + "Num2"].htmlText = "×" + param1.num;
            this[param1.type + "Num3"].htmlText = "×" + param1.num;
            this[param1.type + "Num1"].visible = true;
            this[param1.type + "Num2"].visible = true;
            this[param1.type + "Num3"].visible = true;
            this[param1.type + "Time1"].htmlText = Language.WELFAREPANEL_U[37].replace("{day}",param1.leftTime1);
            this[param1.type + "Time2"].htmlText = Language.WELFAREPANEL_U[37].replace("{day}",param1.leftTime2);
            this[param1.type + "Time3"].htmlText = Language.WELFAREPANEL_U[37].replace("{day}",param1.leftTime3);
            this[param1.type + "Btn"].label = Language.WELFAREPANEL_U[38].replace("{num}",param1.num);
            numArray[param1.type] = param1.num;
            if(param1.num == 3)
            {
               this[param1.type + "Btn"].enabled = false;
            }
            if(param1.leftTime1 > 0)
            {
               this[param1.type + "Btn1"].enabled = false;
            }
            else if(param1.take1)
            {
               this[param1.type + "Btn1"].enabled = false;
               this[param1.type + "Btn1"].label = Language.WELFAREPANEL_U[25];
            }
            else
            {
               this[param1.type + "Btn1"].enabled = true;
               this[param1.type + "Btn1"].label = Language.WELFAREPANEL_U[16];
            }
            if(param1.leftTime2 > 0)
            {
               this[param1.type + "Btn2"].enabled = false;
            }
            else if(param1.take2)
            {
               this[param1.type + "Btn2"].enabled = false;
               this[param1.type + "Btn2"].label = Language.WELFAREPANEL_U[25];
            }
            else
            {
               this[param1.type + "Btn2"].enabled = true;
               this[param1.type + "Btn2"].label = Language.WELFAREPANEL_U[16];
            }
            if(param1.leftTime3 > 0)
            {
               this[param1.type + "Btn3"].enabled = false;
            }
            else if(param1.take3)
            {
               this[param1.type + "Btn3"].enabled = false;
               this[param1.type + "Btn3"].label = Language.WELFAREPANEL_U[25];
            }
            else
            {
               this[param1.type + "Btn3"].enabled = true;
               this[param1.type + "Btn3"].label = Language.WELFAREPANEL_U[16];
            }
         }
         else
         {
            this[param1.type + "Btn"].enabled = true;
            this[param1.type + "Btn"].label = Language.WELFAREPANEL_U[36];
            this[param1.type + "Btn1"].enabled = false;
            this[param1.type + "Btn2"].enabled = false;
            this[param1.type + "Btn3"].enabled = false;
            this[param1.type + "Time1"].htmlText = Language.WELFAREPANEL_U[40].replace("{time}",timeToDate(param1.takeTime1));
            this[param1.type + "Time2"].htmlText = Language.WELFAREPANEL_U[40].replace("{time}",timeToDate(param1.takeTime2));
            this[param1.type + "Time3"].htmlText = Language.WELFAREPANEL_U[40].replace("{time}",timeToDate(param1.takeTime3));
            this[param1.type + "Num1"].visible = false;
            this[param1.type + "Num2"].visible = false;
            this[param1.type + "Num3"].visible = false;
            numArray[param1.type] = 0;
         }
         this[param1.type + "Num"].htmlText = Language.WELFAREPANEL_U[35].replace("{name}",param1.typeName).replace("{num}",param1.needPoint);
         var _loc2_:String = timeToDate2(param1.startTime) + "～" + timeToDate2(param1.endTime);
         if(param1.openFlag == 0)
         {
            managePlanInfo.htmlText = Language.WELFAREPANEL_U[27].replace("{time}",_loc2_).replace("{deadLine}",timeToDate2(param1.takeEndTime));
            labalTotalCost.visible = false;
         }
         else
         {
            _loc6_ = timeToDate2(param1.openStart) + "～" + timeToDate2(param1.openEnd);
            managePlanInfo.htmlText = Language.WELFAREPANEL_U[42].replace("{time}",_loc2_).replace("{deadLine}",timeToDate2(param1.takeEndTime)).replace("{timeCost}",_loc6_).replace("{total}",param1.openNumber);
         }
      }
      
      public function set sliverBtn1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._99152792sliverBtn1;
         if(_loc2_ !== param1)
         {
            this._99152792sliverBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idMonthlyWelfareViews() : ViewStack
      {
         return this._1025887444idMonthlyWelfareViews;
      }
      
      public function onGetWelfareData(param1:Object) : void
      {
         if(param1)
         {
            wlListItemArr = new Array();
            if(param1.showMonthly)
            {
               wlListItemArr.push(Language.WELFAREPANEL_U[1]);
               idViews.selectedIndex = 0;
            }
            if(param1.showPlan)
            {
               wlListItemArr.push(Language.WELFAREPANEL_U[2]);
               if(wlListItemArr.length > 1)
               {
                  idViews.selectedIndex = 0;
               }
               else
               {
                  idViews.selectedIndex = 1;
               }
            }
            switch(idViews.selectedIndex)
            {
               case 0:
                  initMonthlyWelfare();
                  break;
               case 1:
                  initManagePlan();
            }
         }
      }
      
      public function set crystalNum(param1:Label) : void
      {
         var _loc2_:Object = this._657874032crystalNum;
         if(_loc2_ !== param1)
         {
            this._657874032crystalNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondNum3() : Label
      {
         return this._1970442465diamondNum3;
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondBtn2() : BasicDelayButton
      {
         return this._1970084042diamondBtn2;
      }
      
      public function set sliverBtn3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._99152790sliverBtn3;
         if(_loc2_ !== param1)
         {
            this._99152790sliverBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondNum2() : Label
      {
         return this._1970442464diamondNum2;
      }
      
      public function set allAward0(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._944522636allAward0;
         if(_loc2_ !== param1)
         {
            this._944522636allAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allAward0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverBtn() : DelayButton
      {
         return this._280293143sliverBtn;
      }
      
      public function set allAward1(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._944522635allAward1;
         if(_loc2_ !== param1)
         {
            this._944522635allAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allAward1",_loc2_,param1));
         }
      }
      
      public function set sliver(param1:Canvas) : void
      {
         var _loc2_:Object = this._899629965sliver;
         if(_loc2_ !== param1)
         {
            this._899629965sliver = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliver",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondNum1() : Label
      {
         return this._1970442463diamondNum1;
      }
      
      private function initMonthlyWelfare() : void
      {
         daysOfMonthDiff();
         _core.remote.getMonthlyWelfare();
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtn0() : BasicGlowButton
      {
         return this._1788695790idTabBtn0;
      }
      
      public function takeManageAward(param1:String, param2:int) : void
      {
         _core.remote.call("takeManagePlanAward",null,param1,param2);
      }
      
      [Bindable(event="propertyChange")]
      public function get allBtn() : BasicDelayButton
      {
         return this._1414914821allBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtn1() : BasicGlowButton
      {
         return this._1788695791idTabBtn1;
      }
      
      public function set sliverBtn2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._99152791sliverBtn2;
         if(_loc2_ !== param1)
         {
            this._99152791sliverBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverBtn2",_loc2_,param1));
         }
      }
      
      public function __goldBtn3_click(param1:MouseEvent) : void
      {
         takeManageAward("gold",3);
      }
      
      public function timeToDate2(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         if(param1)
         {
            _loc2_ = new Date(param1);
         }
         return _loc2_.getFullYear() + "/" + (_loc2_.getMonth() + 1) + "/" + _loc2_.getDate() + " " + _loc2_.getHours() + ":" + _loc2_.getMinutes();
      }
      
      public function set sliverNum2(param1:Label) : void
      {
         var _loc2_:Object = this._98794369sliverNum2;
         if(_loc2_ !== param1)
         {
            this._98794369sliverNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverNum2",_loc2_,param1));
         }
      }
      
      public function set goldTime2(param1:Label) : void
      {
         var _loc2_:Object = this._1295920507goldTime2;
         if(_loc2_ !== param1)
         {
            this._1295920507goldTime2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldTime2",_loc2_,param1));
         }
      }
      
      public function set sliverNum1(param1:Label) : void
      {
         var _loc2_:Object = this._98794370sliverNum1;
         if(_loc2_ !== param1)
         {
            this._98794370sliverNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverNum1",_loc2_,param1));
         }
      }
      
      public function set goldTime3(param1:Label) : void
      {
         var _loc2_:Object = this._1295920506goldTime3;
         if(_loc2_ !== param1)
         {
            this._1295920506goldTime3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldTime3",_loc2_,param1));
         }
      }
      
      private function _WelfarePanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WelfarePanel_DataGridColumn1 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.sortCompareFunction = sortMonthlyWelfarePoint;
         _loc1_.dataField = "point";
         _loc1_.width = 120;
         _loc1_.labelFunction = monWelfareAward;
         _loc1_.setStyle("textIndent",2);
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_WelfarePanel_DataGridColumn1",_WelfarePanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function init() : void
      {
         isInited = true;
         _core.remote.call("getWelfareData",new Responder(onGetWelfareData),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get idViewLists() : List
      {
         return this._1759725291idViewLists;
      }
      
      public function set sliverNum3(param1:Label) : void
      {
         var _loc2_:Object = this._98794368sliverNum3;
         if(_loc2_ !== param1)
         {
            this._98794368sliverNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverNum3",_loc2_,param1));
         }
      }
      
      public function set idMonthlyWelfarePlan1(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1020431502idMonthlyWelfarePlan1;
         if(_loc2_ !== param1)
         {
            this._1020431502idMonthlyWelfarePlan1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idMonthlyWelfarePlan1",_loc2_,param1));
         }
      }
      
      private function gainMonthlyWelfare() : void
      {
         _core.remote.call("gainMonthlyWelfare",new Responder(onGainMonthlyWelfare));
      }
      
      public function set goldTime1(param1:Label) : void
      {
         var _loc2_:Object = this._1295920508goldTime1;
         if(_loc2_ !== param1)
         {
            this._1295920508goldTime1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldTime1",_loc2_,param1));
         }
      }
      
      public function set idMonthlyWelfarePlan2(param1:RendererItemMonthlyWelfare) : void
      {
         var _loc2_:Object = this._1020431503idMonthlyWelfarePlan2;
         if(_loc2_ !== param1)
         {
            this._1020431503idMonthlyWelfarePlan2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idMonthlyWelfarePlan2",_loc2_,param1));
         }
      }
      
      private function _WelfarePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_BasicTitleCanvas1.text = param1;
         },"_WelfarePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return wlListItemArr;
         },function(param1:Object):void
         {
            idViewLists.dataProvider = param1;
         },"idViewLists.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_BasicTxtButton1.htmlText = param1;
         },"_WelfarePanel_BasicTxtButton1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_BasicTxtButton2.htmlText = param1;
         },"_WelfarePanel_BasicTxtButton2.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_Label1.text = param1;
         },"_WelfarePanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_Label2.text = param1;
         },"_WelfarePanel_Label2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_Label3.text = param1;
         },"_WelfarePanel_Label3.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_Label4.text = param1;
         },"_WelfarePanel_Label4.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_BasicTxtButton6.label = param1;
         },"_WelfarePanel_BasicTxtButton6.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_BasicGlowButton1.label = param1;
         },"_WelfarePanel_BasicGlowButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtn0.label = param1;
         },"idTabBtn0.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtn1.label = param1;
         },"idTabBtn1.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_DataGridColumn1.headerText = param1;
         },"_WelfarePanel_DataGridColumn1.headerText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_DataGridColumn2.headerText = param1;
         },"_WelfarePanel_DataGridColumn2.headerText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_IntroText1.htmlText = param1;
         },"_WelfarePanel_IntroText1.htmlText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = monthlyWelfarePlan2Intro;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idMonthlyWelfarePlan2Intro.htmlText = param1;
         },"idMonthlyWelfarePlan2Intro.htmlText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_Label5.text = param1;
         },"_WelfarePanel_Label5.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idGainMonthlyWelfare.label = param1;
         },"idGainMonthlyWelfare.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            managePlanInfo.htmlText = param1;
         },"managePlanInfo.htmlText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_BasicTxtButton8.label = param1;
         },"_WelfarePanel_BasicTxtButton8.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            labalTotalCost.text = param1;
         },"labalTotalCost.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtnLC0.label = param1;
         },"idTabBtnLC0.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtnLC1.label = param1;
         },"idTabBtnLC1.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtnLC2.label = param1;
         },"idTabBtnLC2.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtnLC3.label = param1;
         },"idTabBtnLC3.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabBtnLC4.label = param1;
         },"idTabBtnLC4.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sliverNum.htmlText = param1;
         },"sliverNum.htmlText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sliverBtn.label = param1;
         },"sliverBtn.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sliverBtn1.label = param1;
         },"sliverBtn1.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sliverBtn2.label = param1;
         },"sliverBtn2.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sliverBtn3.label = param1;
         },"sliverBtn3.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goldNum.htmlText = param1;
         },"goldNum.htmlText");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goldBtn.label = param1;
         },"goldBtn.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goldBtn1.label = param1;
         },"goldBtn1.label");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goldBtn2.label = param1;
         },"goldBtn2.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goldBtn3.label = param1;
         },"goldBtn3.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            crystalNum.htmlText = param1;
         },"crystalNum.htmlText");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            crystalBtn.label = param1;
         },"crystalBtn.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            crystalBtn1.label = param1;
         },"crystalBtn1.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            crystalBtn2.label = param1;
         },"crystalBtn2.label");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            crystalBtn3.label = param1;
         },"crystalBtn3.label");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            diamondNum.htmlText = param1;
         },"diamondNum.htmlText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            diamondBtn.label = param1;
         },"diamondBtn.label");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            diamondBtn1.label = param1;
         },"diamondBtn1.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            diamondBtn2.label = param1;
         },"diamondBtn2.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            diamondBtn3.label = param1;
         },"diamondBtn3.label");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WelfarePanel_Label35.htmlText = param1;
         },"_WelfarePanel_Label35.htmlText");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[34].replace("{num}",planNum);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            allLabel.text = param1;
         },"allLabel.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WELFAREPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            allBtn.label = param1;
         },"allBtn.label");
         result[48] = binding;
         return result;
      }
      
      public function __allBtn_click(param1:MouseEvent) : void
      {
         takeManageAward("all",0);
      }
      
      [Bindable(event="propertyChange")]
      public function get idPoint() : BoxLabel
      {
         return this._1638814005idPoint;
      }
      
      public function __diamondBtn3_click(param1:MouseEvent) : void
      {
         takeManageAward("diamond",3);
      }
      
      public function __sliverBtn3_click(param1:MouseEvent) : void
      {
         takeManageAward("sliver",3);
      }
      
      public function buyManagePlan(param1:String) : void
      {
         var type:String = param1;
         var useMultiFunc:Function = function(param1:uint):void
         {
            _core.remote.call("buyManagePlan",null,type,Number(param1));
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[33],Language.PLAYER_S[30],useMultiFunc,1,1,3 - Number(numArray[type]));
      }
      
      public function __crystalBtn2_click(param1:MouseEvent) : void
      {
         takeManageAward("crystal",2);
      }
      
      [Bindable(event="propertyChange")]
      public function get diamond() : Canvas
      {
         return this._1655054676diamond;
      }
      
      private function onGainMonthlyWelfare(param1:Number) : void
      {
         trace(param1);
         var _loc2_:String = "";
         switch(param1)
         {
            case 0:
               _loc2_ = Language.WELFAREPANEL_U[22];
               break;
            case 1:
               _loc2_ = Language.WELFAREPANEL_U[23];
               break;
            case 2:
            case 3:
               _loc2_ = Language.WELFAREPANEL_U[24];
         }
         if(_loc2_)
         {
            _core.sysMsg(_loc2_);
         }
         idGainMonthlyWelfare.enabled = false;
         idGainMonthlyWelfare.label = Language.WELFAREPANEL_U[25];
      }
      
      [Bindable(event="propertyChange")]
      public function get idPointLC() : BoxLabel
      {
         return this._1352736404idPointLC;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalTime1() : Label
      {
         return this._861939054crystalTime1;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalTime2() : Label
      {
         return this._861939055crystalTime2;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalTime3() : Label
      {
         return this._861939056crystalTime3;
      }
      
      public function __idTabBtnLC1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1,idFinancingVS);
      }
      
      public function __goldBtn_click(param1:MouseEvent) : void
      {
         buyManagePlan("gold");
      }
      
      public function set diamondBtn1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1970084041diamondBtn1;
         if(_loc2_ !== param1)
         {
            this._1970084041diamondBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondBtn1",_loc2_,param1));
         }
      }
      
      public function set diamondBtn2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1970084042diamondBtn2;
         if(_loc2_ !== param1)
         {
            this._1970084042diamondBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondBtn2",_loc2_,param1));
         }
      }
      
      public function set diamondBtn3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1970084043diamondBtn3;
         if(_loc2_ !== param1)
         {
            this._1970084043diamondBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondNum() : Label
      {
         return this._490626670diamondNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get idGainMonthlyWelfare() : BasicDelayButton
      {
         return this._1060469145idGainMonthlyWelfare;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalBtn1() : BasicDelayButton
      {
         return this._1081099861crystalBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalBtn2() : BasicDelayButton
      {
         return this._1081099860crystalBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalBtn3() : BasicDelayButton
      {
         return this._1081099859crystalBtn3;
      }
      
      public function set idTabBtnLC0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._949764823idTabBtnLC0;
         if(_loc2_ !== param1)
         {
            this._949764823idTabBtnLC0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtnLC0",_loc2_,param1));
         }
      }
      
      public function set idMonthlyWelfareViews(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1025887444idMonthlyWelfareViews;
         if(_loc2_ !== param1)
         {
            this._1025887444idMonthlyWelfareViews = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idMonthlyWelfareViews",_loc2_,param1));
         }
      }
      
      public function set idTabBtnLC1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._949764824idTabBtnLC1;
         if(_loc2_ !== param1)
         {
            this._949764824idTabBtnLC1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtnLC1",_loc2_,param1));
         }
      }
      
      public function set idTabBtnLC2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._949764825idTabBtnLC2;
         if(_loc2_ !== param1)
         {
            this._949764825idTabBtnLC2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtnLC2",_loc2_,param1));
         }
      }
      
      public function set idTabBtnLC3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._949764826idTabBtnLC3;
         if(_loc2_ !== param1)
         {
            this._949764826idTabBtnLC3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtnLC3",_loc2_,param1));
         }
      }
      
      private function daysOfMonthDiff() : void
      {
         var _loc1_:int = daysInMonth(new Date());
         var _loc2_:int = new Date().getDate();
         idDaysOfMonthDiff.htmlText = Language.WELFAREPANEL_U[7].replace("{day}",_loc1_ - _loc2_ + 1);
      }
      
      [Bindable(event="propertyChange")]
      public function get labalTotalCost() : Label
      {
         return this._1776100761labalTotalCost;
      }
      
      public function set idTabBtnLC4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._949764827idTabBtnLC4;
         if(_loc2_ !== param1)
         {
            this._949764827idTabBtnLC4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtnLC4",_loc2_,param1));
         }
      }
      
      public function set diamondNum1(param1:Label) : void
      {
         var _loc2_:Object = this._1970442463diamondNum1;
         if(_loc2_ !== param1)
         {
            this._1970442463diamondNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondNum1",_loc2_,param1));
         }
      }
      
      public function __goldBtn2_click(param1:MouseEvent) : void
      {
         takeManageAward("gold",2);
      }
      
      public function set diamondNum2(param1:Label) : void
      {
         var _loc2_:Object = this._1970442464diamondNum2;
         if(_loc2_ !== param1)
         {
            this._1970442464diamondNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondNum2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalNum1() : Label
      {
         return this._1080741439crystalNum1;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalNum2() : Label
      {
         return this._1080741438crystalNum2;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalNum3() : Label
      {
         return this._1080741437crystalNum3;
      }
      
      public function set diamondNum3(param1:Label) : void
      {
         var _loc2_:Object = this._1970442465diamondNum3;
         if(_loc2_ !== param1)
         {
            this._1970442465diamondNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondNum3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get wlListItemArr() : Array
      {
         return this._301946299wlListItemArr;
      }
      
      public function set sliverBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._280293143sliverBtn;
         if(_loc2_ !== param1)
         {
            this._280293143sliverBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allLabel() : Label
      {
         return this._1780150739allLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBtn1() : BasicDelayButton
      {
         return this._2035880405goldBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBtn2() : BasicDelayButton
      {
         return this._2035880406goldBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBtn3() : BasicDelayButton
      {
         return this._2035880407goldBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBtn() : DelayButton
      {
         return this._204220892goldBtn;
      }
      
      public function set idTabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1788695791idTabBtn1;
         if(_loc2_ !== param1)
         {
            this._1788695791idTabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goldNum1() : Label
      {
         return this._2036238827goldNum1;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldNum2() : Label
      {
         return this._2036238828goldNum2;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldNum3() : Label
      {
         return this._2036238829goldNum3;
      }
      
      public function set idFinancingVS(param1:ViewStack) : void
      {
         var _loc2_:Object = this._962374393idFinancingVS;
         if(_loc2_ !== param1)
         {
            this._962374393idFinancingVS = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idFinancingVS",_loc2_,param1));
         }
      }
      
      public function __diamondBtn2_click(param1:MouseEvent) : void
      {
         takeManageAward("diamond",2);
      }
      
      public function ___WelfarePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get goldAward2() : RendererItemArray
      {
         return this._2050198027goldAward2;
      }
      
      public function timeToDate(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         if(param1)
         {
            _loc2_ = new Date(param1);
         }
         return _loc2_.getFullYear() + "-" + (_loc2_.getMonth() + 1) + "-" + _loc2_.getDate();
      }
      
      public function __idViewLists_change(param1:ListEvent) : void
      {
         toggleLists();
      }
      
      public function set allBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1414914821allBtn;
         if(_loc2_ !== param1)
         {
            this._1414914821allBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allBtn",_loc2_,param1));
         }
      }
      
      public function set idTabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1788695790idTabBtn0;
         if(_loc2_ !== param1)
         {
            this._1788695790idTabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabBtn0",_loc2_,param1));
         }
      }
      
      private function _WelfarePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WELFAREPANEL_U[0];
         _loc1_ = wlListItemArr;
         _loc1_ = Language.WELFAREPANEL_U[1];
         _loc1_ = Language.WELFAREPANEL_U[3];
         _loc1_ = Language.WELFAREPANEL_U[4];
         _loc1_ = Language.WELFAREPANEL_U[6];
         _loc1_ = Language.WELFAREPANEL_U[5];
         _loc1_ = Language.WELFAREPANEL_U[6];
         _loc1_ = Language.WELFAREPANEL_U[9];
         _loc1_ = Language.WELFAREPANEL_U[10];
         _loc1_ = Language.WELFAREPANEL_U[12];
         _loc1_ = Language.WELFAREPANEL_U[17];
         _loc1_ = Language.WELFAREPANEL_U[13];
         _loc1_ = Language.WELFAREPANEL_U[14];
         _loc1_ = Language.WELFAREPANEL_U[18];
         _loc1_ = monthlyWelfarePlan2Intro;
         _loc1_ = Language.WELFAREPANEL_U[19];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[27];
         _loc1_ = Language.WELFAREPANEL_U[9];
         _loc1_ = Language.WELFAREPANEL_U[41];
         _loc1_ = Language.WELFAREPANEL_U[28];
         _loc1_ = Language.WELFAREPANEL_U[29];
         _loc1_ = Language.WELFAREPANEL_U[30];
         _loc1_ = Language.WELFAREPANEL_U[31];
         _loc1_ = Language.WELFAREPANEL_U[32];
         _loc1_ = Language.WELFAREPANEL_U[35];
         _loc1_ = Language.WELFAREPANEL_U[36];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[39];
         _loc1_ = Language.WELFAREPANEL_U[36];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[40];
         _loc1_ = Language.WELFAREPANEL_U[36];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[41];
         _loc1_ = Language.WELFAREPANEL_U[36];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[16];
         _loc1_ = Language.WELFAREPANEL_U[33];
         _loc1_ = Language.WELFAREPANEL_U[34].replace("{num}",planNum);
         _loc1_ = Language.WELFAREPANEL_U[16];
      }
      
      [Bindable(event="propertyChange")]
      public function get goldAward1() : RendererItemArray
      {
         return this._2050198028goldAward1;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldAward3() : RendererItemArray
      {
         return this._2050198026goldAward3;
      }
      
      public function ___WelfarePanel_Canvas1_show(param1:FlexEvent) : void
      {
         initMonthlyWelfare();
      }
      
      public function set goldNum(param1:Label) : void
      {
         var _loc2_:Object = this._204232454goldNum;
         if(_loc2_ !== param1)
         {
            this._204232454goldNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondTime2() : Label
      {
         return this._959359505diamondTime2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idViews() : ViewStack
      {
         return this._1644172819idViews;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldAward0() : RendererItemArray
      {
         return this._2050198029goldAward0;
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondTime1() : Label
      {
         return this._959359504diamondTime1;
      }
      
      public function __sliverBtn2_click(param1:MouseEvent) : void
      {
         takeManageAward("sliver",2);
      }
      
      public function __crystalBtn1_click(param1:MouseEvent) : void
      {
         takeManageAward("crystal",1);
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondTime3() : Label
      {
         return this._959359506diamondTime3;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverNum() : Label
      {
         return this._280281581sliverNum;
      }
      
      public function set idViewLists(param1:List) : void
      {
         var _loc2_:Object = this._1759725291idViewLists;
         if(_loc2_ !== param1)
         {
            this._1759725291idViewLists = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idViewLists",_loc2_,param1));
         }
      }
      
      public function set idDaysOfMonthDiff(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1216049948idDaysOfMonthDiff;
         if(_loc2_ !== param1)
         {
            this._1216049948idDaysOfMonthDiff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idDaysOfMonthDiff",_loc2_,param1));
         }
      }
      
      public function set idMonthlyWelfarePlan2Intro(param1:IntroText) : void
      {
         var _loc2_:Object = this._719164643idMonthlyWelfarePlan2Intro;
         if(_loc2_ !== param1)
         {
            this._719164643idMonthlyWelfarePlan2Intro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idMonthlyWelfarePlan2Intro",_loc2_,param1));
         }
      }
      
      public function __idTabBtnLC0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0,idFinancingVS);
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverTime1() : Label
      {
         return this._1237527121sliverTime1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverTime3() : Label
      {
         return this._1237527123sliverTime3;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverTime2() : Label
      {
         return this._1237527122sliverTime2;
      }
      
      private function monWelfareAward(param1:Object, param2:DataGridColumn) : String
      {
         return param1.point + "<=" + Language.WELFAREPANEL_U[15];
      }
      
      public function __idTabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1,idMonthlyWelfareViews);
      }
      
      public function set idPoint(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._1638814005idPoint;
         if(_loc2_ !== param1)
         {
            this._1638814005idPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allAward0() : RendererItemArray
      {
         return this._944522636allAward0;
      }
      
      public function set crystal(param1:Canvas) : void
      {
         var _loc2_:Object = this._1047561014crystal;
         if(_loc2_ !== param1)
         {
            this._1047561014crystal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allAward1() : RendererItemArray
      {
         return this._944522635allAward1;
      }
      
      public function __goldBtn1_click(param1:MouseEvent) : void
      {
         takeManageAward("gold",1);
      }
      
      [Bindable(event="propertyChange")]
      public function get goldTime1() : Label
      {
         return this._1295920508goldTime1;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldTime2() : Label
      {
         return this._1295920507goldTime2;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldTime3() : Label
      {
         return this._1295920506goldTime3;
      }
      
      public function set crystalBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._657862470crystalBtn;
         if(_loc2_ !== param1)
         {
            this._657862470crystalBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalBtn",_loc2_,param1));
         }
      }
      
      public function sortMonthlyWelfarePoint(param1:Object, param2:Object) : *
      {
         var _loc3_:int = int(param1.point);
         var _loc4_:int = int(param2.point);
         return ObjectUtil.numericCompare(_loc3_,_loc4_);
      }
      
      private function initVBox(param1:int) : void
      {
         var _loc3_:String = null;
         var _loc2_:Boolean = true;
         switch(param1)
         {
            case 0:
               _loc3_ = "sliver";
               break;
            case 1:
               _loc3_ = "gold";
               break;
            case 2:
               _loc3_ = "crystal";
               break;
            case 3:
               _loc3_ = "diamond";
               break;
            case 4:
               _loc3_ = "all";
         }
         if(this[_loc3_ + "Award0"].hasData())
         {
            _loc2_ = false;
         }
         if(_loc3_ == "all")
         {
            _core.remote.call("getFirstAward",null,_loc3_,_loc2_);
         }
         else
         {
            _core.remote.call("getManagePlanInfo",null,_loc3_,_loc2_);
         }
      }
      
      public function set idLastMonPoint(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1567217493idLastMonPoint;
         if(_loc2_ !== param1)
         {
            this._1567217493idLastMonPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idLastMonPoint",_loc2_,param1));
         }
      }
      
      public function set diamond(param1:Canvas) : void
      {
         var _loc2_:Object = this._1655054676diamond;
         if(_loc2_ !== param1)
         {
            this._1655054676diamond = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamond",_loc2_,param1));
         }
      }
      
      public function __diamondBtn1_click(param1:MouseEvent) : void
      {
         takeManageAward("diamond",1);
      }
      
      public function set idThisMonPoint(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1911223459idThisMonPoint;
         if(_loc2_ !== param1)
         {
            this._1911223459idThisMonPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idThisMonPoint",_loc2_,param1));
         }
      }
      
      public function __sliverBtn1_click(param1:MouseEvent) : void
      {
         takeManageAward("sliver",1);
      }
      
      public function __sliverBtn_click(param1:MouseEvent) : void
      {
         buyManagePlan("sliver");
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtnLC0() : BasicGlowButton
      {
         return this._949764823idTabBtnLC0;
      }
      
      public function __diamondBtn_click(param1:MouseEvent) : void
      {
         buyManagePlan("diamond");
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtnLC2() : BasicGlowButton
      {
         return this._949764825idTabBtnLC2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtnLC3() : BasicGlowButton
      {
         return this._949764826idTabBtnLC3;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtnLC4() : BasicGlowButton
      {
         return this._949764827idTabBtnLC4;
      }
      
      public function set crystalTime1(param1:Label) : void
      {
         var _loc2_:Object = this._861939054crystalTime1;
         if(_loc2_ !== param1)
         {
            this._861939054crystalTime1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalTime1",_loc2_,param1));
         }
      }
      
      public function set crystalTime2(param1:Label) : void
      {
         var _loc2_:Object = this._861939055crystalTime2;
         if(_loc2_ !== param1)
         {
            this._861939055crystalTime2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalTime2",_loc2_,param1));
         }
      }
      
      public function set idPointLC(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._1352736404idPointLC;
         if(_loc2_ !== param1)
         {
            this._1352736404idPointLC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPointLC",_loc2_,param1));
         }
      }
      
      public function set crystalTime3(param1:Label) : void
      {
         var _loc2_:Object = this._861939056crystalTime3;
         if(_loc2_ !== param1)
         {
            this._861939056crystalTime3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalTime3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabBtnLC1() : BasicGlowButton
      {
         return this._949764824idTabBtnLC1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idFinancingVS() : ViewStack
      {
         return this._962374393idFinancingVS;
      }
      
      public function __idViewLists_creationComplete(param1:FlexEvent) : void
      {
         idViewLists.selectedIndex = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldNum() : Label
      {
         return this._204232454goldNum;
      }
      
      private function isLeapYear(param1:int) : Boolean
      {
         if(param1 % 100 == 0)
         {
            return param1 % 400 == 0;
         }
         return param1 % 4 == 0;
      }
      
      public function onShowTotalCost(param1:int) : void
      {
         labalTotalCost.visible = true;
         labalTotalCost.htmlText = Language.WELFAREPANEL_U[41].replace("{num}",param1);
      }
      
      public function __idTabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0,idMonthlyWelfareViews);
      }
      
      [Bindable(event="propertyChange")]
      public function get idDaysOfMonthDiff() : BasicTxtButton
      {
         return this._1216049948idDaysOfMonthDiff;
      }
      
      [Bindable(event="propertyChange")]
      public function get idMonthlyWelfarePlan2Intro() : IntroText
      {
         return this._719164643idMonthlyWelfarePlan2Intro;
      }
      
      public function set diamondNum(param1:Label) : void
      {
         var _loc2_:Object = this._490626670diamondNum;
         if(_loc2_ !== param1)
         {
            this._490626670diamondNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondNum",_loc2_,param1));
         }
      }
      
      public function __crystalBtn_click(param1:MouseEvent) : void
      {
         buyManagePlan("crystal");
      }
      
      public function set idGainMonthlyWelfare(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1060469145idGainMonthlyWelfare;
         if(_loc2_ !== param1)
         {
            this._1060469145idGainMonthlyWelfare = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idGainMonthlyWelfare",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get crystal() : Canvas
      {
         return this._1047561014crystal;
      }
      
      public function tabBtnClick(param1:int, param2:ViewStack) : void
      {
         var _loc3_:String = null;
         param2.selectedIndex = param1;
         if(param2 == idMonthlyWelfareViews)
         {
            _loc3_ = "idTabBtn";
         }
         else if(param2 == idFinancingVS)
         {
            _loc3_ = "idTabBtnLC";
            initVBox(param1);
         }
         else
         {
            _loc3_ = "idTabBtn";
         }
         var _loc4_:int = param2.numChildren;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this[_loc3_ + _loc5_].selected = false;
            _loc5_++;
         }
         this[_loc3_ + param1].selected = true;
      }
      
      public function __idGainMonthlyWelfare_click(param1:MouseEvent) : void
      {
         gainMonthlyWelfare();
      }
      
      public function __idTabBtnLC4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4,idFinancingVS);
      }
      
      public function set labalTotalCost(param1:Label) : void
      {
         var _loc2_:Object = this._1776100761labalTotalCost;
         if(_loc2_ !== param1)
         {
            this._1776100761labalTotalCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labalTotalCost",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalBtn() : DelayButton
      {
         return this._657862470crystalBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get idLastMonPoint() : BasicTxtButton
      {
         return this._1567217493idLastMonPoint;
      }
      
      public function set crystalBtn1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1081099861crystalBtn1;
         if(_loc2_ !== param1)
         {
            this._1081099861crystalBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalBtn1",_loc2_,param1));
         }
      }
      
      public function ___WelfarePanel_Canvas3_show(param1:FlexEvent) : void
      {
         showMonthlyWelfarePlan2();
      }
      
      public function set crystalBtn3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1081099859crystalBtn3;
         if(_loc2_ !== param1)
         {
            this._1081099859crystalBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idThisMonPoint() : BasicTxtButton
      {
         return this._1911223459idThisMonPoint;
      }
      
      public function initManagePlan() : void
      {
         initVBox(idFinancingVS.selectedIndex);
      }
      
      public function set crystalBtn2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1081099860crystalBtn2;
         if(_loc2_ !== param1)
         {
            this._1081099860crystalBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalBtn2",_loc2_,param1));
         }
      }
      
      private function showMonthlyWelfarePlan2() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         if(_monthlyWelfareEnable && Boolean(_plan2Doubling))
         {
            _loc1_ = new Object();
            _loc1_.array = monthlyWelfarePlan2[0];
            _loc2_ = Number(_loc1_.array.length);
            idMonthlyWelfarePlan2.data = _loc1_;
            idMonthlyWelfarePlan2.width = _loc1_.array.length * 35 + (_loc1_.array.length - 1) * 5;
         }
         idMonthlyWelfarePlan2Intro.htmlText = monthlyWelfarePlan2Intro;
      }
      
      private function set wlListItemArr(param1:Array) : void
      {
         var _loc2_:Object = this._301946299wlListItemArr;
         if(_loc2_ !== param1)
         {
            this._301946299wlListItemArr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wlListItemArr",_loc2_,param1));
         }
      }
      
      public function set crystalNum1(param1:Label) : void
      {
         var _loc2_:Object = this._1080741439crystalNum1;
         if(_loc2_ !== param1)
         {
            this._1080741439crystalNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalNum1",_loc2_,param1));
         }
      }
      
      public function set crystalNum2(param1:Label) : void
      {
         var _loc2_:Object = this._1080741438crystalNum2;
         if(_loc2_ !== param1)
         {
            this._1080741438crystalNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalNum2",_loc2_,param1));
         }
      }
      
      public function set crystalNum3(param1:Label) : void
      {
         var _loc2_:Object = this._1080741437crystalNum3;
         if(_loc2_ !== param1)
         {
            this._1080741437crystalNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalNum3",_loc2_,param1));
         }
      }
      
      public function set sliverAward0(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._822732858sliverAward0;
         if(_loc2_ !== param1)
         {
            this._822732858sliverAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverAward0",_loc2_,param1));
         }
      }
      
      public function set sliverAward1(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._822732857sliverAward1;
         if(_loc2_ !== param1)
         {
            this._822732857sliverAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverAward1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WelfarePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WelfarePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WelfarePanelWatcherSetupUtil");
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
      
      public function set sliverAward3(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._822732855sliverAward3;
         if(_loc2_ !== param1)
         {
            this._822732855sliverAward3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverAward3",_loc2_,param1));
         }
      }
      
      public function set allLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1780150739allLabel;
         if(_loc2_ !== param1)
         {
            this._1780150739allLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allLabel",_loc2_,param1));
         }
      }
      
      public function set goldBtn1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2035880405goldBtn1;
         if(_loc2_ !== param1)
         {
            this._2035880405goldBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBtn1",_loc2_,param1));
         }
      }
      
      public function set goldBtn2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2035880406goldBtn2;
         if(_loc2_ !== param1)
         {
            this._2035880406goldBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBtn2",_loc2_,param1));
         }
      }
      
      public function set goldBtn3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2035880407goldBtn3;
         if(_loc2_ !== param1)
         {
            this._2035880407goldBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBtn3",_loc2_,param1));
         }
      }
      
      public function set sliverAward2(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._822732856sliverAward2;
         if(_loc2_ !== param1)
         {
            this._822732856sliverAward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sliverAward2",_loc2_,param1));
         }
      }
      
      public function set goldBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._204220892goldBtn;
         if(_loc2_ !== param1)
         {
            this._204220892goldBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverAward1() : RendererItemArray
      {
         return this._822732857sliverAward1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverAward3() : RendererItemArray
      {
         return this._822732855sliverAward3;
      }
      
      public function set diamondAward1(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._855994392diamondAward1;
         if(_loc2_ !== param1)
         {
            this._855994392diamondAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondAward1",_loc2_,param1));
         }
      }
      
      public function set diamondAward3(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._855994390diamondAward3;
         if(_loc2_ !== param1)
         {
            this._855994390diamondAward3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondAward3",_loc2_,param1));
         }
      }
      
      public function ___WelfarePanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_EXCHANGE);
      }
      
      public function set goldNum1(param1:Label) : void
      {
         var _loc2_:Object = this._2036238827goldNum1;
         if(_loc2_ !== param1)
         {
            this._2036238827goldNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldNum1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sliverAward2() : RendererItemArray
      {
         return this._822732856sliverAward2;
      }
      
      public function set goldNum2(param1:Label) : void
      {
         var _loc2_:Object = this._2036238828goldNum2;
         if(_loc2_ !== param1)
         {
            this._2036238828goldNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldNum2",_loc2_,param1));
         }
      }
      
      public function set diamondAward2(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._855994391diamondAward2;
         if(_loc2_ !== param1)
         {
            this._855994391diamondAward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondAward2",_loc2_,param1));
         }
      }
      
      public function set diamondAward0(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._855994393diamondAward0;
         if(_loc2_ !== param1)
         {
            this._855994393diamondAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondAward0",_loc2_,param1));
         }
      }
      
      public function set goldNum3(param1:Label) : void
      {
         var _loc2_:Object = this._2036238829goldNum3;
         if(_loc2_ !== param1)
         {
            this._2036238829goldNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldNum3",_loc2_,param1));
         }
      }
      
      public function set goldAward0(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._2050198029goldAward0;
         if(_loc2_ !== param1)
         {
            this._2050198029goldAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldAward0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondAward0() : RendererItemArray
      {
         return this._855994393diamondAward0;
      }
      
      public function ___WelfarePanel_Canvas4_show(param1:FlexEvent) : void
      {
         initManagePlan();
      }
      
      public function set goldAward2(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._2050198027goldAward2;
         if(_loc2_ !== param1)
         {
            this._2050198027goldAward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldAward2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondAward1() : RendererItemArray
      {
         return this._855994392diamondAward1;
      }
      
      public function set goldAward3(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._2050198026goldAward3;
         if(_loc2_ !== param1)
         {
            this._2050198026goldAward3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldAward3",_loc2_,param1));
         }
      }
      
      public function set goldAward1(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._2050198028goldAward1;
         if(_loc2_ !== param1)
         {
            this._2050198028goldAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldAward1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diamondAward3() : RendererItemArray
      {
         return this._855994390diamondAward3;
      }
   }
}

