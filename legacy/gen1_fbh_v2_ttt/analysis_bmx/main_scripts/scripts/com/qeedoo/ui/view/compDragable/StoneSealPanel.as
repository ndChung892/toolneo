package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotJewel;
   import com.qeedoo.ui.view.comp.ItemSlotStoneSeal;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.Text;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StoneSealPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _2074309061isWatch:Boolean = false;
      
      public static const EQUIP_ID_MIN:int = 1;
      
      public static const EQUIP_ID_MAX:int = 12;
      
      public static const STONE_SEAL_CONF_EXTRA_PROPERTY:Object = {
         1:{
            1:{
               "n":0,
               "f":0,
               "v":100000
            },
            2:{
               "n":13,
               "f":0,
               "v":5.40001
            },
            3:{
               "n":31,
               "f":0,
               "v":5.40001
            },
            4:{
               "n":12,
               "f":0,
               "v":2.88001
            },
            5:{
               "n":59,
               "f":0,
               "v":4.32001
            },
            6:{
               "n":4,
               "f":0,
               "v":3960.01
            },
            7:{
               "n":53,
               "f":0,
               "v":10.8
            },
            8:{
               "n":52,
               "f":0,
               "v":10.8
            },
            9:{
               "n":56,
               "f":0,
               "v":10.8
            },
            10:{
               "n":54,
               "f":0,
               "v":10.8
            },
            11:{
               "n":54,
               "f":0,
               "v":10.8
            },
            12:{
               "n":55,
               "f":0,
               "v":10.8
            },
            13:{
               "n":57,
               "f":0,
               "v":10.8
            },
            14:{
               "n":55,
               "f":0,
               "v":10.8
            }
         },
         2:{
            2:{
               "n":0,
               "f":0,
               "v":100000
            },
            3:{
               "n":10,
               "f":0,
               "v":4.32001
            },
            4:{
               "n":14,
               "f":0,
               "v":1.8
            },
            5:{
               "n":62,
               "f":0,
               "v":5.76001
            },
            6:{
               "n":11,
               "f":0,
               "v":1440
            },
            7:{
               "n":53,
               "f":0,
               "v":10.8
            },
            8:{
               "n":52,
               "f":0,
               "v":10.8
            },
            9:{
               "n":56,
               "f":0,
               "v":10.8
            },
            10:{
               "n":54,
               "f":0,
               "v":10.8
            },
            11:{
               "n":54,
               "f":0,
               "v":10.8
            },
            12:{
               "n":55,
               "f":0,
               "v":10.8
            },
            13:{
               "n":57,
               "f":0,
               "v":10.8
            },
            14:{
               "n":55,
               "f":0,
               "v":10.8
            }
         },
         3:{
            3:{
               "n":0,
               "f":0,
               "v":100000
            },
            4:{
               "n":61,
               "f":0,
               "v":3.60001
            },
            5:{
               "n":60,
               "f":1,
               "v":4.32001
            },
            6:{
               "n":1,
               "f":0,
               "v":18000
            },
            7:{
               "n":53,
               "f":0,
               "v":10.8
            },
            8:{
               "n":52,
               "f":0,
               "v":10.8
            },
            9:{
               "n":56,
               "f":0,
               "v":10.8
            },
            10:{
               "n":54,
               "f":0,
               "v":10.8
            },
            11:{
               "n":54,
               "f":0,
               "v":10.8
            },
            12:{
               "n":55,
               "f":0,
               "v":10.8
            },
            13:{
               "n":57,
               "f":0,
               "v":10.8
            },
            14:{
               "n":55,
               "f":0,
               "v":10.8
            }
         },
         4:{
            4:{
               "n":0,
               "f":0,
               "v":100000
            },
            5:{
               "n":63,
               "f":0,
               "v":5.76001
            },
            6:{
               "n":5,
               "f":0,
               "v":1440
            },
            7:{
               "n":53,
               "f":0,
               "v":10.8
            },
            8:{
               "n":52,
               "f":0,
               "v":10.8
            },
            9:{
               "n":56,
               "f":0,
               "v":10.8
            },
            10:{
               "n":54,
               "f":0,
               "v":10.8
            },
            11:{
               "n":54,
               "f":0,
               "v":10.8
            },
            12:{
               "n":55,
               "f":0,
               "v":10.8
            },
            13:{
               "n":57,
               "f":0,
               "v":10.8
            },
            14:{
               "n":55,
               "f":0,
               "v":10.8
            }
         },
         5:{
            5:{
               "n":0,
               "f":0,
               "v":100000
            },
            6:{
               "n":2,
               "f":0,
               "v":1353.6
            },
            7:{
               "n":53,
               "f":0,
               "v":10.8
            },
            8:{
               "n":52,
               "f":0,
               "v":10.8
            },
            9:{
               "n":56,
               "f":0,
               "v":10.8
            },
            10:{
               "n":54,
               "f":0,
               "v":10.8
            },
            11:{
               "n":54,
               "f":0,
               "v":10.8
            },
            12:{
               "n":55,
               "f":0,
               "v":10.8
            },
            13:{
               "n":57,
               "f":0,
               "v":10.8
            },
            14:{
               "n":55,
               "f":0,
               "v":10.8
            }
         },
         6:{
            6:{
               "n":0,
               "f":0,
               "v":100000
            },
            7:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            8:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            9:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            10:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            11:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            12:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            13:{
               "n":32,
               "f":0,
               "v":5.40001
            },
            14:{
               "n":32,
               "f":0,
               "v":5.40001
            }
         },
         7:{
            7:{
               "n":0,
               "f":0,
               "v":100000
            },
            8:{
               "n":4,
               "f":0,
               "v":3960.01
            },
            9:{
               "n":6,
               "f":0,
               "v":20160
            },
            10:{
               "n":5,
               "f":0,
               "v":1440
            },
            11:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            12:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            13:{
               "n":7,
               "f":0,
               "v":18720
            },
            14:{
               "n":34,
               "f":0,
               "v":4.32001
            }
         },
         8:{
            8:{
               "n":0,
               "f":0,
               "v":100000
            },
            9:{
               "n":7,
               "f":0,
               "v":18720
            },
            10:{
               "n":7,
               "f":0,
               "v":18720
            },
            11:{
               "n":5,
               "f":0,
               "v":1440
            },
            12:{
               "n":4,
               "f":0,
               "v":3960.01
            },
            13:{
               "n":6,
               "f":0,
               "v":20160
            },
            14:{
               "n":6,
               "f":0,
               "v":1440
            }
         },
         9:{
            9:{
               "n":0,
               "f":0,
               "v":100000
            },
            10:{
               "n":6,
               "f":0,
               "v":20160
            },
            11:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            12:{
               "n":5,
               "f":0,
               "v":1440
            },
            13:{
               "n":7,
               "f":0,
               "v":18720
            },
            14:{
               "n":4,
               "f":0,
               "v":3960.01
            }
         },
         10:{
            10:{
               "n":0,
               "f":0,
               "v":100000
            },
            11:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            12:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            13:{
               "n":4,
               "f":0,
               "v":3960.01
            },
            14:{
               "n":34,
               "f":0,
               "v":4.32001
            }
         },
         11:{
            11:{
               "n":0,
               "f":0,
               "v":100000
            },
            12:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            13:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            14:{
               "n":34,
               "f":0,
               "v":4.32001
            }
         },
         12:{
            12:{
               "n":0,
               "f":0,
               "v":100000
            },
            13:{
               "n":34,
               "f":0,
               "v":4.32001
            },
            14:{
               "n":34,
               "f":0,
               "v":4.32001
            }
         },
         13:{
            13:{
               "n":0,
               "f":0,
               "v":100000
            },
            14:{
               "n":5,
               "f":0,
               "v":1440
            }
         },
         14:{14:{
            "n":0,
            "f":0,
            "v":100000
         }}
      };
      
      public static const STONE_SEAL_CONF_NEGATIVE:Object = {
         1:{1:0},
         2:{2:0},
         3:{3:0},
         4:{4:0},
         5:{5:0},
         6:{6:0},
         7:{7:0},
         8:{8:0},
         9:{9:0},
         10:{10:0},
         11:{11:0},
         12:{12:0},
         13:{13:0},
         14:{14:0}
      };
      
      public static const STONE_SEAL_SUCCINCT_CONF:Array = [1,1,3.332,6.0148,15.81847,23.26693];
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      private var _1439005507equipStone2:ItemSlotJewel;
      
      private var _1913453667canvas51111:Canvas;
      
      private var _738071899iconOne2:Image;
      
      private var _769132addStone0:ItemSlotStoneSeal;
      
      private var _2108267724sealStone4:ItemSlotStoneSeal;
      
      private var _1655941410selectTxt2:Label;
      
      private var _738071897iconOne4:Image;
      
      private var _738071895iconOne6:Image;
      
      private var _738071893iconOne8:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var equipSlot:Object = null;
      
      private var sealMC:MovieClip;
      
      private var _769134addStone2:ItemSlotStoneSeal;
      
      private var _2108267727sealStone7:ItemSlotStoneSeal;
      
      private var _1633645860allAddPropTxt1:Text;
      
      private var _1161068495allAddPropLag:Label;
      
      private var _1439005500equipStone9:ItemSlotJewel;
      
      private var _core:Core = Core.getInstance();
      
      private var _737913978iconTwo9:Image;
      
      private var _2108267722sealStone2:ItemSlotStoneSeal;
      
      private var _737913981iconTwo6:Image;
      
      private var _769136addStone4:ItemSlotStoneSeal;
      
      private var _1439005503equipStone6:ItemSlotJewel;
      
      private var _1804642237btnsCanvas2:UIComponent;
      
      private var removeAllBtn:MovieClip;
      
      private var _769140addStone8:ItemSlotStoneSeal;
      
      private var _1633645861allAddPropTxt2:Text;
      
      private var watchSlots:Object = null;
      
      private var _737913987iconTwo0:Image;
      
      private var _1439005506equipStone3:ItemSlotJewel;
      
      private var _738071901iconOne0:Image;
      
      private var _737913985iconTwo2:Image;
      
      private var _1625307030selectedPropCanvas:Canvas;
      
      private var _737913983iconTwo4:Image;
      
      private var _1439005509equipStone0:ItemSlotJewel;
      
      private var _1655941408selectTxt4:Label;
      
      private var _769138addStone6:ItemSlotStoneSeal;
      
      private var _2108267725sealStone5:ItemSlotStoneSeal;
      
      private var _1655941411selectTxt1:Label;
      
      private var _1710794012_btnEnabled:Boolean = false;
      
      private var load:Loader;
      
      private var _588885630equipSid:int = -1;
      
      private var res_load_state:int = 0;
      
      private var _738071898iconOne3:Image;
      
      private var _3449699prop:Canvas;
      
      private var _738071892iconOne9:Image;
      
      private var watchData:Object;
      
      private var _helpAlert:Alert;
      
      private var sealIcons:Array = [];
      
      private var _738071896iconOne5:Image;
      
      private var _2108267728sealStone8:ItemSlotStoneSeal;
      
      private var _1075298147equipItem:ItemSlot;
      
      private var sealBtn:MovieClip;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _738071894iconOne7:Image;
      
      private var selectIndex:int = 1;
      
      private var _769133addStone1:ItemSlotStoneSeal;
      
      private var _1439005502equipStone7:ItemSlotJewel;
      
      private var _2108267720sealStone0:ItemSlotStoneSeal;
      
      private var _2108267723sealStone3:ItemSlotStoneSeal;
      
      private var _1439005505equipStone4:ItemSlotJewel;
      
      private var _1439005508equipStone1:ItemSlotJewel;
      
      private var mcPositions:Array = [[0,0],[56,87],[70,164],[26,169],[53,138],[68,184],[27,79],[113,152],[58,43],[101,49],[61,137],[134,79],[60,212]];
      
      private var watchCid:Number = 0;
      
      private var _769135addStone3:ItemSlotStoneSeal;
      
      private var _737913979iconTwo8:Image;
      
      private var mcClass:Class;
      
      private var _1655941409selectTxt3:Label;
      
      private var _145245136container1:UIComponent;
      
      private var _737913980iconTwo7:Image;
      
      private var _2108267726sealStone6:ItemSlotStoneSeal;
      
      private var _737913986iconTwo1:Image;
      
      private var btns:Array = [];
      
      private var _737913984iconTwo3:Image;
      
      private var _1462326131canvas6111:Canvas;
      
      private var inited:Boolean = false;
      
      private var _738071900iconOne1:Image;
      
      private var _1859329585btnsCanvas:UIComponent;
      
      private var _769137addStone5:ItemSlotStoneSeal;
      
      private var equipNameMC:MovieClip;
      
      private var _1762562555allAddPropCanvas:Canvas;
      
      private var _769141addStone9:ItemSlotStoneSeal;
      
      private var _737913982iconTwo5:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _2108267721sealStone1:ItemSlotStoneSeal;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1439005501equipStone8:ItemSlotJewel;
      
      private var _2108267729sealStone9:ItemSlotStoneSeal;
      
      public var _StoneSealPanel_LinkButton1:LinkButton;
      
      private var charFlag:Object = null;
      
      mx_internal var _bindings:Array = [];
      
      private var watchEquips:Object = null;
      
      private var _1439005504equipStone5:ItemSlotJewel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":782,
               "height":530,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas51111",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":39,
                        "height":469,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"container1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"canvas6111",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":752,
                                 "height":469,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":UIComponent,
                                    "id":"btnsCanvas",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                       this.top = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":190,
                                          "height":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"equipItem",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "184";
                                       this.top = "35";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "acceptable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "252";
                                       this.top = "35";
                                       this.horizontalGap = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox1_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone0",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne0",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone0"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo0",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone0",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox2_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone1"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox3_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone2"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox4_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone3",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne3",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone3"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo3",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone3",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox5_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone4",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne4",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone4"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo4",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone4",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox6_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone5",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne5",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone5"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo5",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone5",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox7_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone6",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne6",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone6"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo6",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone6",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox8_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone7",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne7",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone7"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo7",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone7",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox9_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone8",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne8",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone8"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo8",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone8",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "events":{"mouseOver":"___StoneSealPanel_VBox10_mouseOver"},
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 6;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":48,
                                                "height":300,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlotJewel,
                                                   "id":"equipStone9",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconOne9",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"sealStone9"
                                                }),new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"iconTwo9",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "width":35,
                                                         "height":51
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotStoneSeal,
                                                   "id":"addStone9",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "movable":false,
                                                         "acceptable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":UIComponent,
                                    "id":"btnsCanvas2",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                       this.top = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":190,
                                          "height":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"prop",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "25";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"selectedPropCanvas",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":50,
                                                "width":275,
                                                "height":110,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"selectTxt1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "5";
                                                      this.fontSize = 12;
                                                      this.fontWeight = "normal";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":280};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"selectTxt2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "40";
                                                      this.fontSize = 12;
                                                      this.fontWeight = "normal";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":280};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"selectTxt3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "60";
                                                      this.fontSize = 12;
                                                      this.fontWeight = "normal";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":280};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"selectTxt4",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "80";
                                                      this.fontSize = 12;
                                                      this.fontWeight = "normal";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":280};
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"allAddPropCanvas",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":395,
                                                "width":375,
                                                "height":110,
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"allAddPropLag",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "5";
                                                      this.fontSize = 12;
                                                      this.fontWeight = "bold";
                                                      this.color = 16773632;
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Text,
                                                   "id":"allAddPropTxt1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "25";
                                                      this.color = 65535;
                                                      this.fontSize = 12;
                                                      this.fontWeight = "normal";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":165};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Text,
                                                   "id":"allAddPropTxt2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "175";
                                                      this.top = "25";
                                                      this.color = 65535;
                                                      this.fontSize = 12;
                                                      this.fontWeight = "normal";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":165};
                                                   }
                                                })]
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"_StoneSealPanel_LinkButton1",
                                    "events":{"click":"___StoneSealPanel_LinkButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textDecoration = "underline";
                                       this.right = "35";
                                       this.bottom = "150";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":17};
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
      
      private var _769139addStone7:ItemSlotStoneSeal;
      
      private var _110371416title:BasicTitleCanvas;
      
      public function StoneSealPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 782;
         this.height = 530;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
         this.addEventListener("creationComplete",___StoneSealPanel_DragableCanvas1_creationComplete);
      }
      
      [Bindable(event="propertyChange")]
      public static function get isWatch() : Boolean
      {
         return StoneSealPanel._2074309061isWatch;
      }
      
      public static function set isWatch(param1:Boolean) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = StoneSealPanel._2074309061isWatch;
         if(_loc2_ !== param1)
         {
            StoneSealPanel._2074309061isWatch = param1;
            _loc3_ = StoneSealPanel.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(StoneSealPanel,"isWatch",_loc2_,param1));
            }
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StoneSealPanel._watcherSetupUtil = param1;
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      public function set sealStone7(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267727sealStone7;
         if(_loc2_ !== param1)
         {
            this._2108267727sealStone7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allAddPropCanvas() : Canvas
      {
         return this._1762562555allAddPropCanvas;
      }
      
      public function set allAddPropCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1762562555allAddPropCanvas;
         if(_loc2_ !== param1)
         {
            this._1762562555allAddPropCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allAddPropCanvas",_loc2_,param1));
         }
      }
      
      public function ___StoneSealPanel_VBox10_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 10;
         refreshSelectPropTxt();
      }
      
      private function onSwap(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            charFlag = param1["data"];
            setSealStone();
            refreshAddPropTxt();
         }
      }
      
      public function ___StoneSealPanel_VBox5_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 5;
         refreshSelectPropTxt();
      }
      
      private function setSealStone() : void
      {
         var _loc1_:Object = {};
         if(Boolean(charFlag) && Boolean(charFlag[equipSid]) && Boolean(charFlag[equipSid]["data"]))
         {
            _loc1_ = charFlag[equipSid]["data"];
         }
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            if(this["sealStone" + _loc2_])
            {
               this["sealStone" + _loc2_].enabled = true;
               if(isNaN(_loc1_["s" + (_loc2_ + 1)]))
               {
                  this["sealStone" + _loc2_].setOpen(false);
               }
               else if(int(_loc1_["s" + (_loc2_ + 1)]) > -1)
               {
                  this["sealStone" + _loc2_].setOpen(true,int(_loc1_["s" + (_loc2_ + 1)]));
               }
               else
               {
                  this["sealStone" + _loc2_].setOpen(false);
               }
            }
            _loc2_++;
         }
         refreshSelectPropTxt();
      }
      
      private function _StoneSealPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STONE_SEAL_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            equipItem.slotType = param1;
         },"equipItem.slotType");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone0.movable = param1;
         },"sealStone0.movable");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone0.acceptable = param1;
         },"sealStone0.acceptable");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone1.movable = param1;
         },"sealStone1.movable");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone1.acceptable = param1;
         },"sealStone1.acceptable");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone2.movable = param1;
         },"sealStone2.movable");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone2.acceptable = param1;
         },"sealStone2.acceptable");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone3.movable = param1;
         },"sealStone3.movable");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone3.acceptable = param1;
         },"sealStone3.acceptable");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone4.movable = param1;
         },"sealStone4.movable");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone4.acceptable = param1;
         },"sealStone4.acceptable");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone5.movable = param1;
         },"sealStone5.movable");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone5.acceptable = param1;
         },"sealStone5.acceptable");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone6.movable = param1;
         },"sealStone6.movable");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone6.acceptable = param1;
         },"sealStone6.acceptable");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone7.movable = param1;
         },"sealStone7.movable");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone7.acceptable = param1;
         },"sealStone7.acceptable");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone8.movable = param1;
         },"sealStone8.movable");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone8.acceptable = param1;
         },"sealStone8.acceptable");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone9.movable = param1;
         },"sealStone9.movable");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isWatch;
         },function(param1:Boolean):void
         {
            sealStone9.acceptable = param1;
         },"sealStone9.acceptable");
         result[21] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _StoneSealPanel_LinkButton1.setStyle("overSkin",param1);
         },"_StoneSealPanel_LinkButton1.overSkin");
         result[22] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _StoneSealPanel_LinkButton1.setStyle("upSkin",param1);
         },"_StoneSealPanel_LinkButton1.upSkin");
         result[23] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _StoneSealPanel_LinkButton1.setStyle("downSkin",param1);
         },"_StoneSealPanel_LinkButton1.downSkin");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STONE_SEAL_PANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StoneSealPanel_LinkButton1.label = param1;
         },"_StoneSealPanel_LinkButton1.label");
         result[25] = binding;
         return result;
      }
      
      private function setEquipStone(param1:GameDataEvent = null) : void
      {
         var _loc5_:int = 0;
         if(!equipSlot)
         {
            return;
         }
         var _loc2_:Object = getEquipInfo();
         if(!_loc2_)
         {
            if(!isWatch)
            {
               _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + equipSlot.type + "_" + equipSlot.itemId,setEquipStone);
            }
            return;
         }
         var _loc3_:int = int(_loc2_.holeNum);
         var _loc4_:int = 0;
         while(_loc4_ < 10)
         {
            _loc5_ = int(_loc2_["t" + (_loc4_ + 1)]);
            if(_loc5_ > 0)
            {
               this["equipStone" + _loc4_].selected = false;
               this["equipStone" + _loc4_].type = GamePredef.TBL_ITEM_TEMPLATE;
               this["equipStone" + _loc4_].giid = _loc5_;
            }
            else
            {
               this["equipStone" + _loc4_].selected = false;
               this["equipStone" + _loc4_].clean();
            }
            this["equipStone" + _loc4_].enabled = _loc4_ + 1 <= _loc3_;
            _loc4_++;
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc9_:String = null;
         var _loc10_:Class = null;
         var _loc11_:UIComponent = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("map") as Class;
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.gotoAndStop(1);
         container1.addChild(_loc3_);
         var _loc4_:int = 1;
         _loc4_ = 1;
         while(_loc4_ <= 12)
         {
            _loc9_ = "btn" + _loc4_;
            if(load.contentLoaderInfo.applicationDomain.hasDefinition(_loc9_))
            {
               _loc10_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc9_) as Class;
               _loc11_ = new UIComponent();
               _loc12_ = new _loc10_();
               _loc12_.gotoAndStop(1);
               _loc11_.addChild(_loc12_);
               btnsCanvas.addChild(_loc11_);
               _loc11_.x = mcPositions[_loc4_][0];
               _loc11_.y = mcPositions[_loc4_][1];
               _loc11_.toolTip = Language.GAMEPREDEF_S[299 + _loc4_];
               _loc12_.addEventListener(MouseEvent.CLICK,btnClick);
               btns[_loc4_] = _loc12_;
            }
            _loc4_++;
         }
         var _loc5_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("equipNameMC") as Class;
         equipNameMC = new _loc5_();
         equipNameMC.x = 168;
         equipNameMC.y = 136;
         equipNameMC.gotoAndStop(1);
         equipNameMC.visible = false;
         btnsCanvas.addChild(equipNameMC);
         var _loc6_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("sealMC") as Class;
         sealMC = new _loc6_();
         sealMC.x = 160;
         sealMC.y = 208;
         sealMC.gotoAndStop(1);
         btnsCanvas.addChildAt(sealMC,1);
         var _loc7_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("removeAllBtn") as Class;
         removeAllBtn = new _loc7_();
         removeAllBtn.x = 447;
         removeAllBtn.y = 279;
         removeAllBtn.addEventListener(MouseEvent.CLICK,removeAllStone);
         btnsCanvas2.addChild(removeAllBtn);
         var _loc8_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("sealBtn") as Class;
         sealBtn = new _loc8_();
         sealBtn.gotoAndStop(1);
         sealBtn.x = 327;
         sealBtn.y = 279;
         sealBtn.addEventListener(MouseEvent.CLICK,toSuccinct);
         btnsCanvas2.addChild(sealBtn);
         _loc4_ = 0;
         while(_loc4_ < 10)
         {
            _loc13_ = load.contentLoaderInfo.applicationDomain.getDefinition("sealIcons") as Class;
            _loc14_ = new _loc13_();
            _loc14_.gotoAndStop(_loc14_.totalFrames);
            _loc11_ = new UIComponent();
            _loc11_.addChild(_loc14_);
            this["addStone" + _loc4_].addChild(_loc11_);
            sealIcons[_loc4_] = _loc14_;
            _loc4_++;
         }
         res_load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
      }
      
      private function getHoleNumber() : int
      {
         if(!charFlag || !charFlag[equipSid] || !charFlag[equipSid]["data"])
         {
            return 0;
         }
         var _loc1_:Object = charFlag[equipSid]["data"];
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         while(_loc3_ <= 10)
         {
            if(!isNaN(_loc1_["s" + _loc3_]) && int(_loc1_["s" + _loc3_]) > -1)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnsCanvas2() : UIComponent
      {
         return this._1804642237btnsCanvas2;
      }
      
      private function getEquipInfo() : Object
      {
         if(isWatch)
         {
            return watchEquips[equipSlot.itemId];
         }
         return _core.data.getGameData(equipSlot.type,equipSlot.itemId);
      }
      
      public function set allAddPropTxt2(param1:Text) : void
      {
         var _loc2_:Object = this._1633645861allAddPropTxt2;
         if(_loc2_ !== param1)
         {
            this._1633645861allAddPropTxt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allAddPropTxt2",_loc2_,param1));
         }
      }
      
      private function refreshSelectPropTxt(param1:GameDataEvent = null) : void
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc2_:int = 1;
         var _loc3_:Object = {};
         if(Boolean(charFlag) && Boolean(charFlag[equipSid]) && Boolean(charFlag[equipSid]["data"]))
         {
            _loc3_ = charFlag[equipSid]["data"];
            _loc2_ = int(charFlag[equipSid]["lvl"]);
         }
         if(sealMC)
         {
            sealMC.gotoAndStop(_loc2_);
         }
         if(!equipSlot)
         {
            return;
         }
         selectTxt1.htmlText = Language.STONE_SEAL_PANEL_U[25].toString().replace("{num}",selectIndex);
         selectTxt2.htmlText = Language.STONE_SEAL_PANEL_U[1];
         selectTxt3.htmlText = Language.STONE_SEAL_PANEL_U[2];
         selectTxt4.htmlText = Language.STONE_SEAL_PANEL_U[26];
         var _loc4_:Object = getEquipInfo();
         if(!_loc4_ && !isWatch)
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + equipSlot.type + "_" + equipSlot.itemId,refreshSelectPropTxt);
            return;
         }
         if(!_loc4_)
         {
            _loc4_ = {};
         }
         var _loc5_:int = int(_loc4_["t" + selectIndex]);
         var _loc6_:Object = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc5_];
         if(_loc6_)
         {
            if(int(_loc6_.propType) == 0)
            {
               selectTxt2.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[39] + "</font>";
            }
            else
            {
               selectTxt2.htmlText += "<font color=\'#00FFFF\'>" + GamePredef.JEWEL_PROP_NAME[_loc6_.propType] + " +" + _loc6_.proplNum + "</font>";
            }
         }
         else
         {
            selectTxt2.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[22] + "</font>";
         }
         var _loc7_:int = int(_loc3_["s" + selectIndex]);
         var _loc8_:Object = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc7_];
         if(_loc3_["s" + selectIndex] == "-1" || _loc7_ == -1)
         {
            selectTxt3.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[23] + "</font>";
         }
         else if(_loc8_)
         {
            if(int(_loc8_.propType) == 0)
            {
               selectTxt3.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[39] + "</font>";
            }
            else if(Boolean(_loc6_) && _loc6_.propType == _loc8_.propType)
            {
               _loc9_ = Math.min(_loc6_.propType,_loc8_.propType);
               _loc10_ = Math.max(_loc6_.propType,_loc8_.propType);
               _loc11_ = getWeakenNum(_loc9_,_loc10_);
               _loc12_ = _loc11_ * _loc8_.proplNum;
               _loc12_ = Math.floor(_loc12_ * 100) / 100;
               selectTxt3.htmlText += "<font color=\'#00FFFF\'>" + GamePredef.JEWEL_PROP_NAME[_loc8_.propType] + " +" + _loc12_ + "</font>";
               selectTxt3.htmlText += Language.STONE_SEAL_PANEL_U[28];
            }
            else
            {
               selectTxt3.htmlText += "<font color=\'#00FFFF\'>" + GamePredef.JEWEL_PROP_NAME[_loc8_.propType] + " +" + _loc8_.proplNum + "</font>";
            }
         }
         else
         {
            selectTxt3.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[24] + "</font>";
         }
         if(Boolean(_loc6_ && _loc8_) && Boolean(int(_loc6_.propType) > 0) && int(_loc8_.propType) > 0)
         {
            _loc13_ = int(_loc6_.propType);
            _loc14_ = int(_loc8_.propType);
            _loc15_ = Math.min(_loc13_,_loc14_);
            _loc16_ = Math.max(_loc13_,_loc14_);
            _loc17_ = int(STONE_SEAL_CONF_EXTRA_PROPERTY[_loc15_][_loc16_]["n"]);
            if(_loc17_ == 0)
            {
               selectTxt4.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[27] + "</font>";
            }
            else
            {
               _loc18_ = Number(_loc6_.proplNum);
               _loc19_ = Number(_loc8_.proplNum);
               _loc20_ = Number(STONE_SEAL_CONF_EXTRA_PROPERTY[_loc15_][_loc16_]["v"]);
               _loc20_ = _loc20_ / 10000 * getAddPropNum(_loc6_.color,_loc8_.color) * STONE_SEAL_SUCCINCT_CONF[_loc2_];
               _loc20_ = Math.floor(_loc20_ * 100) / 100;
               selectTxt4.htmlText += "<font color=\'#00FFFF\'>" + Language.BUFF_PROP_NAME_ARR[_loc17_] + " +" + _loc20_ + "</font>";
            }
         }
         else
         {
            selectTxt4.htmlText += "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[27] + "</font>";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      public function toBore(param1:int) : void
      {
         if(param1 < 1 || param1 > 10)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_STONE_SEAL_BORE);
         if(_loc2_)
         {
            _loc2_.showPanel(this,1,equipSid,getHoleNumber(),param1,-1);
         }
      }
      
      public function ___StoneSealPanel_VBox8_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 8;
         refreshSelectPropTxt();
      }
      
      public function set allAddPropTxt1(param1:Text) : void
      {
         var _loc2_:Object = this._1633645860allAddPropTxt1;
         if(_loc2_ !== param1)
         {
            this._1633645860allAddPropTxt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allAddPropTxt1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone1() : ItemSlotStoneSeal
      {
         return this._769133addStone1;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone3() : ItemSlotStoneSeal
      {
         return this._769135addStone3;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone5() : ItemSlotStoneSeal
      {
         return this._769137addStone5;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone6() : ItemSlotStoneSeal
      {
         return this._769138addStone6;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone0() : ItemSlotStoneSeal
      {
         return this._769132addStone0;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone2() : ItemSlotStoneSeal
      {
         return this._769134addStone2;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone7() : ItemSlotStoneSeal
      {
         return this._769139addStone7;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone8() : ItemSlotStoneSeal
      {
         return this._769140addStone8;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone4() : ItemSlotStoneSeal
      {
         return this._769136addStone4;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStone9() : ItemSlotStoneSeal
      {
         return this._769141addStone9;
      }
      
      [Bindable(event="propertyChange")]
      private function get equipSid() : int
      {
         return this._588885630equipSid;
      }
      
      public function set btnsCanvas2(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1804642237btnsCanvas2;
         if(_loc2_ !== param1)
         {
            this._1804642237btnsCanvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnsCanvas2",_loc2_,param1));
         }
      }
      
      private function btnClick(param1:MouseEvent) : void
      {
         var _loc2_:Object = param1.currentTarget;
         var _loc3_:int = btns.indexOf(_loc2_);
         if(_loc3_ >= 1 && _loc3_ <= 12)
         {
            equipSid = _loc3_;
            equipClick();
         }
      }
      
      public function ___StoneSealPanel_VBox3_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 3;
         refreshSelectPropTxt();
      }
      
      public function onEquipChange() : void
      {
         if(visible && initialized)
         {
            equipClick();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne0() : Image
      {
         return this._738071901iconOne0;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne4() : Image
      {
         return this._738071897iconOne4;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne5() : Image
      {
         return this._738071896iconOne5;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne6() : Image
      {
         return this._738071895iconOne6;
      }
      
      public function ___StoneSealPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne1() : Image
      {
         return this._738071900iconOne1;
      }
      
      public function onSuccinct(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            charFlag = param1["data"];
            setSealStone();
            refreshAddPropTxt();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne7() : Image
      {
         return this._738071894iconOne7;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne8() : Image
      {
         return this._738071893iconOne8;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne9() : Image
      {
         return this._738071892iconOne9;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne2() : Image
      {
         return this._738071899iconOne2;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone0() : ItemSlotJewel
      {
         return this._1439005509equipStone0;
      }
      
      public function toSwap(param1:int, param2:int) : void
      {
         if(isWatch)
         {
            return;
         }
         if(param1 < 1 || param1 > 10)
         {
            return;
         }
         if(equipSid >= EQUIP_ID_MIN && equipSid <= EQUIP_ID_MAX)
         {
            _core.remote.call("stoneSealSwapStone",new Responder(onSwap),equipSid,param1,param2);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone3() : ItemSlotJewel
      {
         return this._1439005506equipStone3;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone5() : ItemSlotJewel
      {
         return this._1439005504equipStone5;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone6() : ItemSlotJewel
      {
         return this._1439005503equipStone6;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" stone seal load Error ");
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone2() : ItemSlotJewel
      {
         return this._1439005507equipStone2;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOne3() : Image
      {
         return this._738071898iconOne3;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone7() : ItemSlotJewel
      {
         return this._1439005502equipStone7;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone1() : ItemSlotJewel
      {
         return this._1439005508equipStone1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone4() : ItemSlotStoneSeal
      {
         return this._2108267724sealStone4;
      }
      
      public function set equipItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1075298147equipItem;
         if(_loc2_ !== param1)
         {
            this._1075298147equipItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipItem",_loc2_,param1));
         }
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.STONE_SEAL_PANEL_U[30].toString();
         _helpAlert = Alert.show(_loc1_,Language.STONE_SEAL_PANEL_U[30].toString(),Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone0() : ItemSlotStoneSeal
      {
         return this._2108267720sealStone0;
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone1() : ItemSlotStoneSeal
      {
         return this._2108267721sealStone1;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone8() : ItemSlotJewel
      {
         return this._1439005501equipStone8;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone9() : ItemSlotJewel
      {
         return this._1439005500equipStone9;
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone5() : ItemSlotStoneSeal
      {
         return this._2108267725sealStone5;
      }
      
      public function set prop(param1:Canvas) : void
      {
         var _loc2_:Object = this._3449699prop;
         if(_loc2_ !== param1)
         {
            this._3449699prop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone7() : ItemSlotStoneSeal
      {
         return this._2108267727sealStone7;
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone2() : ItemSlotStoneSeal
      {
         return this._2108267722sealStone2;
      }
      
      private function refresh() : void
      {
         equipClick();
      }
      
      public function set addStone2(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769134addStone2;
         if(_loc2_ !== param1)
         {
            this._769134addStone2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone2",_loc2_,param1));
         }
      }
      
      public function ___StoneSealPanel_VBox6_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 6;
         refreshSelectPropTxt();
      }
      
      public function set addStone4(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769136addStone4;
         if(_loc2_ !== param1)
         {
            this._769136addStone4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone4",_loc2_,param1));
         }
      }
      
      public function set addStone5(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769137addStone5;
         if(_loc2_ !== param1)
         {
            this._769137addStone5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone3() : ItemSlotStoneSeal
      {
         return this._2108267723sealStone3;
      }
      
      public function set addStone6(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769138addStone6;
         if(_loc2_ !== param1)
         {
            this._769138addStone6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone6",_loc2_,param1));
         }
      }
      
      public function set addStone3(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769135addStone3;
         if(_loc2_ !== param1)
         {
            this._769135addStone3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone3",_loc2_,param1));
         }
      }
      
      public function set addStone0(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769132addStone0;
         if(_loc2_ !== param1)
         {
            this._769132addStone0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone0",_loc2_,param1));
         }
      }
      
      public function set addStone1(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769133addStone1;
         if(_loc2_ !== param1)
         {
            this._769133addStone1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone1",_loc2_,param1));
         }
      }
      
      public function set addStone9(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769141addStone9;
         if(_loc2_ !== param1)
         {
            this._769141addStone9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _btnEnabled() : Boolean
      {
         return this._1710794012_btnEnabled;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipStone4() : ItemSlotJewel
      {
         return this._1439005505equipStone4;
      }
      
      public function set addStone7(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769139addStone7;
         if(_loc2_ !== param1)
         {
            this._769139addStone7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone7",_loc2_,param1));
         }
      }
      
      private function getWeakenNum(param1:int, param2:int) : Number
      {
         var _loc3_:Number = 1;
         if(Boolean(STONE_SEAL_CONF_NEGATIVE) && Boolean(STONE_SEAL_CONF_NEGATIVE[param1]) && STONE_SEAL_CONF_NEGATIVE[param1][param2] != null)
         {
            _loc3_ = Number(STONE_SEAL_CONF_NEGATIVE[param1][param2]);
         }
         return _loc3_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone6() : ItemSlotStoneSeal
      {
         return this._2108267726sealStone6;
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone9() : ItemSlotStoneSeal
      {
         return this._2108267729sealStone9;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectTxt2() : Label
      {
         return this._1655941410selectTxt2;
      }
      
      public function set iconTwo0(param1:Image) : void
      {
         var _loc2_:Object = this._737913987iconTwo0;
         if(_loc2_ !== param1)
         {
            this._737913987iconTwo0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sealStone8() : ItemSlotStoneSeal
      {
         return this._2108267728sealStone8;
      }
      
      public function set canvas6111(param1:Canvas) : void
      {
         var _loc2_:Object = this._1462326131canvas6111;
         if(_loc2_ !== param1)
         {
            this._1462326131canvas6111 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas6111",_loc2_,param1));
         }
      }
      
      private function btnEnable() : void
      {
         _btnEnabled = !isWatch && equipSid > 0;
      }
      
      public function set addStone8(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._769140addStone8;
         if(_loc2_ !== param1)
         {
            this._769140addStone8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStone8",_loc2_,param1));
         }
      }
      
      public function toRemove(param1:int) : void
      {
         if(isWatch)
         {
            return;
         }
         if(param1 < 1 || param1 > 10)
         {
            return;
         }
         if(equipSid >= EQUIP_ID_MIN && equipSid <= EQUIP_ID_MAX)
         {
            _core.remote.call("stoneSealRemoveStone",new Responder(onRemove),equipSid,param1);
         }
      }
      
      public function set iconTwo1(param1:Image) : void
      {
         var _loc2_:Object = this._737913986iconTwo1;
         if(_loc2_ !== param1)
         {
            this._737913986iconTwo1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo1",_loc2_,param1));
         }
      }
      
      public function set iconTwo2(param1:Image) : void
      {
         var _loc2_:Object = this._737913985iconTwo2;
         if(_loc2_ !== param1)
         {
            this._737913985iconTwo2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo2",_loc2_,param1));
         }
      }
      
      public function set iconTwo6(param1:Image) : void
      {
         var _loc2_:Object = this._737913981iconTwo6;
         if(_loc2_ !== param1)
         {
            this._737913981iconTwo6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo6",_loc2_,param1));
         }
      }
      
      public function showPanel(param1:Boolean, param2:Number = 0) : void
      {
         isWatch = param1;
         watchCid = param2;
         equipSid = -1;
         initView();
         resetAll();
         if(initialized)
         {
            equipClick();
         }
         visible = true;
         if(!_dm.sInited)
         {
            _core.remote.call("getInitSlot",new Responder(setSlot));
            return;
         }
      }
      
      public function set iconTwo8(param1:Image) : void
      {
         var _loc2_:Object = this._737913979iconTwo8;
         if(_loc2_ !== param1)
         {
            this._737913979iconTwo8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo8",_loc2_,param1));
         }
      }
      
      public function set iconTwo5(param1:Image) : void
      {
         var _loc2_:Object = this._737913982iconTwo5;
         if(_loc2_ !== param1)
         {
            this._737913982iconTwo5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo5",_loc2_,param1));
         }
      }
      
      public function set iconTwo9(param1:Image) : void
      {
         var _loc2_:Object = this._737913978iconTwo9;
         if(_loc2_ !== param1)
         {
            this._737913978iconTwo9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectTxt4() : Label
      {
         return this._1655941408selectTxt4;
      }
      
      public function set iconTwo3(param1:Image) : void
      {
         var _loc2_:Object = this._737913984iconTwo3;
         if(_loc2_ !== param1)
         {
            this._737913984iconTwo3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo3",_loc2_,param1));
         }
      }
      
      public function set iconTwo4(param1:Image) : void
      {
         var _loc2_:Object = this._737913983iconTwo4;
         if(_loc2_ !== param1)
         {
            this._737913983iconTwo4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo4",_loc2_,param1));
         }
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectTxt1() : Label
      {
         return this._1655941411selectTxt1;
      }
      
      public function ___StoneSealPanel_VBox1_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 1;
         refreshSelectPropTxt();
      }
      
      private function set equipSid(param1:int) : void
      {
         var _loc2_:Object = this._588885630equipSid;
         if(_loc2_ !== param1)
         {
            this._588885630equipSid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipSid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allAddPropTxt2() : Text
      {
         return this._1633645861allAddPropTxt2;
      }
      
      public function ___StoneSealPanel_VBox9_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 9;
         refreshSelectPropTxt();
      }
      
      public function set iconTwo7(param1:Image) : void
      {
         var _loc2_:Object = this._737913980iconTwo7;
         if(_loc2_ !== param1)
         {
            this._737913980iconTwo7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTwo7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allAddPropTxt1() : Text
      {
         return this._1633645860allAddPropTxt1;
      }
      
      private function onStoneSealSetStone(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            charFlag = param1["data"];
            setSealStone();
            refreshAddPropTxt();
         }
      }
      
      private function toSuccinct(param1:MouseEvent) : void
      {
         var _loc2_:int = 1;
         if(Boolean(charFlag) && Boolean(charFlag[equipSid]))
         {
            _loc2_ = int(charFlag[equipSid]["lvl"]);
         }
         if(_loc2_ >= 5)
         {
            Alert.show(Language.STONE_SEAL_PANEL_U[33],Language.STONE_SEAL_PANEL_U[33],Alert.YES,null,null);
            return;
         }
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_STONE_SEAL_BORE);
         if(_loc3_)
         {
            _loc3_.showPanel(this,2,equipSid,-1,-1,_loc2_);
         }
      }
      
      public function onGetData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!inited)
         {
            getRes();
            inited = true;
         }
         charFlag = param1["data"];
         isWatch = param1["watch"];
         watchEquips = param1["equip"];
         watchSlots = param1["slot"];
         setSealStone();
         btnEnable();
         if(equipSid == -1)
         {
            equipSid = 3;
            equipClick();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectTxt3() : Label
      {
         return this._1655941409selectTxt3;
      }
      
      private function onRemove(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            charFlag = param1["data"];
            setSealStone();
            refreshAddPropTxt();
         }
      }
      
      public function stoneSealSetStone(param1:ItemSlot, param2:ItemSlotStoneSeal) : void
      {
         if(isWatch || !_btnEnabled)
         {
            return;
         }
         if(param2.sealIndex >= 0)
         {
            _core.remote.call("stoneSealSetStone",new Responder(onStoneSealSetStone),equipSid,param2.sealIndex,param1.slotData.id,param1.tempBagFlag);
         }
      }
      
      public function set iconOne0(param1:Image) : void
      {
         var _loc2_:Object = this._738071901iconOne0;
         if(_loc2_ !== param1)
         {
            this._738071901iconOne0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne0",_loc2_,param1));
         }
      }
      
      private function equipClick() : void
      {
         var _loc2_:Object = null;
         if(!_dm.sInited)
         {
            return;
         }
         resetAll();
         var _loc1_:Object = null;
         if(isWatch)
         {
            _loc1_ = watchSlots || {};
         }
         else
         {
            _loc1_ = _dm.sList;
         }
         for each(_loc2_ in _loc1_)
         {
            if(Boolean(_loc2_) && int(_loc2_.sid) == equipSid)
            {
               this["equipItem"].slotData = _loc2_;
               this["equipItem"].type = _loc2_.type;
               this["equipItem"].giid = _loc2_.itemId;
               equipSlot = _loc2_;
               setEquipStone();
               break;
            }
         }
         setSealStone();
         if(equipNameMC)
         {
            equipNameMC.gotoAndStop(equipSid);
            equipNameMC.visible = true;
         }
         refreshAddPropTxt();
         btnEnable();
      }
      
      public function set iconOne1(param1:Image) : void
      {
         var _loc2_:Object = this._738071900iconOne1;
         if(_loc2_ !== param1)
         {
            this._738071900iconOne1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne1",_loc2_,param1));
         }
      }
      
      private function getAddPropNum(param1:int, param2:int) : Number
      {
         return param1 + param2 + 2;
      }
      
      public function set iconOne2(param1:Image) : void
      {
         var _loc2_:Object = this._738071899iconOne2;
         if(_loc2_ !== param1)
         {
            this._738071899iconOne2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne2",_loc2_,param1));
         }
      }
      
      public function set iconOne3(param1:Image) : void
      {
         var _loc2_:Object = this._738071898iconOne3;
         if(_loc2_ !== param1)
         {
            this._738071898iconOne3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne3",_loc2_,param1));
         }
      }
      
      public function set iconOne7(param1:Image) : void
      {
         var _loc2_:Object = this._738071894iconOne7;
         if(_loc2_ !== param1)
         {
            this._738071894iconOne7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne7",_loc2_,param1));
         }
      }
      
      public function set iconOne4(param1:Image) : void
      {
         var _loc2_:Object = this._738071897iconOne4;
         if(_loc2_ !== param1)
         {
            this._738071897iconOne4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne4",_loc2_,param1));
         }
      }
      
      public function ___StoneSealPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      public function set iconOne9(param1:Image) : void
      {
         var _loc2_:Object = this._738071892iconOne9;
         if(_loc2_ !== param1)
         {
            this._738071892iconOne9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne9",_loc2_,param1));
         }
      }
      
      public function ___StoneSealPanel_VBox4_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 4;
         refreshSelectPropTxt();
      }
      
      public function set canvas51111(param1:Canvas) : void
      {
         var _loc2_:Object = this._1913453667canvas51111;
         if(_loc2_ !== param1)
         {
            this._1913453667canvas51111 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas51111",_loc2_,param1));
         }
      }
      
      public function set iconOne8(param1:Image) : void
      {
         var _loc2_:Object = this._738071893iconOne8;
         if(_loc2_ !== param1)
         {
            this._738071893iconOne8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne8",_loc2_,param1));
         }
      }
      
      public function set iconOne5(param1:Image) : void
      {
         var _loc2_:Object = this._738071896iconOne5;
         if(_loc2_ !== param1)
         {
            this._738071896iconOne5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equipItem() : ItemSlot
      {
         return this._1075298147equipItem;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            if(this["sealStone" + _loc1_])
            {
               this["sealStone" + _loc1_].sealIndex = _loc1_ + 1;
               this["sealStone" + _loc1_].styleName = "";
            }
            if(this["equipStone" + _loc1_])
            {
               this["equipStone" + _loc1_].styleName = "";
            }
            if(this["addStone" + _loc1_])
            {
               this["addStone" + _loc1_].styleName = "";
            }
            if(this["iconOne" + _loc1_])
            {
               serImageSouce(this["iconOne" + _loc1_],ResManager.getIconUrl(4130220000375));
            }
            if(this["iconTwo" + _loc1_])
            {
               serImageSouce(this["iconTwo" + _loc1_],ResManager.getIconUrl(4130220000378));
            }
            _loc1_++;
         }
         if(equipItem)
         {
            equipItem.styleName = "";
         }
      }
      
      private function getRes() : void
      {
         if(res_load_state != 0)
         {
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130101004)));
            res_load_state = 1;
         }
      }
      
      private function onRemoveAll(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            charFlag = param1["data"];
            setSealStone();
            refreshAddPropTxt();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas6111() : Canvas
      {
         return this._1462326131canvas6111;
      }
      
      public function set equipStone2(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005507equipStone2;
         if(_loc2_ !== param1)
         {
            this._1439005507equipStone2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop() : Canvas
      {
         return this._3449699prop;
      }
      
      public function set equipStone3(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005506equipStone3;
         if(_loc2_ !== param1)
         {
            this._1439005506equipStone3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone3",_loc2_,param1));
         }
      }
      
      public function set equipStone0(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005509equipStone0;
         if(_loc2_ !== param1)
         {
            this._1439005509equipStone0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone0",_loc2_,param1));
         }
      }
      
      public function set equipStone4(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005505equipStone4;
         if(_loc2_ !== param1)
         {
            this._1439005505equipStone4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone4",_loc2_,param1));
         }
      }
      
      private function refreshAddPropTxt(param1:GameDataEvent = null) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:MovieClip = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         allAddPropTxt1.htmlText = "";
         allAddPropTxt2.htmlText = "";
         allAddPropLag.htmlText = "";
         if(!equipSlot)
         {
            return;
         }
         var _loc2_:Object = getEquipInfo();
         if(!_loc2_ && !isWatch)
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + equipSlot.type + "_" + equipSlot.itemId,refreshAddPropTxt);
            return;
         }
         var _loc3_:Object = {};
         var _loc4_:int = 1;
         if(Boolean(charFlag) && Boolean(charFlag[equipSid]) && Boolean(charFlag[equipSid]["data"]))
         {
            _loc3_ = charFlag[equipSid]["data"];
            _loc4_ = int(charFlag[equipSid]["lvl"]);
         }
         allAddPropLag.htmlText = Language.STONE_SEAL_PANEL_U[3].toString().replace("{num}",_loc4_);
         if(!_loc2_)
         {
            _loc2_ = {};
         }
         var _loc5_:int = 0;
         var _loc6_:int = 1;
         while(_loc6_ <= 10)
         {
            _loc7_ = int(_loc2_["t" + _loc6_]);
            _loc8_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc7_];
            _loc9_ = int(_loc3_["s" + _loc6_]);
            _loc10_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc9_];
            _loc11_ = sealIcons[_loc6_ - 1];
            if(Boolean(_loc8_ && _loc10_) && Boolean(int(_loc8_.propType) > 0) && int(_loc10_.propType) > 0)
            {
               _loc12_ = int(_loc8_.propType);
               _loc13_ = int(_loc10_.propType);
               _loc14_ = Math.min(_loc12_,_loc13_);
               _loc15_ = Math.max(_loc12_,_loc13_);
               _loc16_ = int(STONE_SEAL_CONF_EXTRA_PROPERTY[_loc14_][_loc15_]["n"]);
               _loc17_ = getWeakenNum(_loc14_,_loc15_);
               if(_loc16_ == 0)
               {
                  if(_loc11_)
                  {
                     _loc11_.gotoAndStop(_loc11_.totalFrames);
                  }
               }
               else
               {
                  _loc18_ = Number(_loc8_.proplNum);
                  _loc19_ = Number(_loc10_.proplNum);
                  _loc20_ = Number(STONE_SEAL_CONF_EXTRA_PROPERTY[_loc14_][_loc15_]["v"]);
                  _loc20_ = _loc20_ / 10000 * getAddPropNum(_loc8_.color,_loc10_.color) * STONE_SEAL_SUCCINCT_CONF[_loc4_];
                  _loc20_ = Math.floor(_loc20_ * 100) / 100;
                  this["addStone" + (_loc6_ - 1)].toolTip = Language.BUFF_PROP_NAME_ARR[_loc16_] + " +" + _loc20_;
                  if(_loc11_)
                  {
                     _loc11_.gotoAndStop(_loc16_);
                  }
                  if(_loc5_ % 2 == 0)
                  {
                     allAddPropTxt1.htmlText += Language.BUFF_PROP_NAME_ARR[_loc16_] + " +" + _loc20_ + "\n";
                  }
                  else
                  {
                     allAddPropTxt2.htmlText += Language.BUFF_PROP_NAME_ARR[_loc16_] + " +" + _loc20_ + "\n";
                  }
                  _loc5_++;
               }
               if(_loc17_ == 1)
               {
                  serImageSouce(this["iconOne" + (_loc6_ - 1)],ResManager.getIconUrl(4130220000376));
                  serImageSouce(this["iconTwo" + (_loc6_ - 1)],ResManager.getIconUrl(4130220000379));
               }
               else
               {
                  serImageSouce(this["iconOne" + (_loc6_ - 1)],ResManager.getIconUrl(4130220000377));
                  serImageSouce(this["iconTwo" + (_loc6_ - 1)],ResManager.getIconUrl(4130220000380));
               }
            }
            else
            {
               if(_loc11_)
               {
                  _loc11_.gotoAndStop(_loc11_.totalFrames);
               }
               serImageSouce(this["iconOne" + (_loc6_ - 1)],ResManager.getIconUrl(4130220000375));
               serImageSouce(this["iconTwo" + (_loc6_ - 1)],ResManager.getIconUrl(4130220000378));
            }
            _loc6_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo6() : Image
      {
         return this._737913981iconTwo6;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo1() : Image
      {
         return this._737913986iconTwo1;
      }
      
      public function set equipStone8(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005501equipStone8;
         if(_loc2_ !== param1)
         {
            this._1439005501equipStone8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone8",_loc2_,param1));
         }
      }
      
      private function setSlot(param1:Object) : void
      {
         _dm.initSlotData(param1);
         equipClick();
      }
      
      public function set equipStone9(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005500equipStone9;
         if(_loc2_ !== param1)
         {
            this._1439005500equipStone9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone9",_loc2_,param1));
         }
      }
      
      public function set equipStone6(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005503equipStone6;
         if(_loc2_ !== param1)
         {
            this._1439005503equipStone6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo0() : Image
      {
         return this._737913987iconTwo0;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo9() : Image
      {
         return this._737913978iconTwo9;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo2() : Image
      {
         return this._737913985iconTwo2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StoneSealPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StoneSealPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StoneSealPanelWatcherSetupUtil");
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
      public function get iconTwo5() : Image
      {
         return this._737913982iconTwo5;
      }
      
      public function set sealStone1(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267721sealStone1;
         if(_loc2_ !== param1)
         {
            this._2108267721sealStone1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone1",_loc2_,param1));
         }
      }
      
      public function set equipStone7(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005502equipStone7;
         if(_loc2_ !== param1)
         {
            this._1439005502equipStone7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo4() : Image
      {
         return this._737913983iconTwo4;
      }
      
      public function set equipStone1(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005508equipStone1;
         if(_loc2_ !== param1)
         {
            this._1439005508equipStone1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone1",_loc2_,param1));
         }
      }
      
      private function serImageSouce(param1:Image, param2:String) : void
      {
         if(Boolean(param1) && param1.source != param2)
         {
            param1.source = param2;
         }
      }
      
      public function set sealStone5(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267725sealStone5;
         if(_loc2_ !== param1)
         {
            this._2108267725sealStone5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone5",_loc2_,param1));
         }
      }
      
      public function set equipStone5(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._1439005504equipStone5;
         if(_loc2_ !== param1)
         {
            this._1439005504equipStone5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipStone5",_loc2_,param1));
         }
      }
      
      public function set sealStone2(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267722sealStone2;
         if(_loc2_ !== param1)
         {
            this._2108267722sealStone2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone2",_loc2_,param1));
         }
      }
      
      public function set iconOne6(param1:Image) : void
      {
         var _loc2_:Object = this._738071895iconOne6;
         if(_loc2_ !== param1)
         {
            this._738071895iconOne6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOne6",_loc2_,param1));
         }
      }
      
      public function set container1(param1:UIComponent) : void
      {
         var _loc2_:Object = this._145245136container1;
         if(_loc2_ !== param1)
         {
            this._145245136container1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container1",_loc2_,param1));
         }
      }
      
      public function set sealStone0(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267720sealStone0;
         if(_loc2_ !== param1)
         {
            this._2108267720sealStone0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone0",_loc2_,param1));
         }
      }
      
      public function set sealStone6(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267726sealStone6;
         if(_loc2_ !== param1)
         {
            this._2108267726sealStone6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas51111() : Canvas
      {
         return this._1913453667canvas51111;
      }
      
      public function ___StoneSealPanel_VBox7_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 7;
         refreshSelectPropTxt();
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo8() : Image
      {
         return this._737913979iconTwo8;
      }
      
      public function set allAddPropLag(param1:Label) : void
      {
         var _loc2_:Object = this._1161068495allAddPropLag;
         if(_loc2_ !== param1)
         {
            this._1161068495allAddPropLag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allAddPropLag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo3() : Image
      {
         return this._737913984iconTwo3;
      }
      
      public function set sealStone4(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267724sealStone4;
         if(_loc2_ !== param1)
         {
            this._2108267724sealStone4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone4",_loc2_,param1));
         }
      }
      
      public function set selectTxt2(param1:Label) : void
      {
         var _loc2_:Object = this._1655941410selectTxt2;
         if(_loc2_ !== param1)
         {
            this._1655941410selectTxt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTxt2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTwo7() : Image
      {
         return this._737913980iconTwo7;
      }
      
      public function onBore(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            charFlag = param1["data"];
            setSealStone();
            refreshAddPropTxt();
         }
      }
      
      public function set selectTxt1(param1:Label) : void
      {
         var _loc2_:Object = this._1655941411selectTxt1;
         if(_loc2_ !== param1)
         {
            this._1655941411selectTxt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTxt1",_loc2_,param1));
         }
      }
      
      public function set selectTxt3(param1:Label) : void
      {
         var _loc2_:Object = this._1655941409selectTxt3;
         if(_loc2_ !== param1)
         {
            this._1655941409selectTxt3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTxt3",_loc2_,param1));
         }
      }
      
      private function _StoneSealPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STONE_SEAL_PANEL_U[0];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = !isWatch;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.STONE_SEAL_PANEL_U[29];
      }
      
      public function set selectTxt4(param1:Label) : void
      {
         var _loc2_:Object = this._1655941408selectTxt4;
         if(_loc2_ !== param1)
         {
            this._1655941408selectTxt4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTxt4",_loc2_,param1));
         }
      }
      
      private function set _btnEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1710794012_btnEnabled;
         if(_loc2_ !== param1)
         {
            this._1710794012_btnEnabled = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_btnEnabled",_loc2_,param1));
         }
      }
      
      public function set sealStone8(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267728sealStone8;
         if(_loc2_ !== param1)
         {
            this._2108267728sealStone8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container1() : UIComponent
      {
         return this._145245136container1;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(!isWatch)
         {
            _core.remote.call("stoneSealGetData",new Responder(onGetData));
         }
         else
         {
            onGetData(watchData);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allAddPropLag() : Label
      {
         return this._1161068495allAddPropLag;
      }
      
      public function set btnsCanvas(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1859329585btnsCanvas;
         if(_loc2_ !== param1)
         {
            this._1859329585btnsCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnsCanvas",_loc2_,param1));
         }
      }
      
      private function resetAll() : void
      {
         var _loc2_:MovieClip = null;
         if(!initialized)
         {
            return;
         }
         var _loc1_:int = 0;
         if(this["equipItem"])
         {
            this["equipItem"].clean();
            this["equipItem"].slotData = null;
            this["equipItem"].type = 0;
            this["equipItem"].giid = 0;
         }
         _loc1_ = 0;
         while(_loc1_ < 10)
         {
            if(this["equipStone" + _loc1_])
            {
               this["equipStone" + _loc1_].clean();
               this["equipStone" + _loc1_].selected = false;
               this["equipStone" + _loc1_].type = 0;
               this["equipStone" + _loc1_].giid = 0;
               this["equipStone" + _loc1_].enabled = true;
            }
            if(this["sealStone" + _loc1_])
            {
               this["sealStone" + _loc1_].setOpen(false);
               this["sealStone" + _loc1_].enabled = false;
            }
            if(this["addStone" + _loc1_])
            {
               this["addStone" + _loc1_].toolTip = Language.STONE_SEAL_PANEL_U[31];
               _loc2_ = sealIcons[_loc1_];
               if(_loc2_)
               {
                  _loc2_.gotoAndStop(_loc2_.totalFrames);
               }
            }
            if(this["iconOne" + _loc1_])
            {
               serImageSouce(this["iconOne" + _loc1_],ResManager.getIconUrl(4130220000375));
            }
            if(this["iconTwo" + _loc1_])
            {
               serImageSouce(this["iconTwo" + _loc1_],ResManager.getIconUrl(4130220000378));
            }
            _loc1_++;
         }
         if(allAddPropTxt1)
         {
            allAddPropTxt1.htmlText = "";
         }
         if(allAddPropTxt2)
         {
            allAddPropTxt2.htmlText = "";
         }
         if(allAddPropLag)
         {
            allAddPropLag.htmlText = "";
         }
         equipSlot = null;
         if(selectTxt1)
         {
            selectTxt1.htmlText = Language.STONE_SEAL_PANEL_U[25].toString().replace("{num}",1);
         }
         if(selectTxt2)
         {
            selectTxt2.htmlText = Language.STONE_SEAL_PANEL_U[1] + "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[22] + "</font>";
         }
         if(selectTxt3)
         {
            selectTxt3.htmlText = Language.STONE_SEAL_PANEL_U[2] + "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[24] + "</font>";
         }
         if(selectTxt4)
         {
            selectTxt4.htmlText = Language.STONE_SEAL_PANEL_U[26] + "<font color=\'#00FFFF\'>" + Language.STONE_SEAL_PANEL_U[27] + "</font>";
         }
      }
      
      public function set sealStone9(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267729sealStone9;
         if(_loc2_ !== param1)
         {
            this._2108267729sealStone9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone9",_loc2_,param1));
         }
      }
      
      public function set sealStone3(param1:ItemSlotStoneSeal) : void
      {
         var _loc2_:Object = this._2108267723sealStone3;
         if(_loc2_ !== param1)
         {
            this._2108267723sealStone3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sealStone3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnsCanvas() : UIComponent
      {
         return this._1859329585btnsCanvas;
      }
      
      public function ___StoneSealPanel_VBox2_mouseOver(param1:MouseEvent) : void
      {
         selectIndex = 2;
         refreshSelectPropTxt();
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedPropCanvas() : Canvas
      {
         return this._1625307030selectedPropCanvas;
      }
      
      private function removeAllStone(param1:MouseEvent) : void
      {
         var func:Function;
         var e:MouseEvent = param1;
         if(isWatch || !_btnEnabled)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("stoneSealRemoveAllStone",new Responder(onRemoveAll),equipSid);
            }
         };
         if(equipSid >= EQUIP_ID_MIN && equipSid <= EQUIP_ID_MAX)
         {
            Alert.show(Language.STONE_SEAL_PANEL_U[32],"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function onGetWatchData(param1:Object) : void
      {
         isWatch = true;
         watchData = param1;
         initView();
         visible = true;
      }
      
      public function set selectedPropCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1625307030selectedPropCanvas;
         if(_loc2_ !== param1)
         {
            this._1625307030selectedPropCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedPropCanvas",_loc2_,param1));
         }
      }
   }
}

