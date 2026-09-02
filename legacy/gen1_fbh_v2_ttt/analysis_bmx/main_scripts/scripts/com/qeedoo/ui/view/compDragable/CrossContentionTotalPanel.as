package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.LinkButton;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionTotalPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var _ORIGINAL_SERVER_ID:int = 0;
      
      public static var LEVLE_TYPE:int = 1;
      
      public static const CROSS_CONTENTION_MAX_INDEX:Number = 10000;
      
      public static var giveup:Boolean = false;
      
      public static const CROSS_CONTENTION_UINT_ID_START:int = 600000;
      
      public static var CROSS_CONTENTION_UINT_ID:Object = null;
      
      private var _976080868pvpnum:RoundedLabel;
      
      private var _62409574ContentionSingleState:DataGrid;
      
      private var _336959867banner1:Image;
      
      private var _3046233cav1:Canvas;
      
      private var _3034455btn3:BasicGlowButton;
      
      public var _CrossContentionTotalPanel_LinkButton1:LinkButton;
      
      private var _2132384574btnPointsAward:BasicGlowButton;
      
      private var _2092975032bornImg2:Image;
      
      private var _1739283322btnFirstOccupyAward:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _114581tab:ViewStack;
      
      private var _861747740ContentionTotalState:DataGrid;
      
      private var isOpen:Boolean = false;
      
      private var _976408569pvenum:RoundedLabel;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _1101683508serverStateList:ArrayCollection = new ArrayCollection();
      
      private var _3034454btn2:BasicGlowButton;
      
      private var _788655404btnAreaAward:BasicGlowButton;
      
      private var ALL_MAP_NAME:Object = GamePredef.CROSS_CONTENTION_MAP;
      
      public var _CrossContentionTotalPanel_RoundedLabel1:RoundedLabel;
      
      public var _CrossContentionTotalPanel_RoundedLabel2:RoundedLabel;
      
      public var _CrossContentionTotalPanel_RoundedLabel3:RoundedLabel;
      
      private var _910732927ContentionServerState:DataGrid;
      
      public var _CrossContentionTotalPanel_RoundedLabel6:RoundedLabel;
      
      public var _CrossContentionTotalPanel_RoundedLabel7:RoundedLabel;
      
      public var _CrossContentionTotalPanel_RoundedLabel8:RoundedLabel;
      
      private var load:Loader;
      
      private var malaiServer:Object = {
         520:true,
         521:true,
         522:true,
         523:true,
         524:true,
         525:true,
         527:true,
         529:true,
         530:true,
         531:true,
         532:true
      };
      
      private var res_load_state:int = 0;
      
      public var _CrossContentionTotalPanel_BasicDelayButton1:BasicDelayButton;
      
      public var _CrossContentionTotalPanel_BasicDelayButton2:BasicDelayButton;
      
      private var bornPositions:Array = [[0,0],[370,220],[276,222],[382,221],[188,172],[454,186],[400,300],[200,293],[113,190],[160,82],[430,85],[580,144],[550,300],[320,406],[123,420],[90,300],[9,194],[0,175],[61,109],[0,0],[123,29],[218,0],[390,-9],[476,45],[547,61],[611,70],[671,168],[676,225],[628,282],[670,323],[547,403],[503,432],[417,480],[291,485],[126,485],[13,485],[0,461],[4,401],[0,369],[-4,297]];
      
      private var _684659581myStateList:ArrayCollection = new ArrayCollection();
      
      private var mapData:Object = {};
      
      private var _3034453btn1:BasicGlowButton;
      
      private var _helpAlert:Alert;
      
      private var _3046235cav3:Canvas;
      
      private var _336959866banner2:Image;
      
      public var _CrossContentionTotalPanel_DataGridColumn1:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn2:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn3:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn4:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn5:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn6:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn7:DataGridColumn;
      
      public var _CrossContentionTotalPanel_DataGridColumn8:DataGridColumn;
      
      private var _2092975031bornImg1:Image;
      
      private var bornPositions2:Array = [[0,0],[370,220],[276,222],[382,221],[188,172],[454,186],[400,300],[200,293],[113,190],[160,82],[430,85],[580,144],[550,300],[320,406],[123,420],[90,300],[51,219],[29,138],[5,36],[80,29],[176,0],[353,0],[444,1],[602,20],[705,35],[689,94],[705,119],[702,176],[687,260],[695,366],[669,409],[678,466],[607,475],[373,442],[233,460],[110,440],[51,415],[59,357],[24,309],[31,236]];
      
      private var bornIcons:Object = {
         1:4130220000309,
         2:4130220000311,
         6:4130220000322,
         26:4130220000313,
         25:4130220000323
      };
      
      private var _193568521pvptime:RoundedLabel;
      
      private var mcPositions:Array = [[0,0],[319,176.95],[226.35,171.95],[332,171],[137.95,121.5],[404.45,135.95],[349.05,250.4],[155.95,243.55],[63,141.85],[117.1,32.35],[378.35,35],[530,94],[493.15,256.1],[273.6,356.15],[73,377.95],[41.1,261.85],[-2.1,176.35],[-2.1,116.4],[-2,48.9],[-1.65,-2.65],[89.1,-1.5],[212.95,-2.6],[365.85,-1.6],[452.9,-2.5],[519.85,-1.65],[568,79.35],[670.05,118.05],[661,187.85],[625.95,251.85],[642.8,331.25],[536.9,402.95],[470,438.25],[389.35,460.5],[266,446.05],[94.95,469.55],[-2.1,455.15],[-1.9,439],[-1.9,363.5],[-2.1,301],[-2.1,249]];
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _145245136container1:UIComponent;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var areas:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var mcs:Array = [];
      
      private var _3046234cav2:Canvas;
      
      private var inited:Boolean = false;
      
      private var _203727252pvetime:RoundedLabel;
      
      private var _1265899029totalStateList:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":955,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":39,
                        "percentWidth":100,
                        "height":535,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":760,
                                 "height":535,
                                 "styleName":"CanvasBorder",
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
                                    "type":Image,
                                    "id":"bornImg1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"bornImg2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"banner1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"banner2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":770,
                                 "y":5,
                                 "styleName":"HTabWrapper",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtn0",
                                    "events":{"click":"__tabBtn0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":55,
                                          "styleName":"HorizontalTab",
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
                                          "width":55,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtn2",
                                    "events":{"click":"__tabBtn2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":55,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tab",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":30,
                                 "width":175,
                                 "height":355,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"cav1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"ContentionTotalState",
                                             "events":{
                                                "itemClick":"__ContentionTotalState_itemClick",
                                                "rollOut":"__ContentionTotalState_rollOut",
                                                "itemRollOver":"__ContentionTotalState_itemRollOver"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.left = "5";
                                                this.right = "5";
                                                this.top = "10";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "columns":[_CrossContentionTotalPanel_DataGridColumn1_i(),_CrossContentionTotalPanel_DataGridColumn2_i(),_CrossContentionTotalPanel_DataGridColumn3_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"cav2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"ContentionServerState",
                                             "events":{
                                                "itemClick":"__ContentionServerState_itemClick",
                                                "rollOut":"__ContentionServerState_rollOut",
                                                "itemRollOver":"__ContentionServerState_itemRollOver"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "50";
                                                this.left = "5";
                                                this.right = "5";
                                                this.top = "10";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "columns":[_CrossContentionTotalPanel_DataGridColumn4_i(),_CrossContentionTotalPanel_DataGridColumn5_i(),_CrossContentionTotalPanel_DataGridColumn6_i()]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btnFirstOccupyAward",
                                             "events":{"click":"__btnFirstOccupyAward_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "30";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"BtnStdRed"};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"cav3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"ContentionSingleState",
                                             "events":{
                                                "itemClick":"__ContentionSingleState_itemClick",
                                                "rollOut":"__ContentionSingleState_rollOut",
                                                "itemRollOver":"__ContentionSingleState_itemRollOver"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "50";
                                                this.left = "5";
                                                this.right = "5";
                                                this.top = "10";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "columns":[_CrossContentionTotalPanel_DataGridColumn7_i(),_CrossContentionTotalPanel_DataGridColumn8_i()]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btnAreaAward",
                                             "events":{"click":"__btnAreaAward_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "30";
                                                this.horizontalCenter = "-40";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":70,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btnPointsAward",
                                             "events":{"click":"__btnPointsAward_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "30";
                                                this.horizontalCenter = "40";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":70,
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
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":385,
                                 "width":175,
                                 "height":150,
                                 "styleName":"RoundedGradientBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionTotalPanel_RoundedLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":4,
                                          "width":241
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionTotalPanel_RoundedLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":24,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionTotalPanel_RoundedLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":44,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"pvenum",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 32768;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "htmlText":"",
                                          "x":115,
                                          "y":24,
                                          "width":53
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"pvetime",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 32768;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "htmlText":"",
                                          "x":115,
                                          "y":44,
                                          "width":53
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionTotalPanel_RoundedLabel6",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":63,
                                          "width":241
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionTotalPanel_RoundedLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":83,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionTotalPanel_RoundedLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":103,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"pvpnum",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 32768;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "htmlText":"",
                                          "x":115,
                                          "y":83,
                                          "width":53
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"pvptime",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 32768;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "htmlText":"",
                                          "x":115,
                                          "y":103,
                                          "width":53
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_CrossContentionTotalPanel_BasicDelayButton1",
                                    "events":{"click":"___CrossContentionTotalPanel_BasicDelayButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-40";
                                       this.bottom = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "width":78
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_CrossContentionTotalPanel_BasicDelayButton2",
                                    "events":{"click":"___CrossContentionTotalPanel_BasicDelayButton2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "40";
                                       this.bottom = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "width":78
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn1",
                  "events":{"click":"__btn1_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "55";
                     this.bottom = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":55,
                        "styleName":"HorizontalTab",
                        "selected":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn2",
                  "events":{"click":"__btn2_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "115";
                     this.bottom = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":55,
                        "styleName":"HorizontalTab",
                        "selected":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn3",
                  "events":{"click":"__btn3_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "175";
                     this.bottom = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":55,
                        "styleName":"HorizontalTab",
                        "selected":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_CrossContentionTotalPanel_LinkButton1",
                  "events":{"click":"___CrossContentionTotalPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "5";
                     this.color = 16770560;
                     this.textDecoration = "underline";
                  }
               })]
            };
         }
      });
      
      public function CrossContentionTotalPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 955;
         this.height = 600;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionTotalPanel_DragableCanvas1_creationComplete);
      }
      
      public static function getUnitServersName(param1:Number) : String
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:String = "";
         for(_loc3_ in CROSS_CONTENTION_UINT_ID)
         {
            if(Number(CROSS_CONTENTION_UINT_ID[_loc3_]) == param1)
            {
               if(_loc2_.length > 1)
               {
                  _loc2_ += "，";
               }
               _loc4_ = getServerName(Number(_loc3_));
               _loc2_ += Language.CROSS_CONTENTION_PANEL_U[18].toString().replace("{osid}",_loc4_);
            }
         }
         return _loc2_;
      }
      
      public static function _crossContentionGetPridMid(param1:Number) : int
      {
         return Math.floor(param1 / CROSS_CONTENTION_MAX_INDEX);
      }
      
      public static function _crossContentionGetPridRid(param1:Number) : int
      {
         return param1 % CROSS_CONTENTION_MAX_INDEX;
      }
      
      public static function getServerName(param1:Number) : String
      {
         var _loc2_:int = 0;
         if(param1 >= CROSS_CONTENTION_UINT_ID_START)
         {
            _loc2_ = (param1 + 1) % CROSS_CONTENTION_UINT_ID_START;
            return Language.CROSS_CONTENTION_PANEL_U[161] + _loc2_;
         }
         if(param1 >= 500 && param1 <= 799)
         {
            return GamePredef.CROSS_CONTENTION_UNITED_SERVER_NAME[param1];
         }
         if(param1 >= 0 && param1 < 500 || param1 >= 800)
         {
            return param1.toString();
         }
         return "";
      }
      
      public static function getUnitServersId(param1:Number) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in CROSS_CONTENTION_UINT_ID)
         {
            if(Number(CROSS_CONTENTION_UINT_ID[_loc3_]) == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionTotalPanel._watcherSetupUtil = param1;
      }
      
      private function getPointsAward() : void
      {
         _core.remote.call("crossContentionShowScoreAward",null);
      }
      
      private function getBornMid(param1:int) : int
      {
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         for(_loc3_ in GamePredef.CROSS_CONTENTION_MAP_ENTRANCE)
         {
            _loc4_ = GamePredef.CROSS_CONTENTION_MAP_ENTRANCE[_loc3_];
            if(_loc4_)
            {
               _loc5_ = _loc4_.indexOf(param1);
               if(_loc5_ > -1)
               {
                  _loc2_ = int(_loc3_);
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      private function showBoss() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:MovieClip = null;
         var _loc5_:int = 0;
         showAreaClear();
         if(btn1.selected)
         {
            btn1.selected = false;
            return;
         }
         showBtnClear();
         btn1.selected = true;
         var _loc1_:Object = mapData.boss;
         if(!_loc1_)
         {
            return;
         }
         for(_loc2_ in _loc1_)
         {
            _loc3_ = _loc1_[_loc2_];
            _loc4_ = mcs[_loc2_];
            _loc5_ = int(_loc3_.bIndex);
            if(Boolean(_loc3_ && _loc3_.data && _loc3_.data[_loc5_] && int(_loc3_.data[_loc5_].state) != 2) && Boolean(!_loc3_.data[_loc5_].osid) && Boolean(_loc4_))
            {
               _loc4_.visible = true;
               _loc4_.gotoAndStop(1);
            }
         }
      }
      
      public function set pvenum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._976408569pvenum;
         if(_loc2_ !== param1)
         {
            this._976408569pvenum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvenum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pvenum() : RoundedLabel
      {
         return this._976408569pvenum;
      }
      
      private function showFirstOccupyAward() : void
      {
         _core.remote.call("crossContentionShowFirstOccupyAward",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionTotalState() : DataGrid
      {
         return this._861747740ContentionTotalState;
      }
      
      private function mcMouseOut(param1:MouseEvent) : void
      {
         hideUnitBanner();
      }
      
      private function mcMouseOver(param1:MouseEvent) : void
      {
         var _loc5_:MovieClip = null;
         var _loc2_:Object = param1.currentTarget;
         var _loc3_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 39)
         {
            _loc5_ = areas[_loc4_];
            if(_loc5_)
            {
               if(_loc2_ == _loc5_)
               {
                  _loc3_ = _loc4_;
               }
            }
            _loc4_++;
         }
         showUnitBanner(_loc3_);
      }
      
      public function ___CrossContentionTotalPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      [Bindable(event="propertyChange")]
      public function get pvpnum() : RoundedLabel
      {
         return this._976080868pvpnum;
      }
      
      private function getCrossContentionServerState() : void
      {
         _core.remote.call("getCrossContentionServerState",null);
      }
      
      public function __btnAreaAward_click(param1:MouseEvent) : void
      {
         getAreaAward();
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 55;
         _loc1_.dataField = "areaname";
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn1",_CrossContentionTotalPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function __ContentionTotalState_rollOut(param1:MouseEvent) : void
      {
         onItemRollOut(param1);
      }
      
      public function set ContentionTotalState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._861747740ContentionTotalState;
         if(_loc2_ !== param1)
         {
            this._861747740ContentionTotalState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionTotalState",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:Class = null;
         var _loc10_:MovieClip = null;
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("map") as Class;
         var _loc3_:MovieClip = new _loc2_();
         container1.addChild(_loc3_);
         var _loc4_:int = 1;
         while(_loc4_ <= 39)
         {
            _loc5_ = "area_" + _loc4_;
            if(load.contentLoaderInfo.applicationDomain.hasDefinition(_loc5_))
            {
               _loc6_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc5_) as Class;
               _loc7_ = new _loc6_();
               container1.addChild(_loc7_);
               _loc7_.x = mcPositions[_loc4_][0];
               _loc7_.y = mcPositions[_loc4_][1];
               _loc7_.gotoAndStop(1);
               _loc7_.addEventListener(MouseEvent.CLICK,mcClick);
               _loc7_.addEventListener(MouseEvent.ROLL_OVER,mcMouseOver);
               _loc7_.addEventListener(MouseEvent.ROLL_OUT,mcMouseOut);
               areas[_loc4_] = _loc7_;
            }
            _loc4_++;
         }
         _loc4_ = 1;
         while(_loc4_ <= 39)
         {
            _loc8_ = "mc_" + _loc4_;
            if(load.contentLoaderInfo.applicationDomain.hasDefinition(_loc8_))
            {
               _loc9_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc8_) as Class;
               _loc10_ = new _loc9_();
               container1.addChild(_loc10_);
               _loc10_.x = mcPositions[_loc4_][0];
               _loc10_.y = mcPositions[_loc4_][1];
               _loc10_.gotoAndStop(1);
               _loc10_.mouseEnabled = false;
               _loc10_.visible = false;
               mcs[_loc4_] = _loc10_;
            }
            _loc4_++;
         }
         res_load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         refreshAreas();
      }
      
      private function onTotalStateItemClickHandler(param1:ListEvent) : void
      {
         var _loc2_:int = int(param1.itemRenderer.data.id);
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO);
         if(_loc3_)
         {
            _loc3_.showPanel(_loc2_);
         }
      }
      
      public function set pvpnum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._976080868pvpnum;
         if(_loc2_ !== param1)
         {
            this._976080868pvpnum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvpnum",_loc2_,param1));
         }
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn8 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "occupynum";
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn8",_CrossContentionTotalPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         btnClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get pvetime() : RoundedLabel
      {
         return this._203727252pvetime;
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionServerState() : DataGrid
      {
         return this._910732927ContentionServerState;
      }
      
      public function __ContentionTotalState_itemRollOver(param1:ListEvent) : void
      {
         onItemRollOver(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get banner2() : Image
      {
         return this._336959866banner2;
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         showServerOwn();
      }
      
      public function __ContentionSingleState_itemRollOver(param1:ListEvent) : void
      {
         onItemRollOver(param1);
      }
      
      private function btnClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         activatePanel(param1);
         var _loc2_:int = 0;
         while(_loc2_ <= tab.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      public function __ContentionServerState_itemClick(param1:ListEvent) : void
      {
         onTotalStateItemClickHandler(param1);
      }
      
      public function onGetCrossContentionServerState(param1:Object) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      public function onShowFirstOccupyAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_FIRST_AWARD);
         if(_loc2_)
         {
            _loc2_.open(param1.data);
         }
      }
      
      public function ___CrossContentionTotalPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         showRank();
      }
      
      public function set btnPointsAward(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2132384574btnPointsAward;
         if(_loc2_ !== param1)
         {
            this._2132384574btnPointsAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPointsAward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionSingleState() : DataGrid
      {
         return this._62409574ContentionSingleState;
      }
      
      private function onItemRollOver(param1:ListEvent) : void
      {
         var _loc4_:MovieClip = null;
         refreshAreas();
         var _loc2_:int = int(param1.itemRenderer.data.id);
         var _loc3_:int = 1;
         while(_loc3_ <= 39)
         {
            _loc4_ = areas[_loc3_];
            if(_loc4_)
            {
               if(_loc2_ == _loc3_)
               {
                  _loc4_.gotoAndStop(3);
               }
            }
            _loc3_++;
         }
         showUnitBanner(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      private function get myStateList() : ArrayCollection
      {
         return this._684659581myStateList;
      }
      
      public function __btnFirstOccupyAward_click(param1:MouseEvent) : void
      {
         showFirstOccupyAward();
      }
      
      private function showUnitBanner(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         hideUnitBanner();
         if(!GamePredef.CROSS_CONTENTION_MAP_ENTRANCE || !GamePredef.CROSS_CONTENTION_MAP_ENTRANCE[param1])
         {
            return;
         }
         if(param1 == getBornMid(_ORIGINAL_SERVER_ID))
         {
            return;
         }
         var _loc2_:Array = GamePredef.CROSS_CONTENTION_MAP_ENTRANCE[param1];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = int(_loc2_[_loc3_]);
            _loc5_ = Number(bornIcons[_loc4_]);
            _loc6_ = getBornMid(_loc4_);
            if(Boolean(_loc5_) && Boolean(this["banner" + (_loc3_ + 1)]))
            {
               this["banner" + (_loc3_ + 1)].source = ResManager.getIconUrl(_loc5_);
               if(_loc3_ == 0)
               {
                  this["banner" + (_loc3_ + 1)].x = bornPositions[_loc6_][0];
                  this["banner" + (_loc3_ + 1)].y = bornPositions[_loc6_][1];
               }
               else
               {
                  this["banner" + (_loc3_ + 1)].x = bornPositions2[_loc6_][0];
                  this["banner" + (_loc3_ + 1)].y = bornPositions2[_loc6_][1];
               }
               this["banner" + (_loc3_ + 1)].visible = true;
            }
            _loc3_++;
         }
      }
      
      public function set btn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      private function hideUnitBanner() : void
      {
         banner1.visible = false;
         banner2.visible = false;
      }
      
      public function set cav2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046234cav2;
         if(_loc2_ !== param1)
         {
            this._3046234cav2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav2",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set cav3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046235cav3;
         if(_loc2_ !== param1)
         {
            this._3046235cav3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav3",_loc2_,param1));
         }
      }
      
      public function set cav1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046233cav1;
         if(_loc2_ !== param1)
         {
            this._3046233cav1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav1",_loc2_,param1));
         }
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn7 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "lordname";
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn7",_CrossContentionTotalPanel_DataGridColumn7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get banner1() : Image
      {
         return this._336959867banner1;
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = "";
         var _loc2_:int = int(_ORIGINAL_SERVER_ID);
         if(malaiServer[_loc2_])
         {
            _loc1_ = Language.CROSS_CONTENTION_PANEL_U[177].toString();
            _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[177].toString(),Alert.YES,null,null);
         }
         else
         {
            _loc1_ = Language.CROSS_CONTENTION_PANEL_U[130].toString();
            _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[130].toString(),Alert.YES,null,null);
         }
      }
      
      private function _CrossContentionTotalPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[73];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return totalStateList;
         },function(param1:Object):void
         {
            ContentionTotalState.dataProvider = param1;
         },"ContentionTotalState.dataProvider");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn1.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn1.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn2.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn2.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn3.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn3.headerText");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return serverStateList;
         },function(param1:Object):void
         {
            ContentionServerState.dataProvider = param1;
         },"ContentionServerState.dataProvider");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn4.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn4.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn5.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn5.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn6.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn6.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFirstOccupyAward.label = param1;
         },"btnFirstOccupyAward.label");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return myStateList;
         },function(param1:Object):void
         {
            ContentionSingleState.dataProvider = param1;
         },"ContentionSingleState.dataProvider");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn7.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn7.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_DataGridColumn8.headerText = param1;
         },"_CrossContentionTotalPanel_DataGridColumn8.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAreaAward.label = param1;
         },"btnAreaAward.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPointsAward.label = param1;
         },"btnPointsAward.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[155];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_RoundedLabel1.htmlText = param1;
         },"_CrossContentionTotalPanel_RoundedLabel1.htmlText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_RoundedLabel2.htmlText = param1;
         },"_CrossContentionTotalPanel_RoundedLabel2.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_RoundedLabel3.htmlText = param1;
         },"_CrossContentionTotalPanel_RoundedLabel3.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[156];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_RoundedLabel6.htmlText = param1;
         },"_CrossContentionTotalPanel_RoundedLabel6.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_RoundedLabel7.htmlText = param1;
         },"_CrossContentionTotalPanel_RoundedLabel7.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_RoundedLabel8.htmlText = param1;
         },"_CrossContentionTotalPanel_RoundedLabel8.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[159];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_BasicDelayButton1.label = param1;
         },"_CrossContentionTotalPanel_BasicDelayButton1.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[162];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_BasicDelayButton2.label = param1;
         },"_CrossContentionTotalPanel_BasicDelayButton2.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[123];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[124];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2.label = param1;
         },"btn2.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[125];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn3.label = param1;
         },"btn3.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTotalPanel_LinkButton1.label = param1;
         },"_CrossContentionTotalPanel_LinkButton1.label");
         result[29] = binding;
         return result;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" load Error ");
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      public function __ContentionServerState_itemRollOver(param1:ListEvent) : void
      {
         onItemRollOver(param1);
      }
      
      private function showServerOwn() : void
      {
         var _loc2_:Object = null;
         var _loc3_:MovieClip = null;
         showAreaClear();
         if(btn3.selected)
         {
            btn3.selected = false;
            return;
         }
         showBtnClear();
         btn3.selected = true;
         if(!CROSS_CONTENTION_UINT_ID)
         {
            return;
         }
         var _loc1_:int = int(CROSS_CONTENTION_UINT_ID[_ORIGINAL_SERVER_ID]);
         for(_loc2_ in ALL_MAP_NAME)
         {
            if(Boolean(mapData) && Boolean(mapData.own) && int(mapData.own[_loc2_]) == _loc1_)
            {
               _loc3_ = mcs[_loc2_];
               if(_loc3_)
               {
                  _loc3_.visible = true;
                  _loc3_.gotoAndStop(3);
               }
            }
         }
      }
      
      private function showRank() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_RANK);
         if(Boolean(_loc1_) && Boolean(mapData) && Boolean(mapData.own) && Boolean(mapData.ownInfo))
         {
            _loc1_.open(mapData.own,mapData.ownInfo);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get serverStateList() : ArrayCollection
      {
         return this._1101683508serverStateList;
      }
      
      public function set btn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      private function activatePanel(param1:int) : void
      {
         switch(param1)
         {
            case 0:
               _core.remote.call("getCrossContentionTotalState",null);
               break;
            case 1:
            case 2:
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAreaAward() : BasicGlowButton
      {
         return this._788655404btnAreaAward;
      }
      
      public function set pvetime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._203727252pvetime;
         if(_loc2_ !== param1)
         {
            this._203727252pvetime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvetime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(Boolean(param1) && Boolean(_core.player) && _core.player.level < 50)
         {
            return;
         }
         if(param1)
         {
            initView();
         }
      }
      
      private function getCrossContentionMyState() : void
      {
         _core.remote.call("getCrossContentionMyState",null);
      }
      
      public function __ContentionSingleState_itemClick(param1:ListEvent) : void
      {
         onTotalStateItemClickHandler(param1);
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn6 = _loc1_;
         _loc1_.width = 25;
         _loc1_.dataField = "occupynum";
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn6",_CrossContentionTotalPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         btnClick(2);
      }
      
      public function set btnFirstOccupyAward(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1739283322btnFirstOccupyAward;
         if(_loc2_ !== param1)
         {
            this._1739283322btnFirstOccupyAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFirstOccupyAward",_loc2_,param1));
         }
      }
      
      public function set ContentionServerState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._910732927ContentionServerState;
         if(_loc2_ !== param1)
         {
            this._910732927ContentionServerState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionServerState",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pvptime() : RoundedLabel
      {
         return this._193568521pvptime;
      }
      
      private function set myStateList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._684659581myStateList;
         if(_loc2_ !== param1)
         {
            this._684659581myStateList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myStateList",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
      }
      
      public function set banner1(param1:Image) : void
      {
         var _loc2_:Object = this._336959867banner1;
         if(_loc2_ !== param1)
         {
            this._336959867banner1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"banner1",_loc2_,param1));
         }
      }
      
      public function __ContentionSingleState_rollOut(param1:MouseEvent) : void
      {
         onItemRollOut(param1);
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
      
      public function onCrossContentionLookBattleInfo(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_BATTLE_INFO);
         if(_loc2_)
         {
            _loc2_.open(param1);
         }
      }
      
      public function onCrossContentionBattleInfo(param1:Object) : void
      {
         if(!param1 || !param1.om || !param1.bm || !param1.t || !param1.mid || !param1.rid || !param1.bm.leader)
         {
            return;
         }
         var _loc2_:Object = param1.om;
         var _loc3_:String = param1.bm.leader;
         var _loc4_:Number = Number(param1.t);
         var _loc5_:Number = Number(param1.mid);
         var _loc6_:Number = Number(param1.rid);
         var _loc7_:Number = Number(param1.bosid);
         var _loc8_:String = Language.CROSS_CONTENTION_PANEL_U[158];
         if(!GamePredef.CROSS_CONTENTION_MAP[_loc5_])
         {
            return;
         }
         var _loc9_:String = GamePredef.CROSS_CONTENTION_MAP[_loc5_].name;
         var _loc10_:int = int(GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[_loc5_]][_loc6_].p);
         var _loc11_:String = Language.CROSS_CONTENTION_PANEL_U[67 + _loc10_] + "-" + _loc6_;
         var _loc12_:String = CrossContentionTotalPanel.getServerName(_loc7_);
         var _loc13_:Date = new Date(_loc4_);
         var _loc14_:String = _loc13_.getHours() + ":" + _loc13_.getMinutes();
         _loc8_ = _loc8_.replace("{mname}",_loc9_).replace("{rname}",_loc11_).replace("{time}",_loc14_).replace("{bosid}",_loc12_).replace("{leader}",_loc3_);
         _core.sysMsg(_loc8_);
         _loc8_ = Language.CROSS_CONTENTION_PANEL_U[160];
         _loc8_ = _loc8_.replace("{mname}",_loc9_).replace("{rname}",_loc11_).replace("{time}",_loc14_);
         _core.sysMidNote(_loc8_);
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
      
      private function getAreaAward() : void
      {
         _core.remote.call("crossContentionShowTimeAward",null);
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
      
      public function set banner2(param1:Image) : void
      {
         var _loc2_:Object = this._336959866banner2;
         if(_loc2_ !== param1)
         {
            this._336959866banner2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"banner2",_loc2_,param1));
         }
      }
      
      public function onGetCrossContentionTotalState(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         if(!param1)
         {
            return;
         }
         _ORIGINAL_SERVER_ID = param1.originalServerId;
         if(param1.born)
         {
            GamePredef.CROSS_CONTENTION_MAP_ENTRANCE = param1.born;
            CROSS_CONTENTION_UINT_ID = param1.unit;
            setBornPoint();
         }
         if(!inited)
         {
            getRes();
            inited = true;
         }
         mapData = param1;
         if(param1.lvlType)
         {
            CrossContentionTotalPanel.LEVLE_TYPE = param1.lvlType;
         }
         if(param1.open)
         {
            isOpen = param1.open;
         }
         if(param1.giveup)
         {
            giveup = param1.giveup;
         }
         totalStateList.removeAll();
         serverStateList.removeAll();
         myStateList.removeAll();
         refreshAreas();
         for(_loc2_ in ALL_MAP_NAME)
         {
            _loc5_ = {};
            _loc5_.id = _loc2_;
            _loc5_.areaname = ALL_MAP_NAME[_loc2_].name;
            if(Boolean(param1) && Boolean(param1.own) && Boolean(param1.own[_loc2_]))
            {
               _loc5_.lordname = Number(param1.own[_loc2_]);
            }
            if(Boolean(param1) && Boolean(param1.ownInfo) && Boolean(param1.ownInfo[_loc2_]) && Boolean(param1.ownInfo[_loc2_][_ORIGINAL_SERVER_ID]))
            {
               _loc5_.occupynum = param1.ownInfo[_loc2_][_ORIGINAL_SERVER_ID];
            }
            else
            {
               _loc5_.occupynum = "0";
            }
            totalStateList.addItem(_loc5_);
            if(Number(_loc5_.occupynum) > 0)
            {
               serverStateList.addItem(_loc5_);
            }
         }
         _loc3_ = {};
         if(Boolean(param1) && Boolean(param1.my))
         {
            for(_loc6_ in param1.my)
            {
               _loc7_ = _crossContentionGetPridMid(Number(_loc6_));
               _loc8_ = _crossContentionGetPridRid(Number(_loc6_));
               _loc9_ = param1.my[_loc6_];
               if(!_loc3_[_loc7_])
               {
                  _loc3_[_loc7_] = {"num":0};
               }
               if(Boolean(_loc9_) && _loc9_.state == 1)
               {
                  ++_loc3_[_loc7_].num;
               }
            }
         }
         for(_loc4_ in _loc3_)
         {
            myStateList.addItem({
               "id":_loc4_,
               "lordname":ALL_MAP_NAME[_loc4_].name,
               "occupynum":_loc3_[_loc4_].num
            });
         }
         if(param1.flag)
         {
            setBattleCD(param1.flag);
         }
         super.visible = true;
      }
      
      public function __btnPointsAward_click(param1:MouseEvent) : void
      {
         getPointsAward();
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "lordname";
         _loc1_.itemRenderer = _CrossContentionTotalPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn5",_CrossContentionTotalPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function lookLastBattleInfo() : void
      {
         _core.remote.call("crossContentionLookBattleInfo",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPointsAward() : BasicGlowButton
      {
         return this._2132384574btnPointsAward;
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         showAttack();
      }
      
      private function _CrossContentionTotalPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[0];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[1];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[73];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[74];
         _loc1_ = totalStateList;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[4];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[5];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[6];
         _loc1_ = serverStateList;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[4];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[5];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[6];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[7];
         _loc1_ = myStateList;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[4];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[67];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[8];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[9];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[155];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[52];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[53];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[156];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[52];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[53];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[159];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[162];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[123];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[124];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[125];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[27];
      }
      
      private function showAreaClear() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < mcs.length)
         {
            _loc2_ = mcs[_loc1_];
            if(_loc2_)
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
      }
      
      public function ___CrossContentionTotalPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         lookLastBattleInfo();
      }
      
      public function set ContentionSingleState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._62409574ContentionSingleState;
         if(_loc2_ !== param1)
         {
            this._62409574ContentionSingleState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionSingleState",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : BasicGlowButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : BasicGlowButton
      {
         return this._3034454btn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : BasicGlowButton
      {
         return this._3034455btn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav1() : Canvas
      {
         return this._3046233cav1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav2() : Canvas
      {
         return this._3046234cav2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav3() : Canvas
      {
         return this._3046235cav3;
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
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn4 = _loc1_;
         _loc1_.width = 55;
         _loc1_.dataField = "areaname";
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn4",_CrossContentionTotalPanel_DataGridColumn4);
         return _loc1_;
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
            load.load(new URLRequest(ResManager.getResUrl(2060090400042)));
            res_load_state = 1;
         }
      }
      
      private function refreshAreas() : void
      {
         var _loc1_:Object = null;
         var _loc2_:MovieClip = null;
         resetAreas();
         for(_loc1_ in ALL_MAP_NAME)
         {
            if(Boolean(mapData) && Boolean(mapData.own) && Boolean(mapData.own[_loc1_]))
            {
               _loc2_ = areas[_loc1_];
               if(_loc2_)
               {
                  _loc2_.gotoAndStop(2);
               }
            }
         }
      }
      
      public function set bornImg2(param1:Image) : void
      {
         var _loc2_:Object = this._2092975032bornImg2;
         if(_loc2_ !== param1)
         {
            this._2092975032bornImg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bornImg2",_loc2_,param1));
         }
      }
      
      private function showBtnClear() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            if(this["btn" + _loc1_])
            {
               this["btn" + _loc1_].selected = false;
            }
            _loc1_++;
         }
      }
      
      private function resetAreas() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 39)
         {
            _loc2_ = areas[_loc1_];
            if(_loc2_)
            {
               _loc2_.gotoAndStop(1);
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFirstOccupyAward() : BasicGlowButton
      {
         return this._1739283322btnFirstOccupyAward;
      }
      
      public function onShowTimeAward(param1:Object) : void
      {
         if(!param1 || !param1.data)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TIME_AWARD);
         if(_loc2_)
         {
            _loc2_.open(param1.data);
         }
      }
      
      public function set bornImg1(param1:Image) : void
      {
         var _loc2_:Object = this._2092975031bornImg1;
         if(_loc2_ !== param1)
         {
            this._2092975031bornImg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bornImg1",_loc2_,param1));
         }
      }
      
      public function onShowScoreAward(param1:Object) : void
      {
         if(!param1 || !param1.data)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SCORE_AWARD);
         if(_loc2_)
         {
            _loc2_.open(param1.data);
         }
      }
      
      public function onGetCrossContentionConfigData(param1:Object) : void
      {
         _ORIGINAL_SERVER_ID = param1.originalServerId;
         getCrossContentionTotalState();
         setBornPoint();
      }
      
      private function setBornPoint() : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         bornImg1.visible = false;
         bornImg2.visible = false;
         var _loc1_:int = int(CROSS_CONTENTION_UINT_ID[_ORIGINAL_SERVER_ID]);
         var _loc2_:Array = getUnitServersId(_loc1_);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc5_ = int(_loc2_[_loc3_]);
            this["bornImg" + (_loc3_ + 1)].source = ResManager.getIconUrl(bornIcons[_loc5_]);
            _loc6_ = getBornMid(_ORIGINAL_SERVER_ID);
            if(_loc3_ == 0)
            {
               _loc7_ = bornPositions;
            }
            else
            {
               _loc7_ = bornPositions2;
            }
            if(_loc7_[_loc6_])
            {
               this["bornImg" + (_loc3_ + 1)].x = _loc7_[_loc6_][0];
               this["bornImg" + (_loc3_ + 1)].y = _loc7_[_loc6_][1];
            }
            this["bornImg" + (_loc3_ + 1)].visible = true;
            _loc3_++;
         }
         var _loc4_:int = int(_ORIGINAL_SERVER_ID);
         if(malaiServer[_loc4_])
         {
            btn1.visible = false;
            btn2.visible = false;
            btn3.visible = false;
         }
         else
         {
            btn1.visible = true;
            btn2.visible = true;
            btn3.visible = true;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionTotalPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionTotalPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionTotalPanelWatcherSetupUtil");
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
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      private function mcClick(param1:MouseEvent) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:* = undefined;
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         var _loc3_:int = 1;
         while(_loc3_ <= 39)
         {
            _loc4_ = areas[_loc3_];
            if(_loc4_)
            {
               if(_loc2_ == _loc4_)
               {
                  _loc5_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO);
                  if(_loc5_)
                  {
                     _loc5_.showPanel(_loc3_);
                  }
                  break;
               }
            }
            _loc3_++;
         }
      }
      
      private function setBattleCD(param1:Object) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Date = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = CrossContentionFightPanel.PVP_NUM;
         var _loc3_:int = CrossContentionFightPanel.PVE_NUM;
         pvenum.htmlText = String(_loc3_);
         pvpnum.htmlText = String(_loc2_);
         if(Boolean(param1) && Boolean(param1.PVP) && Boolean(param1.PVP.timenow) && Boolean(param1.PVP.timestr) && String(param1.PVP.timenow) == String(param1.PVP.timestr))
         {
            _loc4_ = int(param1.PVP.validnum);
            _loc5_ = 0;
            if(param1.PVP.fightnum != null)
            {
               _loc5_ = int(param1.PVP.fightnum);
            }
            this.pvpnum.htmlText = String(_loc4_ - _loc5_);
            _loc6_ = 0;
            if(Boolean(param1) && Boolean(param1.PVP) && Boolean(param1.PVP.cdnum))
            {
               _loc6_ = int(param1.PVP.cdnum);
            }
            if(_loc6_ == 0)
            {
               _loc7_ = Number(0);
               if(Boolean(param1) && Boolean(param1.PVP) && Boolean(param1.PVP.fighttime))
               {
                  _loc7_ = Number(param1.PVP.fighttime) + CrossContentionFightPanel.CD_TIME;
                  _loc8_ = new Date(_loc7_);
                  _loc9_ = _loc8_.getTime();
                  if(_loc9_ > new Date().getTime())
                  {
                  }
               }
            }
         }
         if(Boolean(param1) && Boolean(param1.PVE) && Boolean(param1.PVE.timenow) && Boolean(param1.PVE.timestr) && String(param1.PVE.timenow) == String(param1.PVE.timestr))
         {
            _loc4_ = int(param1.PVE.validnum);
            _loc5_ = 0;
            if(param1.PVE.fightnum != null)
            {
               _loc5_ = int(param1.PVE.fightnum);
            }
            this.pvenum.htmlText = String(_loc4_ - _loc5_);
            _loc6_ = 0;
            if(Boolean(param1) && Boolean(param1.PVE) && Boolean(param1.PVE.cdnum))
            {
               _loc6_ = int(param1.PVE.cdnum);
            }
            if(_loc6_ == 0)
            {
               _loc7_ = Number(0);
               if(Boolean(param1) && Boolean(param1.PVE) && Boolean(param1.PVE.fighttime))
               {
                  _loc7_ = Number(param1.PVE.fighttime) + CrossContentionFightPanel.CD_TIME;
                  _loc8_ = new Date(_loc7_);
                  _loc10_ = _loc8_.getTime();
                  if(_loc10_ > new Date().getTime())
                  {
                  }
               }
            }
         }
      }
      
      private function onItemRollOut(param1:MouseEvent) : void
      {
         refreshAreas();
         hideUnitBanner();
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
      
      private function showAttack() : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         showAreaClear();
         if(btn2.selected)
         {
            btn2.selected = false;
            return;
         }
         showBtnClear();
         btn2.selected = true;
         if(!CROSS_CONTENTION_UINT_ID)
         {
            return;
         }
         var _loc1_:int = int(CROSS_CONTENTION_UINT_ID[_ORIGINAL_SERVER_ID]);
         var _loc2_:int = getBornMid(_ORIGINAL_SERVER_ID);
         var _loc3_:Array = [];
         for(_loc4_ in ALL_MAP_NAME)
         {
            if(Boolean(mapData) && Boolean(mapData.own) && int(mapData.own[_loc4_]) == _loc1_)
            {
               _loc3_.push(_loc4_);
            }
         }
         _loc5_ = {};
         _loc6_ = 0;
         while(_loc6_ < _loc3_.length)
         {
            _loc7_ = int(_loc3_[_loc6_]);
            _loc8_ = GamePredef.CROSS_CONTENTION_MAP_LINK[_loc7_];
            _loc9_ = 0;
            while(_loc9_ < _loc8_.length)
            {
               _loc10_ = int(_loc8_[_loc9_]);
               if(_loc10_)
               {
                  _loc5_[_loc10_] = true;
               }
               _loc9_++;
            }
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < mcs.length)
         {
            _loc11_ = mcs[_loc6_];
            if(_loc11_)
            {
               if(_loc2_ == _loc6_ || _loc3_.indexOf(_loc6_) > -1 || Boolean(_loc5_[_loc6_]))
               {
                  _loc11_.visible = true;
                  _loc11_.gotoAndStop(2);
               }
            }
            _loc6_++;
         }
      }
      
      private function getCrossContentionTotalState() : void
      {
         showAreaClear();
         showBtnClear();
         _core.remote.call("getCrossContentionTotalState",null);
      }
      
      private function set serverStateList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1101683508serverStateList;
         if(_loc2_ !== param1)
         {
            this._1101683508serverStateList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverStateList",_loc2_,param1));
         }
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 25;
         _loc1_.dataField = "occupynum";
         _loc1_.setStyle("textAlign","left");
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn3",_CrossContentionTotalPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function __ContentionTotalState_itemClick(param1:ListEvent) : void
      {
         onTotalStateItemClickHandler(param1);
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         btnClick(1);
      }
      
      private function _CrossContentionTotalPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CrossContentionTotalPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bornImg1() : Image
      {
         return this._2092975031bornImg1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bornImg2() : Image
      {
         return this._2092975032bornImg2;
      }
      
      public function set btnAreaAward(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._788655404btnAreaAward;
         if(_loc2_ !== param1)
         {
            this._788655404btnAreaAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAreaAward",_loc2_,param1));
         }
      }
      
      public function onGetCrossContentionMyState() : void
      {
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
            return;
         }
         getCrossContentionTotalState();
      }
      
      private function set totalStateList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1265899029totalStateList;
         if(_loc2_ !== param1)
         {
            this._1265899029totalStateList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalStateList",_loc2_,param1));
         }
      }
      
      private function _CrossContentionTotalPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTotalPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 35;
         _loc1_.dataField = "lordname";
         _loc1_.itemRenderer = _CrossContentionTotalPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_CrossContentionTotalPanel_DataGridColumn2",_CrossContentionTotalPanel_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get totalStateList() : ArrayCollection
      {
         return this._1265899029totalStateList;
      }
      
      public function __ContentionServerState_rollOut(param1:MouseEvent) : void
      {
         onItemRollOut(param1);
      }
      
      private function _CrossContentionTotalPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CrossContentionTotalPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set pvptime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._193568521pvptime;
         if(_loc2_ !== param1)
         {
            this._193568521pvptime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvptime",_loc2_,param1));
         }
      }
      
      public function ___CrossContentionTotalPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         showBoss();
      }
   }
}

