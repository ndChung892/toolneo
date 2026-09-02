package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlotStars;
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
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarExchange extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _898029964sname2:Label;
      
      private var _1110417470label6:Label;
      
      private var _898029958sname8:Label;
      
      private var _898029961sname5:Label;
      
      private var _100348227info1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1110417475label1:Label;
      
      private var _1034382992numNow:Label;
      
      private var _alert:Alert;
      
      private var _core:Core = Core.getInstance();
      
      private var _1110417469label7:Label;
      
      private var _1110417472label4:Label;
      
      private var _1429386198exchangeItem:ItemSlotStars;
      
      private var _3237038info:Label;
      
      private var _2069125089sname12:Label;
      
      private var _2069125091sname10:Label;
      
      private var _110363459tile1:Tile;
      
      private var _898029963sname3:Label;
      
      private var _63203309label10:Label;
      
      private var _632036295starExchageItem10:ItemSlotStars;
      
      private var _632036296starExchageItem11:ItemSlotStars;
      
      private var _898029957sname9:Label;
      
      private var _898029960sname6:Label;
      
      private var _63203307label12:Label;
      
      private var _632036297starExchageItem12:ItemSlotStars;
      
      private var _1110417474label2:Label;
      
      private var _898029965sname1:Label;
      
      private var _1322604301eTitle:BasicTitleCanvas;
      
      private var _1110417468label8:Label;
      
      private var _1755001245exchangeNum:NumericStepper;
      
      private var _1110417471label5:Label;
      
      private var _898029959sname7:Label;
      
      private var _1087990389starExchageItem3:ItemSlotStars;
      
      private var _selectIndex:Number = 0;
      
      private var _1087990385starExchageItem7:ItemSlotStars;
      
      private var _1087990391starExchageItem1:ItemSlotStars;
      
      private var _1087990388starExchageItem4:ItemSlotStars;
      
      private var _1087990390starExchageItem2:ItemSlotStars;
      
      private var _1087990387starExchageItem5:ItemSlotStars;
      
      private var _100348226info0:Label;
      
      private var _1087990386starExchageItem6:ItemSlotStars;
      
      private var _1087990384starExchageItem8:ItemSlotStars;
      
      private var _1087990383starExchageItem9:ItemSlotStars;
      
      mx_internal var _watchers:Array = [];
      
      private var _898029962sname4:Label;
      
      private var _2069125090sname11:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _63203308label11:Label;
      
      private var _1110417473label3:Label;
      
      public var _StarExchange_Label4:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _1640725936jewelExchageButtonOne:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":275,
               "height":390,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"eTitle",
                  "events":{"creationComplete":"__eTitle_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":36,
                        "width":250,
                        "height":330,
                        "styleName":"txtArea",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"info0",
                           "stylesFactory":function():void
                           {
                              this.color = 13882231;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":5,
                                 "width":286,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"info1",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":22,
                                 "width":286,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotStars,
                           "id":"exchangeItem",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":60,
                                 "y":60,
                                 "movable":true,
                                 "acceptable":true,
                                 "showStackNum":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"numNow",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":58
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"exchangeNum",
                           "events":{"change":"__exchangeNum_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":76,
                                 "minimum":0,
                                 "maximum":0,
                                 "x":158,
                                 "value":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_StarExchange_Label4",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":78
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Tile,
                           "id":"tile1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.horizontalGap = 10;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":100,
                                 "width":190,
                                 "height":200,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "styleName":"TileBagItem",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname1",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem1",
                                             "events":{"click":"__starExchageItem1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"1"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label1",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname2",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem2",
                                             "events":{"click":"__starExchageItem2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label2",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname3",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem3",
                                             "events":{"click":"__starExchageItem3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"3"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label3",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname4",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem4",
                                             "events":{"click":"__starExchageItem4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"4"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label4",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname5",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem5",
                                             "events":{"click":"__starExchageItem5_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"5"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label5",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname6",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem6",
                                             "events":{"click":"__starExchageItem6_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"6"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label6",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname7",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem7",
                                             "events":{"click":"__starExchageItem7_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"7"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label7",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname8",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem8",
                                             "events":{"click":"__starExchageItem8_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"8"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label8",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname9",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem9",
                                             "events":{"click":"__starExchageItem9_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"9"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label9",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname10",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem10",
                                             "events":{"click":"__starExchageItem10_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"10"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label10",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname11",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem11",
                                             "events":{"click":"__starExchageItem11_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"11"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label11",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
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
                                          "width":40,
                                          "height":50,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"sname12",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotStars,
                                             "id":"starExchageItem12",
                                             "events":{"click":"__starExchageItem12_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "acceptable":false,
                                                   "label":"12"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label12",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "15";
                                                this.horizontalCenter = "0";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":28,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"info",
                           "stylesFactory":function():void
                           {
                              this.bottom = "30";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "width":286
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"jewelExchageButtonOne",
                           "events":{"click":"__jewelExchageButtonOne_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":50
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1110417467label9:Label;
      
      public function StarExchange()
      {
         super();
         mx_internal::_document = this;
         this.width = 275;
         this.height = 390;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarExchange._watcherSetupUtil = param1;
      }
      
      private function selectChageJewel(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(Boolean(exchangeItem.slotData) && Boolean(this["starExchageItem" + param1].giid))
         {
            _selectIndex = 0;
            _loc2_ = 1;
            while(_loc2_ <= 12)
            {
               if(_loc2_ == param1)
               {
                  this["label" + _loc2_].htmlText = Language.JEWEL_EXCHANGE_PANEL[1];
                  _selectIndex = param1;
               }
               else
               {
                  this["label" + _loc2_].htmlText = "";
               }
               _loc2_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label11() : Label
      {
         return this._63203308label11;
      }
      
      [Bindable(event="propertyChange")]
      public function get label12() : Label
      {
         return this._63203307label12;
      }
      
      [Bindable(event="propertyChange")]
      public function get label10() : Label
      {
         return this._63203309label10;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname10() : Label
      {
         return this._2069125091sname10;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname11() : Label
      {
         return this._2069125090sname11;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname12() : Label
      {
         return this._2069125089sname12;
      }
      
      private function _StarExchange_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_EXCHANGE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eTitle.text = param1;
         },"eTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_EXCHANGE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info0.text = param1;
         },"info0.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_EXCHANGE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info1.text = param1;
         },"info1.text");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_STARS_SPEED;
         },function(param1:int):void
         {
            exchangeItem.slotType = param1;
         },"exchangeItem.slotType");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_EXCHANGE_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarExchange_Label4.text = param1;
         },"_StarExchange_Label4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname1.text = param1;
         },"sname1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname2.text = param1;
         },"sname2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname3.text = param1;
         },"sname3.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname4.text = param1;
         },"sname4.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname5.text = param1;
         },"sname5.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname6.text = param1;
         },"sname6.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname7.text = param1;
         },"sname7.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname8.text = param1;
         },"sname8.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname9.text = param1;
         },"sname9.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname10.text = param1;
         },"sname10.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname11.text = param1;
         },"sname11.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sname12.text = param1;
         },"sname12.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JEWEL_EXCHANGE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            jewelExchageButtonOne.label = param1;
         },"jewelExchageButtonOne.label");
         result[17] = binding;
         return result;
      }
      
      public function set label11(param1:Label) : void
      {
         var _loc2_:Object = this._63203308label11;
         if(_loc2_ !== param1)
         {
            this._63203308label11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label11",_loc2_,param1));
         }
      }
      
      public function set label12(param1:Label) : void
      {
         var _loc2_:Object = this._63203307label12;
         if(_loc2_ !== param1)
         {
            this._63203307label12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label12",_loc2_,param1));
         }
      }
      
      public function set label10(param1:Label) : void
      {
         var _loc2_:Object = this._63203309label10;
         if(_loc2_ !== param1)
         {
            this._63203309label10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label10",_loc2_,param1));
         }
      }
      
      public function __starExchageItem5_click(param1:MouseEvent) : void
      {
         selectChageJewel(5);
      }
      
      public function set sname10(param1:Label) : void
      {
         var _loc2_:Object = this._2069125091sname10;
         if(_loc2_ !== param1)
         {
            this._2069125091sname10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname10",_loc2_,param1));
         }
      }
      
      public function set sname11(param1:Label) : void
      {
         var _loc2_:Object = this._2069125090sname11;
         if(_loc2_ !== param1)
         {
            this._2069125090sname11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname11",_loc2_,param1));
         }
      }
      
      public function set sname12(param1:Label) : void
      {
         var _loc2_:Object = this._2069125089sname12;
         if(_loc2_ !== param1)
         {
            this._2069125089sname12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname12",_loc2_,param1));
         }
      }
      
      public function open() : void
      {
         reset();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelExchageButtonOne() : BasicGlowButton
      {
         return this._1640725936jewelExchageButtonOne;
      }
      
      [Bindable(event="propertyChange")]
      public function get exchangeNum() : NumericStepper
      {
         return this._1755001245exchangeNum;
      }
      
      public function __starExchageItem11_click(param1:MouseEvent) : void
      {
         selectChageJewel(11);
      }
      
      public function __starExchageItem2_click(param1:MouseEvent) : void
      {
         selectChageJewel(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get sname2() : Label
      {
         return this._898029964sname2;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname3() : Label
      {
         return this._898029963sname3;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname4() : Label
      {
         return this._898029962sname4;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname5() : Label
      {
         return this._898029961sname5;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname7() : Label
      {
         return this._898029959sname7;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname8() : Label
      {
         return this._898029958sname8;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname9() : Label
      {
         return this._898029957sname9;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname6() : Label
      {
         return this._898029960sname6;
      }
      
      [Bindable(event="propertyChange")]
      public function get sname1() : Label
      {
         return this._898029965sname1;
      }
      
      public function set info0(param1:Label) : void
      {
         var _loc2_:Object = this._100348226info0;
         if(_loc2_ !== param1)
         {
            this._100348226info0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info0",_loc2_,param1));
         }
      }
      
      public function set info1(param1:Label) : void
      {
         var _loc2_:Object = this._100348227info1;
         if(_loc2_ !== param1)
         {
            this._100348227info1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info1",_loc2_,param1));
         }
      }
      
      public function set tile1(param1:Tile) : void
      {
         var _loc2_:Object = this._110363459tile1;
         if(_loc2_ !== param1)
         {
            this._110363459tile1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile1",_loc2_,param1));
         }
      }
      
      public function set jewelExchageButtonOne(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1640725936jewelExchageButtonOne;
         if(_loc2_ !== param1)
         {
            this._1640725936jewelExchageButtonOne = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageButtonOne",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      public function __starExchageItem7_click(param1:MouseEvent) : void
      {
         selectChageJewel(7);
      }
      
      public function set exchangeNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1755001245exchangeNum;
         if(_loc2_ !== param1)
         {
            this._1755001245exchangeNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exchangeNum",_loc2_,param1));
         }
      }
      
      public function set numNow(param1:Label) : void
      {
         var _loc2_:Object = this._1034382992numNow;
         if(_loc2_ !== param1)
         {
            this._1034382992numNow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numNow",_loc2_,param1));
         }
      }
      
      public function set sname1(param1:Label) : void
      {
         var _loc2_:Object = this._898029965sname1;
         if(_loc2_ !== param1)
         {
            this._898029965sname1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname1",_loc2_,param1));
         }
      }
      
      public function set sname2(param1:Label) : void
      {
         var _loc2_:Object = this._898029964sname2;
         if(_loc2_ !== param1)
         {
            this._898029964sname2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname2",_loc2_,param1));
         }
      }
      
      public function set sname3(param1:Label) : void
      {
         var _loc2_:Object = this._898029963sname3;
         if(_loc2_ !== param1)
         {
            this._898029963sname3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname3",_loc2_,param1));
         }
      }
      
      public function set sname5(param1:Label) : void
      {
         var _loc2_:Object = this._898029961sname5;
         if(_loc2_ !== param1)
         {
            this._898029961sname5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname5",_loc2_,param1));
         }
      }
      
      public function set sname7(param1:Label) : void
      {
         var _loc2_:Object = this._898029959sname7;
         if(_loc2_ !== param1)
         {
            this._898029959sname7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname7",_loc2_,param1));
         }
      }
      
      public function __exchangeNum_change(param1:NumericStepperEvent) : void
      {
         exchangeNumChange();
      }
      
      public function set sname8(param1:Label) : void
      {
         var _loc2_:Object = this._898029958sname8;
         if(_loc2_ !== param1)
         {
            this._898029958sname8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname8",_loc2_,param1));
         }
      }
      
      private function starExchage() : void
      {
         var sid:Number = NaN;
         var giid:Number = NaN;
         var num:int = 0;
         var tempFlag:Boolean = false;
         var handler:Function = null;
         var slot:Object = null;
         var itemTmp:Object = null;
         var exchageItemTmp:Object = null;
         var str:String = null;
         if(Boolean(exchangeItem.slotData && _selectIndex) && Boolean(ToolKit.isBigThan(_selectIndex,0)) && ToolKit.isBigThan(exchangeItem.slotData.stackNum,0))
         {
            sid = Number(exchangeItem.slotData.id);
            giid = Number(this["starExchageItem" + _selectIndex].giid);
            if(ToolKit.isEqual(exchangeItem.slotData.tid,giid))
            {
               return;
            }
            num = exchangeNum.value;
            tempFlag = exchangeItem.tempBagFlag;
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  info.htmlText = "";
                  jewelExchageButtonOne.enabled = false;
                  _core.remote.call("pmStarExchage",new Responder(onStarExchage),sid,giid,num,tempFlag);
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            slot = exchangeItem.slotData;
            if(slot)
            {
               if(exchangeItem.tempBagFlag)
               {
                  itemTmp = _core.getTemplateData(slot.ti,slot.ii);
               }
               else
               {
                  itemTmp = _core.getTemplateData(slot.type,slot.itemId);
               }
               exchageItemTmp = _core.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,this["starExchageItem" + _selectIndex].giid);
               str = Language.STAR_EXCHANGE_PANEL[6].toString().replace("{num}",num).replace("{name}",itemTmp.name).replace("{name1}",exchageItemTmp.name);
               _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            }
         }
         else if(Boolean(exchangeItem.slotData) && (!_selectIndex || ToolKit.isEqual(_selectIndex,0)))
         {
            _core.sysMidNote(Language.STAR_EXCHANGE_PANEL[5]);
         }
      }
      
      public function set sname9(param1:Label) : void
      {
         var _loc2_:Object = this._898029957sname9;
         if(_loc2_ !== param1)
         {
            this._898029957sname9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname9",_loc2_,param1));
         }
      }
      
      public function set sname6(param1:Label) : void
      {
         var _loc2_:Object = this._898029960sname6;
         if(_loc2_ !== param1)
         {
            this._898029960sname6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname6",_loc2_,param1));
         }
      }
      
      public function __jewelExchageButtonOne_click(param1:MouseEvent) : void
      {
         starExchage();
      }
      
      [Bindable(event="propertyChange")]
      public function get eTitle() : BasicTitleCanvas
      {
         return this._1322604301eTitle;
      }
      
      public function set sname4(param1:Label) : void
      {
         var _loc2_:Object = this._898029962sname4;
         if(_loc2_ !== param1)
         {
            this._898029962sname4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname4",_loc2_,param1));
         }
      }
      
      public function __starExchageItem4_click(param1:MouseEvent) : void
      {
         selectChageJewel(4);
      }
      
      private function init() : void
      {
         exchangeItem.addEventListener(GameEvent.SLOT_NUM_CHANGE,exchangeItemChange);
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            this["starExchageItem" + _loc1_].type = GamePredef.TBL_ITEM_TEMPLATE;
            this["starExchageItem" + _loc1_].giid = 3315 + _loc1_;
            _loc1_++;
         }
         numNow.text = Language.STAR_EXCHANGE_PANEL[3].toString().replace("{num}",0);
         exchangeNum.enabled = false;
      }
      
      public function set starExchageItem1(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990391starExchageItem1;
         if(_loc2_ !== param1)
         {
            this._1087990391starExchageItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem1",_loc2_,param1));
         }
      }
      
      public function set starExchageItem2(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990390starExchageItem2;
         if(_loc2_ !== param1)
         {
            this._1087990390starExchageItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem2",_loc2_,param1));
         }
      }
      
      public function set starExchageItem3(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990389starExchageItem3;
         if(_loc2_ !== param1)
         {
            this._1087990389starExchageItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem3",_loc2_,param1));
         }
      }
      
      public function set starExchageItem4(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990388starExchageItem4;
         if(_loc2_ !== param1)
         {
            this._1087990388starExchageItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem4",_loc2_,param1));
         }
      }
      
      public function set starExchageItem5(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990387starExchageItem5;
         if(_loc2_ !== param1)
         {
            this._1087990387starExchageItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem5",_loc2_,param1));
         }
      }
      
      public function set starExchageItem6(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990386starExchageItem6;
         if(_loc2_ !== param1)
         {
            this._1087990386starExchageItem6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem6",_loc2_,param1));
         }
      }
      
      public function set starExchageItem8(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990384starExchageItem8;
         if(_loc2_ !== param1)
         {
            this._1087990384starExchageItem8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem8",_loc2_,param1));
         }
      }
      
      public function __eTitle_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set starExchageItem7(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990385starExchageItem7;
         if(_loc2_ !== param1)
         {
            this._1087990385starExchageItem7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem7",_loc2_,param1));
         }
      }
      
      public function set starExchageItem9(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1087990383starExchageItem9;
         if(_loc2_ !== param1)
         {
            this._1087990383starExchageItem9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem9",_loc2_,param1));
         }
      }
      
      private function exchangeItemChange(param1:Event) : void
      {
         var _loc2_:int = 0;
         info.htmlText = Language.STAR_EXCHANGE_PANEL[5];
         if(!exchangeItem.slotData)
         {
            numNow.text = Language.STAR_EXCHANGE_PANEL[3].toString().replace("{num}",0);
            exchangeNum.enabled = false;
         }
         else
         {
            _loc2_ = exchangeItem.stackNum;
            numNow.text = Language.STAR_EXCHANGE_PANEL[3].toString().replace("{num}",_loc2_);
            exchangeNum.enabled = true;
            exchangeNum.minimum = 1;
            exchangeNum.maximum = _loc2_;
            exchangeNum.value = _loc2_;
         }
      }
      
      public function __starExchageItem10_click(param1:MouseEvent) : void
      {
         selectChageJewel(10);
      }
      
      public function __starExchageItem1_click(param1:MouseEvent) : void
      {
         selectChageJewel(1);
      }
      
      public function __starExchageItem9_click(param1:MouseEvent) : void
      {
         selectChageJewel(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get info0() : Label
      {
         return this._100348226info0;
      }
      
      [Bindable(event="propertyChange")]
      public function get info1() : Label
      {
         return this._100348227info1;
      }
      
      private function reset() : void
      {
         if(exchangeItem)
         {
            exchangeItem.clean();
         }
         if(exchangeNum)
         {
            exchangeNum.value = 0;
            exchangeNum.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tile1() : Tile
      {
         return this._110363459tile1;
      }
      
      public function set info(param1:Label) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      private function _StarExchange_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STAR_EXCHANGE_PANEL[0];
         _loc1_ = Language.STAR_EXCHANGE_PANEL[1];
         _loc1_ = Language.STAR_EXCHANGE_PANEL[2];
         _loc1_ = Slot.SLOT_STARS_SPEED;
         _loc1_ = Language.STAR_EXCHANGE_PANEL[4];
         _loc1_ = Language.STAR_ADD_PANEL_U[1];
         _loc1_ = Language.STAR_ADD_PANEL_U[2];
         _loc1_ = Language.STAR_ADD_PANEL_U[3];
         _loc1_ = Language.STAR_ADD_PANEL_U[4];
         _loc1_ = Language.STAR_ADD_PANEL_U[5];
         _loc1_ = Language.STAR_ADD_PANEL_U[6];
         _loc1_ = Language.STAR_ADD_PANEL_U[7];
         _loc1_ = Language.STAR_ADD_PANEL_U[8];
         _loc1_ = Language.STAR_ADD_PANEL_U[9];
         _loc1_ = Language.STAR_ADD_PANEL_U[10];
         _loc1_ = Language.STAR_ADD_PANEL_U[11];
         _loc1_ = Language.STAR_ADD_PANEL_U[12];
         _loc1_ = Language.JEWEL_EXCHANGE_PANEL[2];
      }
      
      [Bindable(event="propertyChange")]
      public function get numNow() : Label
      {
         return this._1034382992numNow;
      }
      
      public function set label1(param1:Label) : void
      {
         var _loc2_:Object = this._1110417475label1;
         if(_loc2_ !== param1)
         {
            this._1110417475label1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label1",_loc2_,param1));
         }
      }
      
      public function set label2(param1:Label) : void
      {
         var _loc2_:Object = this._1110417474label2;
         if(_loc2_ !== param1)
         {
            this._1110417474label2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label2",_loc2_,param1));
         }
      }
      
      public function __starExchageItem6_click(param1:MouseEvent) : void
      {
         selectChageJewel(6);
      }
      
      public function set label4(param1:Label) : void
      {
         var _loc2_:Object = this._1110417472label4;
         if(_loc2_ !== param1)
         {
            this._1110417472label4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label4",_loc2_,param1));
         }
      }
      
      public function set label5(param1:Label) : void
      {
         var _loc2_:Object = this._1110417471label5;
         if(_loc2_ !== param1)
         {
            this._1110417471label5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label5",_loc2_,param1));
         }
      }
      
      public function set label3(param1:Label) : void
      {
         var _loc2_:Object = this._1110417473label3;
         if(_loc2_ !== param1)
         {
            this._1110417473label3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label3",_loc2_,param1));
         }
      }
      
      public function set label7(param1:Label) : void
      {
         var _loc2_:Object = this._1110417469label7;
         if(_loc2_ !== param1)
         {
            this._1110417469label7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem1() : ItemSlotStars
      {
         return this._1087990391starExchageItem1;
      }
      
      public function set label9(param1:Label) : void
      {
         var _loc2_:Object = this._1110417467label9;
         if(_loc2_ !== param1)
         {
            this._1110417467label9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label9",_loc2_,param1));
         }
      }
      
      public function set label6(param1:Label) : void
      {
         var _loc2_:Object = this._1110417470label6;
         if(_loc2_ !== param1)
         {
            this._1110417470label6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem4() : ItemSlotStars
      {
         return this._1087990388starExchageItem4;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem5() : ItemSlotStars
      {
         return this._1087990387starExchageItem5;
      }
      
      public function set label8(param1:Label) : void
      {
         var _loc2_:Object = this._1110417468label8;
         if(_loc2_ !== param1)
         {
            this._1110417468label8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label8",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarExchange = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarExchange_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StarExchangeWatcherSetupUtil");
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
      
      public function set starExchageItem12(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._632036297starExchageItem12;
         if(_loc2_ !== param1)
         {
            this._632036297starExchageItem12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem12",_loc2_,param1));
         }
      }
      
      public function set starExchageItem10(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._632036295starExchageItem10;
         if(_loc2_ !== param1)
         {
            this._632036295starExchageItem10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem3() : ItemSlotStars
      {
         return this._1087990389starExchageItem3;
      }
      
      private function onStarExchage(param1:Object) : void
      {
         var _loc4_:Object = null;
         jewelExchageButtonOne.enabled = true;
         _selectIndex = 0;
         var _loc2_:int = 1;
         while(_loc2_ <= 12)
         {
            this["label" + _loc2_].htmlText = "";
            _loc2_++;
         }
         var _loc3_:String = "";
         if(param1)
         {
            if(param1.flag)
            {
               if(param1.finalNum)
               {
                  _loc3_ = Language.STAR_EXCHANGE_PANEL[7].toString().replace("{num}",param1.finalNum).replace("{name}",param1.finalNme);
                  _core.sysMidNote(_loc3_);
                  info.htmlText = "<font color=\'#FF0000\'>" + _loc3_ + "</font>";
                  if(Boolean(exchangeItem.slotData) && Number(exchangeItem.slotData.id) == Number(param1.slotId))
                  {
                     _loc4_ = _core.data.getSlot({
                        "id":param1.slotId,
                        "sid":exchangeItem.slotData.sid
                     });
                     if(_loc4_)
                     {
                        exchangeItem.slotData = _loc4_;
                        exchangeItem.type = _loc4_.type;
                        exchangeItem.giid = _loc4_.itemId;
                        exchangeItem.stackNum = _loc4_.stackNum;
                     }
                     else
                     {
                        exchangeItem.clean();
                        exchangeNum.value = 0;
                        exchangeNum.enabled = false;
                        numNow.text = Language.STAR_EXCHANGE_PANEL[3].toString().replace("{num}",0);
                     }
                  }
               }
               else
               {
                  _core.sysMidNote(Language.STAR_EXCHANGE_PANEL[8]);
               }
            }
            else
            {
               _core.sysMidNote(Language.STAR_EXCHANGE_PANEL[8]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem7() : ItemSlotStars
      {
         return this._1087990385starExchageItem7;
      }
      
      public function set starExchageItem11(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._632036296starExchageItem11;
         if(_loc2_ !== param1)
         {
            this._632036296starExchageItem11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starExchageItem11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem9() : ItemSlotStars
      {
         return this._1087990383starExchageItem9;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem2() : ItemSlotStars
      {
         return this._1087990390starExchageItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem8() : ItemSlotStars
      {
         return this._1087990384starExchageItem8;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem6() : ItemSlotStars
      {
         return this._1087990386starExchageItem6;
      }
      
      public function set exchangeItem(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._1429386198exchangeItem;
         if(_loc2_ !== param1)
         {
            this._1429386198exchangeItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exchangeItem",_loc2_,param1));
         }
      }
      
      public function __starExchageItem3_click(param1:MouseEvent) : void
      {
         selectChageJewel(3);
      }
      
      public function __starExchageItem12_click(param1:MouseEvent) : void
      {
         selectChageJewel(12);
      }
      
      [Bindable(event="propertyChange")]
      public function get label1() : Label
      {
         return this._1110417475label1;
      }
      
      [Bindable(event="propertyChange")]
      public function get label2() : Label
      {
         return this._1110417474label2;
      }
      
      [Bindable(event="propertyChange")]
      public function get label3() : Label
      {
         return this._1110417473label3;
      }
      
      [Bindable(event="propertyChange")]
      public function get label5() : Label
      {
         return this._1110417471label5;
      }
      
      [Bindable(event="propertyChange")]
      public function get label6() : Label
      {
         return this._1110417470label6;
      }
      
      [Bindable(event="propertyChange")]
      public function get label7() : Label
      {
         return this._1110417469label7;
      }
      
      [Bindable(event="propertyChange")]
      public function get label8() : Label
      {
         return this._1110417468label8;
      }
      
      [Bindable(event="propertyChange")]
      public function get label9() : Label
      {
         return this._1110417467label9;
      }
      
      [Bindable(event="propertyChange")]
      public function get label4() : Label
      {
         return this._1110417472label4;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem11() : ItemSlotStars
      {
         return this._632036296starExchageItem11;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem12() : ItemSlotStars
      {
         return this._632036297starExchageItem12;
      }
      
      [Bindable(event="propertyChange")]
      public function get starExchageItem10() : ItemSlotStars
      {
         return this._632036295starExchageItem10;
      }
      
      [Bindable(event="propertyChange")]
      public function get exchangeItem() : ItemSlotStars
      {
         return this._1429386198exchangeItem;
      }
      
      public function set eTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1322604301eTitle;
         if(_loc2_ !== param1)
         {
            this._1322604301eTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eTitle",_loc2_,param1));
         }
      }
      
      private function exchangeNumChange() : void
      {
      }
      
      public function __starExchageItem8_click(param1:MouseEvent) : void
      {
         selectChageJewel(8);
      }
   }
}

