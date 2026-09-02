package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.EquipFuncBag;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotEquFunc;
   import com.qeedoo.ui.view.comp.ItemSlotMaterial;
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
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.Menu;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class QiLingPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _98628co0:Label;
      
      private var qlflag:Object = {};
      
      private var _933747497tabBtnA1:BasicGlowButton;
      
      private var _1564727391QiLingMater:ItemSlotMaterial;
      
      private var _112175qr0:Label;
      
      private var _106940722prop5:Label;
      
      public var _QiLingPanel_LinkButton1:LinkButton;
      
      private var equipBagAdded:Boolean = false;
      
      private var _98599cn2:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _QiLingPanel_Label18:Label;
      
      public var _QiLingPanel_Label19:Label;
      
      private var _979804988prop12:Label;
      
      private var czflag:Object = {};
      
      private var _alert:Alert;
      
      private var _98629co1:Label;
      
      public var _QiLingPanel_Label21:Label;
      
      public var _QiLingPanel_Label25:Label;
      
      public var _QiLingPanel_Label29:Label;
      
      private var qiLingPlan:Object = {
         0:{
            0:{
               "t":32,
               "r":100
            },
            1:{
               "t":71,
               "r":100
            },
            2:{
               "t":62,
               "r":100
            },
            3:{
               "t":63,
               "r":100
            },
            4:{
               "t":1,
               "r":100
            },
            5:{
               "t":58,
               "r":100
            },
            6:{
               "t":9,
               "r":100
            },
            7:{
               "t":6,
               "r":100
            },
            8:{
               "t":7,
               "r":100
            },
            9:{
               "t":2,
               "r":100
            }
         },
         1:{
            0:{
               "t":62,
               "r":100
            },
            1:{
               "t":63,
               "r":100
            },
            2:{
               "t":11,
               "r":100
            },
            3:{
               "t":72,
               "r":100
            },
            4:{
               "t":59,
               "r":100
            },
            5:{
               "t":60,
               "r":100
            },
            6:{
               "t":31,
               "r":100
            },
            7:{
               "t":9,
               "r":100
            },
            8:{
               "t":6,
               "r":100
            },
            9:{
               "t":7,
               "r":100
            },
            10:{
               "t":2,
               "r":100
            }
         },
         2:{
            0:{
               "t":32,
               "r":100
            },
            1:{
               "t":13,
               "r":100
            },
            2:{
               "t":4,
               "r":100
            },
            3:{
               "t":5,
               "r":100
            },
            4:{
               "t":72,
               "r":100
            },
            5:{
               "t":58,
               "r":100
            },
            6:{
               "t":34,
               "r":100
            },
            7:{
               "t":6,
               "r":100
            },
            8:{
               "t":7,
               "r":100
            },
            9:{
               "t":2,
               "r":100
            }
         },
         3:{
            0:{
               "t":14,
               "r":10
            },
            1:{
               "t":32,
               "r":10
            },
            2:{
               "t":4,
               "r":10
            },
            3:{
               "t":5,
               "r":10
            },
            4:{
               "t":8,
               "r":10
            },
            5:{
               "t":59,
               "r":10
            },
            6:{
               "t":60,
               "r":10
            },
            7:{
               "t":6,
               "r":10
            },
            8:{
               "t":7,
               "r":10
            },
            9:{
               "t":2,
               "r":10
            }
         },
         4:{
            0:{
               "t":14,
               "r":100
            },
            1:{
               "t":32,
               "r":100
            },
            2:{
               "t":4,
               "r":100
            },
            3:{
               "t":5,
               "r":100
            },
            4:{
               "t":8,
               "r":100
            },
            5:{
               "t":58,
               "r":100
            },
            6:{
               "t":61,
               "r":100
            },
            7:{
               "t":31,
               "r":100
            },
            8:{
               "t":6,
               "r":100
            },
            9:{
               "t":7,
               "r":100
            },
            10:{
               "t":2,
               "r":100
            }
         },
         5:{
            0:{
               "t":71,
               "r":100
            },
            1:{
               "t":13,
               "r":100
            },
            2:{
               "t":11,
               "r":100
            },
            3:{
               "t":1,
               "r":100
            },
            4:{
               "t":58,
               "r":100
            },
            5:{
               "t":61,
               "r":100
            },
            6:{
               "t":6,
               "r":100
            },
            7:{
               "t":7,
               "r":100
            },
            8:{
               "t":2,
               "r":100
            },
            9:{
               "t":34,
               "r":10
            }
         }
      };
      
      private var _172225125ChongZhuEqu:ItemSlotEquFunc;
      
      private var _112176qr1:Label;
      
      private var _core:Core = Core.getInstance();
      
      public var _QiLingPanel_Label1:Label;
      
      public var _QiLingPanel_Label5:Label;
      
      public var _QiLingPanel_Label32:Label;
      
      public var _QiLingPanel_Label34:Label;
      
      public var _QiLingPanel_Label35:Label;
      
      public var _QiLingPanel_Label36:Label;
      
      public var _QiLingPanel_Label37:Label;
      
      public var _QiLingPanel_Label38:Label;
      
      private var _579513480chongzhuBtn:BasicGlowButton;
      
      public var _QiLingPanel_Label33:Label;
      
      private var _106940718prop1:Label;
      
      private var _98630co2:Label;
      
      public var _autoMatchSlots:Object;
      
      private var _106940726prop9:Label;
      
      private var _103145575lock2:CheckBox;
      
      private var _1007683640pTitle:BasicTitleCanvas;
      
      private var _106940723prop6:Label;
      
      private var _1177195105itemInfo:Label;
      
      private var _112177qr2:Label;
      
      private var _106940720prop3:Label;
      
      private var _933747498tabBtnA0:BasicGlowButton;
      
      private var _2132104687iteminfo2:Label;
      
      private var _helpAlert:Alert;
      
      private var _1988465623ChongZhuMater:ItemSlotMaterial;
      
      private var _106940719prop2:Label;
      
      private var _1345005914czauto:CheckBox;
      
      private var _979804990prop10:Label;
      
      private var _221842405QiLingEqu:ItemSlotEquFunc;
      
      private var _2067262411showBag:BasicGlowButton;
      
      private var _103145573lock0:CheckBox;
      
      private var _106940724prop7:Label;
      
      private var _98597cn0:Label;
      
      private var _alert1:Alert;
      
      private var _alert2:Alert;
      
      private var _106940721prop4:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _979804989prop11:Label;
      
      private var _865347172needInfo:Label;
      
      private var _itemList:Object = {
         "val":new Number(-1),
         "type":new Number(-1),
         "idList":new Array()
      };
      
      public var equipBag:Object = {};
      
      private var _957127094qlauto:CheckBox;
      
      private var _3552076tabA:ViewStack;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _98598cn1:Label;
      
      private var _404500846qilingBtn:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _103145574lock1:CheckBox;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":600,
               "height":360,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"pTitle",
                  "events":{"creationComplete":"__pTitle_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":23,
                        "y":34,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA0",
                           "events":{"click":"__tabBtnA0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA1",
                           "events":{"click":"__tabBtnA1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":66
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_QiLingPanel_LinkButton1",
                  "events":{"click":"___QiLingPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textDecoration = "underline";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":34,
                        "width":101
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tabA",
                  "stylesFactory":function():void
                  {
                     this.top = "55";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "width":570,
                        "height":292,
                        "creationPolicy":"all",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "width":570,
                                 "height":292,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "28";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "width":260,
                                          "height":100,
                                          "x":19,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":10};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"qr0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":34,
                                                   "width":231
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"qr1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":51,
                                                   "width":231
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"qr2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":67,
                                                   "width":231
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
                                          "width":260,
                                          "height":124,
                                          "x":19,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "y":158,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":10};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop1",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":26,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop2",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":88.5,
                                                   "y":26,
                                                   "text":"",
                                                   "width":77
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop3",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":173.5,
                                                   "y":26,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop4",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":50,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop5",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":88.5,
                                                   "y":50,
                                                   "text":"",
                                                   "width":77
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop6",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":173.5,
                                                   "y":50,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop7",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":76,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop8",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":88.5,
                                                   "y":76,
                                                   "text":"",
                                                   "width":77
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop9",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":173.5,
                                                   "y":76,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop10",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":100,
                                                   "text":"",
                                                   "width":77.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop11",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":88.5,
                                                   "y":100,
                                                   "text":"",
                                                   "width":77
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"prop12",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":173.5,
                                                   "y":100,
                                                   "text":"",
                                                   "width":77.5
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
                                          "width":260,
                                          "height":265,
                                          "x":294,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "y":15,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label18",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label19",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":79,
                                                   "y":139,
                                                   "width":121
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"iteminfo2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"",
                                                   "x":79,
                                                   "y":113,
                                                   "width":121
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"QiLingEqu",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":63,
                                                   "movable":false,
                                                   "x":110
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"qilingBtn",
                                             "events":{"click":"__qilingBtn_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":105,
                                                   "width":50,
                                                   "y":182
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"qlauto",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":240,
                                                   "y":213,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotMaterial,
                                             "id":"QiLingMater",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":60,
                                                   "movable":false,
                                                   "x":166,
                                                   "visible":false
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
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "width":570,
                                 "height":292,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "28";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "width":260,
                                          "height":100,
                                          "x":19,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label21",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":10};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"cn0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":34,
                                                   "width":231,
                                                   "htmlText":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"cn1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":51,
                                                   "width":231,
                                                   "htmlText":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"cn2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":67,
                                                   "width":231,
                                                   "htmlText":""
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
                                          "width":260,
                                          "height":100,
                                          "x":19,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "y":158,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":97,
                                                   "y":10,
                                                   "width":63
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"co0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":34,
                                                   "width":231
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"co1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":51,
                                                   "width":231
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"co2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":19,
                                                   "y":67,
                                                   "width":231
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"lock0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":228,
                                                   "y":29,
                                                   "label":"",
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"lock1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":228,
                                                   "y":49,
                                                   "label":"",
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"lock2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":228,
                                                   "y":69,
                                                   "label":"",
                                                   "width":22,
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
                                          "styleName":"RoundedGradientBorder",
                                          "width":260,
                                          "height":265,
                                          "x":294,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "y":15,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label29",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":91,
                                                   "y":97
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"needInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":183};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"itemInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"",
                                                   "x":73,
                                                   "y":161,
                                                   "width":121
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label32",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":24,
                                                   "y":36,
                                                   "width":107
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label33",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":24,
                                                   "y":58,
                                                   "width":107
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label34",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":24,
                                                   "y":80,
                                                   "width":107
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label35",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":139,
                                                   "y":36,
                                                   "width":111
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label36",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":139,
                                                   "y":58,
                                                   "width":111
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label37",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":139,
                                                   "y":80,
                                                   "width":111
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"ChongZhuEqu",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":119,
                                                   "movable":false,
                                                   "x":111
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"chongzhuBtn",
                                             "events":{"click":"__chongzhuBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "y":205
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"czauto",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":240,
                                                   "y":230,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotMaterial,
                                             "id":"ChongZhuMater",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":137,
                                                   "movable":false,
                                                   "x":161,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_QiLingPanel_Label38",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":24,
                                                   "y":14,
                                                   "width":236
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
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "width":570,
                                 "height":292,
                                 "x":0,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off"
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
                        "x":582,
                        "y":117,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               })]
            };
         }
      });
      
      private var _106940725prop8:Label;
      
      private var QL_LOCK_NUM:Number = 5;
      
      public function QiLingPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 360;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         QiLingPanel._watcherSetupUtil = param1;
      }
      
      public function __tabBtnA1_click(param1:MouseEvent) : void
      {
         tabBtnAClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get iteminfo2() : Label
      {
         return this._2132104687iteminfo2;
      }
      
      private function getQiLingIndex(param1:Number, param2:Number) : Number
      {
         if(param1 == GamePredef.ITEM_KIND_MAINHAND || param1 == GamePredef.ITEM_KIND_SUBHAND)
         {
            return 0;
         }
         if(param1 == GamePredef.ITEM_KIND_DEFENCE)
         {
            if(param2 == GamePredef.ITEM_TYPE_HAT || param2 == GamePredef.ITEM_TYPE_CLOTHES)
            {
               return 3;
            }
            if(param2 == GamePredef.ITEM_TYPE_TROUSERS || param2 == GamePredef.ITEM_TYPE_BELT)
            {
               return 4;
            }
            if(param2 == GamePredef.ITEM_TYPE_SHOE || param2 == GamePredef.ITEM_TYPE_SHOULDER)
            {
               return 5;
            }
         }
         else if(param1 == GamePredef.ITEM_KIND_JEWELRY)
         {
            if(param2 == GamePredef.ITEM_TYPE_NECKLACE || param2 == GamePredef.ITEM_TYPE_RING)
            {
               return 1;
            }
            if(param2 == GamePredef.ITEM_TYPE_JEWELRY1 || param2 == GamePredef.ITEM_TYPE_JEWELRY2)
            {
               return 2;
            }
         }
         return -1;
      }
      
      [Bindable(event="propertyChange")]
      public function get QiLingEqu() : ItemSlotEquFunc
      {
         return this._221842405QiLingEqu;
      }
      
      public function __chongzhuBtn_click(param1:MouseEvent) : void
      {
         chongZhuProp();
      }
      
      public function set iteminfo2(param1:Label) : void
      {
         var _loc2_:Object = this._2132104687iteminfo2;
         if(_loc2_ !== param1)
         {
            this._2132104687iteminfo2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iteminfo2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ChongZhuMater() : ItemSlotMaterial
      {
         return this._1988465623ChongZhuMater;
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qr2() : Label
      {
         return this._112177qr2;
      }
      
      public function __showBag_click(param1:MouseEvent) : void
      {
         changeBagVis();
      }
      
      public function set QiLingEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._221842405QiLingEqu;
         if(_loc2_ !== param1)
         {
            this._221842405QiLingEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"QiLingEqu",_loc2_,param1));
         }
      }
      
      public function onGetChongZhuProp(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         chongzhuBtn.enabled = true;
         this["cn0"].htmlText = "";
         this["cn1"].htmlText = "";
         this["cn2"].htmlText = "";
         if(param1)
         {
            czflag = param1;
            _loc3_ = 0;
            while(_loc3_ < 3)
            {
               _loc4_ = param1[_loc3_]["v"] / param1[_loc3_]["max"];
               _loc5_ = "#FFFFFF";
               _loc6_ = 0;
               while(_loc6_ < GamePredef.QILING_COLOR.length)
               {
                  if(_loc4_ >= GamePredef.QILING_COLOR[_loc6_] / 100)
                  {
                     _loc5_ = GamePredef.QILING_COLOR_CODE[_loc6_];
                     break;
                  }
                  _loc6_++;
               }
               _loc7_ = "";
               if(param1[_loc3_]["v"] == param1[_loc3_]["max"])
               {
                  _loc7_ = Language.QILING_PANEL[4];
               }
               if(GamePredef.PROP_SUFFIX[param1[_loc3_]["t"]])
               {
                  if(GamePredef.PROP_SUFFIX[param1[_loc3_]["t"]] == 1)
                  {
                     this["co" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + Math.ceil(param1[_loc3_]["v"]) + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 + "-" + param1[_loc3_]["max"] + ")";
                  }
                  else if(GamePredef.PROP_SUFFIX[param1[_loc3_]["t"]] == 2)
                  {
                     this["co" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + Number(param1[_loc3_]["v"]).toFixed(3) + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 + "-" + param1[_loc3_]["max"] + ")";
                  }
                  else
                  {
                     this["co" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + Number(param1[_loc3_]["v"] * 100).toFixed(3) + "%" + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 * 100 + "%-" + param1[_loc3_]["max"] * 100 + "%" + ")";
                  }
               }
               else
               {
                  this["co" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + param1[_loc3_]["v"] + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 + "-" + param1[_loc3_]["max"] + ")";
               }
               _loc3_++;
            }
         }
         else
         {
            this["co0"].htmlText = Language.QILING_PANEL[5];
            this["co1"].htmlText = Language.QILING_PANEL[5];
            this["co2"].htmlText = Language.QILING_PANEL[5];
            czflag = {};
         }
         var _loc2_:int = int(_core.getItemNum(29,GamePredef.QI_LING_ITEM).num);
         iteminfo2.text = Language.QILING_PANEL[3] + _loc2_;
         itemInfo.text = Language.QILING_PANEL[3] + _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get qr1() : Label
      {
         return this._112176qr1;
      }
      
      private function _QiLingPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.QILING_PANEL[0];
         _loc1_ = Language.QILING_PANEL[23];
         _loc1_ = Language.QILING_PANEL[24];
         _loc1_ = Language.PANEL_PETGUARD[19];
         _loc1_ = Language.QILING_PANEL[6];
         _loc1_ = Language.QILING_PANEL[7];
         _loc1_ = Language.QILING_PANEL[8];
         _loc1_ = Language.QILING_PANEL[9];
         _loc1_ = Language.QILING_PANEL[23];
         _loc1_ = Language.QILING_PANEL[10];
         _loc1_ = Language.QILING_PANEL[11];
         _loc1_ = Language.QILING_PANEL[12];
         _loc1_ = Language.QILING_PANEL[13];
         _loc1_ = Language.QILING_PANEL[14];
         _loc1_ = Language.QILING_PANEL[15];
         _loc1_ = Language.QILING_PANEL[16];
         _loc1_ = Language.QILING_PANEL[17];
         _loc1_ = Language.QILING_PANEL[18];
         _loc1_ = Language.QILING_PANEL[19];
         _loc1_ = Language.QILING_PANEL[20];
         _loc1_ = Language.QILING_PANEL[24];
         _loc1_ = Language.QILING_PANEL[10];
         _loc1_ = Language.QILING_PANEL[21];
         _loc1_ = Language.EQUIPTFUNCPANEL_S[97];
      }
      
      [Bindable(event="propertyChange")]
      public function get qr0() : Label
      {
         return this._112175qr0;
      }
      
      private function _updateChongZhuSlot() : void
      {
         if(getEquiptIndex1() != -1)
         {
            _core.remote.call("getChongZhuProp",new Responder(onGetChongZhuProp),ChongZhuEqu.slotData.id);
            chongzhuBtn.enabled = false;
         }
         else
         {
            ChongZhuEqu.clean();
         }
      }
      
      public function set cn1(param1:Label) : void
      {
         var _loc2_:Object = this._98598cn1;
         if(_loc2_ !== param1)
         {
            this._98598cn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cn1",_loc2_,param1));
         }
      }
      
      public function set cn2(param1:Label) : void
      {
         var _loc2_:Object = this._98599cn2;
         if(_loc2_ !== param1)
         {
            this._98599cn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cn2",_loc2_,param1));
         }
      }
      
      public function set ChongZhuMater(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = this._1988465623ChongZhuMater;
         if(_loc2_ !== param1)
         {
            this._1988465623ChongZhuMater = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ChongZhuMater",_loc2_,param1));
         }
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function set cn0(param1:Label) : void
      {
         var _loc2_:Object = this._98597cn0;
         if(_loc2_ !== param1)
         {
            this._98597cn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cn0",_loc2_,param1));
         }
      }
      
      public function set prop1(param1:Label) : void
      {
         var _loc2_:Object = this._106940718prop1;
         if(_loc2_ !== param1)
         {
            this._106940718prop1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get QiLingMater() : ItemSlotMaterial
      {
         return this._1564727391QiLingMater;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInfo() : Label
      {
         return this._1177195105itemInfo;
      }
      
      public function set prop4(param1:Label) : void
      {
         var _loc2_:Object = this._106940721prop4;
         if(_loc2_ !== param1)
         {
            this._106940721prop4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ChongZhuEqu() : ItemSlotEquFunc
      {
         return this._172225125ChongZhuEqu;
      }
      
      [Bindable(event="propertyChange")]
      public function get lock2() : CheckBox
      {
         return this._103145575lock2;
      }
      
      public function set prop7(param1:Label) : void
      {
         var _loc2_:Object = this._106940724prop7;
         if(_loc2_ !== param1)
         {
            this._106940724prop7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop7",_loc2_,param1));
         }
      }
      
      public function set qr2(param1:Label) : void
      {
         var _loc2_:Object = this._112177qr2;
         if(_loc2_ !== param1)
         {
            this._112177qr2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qr2",_loc2_,param1));
         }
      }
      
      public function set prop8(param1:Label) : void
      {
         var _loc2_:Object = this._106940725prop8;
         if(_loc2_ !== param1)
         {
            this._106940725prop8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lock0() : CheckBox
      {
         return this._103145573lock0;
      }
      
      private function updateEquipt(param1:Object, param2:Number) : void
      {
         if(param2 == 0)
         {
            QiLingEqu.slotData = param1;
            QiLingEqu.type = param1.type;
            QiLingEqu.giid = param1.itemId;
            QiLingEqu.stackNum = param1.stackNum;
         }
         else if(param2 == 1)
         {
            ChongZhuEqu.slotData = param1;
            ChongZhuEqu.type = param1.type;
            ChongZhuEqu.giid = param1.itemId;
            ChongZhuEqu.stackNum = param1.stackNum;
         }
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      [Bindable(event="propertyChange")]
      public function get lock1() : CheckBox
      {
         return this._103145574lock1;
      }
      
      public function set prop2(param1:Label) : void
      {
         var _loc2_:Object = this._106940719prop2;
         if(_loc2_ !== param1)
         {
            this._106940719prop2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop2",_loc2_,param1));
         }
      }
      
      public function set prop3(param1:Label) : void
      {
         var _loc2_:Object = this._106940720prop3;
         if(_loc2_ !== param1)
         {
            this._106940720prop3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop3",_loc2_,param1));
         }
      }
      
      public function set prop9(param1:Label) : void
      {
         var _loc2_:Object = this._106940726prop9;
         if(_loc2_ !== param1)
         {
            this._106940726prop9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop9",_loc2_,param1));
         }
      }
      
      public function onChongZhuRes(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:* = undefined;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         if(param1)
         {
            if(param1["use"])
            {
               _loc3_ = param1["use"];
               _loc4_ = lock0.selected ? "lock" : "";
               _loc5_ = lock1.selected ? "lock" : "";
               _loc6_ = lock2.selected ? "lock" : "";
               if(_loc4_ != "lock" && _loc3_[0]["v"] == _loc3_[0]["max"])
               {
                  newPropAlert();
               }
               else if(_loc5_ != "lock" && _loc3_[1]["v"] == _loc3_[1]["max"])
               {
                  newPropAlert();
               }
               else if(_loc6_ != "lock" && _loc3_[2]["v"] == _loc3_[2]["max"])
               {
                  newPropAlert();
               }
            }
         }
         chongzhuBtn.enabled = true;
         var _loc2_:int = int(_core.getItemNum(29,GamePredef.QI_LING_ITEM).num);
         iteminfo2.text = Language.QILING_PANEL[3] + _loc2_;
         itemInfo.text = Language.QILING_PANEL[3] + _loc2_;
         if(param1["cz"])
         {
            _loc3_ = param1["cz"];
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               _loc8_ = _loc3_[_loc7_]["v"] / _loc3_[_loc7_]["max"];
               _loc9_ = "#FFFFFF";
               _loc10_ = 0;
               while(_loc10_ < GamePredef.QILING_COLOR.length)
               {
                  if(_loc8_ >= GamePredef.QILING_COLOR[_loc10_] / 100)
                  {
                     _loc9_ = GamePredef.QILING_COLOR_CODE[_loc10_];
                     break;
                  }
                  _loc10_++;
               }
               _loc11_ = "";
               if(_loc3_[_loc7_]["v"] == _loc3_[_loc7_]["max"])
               {
                  _loc11_ = Language.QILING_PANEL[4];
               }
               if(GamePredef.PROP_SUFFIX[_loc3_[_loc7_]["t"]])
               {
                  if(GamePredef.PROP_SUFFIX[_loc3_[_loc7_]["t"]] == 1)
                  {
                     this["cn" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + Math.ceil(_loc3_[_loc7_]["v"]) + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 + "-" + _loc3_[_loc7_]["max"] + ")";
                  }
                  else if(GamePredef.PROP_SUFFIX[_loc3_[_loc7_]["t"]] == 2)
                  {
                     this["cn" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + Number(_loc3_[_loc7_]["v"]).toFixed(3) + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 + "-" + _loc3_[_loc7_]["max"] + ")";
                  }
                  else
                  {
                     this["cn" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + Number(_loc3_[_loc7_]["v"] * 100).toFixed(3) + "%" + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] * 100 / 10 + "%-" + _loc3_[_loc7_]["max"] * 100 + "%" + ")";
                  }
               }
               else
               {
                  this["cn" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + _loc3_[_loc7_]["v"] + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 + "-" + _loc3_[_loc7_]["max"] + ")";
               }
               _loc7_++;
            }
         }
         if(param1["use"])
         {
            _loc3_ = param1["use"];
            czflag = _loc3_;
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               _loc8_ = _loc3_[_loc7_]["v"] / _loc3_[_loc7_]["max"];
               _loc9_ = "#FFFFFF";
               _loc10_ = 0;
               while(_loc10_ < GamePredef.QILING_COLOR.length)
               {
                  if(_loc8_ >= GamePredef.QILING_COLOR[_loc10_] / 100)
                  {
                     _loc9_ = GamePredef.QILING_COLOR_CODE[_loc10_];
                     break;
                  }
                  _loc10_++;
               }
               _loc11_ = "";
               if(_loc3_[_loc7_]["v"] == _loc3_[_loc7_]["max"])
               {
                  _loc11_ = Language.QILING_PANEL[4];
               }
               if(GamePredef.PROP_SUFFIX[_loc3_[_loc7_]["t"]])
               {
                  if(GamePredef.PROP_SUFFIX[_loc3_[_loc7_]["t"]] == 1)
                  {
                     this["co" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + Math.ceil(_loc3_[_loc7_]["v"]) + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 + "-" + _loc3_[_loc7_]["max"] + ")";
                  }
                  else if(GamePredef.PROP_SUFFIX[_loc3_[_loc7_]["t"]] == 2)
                  {
                     this["co" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + Number(_loc3_[_loc7_]["v"]).toFixed(3) + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 + "-" + _loc3_[_loc7_]["max"] + ")";
                  }
                  else
                  {
                     this["co" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + Number(_loc3_[_loc7_]["v"] * 100).toFixed(3) + "%" + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 * 100 + "%-" + _loc3_[_loc7_]["max"] * 100 + "%" + ")";
                  }
               }
               else
               {
                  this["co" + _loc7_].htmlText = Language.TIP_QILING_H[_loc3_[_loc7_]["t"]] + "  <font color=\'" + _loc9_ + "\'>" + _loc3_[_loc7_]["v"] + _loc11_ + "</font> (" + _loc3_[_loc7_]["max"] / 10 + "-" + _loc3_[_loc7_]["max"] + ")";
               }
               _loc7_++;
            }
         }
      }
      
      public function set qr0(param1:Label) : void
      {
         var _loc2_:Object = this._112175qr0;
         if(_loc2_ !== param1)
         {
            this._112175qr0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qr0",_loc2_,param1));
         }
      }
      
      public function onQiLingRes(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         qilingBtn.enabled = true;
         var _loc2_:int = int(_core.getItemNum(29,GamePredef.QI_LING_ITEM).num);
         iteminfo2.text = Language.QILING_PANEL[3] + _loc2_;
         itemInfo.text = Language.QILING_PANEL[3] + _loc2_;
         if(param1)
         {
            qlflag = param1;
            _loc3_ = 0;
            while(_loc3_ < 3)
            {
               _loc4_ = param1[_loc3_]["v"] / param1[_loc3_]["max"];
               _loc5_ = "#FFFFFF";
               _loc6_ = 0;
               while(_loc6_ < GamePredef.QILING_COLOR.length)
               {
                  if(_loc4_ >= GamePredef.QILING_COLOR[_loc6_] / 100)
                  {
                     _loc5_ = GamePredef.QILING_COLOR_CODE[_loc6_];
                     break;
                  }
                  _loc6_++;
               }
               _loc7_ = "";
               if(param1[_loc3_]["v"] == param1[_loc3_]["max"])
               {
                  _loc7_ = Language.QILING_PANEL[4];
               }
               if(GamePredef.PROP_SUFFIX[param1[_loc3_]["t"]])
               {
                  if(GamePredef.PROP_SUFFIX[param1[_loc3_]["t"]] == 1)
                  {
                     this["qr" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + Math.ceil(param1[_loc3_]["v"]) + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 + "-" + param1[_loc3_]["max"] + ")";
                  }
                  else if(GamePredef.PROP_SUFFIX[param1[_loc3_]["t"]] == 2)
                  {
                     this["qr" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + Number(param1[_loc3_]["v"]).toFixed(3) + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 + "-" + param1[_loc3_]["max"] + ")";
                  }
                  else
                  {
                     this["qr" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + Number(param1[_loc3_]["v"] * 100).toFixed(3) + "%" + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 * 100 + "%-" + param1[_loc3_]["max"] * 100 + "%" + ")";
                  }
               }
               else
               {
                  this["qr" + _loc3_].htmlText = Language.TIP_QILING_H[param1[_loc3_]["t"]] + "  <font color=\'" + _loc5_ + "\'>" + param1[_loc3_]["v"] + _loc7_ + "</font> (" + param1[_loc3_]["max"] / 10 + "-" + param1[_loc3_]["max"] + ")";
               }
               _loc3_++;
            }
         }
         else
         {
            qlflag = {};
         }
      }
      
      private function changeQiLingEqu(param1:Event) : void
      {
         _updateQiLingSlot();
      }
      
      [Bindable(event="propertyChange")]
      public function get needInfo() : Label
      {
         return this._865347172needInfo;
      }
      
      public function set co0(param1:Label) : void
      {
         var _loc2_:Object = this._98628co0;
         if(_loc2_ !== param1)
         {
            this._98628co0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"co0",_loc2_,param1));
         }
      }
      
      public function set co1(param1:Label) : void
      {
         var _loc2_:Object = this._98629co1;
         if(_loc2_ !== param1)
         {
            this._98629co1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"co1",_loc2_,param1));
         }
      }
      
      public function set qr1(param1:Label) : void
      {
         var _loc2_:Object = this._112176qr1;
         if(_loc2_ !== param1)
         {
            this._112176qr1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qr1",_loc2_,param1));
         }
      }
      
      public function set prop5(param1:Label) : void
      {
         var _loc2_:Object = this._106940722prop5;
         if(_loc2_ !== param1)
         {
            this._106940722prop5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop5",_loc2_,param1));
         }
      }
      
      public function set qlauto(param1:CheckBox) : void
      {
         var _loc2_:Object = this._957127094qlauto;
         if(_loc2_ !== param1)
         {
            this._957127094qlauto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qlauto",_loc2_,param1));
         }
      }
      
      public function set co2(param1:Label) : void
      {
         var _loc2_:Object = this._98630co2;
         if(_loc2_ !== param1)
         {
            this._98630co2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"co2",_loc2_,param1));
         }
      }
      
      public function set tabA(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3552076tabA;
         if(_loc2_ !== param1)
         {
            this._3552076tabA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabA",_loc2_,param1));
         }
      }
      
      public function set prop6(param1:Label) : void
      {
         var _loc2_:Object = this._106940723prop6;
         if(_loc2_ !== param1)
         {
            this._106940723prop6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get czauto() : CheckBox
      {
         return this._1345005914czauto;
      }
      
      internal function qiLingProp() : *
      {
         var goldLockFlag:Boolean;
         var bagPanel:BagPanel;
         var auto:String = null;
         var gfunc:Function = null;
         var i:* = undefined;
         var handler:Function = null;
         var str:String = null;
         if(QiLingEqu.slotData == null)
         {
            return;
         }
         bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         goldLockFlag = bagPanel.goldLockFlag;
         if(goldLockFlag || !bagPanel)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
            return;
         }
         auto = qlauto.selected ? "auto" : "";
         if(Boolean(qlflag) && Boolean(qlflag["0"]))
         {
            i = 0;
            while(i < 3)
            {
               if(qlflag[i]["v"] == qlflag[i]["max"])
               {
                  handler = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("updateQiLingProp",new Responder(onQilingBtnState),QiLingEqu.slotData.id,auto);
                        qilingBtn.enabled = false;
                        return;
                     }
                  };
                  if(_alert)
                  {
                     PopUpManager.removePopUp(_alert);
                     _alert = null;
                  }
                  str = Language.QILING_PANEL[1];
                  _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
                  return;
               }
               i++;
            }
         }
         _core.remote.call("updateQiLingProp",new Responder(onQilingBtnState),QiLingEqu.slotData.id,auto);
         qilingBtn.enabled = false;
      }
      
      private function changeChongZhuEqu(param1:Event) : void
      {
         _updateChongZhuSlot();
      }
      
      [Bindable(event="propertyChange")]
      public function get qlauto() : CheckBox
      {
         return this._957127094qlauto;
      }
      
      public function set QiLingMater(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = this._1564727391QiLingMater;
         if(_loc2_ !== param1)
         {
            this._1564727391QiLingMater = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"QiLingMater",_loc2_,param1));
         }
      }
      
      private function lockEventChange(param1:Event) : void
      {
         var _loc2_:Number = 6;
         if(lock0.selected)
         {
            _loc2_ += QL_LOCK_NUM;
         }
         if(lock1.selected)
         {
            _loc2_ += QL_LOCK_NUM;
         }
         if(lock2.selected)
         {
            _loc2_ += QL_LOCK_NUM;
         }
         needInfo.text = Language.QILING_PANEL[14] + _loc2_;
      }
      
      private function resetItemList() : void
      {
      }
      
      public function set itemInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1177195105itemInfo;
         if(_loc2_ !== param1)
         {
            this._1177195105itemInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop11() : Label
      {
         return this._979804989prop11;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop12() : Label
      {
         return this._979804988prop12;
      }
      
      private function changeBagVis() : void
      {
         if(!equipBagAdded)
         {
            equipBag = null;
            equipBag = new EquipFuncBag();
            equipBag.x = 605;
            equipBag.y = 34;
            width = 850;
            addChild(equipBag as EquipFuncBag);
            equipBag.eFuncPanel = this;
            equipBagAdded = true;
            showBag.styleName = "EquipBagLeft";
         }
         else if(equipBag.visible)
         {
            equipBag.visible = false;
            showBag.styleName = "EquipBagRight";
            width = 600;
         }
         else
         {
            equipBag.visible = true;
            width = 850;
            showBag.styleName = "EquipBagLeft";
         }
         if(equipBag.visible)
         {
            _itemList.type = 1;
            _itemList.idList = [GamePredef.QILING_ITEMID];
            equipBag.showItem(99,_itemList);
         }
      }
      
      public function set ChongZhuEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._172225125ChongZhuEqu;
         if(_loc2_ !== param1)
         {
            this._172225125ChongZhuEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ChongZhuEqu",_loc2_,param1));
         }
      }
      
      public function ___QiLingPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      public function __tabBtnA0_click(param1:MouseEvent) : void
      {
         tabBtnAClick(0);
      }
      
      public function set needInfo(param1:Label) : void
      {
         var _loc2_:Object = this._865347172needInfo;
         if(_loc2_ !== param1)
         {
            this._865347172needInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needInfo",_loc2_,param1));
         }
      }
      
      public function set lock0(param1:CheckBox) : void
      {
         var _loc2_:Object = this._103145573lock0;
         if(_loc2_ !== param1)
         {
            this._103145573lock0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock0",_loc2_,param1));
         }
      }
      
      public function set lock2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._103145575lock2;
         if(_loc2_ !== param1)
         {
            this._103145575lock2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA1() : BasicGlowButton
      {
         return this._933747497tabBtnA1;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop10() : Label
      {
         return this._979804990prop10;
      }
      
      public function set lock1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._103145574lock1;
         if(_loc2_ !== param1)
         {
            this._103145574lock1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock1",_loc2_,param1));
         }
      }
      
      public function set qilingBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._404500846qilingBtn;
         if(_loc2_ !== param1)
         {
            this._404500846qilingBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qilingBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA0() : BasicGlowButton
      {
         return this._933747498tabBtnA0;
      }
      
      private function _QiLingPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTitle.text = param1;
         },"pTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA0.label = param1;
         },"tabBtnA0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA1.label = param1;
         },"tabBtnA1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_LinkButton1.label = param1;
         },"_QiLingPanel_LinkButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label1.text = param1;
         },"_QiLingPanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label5.text = param1;
         },"_QiLingPanel_Label5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label18.text = param1;
         },"_QiLingPanel_Label18.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label19.text = param1;
         },"_QiLingPanel_Label19.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            qilingBtn.label = param1;
         },"qilingBtn.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            qlauto.label = param1;
         },"qlauto.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label21.text = param1;
         },"_QiLingPanel_Label21.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label25.text = param1;
         },"_QiLingPanel_Label25.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label29.text = param1;
         },"_QiLingPanel_Label29.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            needInfo.text = param1;
         },"needInfo.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label32.text = param1;
         },"_QiLingPanel_Label32.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label33.text = param1;
         },"_QiLingPanel_Label33.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label34.text = param1;
         },"_QiLingPanel_Label34.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label35.text = param1;
         },"_QiLingPanel_Label35.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label36.text = param1;
         },"_QiLingPanel_Label36.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label37.text = param1;
         },"_QiLingPanel_Label37.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chongzhuBtn.label = param1;
         },"chongzhuBtn.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            czauto.label = param1;
         },"czauto.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QILING_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QiLingPanel_Label38.text = param1;
         },"_QiLingPanel_Label38.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_S[97];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBag.toolTip = param1;
         },"showBag.toolTip");
         result[23] = binding;
         return result;
      }
      
      public function __pTitle_creationComplete(param1:FlexEvent) : void
      {
         tabBtnAClick(0);
      }
      
      public function set chongzhuBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._579513480chongzhuBtn;
         if(_loc2_ !== param1)
         {
            this._579513480chongzhuBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chongzhuBtn",_loc2_,param1));
         }
      }
      
      internal function initLockEvent() : *
      {
         if(Boolean(lock0) && !lock0.hasEventListener(Event.CHANGE))
         {
            lock0.addEventListener(Event.CHANGE,lockEventChange);
         }
         if(Boolean(lock1) && !lock1.hasEventListener(Event.CHANGE))
         {
            lock1.addEventListener(Event.CHANGE,lockEventChange);
         }
         if(Boolean(lock2) && !lock2.hasEventListener(Event.CHANGE))
         {
            lock2.addEventListener(Event.CHANGE,lockEventChange);
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function onGetQiLingProp(param1:Object) : void
      {
         var _loc4_:* = undefined;
         if(param1)
         {
            onQiLingRes(param1);
         }
         else
         {
            qilingBtn.enabled = true;
            this["qr0"].htmlText = Language.QILING_PANEL[5];
            this["qr1"].htmlText = Language.QILING_PANEL[5];
            this["qr2"].htmlText = Language.QILING_PANEL[5];
         }
         var _loc2_:Number = getEquiptIndex();
         if(_loc2_ != -1)
         {
            _loc4_ = 1;
            while(_loc4_ <= 12)
            {
               this["prop" + _loc4_].text = "";
               _loc4_++;
            }
            if(qiLingPlan[_loc2_])
            {
               _loc4_ = 1;
               while(_loc4_ <= 12)
               {
                  if(qiLingPlan[_loc2_][_loc4_ - 1])
                  {
                     this["prop" + _loc4_].text = Language.TIP_QILING_H[qiLingPlan[_loc2_][_loc4_ - 1]["t"]];
                  }
                  _loc4_++;
               }
            }
         }
         else
         {
            _loc4_ = 1;
            while(_loc4_ <= 12)
            {
               this["prop" + _loc4_].text = "";
               _loc4_++;
            }
         }
         var _loc3_:int = int(_core.getItemNum(29,GamePredef.QI_LING_ITEM).num);
         iteminfo2.text = Language.QILING_PANEL[3] + _loc3_;
         itemInfo.text = Language.QILING_PANEL[3] + _loc3_;
      }
      
      internal function tabBtnAClick(param1:int) : *
      {
         var _loc3_:Number = NaN;
         var _loc2_:int = tabA ? tabA.selectedIndex : 0;
         this["tabBtnA" + _loc2_].selected = false;
         tabA.selectedIndex = param1;
         this["tabBtnA" + param1].selected = true;
         resetItemList();
         switch(param1)
         {
            case 0:
               _updateQiLingSlot();
               _itemList.type = 1;
               _itemList.idList = [GamePredef.QILING_ITEMID];
               QiLingEqu && QiLingEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeQiLingEqu);
               break;
            case 1:
               _updateChongZhuSlot();
               initLockEvent();
               _itemList.type = 1;
               _itemList.idList = [GamePredef.QILING_ITEMID];
               ChongZhuEqu && ChongZhuEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeChongZhuEqu);
               _loc3_ = 6;
               if(lock0.selected)
               {
                  _loc3_ += QL_LOCK_NUM;
               }
               if(lock1.selected)
               {
                  _loc3_ += QL_LOCK_NUM;
               }
               if(lock2.selected)
               {
                  _loc3_ += QL_LOCK_NUM;
               }
               needInfo.text = Language.QILING_PANEL[14] + _loc3_;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cn1() : Label
      {
         return this._98598cn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cn2() : Label
      {
         return this._98599cn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop1() : Label
      {
         return this._106940718prop1;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop6() : Label
      {
         return this._106940723prop6;
      }
      
      [Bindable(event="propertyChange")]
      public function get cn0() : Label
      {
         return this._98597cn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop8() : Label
      {
         return this._106940725prop8;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop2() : Label
      {
         return this._106940719prop2;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop3() : Label
      {
         return this._106940720prop3;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop4() : Label
      {
         return this._106940721prop4;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop5() : Label
      {
         return this._106940722prop5;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop7() : Label
      {
         return this._106940724prop7;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop9() : Label
      {
         return this._106940726prop9;
      }
      
      [Bindable(event="propertyChange")]
      public function get co0() : Label
      {
         return this._98628co0;
      }
      
      [Bindable(event="propertyChange")]
      public function get co1() : Label
      {
         return this._98629co1;
      }
      
      public function set czauto(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1345005914czauto;
         if(_loc2_ !== param1)
         {
            this._1345005914czauto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"czauto",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get co2() : Label
      {
         return this._98630co2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabA() : ViewStack
      {
         return this._3552076tabA;
      }
      
      private function _updateQiLingSlot() : void
      {
         if(getEquiptIndex() != -1)
         {
            _core.remote.call("getQiLingProp",new Responder(onGetQiLingProp),QiLingEqu.slotData.id);
            qilingBtn.enabled = false;
         }
         else
         {
            QiLingEqu.clean();
         }
      }
      
      public function funcBagClickHandler(param1:Event) : void
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:ItemSlot = null;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         setAutoMatchSlots();
         var _loc2_:Object = param1.currentTarget.slotData;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Number = Number(_loc2_.sid);
         var _loc4_:Object = _core.getTemplateData(_loc2_.type,_loc2_.itemId);
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:int = tabA ? tabA.selectedIndex : 0;
         if(_loc5_ == 2)
         {
            return;
         }
         var _loc6_:Array = _autoMatchSlots.inputSlots;
         if(Boolean(_autoMatchSlots.hasReq) && Boolean(_autoMatchSlots.reqSlots))
         {
            _loc7_ = _autoMatchSlots.reqSlots;
            for(_loc8_ in _loc7_)
            {
               if(_loc2_.type == _loc7_[_loc8_].type && _loc4_.id == _loc7_[_loc8_].id)
               {
                  _loc9_ = _autoMatchSlots.inputSlots[_loc8_];
                  _loc9_.slotData = _loc2_;
                  _loc9_.type = _loc2_.type;
                  _loc9_.giid = _loc2_.itemId;
                  _loc9_.stackNum = _loc2_.stackNum;
               }
            }
         }
         else
         {
            _loc7_ = _autoMatchSlots.reqSlots;
            if(!_loc7_)
            {
               _loc9_ = _autoMatchSlots.inputSlots[0];
               _loc9_.slotData = _loc2_;
               _loc9_.type = _loc2_.type;
               _loc9_.giid = _loc2_.itemId;
               _loc9_.stackNum = _loc2_.stackNum;
            }
            else
            {
               for(_loc8_ in _loc7_)
               {
                  _loc10_ = true;
                  for(_loc11_ in _loc7_[_loc8_])
                  {
                     if(_loc11_ == "itemType")
                     {
                        if(_loc2_.type != _loc7_[_loc8_][_loc11_])
                        {
                           _loc10_ = false;
                           break;
                        }
                     }
                     else if(!_loc4_.hasOwnProperty(_loc11_) || _loc4_[_loc11_] != _loc7_[_loc8_][_loc11_])
                     {
                        _loc10_ = false;
                        break;
                     }
                  }
                  if(_loc10_)
                  {
                     if(Boolean(_autoMatchSlots.orderPut) && Boolean(_autoMatchSlots.menuArr) && _loc2_.type == _autoMatchSlots.orderType)
                     {
                        for(_loc8_ in _autoMatchSlots.menuArr)
                        {
                           _autoMatchSlots.menuArr[_loc8_].data.sData = _loc2_;
                        }
                        menuPop(_autoMatchSlots.menuArr);
                     }
                     else if(_autoMatchSlots.inputSlots[_loc8_])
                     {
                        _loc9_ = _autoMatchSlots.inputSlots[_loc8_];
                        _loc9_.slotData = _loc2_;
                        _loc9_.type = _loc2_.type;
                        _loc9_.giid = _loc2_.itemId;
                        _loc9_.stackNum = _loc2_.stackNum;
                     }
                     break;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qilingBtn() : BasicGlowButton
      {
         return this._404500846qilingBtn;
      }
      
      private function getEquiptIndex1() : *
      {
         var _loc1_:Object = null;
         var _loc2_:* = undefined;
         if(ChongZhuEqu.slotData)
         {
            _loc1_ = _core.getTemplateData(ChongZhuEqu.slotData.type,ChongZhuEqu.slotData.itemId,false);
            if(_loc1_)
            {
               if(ToolKit.isSmallOrEqual(_loc1_["reqLevel"],150))
               {
                  _core.sysMsg(Language.QILING_PANEL[25]);
                  return -1;
               }
               _loc2_ = getQiLingIndex(Number(_loc1_["kind"]),Number(_loc1_["type"]));
               if(_loc2_ != -1)
               {
                  return _loc2_;
               }
               if(_loc2_ == -1)
               {
                  _core.sysMsg(Language.QILING_PANEL[25]);
                  return -1;
               }
            }
         }
         return -1;
      }
      
      public function setAutoMatchSlots() : void
      {
         var _loc1_:int = tabA.selectedIndex;
         _autoMatchSlots = new Object();
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         switch(_loc1_)
         {
            case 0:
               _loc2_.push(QiLingEqu);
               _loc2_.push(QiLingMater);
               _loc3_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc3_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_QILINGSTORE
               });
               break;
            case 1:
               _loc2_.push(ChongZhuEqu);
               _loc2_.push(ChongZhuMater);
               _loc3_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc3_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_QILINGSTORE
               });
         }
         _autoMatchSlots.reqSlots = _loc3_;
         _autoMatchSlots.inputSlots = _loc2_;
      }
      
      public function onQilingBtnState(param1:Object) : void
      {
         qilingBtn.enabled = true;
      }
      
      public function set prop10(param1:Label) : void
      {
         var _loc2_:Object = this._979804990prop10;
         if(_loc2_ !== param1)
         {
            this._979804990prop10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop10",_loc2_,param1));
         }
      }
      
      public function set prop11(param1:Label) : void
      {
         var _loc2_:Object = this._979804989prop11;
         if(_loc2_ !== param1)
         {
            this._979804989prop11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chongzhuBtn() : BasicGlowButton
      {
         return this._579513480chongzhuBtn;
      }
      
      public function set prop12(param1:Label) : void
      {
         var _loc2_:Object = this._979804988prop12;
         if(_loc2_ !== param1)
         {
            this._979804988prop12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop12",_loc2_,param1));
         }
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.QILING_PANEL[22].toString();
         _helpAlert = Alert.show(_loc1_,Language.PANEL_PETGUARD[19].toString(),Alert.YES,null,null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:QiLingPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _QiLingPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_QiLingPanelWatcherSetupUtil");
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
      
      public function __qilingBtn_click(param1:MouseEvent) : void
      {
         qiLingProp();
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:ItemSlot = param1.item.data.slot;
         var _loc3_:Object = param1.item.data.sData;
         _loc2_.slotData = _loc3_;
         _loc2_.type = _loc3_.type;
         _loc2_.giid = _loc3_.itemId;
         _loc2_.stackNum = _loc3_.stackNum;
         Menu(param1.target).removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function set showBag(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2067262411showBag;
         if(_loc2_ !== param1)
         {
            this._2067262411showBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBag",_loc2_,param1));
         }
      }
      
      public function set pTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1007683640pTitle;
         if(_loc2_ !== param1)
         {
            this._1007683640pTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pTitle",_loc2_,param1));
         }
      }
      
      public function set tabBtnA0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._933747498tabBtnA0;
         if(_loc2_ !== param1)
         {
            this._933747498tabBtnA0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA0",_loc2_,param1));
         }
      }
      
      internal function chongZhuProp() : *
      {
         var goldLockFlag:Boolean;
         var bagPanel:BagPanel;
         var flag0:String = null;
         var flag1:String = null;
         var flag2:String = null;
         var auto:String = null;
         var gfunc:Function = null;
         var popAlert:Boolean = false;
         var i:* = undefined;
         var handler:Function = null;
         var str:String = null;
         if(ChongZhuEqu.slotData == null)
         {
            return;
         }
         flag0 = lock0.selected ? "lock" : "";
         flag1 = lock1.selected ? "lock" : "";
         flag2 = lock2.selected ? "lock" : "";
         auto = czauto.selected ? "auto" : "";
         bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         goldLockFlag = bagPanel.goldLockFlag;
         if(goldLockFlag || !bagPanel)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
            return;
         }
         if(Boolean(czflag) && Boolean(czflag["0"]))
         {
            popAlert = false;
            i = 0;
            while(i < 3)
            {
               if(czflag[i]["v"] == czflag[i]["max"])
               {
                  if(!this["lock" + i].selected)
                  {
                     popAlert = true;
                  }
               }
               i++;
            }
            if(popAlert)
            {
               handler = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("updateChongZhu",new Responder(onChongZhuBtnState),ChongZhuEqu.slotData.id,flag0,flag1,flag2,auto);
                     chongzhuBtn.enabled = false;
                     return;
                  }
               };
               if(_alert)
               {
                  PopUpManager.removePopUp(_alert);
                  _alert = null;
               }
               str = Language.QILING_PANEL[2];
               _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
               return;
            }
            _core.remote.call("updateChongZhu",new Responder(onChongZhuBtnState),ChongZhuEqu.slotData.id,flag0,flag1,flag2,auto);
            chongzhuBtn.enabled = false;
         }
      }
      
      public function set tabBtnA1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._933747497tabBtnA1;
         if(_loc2_ !== param1)
         {
            this._933747497tabBtnA1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA1",_loc2_,param1));
         }
      }
      
      private function getEquiptIndex() : *
      {
         var _loc1_:Object = null;
         var _loc2_:* = undefined;
         if(QiLingEqu.slotData)
         {
            _loc1_ = _core.getTemplateData(QiLingEqu.slotData.type,QiLingEqu.slotData.itemId,false);
            if(_loc1_)
            {
               if(ToolKit.isSmallOrEqual(_loc1_["reqLevel"],150))
               {
                  _core.sysMsg(Language.QILING_PANEL[25]);
                  return -1;
               }
               _loc2_ = getQiLingIndex(Number(_loc1_["kind"]),Number(_loc1_["type"]));
               if(_loc2_ != -1)
               {
                  return _loc2_;
               }
               if(_loc2_ == -1)
               {
                  _core.sysMsg(Language.QILING_PANEL[25]);
                  return -1;
               }
            }
         }
         return -1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pTitle() : BasicTitleCanvas
      {
         return this._1007683640pTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBag() : BasicGlowButton
      {
         return this._2067262411showBag;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _itemList.type = 1;
         _itemList.idList = [GamePredef.QILING_ITEMID];
         visible = true;
      }
      
      public function onChongZhuBtnState(param1:Object) : void
      {
         chongzhuBtn.enabled = true;
      }
      
      private function newPropAlert() : void
      {
         if(_alert2)
         {
            PopUpManager.removePopUp(_alert2);
            _alert2 = null;
         }
         var _loc1_:String = Language.QILING_PANEL[26].toString();
         _alert2 = Alert.show(_loc1_,Language.PANEL_PETGUARD[19].toString(),Alert.YES,null,null);
      }
   }
}

