package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FuncBag;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotEquFunc;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.NumericStepper;
   import mx.controls.TextArea;
   import mx.core.DragSource;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WingFuncPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _WingFuncPanel_BasicTxtButton25:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton26:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton28:BasicTxtButton;
      
      private var _1478570939bindItemNumTip:Label;
      
      public var _WingFuncPanel_BasicTxtButton27:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton22:BasicTxtButton;
      
      private var _262477064holeItemNumTip:Label;
      
      public var _WingFuncPanel_BasicTxtButton21:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton24:BasicTxtButton;
      
      private var _515043687holeMain:ItemSlotEquFunc;
      
      public var _WingFuncPanel_BasicTxtButton30:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton31:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton32:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton33:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton34:BasicTxtButton;
      
      private var _589175008prefixItemRequire:ItemSlot;
      
      private var curRescode:Number = 0;
      
      public var _WingFuncPanel_BasicTxtButton46:BasicTxtButton;
      
      private var _1394559310prefixMoney:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1651487246holeItemRequire:ItemSlot;
      
      private var _1246703002introText3:IntroText;
      
      private var _1386354456featherSetMain:ItemSlotEquFunc;
      
      private var rescodeLabel:Array = [Language.WING_PANEL_U[144],Language.WING_PANEL_U[138],Language.WING_PANEL_U[139]];
      
      public var _WingFuncPanel_Label10:Label;
      
      public var _WingFuncPanel_Label11:Label;
      
      public var _WingFuncPanel_Label12:Label;
      
      public var _WingFuncPanel_Label13:Label;
      
      public var _WingFuncPanel_Label14:Label;
      
      public var _WingFuncPanel_Label15:Label;
      
      private var _27520924prefixButton:BasicGlowButton;
      
      private var _60395880wingPreview5:ItemSlotEquFunc;
      
      private var _114581tab:ViewStack;
      
      private var _1954302177mixLuckyItem:ItemSlot;
      
      private var _1334416454curFeatherProp:TextArea;
      
      private var _291058703feather4:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _2058846118isFirst:String = "|";
      
      public var _WingFuncPanel_Label4:Label;
      
      public var _WingFuncPanel_Label7:Label;
      
      private var _2133274960itemInBag:ItemSlot;
      
      private var _1246703005introText6:IntroText;
      
      private var _550657233featherSetButton:BasicGlowButton;
      
      private var _899727221curPrefixProp:TextArea;
      
      private var _2085845920curBindProp:TextArea;
      
      private var _483423936reqMixItem1:ItemSlot;
      
      private var _1349152991curPhy:BasicTxtButton;
      
      private var _432885246feather10:ItemSlot;
      
      private var _1379459640funcBtn0:BasicGlowButton;
      
      private var _1268261610reqmixFormular:ItemSlot;
      
      private var _2127138652itemByBuy:ItemSlot;
      
      private var _1900875002starOneButton:BasicGlowButton;
      
      private var _112177344previewCanvas:CharactorShowCanvas;
      
      private var _5143378mixButton:BasicGlowButton;
      
      private var listArr:Array = [Language.WING_PANEL_U[1],Language.WING_PANEL_U[35],Language.WING_PANEL_U[43],Language.WING_PANEL_U[57],Language.WING_PANEL_U[59],Language.WING_PANEL_U[62],Language.WING_PANEL_U[69],Language.WING_PANEL_U[91],Language.WING_PANEL_U[133]];
      
      private var curWingId:int = 0;
      
      private var _501797251joinWing2:ItemSlotEquFunc;
      
      private var _1701830995wingFuncList:List;
      
      private var _541105997curMagic:BasicTxtButton;
      
      private var _165104137featherMixLuckItemNum:NumericStepper;
      
      private var _1424161935nextLife:BasicTxtButton;
      
      private var _1315536005starItem:ItemSlot;
      
      private var _1710239761featherUpButtonAll:BasicGlowButton;
      
      private var _474659641featherMixRate:BasicTxtButton;
      
      public var _WingFuncPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _60395882wingPreview3:ItemSlotEquFunc;
      
      private var _774447364featherUpLuckItemNum:NumericStepper;
      
      private var _934857288mixFormular:ItemSlot;
      
      private var _807279583wTitle:BasicTitleCanvas;
      
      private var _1847059854nextPhy:BasicTxtButton;
      
      private var _291058706feather1:ItemSlot;
      
      private var _291058702feather5:ItemSlot;
      
      private var _1967315247featherUpItem:ItemSlot;
      
      private var _1199243345nextLevel:BasicTxtButton;
      
      private var _1246703001introText2:IntroText;
      
      private var _380498984mixedFeather:ItemSlot;
      
      private var _1327811494prefixItemNumTip:Label;
      
      private var _341865658starNumBasic:NumericStepper;
      
      private var _1967214217featherUpMain:ItemSlot;
      
      private var _1401966077joinMain:ItemSlotEquFunc;
      
      private var _1037480286MixItem1:ItemSlot;
      
      private var _1206019348nextSpeed:BasicTxtButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1246703004introText5:IntroText;
      
      private var _291058699feather8:ItemSlot;
      
      private var canPutPropOfFeathers:Object = {};
      
      private var _1710253270featherUpButtonOne:BasicGlowButton;
      
      private var _1323287868maxBindProp:TextArea;
      
      private var _501797252joinWing1:ItemSlotEquFunc;
      
      private var _1125811548curLife:BasicTxtButton;
      
      private var _1213936608holeMoney:Label;
      
      private var _1246703007introText8:IntroText;
      
      private var _1340501141prefixMain:ItemSlotEquFunc;
      
      private var _360588801starAllButton:BasicGlowButton;
      
      public var _WingFuncPanel_Canvas1:Canvas;
      
      private var _1696059025advanceJoinEnable:Boolean = true;
      
      private var _1315637035starMain:ItemSlotEquFunc;
      
      private var newWingRescode:Object = {
         "blue":2070390009003,
         "white":2070390007003,
         "evil":2070390006003,
         "angle":2070390008003
      };
      
      private var _1331857390holeButton:BasicGlowButton;
      
      private var _60395884wingPreview1:ItemSlotEquFunc;
      
      private var _405165519bindButton:BasicGlowButton;
      
      private var autoMatchSlots:Array;
      
      private var _291058705feather2:ItemSlot;
      
      private var _506858505growBtn2:BasicGlowButton;
      
      private var _291058701feather6:ItemSlot;
      
      private var _771118837featherMixAutoPutBtn:BasicGlowButton;
      
      private var _210599509bindItemRequire:ItemSlot;
      
      private var _starNum:int;
      
      private var _1349542418wingExp:BoxLabel;
      
      private var _1037480285MixItem2:ItemSlot;
      
      private var _1246703000introText1:IntroText;
      
      public var _WingFuncPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton8:BasicTxtButton;
      
      private var _1782203801maxPrefixProp:TextArea;
      
      private var currentIndex:int = 0;
      
      private var _291058698feather9:ItemSlot;
      
      public var _WingFuncPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _939175152bindItem:ItemSlot;
      
      private var _60395881wingPreview4:ItemSlotEquFunc;
      
      private var selectedIndex:int;
      
      public var _WingFuncPanel_Image1:Image;
      
      private var _1315530272starInfo:BasicTxtButton;
      
      private var wingBagAdded:Boolean = false;
      
      private var _1402072840joinInfo:Label;
      
      private var _547091943curSpeed:BasicTxtButton;
      
      private var _1615024608starRateInfo:BasicTxtButton;
      
      private var _524842218changeViewBox:CheckBox;
      
      private var _1340602171prefixItem:ItemSlot;
      
      private var _631614868featherUpRateInfo:BasicTxtButton;
      
      private var _1246703003introText4:IntroText;
      
      private var _501797249joinWing4:ItemSlotEquFunc;
      
      private var _164090455wingLabel:Label;
      
      private var _1034217724joinButton:BasicGlowButton;
      
      private var _946787709bindMoney:Label;
      
      private var _2067262411showBag:BasicGlowButton;
      
      private var _483423935reqMixItem2:ItemSlot;
      
      private var _1377586698buyBtn:BasicGlowButton;
      
      private var _515144717holeItem:ItemSlot;
      
      private var _1656453898selectCrit:CheckBox;
      
      private var _1897222734starMax:NumericStepper;
      
      private var _912391750featherDelButton:BasicGlowButton;
      
      private var _506858504growBtn1:BasicGlowButton;
      
      private var _291058704feather3:ItemSlot;
      
      private var level:int = 0;
      
      private var _291058700feather7:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _871500217introText:IntroText;
      
      private var _1379459641funcBtn1:BasicGlowButton;
      
      private var rescodeArray:Array = [];
      
      private var _501797250joinWing3:ItemSlotEquFunc;
      
      private var _540315940curLevel:BasicTxtButton;
      
      private var _12860042formularList:List;
      
      private var _1200033402nextMagic:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton16:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton17:BasicTxtButton;
      
      public var _WingFuncPanel_BasicTxtButton11:BasicTxtButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _939276182bindMain:ItemSlotEquFunc;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"wTitle",
                  "events":{"creationComplete":"__wTitle_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_WingFuncPanel_Canvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":40,
                        "width":472,
                        "height":325,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_WingFuncPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":155,
                                 "y":70,
                                 "width":285,
                                 "height":220
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tab",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":75,
                                 "width":397,
                                 "y":0,
                                 "height":315,
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"joinMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":135,
                                                   "movable":false,
                                                   "x":173.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"joinButton",
                                             "events":{"click":"__joinButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":195,
                                                   "styleName":"BtnStdRed",
                                                   "x":168,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"joinInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.horizontalCenter = "-5";
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":175,
                                                   "width":108
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"joinWing1",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":135,
                                                   "movable":false,
                                                   "x":84.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"joinWing2",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":175,
                                                   "movable":false,
                                                   "x":84.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"joinWing3",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":135,
                                                   "movable":false,
                                                   "x":260
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"joinWing4",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":175,
                                                   "movable":false,
                                                   "x":260
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":257,
                                                   "y":110,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton2",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":167.5,
                                                   "y":110,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton3",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":78,
                                                   "y":110,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 18;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":56,
                                                   "y":228,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_WingFuncPanel_BasicTxtButton4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 1;
                                                         this.paddingRight = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_WingFuncPanel_BasicTxtButton5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 1;
                                                         this.paddingRight = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_WingFuncPanel_BasicTxtButton6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 1;
                                                         this.paddingRight = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_WingFuncPanel_BasicTxtButton7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 1;
                                                         this.paddingRight = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_WingFuncPanel_BasicTxtButton8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 1;
                                                         this.paddingRight = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 24;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":59,
                                                   "y":245,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"wingPreview1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"wingPreview2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"wingPreview3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"wingPreview4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"wingPreview5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_WingFuncPanel_BasicGlowButton2",
                                             "events":{"click":"___WingFuncPanel_BasicGlowButton2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "x":325,
                                                   "y":187,
                                                   "width":62
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
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"curPrefixProp",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":110,
                                                   "height":152,
                                                   "width":110,
                                                   "x":10,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton9",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":111,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton10",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":123,
                                                   "y":179,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton11",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":212,
                                                   "y":179,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prefixItemNumTip",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.color = 255;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":202,
                                                   "y":242,
                                                   "width":100,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prefixMoney",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":80,
                                                   "y":243,
                                                   "width":43
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WingFuncPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":243,
                                                   "width":70,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"prefixMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":137,
                                                   "movable":false,
                                                   "x":181.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"prefixItemRequire",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":200,
                                                   "x":137,
                                                   "movable":false,
                                                   "acceptable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"prefixItem",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":200,
                                                   "movable":false,
                                                   "x":226
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"maxPrefixProp",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":110,
                                                   "height":150,
                                                   "width":109,
                                                   "x":278,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"prefixButton",
                                             "events":{"click":"__prefixButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":265,
                                                   "styleName":"BtnStdRed",
                                                   "x":221,
                                                   "width":51
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
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"curBindProp",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":137,
                                                   "height":97,
                                                   "width":110,
                                                   "x":10,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton12",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":111,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton13",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":123,
                                                   "y":179,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton14",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":212,
                                                   "y":179,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"bindItemNumTip",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.color = 255;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":202,
                                                   "y":242,
                                                   "width":100,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"bindMoney",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":80,
                                                   "y":243,
                                                   "width":43
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WingFuncPanel_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":243,
                                                   "width":70,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"bindMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":137,
                                                   "movable":false,
                                                   "x":181.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"bindItemRequire",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":200,
                                                   "x":137,
                                                   "movable":false,
                                                   "acceptable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"bindItem",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":200,
                                                   "movable":false,
                                                   "x":226
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"maxBindProp",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":137,
                                                   "height":97,
                                                   "width":109,
                                                   "x":278,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"bindButton",
                                             "events":{"click":"__bindButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":265,
                                                   "styleName":"BtnStdRed",
                                                   "x":221,
                                                   "width":51,
                                                   "enabled":true
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
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton15",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":72,
                                                   "y":137,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton16",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":137,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton17",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":264,
                                                   "y":137,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"holeItemNumTip",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.color = 255;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":205,
                                                   "width":100,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"holeMoney",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":89,
                                                   "y":239,
                                                   "width":43
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_WingFuncPanel_Label10",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":239,
                                                   "width":70,
                                                   "x":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"holeMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":163,
                                                   "movable":false,
                                                   "x":89
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"holeItemRequire",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181.5,
                                                   "y":163,
                                                   "movable":false,
                                                   "acceptable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"holeItem",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":277,
                                                   "y":163,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"holeButton",
                                             "events":{"click":"__holeButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":238,
                                                   "styleName":"BtnStdRed",
                                                   "x":173,
                                                   "width":51
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
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"starMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":136,
                                                   "movable":false,
                                                   "x":81
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"starItem",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":136,
                                                   "movable":false,
                                                   "x":254
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"starInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":178,
                                                   "label":"10",
                                                   "x":139,
                                                   "width":27
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"starRateInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":178,
                                                   "label":"100%",
                                                   "x":306,
                                                   "width":40,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"starNumBasic",
                                             "events":{"change":"__starNumBasic_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":81,
                                                   "y":231,
                                                   "value":5,
                                                   "minimum":1,
                                                   "maximum":5,
                                                   "width":50,
                                                   "height":21
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"starMax",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":254,
                                                   "y":231,
                                                   "minimum":1,
                                                   "maximum":10,
                                                   "width":50,
                                                   "height":21
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"starAllButton",
                                             "events":{"click":"__starAllButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":158.5,
                                                   "y":204,
                                                   "styleName":"BtnStdGreen",
                                                   "enabled":false,
                                                   "width":80
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"starOneButton",
                                             "events":{"click":"__starOneButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":173.5,
                                                   "styleName":"BtnStdRed",
                                                   "enabled":false,
                                                   "width":50,
                                                   "y":253
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton20",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66,
                                                   "y":110,
                                                   "width":76,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton21",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":239,
                                                   "y":110,
                                                   "width":76,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton22",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66,
                                                   "y":178,
                                                   "width":65,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton23",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":239,
                                                   "y":178,
                                                   "width":65,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton24",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66,
                                                   "y":205,
                                                   "width":65,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton25",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":254,
                                                   "y":205,
                                                   "width":92,
                                                   "height":18
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
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"curFeatherProp",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":110,
                                                   "height":100,
                                                   "width":42,
                                                   "x":10,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton26",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":144,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton27",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":180,
                                                   "y":144,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton28",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":205,
                                                   "y":218,
                                                   "width":65,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"featherUpRateInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":218,
                                                   "label":"100%",
                                                   "x":278,
                                                   "width":40,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"featherUpLuckItemNum",
                                             "events":{"change":"__featherUpLuckItemNum_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":247,
                                                   "y":183,
                                                   "value":5,
                                                   "minimum":1,
                                                   "width":50,
                                                   "height":21
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"featherUpMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":170,
                                                   "movable":false,
                                                   "x":89
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"featherUpItem",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":170,
                                                   "movable":false,
                                                   "x":194
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"featherUpButtonOne",
                                             "events":{"click":"__featherUpButtonOne_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":265,
                                                   "styleName":"BtnStdRed",
                                                   "x":257,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"featherUpButtonAll",
                                             "events":{"click":"__featherUpButtonAll_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":265,
                                                   "styleName":"BtnStdRed",
                                                   "x":151,
                                                   "width":80
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
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":95,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton30",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168,
                                                   "y":110,
                                                   "width":60,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"featherSetMain",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":136,
                                                   "movable":false,
                                                   "x":182
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton31",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":40,
                                                   "y":185,
                                                   "width":19,
                                                   "height":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton32",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":333,
                                                   "y":185,
                                                   "width":19,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton33",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":333,
                                                   "y":225,
                                                   "width":19,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather1",
                                             "events":{"doubleClick":"__feather1_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":70,
                                                   "y":177,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather3",
                                             "events":{"doubleClick":"__feather3_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":126,
                                                   "y":177,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather5",
                                             "events":{"doubleClick":"__feather5_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":182,
                                                   "y":177,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather7",
                                             "events":{"doubleClick":"__feather7_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":238,
                                                   "y":177,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather9",
                                             "events":{"doubleClick":"__feather9_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":294,
                                                   "y":177,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather2",
                                             "events":{"doubleClick":"__feather2_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":70,
                                                   "y":220,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather4",
                                             "events":{"doubleClick":"__feather4_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":126,
                                                   "y":220,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather6",
                                             "events":{"doubleClick":"__feather6_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":182,
                                                   "y":220,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather8",
                                             "events":{"doubleClick":"__feather8_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":238,
                                                   "y":220,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"feather10",
                                             "events":{"doubleClick":"__feather10_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":294,
                                                   "y":220,
                                                   "movable":false,
                                                   "showStackNum":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"featherSetButton",
                                             "events":{"click":"__featherSetButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":265,
                                                   "styleName":"BtnStdRed",
                                                   "x":336,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"featherDelButton",
                                             "events":{"click":"__featherDelButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":280,
                                                   "y":265,
                                                   "styleName":"BtnStdRed",
                                                   "width":51
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "events":{"creationComplete":"___WingFuncPanel_Canvas9_creationComplete"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":List,
                                             "id":"formularList",
                                             "events":{"itemClick":"__formularList_itemClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "7";
                                                this.top = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":115,
                                                   "styleName":"CSSBorder",
                                                   "height":280
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mixedFeather",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":233,
                                                   "y":10,
                                                   "acceptable":false,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.left = "130";
                                                this.top = "52";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":250,
                                                   "height":233,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"reqmixFormular",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":30,
                                                            "y":28,
                                                            "acceptable":false,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"mixFormular",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":30,
                                                            "y":96,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_WingFuncPanel_Label11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":138
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"mixLuckyItem",
                                                      "events":{
                                                         "dragDrop":"__mixLuckyItem_dragDrop",
                                                         "click":"__mixLuckyItem_click"
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":70,
                                                            "y":164,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"featherMixLuckItemNum",
                                                      "events":{"change":"__featherMixLuckItemNum_change"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":12,
                                                            "y":164,
                                                            "value":1,
                                                            "minimum":1,
                                                            "width":50,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"featherMixAutoPutBtn",
                                                      "events":{"click":"__featherMixAutoPutBtn_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "styleName":"BtnNormalRed",
                                                            "y":164,
                                                            "width":99,
                                                            "enabled":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_WingFuncPanel_Label12",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"reqMixItem1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":28,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"reqMixItem2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":190,
                                                            "y":28,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_WingFuncPanel_Label13",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":70
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"MixItem1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":96,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"MixItem2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":190,
                                                            "y":96,
                                                            "movable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_WingFuncPanel_BasicTxtButton34",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":205,
                                                            "width":65,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"featherMixRate",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":205,
                                                            "label":"100%",
                                                            "x":75,
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"mixButton",
                                                      "events":{"click":"__mixButton_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":173,
                                                            "y":203,
                                                            "styleName":"BtnStdRed",
                                                            "width":51
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
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":295,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"introText8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":62,
                                                   "y":7,
                                                   "width":377,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SimpleCanvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":5,
                                                   "y":78,
                                                   "height":150,
                                                   "width":200,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_WingFuncPanel_Label14",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 14;
                                                         this.fontWeight = "bold";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":10,
                                                            "width":80
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_WingFuncPanel_Label15",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 14;
                                                         this.fontWeight = "bold";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":125,
                                                            "y":10,
                                                            "width":80
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"curLevel",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":40,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"curSpeed",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":57,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"curLife",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":74,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"curPhy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":91,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"curMagic",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":108,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"nextLevel",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":117,
                                                            "y":40,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"nextSpeed",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":117,
                                                            "y":57,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"nextLife",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":117,
                                                            "y":74,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"nextPhy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":117,
                                                            "y":91,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"nextMagic",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":117,
                                                            "y":108,
                                                            "text":""
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SimpleCanvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":227,
                                                   "y":74,
                                                   "height":146,
                                                   "width":158,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":CharactorShowCanvas,
                                                      "id":"previewCanvas",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":81,
                                                            "y":135
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"changeViewBox",
                                                      "events":{"change":"__changeViewBox_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "6";
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"funcBtn0",
                                                      "events":{"click":"__funcBtn0_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":13,
                                                            "y":120,
                                                            "height":20,
                                                            "styleName":"CrystalYellowButton",
                                                            "enabled":true
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"funcBtn1",
                                                      "events":{"click":"__funcBtn1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "13";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":120,
                                                            "height":20,
                                                            "styleName":"CrystalYellowButton",
                                                            "enabled":true
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"wingLabel",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":40,
                                                            "width":90,
                                                            "height":15,
                                                            "y":2
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_WingFuncPanel_BasicTxtButton46",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":20,
                                                   "y":226,
                                                   "width":45,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"wingExp",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":55,
                                                   "y":224,
                                                   "width":315,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"itemInBag",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":40,
                                                   "y":250,
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "giid":3627
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"itemByBuy",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":109,
                                                   "y":250,
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "giid":3628
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"selectCrit",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":149,
                                                   "y":250
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"buyBtn",
                                             "events":{"click":"__buyBtn_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":149,
                                                   "y":267,
                                                   "width":51,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"growBtn1",
                                             "events":{"click":"__growBtn1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "91";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":267,
                                                   "width":71,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"growBtn2",
                                             "events":{"click":"__growBtn2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "15";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":267,
                                                   "width":71,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":List,
                           "id":"wingFuncList",
                           "events":{
                              "change":"__wingFuncList_change",
                              "creationComplete":"__wingFuncList_creationComplete"
                           },
                           "stylesFactory":function():void
                           {
                              this.borderSides = "0";
                              this.backgroundAlpha = 0;
                              this.textRollOverColor = 16366965;
                              this.textSelectedColor = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":80,
                                 "height":310,
                                 "x":5,
                                 "y":8
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"showBag",
                  "events":{"click":"__showBag_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":485,
                        "y":110,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               })]
            };
         }
      });
      
      public var _WingFuncPanel_BasicTxtButton14:BasicTxtButton;
      
      private var _60395883wingPreview2:ItemSlotEquFunc;
      
      public var _WingFuncPanel_BasicTxtButton20:BasicTxtButton;
      
      private var wingBag:Object;
      
      public var _WingFuncPanel_BasicTxtButton23:BasicTxtButton;
      
      public function WingFuncPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 350;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WingFuncPanel._watcherSetupUtil = param1;
      }
      
      private function onWingStar(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1)
         {
            if(ToolKit.isEqual(param1.equSlotId,starMain.slotData.id) && ToolKit.isEqual(param1.itemSlotId,starItem.slotData.id))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  starItem.stackNum = param1.num;
               }
               else
               {
                  starItem.clean();
               }
            }
            _starNum = param1.upgradeNum;
            setStarInfo();
            if(param1.flag)
            {
               _loc2_ = Language.EQUIPTFUNCPANEL_S[4];
               _loc2_ = _loc2_.replace("{starNum}",_starNum);
               _core.sysMidNote(_loc2_);
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[6]);
            }
         }
      }
      
      private function onFeatherSet(param1:int) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            featherSetEquChange(null);
            _loc2_ = Language.WING_PANEL_U[73];
            _loc2_ = _loc2_.replace("{successNum}",param1.toString());
            _core.sysMidNote(_loc2_);
         }
      }
      
      public function set feather4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058703feather4;
         if(_loc2_ !== param1)
         {
            this._291058703feather4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get feather6() : ItemSlot
      {
         return this._291058701feather6;
      }
      
      [Bindable(event="propertyChange")]
      public function get feather9() : ItemSlot
      {
         return this._291058698feather9;
      }
      
      [Bindable(event="propertyChange")]
      public function get feather5() : ItemSlot
      {
         return this._291058702feather5;
      }
      
      [Bindable(event="propertyChange")]
      public function get featherUpButtonAll() : BasicGlowButton
      {
         return this._1710239761featherUpButtonAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get feather7() : ItemSlot
      {
         return this._291058700feather7;
      }
      
      public function set feather8(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058699feather8;
         if(_loc2_ !== param1)
         {
            this._291058699feather8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather8",_loc2_,param1));
         }
      }
      
      public function set holeButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1331857390holeButton;
         if(_loc2_ !== param1)
         {
            this._1331857390holeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeButton",_loc2_,param1));
         }
      }
      
      private function wingBagRefresh() : void
      {
         var _loc1_:Object = {
            "up":{},
            "down":{}
         };
         switch(tab.selectedIndex)
         {
            case 0:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":{13:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {"nth":true};
               _loc1_.npcShop = 87;
               break;
            case 1:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":{13:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":{2937:true}
               };
               _loc1_.npcShop = 87;
               break;
            case 2:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":{13:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":{2843:true}
               };
               _loc1_.npcShop = 87;
               break;
            case 3:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":{13:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":{2907:true}
               };
               _loc1_.npcShop = 87;
               break;
            case 4:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":{13:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":{2906:true}
               };
               _loc1_.npcShop = 87;
               break;
            case 5:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "kind":{14:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":{3021:true}
               };
               _loc1_.npcShop = 87;
               break;
            case 6:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":{13:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "kind":{14:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.npcShop = 87;
               break;
            case 7:
               _loc1_.up = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "kind":{14:true},
                  "sortField":"color",
                  "sortParam":Array.DESCENDING | Array.NUMERIC
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":{3017:true}
               };
               _loc1_.npcShop = 87;
         }
         wingBag.condition = _loc1_;
      }
      
      private function starEquChange(param1:GameEvent) : void
      {
         var wingIns:Object = null;
         var wingTemp:Object = null;
         var onGetStarNum:Function = null;
         var e:GameEvent = param1;
         if(starMain.slotData)
         {
            wingIns = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][starMain.slotData.itemId];
            wingTemp = _core.getTemplateData(starMain.slotData.type,starMain.slotData.itemId,false);
            onGetStarNum = function(param1:int):void
            {
               _starNum = param1;
               setStarInfo();
            };
            if(Boolean(wingTemp) && Boolean(wingIns))
            {
               _core.remote.call("getStarNum",new Responder(onGetStarNum),starMain.slotData.id);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get feather2() : ItemSlot
      {
         return this._291058705feather2;
      }
      
      public function set featherUpButtonAll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1710239761featherUpButtonAll;
         if(_loc2_ !== param1)
         {
            this._1710239761featherUpButtonAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherUpButtonAll",_loc2_,param1));
         }
      }
      
      public function set feather5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058702feather5;
         if(_loc2_ !== param1)
         {
            this._291058702feather5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growBtn2() : BasicGlowButton
      {
         return this._506858505growBtn2;
      }
      
      public function set feather6(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058701feather6;
         if(_loc2_ !== param1)
         {
            this._291058701feather6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather6",_loc2_,param1));
         }
      }
      
      public function set feather7(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058700feather7;
         if(_loc2_ !== param1)
         {
            this._291058700feather7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mixedFeather() : ItemSlot
      {
         return this._380498984mixedFeather;
      }
      
      [Bindable(event="propertyChange")]
      public function get wTitle() : BasicTitleCanvas
      {
         return this._807279583wTitle;
      }
      
      public function set feather10(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._432885246feather10;
         if(_loc2_ !== param1)
         {
            this._432885246feather10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growBtn1() : BasicGlowButton
      {
         return this._506858504growBtn1;
      }
      
      public function __showBag_click(param1:MouseEvent) : void
      {
         changeBagVis();
      }
      
      private function prefixViewClear() : void
      {
         prefixMain.clean();
         prefixItemRequire.clean();
         prefixItem.clean();
         curPrefixProp.htmlText = "";
         maxPrefixProp.htmlText = "";
         prefixItemNumTip.text = "";
         prefixMoney.text = "";
      }
      
      private function subFeatherUp(param1:Boolean = true) : void
      {
         var featherIns:Object = null;
         var featherTemp:Object = null;
         var luckSid:Number = NaN;
         var luckBasic:Number = NaN;
         var needsAlert:Boolean = false;
         var func:Function = null;
         var luckIns:Object = null;
         var luckTemp:Object = null;
         var e:CloseEvent = null;
         var starOnce:Boolean = param1;
         if(featherUpMain.slotData)
         {
            if(featherUpMain.tempBagFlag)
            {
               featherIns = {"binded":featherUpMain.slotData.b};
               featherTemp = _core.getTemplateData(featherUpMain.slotData.ti,featherUpMain.slotData.ii,false);
            }
            else
            {
               featherIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][featherUpMain.slotData.itemId];
               featherTemp = _core.getTemplateData(featherUpMain.slotData.type,featherUpMain.slotData.itemId,false);
            }
            if(Boolean(featherIns) && Boolean(featherTemp))
            {
               luckSid = -1;
               luckBasic = -1;
               needsAlert = false;
               if(featherUpLuckItemNum.value > 0 && Boolean(featherUpItem.slotData))
               {
                  luckIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][featherUpItem.slotData.itemId];
                  luckTemp = _core.getTemplateData(featherUpItem.slotData.type,featherUpItem.slotData.itemId,false);
                  if(Boolean(luckIns) && Boolean(luckTemp) && ToolKit.isEqual(luckTemp.id,GamePredef.FEATHER_LUCKY_ID))
                  {
                     if(!needsAlert && ToolKit.isEqual(featherIns.binded,0) && ToolKit.isEqual(luckIns.binded,1))
                     {
                        needsAlert = true;
                     }
                     luckSid = Number(featherUpItem.slotData.id);
                     luckBasic = featherUpLuckItemNum.value;
                  }
               }
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("featherUpdate",new Responder(onFeatherUp),featherUpMain.slotData.id,luckSid,luckBasic,starOnce,featherUpMain.tempBagFlag);
                  }
               };
               if(needsAlert)
               {
                  Alert.show(Language.WING_PANEL_U[86],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  e = new CloseEvent("");
                  e.detail = Alert.YES;
                  func(e);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get feather1() : ItemSlot
      {
         return this._291058706feather1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bindItemNumTip() : Label
      {
         return this._1478570939bindItemNumTip;
      }
      
      [Bindable(event="propertyChange")]
      public function get curFeatherProp() : TextArea
      {
         return this._1334416454curFeatherProp;
      }
      
      [Bindable(event="propertyChange")]
      public function get feather8() : ItemSlot
      {
         return this._291058699feather8;
      }
      
      public function set featherMixLuckItemNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._165104137featherMixLuckItemNum;
         if(_loc2_ !== param1)
         {
            this._165104137featherMixLuckItemNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherMixLuckItemNum",_loc2_,param1));
         }
      }
      
      public function __feather7_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(7);
      }
      
      private function joinEquChange(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = {};
         _loc2_.main = joinMain.slotData;
         _loc2_.wing1 = joinWing1.slotData;
         _loc2_.wing2 = joinWing2.slotData;
         _loc2_.wing3 = joinWing3.slotData;
         _loc2_.wing4 = joinWing4.slotData;
         if(!checkWingData(_loc2_))
         {
            return;
         }
         if(joinMain.slotData)
         {
            _loc3_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][joinMain.slotData.itemId];
            if(_loc3_)
            {
               if(ToolKit.isBigOrEqual(_loc3_.color,GamePredef.WING_MAX_COLOR_LEVEL))
               {
                  joinInfo.htmlText = Language.WING_PANEL_U[17];
               }
            }
            if(Boolean(joinWing1.slotData) && Boolean(joinWing2.slotData) && Boolean(joinWing3.slotData) && Boolean(joinWing4.slotData))
            {
               joinButton.enabled = true;
               setNextWingsPreview(_loc2_);
               return;
            }
         }
         joinButton.enabled = false;
      }
      
      public function set mixedFeather(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._380498984mixedFeather;
         if(_loc2_ !== param1)
         {
            this._380498984mixedFeather = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mixedFeather",_loc2_,param1));
         }
      }
      
      public function set feather3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058704feather3;
         if(_loc2_ !== param1)
         {
            this._291058704feather3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather3",_loc2_,param1));
         }
      }
      
      public function set growBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._506858504growBtn1;
         if(_loc2_ !== param1)
         {
            this._506858504growBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growBtn1",_loc2_,param1));
         }
      }
      
      public function __mixLuckyItem_click(param1:MouseEvent) : void
      {
         mixLuckyItem.clean();
         setMixRate();
      }
      
      public function set growBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._506858505growBtn2;
         if(_loc2_ !== param1)
         {
            this._506858505growBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growBtn2",_loc2_,param1));
         }
      }
      
      public function set holeItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._515144717holeItem;
         if(_loc2_ !== param1)
         {
            this._515144717holeItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeItem",_loc2_,param1));
         }
      }
      
      public function set wingExp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1349542418wingExp;
         if(_loc2_ !== param1)
         {
            this._1349542418wingExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingExp",_loc2_,param1));
         }
      }
      
      public function set feather9(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058698feather9;
         if(_loc2_ !== param1)
         {
            this._291058698feather9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather9",_loc2_,param1));
         }
      }
      
      public function set starInfo(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1315530272starInfo;
         if(_loc2_ !== param1)
         {
            this._1315530272starInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get holeMoney() : Label
      {
         return this._1213936608holeMoney;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeButton() : BasicGlowButton
      {
         return this._1331857390holeButton;
      }
      
      public function set holeItemRequire(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1651487246holeItemRequire;
         if(_loc2_ !== param1)
         {
            this._1651487246holeItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeItemRequire",_loc2_,param1));
         }
      }
      
      private function featherSetEquChange(param1:GameEvent) : void
      {
         var _loc2_:Object = null;
         if(featherSetMain.slotData)
         {
            _loc2_ = _core.getTemplateData(featherSetMain.slotData.type,featherSetMain.slotData.itemId,false);
            if(_loc2_)
            {
               if(ToolKit.isEqual(_loc2_.kind,GamePredef.ITEM_KIND_WING))
               {
                  _core.remote.call("getFeatherData",new Responder(onFeatherData),featherSetMain.slotData.id);
                  return;
               }
            }
         }
         featherSetMain.clean();
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevel() : BasicTxtButton
      {
         return this._1199243345nextLevel;
      }
      
      public function __joinButton_click(param1:MouseEvent) : void
      {
         subWingJoin();
      }
      
      public function set starAllButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._360588801starAllButton;
         if(_loc2_ !== param1)
         {
            this._360588801starAllButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starAllButton",_loc2_,param1));
         }
      }
      
      private function starViewClear() : void
      {
         starMain.clean();
         starItem.clean();
         starInfo.label = "";
         starRateInfo.label = "";
         _starNum = NaN;
      }
      
      public function set funcBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1379459640funcBtn0;
         if(_loc2_ !== param1)
         {
            this._1379459640funcBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcBtn0",_loc2_,param1));
         }
      }
      
      public function __featherSetButton_click(param1:MouseEvent) : void
      {
         subFeatherSet();
      }
      
      public function set wTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._807279583wTitle;
         if(_loc2_ !== param1)
         {
            this._807279583wTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wTitle",_loc2_,param1));
         }
      }
      
      public function ___WingFuncPanel_Canvas9_creationComplete(param1:FlexEvent) : void
      {
         initMixFormularList();
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixButton() : BasicGlowButton
      {
         return this._27520924prefixButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixItemNumTip() : Label
      {
         return this._1327811494prefixItemNumTip;
      }
      
      public function set bindItemNumTip(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1478570939bindItemNumTip;
         if(_loc2_ !== param1)
         {
            this._1478570939bindItemNumTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindItemNumTip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLife() : BasicTxtButton
      {
         return this._1424161935nextLife;
      }
      
      public function set curFeatherProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1334416454curFeatherProp;
         if(_loc2_ !== param1)
         {
            this._1334416454curFeatherProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curFeatherProp",_loc2_,param1));
         }
      }
      
      public function set mixFormular(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._934857288mixFormular;
         if(_loc2_ !== param1)
         {
            this._934857288mixFormular = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mixFormular",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starItem() : ItemSlot
      {
         return this._1315536005starItem;
      }
      
      private function joinViewClear() : void
      {
         joinMain.clean();
         wingPreview5.clean();
         var _loc1_:int = 1;
         while(_loc1_ <= 4)
         {
            this["joinWing" + _loc1_].clean();
            this["wingPreview" + _loc1_].clean();
            _loc1_++;
         }
         joinInfo.htmlText = "";
      }
      
      public function set funcBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1379459641funcBtn1;
         if(_loc2_ !== param1)
         {
            this._1379459641funcBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcBtn1",_loc2_,param1));
         }
      }
      
      public function __funcBtn0_click(param1:MouseEvent) : void
      {
         changePreView(-1);
      }
      
      public function set starRateInfo(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1615024608starRateInfo;
         if(_loc2_ !== param1)
         {
            this._1615024608starRateInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starRateInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mixButton() : BasicGlowButton
      {
         return this._5143378mixButton;
      }
      
      private function featherSetViewClear() : void
      {
         featherSetMain.clean();
         var _loc1_:int = 1;
         while(_loc1_ <= 10)
         {
            this["feather" + _loc1_].clean();
            this["feather" + _loc1_].enabled = false;
            _loc1_++;
         }
      }
      
      public function setStarInfo() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!isNaN(_starNum) && Boolean(starMain.slotData))
         {
            if(ToolKit.isBigOrEqual(_starNum,GamePredef.EQUIPT_STAR_MAX))
            {
               starInfo.label = Language.EQUIPTFUNCPANEL_S[3];
               starOneButton.enabled = false;
               starAllButton.enabled = false;
            }
            else
            {
               _loc1_ = int(GamePredef.EQUIPT_STAR_SUCCESS[ToolKit.add(_starNum,1)] * starNumBasic.value / 5);
               if(_core.MC_BIRTH_FLAG[8])
               {
                  _loc1_ = int(GamePredef.MC_BIRTH_CONFIG[8][ToolKit.add(_starNum,1)] * starNumBasic.value / 5);
               }
               _loc2_ = _core.view.getUI(ViewManager.MAIN_LONGBUFF);
               if(Boolean(_loc2_) && Boolean(_loc2_.isBuffOn(3263)))
               {
                  _loc1_ = int(GamePredef.EQUIPT_STAR_SUCCESS_BUFF[ToolKit.add(_starNum,1)] * starNumBasic.value / 5);
               }
               starInfo.label = _starNum.toString();
               starRateInfo.label = _loc1_.toString() + "%";
               starOneButton.enabled = false;
               starAllButton.enabled = false;
               if(starItem.slotData)
               {
                  _loc3_ = _core.getTemplateData(starItem.slotData.type,starItem.slotData.itemId,false);
                  if(Boolean(_loc3_) && Boolean(ToolKit.isEqual(_loc3_.id,GamePredef.WING_STAR_ITEM_ID)) && ToolKit.isBigOrEqual(starItem.slotData.stackNum,starNumBasic.value))
                  {
                     starOneButton.enabled = true;
                     starAllButton.enabled = true;
                  }
               }
            }
         }
      }
      
      public function __wingFuncList_creationComplete(param1:FlexEvent) : void
      {
         wingFuncList.selectedIndex = 0;
      }
      
      public function set nextLevel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1199243345nextLevel;
         if(_loc2_ !== param1)
         {
            this._1199243345nextLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevel",_loc2_,param1));
         }
      }
      
      public function __featherUpButtonOne_click(param1:MouseEvent) : void
      {
         subFeatherUp(true);
      }
      
      [Bindable(event="propertyChange")]
      public function get starNumBasic() : NumericStepper
      {
         return this._341865658starNumBasic;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeItem() : ItemSlot
      {
         return this._515144717holeItem;
      }
      
      public function set prefixButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._27520924prefixButton;
         if(_loc2_ !== param1)
         {
            this._27520924prefixButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixButton",_loc2_,param1));
         }
      }
      
      public function __feather4_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(4);
      }
      
      public function set bindItemRequire(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._210599509bindItemRequire;
         if(_loc2_ !== param1)
         {
            this._210599509bindItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindItemRequire",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherSetButton() : BasicGlowButton
      {
         return this._550657233featherSetButton;
      }
      
      public function __changeViewBox_change(param1:Event) : void
      {
         changeWingView();
      }
      
      private function subWingPrefix() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(Boolean(prefixMain.slotData) && Boolean(prefixItem.slotData))
         {
            _loc1_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][prefixMain.slotData.itemId];
            _loc2_ = _core.getTemplateData(prefixMain.slotData.type,prefixMain.slotData.itemId,false);
            _loc3_ = _core.getTemplateData(prefixItem.slotData.type,prefixItem.slotData.itemId,false);
            if(Boolean(_loc1_) && Boolean(_loc2_) && Boolean(_loc3_))
            {
               if(ToolKit.isEqual(_loc1_.binded,1))
               {
                  _loc4_ = Number(GamePredef.WING_PREFIX_ITEM_NUM[_loc1_.color]);
                  if(Boolean(ToolKit.isEqual(_loc3_.id,GamePredef.WING_PREFIX_ITEM_ID)) && Boolean(_loc4_) && ToolKit.isBigOrEqual(prefixItem.slotData.stackNum,_loc4_))
                  {
                     if(_core.player.enoughMoneyAuto(1,Number(prefixMoney.text)))
                     {
                        prefixButton.enabled = false;
                        _core.remote.call("changeWingPrefix",new Responder(onWingPrefix),{
                           "e":prefixMain.slotData.id,
                           "i":prefixItem.slotData.id
                        });
                     }
                     else
                     {
                        _core.sysMidNote(Language.WING_PANEL_U[30]);
                     }
                  }
               }
               else
               {
                  _core.sysMidNote(Language.WING_PANEL_U[39]);
               }
            }
         }
      }
      
      public function onChangeWingView(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!param1.flag)
         {
            return;
         }
         if(param1.newResCode)
         {
            curRescode = param1.newResCode;
            previewCanvas.wingResCode = param1.newResCode;
         }
      }
      
      public function set prefixItemNumTip(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1327811494prefixItemNumTip;
         if(_loc2_ !== param1)
         {
            this._1327811494prefixItemNumTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixItemNumTip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherUpButtonOne() : BasicGlowButton
      {
         return this._1710253270featherUpButtonOne;
      }
      
      public function set featherUpRateInfo(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._631614868featherUpRateInfo;
         if(_loc2_ !== param1)
         {
            this._631614868featherUpRateInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherUpRateInfo",_loc2_,param1));
         }
      }
      
      public function set joinMain(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1401966077joinMain;
         if(_loc2_ !== param1)
         {
            this._1401966077joinMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinMain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixItemRequire() : ItemSlot
      {
         return this._589175008prefixItemRequire;
      }
      
      [Bindable(event="propertyChange")]
      public function get bindItem() : ItemSlot
      {
         return this._939175152bindItem;
      }
      
      private function switchVS(param1:Number) : void
      {
         deActiveView(tab.selectedIndex);
         tab.selectedIndex = param1;
         selectedIndex = param1;
         tabPageUpdate();
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixItem() : ItemSlot
      {
         return this._1340602171prefixItem;
      }
      
      public function set nextMagic(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1200033402nextMagic;
         if(_loc2_ !== param1)
         {
            this._1200033402nextMagic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextMagic",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectCrit() : CheckBox
      {
         return this._1656453898selectCrit;
      }
      
      public function set joinWing2(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._501797251joinWing2;
         if(_loc2_ !== param1)
         {
            this._501797251joinWing2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinWing2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinInfo() : Label
      {
         return this._1402072840joinInfo;
      }
      
      private function onSureChangeWingPrefix(param1:Object) : void
      {
         prefixButton.enabled = true;
         if(param1)
         {
            if(param1.f == "sure")
            {
               _core.sysMidNote(Language.WING_PANEL_U[36]);
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i] = param1.n;
               if(ToolKit.isEqual(prefixMain.slotData.id,param1.e))
               {
                  prefixMain.giid = param1.i;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinButton() : BasicGlowButton
      {
         return this._1034217724joinButton;
      }
      
      public function set joinWing4(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._501797249joinWing4;
         if(_loc2_ !== param1)
         {
            this._501797249joinWing4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinWing4",_loc2_,param1));
         }
      }
      
      public function set joinWing1(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._501797252joinWing1;
         if(_loc2_ !== param1)
         {
            this._501797252joinWing1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinWing1",_loc2_,param1));
         }
      }
      
      public function set starItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1315536005starItem;
         if(_loc2_ !== param1)
         {
            this._1315536005starItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherUpLuckItemNum() : NumericStepper
      {
         return this._774447364featherUpLuckItemNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeItemNumTip() : Label
      {
         return this._262477064holeItemNumTip;
      }
      
      public function set formularList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._12860042formularList;
         if(_loc2_ !== param1)
         {
            this._12860042formularList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"formularList",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
      }
      
      private function subFeatherMix() : void
      {
         var formularIns:Object = null;
         var formularTemp:Object = null;
         var needsAlert:Boolean = false;
         var needsAlert1:Boolean = false;
         var featherSids:Object = null;
         var i:int = 0;
         var luckySid:Number = NaN;
         var luckyItemId:Number = NaN;
         var luckyItemIns:* = undefined;
         var luckyBinded:int = 0;
         var func1:Function = null;
         var func:Function = null;
         var putItemIns:Object = null;
         var putItemTemp:Object = null;
         var e:CloseEvent = null;
         if(mixFormular.slotData)
         {
            if(mixFormular.tempBagFlag)
            {
               formularIns = {"binded":mixFormular.slotData.b};
               formularTemp = _core.getTemplateData(mixFormular.slotData.ti,mixFormular.slotData.ii,false);
            }
            else
            {
               formularIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][mixFormular.slotData.itemId];
               formularTemp = _core.getTemplateData(mixFormular.slotData.type,mixFormular.slotData.itemId,false);
            }
            if(Boolean(formularIns) && Boolean(formularTemp))
            {
               needsAlert = false;
               needsAlert1 = true;
               featherSids = {};
               if(Number(formularIns.binded))
               {
                  needsAlert1 = false;
               }
               i = 1;
               while(true)
               {
                  if(i <= 2)
                  {
                     if(ToolKit.isBigThan(formularTemp["i" + i],0))
                     {
                        if(!this["MixItem" + i].slotData)
                        {
                           break;
                        }
                        if(this["MixItem" + i].tempBagFlag)
                        {
                           putItemIns = {"binded":this["MixItem" + i].slotData.b};
                           putItemTemp = _core.getTemplateData(this["MixItem" + i].slotData.ti,this["MixItem" + i].slotData.ii,false);
                        }
                        else
                        {
                           putItemIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][this["MixItem" + i].slotData.itemId];
                           putItemTemp = _core.getTemplateData(this["MixItem" + i].slotData.type,this["MixItem" + i].slotData.itemId,false);
                        }
                        if(!(Boolean(putItemIns) && Boolean(putItemTemp) && ToolKit.isEqual(putItemTemp.id,formularTemp["i" + i])))
                        {
                           break;
                        }
                        if(!needsAlert && ToolKit.add(formularIns.binded,putItemIns.binded) == 1)
                        {
                           needsAlert = true;
                        }
                        if(Number(putItemIns.binded))
                        {
                           needsAlert1 = false;
                        }
                        featherSids[i] = {
                           "idx":this["MixItem" + i].slotData.id,
                           "flag":this["MixItem" + i].tempBagFlag
                        };
                     }
                     continue;
                  }
                  luckySid = -1;
                  luckyItemId = -1;
                  if(mixLuckyItem.slotData)
                  {
                     luckySid = Number(mixLuckyItem.slotData.id);
                     luckyItemId = Number(mixLuckyItem.slotData.itemId);
                  }
                  luckyItemIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][luckyItemId];
                  luckyBinded = 0;
                  if(Boolean(luckyItemIns) && Boolean(Number(luckyItemIns.binded)))
                  {
                     luckyBinded = 1;
                  }
                  func1 = function(param1:CloseEvent):void
                  {
                     var _loc2_:Object = null;
                     if(param1.detail == Alert.YES)
                     {
                        _loc2_ = {
                           "idx":mixFormular.slotData.id,
                           "flag":mixFormular.tempBagFlag
                        };
                        _core.remote.call("featherMix",new Responder(onFeatherMix),_loc2_,featherSids,luckySid,featherMixLuckItemNum.value,luckyBinded);
                     }
                  };
                  func = function(param1:CloseEvent):void
                  {
                     var _loc2_:Object = null;
                     if(param1.detail == Alert.YES)
                     {
                        _loc2_ = {
                           "idx":mixFormular.slotData.id,
                           "flag":mixFormular.tempBagFlag
                        };
                        _core.remote.call("featherMix",new Responder(onFeatherMix),_loc2_,featherSids,luckySid,featherMixLuckItemNum.value,luckyBinded);
                     }
                  };
                  if(needsAlert)
                  {
                     Alert.show(Language.WING_PANEL_U[93],"",Alert.YES | Alert.NO,null,func);
                  }
                  else if(Boolean(luckyItemIns) && Boolean(Number(luckyItemIns.binded)) && needsAlert1)
                  {
                     Alert.show(Language.WING_PANEL_U[145],"",Alert.YES | Alert.NO,null,func1);
                  }
                  else
                  {
                     e = new CloseEvent("");
                     e.detail = Alert.YES;
                     func(e);
                  }
                  i++;
               }
               return;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextSpeed() : BasicTxtButton
      {
         return this._1206019348nextSpeed;
      }
      
      private function formularListClick() : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         featherMixViewClear();
         var _loc1_:Object = formularList.selectedItem;
         if(_loc1_)
         {
            _loc2_ = _loc1_.data;
            reqmixFormular.type = GamePredef.TBL_ITEM_TEMPLATE;
            reqmixFormular.giid = _loc2_.id;
            mixedFeather.type = GamePredef.TBL_ITEM_TEMPLATE;
            mixedFeather.giid = _loc2_.nextJewelTid;
            _loc3_ = 1;
            while(_loc3_ <= 2)
            {
               if(ToolKit.isBigThan(_loc2_["i" + _loc3_],0))
               {
                  this["reqMixItem" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["reqMixItem" + _loc3_].giid = _loc2_["i" + _loc3_];
                  this["reqMixItem" + _loc3_].stackNum = _loc2_["n" + _loc3_];
               }
               _loc3_++;
            }
            setMixRate();
            featherMixAutoPutBtn.enabled = true;
         }
      }
      
      public function changeWingView() : void
      {
         if(changeViewBox.selected)
         {
            _core.remote.call("changeWingRes",new Responder(onChangeWingView),currentIndex);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curLevel() : BasicTxtButton
      {
         return this._540315940curLevel;
      }
      
      public function set nextLife(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1424161935nextLife;
         if(_loc2_ !== param1)
         {
            this._1424161935nextLife = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLife",_loc2_,param1));
         }
      }
      
      public function set bindMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._946787709bindMoney;
         if(_loc2_ !== param1)
         {
            this._946787709bindMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindMoney",_loc2_,param1));
         }
      }
      
      public function set joinWing3(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._501797250joinWing3;
         if(_loc2_ !== param1)
         {
            this._501797250joinWing3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinWing3",_loc2_,param1));
         }
      }
      
      public function set wingPreview3(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60395882wingPreview3;
         if(_loc2_ !== param1)
         {
            this._60395882wingPreview3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingPreview3",_loc2_,param1));
         }
      }
      
      public function set wingPreview4(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60395881wingPreview4;
         if(_loc2_ !== param1)
         {
            this._60395881wingPreview4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingPreview4",_loc2_,param1));
         }
      }
      
      public function set wingPreview1(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60395884wingPreview1;
         if(_loc2_ !== param1)
         {
            this._60395884wingPreview1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingPreview1",_loc2_,param1));
         }
      }
      
      public function set wingPreview5(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60395880wingPreview5;
         if(_loc2_ !== param1)
         {
            this._60395880wingPreview5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingPreview5",_loc2_,param1));
         }
      }
      
      public function set wingPreview2(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60395883wingPreview2;
         if(_loc2_ !== param1)
         {
            this._60395883wingPreview2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingPreview2",_loc2_,param1));
         }
      }
      
      public function set holeMain(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._515043687holeMain;
         if(_loc2_ !== param1)
         {
            this._515043687holeMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeMain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reqMixItem1() : ItemSlot
      {
         return this._483423936reqMixItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqMixItem2() : ItemSlot
      {
         return this._483423935reqMixItem2;
      }
      
      public function set MixItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1037480286MixItem1;
         if(_loc2_ !== param1)
         {
            this._1037480286MixItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MixItem1",_loc2_,param1));
         }
      }
      
      public function __feather1_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(1);
      }
      
      private function subWingBind() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(Boolean(bindMain.slotData) && Boolean(bindItem.slotData))
         {
            _loc1_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][bindMain.slotData.itemId];
            _loc2_ = _core.getTemplateData(bindMain.slotData.type,bindMain.slotData.itemId,false);
            _loc3_ = _core.getTemplateData(bindItem.slotData.type,bindItem.slotData.itemId,false);
            if(Boolean(_loc1_) && Boolean(_loc2_) && Boolean(_loc3_))
            {
               if(ToolKit.isEqual(_loc1_.binded,1))
               {
                  _loc4_ = GamePredef.WING_BIND_ITEM_NUM;
                  if(Boolean(ToolKit.isEqual(_loc3_.id,GamePredef.WING_BIND_ITEM_ID)) && Boolean(_loc4_) && ToolKit.isBigOrEqual(bindItem.slotData.stackNum,_loc4_))
                  {
                     if(_core.player.enoughMoneyAuto(1,Number(bindMoney.text)))
                     {
                        bindButton.enabled = false;
                        _core.remote.call("changeWingBind",new Responder(onWingBind),bindMain.slotData.id,bindItem.slotData.id);
                     }
                     else
                     {
                        _core.sysMidNote(Language.WING_PANEL_U[30]);
                     }
                  }
               }
               else
               {
                  _core.sysMidNote(Language.WING_PANEL_U[39]);
               }
            }
         }
      }
      
      public function set MixItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1037480285MixItem2;
         if(_loc2_ !== param1)
         {
            this._1037480285MixItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MixItem2",_loc2_,param1));
         }
      }
      
      public function __feather9_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInBag() : ItemSlot
      {
         return this._2133274960itemInBag;
      }
      
      public function set wingFuncList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1701830995wingFuncList;
         if(_loc2_ !== param1)
         {
            this._1701830995wingFuncList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingFuncList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curLife() : BasicTxtButton
      {
         return this._1125811548curLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixMoney() : Label
      {
         return this._1394559310prefixMoney;
      }
      
      public function set mixButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._5143378mixButton;
         if(_loc2_ !== param1)
         {
            this._5143378mixButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mixButton",_loc2_,param1));
         }
      }
      
      public function sureBuyCritItem(param1:Boolean) : void
      {
         var _loc3_:NumPanel = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         if(_loc2_.goldLockFlag)
         {
            _loc2_.goldLockFlag = false;
         }
         _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
         _loc3_.parent = this;
         _loc3_.showSelected(itemByBuy,null,0,onBuyItem);
         _loc3_.closeWith(this);
      }
      
      public function funcBagClickHandler(param1:GameEvent) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:ItemSlot = null;
         var _loc2_:Object = param1.currentTarget.slotData;
         if(_loc2_)
         {
            if(ToolKit.isEqual(param1.currentTarget.type,GamePredef.TBL_PET))
            {
               _loc3_ = _core.getTemplateData(GamePredef.TBL_CREATURE,_loc2_.tid);
            }
            else
            {
               _loc4_ = Number(_loc2_.sid);
               _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId);
            }
            if(_loc3_)
            {
               for(_loc5_ in autoMatchSlots)
               {
                  _loc6_ = autoMatchSlots[_loc5_];
                  _loc7_ = _loc6_.slot;
                  if(tab.selectedIndex == 0 || tab.selectedIndex == 6)
                  {
                     if(_loc7_.giid > 0)
                     {
                        continue;
                     }
                  }
                  if(!(Boolean(_loc6_.id) && !ToolKit.isEqual(_loc3_.id,_loc6_.id)))
                  {
                     if(!(Boolean(_loc6_.itemType) && !ToolKit.isEqual(_loc6_.itemType,_loc2_.type)))
                     {
                        if(!(Boolean(_loc6_.kind) && !ToolKit.isEqual(_loc6_.kind,_loc3_.kind)))
                        {
                           if(!(Boolean(_loc6_.type) && !ToolKit.isEqual(_loc6_.type,_loc3_.type)))
                           {
                              updatePanelSlot(_loc7_,param1.currentTarget);
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advanceJoinEnable() : Boolean
      {
         return this._1696059025advanceJoinEnable;
      }
      
      public function set starNumBasic(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._341865658starNumBasic;
         if(_loc2_ !== param1)
         {
            this._341865658starNumBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starNumBasic",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherUpMain() : ItemSlot
      {
         return this._1967214217featherUpMain;
      }
      
      private function holeEquChange(param1:GameEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         if(holeMain.slotData)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][holeMain.slotData.itemId];
            _loc3_ = _core.getTemplateData(holeMain.slotData.type,holeMain.slotData.itemId,false);
            if(Boolean(_loc3_) && Boolean(_loc2_))
            {
               _loc4_ = Number(GamePredef.WING_HOLE_COLOR_HOLE_MAP[_loc2_.color]);
               if(!_loc4_ || ToolKit.isBigOrEqual(_loc2_.holeNum,_loc4_))
               {
                  _core.sysMidNote(Language.WING_PANEL_U[52]);
                  holeButton.enabled = false;
                  return;
               }
               _loc5_ = int(int(_loc2_.holeNum / 10) || 0);
               _loc6_ = int(int(_loc2_.holeNum % 10) || 0);
               _loc7_ = true;
               _loc8_ = Number(GamePredef.WING_HOLE_ITEM_NUM[_loc5_]);
               if(_loc5_ > _loc6_)
               {
                  _loc7_ = false;
                  _loc8_ = Number(GamePredef.WING_HOLE_ITEM_NUM[_loc6_]);
               }
               if(_loc8_)
               {
                  holeItemNumTip.htmlText = Language.WING_PANEL_U[40].replace("{num}",_loc8_);
                  holeItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
                  holeItemRequire.giid = GamePredef.WING_HOLE_ITEM_ID;
                  holeItemRequire.stackNum = _loc8_;
                  holeMoney.text = GamePredef.MONEY_EQUFUNC_ACTIVE.toString();
                  if(Boolean(holeItem.slotData) && holeItem.slotData.type == GamePredef.TBL_ITEM_INSTANCE)
                  {
                     _loc9_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][holeItem.slotData.itemId];
                     _loc10_ = _core.getTemplateData(holeItem.slotData.type,holeItem.slotData.itemId,false);
                     if(Boolean(_loc9_) && Boolean(_loc10_))
                     {
                        if(ToolKit.isEqual(_loc10_.id,GamePredef.WING_HOLE_ITEM_ID) && ToolKit.isBigOrEqual(holeItem.slotData.stackNum,_loc8_))
                        {
                           holeButton.enabled = true;
                           return;
                        }
                     }
                  }
               }
            }
         }
         holeButton.enabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextPhy() : BasicTxtButton
      {
         return this._1847059854nextPhy;
      }
      
      public function set prefixItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1340602171prefixItem;
         if(_loc2_ !== param1)
         {
            this._1340602171prefixItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get introText1() : IntroText
      {
         return this._1246703000introText1;
      }
      
      [Bindable(event="propertyChange")]
      public function get introText2() : IntroText
      {
         return this._1246703001introText2;
      }
      
      public function __feather10_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(10);
      }
      
      [Bindable(event="propertyChange")]
      public function get introText4() : IntroText
      {
         return this._1246703003introText4;
      }
      
      [Bindable(event="propertyChange")]
      public function get introText5() : IntroText
      {
         return this._1246703004introText5;
      }
      
      [Bindable(event="propertyChange")]
      public function get introText8() : IntroText
      {
         return this._1246703007introText8;
      }
      
      [Bindable(event="propertyChange")]
      public function get introText3() : IntroText
      {
         return this._1246703002introText3;
      }
      
      public function __wingFuncList_change(param1:ListEvent) : void
      {
         switchVS(wingFuncList.selectedIndex);
      }
      
      [Bindable(event="propertyChange")]
      public function get introText6() : IntroText
      {
         return this._1246703005introText6;
      }
      
      public function set featherSetButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550657233featherSetButton;
         if(_loc2_ !== param1)
         {
            this._550657233featherSetButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherSetButton",_loc2_,param1));
         }
      }
      
      private function featherUpViewClear() : void
      {
         featherUpMain.clean();
         featherUpItem.clean();
         curFeatherProp.text = "";
      }
      
      private function featherSetDropAlert(param1:DragEvent) : void
      {
         var _loc2_:ItemSlot = null;
         if(param1.dragSource.hasFormat("slot") && Boolean(featherSetMain.slotData))
         {
            param1.stopImmediatePropagation();
            _loc2_ = ItemSlot(param1.currentTarget);
            if(ToolKit.isBigThan(_loc2_.giid,0))
            {
               _core.sysBlueMsg(Language.WING_PANEL_U[101]);
               return;
            }
            _loc2_.dragDropHandler(param1);
         }
      }
      
      private function autoPutFeatherMix() : void
      {
         var slotArr:Array = null;
         var i:String = null;
         var luckItemObj:Object = null;
         var func:Function = null;
         var itemObj:Object = null;
         var event:DragEvent = null;
         var ds:DragSource = null;
         var iSlot:ISlot = null;
         if(formularList.selectedItem)
         {
            slotArr = ["mixFormular","MixItem1","MixItem2"];
            for each(i in slotArr)
            {
               if(this["req" + i].giid > 0)
               {
                  itemObj = _core.getItemNumNew(GamePredef.TBL_ITEM_TEMPLATE,this["req" + i].giid);
                  if(itemObj.num > 0)
                  {
                     event = new DragEvent(DragEvent.DRAG_DROP);
                     ds = new DragSource();
                     iSlot = _core.view.getSlot(itemObj.slot.sid);
                     if(iSlot)
                     {
                        ds.addData(iSlot,"slot");
                        event.dragSource = ds;
                        this[i].dispatchEvent(event);
                     }
                  }
               }
            }
            luckItemObj = _core.getItemNumNew(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.FEATHER_LUCKY_ID2);
            func = function(param1:CloseEvent):void
            {
               var _loc2_:DragEvent = null;
               var _loc3_:DragSource = null;
               var _loc4_:ISlot = null;
               if(param1.detail == Alert.YES)
               {
                  _loc2_ = new DragEvent(DragEvent.DRAG_DROP);
                  _loc3_ = new DragSource();
                  _loc4_ = _core.view.getSlot(luckItemObj.slot.sid);
                  if(_loc4_)
                  {
                     _loc3_.addData(_loc4_,"slot");
                     _loc2_.dragSource = _loc3_;
                     mixLuckyItem.dispatchEvent(_loc2_);
                  }
               }
            };
            if(luckItemObj.num > 0)
            {
               Alert.show("Bạn có muốn tự động đặt Lông Vũ Chúc Phúc Cao Cấp không?",null,Alert.YES | Alert.NO,null,func);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherDelButton() : BasicGlowButton
      {
         return this._912391750featherDelButton;
      }
      
      private function onWingPrefix(param1:Object) : void
      {
         var slot:ISlot = null;
         var oldequData:Object = null;
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var rate:* = undefined;
         var newequData:Object = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data)
         {
            if(data.f)
            {
               slot = _core.view.getSlot(data.sid);
               if(slot)
               {
                  slot.giid = data.i;
               }
               if(!data.saveType)
               {
                  if(ToolKit.isEqual(prefixItem.slotData.id,data.ii) && data.inum > 0)
                  {
                     prefixItem.stackNum = data.inum;
                  }
                  else
                  {
                     prefixItem.clean();
                  }
               }
               oldequData = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][data.i];
               yesAlert = Alert.yesLabel;
               noAlert = Alert.noLabel;
               func = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  if(param1.detail == Alert.YES)
                  {
                     if(!data.saveType)
                     {
                        _core.remote.nc.call("sureChangeWingPrefix",new Responder(onSureChangeWingPrefix),1);
                     }
                     else
                     {
                        _core.remote.nc.call("sureChangeWingPrefix",null,1);
                     }
                  }
                  else if(!data.saveType)
                  {
                     _core.remote.nc.call("sureChangeWingPrefix",new Responder(onSureChangeWingPrefix),-1);
                  }
                  else
                  {
                     _core.remote.nc.call("sureChangeWingPrefix",null,-1);
                  }
               };
               title = Language.WING_PANEL_U[113];
               contentMsg = "<b>" + Language.WING_PANEL_U[113] + "</b>" + "    \n";
               rate = GamePredef.EQUIPT_STAR_NUM[oldequData.upgradeNum];
               newequData = data.n;
               if(newequData.mainProp1 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + int(oldequData.mainPropNum1 * rate) + (oldequData.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || oldequData.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + int(newequData.mainPropNum1 * rate) + (newequData.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || newequData.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>";
               }
               if(newequData.mainProp2 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + int(oldequData.mainPropNum2 * rate) + (oldequData.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || oldequData.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + int(newequData.mainPropNum2 * rate) + (newequData.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || newequData.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>";
               }
               if(newequData.prop1 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.prop1] + ": " + "<font color=\'#00FFFF\'>" + oldequData.propNum1 + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.prop1] + ": " + "<font color=\'#00FFFF\'>" + newequData.propNum1 + "</font>";
               }
               if(newequData.prop2 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.prop2] + ": " + "<font color=\'#00FFFF\'>" + oldequData.propNum2 + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.prop2] + ": " + "<font color=\'#00FFFF\'>" + newequData.propNum2 + "</font>";
               }
               if(newequData.bindMainPropNum1 > 0 || newequData.bindMainPropNum2 > 0)
               {
                  contentMsg = contentMsg + "\n" + "<font color=\'#FF11CC\'>" + Language.BASICTOOLTIP_S[0] + "</font>";
               }
               if(newequData.mainProp1 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + oldequData.bindMainPropNum1 + "%" + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + newequData.bindMainPropNum1 + "%" + "</font>";
               }
               if(newequData.mainProp2 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + oldequData.bindMainPropNum2 + "%" + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + newequData.bindMainPropNum2 + "%" + "</font>";
               }
               msg = contentMsg.replace(/<font(.*?)>/g,"");
               msg = msg.replace(/<\/font>/g,"");
               msg = msg.replace(/<b>/g,"");
               msg = msg.replace(/<\/b>/g,"");
               Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
               Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
               _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
               Alert.yesLabel = yesAlert;
               Alert.noLabel = noAlert;
               tf = _alert.mx_internal::alertForm.mx_internal::textField;
               tf.htmlText = contentMsg;
               tf.filters = GamePredef.FILTER_TEXT1;
            }
            else
            {
               prefixButton.enabled = true;
               _core.sysMidNote(Language.WING_PANEL_U[37]);
               prefixEquChange(null);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get introText() : IntroText
      {
         return this._871500217introText;
      }
      
      public function showWingChangeAlert(param1:Object) : void
      {
         switch(param1.saveType)
         {
            case 2:
               onWingBind(param1);
               break;
            case 5:
               onWingPrefix(param1);
         }
         this.hide();
      }
      
      private function tabPageUpdate() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(selectedIndex)
         {
            _loc1_ = selectedIndex;
         }
         else
         {
            _loc1_ = 0;
         }
         autoMatchSlots = new Array();
         switch(_loc1_)
         {
            case 0:
               joinMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinViewClear();
               joinWing1.addEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing2.addEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing3.addEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing4.addEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               autoMatchSlots.push({
                  "slot":joinMain,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":joinWing1,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":joinWing2,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":joinWing3,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":joinWing4,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               break;
            case 1:
               prefixViewClear();
               prefixMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,prefixEquChange);
               prefixItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,prefixEquChange);
               autoMatchSlots.push({
                  "slot":prefixMain,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":prefixItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":GamePredef.WING_PREFIX_ITEM_ID
               });
               break;
            case 2:
               bindViewClear();
               bindMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,bindEquChange);
               bindItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,bindEquChange);
               autoMatchSlots.push({
                  "slot":bindMain,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":bindItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":GamePredef.WING_BIND_ITEM_ID
               });
               break;
            case 3:
               holeViewClear();
               holeMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,holeEquChange);
               holeItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,holeEquChange);
               autoMatchSlots.push({
                  "slot":holeMain,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":holeItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":GamePredef.WING_HOLE_ITEM_ID
               });
               break;
            case 4:
               starViewClear();
               starMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,starEquChange);
               starItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,starEquChange);
               autoMatchSlots.push({
                  "slot":starMain,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               autoMatchSlots.push({
                  "slot":starItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":GamePredef.WING_STAR_ITEM_ID
               });
               break;
            case 5:
               featherUpMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,featherUpChange);
               featherUpItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,featherUpChange);
               featherUpViewClear();
               autoMatchSlots.push({
                  "slot":featherUpMain,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_FEATHER
               });
               autoMatchSlots.push({
                  "slot":featherUpItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":GamePredef.FEATHER_LUCKY_ID
               });
               break;
            case 6:
               featherSetMain.addEventListener(GameEvent.SLOT_GIID_CHANGE,featherSetEquChange);
               autoMatchSlots.push({
                  "slot":featherSetMain,
                  "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_WING
               });
               _loc2_ = 1;
               while(_loc2_ <= 10)
               {
                  this["feather" + _loc2_].addEventListener(GameEvent.SLOT_GIID_CHANGE,featherSetItemChange);
                  this["feather" + _loc2_].addEventListener(DragEvent.DRAG_DROP,featherSetDropAlert,false,1000);
                  autoMatchSlots.push({
                     "slot":this["feather" + _loc2_],
                     "itemType":GamePredef.TBL_ITEM_INSTANCE,
                     "kind":GamePredef.ITEM_KIND_FEATHER
                  });
                  _loc2_++;
               }
               featherSetViewClear();
               break;
            case 7:
               featherMixViewClear();
               mixFormular.addEventListener(GameEvent.SLOT_GIID_CHANGE,featherMixChange);
               mixLuckyItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,mixLuckyItemChange);
               _loc2_ = 1;
               while(_loc2_ <= 2)
               {
                  this["MixItem" + _loc2_].addEventListener(GameEvent.SLOT_GIID_CHANGE,featherMixChange);
                  autoMatchSlots.push({
                     "slot":this["MixItem" + _loc2_],
                     "itemType":GamePredef.TBL_ITEM_INSTANCE,
                     "kind":GamePredef.ITEM_KIND_FEATHER
                  });
                  _loc2_++;
               }
               autoMatchSlots.push({
                  "slot":mixFormular,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "kind":GamePredef.ITEM_KIND_FEATHER,
                  "type":GamePredef.ITEM_TYPE_FEATHER_MIX
               });
               autoMatchSlots.push({
                  "slot":mixLuckyItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":GamePredef.FEATHER_LUCKY_ID2
               });
               break;
            case 8:
               initWingLevelUp();
         }
         if(Boolean(wingBag) && Boolean(wingBag.visible))
         {
            wingBagRefresh();
         }
      }
      
      public function set prefixItemRequire(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._589175008prefixItemRequire;
         if(_loc2_ !== param1)
         {
            this._589175008prefixItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixItemRequire",_loc2_,param1));
         }
      }
      
      public function __growBtn2_click(param1:MouseEvent) : void
      {
         growWingExp(2);
      }
      
      private function subWingHole() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(Boolean(holeMain.slotData) && Boolean(holeItem.slotData))
         {
            _loc1_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][holeMain.slotData.itemId];
            _loc2_ = _core.getTemplateData(holeMain.slotData.type,holeMain.slotData.itemId,false);
            _loc3_ = _core.getTemplateData(holeItem.slotData.type,holeItem.slotData.itemId,false);
            if(Boolean(_loc1_) && Boolean(_loc2_) && Boolean(_loc3_))
            {
               if(ToolKit.isEqual(_loc1_.binded,1))
               {
                  _loc4_ = int(int(_loc1_.holeNum / 10) || 0);
                  _loc5_ = int(int(_loc1_.holeNum % 10) || 0);
                  if(_loc4_ > _loc5_)
                  {
                     _loc6_ = false;
                     _loc7_ = Number(GamePredef.WING_HOLE_ITEM_NUM[_loc5_]);
                  }
                  else
                  {
                     _loc6_ = true;
                     _loc7_ = Number(GamePredef.WING_HOLE_ITEM_NUM[_loc4_]);
                  }
                  if(Boolean(ToolKit.isEqual(_loc3_.id,GamePredef.WING_HOLE_ITEM_ID)) && Boolean(_loc7_) && ToolKit.isBigOrEqual(holeItem.slotData.stackNum,_loc7_))
                  {
                     if(_core.player.enoughMoneyAuto(1,Number(holeMoney.text)))
                     {
                        _core.remote.call("addWingHole",new Responder(onWingHole),holeMain.slotData.id,holeItem.slotData.id);
                     }
                     else
                     {
                        _core.sysMidNote(Language.WING_PANEL_U[30]);
                     }
                  }
               }
               else
               {
                  _core.sysMidNote(Language.WING_PANEL_U[39]);
               }
            }
         }
      }
      
      public function __wTitle_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __feather6_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(6);
      }
      
      public function __prefixButton_click(param1:MouseEvent) : void
      {
         subWingPrefix();
      }
      
      [Bindable(event="propertyChange")]
      public function get bindButton() : BasicGlowButton
      {
         return this._405165519bindButton;
      }
      
      private function holeViewClear() : void
      {
         holeMain.clean();
         holeItem.clean();
         holeItemRequire.clean();
         holeMoney.text = "";
         holeItemNumTip.text = "";
      }
      
      public function set featherUpButtonOne(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1710253270featherUpButtonOne;
         if(_loc2_ !== param1)
         {
            this._1710253270featherUpButtonOne = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherUpButtonOne",_loc2_,param1));
         }
      }
      
      public function set featherUpItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1967315247featherUpItem;
         if(_loc2_ !== param1)
         {
            this._1967315247featherUpItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherUpItem",_loc2_,param1));
         }
      }
      
      public function set maxBindProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1323287868maxBindProp;
         if(_loc2_ !== param1)
         {
            this._1323287868maxBindProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxBindProp",_loc2_,param1));
         }
      }
      
      public function __buyBtn_click(param1:MouseEvent) : void
      {
         buyItem();
      }
      
      public function set bindItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939175152bindItem;
         if(_loc2_ !== param1)
         {
            this._939175152bindItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wingLabel() : Label
      {
         return this._164090455wingLabel;
      }
      
      private function onWingBind(param1:Object) : void
      {
         var wingTemp:Object = null;
         var showAlert:Boolean = false;
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var suffix1:String = null;
         var color:String = null;
         var suffix2:String = null;
         var color1:String = null;
         var title1:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data)
         {
            if(data.f)
            {
               showAlert = false;
               if(!data.saveType)
               {
                  if(ToolKit.isEqual(bindItem.slotData.id,data.ii) && data.n > 0)
                  {
                     bindItem.stackNum = data.n;
                  }
                  else
                  {
                     bindItem.clean();
                  }
                  if(bindMain.slotData)
                  {
                     showAlert = true;
                  }
                  wingTemp = _core.getTemplateData(bindMain.slotData.type,bindMain.slotData.itemId,false);
               }
               else
               {
                  wingTemp = new Object();
                  wingTemp.mainProp1 = data.mainProp1;
                  wingTemp.mainProp2 = data.mainProp1;
                  showAlert = true;
               }
               if(showAlert)
               {
                  yesAlert = Alert.yesLabel;
                  noAlert = Alert.noLabel;
                  func = function(param1:CloseEvent):void
                  {
                     Alert.yesLabel = yesAlert;
                     Alert.noLabel = noAlert;
                     if(param1.detail == Alert.YES)
                     {
                        if(!data.saveType)
                        {
                           _core.remote.nc.call("sureChangeWingBind",new Responder(onSureChangeWingBind),1);
                        }
                        else
                        {
                           _core.remote.nc.call("sureChangeWingBind",null,1);
                        }
                     }
                     else if(!data.saveType)
                     {
                        _core.remote.nc.call("sureChangeWingBind",new Responder(onSureChangeWingBind),-1);
                     }
                     else
                     {
                        _core.remote.nc.call("sureChangeWingBind",null,-1);
                     }
                  };
                  title = Language.WING_PANEL_U[112];
                  contentMsg = "<b>" + Language.WING_PANEL_U[112] + "</b>" + "    \n";
                  suffix1 = "";
                  suffix2 = "";
                  if(Number(data.b1) < Number(data.b11) && ToolKit.isBigThan(Number(data.b11),0))
                  {
                     title = "\n" + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp1];
                     color = "<font color=\'#00ff00\'>";
                     suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
                  }
                  else if(Number(data.b1) > Number(data.b11) && ToolKit.isBigThan(Number(data.b11),0))
                  {
                     title = "\n" + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp1];
                     color = "<font color=\'#ff0000\'>";
                     suffix1 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
                  }
                  else if(Number(data.b1) == Number(data.b11) && ToolKit.isBigThan(Number(data.b11),0))
                  {
                     title = "\n" + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp1];
                     color = "<font color=\'#00ff00\'>";
                     suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
                  }
                  if(Number(data.b2) < Number(data.b12) && ToolKit.isBigThan(Number(data.b12),0))
                  {
                     title1 = "\n" + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp2];
                     color1 = "<font color=\'#00ff00\'>";
                     suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
                  }
                  else if(Number(data.b2) > Number(data.b12) && ToolKit.isBigThan(Number(data.b12),0))
                  {
                     title1 = "\n" + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp2];
                     color1 = "<font color=\'#ff0000\'>";
                     suffix2 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
                  }
                  else if(Number(data.b2) == Number(data.b12) && ToolKit.isBigThan(Number(data.b12),0))
                  {
                     title1 = "\n" + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp2];
                     color1 = "<font color=\'#00ff00\'>";
                     suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
                  }
                  if(ToolKit.isBigThan(Number(data.b11),0))
                  {
                     contentMsg += title + ": " + data.b1 + "%" + Language.EQUIPTFUNCPANEL_S[129] + color + data.b11 + "%</font>" + suffix1;
                  }
                  else if(ToolKit.isEqual(Number(data.b11),0) && ToolKit.isBigThan(Number(data.b1),0))
                  {
                     contentMsg += "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp1] + ": " + data.b1 + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + data.b1 + "%</font>" + "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
                  }
                  if(ToolKit.isBigThan(Number(data.b12),0))
                  {
                     contentMsg = contentMsg + title1 + ": " + data.b2 + "%" + Language.EQUIPTFUNCPANEL_S[129] + color1 + data.b12 + "%</font>" + suffix2;
                  }
                  else if(ToolKit.isEqual(Number(data.b12),0) && ToolKit.isBigThan(Number(data.b2),0))
                  {
                     contentMsg += "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[wingTemp.mainProp2] + ": " + data.b2 + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + data.b2 + "%</font>" + "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
                  }
                  msg = contentMsg.replace(/<font(.*?)>/g,"");
                  msg = msg.replace(/<\/font>/g,"");
                  msg = msg.replace(/<b>/g,"");
                  msg = msg.replace(/<\/b>/g,"");
                  Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
                  Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
                  _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  tf = _alert.mx_internal::alertForm.mx_internal::textField;
                  tf.htmlText = contentMsg;
                  tf.filters = GamePredef.FILTER_TEXT1;
               }
            }
            else
            {
               bindButton.enabled = true;
               _core.sysMidNote(Language.WING_PANEL_U[42]);
               bindEquChange(null);
            }
         }
      }
      
      public function __starAllButton_click(param1:MouseEvent) : void
      {
         subWingStar(false);
      }
      
      [Bindable(event="propertyChange")]
      public function get starMax() : NumericStepper
      {
         return this._1897222734starMax;
      }
      
      public function set reqmixFormular(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1268261610reqmixFormular;
         if(_loc2_ !== param1)
         {
            this._1268261610reqmixFormular = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqmixFormular",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxPrefixProp() : TextArea
      {
         return this._1782203801maxPrefixProp;
      }
      
      public function set joinInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1402072840joinInfo;
         if(_loc2_ !== param1)
         {
            this._1402072840joinInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinInfo",_loc2_,param1));
         }
      }
      
      public function set featherMixAutoPutBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._771118837featherMixAutoPutBtn;
         if(_loc2_ !== param1)
         {
            this._771118837featherMixAutoPutBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherMixAutoPutBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get holeItemRequire() : ItemSlot
      {
         return this._1651487246holeItemRequire;
      }
      
      public function set selectCrit(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1656453898selectCrit;
         if(_loc2_ !== param1)
         {
            this._1656453898selectCrit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectCrit",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyBtn() : BasicGlowButton
      {
         return this._1377586698buyBtn;
      }
      
      private function onFeatherMix(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(param1)
         {
            if(Boolean(param1.fid) && Boolean(mixFormular.slotData) && ToolKit.isEqual(param1.fid,mixFormular.slotData.id))
            {
               if(param1.fnum > 0)
               {
                  mixFormular.stackNum = param1.fnum;
               }
               else
               {
                  mixFormular.clean();
               }
            }
            if(param1.i)
            {
               for(_loc2_ in param1.i)
               {
                  _loc3_ = param1.i[_loc2_];
                  if(Boolean(this["MixItem" + _loc2_].slotData) && ToolKit.isEqual(this["MixItem" + _loc2_].slotData.id,_loc3_.id))
                  {
                     if(_loc3_.num > 0)
                     {
                        this["MixItem" + _loc2_].stackNum = _loc3_.num;
                     }
                     else
                     {
                        this["MixItem" + _loc2_].clean();
                     }
                  }
               }
            }
            if(Boolean(param1.lid) && Boolean(mixLuckyItem.slotData) && ToolKit.isEqual(param1.lid,mixLuckyItem.slotData.id))
            {
               if(param1.lnum > 0)
               {
                  mixLuckyItem.stackNum = param1.lnum;
               }
               else
               {
                  mixLuckyItem.clean();
               }
            }
            if(param1.f)
            {
               _core.sysMidNote(Language.WING_PANEL_U[95]);
            }
            else if(ToolKit.isEqual(param1.fid,-1))
            {
               _core.sysMidNote(Language.WING_PANEL_U[96]);
            }
            else if(ToolKit.isEqual(param1.fid,-2))
            {
               _core.sysMidNote(Language.WING_PANEL_U[103]);
            }
            else
            {
               _core.sysMidNote(Language.WING_PANEL_U[94]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curSpeed() : BasicTxtButton
      {
         return this._547091943curSpeed;
      }
      
      [Bindable(event="propertyChange")]
      public function get starAllButton() : BasicGlowButton
      {
         return this._360588801starAllButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get feather10() : ItemSlot
      {
         return this._432885246feather10;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinMain() : ItemSlotEquFunc
      {
         return this._1401966077joinMain;
      }
      
      public function set joinButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1034217724joinButton;
         if(_loc2_ !== param1)
         {
            this._1034217724joinButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinButton",_loc2_,param1));
         }
      }
      
      public function set featherUpLuckItemNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._774447364featherUpLuckItemNum;
         if(_loc2_ !== param1)
         {
            this._774447364featherUpLuckItemNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherUpLuckItemNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherMixLuckItemNum() : NumericStepper
      {
         return this._165104137featherMixLuckItemNum;
      }
      
      public function set starOneButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1900875002starOneButton;
         if(_loc2_ !== param1)
         {
            this._1900875002starOneButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starOneButton",_loc2_,param1));
         }
      }
      
      public function set holeItemNumTip(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._262477064holeItemNumTip;
         if(_loc2_ !== param1)
         {
            this._262477064holeItemNumTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeItemNumTip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wingExp() : BoxLabel
      {
         return this._1349542418wingExp;
      }
      
      public function changePreView(param1:int) : void
      {
         var _loc2_:Object = _core.data.getGameData(GamePredef.TBL_EQUIPT_INSTANCE,curWingId);
         if(!_loc2_)
         {
            return;
         }
         if(_loc2_.color == 3)
         {
            return;
         }
         var _loc3_:Number = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         while(_loc5_ < rescodeArray.length)
         {
            if(rescodeArray[_loc5_] == curRescode)
            {
               _loc4_ = _loc5_;
               currentIndex = _loc5_;
               break;
            }
            _loc5_++;
         }
         currentIndex = (_loc4_ + param1 + 3) % 3;
         _loc3_ = Number(rescodeArray[currentIndex]);
         curRescode = _loc3_;
         changeViewBox.selected = false;
         previewCanvas.wingResCode = _loc3_;
         wingLabel.text = rescodeLabel[currentIndex];
      }
      
      private function isWingBind(param1:Object) : Boolean
      {
         var _loc4_:Object = null;
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.main.itemId];
         if(ToolKit.isEqual(_loc2_.binded,1))
         {
            return true;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 4)
         {
            if(param1["wing" + _loc3_])
            {
               _loc4_ = param1["wing" + _loc3_];
               _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][_loc4_.itemId];
               if(ToolKit.isEqual(_loc2_.binded,1))
               {
                  return true;
               }
            }
            _loc3_++;
         }
         return false;
      }
      
      private function subWingJoin() : void
      {
         var wings:Object = null;
         var func:Function = null;
         if(Boolean(joinMain.slotData) && Boolean(joinWing1.slotData) && Boolean(joinWing2.slotData) && Boolean(joinWing3.slotData) && Boolean(joinWing4.slotData))
         {
            wings = {};
            wings.main = joinMain.slotData;
            wings.wing1 = joinWing1.slotData;
            wings.wing2 = joinWing2.slotData;
            wings.wing3 = joinWing3.slotData;
            wings.wing4 = joinWing4.slotData;
            if(checkWingData(wings))
            {
               if(isWingBind(wings))
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("wingJoin",new Responder(onJoin),joinMain.slotData.id,{
                           "w1":joinWing1.slotData.id,
                           "w2":joinWing2.slotData.id,
                           "w3":joinWing3.slotData.id,
                           "w4":joinWing4.slotData.id
                        });
                     }
                  };
                  Alert.show(Language.WING_PANEL_U[9],"",Alert.YES | Alert.NO,this,func);
               }
               else
               {
                  _core.remote.call("wingJoin",new Responder(onJoin),joinMain.slotData.id,{
                     "w1":joinWing1.slotData.id,
                     "w2":joinWing2.slotData.id,
                     "w3":joinWing3.slotData.id,
                     "w4":joinWing4.slotData.id
                  });
               }
            }
         }
      }
      
      public function set featherSetMain(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1386354456featherSetMain;
         if(_loc2_ !== param1)
         {
            this._1386354456featherSetMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherSetMain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get funcBtn0() : BasicGlowButton
      {
         return this._1379459640funcBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get funcBtn1() : BasicGlowButton
      {
         return this._1379459641funcBtn1;
      }
      
      private function deActiveView(param1:int = -1) : void
      {
         var _loc2_:int = 0;
         if(param1 < 0)
         {
            param1 = tab.selectedIndex;
         }
         switch(param1)
         {
            case 0:
               joinMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing1.removeEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing2.removeEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing3.removeEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               joinWing4.removeEventListener(GameEvent.SLOT_GIID_CHANGE,joinEquChange);
               break;
            case 1:
               prefixMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,prefixEquChange);
               prefixItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,prefixEquChange);
               break;
            case 2:
               bindMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,bindEquChange);
               bindItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,bindEquChange);
               break;
            case 3:
               holeMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,holeEquChange);
               holeItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,holeEquChange);
               break;
            case 4:
               starMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,starEquChange);
               starItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,starEquChange);
               break;
            case 5:
               featherUpMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,featherUpChange);
               featherUpItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,featherUpChange);
               break;
            case 6:
               featherSetMain.removeEventListener(GameEvent.SLOT_GIID_CHANGE,featherSetEquChange);
               _loc2_ = 1;
               while(_loc2_ <= 10)
               {
                  this["feather" + _loc2_].removeEventListener(GameEvent.SLOT_GIID_CHANGE,featherSetItemChange);
                  this["feather" + _loc2_].removeEventListener(DragEvent.DRAG_DROP,featherSetDropAlert);
                  _loc2_++;
               }
               break;
            case 7:
               mixFormular.removeEventListener(GameEvent.SLOT_GIID_CHANGE,featherMixChange);
               mixLuckyItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,mixLuckyItemChange);
               _loc2_ = 1;
               while(true)
               {
                  if(_loc2_ <= 2)
                  {
                     this["MixItem" + _loc2_].removeEventListener(GameEvent.SLOT_GIID_CHANGE,featherMixChange);
                     _loc2_++;
                     continue;
                  }
               }
         }
      }
      
      public function set nextSpeed(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1206019348nextSpeed;
         if(_loc2_ !== param1)
         {
            this._1206019348nextSpeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextSpeed",_loc2_,param1));
         }
      }
      
      public function set changeViewBox(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._524842218changeViewBox;
         if(_loc2_ !== param1)
         {
            this._524842218changeViewBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeViewBox",_loc2_,param1));
         }
      }
      
      public function set mixLuckyItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1954302177mixLuckyItem;
         if(_loc2_ !== param1)
         {
            this._1954302177mixLuckyItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mixLuckyItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starInfo() : BasicTxtButton
      {
         return this._1315530272starInfo;
      }
      
      public function __feather3_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(3);
      }
      
      public function set curPhy(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1349152991curPhy;
         if(_loc2_ !== param1)
         {
            this._1349152991curPhy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPhy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bindItemRequire() : ItemSlot
      {
         return this._210599509bindItemRequire;
      }
      
      public function set starMain(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1315637035starMain;
         if(_loc2_ !== param1)
         {
            this._1315637035starMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starMain",_loc2_,param1));
         }
      }
      
      public function set curLevel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._540315940curLevel;
         if(_loc2_ !== param1)
         {
            this._540315940curLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starRateInfo() : BasicTxtButton
      {
         return this._1615024608starRateInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get mixFormular() : ItemSlot
      {
         return this._934857288mixFormular;
      }
      
      private function onWingHole(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            if(param1.f)
            {
               _core.sysMidNote(Language.WING_PANEL_U[50]);
               if(_core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i])
               {
                  _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i].holeNum = param1.h;
               }
               if(ToolKit.isEqual(holeItem.slotData.id,param1.ii) && param1.n > 0)
               {
                  holeItem.stackNum = param1.n;
               }
               else
               {
                  holeItem.clean();
               }
               if(holeMain.slotData)
               {
                  _loc2_ = _core.getTemplateData(holeMain.slotData.type,holeMain.slotData.itemId,false);
               }
            }
            else
            {
               _core.sysMidNote(Language.WING_PANEL_U[51]);
            }
            holeEquChange(null);
         }
      }
      
      private function onSureChangeWingBind(param1:Object) : void
      {
         var _loc2_:Object = null;
         bindButton.enabled = true;
         if(param1)
         {
            if(param1.f == "sure")
            {
               _core.sysMidNote(Language.WING_PANEL_U[41]);
               _loc2_ = _core.getTemplateData(bindMain.slotData.type,bindMain.slotData.itemId,false);
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][bindMain.slotData.itemId].bindMainPropNum1 = param1.b1;
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][bindMain.slotData.itemId].bindMainPropNum2 = param1.b2;
               curBindProp.htmlText = Language.WING_PANEL_U[53] + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + param1.b1 + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + param1.b2 + "%";
            }
         }
      }
      
      public function __growBtn1_click(param1:MouseEvent) : void
      {
         growWingExp(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get featherUpRateInfo() : BasicTxtButton
      {
         return this._631614868featherUpRateInfo;
      }
      
      public function set featherMixRate(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._474659641featherMixRate;
         if(_loc2_ !== param1)
         {
            this._474659641featherMixRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherMixRate",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinWing1() : ItemSlotEquFunc
      {
         return this._501797252joinWing1;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinWing2() : ItemSlotEquFunc
      {
         return this._501797251joinWing2;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinWing3() : ItemSlotEquFunc
      {
         return this._501797250joinWing3;
      }
      
      public function set previewCanvas(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112177344previewCanvas;
         if(_loc2_ !== param1)
         {
            this._112177344previewCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"previewCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextMagic() : BasicTxtButton
      {
         return this._1200033402nextMagic;
      }
      
      public function set reqMixItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._483423935reqMixItem2;
         if(_loc2_ !== param1)
         {
            this._483423935reqMixItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqMixItem2",_loc2_,param1));
         }
      }
      
      public function growWingExp(param1:int) : void
      {
         _core.remote.call("newWingAdvanced",null,selectCrit.selected,param1);
      }
      
      public function set reqMixItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._483423936reqMixItem1;
         if(_loc2_ !== param1)
         {
            this._483423936reqMixItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqMixItem1",_loc2_,param1));
         }
      }
      
      public function __featherMixLuckItemNum_change(param1:NumericStepperEvent) : void
      {
         setMixRate();
      }
      
      [Bindable(event="propertyChange")]
      public function get formularList() : List
      {
         return this._12860042formularList;
      }
      
      public function updateNewWingPro(param1:Object) : void
      {
         if(param1)
         {
            if(param1.num1 > 0)
            {
               itemInBag.stackNum = param1.num1;
            }
            if(param1.num2 > 0)
            {
               itemByBuy.stackNum = param1.num2;
            }
            if(param1.level == 10)
            {
               wingExp.text = param1.curExp;
            }
            else
            {
               wingExp.text = param1.curExp + "/" + param1.nextExp;
            }
            showNewWingPro(param1.level,param1.curAdd,param1.nextAdd,param1.basicPro);
            rescodeArray = param1.arr;
            curRescode = param1.curRescode;
            level = param1.level;
            curWingId = param1.eid;
            showNextLevelWing(curRescode);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wingPreview1() : ItemSlotEquFunc
      {
         return this._60395884wingPreview1;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinWing4() : ItemSlotEquFunc
      {
         return this._501797249joinWing4;
      }
      
      [Bindable(event="propertyChange")]
      public function get wingPreview5() : ItemSlotEquFunc
      {
         return this._60395880wingPreview5;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeMain() : ItemSlotEquFunc
      {
         return this._515043687holeMain;
      }
      
      [Bindable(event="propertyChange")]
      public function get bindMoney() : Label
      {
         return this._946787709bindMoney;
      }
      
      private function bindEquChange(param1:GameEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(bindMain.slotData)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][bindMain.slotData.itemId];
            _loc3_ = _core.getTemplateData(bindMain.slotData.type,bindMain.slotData.itemId,false);
            if(Boolean(_loc3_) && Boolean(_loc2_))
            {
               if(ToolKit.isBigOrEqual(_loc2_.color,2))
               {
                  _loc4_ = Number(GamePredef.WING_BIND_ITEM_NUM || 10);
                  bindItemNumTip.htmlText = Language.WING_PANEL_U[40].replace("{num}",_loc4_);
                  bindItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
                  bindItemRequire.giid = GamePredef.WING_BIND_ITEM_ID;
                  bindItemRequire.stackNum = _loc4_;
                  bindMoney.text = GamePredef.MONEY_EQUFUNC_ELEMENT.toString();
                  curBindProp.htmlText = Language.WING_PANEL_U[53] + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + _loc2_.bindMainPropNum1 + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + _loc2_.bindMainPropNum2 + "%";
                  if(GamePredef.EQUIPT_QUALITY[20])
                  {
                     _loc5_ = Number(GamePredef.EQUIPT_QUALITY[20]);
                     maxBindProp.htmlText = Language.WING_PANEL_U[54] + Language.WING_PANEL_U[55] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + Math.round(_loc3_.bindPropNum * _loc5_) + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + Math.round(_loc3_.bindPropNum * _loc5_) + "%";
                  }
                  if(Boolean(bindItem.slotData) && bindItem.slotData.type == GamePredef.TBL_ITEM_INSTANCE)
                  {
                     _loc6_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][bindItem.slotData.itemId];
                     _loc7_ = _core.getTemplateData(bindItem.slotData.type,bindItem.slotData.itemId,false);
                     if(Boolean(_loc6_) && Boolean(_loc7_))
                     {
                        if(ToolKit.isEqual(_loc7_.id,GamePredef.WING_BIND_ITEM_ID) && ToolKit.isBigOrEqual(bindItem.slotData.stackNum,_loc4_))
                        {
                           bindButton.enabled = true;
                           return;
                        }
                     }
                  }
               }
               else
               {
                  _core.sysMidNote(Language.WING_PANEL_U[58]);
                  bindViewClear();
               }
            }
         }
         bindButton.enabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get wingPreview3() : ItemSlotEquFunc
      {
         return this._60395882wingPreview3;
      }
      
      public function __formularList_itemClick(param1:ListEvent) : void
      {
         formularListClick();
      }
      
      private function setMixRate() : void
      {
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         if(!formularList.selectedItem)
         {
            return;
         }
         var _loc1_:Object = formularList.selectedItem.data;
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_.nextJewelTid];
         if(!_loc2_)
         {
            return;
         }
         var _loc4_:int = 0;
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            if(ToolKit.isBigThan(_loc2_["i" + _loc5_],0))
            {
               _loc4_ += 1;
            }
            _loc5_++;
         }
         _loc3_ = Number(GamePredef.FEATHER_MIX_RATE[_loc4_]);
         if(_core.MC_BIRTH_FLAG[12])
         {
            _loc3_ = Number(GamePredef.MC_BIRTH_CONFIG[12][_loc4_]);
         }
         if(_loc3_)
         {
            _loc6_ = Math.ceil((100 - _loc3_) / GamePredef.FEATHER_UPDATE_RATE_ADDPER_2);
            featherMixLuckItemNum.minimum = 0;
            featherMixLuckItemNum.maximum = _loc6_;
            if(mixLuckyItem.slotData)
            {
               featherMixLuckItemNum.value = Math.min(_loc6_,featherMixLuckItemNum.value,mixLuckyItem.slotData.stackNum);
               _loc8_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][mixLuckyItem.slotData.itemId];
               _loc9_ = _core.getTemplateData(mixLuckyItem.slotData.type,mixLuckyItem.slotData.itemId,false);
               if(Boolean(_loc8_) && Boolean(_loc9_) && ToolKit.isEqual(_loc9_.id,GamePredef.FEATHER_LUCKY_ID2))
               {
                  _loc3_ += featherMixLuckItemNum.value * GamePredef.FEATHER_UPDATE_RATE_ADDPER_2;
               }
            }
            _loc7_ = _loc3_ > 100 ? "100" : String(_loc3_);
            featherMixRate.text = _loc7_ + "%";
            mixButton.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MixItem1() : ItemSlot
      {
         return this._1037480286MixItem1;
      }
      
      public function __featherDelButton_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_FEATHER_DEL);
      }
      
      [Bindable(event="propertyChange")]
      public function get wingPreview4() : ItemSlotEquFunc
      {
         return this._60395881wingPreview4;
      }
      
      public function set itemInBag(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2133274960itemInBag;
         if(_loc2_ !== param1)
         {
            this._2133274960itemInBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInBag",_loc2_,param1));
         }
      }
      
      public function set curMagic(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._541105997curMagic;
         if(_loc2_ !== param1)
         {
            this._541105997curMagic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curMagic",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MixItem2() : ItemSlot
      {
         return this._1037480285MixItem2;
      }
      
      public function set prefixMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1394559310prefixMoney;
         if(_loc2_ !== param1)
         {
            this._1394559310prefixMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixMoney",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wingFuncList() : List
      {
         return this._1701830995wingFuncList;
      }
      
      [Bindable(event="propertyChange")]
      public function get wingPreview2() : ItemSlotEquFunc
      {
         return this._60395883wingPreview2;
      }
      
      public function set curLife(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1125811548curLife;
         if(_loc2_ !== param1)
         {
            this._1125811548curLife = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curLife",_loc2_,param1));
         }
      }
      
      public function set itemByBuy(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2127138652itemByBuy;
         if(_loc2_ !== param1)
         {
            this._2127138652itemByBuy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemByBuy",_loc2_,param1));
         }
      }
      
      private function featherSetItemChange(param1:GameEvent) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.slotData)
         {
            _loc3_ = _core.getTemplateData(_loc2_.slotData.type,_loc2_.slotData.itemId,false);
            _loc4_ = Number(String(param1.currentTarget.id).substr(7));
            if(_loc3_)
            {
               if(ToolKit.isSmallOrEqual(canPutPropOfFeathers[_loc4_ % 2]["p" + _loc3_.type],0))
               {
                  _core.sysMidNote(Language.WING_PANEL_U[90]);
                  _loc2_.clean();
                  return;
               }
               if(canPutPropOfFeathers.color >= 0 && ToolKit.isBigThan(_loc3_.color,canPutPropOfFeathers.color))
               {
                  _core.sysMidNote(Language.WING_PANEL_U[84]);
                  _loc2_.clean();
                  return;
               }
               _loc5_ = 1;
               while(_loc5_ <= 3)
               {
                  if(canPutPropOfFeathers[_loc4_ % 2][_loc3_["i" + _loc5_]])
                  {
                     _core.sysMidNote(Language.WING_PANEL_U[74]);
                     _loc2_.clean();
                     return;
                  }
                  _loc5_++;
               }
            }
            return;
         }
      }
      
      public function onUpdateItemNum(param1:int, param2:int) : void
      {
         itemInBag.stackNum = param1;
         itemByBuy.stackNum = param2;
      }
      
      public function __feather8_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(8);
      }
      
      public function buyItem() : void
      {
         var func:Function;
         var bagPanel:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         if(!bagPanel.radioGold.selected)
         {
            Alert.show(Language.SHOPPANEL_S[8],null,Alert.YES,null,null);
            return;
         }
         func = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(sureBuyCritItem),MD5.hash(param1));
         };
         if(bagPanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.NUMPANEL_U[1],func);
         }
         else
         {
            sureBuyCritItem(true);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxBindProp() : TextArea
      {
         return this._1323287868maxBindProp;
      }
      
      public function __mixButton_click(param1:MouseEvent) : void
      {
         subFeatherMix();
      }
      
      public function set prefixMain(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1340501141prefixMain;
         if(_loc2_ !== param1)
         {
            this._1340501141prefixMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixMain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherUpItem() : ItemSlot
      {
         return this._1967315247featherUpItem;
      }
      
      public function set advanceJoinEnable(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1696059025advanceJoinEnable;
         if(_loc2_ !== param1)
         {
            this._1696059025advanceJoinEnable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advanceJoinEnable",_loc2_,param1));
         }
      }
      
      public function set featherUpMain(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1967214217featherUpMain;
         if(_loc2_ !== param1)
         {
            this._1967214217featherUpMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherUpMain",_loc2_,param1));
         }
      }
      
      public function set curPrefixProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899727221curPrefixProp;
         if(_loc2_ !== param1)
         {
            this._899727221curPrefixProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPrefixProp",_loc2_,param1));
         }
      }
      
      private function changeBagVis() : void
      {
         if(!wingBagAdded)
         {
            wingBag = null;
            wingBag = new FuncBag();
            wingBag.x = 498;
            wingBag.y = 33;
            width = 743;
            wingBag.rows = 2;
            wingBag.cols = 6;
            wingBag.upTabButtons = {
               "l":[Language.WING_PANEL_U[106],Language.WING_PANEL_U[107],Language.WING_PANEL_U[108],Language.WING_PANEL_U[109],Language.WING_PANEL_U[110],Language.WING_PANEL_U[111]],
               "p":"color",
               "v":[-1,4,3,2,1,0]
            };
            addChild(wingBag as FuncBag);
            wingBag.pFuncPanel = this;
            wingBag.DClickCallBack = funcBagClickHandler;
            this.addEventListener(Slot.EVENT_SLOT_DCLICK,funcBagClickHandler);
            wingBagAdded = true;
            showBag.styleName = "EquipBagLeft";
         }
         else if(wingBag.visible)
         {
            wingBag.visible = false;
            width = 500;
            showBag.styleName = "EquipBagRight";
         }
         else
         {
            wingBag.visible = true;
            width = 743;
            showBag.styleName = "EquipBagLeft";
         }
         if(wingBag.visible)
         {
            wingBagRefresh();
         }
         wTitle.text = wTitle.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqmixFormular() : ItemSlot
      {
         return this._1268261610reqmixFormular;
      }
      
      public function __holeButton_click(param1:MouseEvent) : void
      {
         subWingHole();
      }
      
      public function __starNumBasic_change(param1:NumericStepperEvent) : void
      {
         setStarInfo();
      }
      
      override public function show() : void
      {
         super.show();
         switchVS(tab ? tab.selectedIndex : 0);
      }
      
      private function subFeatherDel(param1:int) : void
      {
         var feather:Object = null;
         var price:Number = NaN;
         var func:Function = null;
         var showString:String = null;
         var index:int = param1;
         if(ToolKit.isEqual(this["feather" + index].type,GamePredef.TBL_ITEM_TEMPLATE))
         {
            if(Boolean(this["feather" + index].giid) && this["feather" + index].giid > 0)
            {
               feather = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][this["feather" + index].giid];
               if(feather)
               {
                  price = Number(GamePredef.FEATHER_DEL_MONEY[feather.color]);
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        if(_core.player.enoughMoneyAuto(1,price))
                        {
                           _core.remote.call("featherDel",new Responder(onFeatherDel),featherSetMain.slotData.id,index);
                        }
                        else
                        {
                           _core.sysBlueMsg(Language.WING_PANEL_U[30]);
                        }
                     }
                  };
                  showString = Language.WING_PANEL_U[75].toString();
                  showString = showString.replace("{silver}",Math.round(price));
                  showString = showString.replace("{name}",feather.name);
                  Alert.show(showString,"",3,this,func);
               }
            }
         }
         else
         {
            this["feather" + index].clean();
         }
      }
      
      public function __bindButton_click(param1:MouseEvent) : void
      {
         subWingBind();
      }
      
      [Bindable(event="propertyChange")]
      public function get featherMixAutoPutBtn() : BasicGlowButton
      {
         return this._771118837featherMixAutoPutBtn;
      }
      
      private function bindViewClear() : void
      {
         bindMain.clean();
         bindItemRequire.clean();
         bindItem.clean();
         curBindProp.htmlText = "";
         maxBindProp.htmlText = "";
         bindItemNumTip.htmlText = "";
         bindMoney.text = "";
      }
      
      private function subFeatherSet(param1:Boolean = true) : void
      {
         var wingIns:Object = null;
         var wingTemp:Object = null;
         var featherSets:Object = null;
         var needsAlert:Boolean = false;
         var i:int = 0;
         var itemIns:Object = null;
         var itemTemp:Object = null;
         var func:Function = null;
         var e:CloseEvent = null;
         var starOnce:Boolean = param1;
         if(featherSetMain.slotData)
         {
            wingIns = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][featherSetMain.slotData.itemId];
            wingTemp = _core.getTemplateData(featherSetMain.slotData.type,featherSetMain.slotData.itemId,false);
            if(Boolean(wingIns) && Boolean(wingTemp))
            {
               if(ToolKit.isEqual(wingTemp.kind,GamePredef.ITEM_KIND_WING))
               {
                  featherSets = {};
                  needsAlert = false;
                  i = 1;
                  while(i <= 10)
                  {
                     if(this["feather" + i].slotData)
                     {
                        if(this["feather" + i].tempBagFlag)
                        {
                           itemIns = {"binded":this["feather" + i].slotData.b};
                           itemTemp = _core.getTemplateData(this["feather" + i].slotData.ti,this["feather" + i].slotData.ii,false);
                        }
                        else
                        {
                           itemIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][this["feather" + i].slotData.itemId];
                           itemTemp = _core.getTemplateData(this["feather" + i].slotData.type,this["feather" + i].slotData.itemId,false);
                        }
                        if(Boolean(itemIns) && Boolean(itemTemp))
                        {
                           if(ToolKit.isEqual(itemTemp.kind,GamePredef.ITEM_KIND_FEATHER))
                           {
                              if(!needsAlert && ToolKit.isEqual(wingIns.binded,0) && ToolKit.isEqual(itemIns.binded,1))
                              {
                                 needsAlert = true;
                              }
                              featherSets[i] = {
                                 "idx":this["feather" + i].slotData.id,
                                 "flag":this["feather" + i].tempBagFlag
                              };
                           }
                        }
                     }
                     i++;
                  }
                  if(featherSets)
                  {
                     func = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.call("addWingFeather",new Responder(onFeatherSet),featherSetMain.slotData.id,featherSets);
                        }
                     };
                     if(needsAlert)
                     {
                        Alert.show(Language.WING_PANEL_U[85],"",Alert.YES | Alert.NO,null,func);
                     }
                     else
                     {
                        e = new CloseEvent("");
                        e.detail = Alert.YES;
                        func(e);
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curPhy() : BasicTxtButton
      {
         return this._1349152991curPhy;
      }
      
      public function set nextPhy(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1847059854nextPhy;
         if(_loc2_ !== param1)
         {
            this._1847059854nextPhy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPhy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherSetMain() : ItemSlotEquFunc
      {
         return this._1386354456featherSetMain;
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starMain() : ItemSlotEquFunc
      {
         return this._1315637035starMain;
      }
      
      public function __starOneButton_click(param1:MouseEvent) : void
      {
         subWingStar(true);
      }
      
      public function set introText1(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703000introText1;
         if(_loc2_ !== param1)
         {
            this._1246703000introText1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText1",_loc2_,param1));
         }
      }
      
      public function set introText2(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703001introText2;
         if(_loc2_ !== param1)
         {
            this._1246703001introText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText2",_loc2_,param1));
         }
      }
      
      public function set introText3(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703002introText3;
         if(_loc2_ !== param1)
         {
            this._1246703002introText3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText3",_loc2_,param1));
         }
      }
      
      public function set introText4(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703003introText4;
         if(_loc2_ !== param1)
         {
            this._1246703003introText4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mixLuckyItem() : ItemSlot
      {
         return this._1954302177mixLuckyItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeViewBox() : CheckBox
      {
         return this._524842218changeViewBox;
      }
      
      [Bindable(event="propertyChange")]
      public function get featherMixRate() : BasicTxtButton
      {
         return this._474659641featherMixRate;
      }
      
      public function set introText6(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703005introText6;
         if(_loc2_ !== param1)
         {
            this._1246703005introText6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText6",_loc2_,param1));
         }
      }
      
      private function mouseAction(param1:MouseEvent, param2:uint) : void
      {
         param1.stopImmediatePropagation();
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[GamePredef.ACTION_BIND]);
         _core.view.mouseState = param2;
         _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_CHA;
      }
      
      public function set introText8(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703007introText8;
         if(_loc2_ !== param1)
         {
            this._1246703007introText8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText8",_loc2_,param1));
         }
      }
      
      public function set introText5(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246703004introText5;
         if(_loc2_ !== param1)
         {
            this._1246703004introText5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText5",_loc2_,param1));
         }
      }
      
      public function set curBindProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2085845920curBindProp;
         if(_loc2_ !== param1)
         {
            this._2085845920curBindProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curBindProp",_loc2_,param1));
         }
      }
      
      public function set maxPrefixProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1782203801maxPrefixProp;
         if(_loc2_ !== param1)
         {
            this._1782203801maxPrefixProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPrefixProp",_loc2_,param1));
         }
      }
      
      public function __feather5_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get starOneButton() : BasicGlowButton
      {
         return this._1900875002starOneButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get curMagic() : BasicTxtButton
      {
         return this._541105997curMagic;
      }
      
      public function set bindMain(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939276182bindMain;
         if(_loc2_ !== param1)
         {
            this._939276182bindMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindMain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get previewCanvas() : CharactorShowCanvas
      {
         return this._112177344previewCanvas;
      }
      
      public function set wingLabel(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._164090455wingLabel;
         if(_loc2_ !== param1)
         {
            this._164090455wingLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingLabel",_loc2_,param1));
         }
      }
      
      public function set isFirst(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2058846118isFirst;
         if(_loc2_ !== param1)
         {
            this._2058846118isFirst = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFirst",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemByBuy() : ItemSlot
      {
         return this._2127138652itemByBuy;
      }
      
      private function subWingStar(param1:Boolean = true) : void
      {
         var wingTemp:Object = null;
         var wingIns:Object = null;
         var itemIns:Object = null;
         var itemTemp:Object = null;
         var upToNum:int = 0;
         var func:Function = null;
         var e:CloseEvent = null;
         var starOnce:Boolean = param1;
         if(Boolean(starMain.slotData) && Boolean(starItem.slotData))
         {
            wingTemp = _core.getTemplateData(starMain.slotData.type,starMain.slotData.itemId,false);
            wingIns = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][starMain.slotData.itemId];
            itemIns = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][starItem.slotData.itemId];
            itemTemp = _core.getTemplateData(starItem.slotData.type,starItem.slotData.itemId,false);
            if(Boolean(wingIns) && Boolean(wingTemp) && Boolean(itemIns) && Boolean(itemTemp))
            {
               if(ToolKit.isEqual(itemTemp.id,GamePredef.WING_STAR_ITEM_ID) && ToolKit.isBigOrEqual(starItem.slotData.stackNum,starNumBasic.value))
               {
                  upToNum = starOnce ? 0 : int(starMax.value);
                  func = function(param1:CloseEvent):*
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("addWingStar",new Responder(onWingStar),starNumBasic.value,starMain.slotData.id,starItem.slotData.id,upToNum);
                     }
                  };
                  if(ToolKit.isEqual(wingIns.binded,0) && ToolKit.isEqual(itemIns.binded,1))
                  {
                     Alert.show(Language.WING_PANEL_U[87],"",Alert.YES | Alert.NO,null,func);
                  }
                  else
                  {
                     e = new CloseEvent("");
                     e.detail = Alert.YES;
                     func(e);
                  }
               }
            }
         }
      }
      
      public function set starMax(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1897222734starMax;
         if(_loc2_ !== param1)
         {
            this._1897222734starMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starMax",_loc2_,param1));
         }
      }
      
      public function __featherUpLuckItemNum_change(param1:NumericStepperEvent) : void
      {
         featherUpChange(null);
      }
      
      private function updatePanelSlot(param1:ItemSlot, param2:Object = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:DragEvent = null;
         var _loc5_:DragSource = null;
         if(param2 != null)
         {
            _loc3_ = param2.slotData;
            _loc4_ = new DragEvent(DragEvent.DRAG_DROP);
            _loc5_ = new DragSource();
            _loc5_.addData(param2,"slot");
            _loc4_.dragSource = _loc5_;
            param1.dispatchEvent(_loc4_);
         }
         else
         {
            param1.clean();
         }
      }
      
      public function set introText(param1:IntroText) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._871500217introText;
         if(_loc2_ !== param1)
         {
            this._871500217introText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText",_loc2_,param1));
         }
      }
      
      public function set featherDelButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._912391750featherDelButton;
         if(_loc2_ !== param1)
         {
            this._912391750featherDelButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherDelButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curPrefixProp() : TextArea
      {
         return this._899727221curPrefixProp;
      }
      
      private function checkWingData(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:Object = null;
         var _loc12_:* = undefined;
         var _loc13_:Number = NaN;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               for(_loc4_ in param1)
               {
                  if(Boolean(param1[_loc2_] && param1[_loc4_]) && Boolean(_loc2_ != _loc4_) && param1[_loc2_].id == param1[_loc4_].id)
                  {
                     _core.sysMidNote(Language.WING_PANEL_U[5]);
                     return false;
                  }
               }
            }
            if(!param1.main)
            {
               _core.sysMidNote(Language.WING_PANEL_U[6]);
               return false;
            }
            _loc3_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.main.itemId];
            if(_loc3_)
            {
               _loc5_ = int(_loc3_.color);
               if(ToolKit.isBigOrEqual(_loc5_,GamePredef.WING_MAX_COLOR_LEVEL))
               {
                  _core.sysMidNote(Language.WING_PANEL_U[17]);
                  return false;
               }
               _loc6_ = int(GamePredef.WING_JOIN_SUCCESS[_loc5_]);
               if(_core.MC_BIRTH_FLAG[15])
               {
                  _loc6_ = int(GamePredef.MC_BIRTH_CONFIG[15][_loc5_]);
               }
               _loc7_ = 0;
               _loc8_ = 1;
               while(_loc8_ <= 4)
               {
                  if(param1["wing" + _loc8_])
                  {
                     _loc9_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1["wing" + _loc8_].itemId];
                     _loc7_ = Number(_loc9_.color);
                     if(!_loc9_ || !ToolKit.isEqual(_loc5_,_loc9_.color))
                     {
                        _core.sysMidNote(Language.WING_PANEL_U[7]);
                        return false;
                     }
                     if(!ToolKit.isEqual(_loc3_.tid,_loc9_.tid))
                     {
                        _loc6_ -= GamePredef.WING_REDUCE_RATE;
                     }
                  }
                  _loc8_++;
               }
               joinInfo.htmlText = Language.WING_PANEL_U[18] + _loc6_ + "%";
               if(Boolean(_loc7_ && ToolKit.isEqual(_loc7_,3)) && Boolean(_core.player.pmLevel) && Number(_core.player.pmLevel) > 0)
               {
                  _loc10_ = GameData.d[GamePredef.TBL_PM_RIGHT];
                  _loc11_ = null;
                  for(_loc12_ in _loc10_)
                  {
                     if(Boolean(_loc10_[_loc12_]) && Number(_loc10_[_loc12_].id) == 9)
                     {
                        _loc11_ = _loc10_[_loc12_];
                        break;
                     }
                  }
                  if(Boolean(_loc11_) && Boolean(_loc11_["value" + _core.player.pmLevel]))
                  {
                     _loc13_ = Number(_loc6_) + Number(_loc11_["value" + _core.player.pmLevel]);
                     joinInfo.htmlText = Language.WING_PANEL_U[18] + _loc13_ + "%";
                  }
               }
               return true;
            }
         }
         return false;
      }
      
      private function onFeatherUp(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            if(ToolKit.isEqual(param1.slotId,featherUpMain.slotData.id))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  featherUpMain.stackNum = param1.num;
               }
               else
               {
                  featherUpMain.clean();
               }
            }
            if(Boolean(featherUpItem.slotData) && ToolKit.isEqual(param1.lSid,featherUpItem.slotData.id))
            {
               if(ToolKit.isBigThan(param1.lnum,0))
               {
                  featherUpItem.stackNum = param1.lnum;
               }
               else
               {
                  featherUpItem.clean();
               }
            }
            if(Boolean(param1.flag) && Boolean(param1.finalNum))
            {
               _loc2_ = Language.WING_PANEL_U[63];
               _core.sysMidNote(_loc2_.replace("{finalNum}",param1.finalNum));
            }
            else
            {
               _core.sysMidNote(Language.WING_PANEL_U[64]);
            }
         }
      }
      
      private function _WingFuncPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WING_PANEL_U[0];
         _loc1_ = Language.WING_PANEL_U[0];
         _loc1_ = ResManager.TOTEM_MAGIC_WEAPON;
         _loc1_ = Language.WING_PANEL_U[20];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Language.WING_PANEL_U[15];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Language.WING_PANEL_U[4];
         _loc1_ = Language.WING_PANEL_U[3];
         _loc1_ = Language.WING_PANEL_U[4];
         _loc1_ = Language.WING_PANEL_U[16] + 1;
         _loc1_ = Language.WING_PANEL_U[16] + 2;
         _loc1_ = Language.WING_PANEL_U[16] + 3;
         _loc1_ = Language.WING_PANEL_U[16] + 4;
         _loc1_ = Language.WING_PANEL_U[16] + 5;
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = advanceJoinEnable;
         _loc1_ = Language.WING_PANEL_U[31];
         _loc1_ = Language.WING_PANEL_U[45];
         _loc1_ = Language.WING_PANEL_U[32];
         _loc1_ = Language.WING_PANEL_U[33];
         _loc1_ = Language.WING_PANEL_U[34];
         _loc1_ = Language.WING_PANEL_U[38];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.WING_PANEL_U[14];
         _loc1_ = Language.WING_PANEL_U[46];
         _loc1_ = Language.WING_PANEL_U[32];
         _loc1_ = Language.WING_PANEL_U[33];
         _loc1_ = Language.WING_PANEL_U[34];
         _loc1_ = Language.WING_PANEL_U[38];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.WING_PANEL_U[14];
         _loc1_ = Language.WING_PANEL_U[47];
         _loc1_ = Language.WING_PANEL_U[32];
         _loc1_ = Language.WING_PANEL_U[33];
         _loc1_ = Language.WING_PANEL_U[34];
         _loc1_ = Language.WING_PANEL_U[38];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.WING_PANEL_U[44];
         _loc1_ = Language.WING_PANEL_U[82];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[2];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[3];
         _loc1_ = Language.WING_PANEL_U[60];
         _loc1_ = Language.WING_PANEL_U[61];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[35];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[38];
         _loc1_ = Language.WING_PANEL_U[80];
         _loc1_ = Language.WING_PANEL_U[65];
         _loc1_ = Language.WING_PANEL_U[66];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"types":{518:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.WING_PANEL_U[67];
         _loc1_ = Language.WING_PANEL_U[68];
         _loc1_ = Language.WING_PANEL_U[81];
         _loc1_ = Language.WING_PANEL_U[70];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.WING_PANEL_U[71];
         _loc1_ = Language.WING_PANEL_U[97];
         _loc1_ = Language.WING_PANEL_U[98];
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.WING_PANEL_U[72];
         _loc1_ = Language.WING_PANEL_U[78];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {
            "kinds":{14:true},
            "types":{1400:true}
         };
         _loc1_ = Language.WING_PANEL_U[103];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {
            "types":{518:true},
            "ids":{3017:true}
         };
         _loc1_ = Language.WING_PANEL_U[102];
         _loc1_ = Language.WING_PANEL_U[104];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Language.WING_PANEL_U[105];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = {"kinds":{14:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = Language.WING_PANEL_U[79];
         _loc1_ = Language.WING_PANEL_U[130];
         _loc1_ = Language.WING_PANEL_U[123];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.WING_PANEL_U[124];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.WING_PANEL_U[135];
         _loc1_ = Language.WING_PANEL_U[131];
         _loc1_ = Language.WING_PANEL_U[132];
         _loc1_ = Language.WING_PANEL_U[137];
         _loc1_ = Language.WING_PANEL_U[126];
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = Language.WING_PANEL_U[128];
         _loc1_ = Language.WING_PANEL_U[127];
         _loc1_ = Language.WING_PANEL_U[129];
         _loc1_ = Language.WING_PANEL_U[142];
         _loc1_ = listArr;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[97];
      }
      
      public function initWingLevelUp() : void
      {
         if(itemByBuy.slotData == null)
         {
            itemByBuy.slotData = {};
            itemByBuy.slotData.id = 3628;
         }
         _core.remote.showNewWingPro();
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixMain() : ItemSlotEquFunc
      {
         return this._1340501141prefixMain;
      }
      
      private function onFeatherData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         if(param1)
         {
            _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.id] = param1;
            _loc2_ = {
               0:{
                  "p1401":1,
                  "p1402":1,
                  "p1403":1,
                  "p1404":2
               },
               1:{
                  "p1401":1,
                  "p1402":1,
                  "p1403":1,
                  "p1404":2
               },
               "color":-1
            };
            _loc2_.color = param1.color;
            _loc3_ = Number(GamePredef.WING_HOLE_COLOR_HOLE_MAP[param1.color]);
            if(!_loc3_ || ToolKit.isBigThan(param1.holeNum,_loc3_))
            {
               featherSetButton.enabled = false;
               return;
            }
            _loc4_ = int(int(param1.holeNum / 10) || 0);
            _loc5_ = int(int(param1.holeNum % 10) || 0);
            if(_loc4_ < _loc5_ || _loc4_ - _loc5_ > 1)
            {
               return;
            }
            _loc6_ = 1;
            while(_loc6_ <= 10)
            {
               this["feather" + _loc6_].clean();
               if(_loc6_ <= _loc4_ + _loc5_)
               {
                  this["feather" + _loc6_].enabled = true;
                  this["feather" + _loc6_].selected = false;
                  if(ToolKit.isBigThan(param1["t" + _loc6_],0))
                  {
                     _loc7_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][param1["t" + _loc6_]];
                     if(_loc7_)
                     {
                        _loc2_[_loc6_ % 2]["p" + _loc7_.type] = _loc2_[_loc6_ % 2]["p" + _loc7_.type] - 1;
                        this["feather" + _loc6_].type = GamePredef.TBL_ITEM_TEMPLATE;
                        this["feather" + _loc6_].giid = param1["t" + _loc6_];
                        _loc8_ = 1;
                        while(_loc8_ <= 3)
                        {
                           if(_loc7_["i" + _loc8_] > 0)
                           {
                              _loc2_[_loc6_ % 2][_loc7_["i" + _loc8_]] = true;
                           }
                           _loc8_++;
                        }
                     }
                  }
               }
               else
               {
                  this["feather" + _loc6_].clean();
                  this["feather" + _loc6_].enabled = false;
               }
               _loc6_++;
            }
            canPutPropOfFeathers = _loc2_;
         }
      }
      
      public function __mixLuckyItem_dragDrop(param1:DragEvent) : void
      {
         setMixRate();
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WingFuncPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WingFuncPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WingFuncPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get bindMain() : ItemSlotEquFunc
      {
         return this._939276182bindMain;
      }
      
      [Bindable(event="propertyChange")]
      public function get curBindProp() : TextArea
      {
         return this._2085845920curBindProp;
      }
      
      public function ___WingFuncPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         openAdvancedJoin();
      }
      
      private function onFeatherDel(param1:Boolean) : void
      {
         if(param1)
         {
            featherSetEquChange(null);
            _core.sysBlueMsg(Language.WING_PANEL_U[76]);
         }
         else
         {
            _core.sysBlueMsg(Language.WING_PANEL_U[77]);
         }
      }
      
      public function onJoin(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ISlot = null;
         if(param1)
         {
            if(param1.f)
            {
               _loc2_ = 1;
               while(_loc2_ <= 4)
               {
                  this["joinWing" + _loc2_].clean();
                  this["wingPreview" + _loc2_].clean();
                  _loc2_++;
               }
               wingPreview5.clean();
               _core.sysMidNote(Language.WING_PANEL_U[19]);
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i] = param1.n;
               if(ToolKit.isEqual(joinMain.slotData.id,param1.e))
               {
                  joinMain.giid = param1.i;
               }
               _loc3_ = _core.view.getSlot(param1.sid);
               if(_loc3_)
               {
                  _loc3_.giid = param1.i;
               }
            }
            else
            {
               _core.sysMidNote(Language.WING_PANEL_U[10]);
               joinViewClear();
               joinButton.enabled = true;
            }
         }
      }
      
      public function __featherMixAutoPutBtn_click(param1:MouseEvent) : void
      {
         autoPutFeatherMix();
      }
      
      public function set showBag(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2067262411showBag;
         if(_loc2_ !== param1)
         {
            this._2067262411showBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBag",_loc2_,param1));
         }
      }
      
      private function mixLuckyItemChange(param1:GameEvent) : void
      {
         if(!mixLuckyItem.slotData)
         {
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFirst() : String
      {
         return this._2058846118isFirst;
      }
      
      public function set bindButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._405165519bindButton;
         if(_loc2_ !== param1)
         {
            this._405165519bindButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindButton",_loc2_,param1));
         }
      }
      
      public function showNewWingPro(param1:int, param2:Object, param3:Object, param4:Object) : void
      {
         curLevel.htmlText = Language.WING_PANEL_U[125] + " <font color=\'#00ff00\'>" + param1 + "</font>";
         curSpeed.htmlText = Language.WING_PANEL_U[119] + " <font color=\'#00ff00\'>" + param4.mainPropNum1 + (param2.mainPropNum1 ? "+" + param2.mainPropNum1 + "%</font>" : "</font>");
         curLife.htmlText = Language.WING_PANEL_U[120] + " <font color=\'#00ff00\'>" + param4.mainPropNum2 + (param2.mainPropNum2 ? "+" + param2.mainPropNum2 + "%</font>" : "</font>");
         curPhy.htmlText = Language.WING_PANEL_U[121] + " <font color=\'#00ff00\'>" + param4.propNum1 + (param2.propNum1 ? "+" + param2.propNum1 + "%</font>" : "</font>");
         curMagic.htmlText = Language.WING_PANEL_U[122] + " <font color=\'#00ff00\'>" + param4.propNum2 + (param2.propNum2 ? "+" + param2.propNum2 + "%</font>" : "</font>");
         if(param1 == 10)
         {
            nextLevel.htmlText = "";
            nextSpeed.htmlText = "";
            nextLife.htmlText = "  " + Language.WING_PANEL_U[141];
            nextPhy.htmlText = "";
            nextMagic.htmlText = "";
         }
         else
         {
            nextLevel.htmlText = Language.WING_PANEL_U[125] + " <font color=\'#00ff00\'>" + (param1 + 1) + "</font>";
            nextSpeed.htmlText = Language.WING_PANEL_U[119] + " <font color=\'#00ff00\'>" + param4.mainPropNum1 + (param3.mainPropNum1 ? "+" + param3.mainPropNum1 + "%</font>" : "</font>");
            nextLife.htmlText = Language.WING_PANEL_U[120] + " <font color=\'#00ff00\'>" + param4.mainPropNum2 + (param3.mainPropNum2 ? "+" + param3.mainPropNum2 + "%</font>" : "</font>");
            nextPhy.htmlText = Language.WING_PANEL_U[121] + " <font color=\'#00ff00\'>" + param4.propNum1 + (param3.propNum1 ? "+" + param3.propNum1 + "%</font>" : "</font>");
            nextMagic.htmlText = Language.WING_PANEL_U[122] + " <font color=\'#00ff00\'>" + param4.propNum2 + (param3.propNum2 ? "+" + param3.propNum2 + "%</font>" : "</font>");
         }
      }
      
      public function __featherUpButtonAll_click(param1:MouseEvent) : void
      {
         subFeatherUp(false);
      }
      
      private function featherMixChange(param1:GameEvent) : void
      {
         var _loc3_:Object = null;
         var _loc4_:ItemSlot = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.slotData)
         {
            if(_loc2_.tempBagFlag)
            {
               _loc3_ = _core.getTemplateData(_loc2_.slotData.ti,_loc2_.slotData.ii,false);
            }
            else
            {
               _loc3_ = _core.getTemplateData(_loc2_.slotData.type,_loc2_.slotData.itemId,false);
            }
            _loc4_ = this["req" + _loc2_.id];
            if(!(Boolean(_loc3_) && Boolean(_loc4_) && ToolKit.isEqual(_loc4_.giid,_loc3_.id)))
            {
               _core.sysMidNote(Language.WING_PANEL_U[92]);
               _loc2_.clean();
               return;
            }
            if(mixFormular.slotData)
            {
               if(mixFormular.tempBagFlag)
               {
                  _loc5_ = _core.getTemplateData(mixFormular.slotData.ti,mixFormular.slotData.ii,false);
               }
               else
               {
                  _loc5_ = _core.getTemplateData(mixFormular.slotData.type,mixFormular.slotData.itemId,false);
               }
               if(_loc5_)
               {
                  if(ToolKit.isEqual(_loc5_.type,GamePredef.ITEM_TYPE_FEATHER_MIX))
                  {
                     _loc6_ = 1;
                     while(true)
                     {
                        if(_loc6_ <= 2)
                        {
                           if(this["reqMixItem" + _loc6_].giid > 0)
                           {
                              if(!this["MixItem" + _loc6_].slotData)
                              {
                                 break;
                              }
                              if(this["MixItem" + _loc6_].tempBagFlag)
                              {
                                 _loc8_ = _core.getTemplateData(this["MixItem" + _loc6_].slotData.ti,this["MixItem" + _loc6_].slotData.ii,false);
                              }
                              else
                              {
                                 _loc8_ = _core.getTemplateData(this["MixItem" + _loc6_].slotData.type,this["MixItem" + _loc6_].slotData.itemId,false);
                              }
                              if(!(Boolean(_loc8_) && ToolKit.isEqual(_loc8_.id,this["reqMixItem" + _loc6_].giid)))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                        _loc7_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc5_.nextJewelTid];
                        if(_loc7_)
                        {
                           setMixRate();
                        }
                        _loc6_++;
                     }
                     mixButton.enabled = false;
                     return;
                  }
                  mixFormular.clean();
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showBag() : BasicGlowButton
      {
         return this._2067262411showBag;
      }
      
      public function __feather2_doubleClick(param1:MouseEvent) : void
      {
         subFeatherDel(2);
      }
      
      private function initMixFormularList() : void
      {
         var obj:Object = null;
         var sortFunc:Function = null;
         var formularTempData:Object = _core.data.gameDataIndex3[GamePredef.TBL_ITEM_TEMPLATE][GamePredef.ITEM_TYPE_FEATHER_MIX];
         var formularArr:Array = [];
         for each(obj in formularTempData)
         {
            formularArr.push({
               "label":obj.name.substr(0,String(obj.name).length - 2),
               "data":obj
            });
         }
         sortFunc = function(param1:Object, param2:Object):int
         {
            return Number(param1.data.id) - Number(param2.data.id);
         };
         formularArr = formularArr.sort(sortFunc);
         formularList.dataProvider = formularArr;
      }
      
      public function set holeMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1213936608holeMoney;
         if(_loc2_ !== param1)
         {
            this._1213936608holeMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeMoney",_loc2_,param1));
         }
      }
      
      public function onBuyItem(param1:*) : void
      {
         _core.remote.call("buyCritItem",null,Number(param1));
      }
      
      private function openAdvancedJoin() : void
      {
         _core.view.getUI(ViewManager.PANEL_WING_ADVANCED).show();
      }
      
      public function set feather2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058705feather2;
         if(_loc2_ !== param1)
         {
            this._291058705feather2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather2",_loc2_,param1));
         }
      }
      
      public function set curSpeed(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._547091943curSpeed;
         if(_loc2_ !== param1)
         {
            this._547091943curSpeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curSpeed",_loc2_,param1));
         }
      }
      
      private function prefixEquChange(param1:GameEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:Object = null;
         if(prefixMain.slotData)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][prefixMain.slotData.itemId];
            _loc3_ = GamePredef.EQUIPT_STAR_NUM[_loc2_.upgradeNum];
            _loc4_ = _core.getTemplateData(prefixMain.slotData.type,prefixMain.slotData.itemId,false);
            if((Boolean(_loc4_)) && Boolean(_loc2_))
            {
               _loc5_ = Number(GamePredef.WING_PREFIX_ITEM_NUM[_loc2_.color]);
               if(!_loc5_)
               {
                  _core.sysMidNote(Language.WING_PANEL_U[48]);
                  prefixViewClear();
                  return;
               }
               prefixItemNumTip.htmlText = String(Language.WING_PANEL_U[40]).replace("{num}",_loc5_);
               prefixItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
               prefixItemRequire.giid = GamePredef.WING_PREFIX_ITEM_ID;
               prefixItemRequire.stackNum = _loc5_;
               prefixMoney.text = GamePredef.MONEY_EQUFUNC_ACTIVE.toString();
               curPrefixProp.htmlText = Language.WING_PANEL_U[53] + Language.WING_PANEL_U[56] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(_loc2_.mainPropNum1 * _loc3_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(_loc2_.mainPropNum2 * _loc3_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + _loc2_.propNum1 + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + _loc2_.propNum2 + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + _loc2_.bindMainPropNum1 + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + _loc2_.bindMainPropNum2 + "%";
               _loc6_ = _loc2_.color * 5;
               _loc8_ = 0;
               if(Boolean(_loc2_.flag) && _loc2_.flag.indexOf("level") >= 0)
               {
                  _loc9_ = _loc2_.flag;
                  _loc9_ = _loc9_.substring(_loc9_.indexOf("level"));
                  _loc10_ = _loc9_.split(",");
                  _loc11_ = _loc10_[0].split(":");
                  _loc12_ = _loc11_[1].split("\"").join("");
                  _loc8_ = int(_loc12_);
               }
               if(GamePredef.EQUIPT_QUALITY[_loc6_])
               {
                  _loc7_ = Number(GamePredef.EQUIPT_QUALITY[_loc6_]);
                  if(_loc8_)
                  {
                     _loc13_ = GamePredef.WING_PRO_TOTAL_ADD[_loc8_ - 1];
                     maxPrefixProp.htmlText = Language.WING_PANEL_U[55] + Language.WING_PANEL_U[56] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(Math.round(_loc4_.mainPropNum1 * _loc7_ * _loc13_.mainPropNum1) * _loc3_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(Math.round(_loc4_.mainPropNum2 * _loc7_ * _loc13_.mainPropNum2) * _loc3_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + Math.round(_loc4_.propNum1 * _loc7_ * _loc13_.propNum1) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + Math.round(_loc4_.propNum2 * _loc7_ * _loc13_.propNum2) + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + Math.round(_loc4_.bindPropNum * _loc7_) + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + Math.round(_loc4_.bindPropNum * _loc7_) + "%";
                  }
                  else
                  {
                     maxPrefixProp.htmlText = Language.WING_PANEL_U[55] + Language.WING_PANEL_U[56] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(Math.round(_loc4_.mainPropNum1 * _loc7_ * _loc3_)) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(Math.round(_loc4_.mainPropNum2 * _loc7_ * _loc3_)) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + Math.round(_loc4_.propNum1 * _loc7_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + Math.round(_loc4_.propNum2 * _loc7_) + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + Math.round(_loc4_.bindPropNum * _loc7_) + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + Math.round(_loc4_.bindPropNum * _loc7_) + "%";
                  }
               }
               if(Boolean(prefixItem.slotData) && prefixItem.slotData.type == GamePredef.TBL_ITEM_INSTANCE)
               {
                  _loc14_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][prefixItem.slotData.itemId];
                  _loc15_ = _core.getTemplateData(prefixItem.slotData.type,prefixItem.slotData.itemId,false);
                  if(Boolean(_loc14_) && Boolean(_loc15_))
                  {
                     if(ToolKit.isEqual(_loc15_.id,GamePredef.WING_PREFIX_ITEM_ID) && ToolKit.isBigOrEqual(prefixItem.slotData.stackNum,_loc5_))
                     {
                        prefixButton.enabled = true;
                        return;
                     }
                  }
               }
            }
         }
         prefixButton.enabled = false;
      }
      
      private function _WingFuncPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            wTitle.text = param1;
         },"wTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Canvas1.label = param1;
         },"_WingFuncPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_MAGIC_WEAPON;
         },function(param1:Object):void
         {
            _WingFuncPanel_Image1.source = param1;
         },"_WingFuncPanel_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText.htmlText = param1;
         },"introText.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            joinMain.acceptObj = param1;
         },"joinMain.acceptObj");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinButton.label = param1;
         },"joinButton.label");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            joinWing1.acceptObj = param1;
         },"joinWing1.acceptObj");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            joinWing2.acceptObj = param1;
         },"joinWing2.acceptObj");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            joinWing3.acceptObj = param1;
         },"joinWing3.acceptObj");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            joinWing4.acceptObj = param1;
         },"joinWing4.acceptObj");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton1.label = param1;
         },"_WingFuncPanel_BasicTxtButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton2.label = param1;
         },"_WingFuncPanel_BasicTxtButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton3.label = param1;
         },"_WingFuncPanel_BasicTxtButton3.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[16] + 1;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton4.label = param1;
         },"_WingFuncPanel_BasicTxtButton4.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[16] + 2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton5.label = param1;
         },"_WingFuncPanel_BasicTxtButton5.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[16] + 3;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton6.label = param1;
         },"_WingFuncPanel_BasicTxtButton6.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[16] + 4;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton7.label = param1;
         },"_WingFuncPanel_BasicTxtButton7.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[16] + 5;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton8.label = param1;
         },"_WingFuncPanel_BasicTxtButton8.label");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            wingPreview1.acceptObj = param1;
         },"wingPreview1.acceptObj");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            wingPreview2.acceptObj = param1;
         },"wingPreview2.acceptObj");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            wingPreview3.acceptObj = param1;
         },"wingPreview3.acceptObj");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            wingPreview4.acceptObj = param1;
         },"wingPreview4.acceptObj");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            wingPreview5.acceptObj = param1;
         },"wingPreview5.acceptObj");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return advanceJoinEnable;
         },function(param1:Boolean):void
         {
            _WingFuncPanel_BasicGlowButton2.visible = param1;
         },"_WingFuncPanel_BasicGlowButton2.visible");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicGlowButton2.label = param1;
         },"_WingFuncPanel_BasicGlowButton2.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText1.htmlText = param1;
         },"introText1.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton9.label = param1;
         },"_WingFuncPanel_BasicTxtButton9.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton10.label = param1;
         },"_WingFuncPanel_BasicTxtButton10.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton11.label = param1;
         },"_WingFuncPanel_BasicTxtButton11.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label4.text = param1;
         },"_WingFuncPanel_Label4.text");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            prefixMain.acceptObj = param1;
         },"prefixMain.acceptObj");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            prefixItem.slotType = param1;
         },"prefixItem.slotType");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prefixButton.label = param1;
         },"prefixButton.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText2.htmlText = param1;
         },"introText2.htmlText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton12.label = param1;
         },"_WingFuncPanel_BasicTxtButton12.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton13.label = param1;
         },"_WingFuncPanel_BasicTxtButton13.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton14.label = param1;
         },"_WingFuncPanel_BasicTxtButton14.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label7.text = param1;
         },"_WingFuncPanel_Label7.text");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            bindMain.acceptObj = param1;
         },"bindMain.acceptObj");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            bindItem.slotType = param1;
         },"bindItem.slotType");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bindButton.label = param1;
         },"bindButton.label");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText3.htmlText = param1;
         },"introText3.htmlText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton15.label = param1;
         },"_WingFuncPanel_BasicTxtButton15.label");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton16.label = param1;
         },"_WingFuncPanel_BasicTxtButton16.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton17.label = param1;
         },"_WingFuncPanel_BasicTxtButton17.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label10.text = param1;
         },"_WingFuncPanel_Label10.text");
         result[45] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            holeMain.acceptObj = param1;
         },"holeMain.acceptObj");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            holeItem.slotType = param1;
         },"holeItem.slotType");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            holeButton.label = param1;
         },"holeButton.label");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[82];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText4.htmlText = param1;
         },"introText4.htmlText");
         result[49] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            starMain.acceptObj = param1;
         },"starMain.acceptObj");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            starItem.slotType = param1;
         },"starItem.slotType");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starAllButton.label = param1;
         },"starAllButton.label");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starOneButton.label = param1;
         },"starOneButton.label");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton20.label = param1;
         },"_WingFuncPanel_BasicTxtButton20.label");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton21.label = param1;
         },"_WingFuncPanel_BasicTxtButton21.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton22.label = param1;
         },"_WingFuncPanel_BasicTxtButton22.label");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton23.label = param1;
         },"_WingFuncPanel_BasicTxtButton23.label");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton24.label = param1;
         },"_WingFuncPanel_BasicTxtButton24.label");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton25.label = param1;
         },"_WingFuncPanel_BasicTxtButton25.label");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[80];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText5.htmlText = param1;
         },"introText5.htmlText");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton26.label = param1;
         },"_WingFuncPanel_BasicTxtButton26.label");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[66];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton27.label = param1;
         },"_WingFuncPanel_BasicTxtButton27.label");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton28.label = param1;
         },"_WingFuncPanel_BasicTxtButton28.label");
         result[63] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            featherUpMain.acceptObj = param1;
         },"featherUpMain.acceptObj");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            featherUpMain.slotType = param1;
         },"featherUpMain.slotType");
         result[65] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{518:true}};
         },function(param1:Object):void
         {
            featherUpItem.acceptObj = param1;
         },"featherUpItem.acceptObj");
         result[66] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            featherUpItem.slotType = param1;
         },"featherUpItem.slotType");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            featherUpButtonOne.label = param1;
         },"featherUpButtonOne.label");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            featherUpButtonAll.label = param1;
         },"featherUpButtonAll.label");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[81];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText6.htmlText = param1;
         },"introText6.htmlText");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton30.label = param1;
         },"_WingFuncPanel_BasicTxtButton30.label");
         result[71] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            featherSetMain.acceptObj = param1;
         },"featherSetMain.acceptObj");
         result[72] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            featherSetMain.slotType = param1;
         },"featherSetMain.slotType");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton31.label = param1;
         },"_WingFuncPanel_BasicTxtButton31.label");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[97];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton32.label = param1;
         },"_WingFuncPanel_BasicTxtButton32.label");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[98];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton33.label = param1;
         },"_WingFuncPanel_BasicTxtButton33.label");
         result[76] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather1.acceptObj = param1;
         },"feather1.acceptObj");
         result[77] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather1.slotType = param1;
         },"feather1.slotType");
         result[78] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather3.acceptObj = param1;
         },"feather3.acceptObj");
         result[79] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather3.slotType = param1;
         },"feather3.slotType");
         result[80] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather5.acceptObj = param1;
         },"feather5.acceptObj");
         result[81] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather5.slotType = param1;
         },"feather5.slotType");
         result[82] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather7.acceptObj = param1;
         },"feather7.acceptObj");
         result[83] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather7.slotType = param1;
         },"feather7.slotType");
         result[84] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather9.acceptObj = param1;
         },"feather9.acceptObj");
         result[85] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather9.slotType = param1;
         },"feather9.slotType");
         result[86] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather2.acceptObj = param1;
         },"feather2.acceptObj");
         result[87] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather2.slotType = param1;
         },"feather2.slotType");
         result[88] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather4.acceptObj = param1;
         },"feather4.acceptObj");
         result[89] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather4.slotType = param1;
         },"feather4.slotType");
         result[90] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather6.acceptObj = param1;
         },"feather6.acceptObj");
         result[91] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather6.slotType = param1;
         },"feather6.slotType");
         result[92] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather8.acceptObj = param1;
         },"feather8.acceptObj");
         result[93] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather8.slotType = param1;
         },"feather8.slotType");
         result[94] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            feather10.acceptObj = param1;
         },"feather10.acceptObj");
         result[95] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            feather10.slotType = param1;
         },"feather10.slotType");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            featherSetButton.label = param1;
         },"featherSetButton.label");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            featherDelButton.label = param1;
         },"featherDelButton.label");
         result[98] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            mixedFeather.slotType = param1;
         },"mixedFeather.slotType");
         result[99] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            reqmixFormular.slotType = param1;
         },"reqmixFormular.slotType");
         result[100] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            mixFormular.slotType = param1;
         },"mixFormular.slotType");
         result[101] = binding;
         binding = new Binding(this,function():Object
         {
            return {
               "kinds":{14:true},
               "types":{1400:true}
            };
         },function(param1:Object):void
         {
            mixFormular.acceptObj = param1;
         },"mixFormular.acceptObj");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[103];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label11.text = param1;
         },"_WingFuncPanel_Label11.text");
         result[103] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            mixLuckyItem.slotType = param1;
         },"mixLuckyItem.slotType");
         result[104] = binding;
         binding = new Binding(this,function():Object
         {
            return {
               "types":{518:true},
               "ids":{3017:true}
            };
         },function(param1:Object):void
         {
            mixLuckyItem.acceptObj = param1;
         },"mixLuckyItem.acceptObj");
         result[105] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[102];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            featherMixAutoPutBtn.label = param1;
         },"featherMixAutoPutBtn.label");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[104];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label12.text = param1;
         },"_WingFuncPanel_Label12.text");
         result[107] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            reqMixItem1.slotType = param1;
         },"reqMixItem1.slotType");
         result[108] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            reqMixItem1.acceptObj = param1;
         },"reqMixItem1.acceptObj");
         result[109] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            reqMixItem2.slotType = param1;
         },"reqMixItem2.slotType");
         result[110] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            reqMixItem2.acceptObj = param1;
         },"reqMixItem2.acceptObj");
         result[111] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[105];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label13.text = param1;
         },"_WingFuncPanel_Label13.text");
         result[112] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            MixItem1.slotType = param1;
         },"MixItem1.slotType");
         result[113] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            MixItem1.acceptObj = param1;
         },"MixItem1.acceptObj");
         result[114] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            MixItem2.slotType = param1;
         },"MixItem2.slotType");
         result[115] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{14:true}};
         },function(param1:Object):void
         {
            MixItem2.acceptObj = param1;
         },"MixItem2.acceptObj");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton34.label = param1;
         },"_WingFuncPanel_BasicTxtButton34.label");
         result[117] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mixButton.label = param1;
         },"mixButton.label");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[130];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introText8.htmlText = param1;
         },"introText8.htmlText");
         result[119] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[123];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label14.text = param1;
         },"_WingFuncPanel_Label14.text");
         result[120] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _WingFuncPanel_Label14.filters = param1;
         },"_WingFuncPanel_Label14.filters");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[124];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_Label15.text = param1;
         },"_WingFuncPanel_Label15.text");
         result[122] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _WingFuncPanel_Label15.filters = param1;
         },"_WingFuncPanel_Label15.filters");
         result[123] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[135];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeViewBox.toolTip = param1;
         },"changeViewBox.toolTip");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[131];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            funcBtn0.label = param1;
         },"funcBtn0.label");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[132];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            funcBtn1.label = param1;
         },"funcBtn1.label");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[137];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            wingLabel.text = param1;
         },"wingLabel.text");
         result[127] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[126];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingFuncPanel_BasicTxtButton46.label = param1;
         },"_WingFuncPanel_BasicTxtButton46.label");
         result[128] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            itemInBag.type = param1;
         },"itemInBag.type");
         result[129] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            itemByBuy.type = param1;
         },"itemByBuy.type");
         result[130] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[128];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selectCrit.label = param1;
         },"selectCrit.label");
         result[131] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[127];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buyBtn.label = param1;
         },"buyBtn.label");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[129];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            growBtn1.label = param1;
         },"growBtn1.label");
         result[133] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.WING_PANEL_U[142];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            growBtn2.label = param1;
         },"growBtn2.label");
         result[134] = binding;
         binding = new Binding(this,function():Object
         {
            return listArr;
         },function(param1:Object):void
         {
            wingFuncList.dataProvider = param1;
         },"wingFuncList.dataProvider");
         result[135] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[97];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBag.toolTip = param1;
         },"showBag.toolTip");
         result[136] = binding;
         return result;
      }
      
      public function __funcBtn1_click(param1:MouseEvent) : void
      {
         changePreView(1);
      }
      
      private function featherUpChange(param1:GameEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(featherUpMain.slotData)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][featherUpMain.slotData.itemId];
            _loc3_ = _core.getTemplateData(featherUpMain.slotData.type,featherUpMain.slotData.itemId,false);
            if(Boolean(_loc2_) && Boolean(_loc3_))
            {
               if(ToolKit.isEqual(_loc3_.kind,GamePredef.ITEM_KIND_FEATHER))
               {
                  if(ToolKit.isBigThan(_loc3_.nextJewelTid,0) && Boolean(GamePredef.FEATHER_UPDATE_RATE[_loc3_.color]))
                  {
                     if(ToolKit.isBigOrEqual(featherUpMain.slotData.stackNum,5))
                     {
                        featherUpLuckItemNum.minimum = 0;
                        featherUpLuckItemNum.maximum = Math.ceil((100 - GamePredef.FEATHER_UPDATE_RATE[_loc3_.color]) / GamePredef.FEATHER_UPDATE_RATE_ADDPER);
                        if(_core.MC_BIRTH_FLAG[4])
                        {
                           featherUpLuckItemNum.maximum = Math.ceil((100 - GamePredef.MC_BIRTH_CONFIG[4][_loc3_.color]) / GamePredef.FEATHER_UPDATE_RATE_ADDPER);
                        }
                        _loc4_ = Number(GamePredef.FEATHER_UPDATE_RATE[_loc3_.color]);
                        if(_core.MC_BIRTH_FLAG[4])
                        {
                           _loc4_ = Number(GamePredef.MC_BIRTH_CONFIG[4][_loc3_.color]);
                        }
                        featherUpButtonOne.enabled = true;
                        featherUpButtonAll.enabled = true;
                        if(featherUpItem.slotData)
                        {
                           _loc5_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][featherUpItem.slotData.itemId];
                           _loc6_ = _core.getTemplateData(featherUpItem.slotData.type,featherUpItem.slotData.itemId,false);
                           if(Boolean(_loc5_) && Boolean(_loc6_))
                           {
                              featherUpLuckItemNum.value = Math.min(featherUpLuckItemNum.maximum,featherUpLuckItemNum.value,featherUpItem.slotData.stackNum);
                              if(ToolKit.isEqual(_loc3_.kind,GamePredef.ITEM_KIND_FEATHER) && ToolKit.isEqual(_loc6_.id,GamePredef.FEATHER_LUCKY_ID))
                              {
                                 _loc4_ = ToolKit.add(_loc4_,featherUpLuckItemNum.value * GamePredef.FEATHER_UPDATE_RATE_ADDPER);
                              }
                           }
                        }
                        featherUpRateInfo.text = "" + _loc4_ + "%";
                     }
                  }
                  else
                  {
                     _core.sysMidNote(Language.WING_PANEL_U[89]);
                     featherUpMain.clean();
                  }
               }
            }
         }
      }
      
      private function featherMixViewClear() : void
      {
         mixedFeather.clean();
         mixFormular.clean();
         reqmixFormular.clean();
         mixLuckyItem.clean();
         var _loc1_:int = 1;
         while(_loc1_ <= 2)
         {
            this["reqMixItem" + _loc1_].clean();
            this["MixItem" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get feather4() : ItemSlot
      {
         return this._291058703feather4;
      }
      
      public function set buyBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1377586698buyBtn;
         if(_loc2_ !== param1)
         {
            this._1377586698buyBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyBtn",_loc2_,param1));
         }
      }
      
      public function set feather1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._291058706feather1;
         if(_loc2_ !== param1)
         {
            this._291058706feather1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feather1",_loc2_,param1));
         }
      }
      
      private function setNextWingsPreview(param1:Object) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:ItemSlotEquFunc = null;
         var _loc11_:Number = NaN;
         var _loc2_:Array = [];
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.main.itemId];
         if(_loc3_)
         {
            _loc2_[0] = _loc3_.tid;
            _loc4_ = 1;
            while(_loc4_ <= 4)
            {
               _loc7_ = Number(param1["wing" + _loc4_].itemId);
               _loc8_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][_loc7_];
               if((Boolean(_loc8_)) && _loc2_.indexOf(_loc8_.tid) < 0)
               {
                  _loc2_.push(_loc8_.tid);
               }
               this["wingPreview" + _loc4_].clean();
               _loc4_++;
            }
            _loc5_ = 1;
            for(_loc6_ in _loc2_)
            {
               _loc9_ = _core.getTemplateData(GamePredef.TBL_EQUIPT_TEMPLATE,_loc2_[_loc6_],false);
               if(_loc9_)
               {
                  _loc10_ = this["wingPreview" + _loc5_];
                  _loc10_.type = GamePredef.TBL_EQUIPT_TEMPLATE;
                  _loc10_.giid = _loc9_.id;
                  _loc11_ = Number(_loc3_.color) + 1;
                  _loc10_.slotData = {
                     "wingTemp":true,
                     "q":_loc11_ * 5,
                     "b":(isWingBind(param1) ? 1 : 0),
                     "color":_loc11_
                  };
                  _loc10_.stackNum = 1;
                  _loc5_ += 1;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get feather3() : ItemSlot
      {
         return this._291058704feather3;
      }
      
      public function showNextLevelWing(param1:Number) : void
      {
         var _loc2_:String = ResManager.getResUrl(_core.player.resCode);
         if(previewCanvas.url != _loc2_)
         {
            previewCanvas.url = _loc2_;
         }
         previewCanvas.color = _core.player.colorCode;
         previewCanvas.charResCode = _core.player.resCode;
         if(previewCanvas._wingResCode != param1)
         {
            previewCanvas.wingResCode = param1;
         }
      }
   }
}

