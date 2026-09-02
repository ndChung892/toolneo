package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.MedalSlot;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.controls.TextInput;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MedalPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _77309086breakExp:BasicTxtButton;
      
      private var _899454782slot26:MedalSlot;
      
      private var _109532667slot9:MedalSlot;
      
      private var _899454813slot16:MedalSlot;
      
      private var _320271553btnLastPage:Button;
      
      private var _133022078firstTile:Tile;
      
      private var _1401996146joinLab1:Label;
      
      private var _1087623231slot2005:MedalSlot;
      
      private var _1137874432basicPro12:Label;
      
      private var _1430699005joinLab:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1092506293lv2003:BasicTxtButton;
      
      private var _899454787slot21:MedalSlot;
      
      private var _109532661slot3:MedalSlot;
      
      private var _899454818slot11:MedalSlot;
      
      private var _alert:Alert;
      
      public var _MedalPanel_Label1:Label;
      
      public var _MedalPanel_Label9:Label;
      
      private var _1087653021slot1006:MedalSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _1699273611basicPro4:Label;
      
      private var _click:Number = 0;
      
      private var _1087653025slot1002:MedalSlot;
      
      private var _1092536084lv1003:BasicTxtButton;
      
      private var _486611074btnArrange2:DelayButton;
      
      private var _1453420078breakBtnMore:DelayButton;
      
      private var _1923965520btnArrange:DelayButton;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _899454781slot27:MedalSlot;
      
      private var _899454812slot17:MedalSlot;
      
      private var _1203783036myExpUpP:BasicTxtButton;
      
      private var _1087623234slot2002:MedalSlot;
      
      private var _109532662slot4:MedalSlot;
      
      private var _1087623230slot2006:MedalSlot;
      
      private var _1092506292lv2004:BasicTxtButton;
      
      private var _899454786slot22:MedalSlot;
      
      public var _MedalPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _899454817slot12:MedalSlot;
      
      private var countPerPage:uint = 28;
      
      private var _1092536083lv1004:BasicTxtButton;
      
      private var _839638551upInfo:IntroText;
      
      public var _MedalPanel_Canvas10:Canvas;
      
      private var medalMaxLv:uint = 10;
      
      private var _changed:Boolean = false;
      
      private var _1087653024slot1003:MedalSlot;
      
      private var _1137874431basicPro13:Label;
      
      private var _899454780slot28:MedalSlot;
      
      private var _109532663slot5:MedalSlot;
      
      private var _899454811slot18:MedalSlot;
      
      private var _1699273612basicPro3:Label;
      
      private var _1424290038nextProp:BasicTxtButton;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var itemPageNo:uint = 1;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _535111522myExpBreakP:BasicTxtButton;
      
      private var _1092506291lv2005:BasicTxtButton;
      
      private var _486611072btnArrange0:DelayButton;
      
      private var _899454785slot23:MedalSlot;
      
      private var _899454816slot13:MedalSlot;
      
      private var _1087623233slot2003:MedalSlot;
      
      private var _486611075btnArrange3:DelayButton;
      
      private var itemLen:Number = 0;
      
      private var _109532659slot1:MedalSlot;
      
      private var _77306077breakBtn:DelayButton;
      
      private var _1092536082lv1005:BasicTxtButton;
      
      private var _111458690upExp:BasicTxtButton;
      
      private var maxPage:uint = 1;
      
      private var _1435225412charImg1:Image;
      
      private var _1137874429basicPro15:Label;
      
      public var _MedalPanel_BasicTxtButton7:BasicTxtButton;
      
      private var _739034253charImg:Image;
      
      private var _677847411petImg1:Image;
      
      private var _1229795408txtPageIndicator:TextInput;
      
      private var _109532664slot6:MedalSlot;
      
      private var _1092476505lv3000:BasicTxtButton;
      
      private var _899454810slot19:MedalSlot;
      
      private var itemAC:Object = new Object();
      
      private var _808459627vsBang:ViewStack;
      
      private var _1087653023slot1004:MedalSlot;
      
      private var _1092506290lv2006:BasicTxtButton;
      
      private var _899454784slot24:MedalSlot;
      
      private var _899454815slot14:MedalSlot;
      
      private var _111455681upBtn:DelayButton;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _1788135535materialMixNum:NumericStepper;
      
      private var _1137874430basicPro14:Label;
      
      private var _1699273609basicPro6:Label;
      
      private var _1699273613basicPro2:Label;
      
      private var _1549623129delInfo:IntroText;
      
      private var _1092506295lv2001:BasicTxtButton;
      
      private var _1092536081lv1006:BasicTxtButton;
      
      private var _1087593445slot3000:MedalSlot;
      
      private var _109532665slot7:MedalSlot;
      
      public var _MedalPanel_Image5:Image;
      
      public var _MedalPanel_Image6:Image;
      
      private var _1087623232slot2004:MedalSlot;
      
      private var _1137874433basicPro11:Label;
      
      private var _1092476504lv3001:BasicTxtButton;
      
      private var _firstLoadCid:Number = 0;
      
      private var _1092536086lv1001:BasicTxtButton;
      
      private var _486611073btnArrange1:DelayButton;
      
      public var _MedalPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _MedalPanel_BasicTxtButton17:BasicTxtButton;
      
      public var _MedalPanel_BasicTxtButton18:BasicTxtButton;
      
      public var _MedalPanel_BasicTxtButton19:BasicTxtButton;
      
      private var _899454783slot25:MedalSlot;
      
      private var _899454814slot15:MedalSlot;
      
      public var _MedalPanel_BasicTxtButton24:BasicTxtButton;
      
      public var _MedalPanel_BasicTxtButton25:BasicTxtButton;
      
      private var _1699273610basicPro5:Label;
      
      private var _1137874428basicPro16:Label;
      
      public var _MedalPanel_BasicTxtButton29:BasicTxtButton;
      
      public var _MedalPanel_BasicTxtButton26:BasicTxtButton;
      
      private var _alert1:Alert;
      
      private var _1087653026slot1001:MedalSlot;
      
      private var _109532666slot8:MedalSlot;
      
      private var _1087653022slot1005:MedalSlot;
      
      public var _MedalPanel_BasicTxtButton30:BasicTxtButton;
      
      private var _1092506294lv2002:BasicTxtButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _899454788slot20:MedalSlot;
      
      private var _isLoadInfo:Boolean = false;
      
      private var _899454819slot10:MedalSlot;
      
      private var _1090881890btnNextPage:Button;
      
      private var _2131388249nowProp:BasicTxtButton;
      
      private var _1908728987pJoinName:BasicTxtButton;
      
      private var _109532660slot2:MedalSlot;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1401936171joinName:BasicTxtButton;
      
      private var _1092536085lv1002:BasicTxtButton;
      
      private var _1087593444slot3001:MedalSlot;
      
      private var _1699273614basicPro1:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":545,
               "height":405,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MedalPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "percentWidth":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn0",
                           "events":{"click":"__bangBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "labelPlacement":"bottom",
                                 "width":90
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
                                 "width":90
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
                                 "width":90
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
                                 "width":90
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsBang",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "175";
                     this.top = "60";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":195,
                                          "height":320,
                                          "x":10,
                                          "y":3,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"petImg",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":160,
                                                   "height":160,
                                                   "visible":false,
                                                   "x":20,
                                                   "y":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"petImg1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":160,
                                                   "height":160,
                                                   "visible":false,
                                                   "x":20,
                                                   "y":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MedalSlot,
                                             "id":"slot1006",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "sid":1006,
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":false,
                                                   "x":80.5,
                                                   "y":104,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"lv1003",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15643682;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":122,
                                                   "y":230,
                                                   "width":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MedalSlot,
                                             "id":"slot1002",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "sid":1002,
                                                   "width":50,
                                                   "height":50,
                                                   "acceptable":true,
                                                   "x":135,
                                                   "y":97,
                                                   "iconWidth":50,
                                                   "iconHeight":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"lv1004",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15643682;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":230,
                                                   "width":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MedalSlot,
                                             "id":"slot1005",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "sid":1005,
                                                   "width":50,
                                                   "height":50,
                                                   "acceptable":true,
                                                   "x":10,
                                                   "y":97,
                                                   "iconWidth":50,
                                                   "iconHeight":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"lv1002",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15643682;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":140,
                                                   "y":150,
                                                   "width":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MedalSlot,
                                             "id":"slot1001",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "sid":1001,
                                                   "width":50,
                                                   "height":50,
                                                   "acceptable":true,
                                                   "x":72.5,
                                                   "y":21,
                                                   "iconWidth":50,
                                                   "iconHeight":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"lv1001",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15643682;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":78.5,
                                                   "y":75,
                                                   "width":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MedalSlot,
                                             "id":"slot1004",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "sid":1004,
                                                   "width":50,
                                                   "height":50,
                                                   "acceptable":true,
                                                   "x":31,
                                                   "y":176,
                                                   "iconWidth":50,
                                                   "iconHeight":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"lv1005",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15643682;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":150,
                                                   "width":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MedalSlot,
                                             "id":"slot1003",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "sid":1003,
                                                   "width":50,
                                                   "height":50,
                                                   "acceptable":true,
                                                   "x":116,
                                                   "y":176,
                                                   "iconWidth":50,
                                                   "iconHeight":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"lv1006",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15643682;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77.5,
                                                   "y":150,
                                                   "width":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_MedalPanel_BasicTxtButton7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"pJoinName",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 58862;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":55.25,
                                                   "y":279
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":143,
                                          "height":320,
                                          "x":207,
                                          "y":3,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_MedalPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 15116365;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":26,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":50,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":78,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":106,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":134,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":162,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"joinLab",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 15116365;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":200,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":228,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"btnArrange2",
                                             "events":{"click":"__btnArrange2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                                this.left = "2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":65,
                                                   "useHandCursor":true,
                                                   "y":290,
                                                   "clickDelay":2000
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"btnArrange3",
                                             "events":{"click":"__btnArrange3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                                this.right = "2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":65,
                                                   "useHandCursor":true,
                                                   "y":290,
                                                   "clickDelay":2000
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"RoundedGradientBorder",
                                                   "label":"Hornor",
                                                   "width":195,
                                                   "height":320,
                                                   "x":10,
                                                   "y":3,
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"charImg",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":160,
                                                            "height":160,
                                                            "visible":false,
                                                            "x":20,
                                                            "y":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"charImg1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":160,
                                                            "height":160,
                                                            "visible":false,
                                                            "x":20,
                                                            "y":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MedalSlot,
                                                      "id":"slot2006",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sid":2006,
                                                            "width":34,
                                                            "height":34,
                                                            "acceptable":false,
                                                            "x":80.5,
                                                            "y":103,
                                                            "iconWidth":34,
                                                            "iconHeight":34
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"lv2003",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15643682;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":122,
                                                            "y":230,
                                                            "width":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MedalSlot,
                                                      "id":"slot2002",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sid":2002,
                                                            "width":50,
                                                            "height":50,
                                                            "acceptable":true,
                                                            "x":135,
                                                            "y":97,
                                                            "iconWidth":50,
                                                            "iconHeight":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"lv2004",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15643682;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":38,
                                                            "y":230,
                                                            "width":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MedalSlot,
                                                      "id":"slot2005",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sid":2005,
                                                            "width":50,
                                                            "height":50,
                                                            "acceptable":true,
                                                            "x":10,
                                                            "y":97,
                                                            "iconWidth":50,
                                                            "iconHeight":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"lv2002",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15643682;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":140,
                                                            "y":150,
                                                            "width":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MedalSlot,
                                                      "id":"slot2001",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sid":2001,
                                                            "width":50,
                                                            "height":50,
                                                            "acceptable":true,
                                                            "x":72.5,
                                                            "y":21,
                                                            "iconWidth":50,
                                                            "iconHeight":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"lv2001",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15643682;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":78.5,
                                                            "y":75,
                                                            "width":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MedalSlot,
                                                      "id":"slot2004",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sid":2004,
                                                            "width":50,
                                                            "height":50,
                                                            "acceptable":true,
                                                            "x":31,
                                                            "y":176,
                                                            "iconWidth":50,
                                                            "iconHeight":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"lv2005",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15643682;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":150,
                                                            "width":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MedalSlot,
                                                      "id":"slot2003",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sid":2003,
                                                            "width":50,
                                                            "height":50,
                                                            "acceptable":true,
                                                            "x":116,
                                                            "y":176,
                                                            "iconWidth":50,
                                                            "iconHeight":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"lv2006",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15643682;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":77.5,
                                                            "y":150,
                                                            "width":40
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_MedalPanel_BasicTxtButton15",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":258
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"joinName",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 58862;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":95.5,
                                                            "y":258,
                                                            "width":84.5
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":143,
                                          "height":320,
                                          "x":207,
                                          "y":3,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_MedalPanel_Label9",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 15116365;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":26,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro11",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":50,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro12",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":78,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro13",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":106,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro14",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":134,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro15",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":162,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"joinLab1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 15116365;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33,
                                                   "y":200,
                                                   "width":100,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"basicPro16",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":228,
                                                   "width":118,
                                                   "height":20,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"btnArrange0",
                                             "events":{"click":"__btnArrange0_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                                this.left = "2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":65,
                                                   "useHandCursor":true,
                                                   "y":290,
                                                   "clickDelay":2000
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"btnArrange1",
                                             "events":{"click":"__btnArrange1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                                this.right = "2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":65,
                                                   "useHandCursor":true,
                                                   "y":290,
                                                   "clickDelay":2000
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MedalPanel_Image5",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":110};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"delInfo",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "width":348,
                                          "height":105
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot3000",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "sid":3000,
                                          "width":50,
                                          "height":50,
                                          "acceptable":true,
                                          "x":155,
                                          "y":146,
                                          "iconWidth":50,
                                          "iconHeight":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":125,
                                          "y":116,
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"breakBtn",
                                    "events":{"click":"__breakBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "153";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "width":50,
                                          "useHandCursor":true,
                                          "y":274,
                                          "clickDelay":3000
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"breakBtnMore",
                                    "events":{"click":"__breakBtnMore_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "193";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "useHandCursor":true,
                                          "y":300,
                                          "clickDelay":4000
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"materialMixNum",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":298,
                                          "minimum":1,
                                          "maximum":999,
                                          "x":114,
                                          "value":1
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":97,
                                          "y":222,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":97,
                                          "y":248,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"myExpBreakP",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":174,
                                          "y":248,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"lv3000",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15643682;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":162.5,
                                          "y":200,
                                          "width":42.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"breakExp",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":174,
                                          "y":222,
                                          "width":84.5
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MedalPanel_Image6",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":110};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"upInfo",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "width":348,
                                          "height":105
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot3001",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "sid":3000,
                                          "width":50,
                                          "height":50,
                                          "acceptable":true,
                                          "x":155,
                                          "y":146,
                                          "iconWidth":50,
                                          "iconHeight":50,
                                          "showStackNum":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"lv3001",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15643682;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":162.5,
                                          "y":200,
                                          "width":42.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":97,
                                          "y":222,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":97,
                                          "y":248,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"upBtn",
                                    "events":{"click":"__upBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "153";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "width":50,
                                          "useHandCursor":true,
                                          "y":275,
                                          "clickDelay":3000
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":117,
                                          "y":116,
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"upExp",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":174,
                                          "y":222,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"myExpUpP",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":174,
                                          "y":248,
                                          "width":84.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26,
                                          "y":116,
                                          "width":84,
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MedalPanel_BasicTxtButton30",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":242,
                                          "y":116,
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"nextProp",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":234,
                                          "y":146,
                                          "width":126,
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"nowProp",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26,
                                          "y":146,
                                          "width":121,
                                          "height":22
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
                  "id":"_MedalPanel_Canvas10",
                  "stylesFactory":function():void
                  {
                     this.top = "60";
                     this.bottom = "15";
                     this.left = "375";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "id":"firstTile",
                           "stylesFactory":function():void
                           {
                              this.verticalGap = 4;
                              this.horizontalGap = 3;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":155,
                                 "height":268,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "styleName":"TileSlot",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MedalSlot,
                                    "id":"slot28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "acceptable":true,
                                          "iconWidth":34,
                                          "iconHeight":34
                                       };
                                    }
                                 })]
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
                                 "x":5,
                                 "y":276,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnLastPage",
                                    "events":{"click":"__btnLastPage_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"LastPage",
                                          "autoRepeat":true,
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
                                    "events":{"click":"__btnNextPage_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"NextPage",
                                          "autoRepeat":true,
                                          "width":45,
                                          "useHandCursor":true,
                                          "y":0
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"btnArrange",
                           "events":{"click":"__btnArrange_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "48";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":70,
                                 "useHandCursor":true,
                                 "y":305,
                                 "clickDelay":30000
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1087623235slot2001:MedalSlot;
      
      private var _991697372petImg:Image;
      
      public function MedalPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 545;
         this.height = 405;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___MedalPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MedalPanel._watcherSetupUtil = param1;
      }
      
      public function set basicPro12(param1:Label) : void
      {
         var _loc2_:Object = this._1137874432basicPro12;
         if(_loc2_ !== param1)
         {
            this._1137874432basicPro12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro12",_loc2_,param1));
         }
      }
      
      public function set basicPro13(param1:Label) : void
      {
         var _loc2_:Object = this._1137874431basicPro13;
         if(_loc2_ !== param1)
         {
            this._1137874431basicPro13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinLab() : Label
      {
         return this._1430699005joinLab;
      }
      
      public function set slot9(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      public function set basicPro15(param1:Label) : void
      {
         var _loc2_:Object = this._1137874429basicPro15;
         if(_loc2_ !== param1)
         {
            this._1137874429basicPro15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro15",_loc2_,param1));
         }
      }
      
      public function set basicPro16(param1:Label) : void
      {
         var _loc2_:Object = this._1137874428basicPro16;
         if(_loc2_ !== param1)
         {
            this._1137874428basicPro16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro16",_loc2_,param1));
         }
      }
      
      public function set basicPro14(param1:Label) : void
      {
         var _loc2_:Object = this._1137874430basicPro14;
         if(_loc2_ !== param1)
         {
            this._1137874430basicPro14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro14",_loc2_,param1));
         }
      }
      
      public function set slot8(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      public function set joinLab(param1:Label) : void
      {
         var _loc2_:Object = this._1430699005joinLab;
         if(_loc2_ !== param1)
         {
            this._1430699005joinLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinLab",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      private function setMedalBag(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         itemAC = new Object();
         itemLen = 0;
         for(_loc2_ in param1)
         {
            if(param1[_loc2_])
            {
               itemAC[_loc2_] = new Object();
               itemAC[_loc2_].ti = GamePredef.TBL_MEDAL;
               itemAC[_loc2_].ii = param1[_loc2_].t;
               itemAC[_loc2_].n = param1[_loc2_].n;
               itemAC[_loc2_].q = 0;
               itemAC[_loc2_].index = _loc2_;
               if(ToolKit.isBigOrEqual(_loc2_,itemLen) && !ToolKit.isEqual(0,_loc2_))
               {
                  itemLen = ToolKit.add(_loc2_,1);
                  if(ToolKit.isBigThan(itemLen,GamePredef.MEDAL_BAG_MAX_ID))
                  {
                     itemLen = GamePredef.MEDAL_BAG_MAX_ID;
                  }
               }
            }
         }
         initBagInfo();
         updateView();
         _firstLoadCid = _core.player.id ? _core.player.id : 0;
         this.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3000() : MedalSlot
      {
         return this._1087593445slot3000;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3001() : MedalSlot
      {
         return this._1087593444slot3001;
      }
      
      private function updateMedalProp() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         _loc1_ = 1;
         while(_loc1_ <= 5)
         {
            this["basicPro" + _loc1_].text = "";
            this["basicPro1" + _loc1_].text = "";
            _loc1_++;
         }
         _loc2_ = 1;
         _loc1_ = 1001;
         while(_loc1_ <= 1005)
         {
            if(Boolean(this["slot" + _loc1_]) && Boolean(this["slot" + _loc1_].slotData))
            {
               _loc3_ = GameData.d[GamePredef.TBL_MEDAL][this["slot" + _loc1_].giid];
               if(_loc3_)
               {
                  this["basicPro" + _loc2_].text = GamePredef.MEDAL_PROP_NAME[_loc3_.propType] + " +" + Number(_loc3_.propVal) / 100;
                  if(Boolean(_loc3_.preflag) && ToolKit.isEqual(_loc3_.preflag,1))
                  {
                     this["basicPro" + _loc2_].text += "%";
                  }
                  _loc2_++;
               }
            }
            _loc1_++;
         }
         _loc2_ = 1;
         _loc1_ = 2001;
         while(_loc1_ <= 2005)
         {
            if(Boolean(this["slot" + _loc1_]) && Boolean(this["slot" + _loc1_].slotData))
            {
               _loc3_ = GameData.d[GamePredef.TBL_MEDAL][this["slot" + _loc1_].giid];
               if(_loc3_)
               {
                  this["basicPro1" + _loc2_].text = GamePredef.MEDAL_PROP_NAME[_loc3_.propType] + " +" + Number(_loc3_.propVal) / 100;
                  if(Boolean(_loc3_.preflag) && ToolKit.isEqual(_loc3_.preflag,1))
                  {
                     this["basicPro1" + _loc2_].text += "%";
                  }
                  _loc2_++;
               }
            }
            _loc1_++;
         }
      }
      
      public function set slot3000(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087593445slot3000;
         if(_loc2_ !== param1)
         {
            this._1087593445slot3000 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3000",_loc2_,param1));
         }
      }
      
      public function set slot3001(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087593444slot3001;
         if(_loc2_ !== param1)
         {
            this._1087593444slot3001 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3001",_loc2_,param1));
         }
      }
      
      public function set petImg(param1:Image) : void
      {
         var _loc2_:Object = this._991697372petImg;
         if(_loc2_ !== param1)
         {
            this._991697372petImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg",_loc2_,param1));
         }
      }
      
      private function upSlotChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(slot3001.slotData)
         {
            nowProp.text = "";
            nextProp.text = "";
            _loc2_ = GameData.d[GamePredef.TBL_MEDAL][this.slot3001.giid];
            lv3001.label = "LV " + _loc2_.level;
            upExp.label = _loc2_.upExp;
            nowProp.text = GamePredef.MEDAL_PROP_NAME[_loc2_.propType] + " +" + Number(_loc2_.propVal) / 100;
            if(Number(_loc2_.level) >= GamePredef.MEDAL_MAX_LEVEL)
            {
               nextProp.text = Language.MEDAL_P[35];
            }
            else
            {
               for each(_loc3_ in _core.data.gameDataIndex[GamePredef.TBL_MEDAL][_loc2_.basicTid])
               {
                  if(Number(_loc3_.level) == ToolKit.add(1,_loc2_.level))
                  {
                     nextProp.text = GamePredef.MEDAL_PROP_NAME[_loc3_.propType] + " +" + Number(_loc3_.propVal) / 100;
                     break;
                  }
               }
            }
         }
      }
      
      public function ___MedalPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initMedalPanel();
      }
      
      public function __btnArrange1_click(param1:MouseEvent) : void
      {
         getOprInfo(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro1() : Label
      {
         return this._1699273614basicPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro2() : Label
      {
         return this._1699273613basicPro2;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro3() : Label
      {
         return this._1699273612basicPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro4() : Label
      {
         return this._1699273611basicPro4;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro5() : Label
      {
         return this._1699273610basicPro5;
      }
      
      public function onBreakMedal(param1:Object) : void
      {
         if(param1 == "ban")
         {
            _core.sysMidNote(Language.MEDAL_P[55]);
            return;
         }
         if(Boolean(param1 && _firstLoadCid && _core.player) && Boolean(_core.player.id) && _firstLoadCid == _core.player.id)
         {
            updateMedalInfoByOpr(param1);
            _core.player.medalExp = param1.medalExp;
            initBagInfo();
            updateView();
            if(this.slot3000.slotData)
            {
               this.slot3000.slotData = null;
               this.slot3000.reset();
               lv3000.label = "";
               breakExp.label = "";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnArrange3() : DelayButton
      {
         return this._486611075btnArrange3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro6() : Label
      {
         return this._1699273609basicPro6;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnArrange0() : DelayButton
      {
         return this._486611072btnArrange0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnArrange1() : DelayButton
      {
         return this._486611073btnArrange1;
      }
      
      [Bindable(event="propertyChange")]
      public function get charImg() : Image
      {
         return this._739034253charImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinLab1() : Label
      {
         return this._1401996146joinLab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnArrange2() : DelayButton
      {
         return this._486611074btnArrange2;
      }
      
      private function _MedalPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTitleCanvas1.text = param1;
         },"_MedalPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1006.slotType = param1;
         },"slot1006.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1002.slotType = param1;
         },"slot1002.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1005.slotType = param1;
         },"slot1005.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1001.slotType = param1;
         },"slot1001.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1004.slotType = param1;
         },"slot1004.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1003.slotType = param1;
         },"slot1003.slotType");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton7.label = param1;
         },"_MedalPanel_BasicTxtButton7.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_Label1.text = param1;
         },"_MedalPanel_Label1.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MedalPanel_Label1.filters = param1;
         },"_MedalPanel_Label1.filters");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinLab.text = param1;
         },"joinLab.text");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            joinLab.filters = param1;
         },"joinLab.filters");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnArrange2.label = param1;
         },"btnArrange2.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnArrange3.label = param1;
         },"btnArrange3.label");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2006.slotType = param1;
         },"slot2006.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2002.slotType = param1;
         },"slot2002.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2005.slotType = param1;
         },"slot2005.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2001.slotType = param1;
         },"slot2001.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2004.slotType = param1;
         },"slot2004.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2003.slotType = param1;
         },"slot2003.slotType");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton15.label = param1;
         },"_MedalPanel_BasicTxtButton15.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_Label9.text = param1;
         },"_MedalPanel_Label9.text");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MedalPanel_Label9.filters = param1;
         },"_MedalPanel_Label9.filters");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinLab1.text = param1;
         },"joinLab1.text");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            joinLab1.filters = param1;
         },"joinLab1.filters");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnArrange0.label = param1;
         },"btnArrange0.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnArrange1.label = param1;
         },"btnArrange1.label");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_CHARACTER;
         },function(param1:Object):void
         {
            _MedalPanel_Image5.source = param1;
         },"_MedalPanel_Image5.source");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delInfo.text = param1;
         },"delInfo.text");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot3000.slotType = param1;
         },"slot3000.slotType");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton17.label = param1;
         },"_MedalPanel_BasicTxtButton17.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            breakBtn.label = param1;
         },"breakBtn.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            breakBtnMore.label = param1;
         },"breakBtnMore.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton18.label = param1;
         },"_MedalPanel_BasicTxtButton18.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton19.label = param1;
         },"_MedalPanel_BasicTxtButton19.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.medalExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myExpBreakP.label = param1;
         },"myExpBreakP.label");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_CHARACTER;
         },function(param1:Object):void
         {
            _MedalPanel_Image6.source = param1;
         },"_MedalPanel_Image6.source");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upInfo.text = param1;
         },"upInfo.text");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot3001.slotType = param1;
         },"slot3001.slotType");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton24.label = param1;
         },"_MedalPanel_BasicTxtButton24.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton25.label = param1;
         },"_MedalPanel_BasicTxtButton25.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn.label = param1;
         },"upBtn.label");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton26.label = param1;
         },"_MedalPanel_BasicTxtButton26.label");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.medalExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myExpUpP.label = param1;
         },"myExpUpP.label");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton29.label = param1;
         },"_MedalPanel_BasicTxtButton29.label");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_BasicTxtButton30.label = param1;
         },"_MedalPanel_BasicTxtButton30.label");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MedalPanel_Canvas10.label = param1;
         },"_MedalPanel_Canvas10.label");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[53] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[55] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[56] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[58] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[59] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[60] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[61] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[62] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[63] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[65] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[66] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[67] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[68] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot19.slotType = param1;
         },"slot19.slotType");
         result[69] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot20.slotType = param1;
         },"slot20.slotType");
         result[70] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot21.slotType = param1;
         },"slot21.slotType");
         result[71] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot22.slotType = param1;
         },"slot22.slotType");
         result[72] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot23.slotType = param1;
         },"slot23.slotType");
         result[73] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot24.slotType = param1;
         },"slot24.slotType");
         result[74] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot25.slotType = param1;
         },"slot25.slotType");
         result[75] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot26.slotType = param1;
         },"slot26.slotType");
         result[76] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot27.slotType = param1;
         },"slot27.slotType");
         result[77] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MEDAL;
         },function(param1:int):void
         {
            slot28.slotType = param1;
         },"slot28.slotType");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PAGE_SELECTOR[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLastPage.label = param1;
         },"btnLastPage.label");
         result[79] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            txtPageIndicator.filters = param1;
         },"txtPageIndicator.filters");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PAGE_SELECTOR[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnNextPage.label = param1;
         },"btnNextPage.label");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnArrange.label = param1;
         },"btnArrange.label");
         result[82] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : MedalSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get breakExp() : BasicTxtButton
      {
         return this._77309086breakExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : MedalSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : MedalSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : MedalSlot
      {
         return this._899454814slot15;
      }
      
      private function _resetEquiptMedal(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1)
         {
            this["slot" + param1.i].reset();
            _loc2_ = new Object();
            this["slot" + param1.i].type = GamePredef.TBL_MEDAL;
            _loc2_.ti = GamePredef.TBL_MEDAL;
            this["slot" + param1.i].giid = param1.t;
            _loc2_.ii = param1.t;
            this["slot" + param1.i].stackNum = param1.n;
            _loc2_.n = param1.n;
            _loc2_.q = 0;
            _loc2_.index = Number(param1.i);
            _loc3_ = GameData.d[GamePredef.TBL_MEDAL][param1.t];
            if(_loc3_)
            {
               _loc2_.q = _loc3_.q;
               this["lv" + param1.i].label = "LV " + _loc3_.level;
            }
            else
            {
               this["lv" + param1.i].label = "";
            }
            this["slot" + param1.i].slotData = _loc2_;
            this["slot" + param1.i].labelVisible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : MedalSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : MedalSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : MedalSlot
      {
         return this._899454816slot13;
      }
      
      public function __btnLastPage_click(param1:MouseEvent) : void
      {
         goto(-1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : MedalSlot
      {
         return this._899454811slot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : MedalSlot
      {
         return this._899454810slot19;
      }
      
      public function __breakBtnMore_click(param1:MouseEvent) : void
      {
         breakMedal(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : MedalSlot
      {
         return this._899454788slot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot21() : MedalSlot
      {
         return this._899454787slot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot22() : MedalSlot
      {
         return this._899454786slot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot23() : MedalSlot
      {
         return this._899454785slot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot24() : MedalSlot
      {
         return this._899454784slot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot26() : MedalSlot
      {
         return this._899454782slot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot27() : MedalSlot
      {
         return this._899454781slot27;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot28() : MedalSlot
      {
         return this._899454780slot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : MedalSlot
      {
         return this._899454813slot16;
      }
      
      public function __btnNextPage_click(param1:MouseEvent) : void
      {
         goto(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLastPage() : Button
      {
         return this._320271553btnLastPage;
      }
      
      private function setJoinSlot(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!param1 || param1 == 0)
         {
            this.slot2006.reset();
            this.joinLab1.visible = false;
            this["basicPro16"].text = "";
            this.joinName.label = "";
            this.lv2006.visible = false;
            charImg.visible = true;
            charImg1.visible = false;
         }
         else
         {
            this.slot2006.reset();
            _loc2_ = new Object();
            this.slot2006.type = GamePredef.TBL_MEDAL;
            _loc2_.ti = GamePredef.TBL_MEDAL;
            this.slot2006.giid = param1;
            _loc2_.ii = param1;
            this.slot2006.stackNum = 1;
            _loc2_.n = 1;
            _loc2_.q = 0;
            _loc3_ = GameData.d[GamePredef.TBL_MEDAL][this.slot2006.giid];
            if(_loc3_)
            {
               _loc2_.q = _loc3_.q;
               this["basicPro16"].text = GamePredef.MEDAL_PROP_NAME[_loc3_.propType] + " +" + Number(_loc3_.propVal) / 100;
               if(Boolean(_loc3_.preflag) && ToolKit.isEqual(_loc3_.preflag,1))
               {
                  this["basicPro16"].text += "%";
               }
               this.joinName.label = _loc3_.name;
               this.lv2006.visible = true;
               this.lv2006.text = "LV " + _loc3_.level;
            }
            else
            {
               this["basicPro16"].text = "";
               this.joinName.label = "";
               this.lv2006.visible = false;
            }
            this.slot2006.slotData = _loc2_;
            this.joinLab1.visible = true;
            charImg1.visible = true;
            charImg.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot25() : MedalSlot
      {
         return this._899454783slot25;
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         bangSele(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get breakBtn() : DelayButton
      {
         return this._77306077breakBtn;
      }
      
      public function set basicPro1(param1:Label) : void
      {
         var _loc2_:Object = this._1699273614basicPro1;
         if(_loc2_ !== param1)
         {
            this._1699273614basicPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro1",_loc2_,param1));
         }
      }
      
      public function set basicPro2(param1:Label) : void
      {
         var _loc2_:Object = this._1699273613basicPro2;
         if(_loc2_ !== param1)
         {
            this._1699273613basicPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lv1002() : BasicTxtButton
      {
         return this._1092536085lv1002;
      }
      
      public function set basicPro5(param1:Label) : void
      {
         var _loc2_:Object = this._1699273610basicPro5;
         if(_loc2_ !== param1)
         {
            this._1699273610basicPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lv1004() : BasicTxtButton
      {
         return this._1092536083lv1004;
      }
      
      public function set basicPro6(param1:Label) : void
      {
         var _loc2_:Object = this._1699273609basicPro6;
         if(_loc2_ !== param1)
         {
            this._1699273609basicPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro6",_loc2_,param1));
         }
      }
      
      public function set basicPro3(param1:Label) : void
      {
         var _loc2_:Object = this._1699273612basicPro3;
         if(_loc2_ !== param1)
         {
            this._1699273612basicPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro3",_loc2_,param1));
         }
      }
      
      public function set basicPro4(param1:Label) : void
      {
         var _loc2_:Object = this._1699273611basicPro4;
         if(_loc2_ !== param1)
         {
            this._1699273611basicPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lv1003() : BasicTxtButton
      {
         return this._1092536084lv1003;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv1005() : BasicTxtButton
      {
         return this._1092536082lv1005;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv1001() : BasicTxtButton
      {
         return this._1092536086lv1001;
      }
      
      public function set btnArrange0(param1:DelayButton) : void
      {
         var _loc2_:Object = this._486611072btnArrange0;
         if(_loc2_ !== param1)
         {
            this._486611072btnArrange0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnArrange0",_loc2_,param1));
         }
      }
      
      public function set btnArrange1(param1:DelayButton) : void
      {
         var _loc2_:Object = this._486611073btnArrange1;
         if(_loc2_ !== param1)
         {
            this._486611073btnArrange1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnArrange1",_loc2_,param1));
         }
      }
      
      public function set btnArrange2(param1:DelayButton) : void
      {
         var _loc2_:Object = this._486611074btnArrange2;
         if(_loc2_ !== param1)
         {
            this._486611074btnArrange2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnArrange2",_loc2_,param1));
         }
      }
      
      public function set btnArrange3(param1:DelayButton) : void
      {
         var _loc2_:Object = this._486611075btnArrange3;
         if(_loc2_ !== param1)
         {
            this._486611075btnArrange3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnArrange3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lv1006() : BasicTxtButton
      {
         return this._1092536081lv1006;
      }
      
      public function set myExpUpP(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1203783036myExpUpP;
         if(_loc2_ !== param1)
         {
            this._1203783036myExpUpP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myExpUpP",_loc2_,param1));
         }
      }
      
      private function initMedalInfo(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = 1001;
         while(_loc2_ <= 1005)
         {
            if(this["slot" + _loc2_])
            {
               this["slot" + _loc2_].reset();
               this["slot" + _loc2_].labelTitle = Language.MEDAL_P[ToolKit.add(ToolKit.minus(_loc2_,1001),41)];
               this["slot" + _loc2_].labelVisible = true;
            }
            _loc2_++;
         }
         _loc2_ = 2001;
         while(_loc2_ <= 2005)
         {
            if(this["slot" + _loc2_])
            {
               this["slot" + _loc2_].reset();
               this["slot" + _loc2_].labelTitle = Language.MEDAL_P[ToolKit.add(ToolKit.minus(_loc2_,2001),41)];
               this["slot" + _loc2_].labelVisible = true;
            }
            _loc2_++;
         }
         if(this.slot1006)
         {
            this.slot1006.reset();
            this.joinLab.visible = false;
            this["basicPro6"].text = "";
            this.pJoinName.label = "";
            this.lv1006.visible = false;
            petImg.visible = true;
            petImg1.visible = false;
         }
         if(this.slot2006)
         {
            this.slot2006.reset();
            this.joinLab1.visible = false;
            this["basicPro16"].text = "";
            this.joinName.label = "";
            this.lv2006.visible = false;
            charImg.visible = true;
            charImg1.visible = false;
         }
         var _loc3_:Object = new Object();
         for(_loc4_ in param1.medalBag)
         {
            if(Boolean(param1.medalBag[_loc4_]) && ToolKit.isSmallOrEqual(_loc4_,320))
            {
               _loc3_[_loc4_] = new Object();
               _loc3_[_loc4_] = param1.medalBag[_loc4_];
            }
            else if(Boolean(param1.medalBag[_loc4_]) && Boolean(GamePredef.MEDAL_EQUIPT_SID[_loc4_]))
            {
               param1.medalBag[_loc4_]["i"] = _loc4_;
               _resetEquiptMedal(param1.medalBag[_loc4_]);
            }
         }
         if(param1.petBuff)
         {
            setPetJoinSlot(param1.petBuff.t);
         }
         if(param1.charBuff)
         {
            setJoinSlot(param1.charBuff.t);
         }
         updateMedalProp();
         setMedalBag(_loc3_);
         _core.player.medalExp = param1.medalExp;
         slot3000.removeEventListener(GameEvent.SLOT_GIID_CHANGE,BreakSlotChange);
         slot3001.removeEventListener(GameEvent.SLOT_GIID_CHANGE,upSlotChange);
         slot3000.addEventListener(GameEvent.SLOT_GIID_CHANGE,BreakSlotChange);
         slot3001.addEventListener(GameEvent.SLOT_GIID_CHANGE,upSlotChange);
         if(slot3000.slotData)
         {
            this.slot3000.reset();
            lv3000.label = "";
            breakExp.label = "";
         }
         if(slot3001.slotData)
         {
            this.slot3001.reset();
            lv3001.label = "";
            upExp.label = "";
            nowProp.text = "";
            nextProp.text = "";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextProp() : BasicTxtButton
      {
         return this._1424290038nextProp;
      }
      
      public function set charImg(param1:Image) : void
      {
         var _loc2_:Object = this._739034253charImg;
         if(_loc2_ !== param1)
         {
            this._739034253charImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charImg",_loc2_,param1));
         }
      }
      
      public function __btnArrange0_click(param1:MouseEvent) : void
      {
         getOprInfo(1);
      }
      
      public function set vsBang(param1:ViewStack) : void
      {
         var _loc2_:Object = this._808459627vsBang;
         if(_loc2_ !== param1)
         {
            this._808459627vsBang = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsBang",_loc2_,param1));
         }
      }
      
      private function upMedal() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         if(Boolean(this.slot3001.slotData) && Boolean(this.slot3001.slotData.index) && Boolean(itemAC[this.slot3001.slotData.index]))
         {
            _loc1_ = GameData.d[GamePredef.TBL_MEDAL][this.slot3001.giid];
            for each(_loc2_ in _core.data.gameDataIndex[GamePredef.TBL_MEDAL][_loc1_.basicTid])
            {
               if(Number(_loc2_.level) == ToolKit.add(1,_loc1_.level))
               {
                  if(Boolean(_loc2_.clevel) && Number(_loc2_.clevel) > _core.player.level)
                  {
                     _core.sysMidNote(Language.MEDAL_P[54]);
                     return;
                  }
               }
            }
            if(Boolean(_loc1_) && Number(_loc1_.upExp) <= _core.player.medalExp)
            {
               _core.remote.call("upMedal",new Responder(onUpMedal),this.slot3001.slotData.index);
            }
            else
            {
               _core.sysMidNote(Language.MEDAL_P[38]);
            }
         }
      }
      
      public function set joinLab1(param1:Label) : void
      {
         var _loc2_:Object = this._1401996146joinLab1;
         if(_loc2_ !== param1)
         {
            this._1401996146joinLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinLab1",_loc2_,param1));
         }
      }
      
      private function breakMedal(param1:int) : void
      {
         var gfunc:Function = null;
         var item:Object = null;
         var index:Number = NaN;
         var handler:Function = null;
         var str:String = null;
         var nummater:Number = NaN;
         var type:int = param1;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         if(Boolean(this.slot3000.slotData) && Boolean(this.slot3000.slotData.index) && Boolean(itemAC[this.slot3000.slotData.index]))
         {
            item = _core.data.getGameData(itemAC[this.slot3000.slotData.index].ti,itemAC[this.slot3000.slotData.index].ii);
            index = Number(this.slot3000.slotData.index);
            if(type == 1)
            {
               if(item.q >= 2)
               {
                  handler = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("breakMedal",new Responder(onBreakMedal),index,1,1);
                     }
                  };
                  if(_alert1)
                  {
                     PopUpManager.removePopUp(_alert1);
                     _alert1 = null;
                  }
                  str = Language.MEDAL_P[58].toString();
                  _alert1 = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
                  return;
               }
               _core.remote.call("breakMedal",new Responder(onBreakMedal),this.slot3000.slotData.index,1,1);
            }
            else
            {
               if(Number(materialMixNum.value) > Number(this.slot3000.slotData.stackNum) || Number(materialMixNum.value) <= 0)
               {
                  return;
               }
               nummater = Number(materialMixNum.value);
               if(item.q >= 2)
               {
                  handler = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("breakMedal",new Responder(onBreakMedal),index,nummater,2);
                     }
                  };
                  if(_alert1)
                  {
                     PopUpManager.removePopUp(_alert1);
                     _alert1 = null;
                  }
                  str = Language.MEDAL_P[58].toString();
                  _alert1 = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
                  return;
               }
               _core.remote.call("breakMedal",new Responder(onBreakMedal),this.slot3000.slotData.index,Number(materialMixNum.value),2);
            }
         }
      }
      
      public function set slot10(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      public function set breakExp(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._77309086breakExp;
         if(_loc2_ !== param1)
         {
            this._77309086breakExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"breakExp",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set btnNextPage(param1:Button) : void
      {
         var _loc2_:Object = this._1090881890btnNextPage;
         if(_loc2_ !== param1)
         {
            this._1090881890btnNextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnNextPage",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get charImg1() : Image
      {
         return this._1435225412charImg1;
      }
      
      public function set petImg1(param1:Image) : void
      {
         var _loc2_:Object = this._677847411petImg1;
         if(_loc2_ !== param1)
         {
            this._677847411petImg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg1",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lv2001() : BasicTxtButton
      {
         return this._1092506295lv2001;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv2002() : BasicTxtButton
      {
         return this._1092506294lv2002;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv2003() : BasicTxtButton
      {
         return this._1092506293lv2003;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv2004() : BasicTxtButton
      {
         return this._1092506292lv2004;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv2005() : BasicTxtButton
      {
         return this._1092506291lv2005;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv2006() : BasicTxtButton
      {
         return this._1092506290lv2006;
      }
      
      public function set slot18(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot11(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot16(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set slot19(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      private function arrangeMedalBag() : void
      {
         if(!itemLen == 0)
         {
            _core.remote.call("arrangeMedalBag",new Responder(onArrangeMedalBag));
         }
      }
      
      private function goto(param1:int) : void
      {
         if(ToolKit.isSmallThan(param1,0))
         {
            if(ToolKit.isBigThan(itemPageNo,1))
            {
               --itemPageNo;
               txtPageIndicator.text = itemPageNo + "/" + maxPage;
               updateView();
            }
         }
         else if(ToolKit.isSmallThan(itemPageNo,maxPage))
         {
            ++itemPageNo;
            txtPageIndicator.text = itemPageNo + "/" + maxPage;
            updateView();
         }
      }
      
      public function set slot20(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      public function set slot21(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454787slot21;
         if(_loc2_ !== param1)
         {
            this._899454787slot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot21",_loc2_,param1));
         }
      }
      
      public function set slot22(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454786slot22;
         if(_loc2_ !== param1)
         {
            this._899454786slot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot22",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      public function set slot24(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454784slot24;
         if(_loc2_ !== param1)
         {
            this._899454784slot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot24",_loc2_,param1));
         }
      }
      
      private function onArrangeMedalBag(param1:Object) : void
      {
         var _loc3_:* = undefined;
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = new Object();
         for(_loc3_ in param1)
         {
            if(Boolean(param1[_loc3_]) && ToolKit.isSmallOrEqual(_loc3_,320))
            {
               _loc2_[_loc3_] = new Object();
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         setMedalBag(_loc2_);
      }
      
      public function set slot27(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454781slot27;
         if(_loc2_ !== param1)
         {
            this._899454781slot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot27",_loc2_,param1));
         }
      }
      
      public function set slot28(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454780slot28;
         if(_loc2_ !== param1)
         {
            this._899454780slot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot28",_loc2_,param1));
         }
      }
      
      public function set btnLastPage(param1:Button) : void
      {
         var _loc2_:Object = this._320271553btnLastPage;
         if(_loc2_ !== param1)
         {
            this._320271553btnLastPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLastPage",_loc2_,param1));
         }
      }
      
      public function set slot26(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454782slot26;
         if(_loc2_ !== param1)
         {
            this._899454782slot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot26",_loc2_,param1));
         }
      }
      
      private function BreakSlotChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(slot3000.slotData)
         {
            _loc2_ = GameData.d[GamePredef.TBL_MEDAL][this.slot3000.giid];
            lv3000.label = "LV " + _loc2_.level;
            breakExp.label = _loc2_.exp;
            materialMixNum.maximum = slot3000.slotData.n;
            if(materialMixNum.value > materialMixNum.maximum)
            {
               materialMixNum.value = materialMixNum.maximum;
            }
         }
      }
      
      public function set slot25(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454783slot25;
         if(_loc2_ !== param1)
         {
            this._899454783slot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot25",_loc2_,param1));
         }
      }
      
      public function updateMedalInBag(param1:Object) : void
      {
         if(Boolean(param1 && _firstLoadCid && _core.player) && Boolean(_core.player.id) && _firstLoadCid == _core.player.id)
         {
            _updateMedalInBag(param1);
            initBagInfo();
            updateView();
         }
      }
      
      public function set slot23(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._899454785slot23;
         if(_loc2_ !== param1)
         {
            this._899454785slot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot23",_loc2_,param1));
         }
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         bangSele(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get upExp() : BasicTxtButton
      {
         return this._111458690upExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv3001() : BasicTxtButton
      {
         return this._1092476504lv3001;
      }
      
      public function set joinName(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1401936171joinName;
         if(_loc2_ !== param1)
         {
            this._1401936171joinName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnArrange() : DelayButton
      {
         return this._1923965520btnArrange;
      }
      
      public function __upBtn_click(param1:MouseEvent) : void
      {
         upMedal();
      }
      
      private function initBagInfo() : void
      {
         txtPageIndicator.text = "1/1";
         maxPage = Math.ceil(itemLen / countPerPage);
         if(!maxPage || maxPage == 0)
         {
            maxPage = 1;
         }
         if(ToolKit.isBigThan(itemPageNo,maxPage))
         {
            itemPageNo = 1;
         }
         txtPageIndicator.text = itemPageNo + "/" + maxPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv3000() : BasicTxtButton
      {
         return this._1092476505lv3000;
      }
      
      public function set breakBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._77306077breakBtn;
         if(_loc2_ !== param1)
         {
            this._77306077breakBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"breakBtn",_loc2_,param1));
         }
      }
      
      private function bangSele(param1:Number) : void
      {
         var _loc2_:int = 4;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["bangBtn" + _loc3_].selected = false;
            _loc3_++;
         }
         this["bangBtn" + param1].selected = true;
         vsBang.selectedIndex = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn() : DelayButton
      {
         return this._111455681upBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get breakBtnMore() : DelayButton
      {
         return this._1453420078breakBtnMore;
      }
      
      public function set lv1001(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092536086lv1001;
         if(_loc2_ !== param1)
         {
            this._1092536086lv1001 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv1001",_loc2_,param1));
         }
      }
      
      public function set lv1002(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092536085lv1002;
         if(_loc2_ !== param1)
         {
            this._1092536085lv1002 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv1002",_loc2_,param1));
         }
      }
      
      public function set lv1006(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092536081lv1006;
         if(_loc2_ !== param1)
         {
            this._1092536081lv1006 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv1006",_loc2_,param1));
         }
      }
      
      public function set lv1003(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092536084lv1003;
         if(_loc2_ !== param1)
         {
            this._1092536084lv1003 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv1003",_loc2_,param1));
         }
      }
      
      public function set lv1004(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092536083lv1004;
         if(_loc2_ !== param1)
         {
            this._1092536083lv1004 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv1004",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upInfo() : IntroText
      {
         return this._839638551upInfo;
      }
      
      public function set lv1005(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092536082lv1005;
         if(_loc2_ !== param1)
         {
            this._1092536082lv1005 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv1005",_loc2_,param1));
         }
      }
      
      public function set nextProp(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1424290038nextProp;
         if(_loc2_ !== param1)
         {
            this._1424290038nextProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextProp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : MedalSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : MedalSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : MedalSlot
      {
         return this._109532662slot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : MedalSlot
      {
         return this._109532665slot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : MedalSlot
      {
         return this._109532667slot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : MedalSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : MedalSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro11() : Label
      {
         return this._1137874433basicPro11;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro12() : Label
      {
         return this._1137874432basicPro12;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro13() : Label
      {
         return this._1137874431basicPro13;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro15() : Label
      {
         return this._1137874429basicPro15;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro16() : Label
      {
         return this._1137874428basicPro16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : MedalSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro14() : Label
      {
         return this._1137874430basicPro14;
      }
      
      public function __btnArrange_click(param1:MouseEvent) : void
      {
         arrangeMedalBag();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : MedalSlot
      {
         return this._109532666slot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg() : Image
      {
         return this._991697372petImg;
      }
      
      public function onUpMedal(param1:Object) : void
      {
         if(Boolean(param1 && _firstLoadCid && _core.player) && Boolean(_core.player.id) && _firstLoadCid == _core.player.id)
         {
            updateMedalInfoByOpr(param1);
            _core.player.medalExp = param1.medalExp;
            initBagInfo();
            updateView();
            if(this.slot3001.slotData)
            {
               this.slot3001.slotData = null;
               this.slot3001.reset();
               lv3001.label = "";
               upExp.label = "";
               nowProp.text = "";
               nextProp.text = "";
            }
         }
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         bangSele(1);
      }
      
      private function initMedalPanel() : void
      {
         charImg.source = ResManager.getIconUrl(parseInt("4130220000207"));
         petImg.source = ResManager.getIconUrl(parseInt("4130220000207"));
         petImg1.source = ResManager.getIconUrl(parseInt("4130220000208"));
         charImg1.source = ResManager.getIconUrl(parseInt("4130220000208"));
      }
      
      [Bindable(event="propertyChange")]
      public function get myExpUpP() : BasicTxtButton
      {
         return this._1203783036myExpUpP;
      }
      
      public function onMoveMedal(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(Boolean(param1 && _firstLoadCid && _core.player) && Boolean(_core.player.id) && _firstLoadCid == _core.player.id)
         {
            updateMedalInfoByOpr(param1);
            _loc2_ = int(param1["type"]);
            if(1 == _loc2_)
            {
               setJoinSlot(param1["joinTid"]);
            }
            else if(2 == _loc2_)
            {
               setPetJoinSlot(param1["petJoinTid"]);
            }
            updateMedalProp();
            initBagInfo();
            updateView();
         }
      }
      
      public function set charImg1(param1:Image) : void
      {
         var _loc2_:Object = this._1435225412charImg1;
         if(_loc2_ !== param1)
         {
            this._1435225412charImg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charImg1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg1() : Image
      {
         return this._677847411petImg1;
      }
      
      public function set lv2001(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092506295lv2001;
         if(_loc2_ !== param1)
         {
            this._1092506295lv2001 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv2001",_loc2_,param1));
         }
      }
      
      public function set lv2002(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092506294lv2002;
         if(_loc2_ !== param1)
         {
            this._1092506294lv2002 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv2002",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vsBang() : ViewStack
      {
         return this._808459627vsBang;
      }
      
      public function set lv2004(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092506292lv2004;
         if(_loc2_ !== param1)
         {
            this._1092506292lv2004 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv2004",_loc2_,param1));
         }
      }
      
      public function set lv2003(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092506293lv2003;
         if(_loc2_ !== param1)
         {
            this._1092506293lv2003 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv2003",_loc2_,param1));
         }
      }
      
      public function set lv2005(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092506291lv2005;
         if(_loc2_ !== param1)
         {
            this._1092506291lv2005 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv2005",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnNextPage() : Button
      {
         return this._1090881890btnNextPage;
      }
      
      public function set lv2006(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092506290lv2006;
         if(_loc2_ !== param1)
         {
            this._1092506290lv2006 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv2006",_loc2_,param1));
         }
      }
      
      private function updateMedalInfoByOpr(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         for(_loc2_ in param1)
         {
            switch(_loc2_)
            {
               case "del":
                  if(Number(param1[_loc2_]) <= GamePredef.MEDAL_BAG_MAX_ID && Number(param1[_loc2_]) > 0)
                  {
                     if(Boolean(itemAC[Number(param1[_loc2_])]) && delete itemAC[Number(param1[_loc2_])])
                     {
                        if(ToolKit.isEqual(ToolKit.add(Number(param1[_loc2_]),1),itemLen))
                        {
                           itemLen = 0;
                           for(_loc2_ in itemAC)
                           {
                              if(itemAC[_loc2_])
                              {
                                 if(ToolKit.isBigOrEqual(Number(_loc2_),itemLen))
                                 {
                                    itemLen = ToolKit.add(Number(_loc2_),1);
                                    if(ToolKit.isBigThan(itemLen,GamePredef.MEDAL_BAG_MAX_ID))
                                    {
                                       itemLen = GamePredef.MEDAL_BAG_MAX_ID;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else if(GamePredef.MEDAL_EQUIPT_SID[Number(param1[_loc2_])])
                  {
                     this["slot" + Number(param1[_loc2_])].slotData = null;
                     this["slot" + Number(param1[_loc2_])].reset();
                     this["lv" + Number(param1[_loc2_])].label = "";
                     this["slot" + Number(param1[_loc2_])].labelVisible = true;
                  }
                  break;
               case "pa":
                  if(param1[_loc2_])
                  {
                     for(_loc3_ in param1[_loc2_])
                     {
                        if(param1[_loc2_][_loc3_])
                        {
                           if(GamePredef.MEDAL_EQUIPT_SID[_loc3_])
                           {
                              param1[_loc2_][_loc3_]["i"] = Number(_loc3_);
                              _resetEquiptMedal(param1[_loc2_][_loc3_]);
                           }
                        }
                     }
                  }
                  break;
               case "ba":
                  if(param1[_loc2_])
                  {
                     for(_loc3_ in param1[_loc2_])
                     {
                        if(param1[_loc2_][_loc3_])
                        {
                           if(Number(_loc3_) <= GamePredef.MEDAL_BAG_MAX_ID && Number(_loc3_) > 0)
                           {
                              param1[_loc2_][_loc3_]["i"] = Number(_loc3_);
                              _updateMedalInBag(param1[_loc2_][_loc3_]);
                           }
                        }
                     }
                  }
            }
         }
      }
      
      public function set slot1003(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087653024slot1003;
         if(_loc2_ !== param1)
         {
            this._1087653024slot1003 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1003",_loc2_,param1));
         }
      }
      
      public function set slot1001(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087653026slot1001;
         if(_loc2_ !== param1)
         {
            this._1087653026slot1001 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1001",_loc2_,param1));
         }
      }
      
      public function set myExpBreakP(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._535111522myExpBreakP;
         if(_loc2_ !== param1)
         {
            this._535111522myExpBreakP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myExpBreakP",_loc2_,param1));
         }
      }
      
      private function getOprInfo(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         var _loc2_:String = Language.MEDAL_P[46];
         if(param1 == 2)
         {
            _loc4_ = 0;
            _loc5_ = 4;
            _loc4_ = 0;
            while(_loc4_ < _loc5_)
            {
               if(this["bangBtn" + _loc4_].selected)
               {
                  break;
               }
               _loc4_++;
            }
            if(_loc4_ == 0)
            {
               _loc2_ = Language.MEDAL_P[47];
            }
            else if(_loc4_ == 1)
            {
               _loc2_ = Language.MEDAL_P[53];
            }
         }
         _alert = Alert.show(_loc2_,null,Alert.OK,null,null);
         var _loc3_:IUITextField = _alert.mx_internal::alertForm.mx_internal::textField;
         _loc3_.htmlText = _loc2_;
         _loc3_.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function set delInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._1549623129delInfo;
         if(_loc2_ !== param1)
         {
            this._1549623129delInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delInfo",_loc2_,param1));
         }
      }
      
      public function set slot1005(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087653022slot1005;
         if(_loc2_ !== param1)
         {
            this._1087653022slot1005 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1005",_loc2_,param1));
         }
      }
      
      private function setPetJoinSlot(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!param1 || param1 == 0)
         {
            this.slot1006.reset();
            this.joinLab.visible = false;
            this["basicPro6"].text = "";
            this.pJoinName.label = "";
            this.lv1006.visible = false;
            petImg.visible = true;
            petImg1.visible = false;
         }
         else
         {
            this.slot1006.reset();
            _loc2_ = new Object();
            this.slot1006.type = GamePredef.TBL_MEDAL;
            _loc2_.ti = GamePredef.TBL_MEDAL;
            this.slot1006.giid = param1;
            _loc2_.ii = param1;
            this.slot1006.stackNum = 1;
            _loc2_.n = 1;
            _loc2_.q = 0;
            _loc3_ = GameData.d[GamePredef.TBL_MEDAL][this.slot1006.giid];
            if(_loc3_)
            {
               this["basicPro6"].text = GamePredef.MEDAL_PROP_NAME[_loc3_.propType] + " +" + Number(_loc3_.propVal) / 100;
               if(Boolean(_loc3_.preflag) && ToolKit.isEqual(_loc3_.preflag,1))
               {
                  this["basicPro6"].text += "%";
               }
               _loc2_.q = _loc3_.q;
               this.pJoinName.label = _loc3_.name;
               this.lv1006.visible = true;
               this.lv1006.text = "LV " + _loc3_.level;
            }
            else
            {
               this["basicPro6"].text = "";
               this.pJoinName.label = "";
               this.lv1006.visible = false;
            }
            this.slot1006.slotData = _loc2_;
            this.joinLab.visible = true;
            petImg1.visible = true;
            petImg.visible = false;
         }
      }
      
      public function set slot1002(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087653025slot1002;
         if(_loc2_ !== param1)
         {
            this._1087653025slot1002 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1002",_loc2_,param1));
         }
      }
      
      public function set pJoinName(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1908728987pJoinName;
         if(_loc2_ !== param1)
         {
            this._1908728987pJoinName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pJoinName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinName() : BasicTxtButton
      {
         return this._1401936171joinName;
      }
      
      public function set slot1004(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087653023slot1004;
         if(_loc2_ !== param1)
         {
            this._1087653023slot1004 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1004",_loc2_,param1));
         }
      }
      
      public function set nowProp(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._2131388249nowProp;
         if(_loc2_ !== param1)
         {
            this._2131388249nowProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowProp",_loc2_,param1));
         }
      }
      
      public function __btnArrange3_click(param1:MouseEvent) : void
      {
         getOprInfo(2);
      }
      
      public function set slot1006(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087653021slot1006;
         if(_loc2_ !== param1)
         {
            this._1087653021slot1006 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1006",_loc2_,param1));
         }
      }
      
      public function set firstTile(param1:Tile) : void
      {
         var _loc2_:Object = this._133022078firstTile;
         if(_loc2_ !== param1)
         {
            this._133022078firstTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstTile",_loc2_,param1));
         }
      }
      
      public function set upExp(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._111458690upExp;
         if(_loc2_ !== param1)
         {
            this._111458690upExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upExp",_loc2_,param1));
         }
      }
      
      private function updateView() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Object = null;
         var _loc1_:* = ToolKit.minus(itemPageNo,1);
         var _loc2_:int = 1;
         while(_loc2_ <= countPerPage)
         {
            this["slot" + _loc2_].reset();
            this["slot" + _loc2_].slotData = null;
            this["slot" + _loc2_].sid = ToolKit.add(_loc1_ * countPerPage,_loc2_);
            _loc3_ = ToolKit.add(_loc1_ * countPerPage,_loc2_);
            if(Boolean(itemAC[_loc3_]) && Boolean(itemAC[_loc3_].ti) && Boolean(itemAC[_loc3_].ii) && Boolean(itemAC[_loc3_].n))
            {
               this["slot" + _loc2_].type = itemAC[_loc3_].ti;
               this["slot" + _loc2_].giid = itemAC[_loc3_].ii;
               this["slot" + _loc2_].stackNum = itemAC[_loc3_].n;
               this["slot" + _loc2_].quality = itemAC[_loc3_].q;
               this["slot" + _loc2_].slotData = itemAC[_loc3_];
               if(itemAC[_loc3_].ti == GamePredef.TBL_CREATURE)
               {
                  this["slot" + _loc2_].setStyleName(_core.basic.colorByGrowRate(itemAC[_loc3_].q / 10));
               }
               else
               {
                  _loc4_ = _core.data.getGameData(itemAC[_loc3_].ti,itemAC[_loc3_].ii);
                  (_loc4_) && _loc4_.color && this["slot" + _loc2_].setStyleName(0);
               }
            }
            _loc2_++;
         }
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         bangSele(0);
      }
      
      public function set materialMixNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1788135535materialMixNum;
         if(_loc2_ !== param1)
         {
            this._1788135535materialMixNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialMixNum",_loc2_,param1));
         }
      }
      
      public function set lv3001(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092476504lv3001;
         if(_loc2_ !== param1)
         {
            this._1092476504lv3001 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv3001",_loc2_,param1));
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
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
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
      
      public function set lv3000(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1092476505lv3000;
         if(_loc2_ !== param1)
         {
            this._1092476505lv3000 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv3000",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1002() : MedalSlot
      {
         return this._1087653025slot1002;
      }
      
      public function set btnArrange(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1923965520btnArrange;
         if(_loc2_ !== param1)
         {
            this._1923965520btnArrange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnArrange",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1004() : MedalSlot
      {
         return this._1087653023slot1004;
      }
      
      [Bindable(event="propertyChange")]
      public function get myExpBreakP() : BasicTxtButton
      {
         return this._535111522myExpBreakP;
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
      
      [Bindable(event="propertyChange")]
      public function get slot1003() : MedalSlot
      {
         return this._1087653024slot1003;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1001() : MedalSlot
      {
         return this._1087653026slot1001;
      }
      
      public function set txtPageIndicator(param1:TextInput) : void
      {
         var _loc2_:Object = this._1229795408txtPageIndicator;
         if(_loc2_ !== param1)
         {
            this._1229795408txtPageIndicator = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPageIndicator",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delInfo() : IntroText
      {
         return this._1549623129delInfo;
      }
      
      public function set slot2002(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087623234slot2002;
         if(_loc2_ !== param1)
         {
            this._1087623234slot2002 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2002",_loc2_,param1));
         }
      }
      
      public function set slot2003(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087623233slot2003;
         if(_loc2_ !== param1)
         {
            this._1087623233slot2003 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2003",_loc2_,param1));
         }
      }
      
      public function set slot2004(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087623232slot2004;
         if(_loc2_ !== param1)
         {
            this._1087623232slot2004 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2004",_loc2_,param1));
         }
      }
      
      public function set slot2001(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087623235slot2001;
         if(_loc2_ !== param1)
         {
            this._1087623235slot2001 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2001",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1006() : MedalSlot
      {
         return this._1087653021slot1006;
      }
      
      public function __breakBtn_click(param1:MouseEvent) : void
      {
         breakMedal(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get pJoinName() : BasicTxtButton
      {
         return this._1908728987pJoinName;
      }
      
      public function set slot2005(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087623231slot2005;
         if(_loc2_ !== param1)
         {
            this._1087623231slot2005 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2005",_loc2_,param1));
         }
      }
      
      public function set slot2006(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._1087623230slot2006;
         if(_loc2_ !== param1)
         {
            this._1087623230slot2006 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2006",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1005() : MedalSlot
      {
         return this._1087653022slot1005;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MedalPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MedalPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MedalPanelWatcherSetupUtil");
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
      public function get materialMixNum() : NumericStepper
      {
         return this._1788135535materialMixNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get nowProp() : BasicTxtButton
      {
         return this._2131388249nowProp;
      }
      
      public function set upBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._111455681upBtn;
         if(_loc2_ !== param1)
         {
            this._111455681upBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn",_loc2_,param1));
         }
      }
      
      public function set breakBtnMore(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1453420078breakBtnMore;
         if(_loc2_ !== param1)
         {
            this._1453420078breakBtnMore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"breakBtnMore",_loc2_,param1));
         }
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
      public function get bangBtn3() : BasicGlowButton
      {
         return this._1863324753bangBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPageIndicator() : TextInput
      {
         return this._1229795408txtPageIndicator;
      }
      
      public function __btnArrange2_click(param1:MouseEvent) : void
      {
         getOprInfo(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2002() : MedalSlot
      {
         return this._1087623234slot2002;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2003() : MedalSlot
      {
         return this._1087623233slot2003;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2004() : MedalSlot
      {
         return this._1087623232slot2004;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2006() : MedalSlot
      {
         return this._1087623230slot2006;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2001() : MedalSlot
      {
         return this._1087623235slot2001;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2005() : MedalSlot
      {
         return this._1087623231slot2005;
      }
      
      public function set upInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._839638551upInfo;
         if(_loc2_ !== param1)
         {
            this._839638551upInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upInfo",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!_firstLoadCid || Boolean(_core.player && _core.player.id) && Boolean(_firstLoadCid != _core.player.id))
         {
            _core.remote.call("getMedalInfo",new Responder(initMedalInfo));
            return;
         }
         this.visible = true;
      }
      
      public function set slot1(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set slot7(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      private function _MedalPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MEDAL_P[0];
         _loc1_ = Language.MEDAL_P[1];
         _loc1_ = Language.MEDAL_P[50];
         _loc1_ = Language.MEDAL_P[3];
         _loc1_ = Language.MEDAL_P[2];
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Language.MEDAL_P[13];
         _loc1_ = Language.MOUNTPANEL_U[12];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MEDAL_P[15];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MEDAL_P[39];
         _loc1_ = Language.MEDAL_P[40];
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Language.MEDAL_P[13];
         _loc1_ = Language.MOUNTPANEL_U[12];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MEDAL_P[15];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MEDAL_P[39];
         _loc1_ = Language.MEDAL_P[40];
         _loc1_ = ResManager.TOTEM_CHARACTER;
         _loc1_ = Language.MEDAL_P[49];
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Language.MEDAL_P[9];
         _loc1_ = Language.MEDAL_P[11];
         _loc1_ = Language.MEDAL_P[12];
         _loc1_ = Language.MEDAL_P[10];
         _loc1_ = Language.MEDAL_P[7];
         _loc1_ = _core.player.medalExp;
         _loc1_ = ResManager.TOTEM_CHARACTER;
         _loc1_ = Language.MEDAL_P[48];
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Language.MEDAL_P[6];
         _loc1_ = Language.MEDAL_P[7];
         _loc1_ = Language.MEDAL_P[5];
         _loc1_ = Language.MEDAL_P[8];
         _loc1_ = _core.player.medalExp;
         _loc1_ = Language.MEDAL_P[21];
         _loc1_ = Language.MEDAL_P[22];
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Slot.SLOT_MEDAL;
         _loc1_ = Language.PAGE_SELECTOR[0];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.PAGE_SELECTOR[1];
         _loc1_ = Language.MEDAL_P[4];
      }
      
      private function _updateMedalInBag(param1:Object) : void
      {
         if(param1)
         {
            if(!itemAC[param1.i])
            {
               itemAC[param1.i] = new Object();
               if(ToolKit.isBigOrEqual(param1.i,itemLen))
               {
                  itemLen = ToolKit.add(Number(param1.i),1);
                  if(ToolKit.isBigThan(itemLen,GamePredef.MEDAL_BAG_MAX_ID))
                  {
                     itemLen = GamePredef.MEDAL_BAG_MAX_ID;
                  }
               }
            }
            itemAC[param1.i].ti = GamePredef.TBL_MEDAL;
            itemAC[param1.i].ii = param1.t;
            itemAC[param1.i].n = param1.n;
            itemAC[param1.i].q = 0;
            itemAC[param1.i].index = Number(param1.i);
         }
      }
      
      public function set slot4(param1:MedalSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      public function set basicPro11(param1:Label) : void
      {
         var _loc2_:Object = this._1137874433basicPro11;
         if(_loc2_ !== param1)
         {
            this._1137874433basicPro11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro11",_loc2_,param1));
         }
      }
   }
}

