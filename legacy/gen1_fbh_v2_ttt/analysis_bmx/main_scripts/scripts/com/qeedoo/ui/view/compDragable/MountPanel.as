package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PropertyBar;
   import com.qeedoo.ui.view.comp.ScrollTextArrCanvas;
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
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MountPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _109730812stExp:ScrollTextArrCanvas;
      
      private var _1421002864nextLevPro3:Label;
      
      public var _MountPanel_Label21:Label;
      
      private var _1421002867nextLevPro6:Label;
      
      public var _MountPanel_LinkButton1:LinkButton;
      
      public var _MountPanel_LinkButton2:LinkButton;
      
      public var _MountPanel_LinkButton3:LinkButton;
      
      public var _MountPanel_DataGridColumn1:DataGridColumn;
      
      public var _MountPanel_DataGridColumn2:DataGridColumn;
      
      public var _MountPanel_DataGridColumn3:DataGridColumn;
      
      private var _1148692631addPro5:Label;
      
      private var _69165797levPro5:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _123811004mountLev:Label;
      
      private var updateMountTimer:Timer = null;
      
      private var _1424435992nextUpLv:Label;
      
      private var PAGE_MAX_DRESS_NUM:int = 2;
      
      private var _1845920214upCostInfo:Label;
      
      private var selectedDress:int = 0;
      
      public var _alert:Alert;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var mountDressAc:ArrayCollection = new ArrayCollection();
      
      private var _1177350943itemNum2:Label;
      
      private var _456826222mountLev2:Label;
      
      private var _1726777758normalGrowBtn:BasicGlowButton;
      
      private var _1289197386expBar:PropertyBar;
      
      private var _456180529upExpBar:PropertyBar;
      
      private var _69165795levPro3:Label;
      
      public var _MountPanel_BasicGlowButton9:BasicGlowButton;
      
      private var _114581tab:ViewStack;
      
      private var _456744072mountImg2:Image;
      
      private var _1699273611basicPro4:Label;
      
      private var _core:Core = Core.getInstance();
      
      public var _MountPanel_Label1:Label;
      
      public var _MountPanel_Label2:Label;
      
      public var _MountPanel_Label5:Label;
      
      private var MountInfoArr:Array = ["exp","addRate","lev","upLv"];
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _934637100rideInGrowCanvasBtn:BasicGlowButton;
      
      private var _1421002863nextLevPro2:Label;
      
      private var MountDressBuyList:Object = new Object();
      
      private var _1285315961mountUpPro:DataGrid;
      
      private var _69165793levPro1:Label;
      
      private var dressAddProPer:Object = new Object();
      
      private var _1699273609basicPro6:Label;
      
      private var MountProArray:Array = [Language.MOUNTPANEL_U[14],Language.MOUNTPANEL_U[15],Language.MOUNTPANEL_U[16],Language.MOUNTPANEL_U[17],Language.MOUNTPANEL_U[18],Language.MOUNTPANEL_U[35]];
      
      private var rideIndex:int = 0;
      
      private var _1421002866nextLevPro5:Label;
      
      private var _1699273613basicPro2:Label;
      
      public var dressTimeObj:Object = new Object();
      
      private var _123813654mountImg:Image;
      
      private var _1148692634addPro2:Label;
      
      private var _457068166mountTime:Label;
      
      private var AddProNumArray:Array = ["lifeBasic","phyAttackBasic","magAttackBasic","phyDefenseBasic","magDefenseBasic","debuffBasic"];
      
      public var _MountPanel_Canvas11:Canvas;
      
      public var _MountPanel_Canvas15:Canvas;
      
      private var _2057263455mountDataList:List;
      
      private var _69165798levPro6:Label;
      
      private var _1148692632addPro4:Label;
      
      private var dressAddProNum:Object = new Object();
      
      private var _1472058084restBtnInGrowCanvasBtn:BasicGlowButton;
      
      private var _1421002862nextLevPro1:Label;
      
      private var _1126085605curUpLv:Label;
      
      private var MountDressBuyArr:ArrayCollection = new ArrayCollection();
      
      private var mountDressList:Object = new Object();
      
      private var _69165796levPro4:Label;
      
      private var _1148692630addPro6:Label;
      
      private var _456744071mountImg1:Image;
      
      private var _1177350942itemNum1:Label;
      
      private var _1177350944itemNum3:Label;
      
      private var _1699273610basicPro5:Label;
      
      private var _548908834curUpExp:Label;
      
      private var _1421002865nextLevPro4:Label;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _493431665renewBtn:DelayButton;
      
      private var mountData:Object = new Object();
      
      private var _1197693508rideBtn:DelayButton;
      
      private var DressResMap:Dictionary = new Dictionary();
      
      mx_internal var _watchers:Array = [];
      
      private var _69165794levPro2:Label;
      
      public var _MountPanel_Canvas2:Canvas;
      
      private var _1699273612basicPro3:Label;
      
      public var _MountPanel_Canvas7:Canvas;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1148692635addPro1:Label;
      
      public var _MountPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _466731719advancedGrowBtn:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var AddProPerArray:Array = ["lifePer","phyAttackPer","magAttackPer","phyDefensePer","magDefensePer","debuffPer"];
      
      private var _123817148mountExp:Label;
      
      private var _976038946feedBtn:DelayButton;
      
      public var _MountPanel_Label12:Label;
      
      private var _1699273614basicPro1:Label;
      
      public var _MountPanel_Label19:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _1351538778mountImgInGrowCanvas:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MountPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":480,
                        "height":370,
                        "horizontalScrollPolicy":"off",
                        "x":10,
                        "y":35,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":3,
                                 "width":65,
                                 "styleName":"HorizontalTab",
                                 "height":23,
                                 "selected":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":68,
                                 "y":3,
                                 "width":91,
                                 "styleName":"HorizontalTab",
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":158,
                                 "y":3,
                                 "width":65,
                                 "styleName":"HorizontalTab",
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":226,
                                 "y":3,
                                 "width":65,
                                 "styleName":"HorizontalTab",
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tab",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":480,
                                 "height":340,
                                 "x":0,
                                 "y":25,
                                 "tabEnabled":false,
                                 "styleName":"TabNavPlayer",
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_MountPanel_Canvas2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":6,
                                                   "y":12,
                                                   "width":100,
                                                   "height":320,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 14;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":10,
                                                            "width":70,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":List,
                                                      "id":"mountDataList",
                                                      "events":{
                                                         "itemClick":"__mountDataList_itemClick",
                                                         "mouseDown":"__mountDataList_mouseDown"
                                                      },
                                                      "stylesFactory":function():void
                                                      {
                                                         this.backgroundAlpha = 0;
                                                         this.right = "0";
                                                         this.borderStyle = "none";
                                                         this.left = "0";
                                                         this.verticalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "horizontalScrollPolicy":"off",
                                                            "height":230,
                                                            "itemRenderer":_MountPanel_ClassFactory1_c()
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
                                                   "x":108,
                                                   "y":12,
                                                   "width":197,
                                                   "height":320,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 14;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":10,
                                                            "height":30
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"mountLev",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":42,
                                                            "width":175,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"mountTime",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":62,
                                                            "width":185,
                                                            "height":20,
                                                            "htmlText":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"mountImg",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":86,
                                                            "width":180,
                                                            "height":180
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"rideBtn",
                                                      "events":{"click":"__rideBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "10";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":2500,
                                                            "x":20,
                                                            "width":55,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"renewBtn",
                                                      "events":{"click":"__renewBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "10";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":2500,
                                                            "x":70,
                                                            "width":50,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"feedBtn",
                                                      "events":{"click":"__feedBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "10";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":2500,
                                                            "x":120,
                                                            "width":55,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
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
                                                   "x":310,
                                                   "y":12,
                                                   "width":165,
                                                   "height":155,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 14;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":10,
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
                                                            "y":30,
                                                            "width":140,
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
                                                            "y":50,
                                                            "width":140,
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
                                                            "y":70,
                                                            "width":140,
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
                                                            "y":90,
                                                            "width":140,
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
                                                            "y":110,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
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
                                                            "y":130,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
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
                                                   "x":310,
                                                   "y":175,
                                                   "width":165,
                                                   "height":155,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label12",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 14;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":10,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"addPro1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":30,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"addPro2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":50,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"addPro3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":70,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"addPro4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":90,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"addPro5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":110,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"addPro6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":130,
                                                            "width":140,
                                                            "height":20,
                                                            "text":""
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
                                    "id":"_MountPanel_Canvas7",
                                    "events":{"show":"___MountPanel_Canvas7_show"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":6,
                                                   "y":12,
                                                   "width":190,
                                                   "height":318,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label19",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 14;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":10,
                                                            "height":30
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"mountLev2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":30,
                                                            "width":175,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"mountImgInGrowCanvas",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":160,
                                                            "width":175,
                                                            "x":6.5,
                                                            "y":67
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"rideInGrowCanvasBtn",
                                                      "events":{"click":"__rideInGrowCanvasBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "20";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":30,
                                                            "width":55,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"restBtnInGrowCanvasBtn",
                                                      "events":{"click":"__restBtnInGrowCanvasBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "20";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":100,
                                                            "width":55,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
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
                                                   "x":198,
                                                   "y":12,
                                                   "width":272,
                                                   "height":180,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label21",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":8,
                                                            "y":10,
                                                            "height":30
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_MountPanel_Label22",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":137,
                                                            "y":10,
                                                            "height":30
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"levPro1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":38,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"levPro2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":58,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"levPro3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":78,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"levPro4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":98,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"levPro5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":118,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"levPro6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":138,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextLevPro1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":152,
                                                            "y":38,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextLevPro2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":152,
                                                            "y":58,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextLevPro3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":152,
                                                            "y":78,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextLevPro4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":152,
                                                            "y":98,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextLevPro5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":152,
                                                            "y":118,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextLevPro6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":152,
                                                            "y":138,
                                                            "height":20,
                                                            "text":""
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
                                                   "x":198,
                                                   "y":200,
                                                   "width":272,
                                                   "height":130,
                                                   "styleName":"CSSBorder",
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"mountExp",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":30,
                                                            "y":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":PropertyBar,
                                                      "id":"expBar",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.cornerRadius = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":30,
                                                            "y":40,
                                                            "width":222,
                                                            "height":14,
                                                            "showTip":true,
                                                            "barCornerRadius":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ScrollTextArrCanvas,
                                                      "id":"stExp",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":165,
                                                            "y":55
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"normalGrowBtn",
                                                      "events":{"click":"__normalGrowBtn_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":40,
                                                            "y":70,
                                                            "width":86,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"advancedGrowBtn",
                                                      "events":{"click":"__advancedGrowBtn_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":144,
                                                            "y":70,
                                                            "width":108,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"itemNum1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16711680;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":13,
                                                            "y":98,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":LinkButton,
                                                      "id":"_MountPanel_LinkButton1",
                                                      "events":{"click":"___MountPanel_LinkButton1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.textDecoration = "underline";
                                                         this.fontSize = 12;
                                                         this.fontWeight = "normal";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":200,
                                                            "y":98
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
                                    "id":"_MountPanel_Canvas11",
                                    "events":{"show":"___MountPanel_Canvas11_show"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":12,
                                                   "width":460,
                                                   "height":170,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"mountImg1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":160,
                                                            "width":175,
                                                            "x":10,
                                                            "y":5
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"mountImg2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":160,
                                                            "width":175,
                                                            "x":263,
                                                            "y":5
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"curUpLv",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":10,
                                                            "width":40,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"nextUpLv",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":275,
                                                            "y":10,
                                                            "width":40,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":40,
                                                            "width":40,
                                                            "x":204,
                                                            "y":62
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
                                                   "x":10,
                                                   "y":185,
                                                   "width":212,
                                                   "height":150,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"mountUpPro",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":20,
                                                            "y":0,
                                                            "height":145,
                                                            "verticalScrollPolicy":"off",
                                                            "columns":[_MountPanel_DataGridColumn1_i(),_MountPanel_DataGridColumn2_i(),_MountPanel_DataGridColumn3_i()]
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
                                                   "y":185,
                                                   "width":240,
                                                   "height":150,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"curUpExp",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15116365;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":25
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":PropertyBar,
                                                      "id":"upExpBar",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.cornerRadius = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":10,
                                                            "y":45,
                                                            "width":210,
                                                            "height":14,
                                                            "showTip":true,
                                                            "barCornerRadius":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_MountPanel_BasicGlowButton9",
                                                      "events":{"click":"___MountPanel_BasicGlowButton9_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":170,
                                                            "y":80,
                                                            "width":60,
                                                            "height":20,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"upCostInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":3,
                                                            "y":81,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"itemNum2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16711680;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":102,
                                                            "width":150,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"itemNum3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16711680;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":15,
                                                            "y":122,
                                                            "width":150,
                                                            "height":20,
                                                            "text":""
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":LinkButton,
                                                      "id":"_MountPanel_LinkButton2",
                                                      "events":{"click":"___MountPanel_LinkButton2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.textDecoration = "underline";
                                                         this.fontSize = 12;
                                                         this.fontWeight = "normal";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":163,
                                                            "y":118
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
                                    "id":"_MountPanel_Canvas15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":12,
                                                   "width":460,
                                                   "height":318,
                                                   "styleName":"CSSBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":PageSelector,
                                                      "id":"pageSelector",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":149.5,
                                                            "y":270,
                                                            "width":159,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":LinkButton,
                                                      "id":"_MountPanel_LinkButton3",
                                                      "events":{"click":"___MountPanel_LinkButton3_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "5";
                                                         this.bottom = "5";
                                                         this.color = 16777215;
                                                         this.textDecoration = "underline";
                                                         this.fontSize = 12;
                                                         this.fontWeight = "normal";
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
               })]
            };
         }
      });
      
      private var _1148692633addPro3:Label;
      
      public var _MountPanel_Label22:Label;
      
      public function MountPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 410;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___MountPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MountPanel._watcherSetupUtil = param1;
      }
      
      public function ___MountPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function __feedBtn_click(param1:MouseEvent) : void
      {
         stopMount();
      }
      
      public function set restBtnInGrowCanvasBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1472058084restBtnInGrowCanvasBtn;
         if(_loc2_ !== param1)
         {
            this._1472058084restBtnInGrowCanvasBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restBtnInGrowCanvasBtn",_loc2_,param1));
         }
      }
      
      public function set stExp(param1:ScrollTextArrCanvas) : void
      {
         var _loc2_:Object = this._109730812stExp;
         if(_loc2_ !== param1)
         {
            this._109730812stExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stExp",_loc2_,param1));
         }
      }
      
      public function showMountDressShop() : void
      {
         initDressBuyList();
         initPageSelector();
         updateShopView();
      }
      
      private function refreshMountOvertimeDate(param1:Object) : void
      {
         var _loc3_:Date = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = mountDressAc.getItemAt(mountDataList.selectedIndex);
         if(Boolean(_loc2_) && Boolean(_loc2_.id) && _loc2_.id == param1.id)
         {
            setOverdueTime(param1.time);
            if(param1.time > 1)
            {
               _loc3_ = new Date(param1.time);
               _core.sysMsg(Language.MOUNTPANEL_U[70].toString().replace("{year}",_loc3_.getFullYear()).replace("{month}",_loc3_.getMonth() + 1).replace("{day}",_loc3_.getDate()).replace("{hour}",_loc3_.getHours()).replace("{minute}",_loc3_.getMinutes()));
               dressTimeObj[param1.id] = param1.time;
               _core.view.getUI(ViewManager.MAIN_LONGBUFF).dressTimeObj = dressTimeObj;
               _core.view.getUI(ViewManager.MAIN_LONGBUFF).resetMountDressTimer();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stExp() : ScrollTextArrCanvas
      {
         return this._109730812stExp;
      }
      
      public function ___MountPanel_LinkButton2_click(param1:MouseEvent) : void
      {
         showRule(2);
      }
      
      private function _MountPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MountPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 65;
         _loc1_.dataField = "nextPro";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_MountPanel_DataGridColumn3",_MountPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function ___MountPanel_BasicGlowButton9_click(param1:MouseEvent) : void
      {
         advancedMount();
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabClick(3);
      }
      
      public function __advancedGrowBtn_click(param1:MouseEvent) : void
      {
         feedMount(2);
      }
      
      public function set itemNum3(param1:Label) : void
      {
         var _loc2_:Object = this._1177350944itemNum3;
         if(_loc2_ !== param1)
         {
            this._1177350944itemNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNum3",_loc2_,param1));
         }
      }
      
      public function set itemNum1(param1:Label) : void
      {
         var _loc2_:Object = this._1177350942itemNum1;
         if(_loc2_ !== param1)
         {
            this._1177350942itemNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNum1",_loc2_,param1));
         }
      }
      
      public function set curUpExp(param1:Label) : void
      {
         var _loc2_:Object = this._548908834curUpExp;
         if(_loc2_ !== param1)
         {
            this._548908834curUpExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curUpExp",_loc2_,param1));
         }
      }
      
      public function set nextUpLv(param1:Label) : void
      {
         var _loc2_:Object = this._1424435992nextUpLv;
         if(_loc2_ !== param1)
         {
            this._1424435992nextUpLv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextUpLv",_loc2_,param1));
         }
      }
      
      private function _MountPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_BasicTitleCanvas1.text = param1;
         },"_MountPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Canvas2.label = param1;
         },"_MountPanel_Canvas2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label1.text = param1;
         },"_MountPanel_Label1.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label1.filters = param1;
         },"_MountPanel_Label1.filters");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label2.text = param1;
         },"_MountPanel_Label2.text");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label2.filters = param1;
         },"_MountPanel_Label2.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rideBtn.label = param1;
         },"rideBtn.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            renewBtn.label = param1;
         },"renewBtn.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            feedBtn.label = param1;
         },"feedBtn.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label5.text = param1;
         },"_MountPanel_Label5.text");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label5.filters = param1;
         },"_MountPanel_Label5.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label12.text = param1;
         },"_MountPanel_Label12.text");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label12.filters = param1;
         },"_MountPanel_Label12.filters");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Canvas7.label = param1;
         },"_MountPanel_Canvas7.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label19.text = param1;
         },"_MountPanel_Label19.text");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label19.filters = param1;
         },"_MountPanel_Label19.filters");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rideInGrowCanvasBtn.label = param1;
         },"rideInGrowCanvasBtn.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            restBtnInGrowCanvasBtn.label = param1;
         },"restBtnInGrowCanvasBtn.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label21.text = param1;
         },"_MountPanel_Label21.text");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label21.filters = param1;
         },"_MountPanel_Label21.filters");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Label22.text = param1;
         },"_MountPanel_Label22.text");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _MountPanel_Label22.filters = param1;
         },"_MountPanel_Label22.filters");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mountExp.text = param1;
         },"mountExp.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            expBar.propName = param1;
         },"expBar.propName");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            normalGrowBtn.label = param1;
         },"normalGrowBtn.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[43].replace("{num}",1);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            normalGrowBtn.toolTip = param1;
         },"normalGrowBtn.toolTip");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            advancedGrowBtn.label = param1;
         },"advancedGrowBtn.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[43].replace("{num}",10);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            advancedGrowBtn.toolTip = param1;
         },"advancedGrowBtn.toolTip");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_LinkButton1.label = param1;
         },"_MountPanel_LinkButton1.label");
         result[32] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton1.setStyle("overSkin",param1);
         },"_MountPanel_LinkButton1.overSkin");
         result[33] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton1.setStyle("upSkin",param1);
         },"_MountPanel_LinkButton1.upSkin");
         result[34] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton1.setStyle("downSkin",param1);
         },"_MountPanel_LinkButton1.downSkin");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Canvas11.label = param1;
         },"_MountPanel_Canvas11.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_DataGridColumn1.headerText = param1;
         },"_MountPanel_DataGridColumn1.headerText");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_DataGridColumn2.headerText = param1;
         },"_MountPanel_DataGridColumn2.headerText");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_DataGridColumn3.headerText = param1;
         },"_MountPanel_DataGridColumn3.headerText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curUpExp.text = param1;
         },"curUpExp.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upExpBar.propName = param1;
         },"upExpBar.propName");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_BasicGlowButton9.label = param1;
         },"_MountPanel_BasicGlowButton9.label");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_LinkButton2.label = param1;
         },"_MountPanel_LinkButton2.label");
         result[43] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton2.setStyle("overSkin",param1);
         },"_MountPanel_LinkButton2.overSkin");
         result[44] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton2.setStyle("upSkin",param1);
         },"_MountPanel_LinkButton2.upSkin");
         result[45] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton2.setStyle("downSkin",param1);
         },"_MountPanel_LinkButton2.downSkin");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_Canvas15.label = param1;
         },"_MountPanel_Canvas15.label");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MountPanel_LinkButton3.label = param1;
         },"_MountPanel_LinkButton3.label");
         result[48] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton3.setStyle("overSkin",param1);
         },"_MountPanel_LinkButton3.overSkin");
         result[49] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton3.setStyle("upSkin",param1);
         },"_MountPanel_LinkButton3.upSkin");
         result[50] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _MountPanel_LinkButton3.setStyle("downSkin",param1);
         },"_MountPanel_LinkButton3.downSkin");
         result[51] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get rideBtn() : DelayButton
      {
         return this._1197693508rideBtn;
      }
      
      public function __restBtnInGrowCanvasBtn_click(param1:MouseEvent) : void
      {
         stopMount();
      }
      
      public function __mountDataList_itemClick(param1:ListEvent) : void
      {
         onClickMountDress();
      }
      
      public function ___MountPanel_Canvas7_show(param1:FlexEvent) : void
      {
         showMountLevelCanvas();
      }
      
      private function _MountPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MountPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 65;
         _loc1_.dataField = "curPro";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_MountPanel_DataGridColumn2",_MountPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function set itemNum2(param1:Label) : void
      {
         var _loc2_:Object = this._1177350943itemNum2;
         if(_loc2_ !== param1)
         {
            this._1177350943itemNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNum2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPro2() : Label
      {
         return this._1421002863nextLevPro2;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPro4() : Label
      {
         return this._1421002865nextLevPro4;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro2() : Label
      {
         return this._1699273613basicPro2;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro4() : Label
      {
         return this._1699273611basicPro4;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro6() : Label
      {
         return this._1699273609basicPro6;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro3() : Label
      {
         return this._1699273612basicPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro5() : Label
      {
         return this._1699273610basicPro5;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPro3() : Label
      {
         return this._1421002864nextLevPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get normalGrowBtn() : BasicGlowButton
      {
         return this._1726777758normalGrowBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountTime() : Label
      {
         return this._457068166mountTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountImg1() : Image
      {
         return this._456744071mountImg1;
      }
      
      public function set mountExp(param1:Label) : void
      {
         var _loc2_:Object = this._123817148mountExp;
         if(_loc2_ !== param1)
         {
            this._123817148mountExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountExp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro1() : Label
      {
         return this._1699273614basicPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPro6() : Label
      {
         return this._1421002867nextLevPro6;
      }
      
      public function updateMountDressList(param1:int, param2:int, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:* = undefined;
         var _loc8_:String = null;
         if(!this.initialized)
         {
            return;
         }
         var _loc4_:Object = GameData.d[GamePredef.TBL_MOUNT_DRESS][param2];
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Object = new Object();
         _loc5_.id = param2;
         _loc5_.name = _loc4_.name;
         if(param1 == 1)
         {
            if(!mountDressList)
            {
               mountDressList = new Object();
            }
            mountDressList[param2] = param2;
            _loc5_.iconCode = _loc4_.iconCode;
            for(_loc7_ in mountDressAc)
            {
               if(mountDressAc[_loc7_].id == param2)
               {
                  _loc6_ = true;
               }
            }
            if(!_loc6_)
            {
               mountDressAc.addItem(_loc5_);
            }
            mountDataList.dataProvider = mountDressAc;
            dressTimeObj[param2] = param3;
            updateDressBuyList(_loc5_,2);
         }
         else
         {
            if(!mountDressList || !mountDressList[param2])
            {
               return;
            }
            delete mountDressList[param2];
            if(dressTimeObj[param2])
            {
               delete dressTimeObj[param2];
            }
            for(_loc7_ in mountDressAc)
            {
               if(mountDressAc.getItemAt(_loc7_).id == param2)
               {
                  mountDressAc.removeItemAt(_loc7_);
                  break;
               }
            }
            mountDataList.dataProvider = mountDressAc;
            mountDataList.selectedIndex = 0;
            onClickMountDress();
            _loc5_.sort1 = _loc5_.id;
            _loc5_.price = _loc4_.gold;
            if(DressResMap[_loc4_.iconCode])
            {
               _loc8_ = DressResMap[_loc4_.iconCode];
            }
            else
            {
               _loc8_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc4_.iconCode));
            }
            _loc5_.url = _loc8_;
            updateDressBuyList(_loc5_,1);
         }
         updateDressAddPro(mountDressList);
         updateMountInfoView(true,true);
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).dressTimeObj = dressTimeObj;
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).resetMountDressTimer();
      }
      
      private function _MountPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MOUNTPANEL_U[0];
         _loc1_ = Language.MOUNTPANEL_U[1];
         _loc1_ = Language.MOUNTPANEL_U[2];
         _loc1_ = Language.MOUNTPANEL_U[3];
         _loc1_ = Language.MOUNTPANEL_U[4];
         _loc1_ = Language.MOUNTPANEL_U[1];
         _loc1_ = Language.MOUNTPANEL_U[5];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[19];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[10];
         _loc1_ = Language.MOUNTPANEL_U[68];
         _loc1_ = Language.MOUNTPANEL_U[20];
         _loc1_ = Language.MOUNTPANEL_U[12];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[13];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[2];
         _loc1_ = Language.MOUNTPANEL_U[19];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[10];
         _loc1_ = Language.MOUNTPANEL_U[20];
         _loc1_ = Language.MOUNTPANEL_U[21];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[22];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[26];
         _loc1_ = Language.MOUNTPANEL_U[26];
         _loc1_ = Language.MOUNTPANEL_U[23];
         _loc1_ = Language.MOUNTPANEL_U[43].replace("{num}",1);
         _loc1_ = Language.MOUNTPANEL_U[24];
         _loc1_ = Language.MOUNTPANEL_U[43].replace("{num}",10);
         _loc1_ = Language.MOUNTPANEL_U[25];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.MOUNTPANEL_U[3];
         _loc1_ = Language.MOUNTPANEL_U[28];
         _loc1_ = Language.MOUNTPANEL_U[29];
         _loc1_ = Language.MOUNTPANEL_U[30];
         _loc1_ = Language.MOUNTPANEL_U[33];
         _loc1_ = Language.MOUNTPANEL_U[33];
         _loc1_ = Language.MOUNTPANEL_U[34];
         _loc1_ = Language.MOUNTPANEL_U[25];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.MOUNTPANEL_U[4];
         _loc1_ = Language.MOUNTPANEL_U[25];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountImg2() : Image
      {
         return this._456744072mountImg2;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPro1() : Label
      {
         return this._1421002862nextLevPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      public function set mountLev(param1:Label) : void
      {
         var _loc2_:Object = this._123811004mountLev;
         if(_loc2_ !== param1)
         {
            this._123811004mountLev = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountLev",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get renewBtn() : DelayButton
      {
         return this._493431665renewBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPro5() : Label
      {
         return this._1421002866nextLevPro5;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountDataList() : List
      {
         return this._2057263455mountDataList;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      public function updateShopView(param1:int = 0, param2:int = 0) : void
      {
         if(pageSelector.totalItemCount == 0)
         {
            return;
         }
         if(pageSelector.pageNo * PAGE_MAX_DRESS_NUM + 1 < MountDressBuyArr.length)
         {
         }
      }
      
      private function _MountPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MountPanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "name";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_MountPanel_DataGridColumn1",_MountPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function changeRideState(param1:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         if(!this.initialized)
         {
            return;
         }
         if(mountDataList.selectedIndex > mountDressAc.length - 1)
         {
            return;
         }
         if(mountDataList.selectedIndex < 0)
         {
            mountDataList.selectedIndex = rideIndex;
         }
         var _loc2_:Object = mountDressAc.getItemAt(mountDataList.selectedIndex);
         if(param1 == 1)
         {
            if(rideIndex >= mountDressAc.length)
            {
               return;
            }
            _loc3_ = mountDressAc.getItemAt(rideIndex);
            if(rideIndex != mountDataList.selectedIndex)
            {
               _loc5_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][_loc3_.id];
               if(!_loc5_)
               {
                  return;
               }
               _loc3_.name = _loc5_.name;
               rideIndex = mountDataList.selectedIndex;
            }
            _core.view.getUI(ViewManager.MAIN_LONGBUFF).useMountDress = Number(_loc2_.id);
            _loc4_ = _loc2_.name;
            _loc2_.name = "Đang cưỡi  " + _loc4_;
            _core.view.getUI(ViewManager.PANEL_CHARACTOR).updateMount();
         }
         else
         {
            _loc5_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][_loc2_.id];
            if(!_loc5_)
            {
               return;
            }
            _loc2_.name = _loc5_.name;
         }
         mountDataList.dataProvider = mountDressAc;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountImgInGrowCanvas() : Image
      {
         return this._1351538778mountImgInGrowCanvas;
      }
      
      public function getMountData(param1:int, param2:int) : Object
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc3_:Object = _core.data.gameDataIndex[GamePredef.TBL_MOUNT][param2];
         for(_loc4_ in _loc3_)
         {
            if(Boolean(_loc3_[_loc4_]) && int(_loc3_[_loc4_].level) == param1)
            {
               return _loc3_[_loc4_];
            }
         }
         _loc5_ = new Object();
         _loc6_ = 0;
         while(_loc6_ < 6)
         {
            _loc5_[AddProNumArray[_loc6_]] = 0;
            _loc5_[AddProPerArray[_loc6_]] = 0;
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function set mountImgInGrowCanvas(param1:Image) : void
      {
         var _loc2_:Object = this._1351538778mountImgInGrowCanvas;
         if(_loc2_ !== param1)
         {
            this._1351538778mountImgInGrowCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountImgInGrowCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expBar() : PropertyBar
      {
         return this._1289197386expBar;
      }
      
      public function set addPro1(param1:Label) : void
      {
         var _loc2_:Object = this._1148692635addPro1;
         if(_loc2_ !== param1)
         {
            this._1148692635addPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro1",_loc2_,param1));
         }
      }
      
      public function set addPro3(param1:Label) : void
      {
         var _loc2_:Object = this._1148692633addPro3;
         if(_loc2_ !== param1)
         {
            this._1148692633addPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro3",_loc2_,param1));
         }
      }
      
      public function set addPro5(param1:Label) : void
      {
         var _loc2_:Object = this._1148692631addPro5;
         if(_loc2_ !== param1)
         {
            this._1148692631addPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro5",_loc2_,param1));
         }
      }
      
      public function set addPro4(param1:Label) : void
      {
         var _loc2_:Object = this._1148692632addPro4;
         if(_loc2_ !== param1)
         {
            this._1148692632addPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro4",_loc2_,param1));
         }
      }
      
      public function ___MountPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         showRule(1);
      }
      
      public function updateDressAddPro(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < 6)
         {
            dressAddProNum[AddProNumArray[_loc2_]] = 0;
            dressAddProPer[AddProPerArray[_loc2_]] = 0;
            _loc2_++;
         }
         for(_loc3_ in param1)
         {
            _loc4_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][int(param1[_loc3_])];
            if(_loc4_)
            {
               _loc5_ = 0;
               while(_loc5_ < 6)
               {
                  dressAddProNum[AddProNumArray[_loc5_]] += Number(_loc4_[AddProNumArray[_loc5_]]);
                  dressAddProPer[AddProPerArray[_loc5_]] += Number(_loc4_[AddProPerArray[_loc5_]]);
                  _loc5_++;
               }
            }
         }
         updateMountInfoView(true,true);
      }
      
      public function set mountLev2(param1:Label) : void
      {
         var _loc2_:Object = this._456826222mountLev2;
         if(_loc2_ !== param1)
         {
            this._456826222mountLev2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountLev2",_loc2_,param1));
         }
      }
      
      public function set nextLevPro2(param1:Label) : void
      {
         var _loc2_:Object = this._1421002863nextLevPro2;
         if(_loc2_ !== param1)
         {
            this._1421002863nextLevPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPro2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advancedGrowBtn() : BasicGlowButton
      {
         return this._466731719advancedGrowBtn;
      }
      
      public function showMountUpLevCanvas() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get levPro1() : Label
      {
         return this._69165793levPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get levPro2() : Label
      {
         return this._69165794levPro2;
      }
      
      public function set addPro6(param1:Label) : void
      {
         var _loc2_:Object = this._1148692630addPro6;
         if(_loc2_ !== param1)
         {
            this._1148692630addPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro6",_loc2_,param1));
         }
      }
      
      public function set addPro2(param1:Label) : void
      {
         var _loc2_:Object = this._1148692634addPro2;
         if(_loc2_ !== param1)
         {
            this._1148692634addPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levPro5() : Label
      {
         return this._69165797levPro5;
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
      
      public function set nextLevPro3(param1:Label) : void
      {
         var _loc2_:Object = this._1421002864nextLevPro3;
         if(_loc2_ !== param1)
         {
            this._1421002864nextLevPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPro3",_loc2_,param1));
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
      
      public function __mountDataList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
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
      
      private function initPageSelector() : void
      {
         pageSelector.lastBtnLabel = Language.PAGE_SELECTOR[2];
         pageSelector.nextBtnLabel = Language.PAGE_SELECTOR[3];
         pageSelector.btnLastPage.width = 32;
         pageSelector.btnNextPage.width = 32;
         pageSelector.onPageChanged = updateShopView;
         pageSelector.initPageSeletor(this.MountDressBuyArr.length,PAGE_MAX_DRESS_NUM);
      }
      
      [Bindable(event="propertyChange")]
      public function get levPro6() : Label
      {
         return this._69165798levPro6;
      }
      
      private function _MountPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MountPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountImg() : Image
      {
         return this._123813654mountImg;
      }
      
      public function tabClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         var _loc2_:* = 0;
         while(_loc2_ <= 3)
         {
            this["tabBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["tabBtn" + param1].selected = true;
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
      
      public function beginMount(param1:int) : void
      {
         if(param1 == 1)
         {
            if(!mountDressAc.length || mountDataList.selectedIndex > mountDressAc.length - 1)
            {
               return;
            }
            if(mountDataList.selectedIndex < 0)
            {
               mountDataList.selectedIndex = 0;
            }
         }
         else if(this.selectedDress >= 0)
         {
            mountDataList.selectedIndex = selectedDress;
         }
         else
         {
            mountDataList.selectedIndex = 0;
         }
         var _loc2_:Object = mountDressAc.getItemAt(mountDataList.selectedIndex);
         if(Boolean(_loc2_) && Boolean(_loc2_.id))
         {
            _core.player.beginMounting(_loc2_.id);
            _core.view.getUI(ViewManager.MAIN_LONGBUFF).useMountDress = Number(_loc2_.id);
         }
      }
      
      public function set mountUpPro(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1285315961mountUpPro;
         if(_loc2_ !== param1)
         {
            this._1285315961mountUpPro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountUpPro",_loc2_,param1));
         }
      }
      
      public function set nextLevPro4(param1:Label) : void
      {
         var _loc2_:Object = this._1421002865nextLevPro4;
         if(_loc2_ !== param1)
         {
            this._1421002865nextLevPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPro4",_loc2_,param1));
         }
      }
      
      public function set normalGrowBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1726777758normalGrowBtn;
         if(_loc2_ !== param1)
         {
            this._1726777758normalGrowBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalGrowBtn",_loc2_,param1));
         }
      }
      
      public function set nextLevPro1(param1:Label) : void
      {
         var _loc2_:Object = this._1421002862nextLevPro1;
         if(_loc2_ !== param1)
         {
            this._1421002862nextLevPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPro1",_loc2_,param1));
         }
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
      public function get levPro3() : Label
      {
         return this._69165795levPro3;
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
      
      public function set nextLevPro6(param1:Label) : void
      {
         var _loc2_:Object = this._1421002867nextLevPro6;
         if(_loc2_ !== param1)
         {
            this._1421002867nextLevPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPro6",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      public function set mountImg1(param1:Image) : void
      {
         var _loc2_:Object = this._456744071mountImg1;
         if(_loc2_ !== param1)
         {
            this._456744071mountImg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountImg1",_loc2_,param1));
         }
      }
      
      public function ___MountPanel_Canvas11_show(param1:FlexEvent) : void
      {
         showMountUpLevCanvas();
      }
      
      public function set mountImg2(param1:Image) : void
      {
         var _loc2_:Object = this._456744072mountImg2;
         if(_loc2_ !== param1)
         {
            this._456744072mountImg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountImg2",_loc2_,param1));
         }
      }
      
      public function set mountTime(param1:Label) : void
      {
         var _loc2_:Object = this._457068166mountTime;
         if(_loc2_ !== param1)
         {
            this._457068166mountTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountTime",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function advancedMount() : void
      {
         var _loc3_:* = undefined;
         var _loc5_:int = 0;
         var _loc1_:Object = _core.data.gameDataIndex[GamePredef.TBL_MOUNT][2];
         var _loc2_:int = 0;
         for(_loc3_ in _loc1_)
         {
            if(_loc1_[_loc3_])
            {
               _loc2_++;
            }
         }
         if(this.mountData.upLv >= _loc2_ - 1)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.MOUNTPANEL_U[53],"",Alert.YES,null,null);
            return;
         }
         var _loc4_:Object = getMountData(this.mountData.upLv,2);
         if(!_loc4_)
         {
            return;
         }
         if(this.mountData.upLv < 8)
         {
            _loc5_ = int(_core.getItemNum(29,GamePredef.MOUNT_UPLEV_ITEM).num);
         }
         else
         {
            _loc5_ = int(_core.getItemNum(29,GamePredef.ADV_MOUNT_UPLEV_ITEM).num);
         }
         if(_loc5_ < _loc4_.itemNum)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.MOUNTPANEL_U[46],"",Alert.YES,null,null);
            return;
         }
         _core.remote.call("addMountUpExp",null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get nextUpLv() : Label
      {
         return this._1424435992nextUpLv;
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function feedMount(param1:int) : *
      {
         var _loc2_:Object = getMountData(this.mountData.upLv,2);
         if(!_loc2_)
         {
            return;
         }
         if(this.mountData.lev >= _loc2_.mountLevLimit)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.MOUNTPANEL_U[52],"",Alert.YES,null,null);
            return;
         }
         var _loc3_:int = int(_core.getItemNum(29,GamePredef.MOUNT_LEV_ITEM).num);
         var _loc4_:int = 1;
         if(param1 != 1)
         {
            _loc4_ = 10;
         }
         if(_loc3_ < _loc4_)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.MOUNTPANEL_U[45],"",Alert.YES,null,null);
            return;
         }
         _core.remote.call("addMountExp",null,param1);
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemNum3() : Label
      {
         return this._1177350944itemNum3;
      }
      
      public function setMountData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in MountInfoArr)
         {
            if(param1.hasOwnProperty(MountInfoArr[_loc2_]))
            {
               mountData[MountInfoArr[_loc2_]] = param1[MountInfoArr[_loc2_]];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curUpExp() : Label
      {
         return this._548908834curUpExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemNum1() : Label
      {
         return this._1177350942itemNum1;
      }
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levPro4() : Label
      {
         return this._69165796levPro4;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemNum2() : Label
      {
         return this._1177350943itemNum2;
      }
      
      public function set rideBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1197693508rideBtn;
         if(_loc2_ !== param1)
         {
            this._1197693508rideBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rideBtn",_loc2_,param1));
         }
      }
      
      public function set renewBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._493431665renewBtn;
         if(_loc2_ !== param1)
         {
            this._493431665renewBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"renewBtn",_loc2_,param1));
         }
      }
      
      public function stopMount() : void
      {
         _core.player.stopMounting();
      }
      
      public function set nextLevPro5(param1:Label) : void
      {
         var _loc2_:Object = this._1421002866nextLevPro5;
         if(_loc2_ !== param1)
         {
            this._1421002866nextLevPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPro5",_loc2_,param1));
         }
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      public function initDressBuyList() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc1_:int = 0;
         MountDressBuyArr = new ArrayCollection();
         MountDressBuyList = new Object();
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_MOUNT_DRESS][2];
         for(_loc3_ in _loc2_)
         {
            if(!mountDressList[_loc2_[_loc3_]["id"]])
            {
               _loc4_ = new Object();
               _loc4_.id = _loc2_[_loc3_]["id"];
               _loc4_.name = _loc2_[_loc3_]["name"];
               if(DressResMap[_loc2_[_loc3_]["iconCode"]])
               {
                  _loc5_ = DressResMap[_loc2_[_loc3_]["iconCode"]];
               }
               else
               {
                  _loc5_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc2_[_loc3_]["iconCode"]));
               }
               _loc4_.url = _loc5_;
               _loc4_.price = _loc2_[_loc3_]["gold"];
               _loc4_.sort1 = _loc4_.id;
               MountDressBuyArr.addItem(_loc4_);
               MountDressBuyList[_loc2_[_loc3_]["id"]] = _loc4_;
            }
         }
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set mountDataList(param1:List) : void
      {
         var _loc2_:Object = this._2057263455mountDataList;
         if(_loc2_ !== param1)
         {
            this._2057263455mountDataList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountDataList",_loc2_,param1));
         }
      }
      
      public function showMountLevelCanvas() : void
      {
         if(this.selectedDress > this.mountDressAc.length - 1)
         {
            return;
         }
         var _loc1_:Object = this.mountDressAc.getItemAt(this.selectedDress);
         var _loc2_:String = "";
         if(DressResMap[_loc1_.iconCode])
         {
            _loc2_ = DressResMap[_loc1_.iconCode];
         }
         else
         {
            _loc2_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc1_.iconCode));
         }
         mountImgInGrowCanvas.source = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get upExpBar() : PropertyBar
      {
         return this._456180529upExpBar;
      }
      
      [Bindable(event="propertyChange")]
      public function get mountExp() : Label
      {
         return this._123817148mountExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get restBtnInGrowCanvasBtn() : BasicGlowButton
      {
         return this._1472058084restBtnInGrowCanvasBtn;
      }
      
      public function set upExpBar(param1:PropertyBar) : void
      {
         var _loc2_:Object = this._456180529upExpBar;
         if(_loc2_ !== param1)
         {
            this._456180529upExpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upExpBar",_loc2_,param1));
         }
      }
      
      public function ___MountPanel_LinkButton3_click(param1:MouseEvent) : void
      {
         showRule(3);
      }
      
      public function onClickMountDress() : void
      {
         var _loc2_:String = null;
         if(mountDataList.selectedIndex > mountDressAc.length - 1)
         {
            return;
         }
         var _loc1_:Object = mountDressAc.getItemAt(mountDataList.selectedIndex);
         if(DressResMap[_loc1_.iconCode])
         {
            _loc2_ = DressResMap[_loc1_.iconCode];
         }
         else
         {
            _loc2_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc1_.iconCode));
         }
         mountImg.source = _loc2_;
         var _loc3_:Number = Number(dressTimeObj[mountDressAc.getItemAt(mountDataList.selectedIndex).id]);
         setOverdueTime(_loc3_);
         selectedDress = mountDataList.selectedIndex;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro4() : Label
      {
         return this._1148692632addPro4;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro5() : Label
      {
         return this._1148692631addPro5;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro3() : Label
      {
         return this._1148692633addPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro6() : Label
      {
         return this._1148692630addPro6;
      }
      
      public function set expBar(param1:PropertyBar) : void
      {
         var _loc2_:Object = this._1289197386expBar;
         if(_loc2_ !== param1)
         {
            this._1289197386expBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mountUpPro() : DataGrid
      {
         return this._1285315961mountUpPro;
      }
      
      public function updateDressBuyList(param1:Object, param2:int) : void
      {
         var _loc3_:Sort = null;
         if(!this.tabBtn3.visible)
         {
            return;
         }
         if(!MountDressBuyList)
         {
            return;
         }
         if(param2 == 1)
         {
            if(MountDressBuyList[param1.id])
            {
               return;
            }
            MountDressBuyArr.addItem(param1);
            MountDressBuyList[param1.id] = param1;
            _loc3_ = new Sort();
            _loc3_.fields = [new SortField("sort1",true,false,true)];
            MountDressBuyArr.sort = _loc3_;
            MountDressBuyArr.refresh();
         }
         else
         {
            if(!MountDressBuyList[param1.id])
            {
               return;
            }
            MountDressBuyArr.removeItemAt(MountDressBuyArr.getItemIndex(MountDressBuyList[param1.id]));
            delete MountDressBuyList[param1.id];
         }
         pageSelector.initPageSeletor(MountDressBuyArr.length,PAGE_MAX_DRESS_NUM);
         pageSelector.pageNo = 0;
         updateShopView();
      }
      
      [Bindable(event="propertyChange")]
      public function get mountLev2() : Label
      {
         return this._456826222mountLev2;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro1() : Label
      {
         return this._1148692635addPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro2() : Label
      {
         return this._1148692634addPro2;
      }
      
      public function renewMount() : void
      {
         var selectedItem:Object = null;
         var func:Function = null;
         var tData:Object = null;
         if(!mountDressAc.length || mountDataList.selectedIndex > mountDressAc.length - 1)
         {
            return;
         }
         if(mountDataList.selectedIndex < 0)
         {
            mountDataList.selectedIndex = 0;
         }
         if(this.selectedDress >= 0)
         {
            mountDataList.selectedIndex = selectedDress;
         }
         else
         {
            mountDataList.selectedIndex = 0;
         }
         selectedItem = mountDressAc.getItemAt(mountDataList.selectedIndex);
         if(Boolean(selectedItem) && Boolean(selectedItem.id))
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("renewMount",new Responder(refreshMountOvertimeDate),selectedItem.id);
               }
            };
            tData = GameData.d[GamePredef.TBL_MOUNT_DRESS][selectedItem.id];
            if(Boolean(tData) && tData.gold > 0)
            {
               Alert.show(Language.MOUNTPANEL_U[71].toString().replace("{gold}",tData.gold).replace("{name}",tData.name),"",Alert.YES | Alert.NO,null,func);
            }
         }
      }
      
      public function updateMountList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         if(!this.initialized)
         {
            return;
         }
         if(!param1)
         {
            return;
         }
         this.visible = true;
         mountDressAc = new ArrayCollection();
         for(_loc2_ in param1.mountList)
         {
            _loc8_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][int(param1.mountList[_loc2_])];
            if(_loc8_)
            {
               _loc9_ = new Object();
               _loc9_.id = param1.mountList[_loc2_];
               _loc9_.name = _loc8_.name;
               if(param1.mountList[_loc2_] == param1.useDress)
               {
                  _loc9_.name = "Đang cưỡi " + _loc9_.name;
                  rideIndex = _loc2_;
               }
               mountDressList[_loc9_.id] = _loc9_.id;
               _loc9_.iconCode = Number(_loc8_.iconCode);
               mountDressAc.addItem(_loc9_);
               dressTimeObj[param1.mountList[_loc2_]] = param1.mountOverdueList[_loc2_];
            }
         }
         _loc3_ = GameData.d[GamePredef.TBL_MOUNT_DRESS];
         if(_loc3_)
         {
            PAGE_MAX_DRESS_NUM = 0;
            for each(_loc9_ in _loc3_)
            {
               if(_loc9_.type == 2)
               {
                  ++PAGE_MAX_DRESS_NUM;
               }
            }
         }
         if(!mountDressAc.length)
         {
            return;
         }
         mountDataList.dataProvider = mountDressAc;
         var _loc4_:Number = Number(mountDressAc.getItemAt(rideIndex).iconCode);
         mountDataList.selectedIndex = rideIndex;
         var _loc5_:Number = Number(dressTimeObj[param1.mountList[rideIndex]]);
         var _loc6_:Date = new Date(_loc5_);
         setOverdueTime(_loc5_);
         if(DressResMap[_loc4_])
         {
            _loc7_ = DressResMap[_loc4_];
         }
         else
         {
            _loc7_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc4_));
         }
         mountImg.source = _loc7_;
         updateDressAddPro(mountDressList);
         updateMountView(param1);
         if(this.tabBtn3.visible)
         {
            showMountDressShop();
         }
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).useMountDress = Number(param1.mountList[rideIndex]);
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).dressTimeObj = dressTimeObj;
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).resetMountDressTimer();
      }
      
      public function __normalGrowBtn_click(param1:MouseEvent) : void
      {
         feedMount(1);
      }
      
      public function updateMountView(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:ArrayCollection = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:String = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:String = null;
         if(!this.initialized)
         {
            return;
         }
         setMountData(param1);
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(param1.hasOwnProperty("exp"))
         {
            _loc2_ = true;
         }
         if(param1.hasOwnProperty("addRate"))
         {
            _loc3_ = true;
         }
         if(mountLev)
         {
            updateMountInfoView(_loc2_,_loc3_);
         }
         if(Boolean(stExp) && Boolean(param1.addExp))
         {
            if(Number(param1.addExp) == 10)
            {
               stExp.setValue(param1.addExp,"May mắn"," điểm kinh nghiệm!");
            }
            else
            {
               stExp.setValue(param1.addExp,""," điểm kinh nghiệm");
            }
         }
         if(Boolean(mountLev2) && _loc2_)
         {
            mountLev2.text = Language.MOUNTPANEL_U[6].replace("{level}",mountData.lev);
            _loc4_ = getMountData(mountData.lev,1);
            _loc5_ = getMountData(mountData.lev + 1,1);
            if(!_loc4_ || !_loc5_)
            {
               return;
            }
            _loc6_ = 1;
            while(_loc6_ <= 6)
            {
               this["levPro" + _loc6_].text = MountProArray[_loc6_ - 1] + (MountProArray[_loc6_ - 1].toString().length <= 4 ? "  " : "") + " +" + _loc4_[AddProNumArray[_loc6_ - 1]];
               this["nextLevPro" + _loc6_].text = MountProArray[_loc6_ - 1] + (MountProArray[_loc6_ - 1].toString().length <= 4 ? "  " : "") + " +" + _loc5_[AddProNumArray[_loc6_ - 1]];
               _loc6_++;
            }
            mountExp.text = Language.MOUNTPANEL_U[26] + " " + mountData.exp;
            expBar.valueMax = _loc4_.exp;
            expBar.value = mountData.exp;
            itemNum1.text = Language.MOUNTPANEL_U[50] + _core.getItemNum(29,GamePredef.MOUNT_LEV_ITEM).num;
         }
         if(Boolean(curUpLv) && _loc3_)
         {
            curUpLv.text = this.mountData.upLv + Language.MOUNTPANEL_U[38];
            curUpExp.text = Language.MOUNTPANEL_U[33] + " " + this.mountData.addRate;
            _loc7_ = getMountData(this.mountData.upLv,2);
            _loc8_ = getMountData(this.mountData.upLv + 1,2);
            _loc9_ = new ArrayCollection();
            _loc10_ = 0;
            while(_loc10_ < 6)
            {
               _loc13_ = new Object();
               _loc13_.name = MountProArray[_loc10_];
               _loc13_.curPro = _loc7_[AddProPerArray[_loc10_]] + "%";
               if(Boolean(_loc8_) && Boolean(_loc8_.dressId))
               {
                  _loc13_.nextPro = _loc8_[AddProPerArray[_loc10_]] + "%";
               }
               _loc9_.addItem(_loc13_);
               _loc10_++;
            }
            mountUpPro.dataProvider = _loc9_;
            upExpBar.valueMax = ToolKit.minus(10000,_loc7_.exp);
            upExpBar.value = mountData.addRate;
            if(this.mountData.upLv < 8)
            {
               upCostInfo.text = Language.MOUNTPANEL_U[44].replace("{num}",_loc7_.itemNum);
            }
            else
            {
               upCostInfo.text = Language.MOUNTPANEL_U[74].replace("{num}",_loc7_.itemNum);
            }
            _loc11_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][_loc7_.dressId];
            _loc12_ = "";
            if(Boolean(_loc11_) && Boolean(DressResMap[_loc11_.iconCode]))
            {
               _loc12_ = DressResMap[_loc11_.iconCode];
            }
            else
            {
               _loc12_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc11_.iconCode));
            }
            mountImg1.source = _loc12_;
            if(Boolean(_loc8_) && Boolean(_loc8_.dressId))
            {
               _loc14_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][_loc8_.dressId];
               _loc15_ = "";
               if(DressResMap[_loc14_.iconCode])
               {
                  _loc15_ = DressResMap[_loc14_.iconCode];
               }
               else
               {
                  _loc15_ = ResManager.hash(ResManager.getIconUrlNoHash(_loc14_.iconCode));
               }
               mountImg2.source = _loc15_;
               nextUpLv.text = this.mountData.upLv + 1 + Language.MOUNTPANEL_U[38];
            }
            else
            {
               mountImg2.source = null;
               nextUpLv.text = "";
            }
            itemNum2.text = Language.MOUNTPANEL_U[51] + _core.getItemNum(29,GamePredef.MOUNT_UPLEV_ITEM).num;
            itemNum3.text = Language.MOUNTPANEL_U[73] + _core.getItemNum(29,GamePredef.ADV_MOUNT_UPLEV_ITEM).num;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MountPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MountPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MountPanelWatcherSetupUtil");
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
      
      public function showRule(param1:int) : void
      {
         var _loc2_:String = "";
         if(param1 == 1)
         {
            _loc2_ = Language.MOUNTPANEL_U[48];
         }
         else if(param1 == 2)
         {
            _loc2_ = Language.MOUNTPANEL_U[49];
         }
         else if(param1 == 3)
         {
            _loc2_ = Language.MOUNTPANEL_U[72];
         }
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         _alert = Alert.show(_loc2_,"",Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      public function set advancedGrowBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._466731719advancedGrowBtn;
         if(_loc2_ !== param1)
         {
            this._466731719advancedGrowBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advancedGrowBtn",_loc2_,param1));
         }
      }
      
      public function updateMountInfoView(param1:Boolean, param2:Boolean) : void
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Object = getMountData(mountData.lev,1);
         var _loc4_:Object = getMountData(mountData.upLv,2);
         if(!_loc3_ || !_loc3_)
         {
            return;
         }
         var _loc5_:int = 1;
         while(_loc5_ <= 6)
         {
            if(param1)
            {
               _loc6_ = MountProArray[_loc5_ - 1] + (MountProArray[_loc5_ - 1].toString().length <= 4 ? "  " : "") + " +" + _loc3_[AddProNumArray[_loc5_ - 1]];
               if(this.tabBtn3.visible)
               {
                  _loc6_ += "(+" + dressAddProNum[AddProNumArray[_loc5_ - 1]] + ")";
               }
               this["basicPro" + _loc5_].text = _loc6_;
            }
            if(param2)
            {
               _loc7_ = MountProArray[_loc5_ - 1] + (MountProArray[_loc5_ - 1].toString().length <= 4 ? "  " : "") + " +" + _loc4_[AddProPerArray[_loc5_ - 1]] + "%";
               if(this.tabBtn3.visible)
               {
                  _loc7_ += "(+" + dressAddProPer[AddProPerArray[_loc5_ - 1]] + "%)";
               }
               this["addPro" + _loc5_].text = _loc7_;
            }
            _loc5_++;
         }
         mountLev.text = Language.MOUNTPANEL_U[6].replace("{level}",mountData.lev);
      }
      
      public function set upCostInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1845920214upCostInfo;
         if(_loc2_ !== param1)
         {
            this._1845920214upCostInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upCostInfo",_loc2_,param1));
         }
      }
      
      public function set rideInGrowCanvasBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._934637100rideInGrowCanvasBtn;
         if(_loc2_ !== param1)
         {
            this._934637100rideInGrowCanvasBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rideInGrowCanvasBtn",_loc2_,param1));
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get mountLev() : Label
      {
         return this._123811004mountLev;
      }
      
      public function __renewBtn_click(param1:MouseEvent) : void
      {
         renewMount();
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      public function set feedBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._976038946feedBtn;
         if(_loc2_ !== param1)
         {
            this._976038946feedBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedBtn",_loc2_,param1));
         }
      }
      
      public function __rideInGrowCanvasBtn_click(param1:MouseEvent) : void
      {
         beginMount(2);
      }
      
      public function set levPro2(param1:Label) : void
      {
         var _loc2_:Object = this._69165794levPro2;
         if(_loc2_ !== param1)
         {
            this._69165794levPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levPro2",_loc2_,param1));
         }
      }
      
      public function set levPro1(param1:Label) : void
      {
         var _loc2_:Object = this._69165793levPro1;
         if(_loc2_ !== param1)
         {
            this._69165793levPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levPro1",_loc2_,param1));
         }
      }
      
      public function set curUpLv(param1:Label) : void
      {
         var _loc2_:Object = this._1126085605curUpLv;
         if(_loc2_ !== param1)
         {
            this._1126085605curUpLv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curUpLv",_loc2_,param1));
         }
      }
      
      private function setOverdueTime(param1:Number) : *
      {
         var _loc2_:Date = null;
         if(param1 == 1)
         {
            mountTime.visible = false;
            renewBtn.visible = false;
         }
         else
         {
            _loc2_ = new Date(param1);
            mountTime.visible = true;
            renewBtn.visible = true;
            mountTime.htmlText = Language.MOUNTPANEL_U[69].toString().replace("{year}",_loc2_.getFullYear()).replace("{month}",_loc2_.getMonth() + 1).replace("{day}",_loc2_.getDate()).replace("{hour}",_loc2_.getHours()).replace("{minute}",_loc2_.getMinutes());
         }
      }
      
      public function set levPro3(param1:Label) : void
      {
         var _loc2_:Object = this._69165795levPro3;
         if(_loc2_ !== param1)
         {
            this._69165795levPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levPro3",_loc2_,param1));
         }
      }
      
      public function set levPro5(param1:Label) : void
      {
         var _loc2_:Object = this._69165797levPro5;
         if(_loc2_ !== param1)
         {
            this._69165797levPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levPro5",_loc2_,param1));
         }
      }
      
      public function set levPro6(param1:Label) : void
      {
         var _loc2_:Object = this._69165798levPro6;
         if(_loc2_ !== param1)
         {
            this._69165798levPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levPro6",_loc2_,param1));
         }
      }
      
      public function set mountImg(param1:Image) : void
      {
         var _loc2_:Object = this._123813654mountImg;
         if(_loc2_ !== param1)
         {
            this._123813654mountImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upCostInfo() : Label
      {
         return this._1845920214upCostInfo;
      }
      
      public function set levPro4(param1:Label) : void
      {
         var _loc2_:Object = this._69165796levPro4;
         if(_loc2_ !== param1)
         {
            this._69165796levPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levPro4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rideInGrowCanvasBtn() : BasicGlowButton
      {
         return this._934637100rideInGrowCanvasBtn;
      }
      
      override public function initView() : void
      {
         if(!this.initialized)
         {
            this.visible = true;
            return;
         }
         _core.remote.call("getMountList",new Responder(updateMountList),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get feedBtn() : DelayButton
      {
         return this._976038946feedBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get curUpLv() : Label
      {
         return this._1126085605curUpLv;
      }
      
      public function __rideBtn_click(param1:MouseEvent) : void
      {
         beginMount(1);
      }
   }
}

