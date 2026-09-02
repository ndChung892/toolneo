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
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.ShopSlot;
   import com.qeedoo.ui.view.comp.WaWaSlot;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WaWaGamePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1141924040shopSlot15:ShopSlot;
      
      private var _1141924010shopSlot24:ShopSlot;
      
      private var _105451l43:Image;
      
      public var loader:Loader;
      
      private var _1442260067pageSelectorNor:PageSelector;
      
      private var _2115046236shopSlot8:ShopSlot;
      
      private var _2115046240shopSlot4:ShopSlot;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _100525950item1:WaWaSlot;
      
      private var _1178662790item18:WaWaSlot;
      
      private var _1141924043shopSlot12:ShopSlot;
      
      private var _1141924013shopSlot21:ShopSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _105388l22:Image;
      
      public var _WaWaGamePanel_Image1:Image;
      
      private var _627007096frLabel:Label;
      
      private var _alert:Alert;
      
      private var _3526425sel3:CheckBox;
      
      private var _1608075081bCoinBtn:DelayButton;
      
      private var _1141924005shopSlot29:ShopSlot;
      
      private var _105452l44:Image;
      
      private var _1178662795item13:WaWaSlot;
      
      private var _109211219save0:DelayButton;
      
      private var _core:Core = Core.getInstance();
      
      private var posY:Number = 0;
      
      private var _105418l31:Image;
      
      private var _104584967name2:Label;
      
      private var ITEM_COUNT_PER_PAGE:Number = 15;
      
      private var _100525957item8:WaWaSlot;
      
      private var _2115046244shopSlot0:ShopSlot;
      
      private var _1178662789item19:WaWaSlot;
      
      private var _105389l23:Image;
      
      private var _1141924008shopSlot26:ShopSlot;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _1141924038shopSlot17:ShopSlot;
      
      private var wawaExchangeItemList:ArrayCollection = new ArrayCollection();
      
      private var _100525951item2:WaWaSlot;
      
      private var _105390l24:Image;
      
      private var _105419l32:Image;
      
      private var _3526424sel2:CheckBox;
      
      private var wwGlobalData:Object = new Object();
      
      private var addCount:Boolean = false;
      
      private var _105356l11:Image;
      
      private var _934908847record:DataGrid;
      
      private var count:Number = 0;
      
      private var _105420l33:Image;
      
      private var _104584968name3:Label;
      
      private var _100525958item9:WaWaSlot;
      
      private var _1178662794item14:WaWaSlot;
      
      private var _2115046237shopSlot7:ShopSlot;
      
      private var _2115046241shopSlot3:ShopSlot;
      
      public var _WaWaGamePanel_DataGridColumn1:DataGridColumn;
      
      public var _WaWaGamePanel_DataGridColumn2:DataGridColumn;
      
      public var _WaWaGamePanel_DataGridColumn3:DataGridColumn;
      
      private var _105357l12:Image;
      
      private var _1081154686maxNum:NumericStepper;
      
      private var _3526423sel1:CheckBox;
      
      private var _100525952item3:WaWaSlot;
      
      private var _105421l34:Image;
      
      private var _1141924042shopSlot13:ShopSlot;
      
      private var _1141924012shopSlot22:ShopSlot;
      
      public var _WaWaGamePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1089552672rfLabel:Label;
      
      private var _108357417reBtn:DelayButton;
      
      private var _1442251695pageSelectorExp:PageSelector;
      
      private var _105358l13:Image;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var addExp:Number = 0;
      
      private var _106845584point:Label;
      
      private var _1141924045shopSlot10:ShopSlot;
      
      private var _3648t4:ItemSlot;
      
      private var _104584969name4:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _WaWaGamePanel_Label6:Label;
      
      private var _1141924037shopSlot18:ShopSlot;
      
      private var _1141924007shopSlot27:ShopSlot;
      
      private var _1178662793item15:WaWaSlot;
      
      private var posObj:Object = {
         "-3":-960,
         "-2":-840,
         "-1":-720,
         "0":-600,
         "1":-480,
         "2":-360,
         "3":-240,
         "4":-120
      };
      
      private var _3647t3:ItemSlot;
      
      private var _105359l14:Image;
      
      private var _100525953item4:WaWaSlot;
      
      private var _1088335764bCoinMoreLab1:Label;
      
      private var wawaAwardItemListSpe:ArrayCollection = new ArrayCollection();
      
      private var _1178662798item10:WaWaSlot;
      
      private var rr:Boolean = false;
      
      private var _3646t2:ItemSlot;
      
      private var sver:Number = -110;
      
      private var _2115046238shopSlot6:ShopSlot;
      
      private var _2115046242shopSlot2:ShopSlot;
      
      private var _100361836intro:IntroText;
      
      private var _100525949item0:WaWaSlot;
      
      private var _3645t1:ItemSlot;
      
      public var urlSwf:URLRequest;
      
      private var wwData:Object = new Object();
      
      private var _100525954item5:WaWaSlot;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _1178662792item16:WaWaSlot;
      
      private var _1141924041shopSlot14:ShopSlot;
      
      private var _1141924011shopSlot23:ShopSlot;
      
      private var _173654939bCoinMoreLab:Label;
      
      private var _1608084090bCoinLab:Label;
      
      private var _173663948bCoinMoreBtn:DelayButton;
      
      private var _1178662797item11:WaWaSlot;
      
      private var _2115046235shopSlot9:ShopSlot;
      
      private var _1141924044shopSlot11:ShopSlot;
      
      private var _1141924014shopSlot20:ShopSlot;
      
      public var yaogan:MovieClip;
      
      private var _3350645nImg:Image;
      
      private var _94839743coin0:Label;
      
      private var _1141924036shopSlot19:ShopSlot;
      
      private var _1141924006shopSlot28:ShopSlot;
      
      private var _403846527yaoganUi:UIComponent;
      
      private var timer:Timer = new Timer(100);
      
      private var ITEM_COUNT_PER_PAGE_EXP:Number = 20;
      
      private var _100525955item6:WaWaSlot;
      
      private var wawaAwardItemListNor:ArrayCollection = new ArrayCollection();
      
      private var _1141924039shopSlot16:ShopSlot;
      
      private var _1141924009shopSlot25:ShopSlot;
      
      private var _1178662791item17:WaWaSlot;
      
      private var _2115046239shopSlot5:ShopSlot;
      
      private var _2115046243shopSlot1:ShopSlot;
      
      private var _105449l41:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var ver:Number = -110;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1178662796item12:WaWaSlot;
      
      private var _105450l42:Image;
      
      private var _1442264890pageSelectorSpe:PageSelector;
      
      private var _94839744coin1:Label;
      
      private var _3059345coin:Label;
      
      private var _104584966name1:Label;
      
      private var _3526426sel4:CheckBox;
      
      private var _105387l21:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":549,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WaWaGamePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn0",
                  "events":{"click":"__bangBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "labelPlacement":"bottom",
                        "width":78,
                        "x":10,
                        "y":49
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
                        "width":78,
                        "x":86,
                        "y":49
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
                        "width":78,
                        "x":163,
                        "y":49
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
                        "width":146,
                        "x":240,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "69";
                     this.bottom = "10";
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
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_WaWaGamePanel_Image1",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "2";
                                       this.bottom = "2";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":2,
                                          "percentWidth":100,
                                          "percentHeight":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":30,
                                          "y":40,
                                          "width":90,
                                          "height":120,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"t1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27.5,
                                                   "y":25,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"name1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":67,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"sel1",
                                             "events":{"click":"__sel1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66.5,
                                                   "y":94.5
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
                                          "x":130,
                                          "y":40,
                                          "width":90,
                                          "height":120,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"t2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27.5,
                                                   "y":25,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"name2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":67,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"sel2",
                                             "events":{"click":"__sel2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66.5,
                                                   "y":94.5
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
                                          "x":230,
                                          "y":40,
                                          "width":90,
                                          "height":120,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"t3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27.5,
                                                   "y":25,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"name3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":67,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"sel3",
                                             "events":{"click":"__sel3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66.5,
                                                   "y":94.5
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
                                          "x":330,
                                          "y":40,
                                          "width":90,
                                          "height":120,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"t4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27.5,
                                                   "y":25,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"name4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":67,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"sel4",
                                             "events":{"click":"__sel4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":66.5,
                                                   "y":94.5
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
                                          "x":492,
                                          "y":40,
                                          "width":90,
                                          "height":120,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"nImg",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":90,
                                                   "height":1080
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":23,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":46,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":70,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":93,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":123,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":146,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":170,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":193,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l31",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":223,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l32",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":246,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l33",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":270,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l34",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":293,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l41",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":323,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l42",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":346,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l43",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":370,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"l44",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":31,
                                          "height":31,
                                          "x":393,
                                          "y":166
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"reBtn",
                                    "events":{"click":"__reBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":30,
                                          "y":195,
                                          "width":164,
                                          "height":42,
                                          "styleName":"changtiao"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"bCoinBtn",
                                    "events":{"click":"__bCoinBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":48,
                                          "y":300,
                                          "width":179,
                                          "height":115,
                                          "styleName":"jinbi"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"bCoinMoreBtn",
                                    "events":{"click":"__bCoinMoreBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":238,
                                          "y":300,
                                          "width":179,
                                          "height":115,
                                          "styleName":"chaopiao"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"rfLabel",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "htmlText":"",
                                          "x":301,
                                          "y":192,
                                          "width":170,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WaWaGamePanel_Label6",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":301,
                                          "y":213,
                                          "width":147,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":UIComponent,
                                    "id":"yaoganUi",
                                    "events":{"click":"__yaoganUi_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":620,
                                          "y":25,
                                          "width":46,
                                          "height":195
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"maxNum",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "stepSize":1,
                                          "minimum":1,
                                          "maximum":999999,
                                          "x":538,
                                          "y":320,
                                          "width":61
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"save0",
                                    "events":{"click":"__save0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":472,
                                          "y":362,
                                          "clickDelay":3000,
                                          "styleName":"wakaishi",
                                          "width":174,
                                          "height":92
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "events":{"click":"___WaWaGamePanel_DelayButton5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":607,
                                          "y":313,
                                          "clickDelay":3000,
                                          "styleName":"wamax",
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"bCoinLab",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 18;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":121,
                                          "y":412,
                                          "width":60,
                                          "height":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"bCoinMoreLab",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 18;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":306,
                                          "y":412,
                                          "width":60,
                                          "height":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"bCoinMoreLab1",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 18;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":353,
                                          "y":412,
                                          "width":60,
                                          "height":25
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
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.right = "10";
                                       this.top = "21";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "height":213,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":526,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":526,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":526,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelector,
                                             "id":"pageSelectorSpe",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.horizontalCenter = "0";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"coin0",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.fontSize = 18;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":6,
                                                   "width":132,
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
                                       this.left = "10";
                                       this.right = "10";
                                       this.top = "248";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "height":213,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":526,
                                                   "y":35
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":526,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot26",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot27",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot28",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ShopSlot,
                                             "id":"shopSlot29",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":526,
                                                   "y":133
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelector,
                                             "id":"pageSelectorNor",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.horizontalCenter = "0";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"coin1",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.fontSize = 18;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":14,
                                                   "y":7,
                                                   "width":132,
                                                   "height":23
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
                                    "type":WaWaSlot,
                                    "id":"item0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.5,
                                          "y":36
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":184.5,
                                          "y":36
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":344,
                                          "y":36
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":502,
                                          "y":36
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":28,
                                          "y":114
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":186,
                                          "y":114
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":345.5,
                                          "y":114
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":503.5,
                                          "y":114
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":28,
                                          "y":192
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":186,
                                          "y":192
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":345.5,
                                          "y":192
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":503.5,
                                          "y":192
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":29.5,
                                          "y":270
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":187.5,
                                          "y":270
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":347,
                                          "y":270
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":505,
                                          "y":270
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":29.5,
                                          "y":349
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":187.5,
                                          "y":349
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":347,
                                          "y":349
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":WaWaSlot,
                                    "id":"item19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":505,
                                          "y":349
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelectorExp",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "15";
                                       this.horizontalCenter = "0";
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
                                    "type":IntroText,
                                    "id":"intro",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":222,
                                          "width":258,
                                          "height":225,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"record",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "doubleClickEnabled":true,
                                                   "height":180,
                                                   "y":37,
                                                   "columns":[_WaWaGamePanel_DataGridColumn1_i(),_WaWaGamePanel_DataGridColumn2_i(),_WaWaGamePanel_DataGridColumn3_i()]
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
                  "type":Label,
                  "id":"coin",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":394,
                        "y":45,
                        "width":132,
                        "height":23
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"frLabel",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":580,
                        "y":45,
                        "width":132,
                        "height":23
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"point",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":489,
                        "y":45,
                        "width":132,
                        "height":23
                     };
                  }
               })]
            };
         }
      });
      
      private var _100525956item7:WaWaSlot;
      
      private var _cid:Number = 0;
      
      public function WaWaGamePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 549;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___WaWaGamePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WaWaGamePanel._watcherSetupUtil = param1;
      }
      
      public function __sel4_click(param1:MouseEvent) : void
      {
         selectItem(4);
      }
      
      public function onPlayWaWaGame(param1:Object) : void
      {
         if(param1)
         {
            if(timer.running)
            {
               timer.stop();
            }
            if(timer.hasEventListener(TimerEvent.TIMER))
            {
               timer.removeEventListener(TimerEvent.TIMER,moveWaWaNum);
            }
            nImg.y = posY;
            posY = posObj[param1["sc"]];
            wwData["d" + param1.i]["n"] = param1.n;
            setCoinNum(param1.coin);
            addExp = ToolKit.minus(param1.exp,param1.oExp);
            wwData.exp = param1.exp;
            startGo();
            _core.sysBlueMsg(Language.WAWA_GAME_PANEL[37].replace("{num}",param1["costTime"]));
         }
      }
      
      private function initComp() : void
      {
         if(!yaogan)
         {
            loader = new Loader();
            urlSwf = new URLRequest(ResManager.getResUrl(2080130102008));
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onInitComp);
            loader.load(urlSwf);
         }
      }
      
      private function setExchangeSlot() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE_EXP)
         {
            _loc2_ = _loc1_;
            if(_loc1_ < wawaAwardItemListNor.length)
            {
               this["item" + _loc2_].slotData = wawaAwardItemListNor[_loc1_].slotData;
               this["item" + _loc2_].type = wawaAwardItemListNor[_loc1_].type;
               this["item" + _loc2_].giid = wawaAwardItemListNor[_loc1_].itemId;
               this["item" + _loc2_].stackNum = 1;
               this["item" + _loc2_].useNum = wawaAwardItemListNor[_loc1_].useNum;
               this["item" + _loc2_].visible = true;
            }
            _loc1_++;
         }
      }
      
      public function onResetWaWaGameItem(param1:Object) : void
      {
         if(initialized && Boolean(param1))
         {
            wwData = param1;
            initWaWaAwardItem(wwData);
            setCoinNum(wwData.coin);
            setPointNum(wwData.exp);
            rfLabel.htmlText = Language.WAWA_GAME_PANEL[1].replace("{num}",wwData.fr);
            frLabel.text = Language.WAWA_GAME_PANEL[33].replace("{num}",wwData.fr);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get record() : DataGrid
      {
         return this._934908847record;
      }
      
      public function onGetWaWaAward(param1:Object) : void
      {
         if(initialized && Boolean(param1))
         {
            if(param1["t"])
            {
               wwData["l"][param1.index] = new Object();
               wwData["l"][param1.index] = param1.d;
               initRecord();
            }
            else
            {
               wwData.exp = param1["exp"];
               setPointNum(wwData.exp);
               _core.sysBlueMsg(Language.WAWA_GAME_PANEL[12].replace("{num}",wwGlobalData.lpt));
            }
            wwData["d" + param1.index1]["l"] = param1["l"];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bCoinMoreLab() : Label
      {
         return this._173654939bCoinMoreLab;
      }
      
      private function resetWaWaGameItem() : void
      {
         var str:String;
         var tf:IUITextField;
         var handler:Function = null;
         if(count != 0)
         {
            _core.sysMsg(Language.WAWA_GAME_PANEL[38]);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("resetWaWaGameItem",null);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.WAWA_GAME_PANEL[25].replace("{point}",wwGlobalData.rpt);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectorNor() : PageSelector
      {
         return this._1442260067pageSelectorNor;
      }
      
      public function onInitPlayerWaWaData(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            if(_cid != _core.player.id)
            {
               if(timer.running)
               {
                  timer.stop();
               }
               if(timer.hasEventListener(TimerEvent.TIMER))
               {
                  timer.removeEventListener(TimerEvent.TIMER,moveWaWaNum);
               }
               nImg.y = -960;
               count = 0;
               posY = 0;
               _cid = _core.player.id;
               ver = -110;
               sver = -110;
               _core.remote.call("initPlayerWaWaData",new Responder(onInitPlayerWaWaData),ver,sver);
               return;
            }
            if(param1["rr"] == 2)
            {
               rr = true;
            }
            if(param1["idata"])
            {
               wwGlobalData = param1["idata"];
               reBtn.label = Language.WAWA_GAME_PANEL[23].replace("{point}",wwGlobalData.rpt);
               bCoinLab.htmlText = "<font color =\'#00FF00\'>" + wwGlobalData.bpt + "</font>";
               bCoinMoreLab.htmlText = "<font color =\'#00FF00\'>" + wwGlobalData.bptAll + "</font>";
               bCoinMoreLab1.htmlText = "<font color =\'#00FF00\'>" + wwGlobalData.bptAllNum + "</font>";
               ver = wwGlobalData.ver;
               sver = wwGlobalData.sver;
               wawaAwardItemListSpe.removeAll();
               wawaAwardItemListSpe = addDataToList(2);
               setWaWaAwardSlotSpe();
               pageSelectorSpe.onPageChanged = onPageChangedSpe;
               pageSelectorSpe.onPageCleared = clearPageSpe;
               pageSelectorSpe.initPageSeletor(wawaAwardItemListSpe.length,ITEM_COUNT_PER_PAGE);
               wawaAwardItemListNor.removeAll();
               wawaAwardItemListNor = addDataToList(1);
               setWaWaAwardSlotNor();
               pageSelectorNor.onPageChanged = onPageChangedNor;
               pageSelectorNor.onPageCleared = clearPageNor;
               pageSelectorNor.initPageSeletor(wawaAwardItemListNor.length,ITEM_COUNT_PER_PAGE);
               _loc2_ = 10;
               intro.htmlText = Language.WAWA_GAME_PANEL[29].replace("{ps}",wwGlobalData.apt).replace("{pe}",wwGlobalData.apt0).replace("{pend}",wwGlobalData.lpt).replace("{pe1}",wwGlobalData.apt2).replace("{ps1}",wwGlobalData.apt1).replace("{exp}",_loc2_).replace("{rpt}",wwGlobalData.rpt).replace("{btime}",TimeUtil.dateTimeToString(new Date(wwGlobalData.start))).replace("{etime}",TimeUtil.dateTimeToString(new Date(wwGlobalData.end))).replace("{ctime}",TimeUtil.dateTimeToString(new Date(wwGlobalData.close)));
            }
            if(param1["data"])
            {
               wwData = param1["data"];
               initWaWaAwardItem(wwData);
               setCoinNum(wwData.coin);
               setPointNum(wwData.exp);
               rfLabel.htmlText = Language.WAWA_GAME_PANEL[1].replace("{num}",wwData.fr);
               frLabel.text = Language.WAWA_GAME_PANEL[33].replace("{num}",wwData.fr);
               initRecord();
               getWaWaAward();
            }
            _core.remote.call("getLimitData",null);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item12() : WaWaSlot
      {
         return this._1178662796item12;
      }
      
      [Bindable(event="propertyChange")]
      public function get item13() : WaWaSlot
      {
         return this._1178662795item13;
      }
      
      [Bindable(event="propertyChange")]
      public function get item16() : WaWaSlot
      {
         return this._1178662792item16;
      }
      
      [Bindable(event="propertyChange")]
      public function get item10() : WaWaSlot
      {
         return this._1178662798item10;
      }
      
      private function setCoinNum(param1:Number) : void
      {
         wwData.coin = Math.floor(param1);
         coin.text = Language.WAWA_GAME_PANEL[10].replace("{num}",param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bCoinMoreLab1() : Label
      {
         return this._1088335764bCoinMoreLab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nImg() : Image
      {
         return this._3350645nImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get item14() : WaWaSlot
      {
         return this._1178662794item14;
      }
      
      [Bindable(event="propertyChange")]
      public function get item18() : WaWaSlot
      {
         return this._1178662790item18;
      }
      
      [Bindable(event="propertyChange")]
      public function get item19() : WaWaSlot
      {
         return this._1178662789item19;
      }
      
      public function set t2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3646t2;
         if(_loc2_ !== param1)
         {
            this._3646t2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2",_loc2_,param1));
         }
      }
      
      public function set t4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3648t4;
         if(_loc2_ !== param1)
         {
            this._3648t4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t4",_loc2_,param1));
         }
      }
      
      public function set t1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3645t1;
         if(_loc2_ !== param1)
         {
            this._3645t1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item11() : WaWaSlot
      {
         return this._1178662797item11;
      }
      
      [Bindable(event="propertyChange")]
      public function get item15() : WaWaSlot
      {
         return this._1178662793item15;
      }
      
      [Bindable(event="propertyChange")]
      public function get item17() : WaWaSlot
      {
         return this._1178662791item17;
      }
      
      public function set t3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3647t3;
         if(_loc2_ !== param1)
         {
            this._3647t3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot0() : ShopSlot
      {
         return this._2115046244shopSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot1() : ShopSlot
      {
         return this._2115046243shopSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot2() : ShopSlot
      {
         return this._2115046242shopSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot3() : ShopSlot
      {
         return this._2115046241shopSlot3;
      }
      
      public function set record(param1:DataGrid) : void
      {
         var _loc2_:Object = this._934908847record;
         if(_loc2_ !== param1)
         {
            this._934908847record = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"record",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot7() : ShopSlot
      {
         return this._2115046237shopSlot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot8() : ShopSlot
      {
         return this._2115046236shopSlot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot9() : ShopSlot
      {
         return this._2115046235shopSlot9;
      }
      
      public function onUpdateWaWaData(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Object, param7:Number) : void
      {
         var _loc8_:* = undefined;
         if(initialized && Boolean(param1))
         {
            wwData.exp = param4;
            setPointNum(wwData.exp);
            if(param6["t"])
            {
               wwData["l"][param5] = new Object();
               wwData["l"][param5] = param6;
               initRecord();
            }
            wwData.fr = param7;
            rfLabel.htmlText = Language.WAWA_GAME_PANEL[1].replace("{num}",wwData.fr);
            frLabel.text = Language.WAWA_GAME_PANEL[33].replace("{num}",wwData.fr);
            if(param1 == 3)
            {
               for(_loc8_ in wawaExchangeItemList)
               {
                  if(wawaExchangeItemList[_loc8_].giid == param2)
                  {
                     wawaExchangeItemList[_loc8_].useNum = param3;
                     _core.sysBlueMsg(Language.WAWA_GAME_PANEL[24].replace("{num}",wawaExchangeItemList[_loc8_].slotData["pNum1"]));
                     pageSelectorExp.refreshPage();
                     break;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot5() : ShopSlot
      {
         return this._2115046239shopSlot5;
      }
      
      private function playWaWaGame(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(count == 0)
         {
            _loc2_ = getSelectItemIndex();
            _loc3_ = 1;
            if(_loc2_ < 1)
            {
               _core.sysMsg(Language.WAWA_GAME_PANEL[34]);
               return;
            }
            if(param1 != 1)
            {
               _loc3_ = Math.floor(maxNum.value);
            }
            if(Boolean(wwData) && ToolKit.isBigOrEqual(wwData["d" + _loc2_]["n"],4))
            {
               _core.sysMsg(Language.WAWA_GAME_PANEL[35]);
               return;
            }
            if(!(checkData() && ToolKit.isBigThan(getCoinNum(),0)))
            {
               _core.sysMsg(Language.WAWA_GAME_PANEL[36]);
               return;
            }
            if(_loc3_ > getCoinNum())
            {
               _core.sysMsg(Language.WAWA_GAME_PANEL[36]);
               return;
            }
            _core.remote.call("playWaWaGame",new Responder(onPlayWaWaGame),_loc2_,_loc3_);
            if(yaogan)
            {
               yaogan.gotoAndStop(0);
               yaogan.play();
            }
         }
         else if(count > 10 && count < 85)
         {
            count = 92 + Math.floor(Math.random() * 6);
            if(yaogan)
            {
               yaogan.gotoAndStop(0);
               yaogan.play();
            }
         }
         else
         {
            _core.sysMsg(Language.WAWA_GAME_PANEL[27]);
         }
      }
      
      public function set save0(param1:DelayButton) : void
      {
         var _loc2_:Object = this._109211219save0;
         if(_loc2_ !== param1)
         {
            this._109211219save0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"save0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot4() : ShopSlot
      {
         return this._2115046240shopSlot4;
      }
      
      private function setWaWaAwardSlotNor() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            if(_loc1_ < wawaAwardItemListNor.length)
            {
               _loc2_ = _loc1_ + 15;
               this["shopSlot" + _loc2_].slotData = wawaAwardItemListNor[_loc1_].slotData;
               this["shopSlot" + _loc2_].type = wawaAwardItemListNor[_loc1_].type;
               this["shopSlot" + _loc2_].giid = wawaAwardItemListNor[_loc1_].itemId;
               this["shopSlot" + _loc2_].stackNum = 1;
               this["shopSlot" + _loc2_].visible = true;
            }
            _loc1_++;
         }
      }
      
      public function __sel3_click(param1:MouseEvent) : void
      {
         selectItem(3);
      }
      
      public function __save0_click(param1:MouseEvent) : void
      {
         playWaWaGame(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot6() : ShopSlot
      {
         return this._2115046238shopSlot6;
      }
      
      public function set pageSelectorNor(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1442260067pageSelectorNor;
         if(_loc2_ !== param1)
         {
            this._1442260067pageSelectorNor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectorNor",_loc2_,param1));
         }
      }
      
      public function set bCoinMoreLab(param1:Label) : void
      {
         var _loc2_:Object = this._173654939bCoinMoreLab;
         if(_loc2_ !== param1)
         {
            this._173654939bCoinMoreLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bCoinMoreLab",_loc2_,param1));
         }
      }
      
      private function checkData() : Boolean
      {
         if(wwData.v)
         {
            return true;
         }
         return false;
      }
      
      public function getWaWaAward() : void
      {
         var _loc1_:* = 1;
         while(_loc1_ <= 4)
         {
            if(Boolean(wwData["d" + _loc1_] && wwData["d" + _loc1_].n) && Boolean(ToolKit.isBigOrEqual(wwData["d" + _loc1_].n,4)) && ToolKit.isBigOrEqual(wwData["d" + _loc1_].l,1))
            {
               noticeAwardAlert(_loc1_);
               break;
            }
            _loc1_++;
         }
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         changeView(3);
      }
      
      public function set bCoinMoreLab1(param1:Label) : void
      {
         var _loc2_:Object = this._1088335764bCoinMoreLab1;
         if(_loc2_ !== param1)
         {
            this._1088335764bCoinMoreLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bCoinMoreLab1",_loc2_,param1));
         }
      }
      
      public function set item12(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662796item12;
         if(_loc2_ !== param1)
         {
            this._1178662796item12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item12",_loc2_,param1));
         }
      }
      
      private function startGo() : void
      {
         if(timer.running)
         {
            timer.stop();
         }
         if(timer.hasEventListener(TimerEvent.TIMER))
         {
            timer.removeEventListener(TimerEvent.TIMER,moveWaWaNum);
         }
         count = 0;
         timer.addEventListener(TimerEvent.TIMER,moveWaWaNum);
         timer.start();
      }
      
      public function set item10(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662798item10;
         if(_loc2_ !== param1)
         {
            this._1178662798item10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item10",_loc2_,param1));
         }
      }
      
      public function set intro(param1:IntroText) : void
      {
         var _loc2_:Object = this._100361836intro;
         if(_loc2_ !== param1)
         {
            this._100361836intro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intro",_loc2_,param1));
         }
      }
      
      public function set item13(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662795item13;
         if(_loc2_ !== param1)
         {
            this._1178662795item13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item13",_loc2_,param1));
         }
      }
      
      public function __bCoinBtn_click(param1:MouseEvent) : void
      {
         buyWaWaGameCoin(false);
      }
      
      public function set item14(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662794item14;
         if(_loc2_ !== param1)
         {
            this._1178662794item14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item14",_loc2_,param1));
         }
      }
      
      public function set bCoinLab(param1:Label) : void
      {
         var _loc2_:Object = this._1608084090bCoinLab;
         if(_loc2_ !== param1)
         {
            this._1608084090bCoinLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bCoinLab",_loc2_,param1));
         }
      }
      
      public function set item11(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662797item11;
         if(_loc2_ !== param1)
         {
            this._1178662797item11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item11",_loc2_,param1));
         }
      }
      
      public function set item19(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662789item19;
         if(_loc2_ !== param1)
         {
            this._1178662789item19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item19",_loc2_,param1));
         }
      }
      
      public function set item16(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662792item16;
         if(_loc2_ !== param1)
         {
            this._1178662792item16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item16",_loc2_,param1));
         }
      }
      
      public function set item17(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662791item17;
         if(_loc2_ !== param1)
         {
            this._1178662791item17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item17",_loc2_,param1));
         }
      }
      
      public function set item18(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662790item18;
         if(_loc2_ !== param1)
         {
            this._1178662790item18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item18",_loc2_,param1));
         }
      }
      
      public function set item15(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._1178662793item15;
         if(_loc2_ !== param1)
         {
            this._1178662793item15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item15",_loc2_,param1));
         }
      }
      
      public function set nImg(param1:Image) : void
      {
         var _loc2_:Object = this._3350645nImg;
         if(_loc2_ !== param1)
         {
            this._3350645nImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nImg",_loc2_,param1));
         }
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set yaoganUi(param1:UIComponent) : void
      {
         var _loc2_:Object = this._403846527yaoganUi;
         if(_loc2_ !== param1)
         {
            this._403846527yaoganUi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yaoganUi",_loc2_,param1));
         }
      }
      
      public function __reBtn_click(param1:MouseEvent) : void
      {
         resetWaWaGameItem();
      }
      
      public function set coin(param1:Label) : void
      {
         var _loc2_:Object = this._3059345coin;
         if(_loc2_ !== param1)
         {
            this._3059345coin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coin",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rfLabel() : Label
      {
         return this._1089552672rfLabel;
      }
      
      public function set shopSlot0(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046244shopSlot0;
         if(_loc2_ !== param1)
         {
            this._2115046244shopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot0",_loc2_,param1));
         }
      }
      
      public function set shopSlot1(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046243shopSlot1;
         if(_loc2_ !== param1)
         {
            this._2115046243shopSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bCoinMoreBtn() : DelayButton
      {
         return this._173663948bCoinMoreBtn;
      }
      
      public function set shopSlot2(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046242shopSlot2;
         if(_loc2_ !== param1)
         {
            this._2115046242shopSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot2",_loc2_,param1));
         }
      }
      
      public function set shopSlot3(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046241shopSlot3;
         if(_loc2_ !== param1)
         {
            this._2115046241shopSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot3",_loc2_,param1));
         }
      }
      
      public function set shopSlot6(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046238shopSlot6;
         if(_loc2_ !== param1)
         {
            this._2115046238shopSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot6",_loc2_,param1));
         }
      }
      
      public function set shopSlot7(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046237shopSlot7;
         if(_loc2_ !== param1)
         {
            this._2115046237shopSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot7",_loc2_,param1));
         }
      }
      
      public function set shopSlot4(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046240shopSlot4;
         if(_loc2_ !== param1)
         {
            this._2115046240shopSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot4",_loc2_,param1));
         }
      }
      
      public function set shopSlot8(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046236shopSlot8;
         if(_loc2_ !== param1)
         {
            this._2115046236shopSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot8",_loc2_,param1));
         }
      }
      
      public function set shopSlot5(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046239shopSlot5;
         if(_loc2_ !== param1)
         {
            this._2115046239shopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot5",_loc2_,param1));
         }
      }
      
      public function set shopSlot9(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046235shopSlot9;
         if(_loc2_ !== param1)
         {
            this._2115046235shopSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot9",_loc2_,param1));
         }
      }
      
      public function getPointNum() : Number
      {
         return wwData.exp;
      }
      
      public function initRecord() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:Date = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for(_loc2_ in wwData["l"])
         {
            _loc3_ = {};
            _loc3_["type"] = Number(wwData["l"][_loc2_]["tt"]) == 1 ? "获得" : "兑换";
            _loc3_["name"] = GameData.d[29][wwData["l"][_loc2_]["i"]].name;
            _loc4_ = new Date(wwData["l"][_loc2_]["t"]);
            _loc3_["t"] = Number(wwData["l"][_loc2_]["t"]);
            _loc3_["time"] = TimeUtil.dateTimeToString(_loc4_);
            _loc1_.addItem(_loc3_);
         }
         _loc1_ = sortAc(_loc1_,1);
         record.dataProvider = _loc1_;
      }
      
      private function addDataToList(param1:Number) : ArrayCollection
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         var _loc3_:Object = wwGlobalData["info"] ? wwGlobalData["info"] : null;
         for each(_loc4_ in _loc3_)
         {
            if(!(_loc4_ == null || _loc4_.inc != param1))
            {
               _loc5_ = new Object();
               _loc5_.type = _loc4_.tid;
               _loc5_.giid = _loc4_.iid;
               _loc5_.slotData = new Object();
               _loc6_ = GameData.d[_loc5_.type][_loc5_.giid];
               _loc5_.slotData["itemId"] = _loc6_.id;
               _loc5_.slotData["itemName"] = _loc6_.name;
               _loc5_.slotData["itemColor"] = _loc6_.color;
               _loc5_.slotData["type"] = _loc4_.tid;
               _loc2_.addItem(_loc5_);
            }
         }
         return _loc2_;
      }
      
      public function __sel2_click(param1:MouseEvent) : void
      {
         selectItem(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      private function clearPageSpe() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            _loc2_ = _loc1_;
            this["shopSlot" + _loc2_].st = -1;
            this["shopSlot" + _loc2_].visible = false;
            _loc1_++;
         }
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeView(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get point() : Label
      {
         return this._106845584point;
      }
      
      private function getColor(param1:Number) : String
      {
         var _loc3_:* = undefined;
         var _loc2_:Object = wwGlobalData["info"] ? wwGlobalData["info"] : {};
         for(_loc3_ in _loc2_)
         {
            if(ToolKit.isEqual(_loc2_[_loc3_].iid,param1) && ToolKit.isSmallThan(_loc2_[_loc3_].inc,3))
            {
               return ToolKit.isEqual(_loc2_[_loc3_].inc,1) ? "#00FF00" : "#FA5B05";
            }
         }
         return "#00FF00";
      }
      
      private function getSelectItemIndex() : *
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            if(this["sel" + _loc1_].selected)
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return 0;
      }
      
      private function addDataToExpList(param1:Object) : ArrayCollection
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         var _loc3_:Object = wwGlobalData["info"] ? wwGlobalData["info"] : null;
         for each(_loc4_ in _loc3_)
         {
            if(!(_loc4_ == null || _loc4_.inc != 3))
            {
               _loc5_ = new Object();
               _loc5_.type = _loc4_.tid;
               _loc5_.giid = _loc4_.iid;
               _loc5_.slotData = new Object();
               _loc6_ = GameData.d[_loc5_.type][_loc5_.giid];
               _loc5_.slotData["itemId"] = _loc6_.id;
               _loc5_.slotData["itemName"] = _loc6_.name;
               _loc5_.slotData["itemColor"] = _loc6_.color;
               _loc5_.slotData["type"] = _loc4_.tid;
               _loc5_.slotData["pNum1"] = _loc4_.pt;
               _loc5_.slotData["amount"] = _loc4_.saleAll;
               _loc5_.useNum = param1[_loc6_.id] ? param1[_loc6_.id] : 0;
               _loc2_.addItem(_loc5_);
            }
         }
         return _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get frLabel() : Label
      {
         return this._627007096frLabel;
      }
      
      public function noticeAwardAlert(param1:Number) : void
      {
         var str:String;
         var tf:IUITextField;
         var itemIndex:Number = NaN;
         var handler:Function = null;
         var yes:String = null;
         var no:String = null;
         var index:Number = param1;
         itemIndex = index;
         yes = Alert.yesLabel;
         no = Alert.noLabel;
         Alert.yesLabel = Language.WAWA_GAME_PANEL[31];
         Alert.noLabel = Language.WAWA_GAME_PANEL[32];
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getWaWaAward",new Responder(onGetWaWaAward),itemIndex,true);
            }
            else if(param1.detail == Alert.NO)
            {
               _core.remote.call("getWaWaAward",new Responder(onGetWaWaAward),itemIndex,false);
            }
            Alert.yesLabel = yes;
            Alert.noLabel = no;
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.WAWA_GAME_PANEL[30].replace("{point}",wwGlobalData.bptAll).replace("{num}",wwGlobalData.bptAllNum);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      private function _WaWaGamePanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WaWaGamePanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "time";
         _loc1_.width = 200;
         BindingManager.executeBindings(this,"_WaWaGamePanel_DataGridColumn3",_WaWaGamePanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function clearPageExp() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE_EXP)
         {
            _loc2_ = _loc1_;
            this["item" + _loc2_].visible = false;
            _loc1_++;
         }
      }
      
      private function onPageChangedSpe(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            if(_loc3_ < wawaAwardItemListSpe.length)
            {
               _loc5_ = _loc4_;
               this["shopSlot" + _loc5_].type = wawaAwardItemListSpe[_loc3_].type;
               this["shopSlot" + _loc5_].slotData = wawaAwardItemListSpe[_loc4_].slotData;
               this["shopSlot" + _loc5_].stackNum = 1;
               this["shopSlot" + _loc5_].giid = wawaAwardItemListSpe[_loc3_].giid;
               this["shopSlot" + _loc5_].visible = true;
            }
            _loc4_++;
         }
      }
      
      public function set name2(param1:Label) : void
      {
         var _loc2_:Object = this._104584967name2;
         if(_loc2_ !== param1)
         {
            this._104584967name2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name2",_loc2_,param1));
         }
      }
      
      public function set name4(param1:Label) : void
      {
         var _loc2_:Object = this._104584969name4;
         if(_loc2_ !== param1)
         {
            this._104584969name4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name4",_loc2_,param1));
         }
      }
      
      public function set name3(param1:Label) : void
      {
         var _loc2_:Object = this._104584968name3;
         if(_loc2_ !== param1)
         {
            this._104584968name3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name3",_loc2_,param1));
         }
      }
      
      public function set name1(param1:Label) : void
      {
         var _loc2_:Object = this._104584966name1;
         if(_loc2_ !== param1)
         {
            this._104584966name1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name1",_loc2_,param1));
         }
      }
      
      public function __yaoganUi_click(param1:MouseEvent) : void
      {
         playWaWaGame(1);
      }
      
      private function selectItem(param1:Number) : *
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            this["sel" + _loc2_].selected = false;
            _loc2_++;
         }
         this["sel" + param1].selected = true;
      }
      
      public function set sel2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3526424sel2;
         if(_loc2_ !== param1)
         {
            this._3526424sel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sel2",_loc2_,param1));
         }
      }
      
      public function set sel3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3526425sel3;
         if(_loc2_ !== param1)
         {
            this._3526425sel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sel3",_loc2_,param1));
         }
      }
      
      public function set sel4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3526426sel4;
         if(_loc2_ !== param1)
         {
            this._3526426sel4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sel4",_loc2_,param1));
         }
      }
      
      private function _WaWaGamePanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WaWaGamePanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_WaWaGamePanel_DataGridColumn2",_WaWaGamePanel_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get t2() : ItemSlot
      {
         return this._3646t2;
      }
      
      [Bindable(event="propertyChange")]
      public function get t3() : ItemSlot
      {
         return this._3647t3;
      }
      
      [Bindable(event="propertyChange")]
      public function get t1() : ItemSlot
      {
         return this._3645t1;
      }
      
      public function set sel1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3526423sel1;
         if(_loc2_ !== param1)
         {
            this._3526423sel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sel1",_loc2_,param1));
         }
      }
      
      public function __sel1_click(param1:MouseEvent) : void
      {
         selectItem(1);
      }
      
      public function set rfLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1089552672rfLabel;
         if(_loc2_ !== param1)
         {
            this._1089552672rfLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rfLabel",_loc2_,param1));
         }
      }
      
      public function set reBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._108357417reBtn;
         if(_loc2_ !== param1)
         {
            this._108357417reBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get save0() : DelayButton
      {
         return this._109211219save0;
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      private function setPointNum(param1:Number) : void
      {
         wwData.exp = Math.floor(param1);
         point.text = Language.WAWA_GAME_PANEL[11].replace("{num}",param1);
      }
      
      public function set shopSlot10(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924045shopSlot10;
         if(_loc2_ !== param1)
         {
            this._1141924045shopSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot10",_loc2_,param1));
         }
      }
      
      public function set bCoinMoreBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._173663948bCoinMoreBtn;
         if(_loc2_ !== param1)
         {
            this._173663948bCoinMoreBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bCoinMoreBtn",_loc2_,param1));
         }
      }
      
      public function set shopSlot12(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924043shopSlot12;
         if(_loc2_ !== param1)
         {
            this._1141924043shopSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot12",_loc2_,param1));
         }
      }
      
      public function set shopSlot14(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924041shopSlot14;
         if(_loc2_ !== param1)
         {
            this._1141924041shopSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot14",_loc2_,param1));
         }
      }
      
      private function sortAc(param1:ArrayCollection, param2:int) : ArrayCollection
      {
         var _loc3_:Sort = new Sort();
         switch(param2)
         {
            case 1:
               _loc3_.fields = [new SortField("t",true,true)];
         }
         param1.sort = _loc3_;
         param1.refresh();
         return param1;
      }
      
      public function set shopSlot15(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924040shopSlot15;
         if(_loc2_ !== param1)
         {
            this._1141924040shopSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get intro() : IntroText
      {
         return this._100361836intro;
      }
      
      public function set pageSelectorSpe(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1442264890pageSelectorSpe;
         if(_loc2_ !== param1)
         {
            this._1442264890pageSelectorSpe = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectorSpe",_loc2_,param1));
         }
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
      }
      
      public function set shopSlot18(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924037shopSlot18;
         if(_loc2_ !== param1)
         {
            this._1141924037shopSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot18",_loc2_,param1));
         }
      }
      
      private function onPageChangedExp(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            _loc5_ = _loc4_;
            if(_loc3_ < wawaExchangeItemList.length)
            {
               this["item" + _loc5_].type = wawaExchangeItemList[_loc3_].type;
               this["item" + _loc5_].slotData = wawaExchangeItemList[_loc4_].slotData;
               this["item" + _loc5_].stackNum = 1;
               this["item" + _loc5_].giid = wawaExchangeItemList[_loc3_].giid;
               this["item" + _loc5_].useNum = wawaExchangeItemList[_loc3_].useNum;
               this["item" + _loc5_].setLimit();
               this["item" + _loc5_].visible = true;
            }
            _loc4_++;
         }
      }
      
      public function set shopSlot19(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924036shopSlot19;
         if(_loc2_ !== param1)
         {
            this._1141924036shopSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot19",_loc2_,param1));
         }
      }
      
      public function set shopSlot16(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924039shopSlot16;
         if(_loc2_ !== param1)
         {
            this._1141924039shopSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot16",_loc2_,param1));
         }
      }
      
      public function set shopSlot13(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924042shopSlot13;
         if(_loc2_ !== param1)
         {
            this._1141924042shopSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot13",_loc2_,param1));
         }
      }
      
      private function _WaWaGamePanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WaWaGamePanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "type";
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_WaWaGamePanel_DataGridColumn1",_WaWaGamePanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bCoinLab() : Label
      {
         return this._1608084090bCoinLab;
      }
      
      public function set shopSlot17(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924038shopSlot17;
         if(_loc2_ !== param1)
         {
            this._1141924038shopSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot17",_loc2_,param1));
         }
      }
      
      private function setMaxNum() : void
      {
         if(getCoinNum() <= 0)
         {
            return;
         }
         maxNum.value = getCoinNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get t4() : ItemSlot
      {
         return this._3648t4;
      }
      
      [Bindable(event="propertyChange")]
      public function get yaoganUi() : UIComponent
      {
         return this._403846527yaoganUi;
      }
      
      private function _WaWaGamePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaGamePanel_BasicTitleCanvas1.text = param1;
         },"_WaWaGamePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000500);
         },function(param1:Object):void
         {
            _WaWaGamePanel_Image1.source = param1;
         },"_WaWaGamePanel_Image1.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000497);
         },function(param1:Object):void
         {
            nImg.source = param1;
         },"nImg.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaGamePanel_Label6.text = param1;
         },"_WaWaGamePanel_Label6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            coin0.htmlText = param1;
         },"coin0.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            coin1.htmlText = param1;
         },"coin1.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaGamePanel_DataGridColumn1.headerText = param1;
         },"_WaWaGamePanel_DataGridColumn1.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaGamePanel_DataGridColumn2.headerText = param1;
         },"_WaWaGamePanel_DataGridColumn2.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaGamePanel_DataGridColumn3.headerText = param1;
         },"_WaWaGamePanel_DataGridColumn3.headerText");
         result[12] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get coin() : Label
      {
         return this._3059345coin;
      }
      
      public function set bCoinBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1608075081bCoinBtn;
         if(_loc2_ !== param1)
         {
            this._1608075081bCoinBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bCoinBtn",_loc2_,param1));
         }
      }
      
      public function set shopSlot11(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924044shopSlot11;
         if(_loc2_ !== param1)
         {
            this._1141924044shopSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot11",_loc2_,param1));
         }
      }
      
      private function moveWaWaNum(param1:Event) : *
      {
         ++count;
         if(ToolKit.isBigOrEqual(nImg.y,0))
         {
            nImg.y = -960;
         }
         if(count <= 6)
         {
            nImg.y = ToolKit.add(nImg.y,20);
         }
         else if(count <= 10)
         {
            nImg.y = ToolKit.add(nImg.y,40);
         }
         else if(count <= 26)
         {
            nImg.y = ToolKit.add(nImg.y,60);
         }
         else if(count <= 50)
         {
            nImg.y = ToolKit.add(nImg.y,80);
         }
         else if(count <= 66)
         {
            nImg.y = ToolKit.add(nImg.y,120);
         }
         else if(count <= 80)
         {
            nImg.y = ToolKit.add(nImg.y,60);
         }
         else if(count <= 86)
         {
            nImg.y = ToolKit.add(nImg.y,40);
         }
         else if(count <= 92)
         {
            nImg.y = ToolKit.add(nImg.y,20);
         }
         else
         {
            nImg.y = ToolKit.add(nImg.y,20);
            if(ToolKit.isEqual(nImg.y,posY))
            {
               nImg.y = posY;
               timer.removeEventListener(TimerEvent.TIMER,moveWaWaNum);
               timer.stop();
               initWaWaAwardItem(wwData);
               if(!(!addExp || addExp == 0))
               {
                  _core.sysBlueMsg(Language.WAWA_GAME_PANEL[12].replace("{num}",addExp));
               }
               setPointNum(wwData.exp);
               count = 0;
               getWaWaAward();
            }
            else if(ToolKit.isEqual(posY,-960) && ToolKit.isEqual(nImg.y,0))
            {
               nImg.y = posY;
               timer.removeEventListener(TimerEvent.TIMER,moveWaWaNum);
               timer.stop();
               initWaWaAwardItem(wwData);
               if(!(!addExp || addExp == 0))
               {
                  _core.sysBlueMsg(Language.WAWA_GAME_PANEL[12].replace("{num}",addExp));
               }
               setPointNum(wwData.exp);
               count = 0;
               getWaWaAward();
            }
         }
      }
      
      private function buyWaWaGameCoin(param1:Boolean) : void
      {
         var str:String;
         var tf:IUITextField;
         var handler:Function = null;
         var view:Object = null;
         var flag:Boolean = param1;
         if(!flag)
         {
            view = _core.view.getUI(ViewManager.PANEL_WAWA_CHANGE);
            view && view.initWorldCupChangePanel(wwGlobalData.bpt);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyWaWaGameCoin",null,true,1);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.WAWA_GAME_PANEL[26].replace("{point}",wwGlobalData.bptAll).replace("{num}",wwGlobalData.bptAllNum);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function set shopSlot21(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924013shopSlot21;
         if(_loc2_ !== param1)
         {
            this._1141924013shopSlot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot21",_loc2_,param1));
         }
      }
      
      public function set shopSlot22(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924012shopSlot22;
         if(_loc2_ !== param1)
         {
            this._1141924012shopSlot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot22",_loc2_,param1));
         }
      }
      
      public function set shopSlot20(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924014shopSlot20;
         if(_loc2_ !== param1)
         {
            this._1141924014shopSlot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot20",_loc2_,param1));
         }
      }
      
      public function __bCoinMoreBtn_click(param1:MouseEvent) : void
      {
         buyWaWaGameCoin(true);
      }
      
      public function set shopSlot23(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924011shopSlot23;
         if(_loc2_ !== param1)
         {
            this._1141924011shopSlot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot23",_loc2_,param1));
         }
      }
      
      public function set shopSlot24(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924010shopSlot24;
         if(_loc2_ !== param1)
         {
            this._1141924010shopSlot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot24",_loc2_,param1));
         }
      }
      
      public function set shopSlot28(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924006shopSlot28;
         if(_loc2_ !== param1)
         {
            this._1141924006shopSlot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot28",_loc2_,param1));
         }
      }
      
      private function clearPageNor() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            _loc2_ = _loc1_ + 15;
            this["shopSlot" + _loc2_].st = -1;
            this["shopSlot" + _loc2_].visible = false;
            _loc1_++;
         }
      }
      
      public function set shopSlot26(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924008shopSlot26;
         if(_loc2_ !== param1)
         {
            this._1141924008shopSlot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot26",_loc2_,param1));
         }
      }
      
      public function set shopSlot27(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924007shopSlot27;
         if(_loc2_ !== param1)
         {
            this._1141924007shopSlot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot27",_loc2_,param1));
         }
      }
      
      public function set shopSlot25(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924009shopSlot25;
         if(_loc2_ !== param1)
         {
            this._1141924009shopSlot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot25",_loc2_,param1));
         }
      }
      
      public function onBuyWaWaGameCoin(param1:Number) : void
      {
         if(initialized)
         {
            setCoinNum(param1);
         }
      }
      
      public function onGetLimitData(param1:Object) : void
      {
         if(initialized && Boolean(param1))
         {
            wawaExchangeItemList.removeAll();
            wawaExchangeItemList = addDataToExpList(param1);
            setExchangeSlot();
            pageSelectorExp.onPageChanged = onPageChangedExp;
            pageSelectorExp.onPageCleared = clearPageExp;
            pageSelectorExp.initPageSeletor(wawaExchangeItemList.length,ITEM_COUNT_PER_PAGE_EXP);
         }
      }
      
      public function set shopSlot29(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924005shopSlot29;
         if(_loc2_ !== param1)
         {
            this._1141924005shopSlot29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot29",_loc2_,param1));
         }
      }
      
      public function set item0(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525949item0;
         if(_loc2_ !== param1)
         {
            this._100525949item0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item0",_loc2_,param1));
         }
      }
      
      public function set item1(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525950item1;
         if(_loc2_ !== param1)
         {
            this._100525950item1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",_loc2_,param1));
         }
      }
      
      public function set item2(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
      
      private function getCoinNum() : Number
      {
         return Math.floor(wwData.coin);
      }
      
      public function set item3(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525952item3;
         if(_loc2_ !== param1)
         {
            this._100525952item3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",_loc2_,param1));
         }
      }
      
      public function set item4(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525953item4;
         if(_loc2_ !== param1)
         {
            this._100525953item4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",_loc2_,param1));
         }
      }
      
      public function set item5(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525954item5;
         if(_loc2_ !== param1)
         {
            this._100525954item5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name2() : Label
      {
         return this._104584967name2;
      }
      
      public function set item7(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525956item7;
         if(_loc2_ !== param1)
         {
            this._100525956item7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item7",_loc2_,param1));
         }
      }
      
      public function ___WaWaGamePanel_DelayButton5_click(param1:MouseEvent) : void
      {
         setMaxNum();
      }
      
      public function set maxNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1081154686maxNum;
         if(_loc2_ !== param1)
         {
            this._1081154686maxNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name3() : Label
      {
         return this._104584968name3;
      }
      
      public function set frLabel(param1:Label) : void
      {
         var _loc2_:Object = this._627007096frLabel;
         if(_loc2_ !== param1)
         {
            this._627007096frLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frLabel",_loc2_,param1));
         }
      }
      
      private function getReItemNum() : Number
      {
         return wwData.fr;
      }
      
      private function initWaWaAwardItem(param1:Object) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc2_:Number = 1;
         while(_loc2_ <= 4)
         {
            _loc3_ = Number(param1["d" + _loc2_]["tid"]);
            _loc4_ = Number(param1["d" + _loc2_]["n"]);
            _loc5_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc3_];
            if(_loc5_)
            {
               this["t" + _loc2_].type = GamePredef.TBL_ITEM_TEMPLATE;
               this["t" + _loc2_].giid = _loc3_;
               this["t" + _loc2_].slotData = _loc5_;
               this["name" + _loc2_].htmlText = "<font color=\'" + getColor(_loc3_) + "\'>" + _loc5_.name + "</font>";
               _loc6_ = 1;
               while(_loc6_ <= 4)
               {
                  if(_loc6_ > _loc4_)
                  {
                     this["l" + String(_loc2_) + String(_loc6_)].source = ResManager.getIconUrl(4130220000499);
                  }
                  else
                  {
                     this["l" + String(_loc2_) + String(_loc6_)].source = ResManager.getIconUrl(4130220000498);
                  }
                  _loc6_++;
               }
            }
            _loc2_++;
         }
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get sel1() : CheckBox
      {
         return this._3526423sel1;
      }
      
      public function set l11(param1:Image) : void
      {
         var _loc2_:Object = this._105356l11;
         if(_loc2_ !== param1)
         {
            this._105356l11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l11",_loc2_,param1));
         }
      }
      
      public function set item8(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525957item8;
         if(_loc2_ !== param1)
         {
            this._100525957item8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item8",_loc2_,param1));
         }
      }
      
      public function set l12(param1:Image) : void
      {
         var _loc2_:Object = this._105357l12;
         if(_loc2_ !== param1)
         {
            this._105357l12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l12",_loc2_,param1));
         }
      }
      
      public function set item9(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525958item9;
         if(_loc2_ !== param1)
         {
            this._100525958item9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item9",_loc2_,param1));
         }
      }
      
      public function set l13(param1:Image) : void
      {
         var _loc2_:Object = this._105358l13;
         if(_loc2_ !== param1)
         {
            this._105358l13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sel2() : CheckBox
      {
         return this._3526424sel2;
      }
      
      public function set point(param1:Label) : void
      {
         var _loc2_:Object = this._106845584point;
         if(_loc2_ !== param1)
         {
            this._106845584point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"point",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name4() : Label
      {
         return this._104584969name4;
      }
      
      public function set l14(param1:Image) : void
      {
         var _loc2_:Object = this._105359l14;
         if(_loc2_ !== param1)
         {
            this._105359l14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l14",_loc2_,param1));
         }
      }
      
      public function set item6(param1:WaWaSlot) : void
      {
         var _loc2_:Object = this._100525955item6;
         if(_loc2_ !== param1)
         {
            this._100525955item6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reBtn() : DelayButton
      {
         return this._108357417reBtn;
      }
      
      public function set vsFlop(param1:ViewStack) : void
      {
         var _loc2_:Object = this._808329852vsFlop;
         if(_loc2_ !== param1)
         {
            this._808329852vsFlop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsFlop",_loc2_,param1));
         }
      }
      
      private function onPageChangedNor(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            _loc5_ = _loc4_ + 15;
            if(_loc3_ < wawaAwardItemListNor.length)
            {
               this["shopSlot" + _loc5_].type = wawaAwardItemListNor[_loc3_].type;
               this["shopSlot" + _loc5_].slotData = wawaAwardItemListNor[_loc4_].slotData;
               this["shopSlot" + _loc5_].stackNum = 1;
               this["shopSlot" + _loc5_].giid = wawaAwardItemListNor[_loc3_].giid;
               this["shopSlot" + _loc5_].visible = true;
            }
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sel4() : CheckBox
      {
         return this._3526426sel4;
      }
      
      [Bindable(event="propertyChange")]
      public function get name1() : Label
      {
         return this._104584966name1;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot11() : ShopSlot
      {
         return this._1141924044shopSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot12() : ShopSlot
      {
         return this._1141924043shopSlot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot13() : ShopSlot
      {
         return this._1141924042shopSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot14() : ShopSlot
      {
         return this._1141924041shopSlot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot15() : ShopSlot
      {
         return this._1141924040shopSlot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectorSpe() : PageSelector
      {
         return this._1442264890pageSelectorSpe;
      }
      
      [Bindable(event="propertyChange")]
      public function get sel3() : CheckBox
      {
         return this._3526425sel3;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot19() : ShopSlot
      {
         return this._1141924036shopSlot19;
      }
      
      private function onInitComp(param1:Event) : void
      {
         var _loc2_:Class = null;
         if(!yaogan)
         {
            _loc2_ = loader.contentLoaderInfo.applicationDomain.getDefinition("yaogan") as Class;
            yaogan = new _loc2_() as MovieClip;
            if(yaogan)
            {
               yaoganUi.addChild(yaogan);
               yaogan.gotoAndStop(0);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot16() : ShopSlot
      {
         return this._1141924039shopSlot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot17() : ShopSlot
      {
         return this._1141924038shopSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot10() : ShopSlot
      {
         return this._1141924045shopSlot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get bCoinBtn() : DelayButton
      {
         return this._1608075081bCoinBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot18() : ShopSlot
      {
         return this._1141924037shopSlot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot20() : ShopSlot
      {
         return this._1141924014shopSlot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot21() : ShopSlot
      {
         return this._1141924013shopSlot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot23() : ShopSlot
      {
         return this._1141924011shopSlot23;
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot27() : ShopSlot
      {
         return this._1141924007shopSlot27;
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot22() : ShopSlot
      {
         return this._1141924012shopSlot22;
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
      
      public function set l21(param1:Image) : void
      {
         var _loc2_:Object = this._105387l21;
         if(_loc2_ !== param1)
         {
            this._105387l21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l21",_loc2_,param1));
         }
      }
      
      public function set l22(param1:Image) : void
      {
         var _loc2_:Object = this._105388l22;
         if(_loc2_ !== param1)
         {
            this._105388l22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l22",_loc2_,param1));
         }
      }
      
      public function set l23(param1:Image) : void
      {
         var _loc2_:Object = this._105389l23;
         if(_loc2_ !== param1)
         {
            this._105389l23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l23",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot29() : ShopSlot
      {
         return this._1141924005shopSlot29;
      }
      
      public function set l24(param1:Image) : void
      {
         var _loc2_:Object = this._105390l24;
         if(_loc2_ !== param1)
         {
            this._105390l24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l24",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot25() : ShopSlot
      {
         return this._1141924009shopSlot25;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot26() : ShopSlot
      {
         return this._1141924008shopSlot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot28() : ShopSlot
      {
         return this._1141924006shopSlot28;
      }
      
      public function set pageSelectorExp(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1442251695pageSelectorExp;
         if(_loc2_ !== param1)
         {
            this._1442251695pageSelectorExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectorExp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot24() : ShopSlot
      {
         return this._1141924010shopSlot24;
      }
      
      public function set coin0(param1:Label) : void
      {
         var _loc2_:Object = this._94839743coin0;
         if(_loc2_ !== param1)
         {
            this._94839743coin0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coin0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : WaWaSlot
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : WaWaSlot
      {
         return this._100525953item4;
      }
      
      [Bindable(event="propertyChange")]
      public function get item5() : WaWaSlot
      {
         return this._100525954item5;
      }
      
      private function setWaWaAwardSlotSpe() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            if(_loc1_ < wawaAwardItemListSpe.length)
            {
               this["shopSlot" + _loc1_].slotData = wawaAwardItemListSpe[_loc1_].slotData;
               this["shopSlot" + _loc1_].type = wawaAwardItemListSpe[_loc1_].type;
               this["shopSlot" + _loc1_].giid = wawaAwardItemListSpe[_loc1_].itemId;
               this["shopSlot" + _loc1_].stackNum = 1;
               this["shopSlot" + _loc1_].visible = true;
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item7() : WaWaSlot
      {
         return this._100525956item7;
      }
      
      [Bindable(event="propertyChange")]
      public function get item8() : WaWaSlot
      {
         return this._100525957item8;
      }
      
      [Bindable(event="propertyChange")]
      public function get item9() : WaWaSlot
      {
         return this._100525958item9;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxNum() : NumericStepper
      {
         return this._1081154686maxNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : WaWaSlot
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get l13() : Image
      {
         return this._105358l13;
      }
      
      public function set coin1(param1:Label) : void
      {
         var _loc2_:Object = this._94839744coin1;
         if(_loc2_ !== param1)
         {
            this._94839744coin1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coin1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item6() : WaWaSlot
      {
         return this._100525955item6;
      }
      
      [Bindable(event="propertyChange")]
      public function get l11() : Image
      {
         return this._105356l11;
      }
      
      [Bindable(event="propertyChange")]
      public function get l12() : Image
      {
         return this._105357l12;
      }
      
      [Bindable(event="propertyChange")]
      public function get item0() : WaWaSlot
      {
         return this._100525949item0;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WaWaGamePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WaWaGamePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WaWaGamePanelWatcherSetupUtil");
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
      
      private function _WaWaGamePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WAWA_GAME_PANEL[0];
         _loc1_ = Language.WAWA_GAME_PANEL[15];
         _loc1_ = Language.WAWA_GAME_PANEL[16];
         _loc1_ = Language.WAWA_GAME_PANEL[17];
         _loc1_ = Language.WAWA_GAME_PANEL[28];
         _loc1_ = ResManager.getIconUrl(4130220000500);
         _loc1_ = ResManager.getIconUrl(4130220000497);
         _loc1_ = Language.WAWA_GAME_PANEL[2];
         _loc1_ = Language.WAWA_GAME_PANEL[14];
         _loc1_ = Language.WAWA_GAME_PANEL[13];
         _loc1_ = Language.WAWA_GAME_PANEL[18];
         _loc1_ = Language.WAWA_GAME_PANEL[19];
         _loc1_ = Language.WAWA_GAME_PANEL[20];
      }
      
      public function set l31(param1:Image) : void
      {
         var _loc2_:Object = this._105418l31;
         if(_loc2_ !== param1)
         {
            this._105418l31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l31",_loc2_,param1));
         }
      }
      
      public function set l32(param1:Image) : void
      {
         var _loc2_:Object = this._105419l32;
         if(_loc2_ !== param1)
         {
            this._105419l32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l32",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get l14() : Image
      {
         return this._105359l14;
      }
      
      public function set l34(param1:Image) : void
      {
         var _loc2_:Object = this._105421l34;
         if(_loc2_ !== param1)
         {
            this._105421l34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l34",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : WaWaSlot
      {
         return this._100525952item3;
      }
      
      public function set l33(param1:Image) : void
      {
         var _loc2_:Object = this._105420l33;
         if(_loc2_ !== param1)
         {
            this._105420l33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l33",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get l21() : Image
      {
         return this._105387l21;
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
      public function get bangBtn3() : BasicGlowButton
      {
         return this._1863324753bangBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get l22() : Image
      {
         return this._105388l22;
      }
      
      [Bindable(event="propertyChange")]
      public function get l23() : Image
      {
         return this._105389l23;
      }
      
      [Bindable(event="propertyChange")]
      public function get l24() : Image
      {
         return this._105390l24;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectorExp() : PageSelector
      {
         return this._1442251695pageSelectorExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get coin0() : Label
      {
         return this._94839743coin0;
      }
      
      [Bindable(event="propertyChange")]
      public function get coin1() : Label
      {
         return this._94839744coin1;
      }
      
      [Bindable(event="propertyChange")]
      public function get l32() : Image
      {
         return this._105419l32;
      }
      
      public function ___WaWaGamePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get l31() : Image
      {
         return this._105418l31;
      }
      
      public function set l41(param1:Image) : void
      {
         var _loc2_:Object = this._105449l41;
         if(_loc2_ !== param1)
         {
            this._105449l41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l41",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get l33() : Image
      {
         return this._105420l33;
      }
      
      [Bindable(event="propertyChange")]
      public function get l34() : Image
      {
         return this._105421l34;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         initComp();
         _core.remote.call("initPlayerWaWaData",new Responder(onInitPlayerWaWaData),ver,sver);
      }
      
      public function set l43(param1:Image) : void
      {
         var _loc2_:Object = this._105451l43;
         if(_loc2_ !== param1)
         {
            this._105451l43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l43",_loc2_,param1));
         }
      }
      
      public function set l44(param1:Image) : void
      {
         var _loc2_:Object = this._105452l44;
         if(_loc2_ !== param1)
         {
            this._105452l44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l44",_loc2_,param1));
         }
      }
      
      public function set l42(param1:Image) : void
      {
         var _loc2_:Object = this._105450l42;
         if(_loc2_ !== param1)
         {
            this._105450l42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l42",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get l41() : Image
      {
         return this._105449l41;
      }
      
      [Bindable(event="propertyChange")]
      public function get l42() : Image
      {
         return this._105450l42;
      }
      
      [Bindable(event="propertyChange")]
      public function get l43() : Image
      {
         return this._105451l43;
      }
      
      [Bindable(event="propertyChange")]
      public function get l44() : Image
      {
         return this._105452l44;
      }
   }
}

