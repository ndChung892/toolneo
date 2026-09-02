package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.Menu;
   import mx.controls.Text;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ActivePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ActivePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _816022719nineBossPageIndicator:TextInput;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2126478649bossRank:ViewStack;
      
      private var _3628011vsBp:ViewStack;
      
      private var _haveNineBossCrossRankTime:Number = 0;
      
      private var _core:Core = Core.getInstance();
      
      private var _1383795005bpBtn1:BasicGlowButton;
      
      private var _395304649popGrid:DataGrid;
      
      private var _1863324747bangBtn9:BasicGlowButton;
      
      private var _1466456834lastWeekBpGrid:DataGrid;
      
      private var _1863324750bangBtn6:BasicGlowButton;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _797224958nineBossBtnLastPage:Button;
      
      private var _151627115popMonthGrid:DataGrid;
      
      private const NUM_PER_PAGE:int = 12;
      
      private var _112481876vsPop:ViewStack;
      
      private var _1477210508txtFlush:Text;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      public var _ActivePanel_DataGridColumn10:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn11:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn12:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn13:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn14:DataGridColumn;
      
      private var _1513983672treasureHuntGrid:DataGrid;
      
      public var _ActivePanel_DataGridColumn16:DataGridColumn;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ActivePanel_DataGridColumn18:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn19:DataGridColumn;
      
      private var _1857819888achPointGrid:DataGrid;
      
      public var _ActivePanel_DataGridColumn15:DataGridColumn;
      
      private var _395451577popBtn2:BasicGlowButton;
      
      public var _ActivePanel_DataGridColumn17:DataGridColumn;
      
      private var _862864693popWeekGrid:DataGrid;
      
      public var _ActivePanel_DataGridColumn20:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn21:DataGridColumn;
      
      private var _haveNineBossRankTime:Number = 0;
      
      public var _ActivePanel_DataGridColumn23:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn25:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn26:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn27:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn28:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn22:DataGridColumn;
      
      private var _1310248189expGrid:DataGrid;
      
      public var _ActivePanel_DataGridColumn24:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn29:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn30:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn31:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn32:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn33:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn34:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn35:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn36:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn37:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn38:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn39:DataGridColumn;
      
      private var _505391835guildWarGrid:DataGrid;
      
      private var _2086588895nineBossBtnNextPage:Button;
      
      public var _ActivePanel_DataGridColumn40:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn41:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn42:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn43:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn44:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn45:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn46:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn47:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn48:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn49:DataGridColumn;
      
      private var _68580084bossAll:BasicGlowButton;
      
      private var crossRankData:ArrayCollection;
      
      private var _1562237018bossAllGrid:DataGrid;
      
      private var _1227196136totalBpGrid:DataGrid;
      
      private var _808459627vsBang:ViewStack;
      
      private var _1863324749bangBtn7:BasicGlowButton;
      
      private var _395451578popBtn1:BasicGlowButton;
      
      private var _1863324752bangBtn4:BasicGlowButton;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private const REFRESH_PAGE_NUM:int = 4;
      
      private var _1647418760pageSelectorMarriage:PageSelector;
      
      private var _1491193854bossLocal:BasicGlowButton;
      
      private var crossRankNum:Number = 0;
      
      private var flag:Object = {};
      
      private var coupleData:Array;
      
      private var _902145509expBattleGrid:DataGrid;
      
      private var _395451579popBtn0:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _880039084txtFlushCouple:Text;
      
      private var _1937743972bossLocalGrid:DataGrid;
      
      private var _1863324748bangBtn8:BasicGlowButton;
      
      private var _1863324751bangBtn5:BasicGlowButton;
      
      private var _1713913818moneyGrid:DataGrid;
      
      private var _1383795006bpBtn0:BasicGlowButton;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      public var _ActivePanel_DataGridColumn1:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn2:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn3:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn8:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn4:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn7:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn9:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn5:DataGridColumn;
      
      public var _ActivePanel_DataGridColumn6:DataGridColumn;
      
      private var _595248336marriageGrid:DataGrid;
      
      mx_internal var _bindings:Array = [];
      
      private var _1470382258pageCoupleArr:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":390,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ActivePanel_BasicTitleCanvas1"
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
                        "x":20,
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
                                 "width":51
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
                                 "width":51
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
                                 "width":51
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
                                 "width":51
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
                                 "width":51
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
                                 "width":51
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
                                 "width":51
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn7",
                           "events":{"click":"__bangBtn7_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":51
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn8",
                           "events":{"click":"__bangBtn8_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":51
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
                     this.right = "10";
                     this.top = "82";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas1_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"Hornor",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"expBattleGrid",
                                 "events":{"itemDoubleClick":"__expBattleGrid_itemDoubleClick"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "doubleClickEnabled":true,
                                       "columns":[_ActivePanel_DataGridColumn1_i(),_ActivePanel_DataGridColumn2_i(),_ActivePanel_DataGridColumn3_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas2_show"},
                        "stylesFactory":function():void
                        {
                           this.backgroundColor = 3172697;
                           this.borderStyle = "solid";
                           this.borderThickness = 1;
                           this.borderColor = 0;
                           this.cornerRadius = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"Level",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"expGrid",
                                 "events":{"itemDoubleClick":"__expGrid_itemDoubleClick"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "doubleClickEnabled":true,
                                       "columns":[_ActivePanel_DataGridColumn4_i(),_ActivePanel_DataGridColumn5_i(),_ActivePanel_DataGridColumn6_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas3_show"},
                        "stylesFactory":function():void
                        {
                           this.backgroundColor = 3172697;
                           this.borderStyle = "solid";
                           this.borderThickness = 1;
                           this.borderColor = 0;
                           this.cornerRadius = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"Wealth",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"moneyGrid",
                                 "events":{"itemDoubleClick":"__moneyGrid_itemDoubleClick"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "doubleClickEnabled":true,
                                       "columns":[_ActivePanel_DataGridColumn7_i(),_ActivePanel_DataGridColumn8_i(),_ActivePanel_DataGridColumn9_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas4_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"Pop",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":HBox,
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalGap = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":20,
                                       "y":3,
                                       "percentWidth":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"popBtn0",
                                          "events":{"click":"__popBtn0_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "selected":true,
                                                "width":48,
                                                "height":20
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"popBtn1",
                                          "events":{"click":"__popBtn1_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "width":48,
                                                "height":20
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"popBtn2",
                                          "events":{"click":"__popBtn2_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "width":48,
                                                "height":20
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":ViewStack,
                                 "id":"vsPop",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":0,
                                       "y":25,
                                       "percentWidth":100,
                                       "percentHeight":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "events":{"show":"___ActivePanel_Canvas5_show"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"popAll",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"popGrid",
                                                   "events":{"itemDoubleClick":"__popGrid_itemDoubleClick"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn10_i(),_ActivePanel_DataGridColumn11_i(),_ActivePanel_DataGridColumn12_i()]
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "events":{"show":"___ActivePanel_Canvas6_show"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"popMonth",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"popMonthGrid",
                                                   "events":{"itemDoubleClick":"__popMonthGrid_itemDoubleClick"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn13_i(),_ActivePanel_DataGridColumn14_i(),_ActivePanel_DataGridColumn15_i()]
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "events":{"show":"___ActivePanel_Canvas7_show"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"popWeek",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"popWeekGrid",
                                                   "events":{"itemDoubleClick":"__popWeekGrid_itemDoubleClick"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn16_i(),_ActivePanel_DataGridColumn17_i(),_ActivePanel_DataGridColumn18_i()]
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
                        "events":{"show":"___ActivePanel_Canvas8_show"},
                        "stylesFactory":function():void
                        {
                           this.backgroundColor = 3172697;
                           this.borderStyle = "solid";
                           this.borderThickness = 1;
                           this.borderColor = 0;
                           this.cornerRadius = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"Marriage",
                              "percentWidth":100,
                              "percentHeight":100,
                              "horizontalScrollPolicy":"off",
                              "verticalScrollPolicy":"off",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"marriageGrid",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "doubleClickEnabled":false,
                                       "horizontalScrollPolicy":"off",
                                       "verticalScrollPolicy":"off",
                                       "columns":[_ActivePanel_DataGridColumn19_i(),_ActivePanel_DataGridColumn20_i(),_ActivePanel_DataGridColumn21_i(),_ActivePanel_DataGridColumn22_i(),_ActivePanel_DataGridColumn23_i()]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":PageSelector,
                                 "id":"pageSelectorMarriage",
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalCenter = "0";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"y":270};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Text,
                                 "id":"txtFlush",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13901886;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "selectable":false,
                                       "x":187,
                                       "y":234,
                                       "width":106
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas9_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"Bp",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":HBox,
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalGap = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":20,
                                       "y":3,
                                       "percentWidth":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"bpBtn0",
                                          "events":{"click":"__bpBtn0_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "selected":true,
                                                "width":48,
                                                "height":20
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"bpBtn1",
                                          "events":{"click":"__bpBtn1_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "width":48,
                                                "height":20
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":ViewStack,
                                 "id":"vsBp",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":0,
                                       "y":25,
                                       "percentWidth":100,
                                       "percentHeight":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "events":{"show":"___ActivePanel_Canvas10_show"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"Bp",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"totalBpGrid",
                                                   "events":{"itemDoubleClick":"__totalBpGrid_itemDoubleClick"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn24_i(),_ActivePanel_DataGridColumn25_i(),_ActivePanel_DataGridColumn26_i()]
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "events":{"show":"___ActivePanel_Canvas11_show"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"BpWeek",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"lastWeekBpGrid",
                                                   "events":{"itemDoubleClick":"__lastWeekBpGrid_itemDoubleClick"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn27_i(),_ActivePanel_DataGridColumn28_i(),_ActivePanel_DataGridColumn29_i()]
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
                        "events":{"show":"___ActivePanel_Canvas12_show"},
                        "stylesFactory":function():void
                        {
                           this.backgroundColor = 3172697;
                           this.borderStyle = "solid";
                           this.borderThickness = 1;
                           this.borderColor = 0;
                           this.cornerRadius = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"Wealth",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"achPointGrid",
                                 "events":{"itemDoubleClick":"__achPointGrid_itemDoubleClick"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "doubleClickEnabled":true,
                                       "columns":[_ActivePanel_DataGridColumn30_i(),_ActivePanel_DataGridColumn31_i(),_ActivePanel_DataGridColumn32_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas13_show"},
                        "stylesFactory":function():void
                        {
                           this.backgroundColor = 3172697;
                           this.borderStyle = "solid";
                           this.borderThickness = 1;
                           this.borderColor = 0;
                           this.cornerRadius = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"GuildWar",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"guildWarGrid",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "columns":[_ActivePanel_DataGridColumn33_i(),_ActivePanel_DataGridColumn34_i(),_ActivePanel_DataGridColumn35_i(),_ActivePanel_DataGridColumn36_i(),_ActivePanel_DataGridColumn37_i(),_ActivePanel_DataGridColumn38_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas14_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"9Boss",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":HBox,
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalGap = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":20,
                                       "y":3,
                                       "percentWidth":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"bossLocal",
                                          "events":{"click":"__bossLocal_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "selected":true,
                                                "height":20
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"bossAll",
                                          "events":{"click":"__bossAll_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"SmallTab",
                                                "height":20
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":ViewStack,
                                 "id":"bossRank",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":0,
                                       "y":25,
                                       "percentWidth":100,
                                       "percentHeight":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"9BossLocalLabel",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"bossLocalGrid",
                                                   "events":{"itemDoubleClick":"__bossLocalGrid_itemDoubleClick"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn39_i(),_ActivePanel_DataGridColumn40_i(),_ActivePanel_DataGridColumn41_i(),_ActivePanel_DataGridColumn42_i()]
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
                                                "label":"9BossAllLabel",
                                                "percentWidth":100,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"bossAllGrid",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "doubleClickEnabled":true,
                                                         "columns":[_ActivePanel_DataGridColumn43_i(),_ActivePanel_DataGridColumn44_i(),_ActivePanel_DataGridColumn45_i(),_ActivePanel_DataGridColumn46_i()]
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
                                                         "x":165,
                                                         "y":250,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":Button,
                                                            "id":"nineBossBtnLastPage",
                                                            "events":{"click":"__nineBossBtnLastPage_click"},
                                                            "stylesFactory":function():void
                                                            {
                                                               this.left = "0";
                                                            },
                                                            "propertiesFactory":function():Object
                                                            {
                                                               return {
                                                                  "styleName":"LastPage",
                                                                  "autoRepeat":true,
                                                                  "label":"Trước",
                                                                  "width":45,
                                                                  "useHandCursor":true
                                                               };
                                                            }
                                                         }),new UIComponentDescriptor({
                                                            "type":TextInput,
                                                            "id":"nineBossPageIndicator",
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
                                                            "id":"nineBossBtnNextPage",
                                                            "events":{"click":"__nineBossBtnNextPage_click"},
                                                            "stylesFactory":function():void
                                                            {
                                                               this.right = "0";
                                                            },
                                                            "propertiesFactory":function():Object
                                                            {
                                                               return {
                                                                  "styleName":"NextPage",
                                                                  "autoRepeat":true,
                                                                  "label":"Sau",
                                                                  "width":45,
                                                                  "useHandCursor":true,
                                                                  "y":0
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
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___ActivePanel_Canvas17_show"},
                        "stylesFactory":function():void
                        {
                           this.backgroundColor = 3172697;
                           this.borderStyle = "solid";
                           this.borderThickness = 1;
                           this.borderColor = 0;
                           this.cornerRadius = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"RoundedGradientBorder",
                              "label":"TreasureHunt",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"treasureHuntGrid",
                                 "events":{"itemDoubleClick":"__treasureHuntGrid_itemDoubleClick"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "doubleClickEnabled":true,
                                       "columns":[_ActivePanel_DataGridColumn47_i(),_ActivePanel_DataGridColumn48_i(),_ActivePanel_DataGridColumn49_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"txtFlushCouple",
                  "stylesFactory":function():void
                  {
                     this.bottom = "15";
                     this.color = 13901886;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selectable":false,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn9",
                  "events":{"click":"__bangBtn9_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "labelPlacement":"bottom",
                        "width":78,
                        "x":20,
                        "y":62
                     };
                  }
               })]
            };
         }
      });
      
      public function ActivePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 390;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___ActivePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActivePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nineBossBtnLastPage() : Button
      {
         return this._797224958nineBossBtnLastPage;
      }
      
      public function set nineBossBtnLastPage(param1:Button) : void
      {
         var _loc2_:Object = this._797224958nineBossBtnLastPage;
         if(_loc2_ !== param1)
         {
            this._797224958nineBossBtnLastPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nineBossBtnLastPage",_loc2_,param1));
         }
      }
      
      public function __bangBtn4_click(param1:MouseEvent) : void
      {
         bangSele(4);
      }
      
      private function _ActivePanel_DataGridColumn23_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn23 = _loc1_;
         _loc1_.dataField = "timeLable";
         _loc1_.width = 70;
         _loc1_.itemRenderer = _ActivePanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn23",_ActivePanel_DataGridColumn23);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn46_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn46 = _loc1_;
         _loc1_.dataField = "exp";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn46",_ActivePanel_DataGridColumn46);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyGrid() : DataGrid
      {
         return this._1713913818moneyGrid;
      }
      
      public function __popBtn0_click(param1:MouseEvent) : void
      {
         popSele(0);
      }
      
      private function _ActivePanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn11 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn11",_ActivePanel_DataGridColumn11);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn34_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn34 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn34",_ActivePanel_DataGridColumn34);
         return _loc1_;
      }
      
      public function set expBattleGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._902145509expBattleGrid;
         if(_loc2_ !== param1)
         {
            this._902145509expBattleGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBattleGrid",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn4",_ActivePanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function __popGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      private function _ActivePanel_DataGridColumn45_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn45 = _loc1_;
         _loc1_.dataField = "roundNum";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn45",_ActivePanel_DataGridColumn45);
         return _loc1_;
      }
      
      public function set moneyGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1713913818moneyGrid;
         if(_loc2_ !== param1)
         {
            this._1713913818moneyGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyGrid",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn22_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn22 = _loc1_;
         _loc1_.dataField = "luxtime";
         _loc1_.width = 50;
         _loc1_.headerRenderer = _ActivePanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn22",_ActivePanel_DataGridColumn22);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bossAllGrid() : DataGrid
      {
         return this._1562237018bossAllGrid;
      }
      
      public function __bangBtn9_click(param1:MouseEvent) : void
      {
         bangSele(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get bossLocalGrid() : DataGrid
      {
         return this._1937743972bossLocalGrid;
      }
      
      private function _ActivePanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn10 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn10",_ActivePanel_DataGridColumn10);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn33_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn33 = _loc1_;
         _loc1_.dataField = "gid";
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn33",_ActivePanel_DataGridColumn33);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn3",_ActivePanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function ___ActivePanel_Canvas6_show(param1:FlexEvent) : void
      {
         getInfo("popMonth");
      }
      
      private function _ActivePanel_DataGridColumn21_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn21 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.width = 55;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn21",_ActivePanel_DataGridColumn21);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn44_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn44 = _loc1_;
         _loc1_.dataField = "bossIndex";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn44",_ActivePanel_DataGridColumn44);
         return _loc1_;
      }
      
      public function set vsPop(param1:ViewStack) : void
      {
         var _loc2_:Object = this._112481876vsPop;
         if(_loc2_ !== param1)
         {
            this._112481876vsPop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsPop",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn32_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn32 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn32",_ActivePanel_DataGridColumn32);
         return _loc1_;
      }
      
      public function __bossAll_click(param1:MouseEvent) : void
      {
         getNineBossRankView(1);
      }
      
      private function _ActivePanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn2",_ActivePanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function bpSele(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            this["bpBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bpBtn" + param1].selected = true;
         vsBp.selectedIndex = param1;
      }
      
      public function set bossAllGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1562237018bossAllGrid;
         if(_loc2_ !== param1)
         {
            this._1562237018bossAllGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossAllGrid",_loc2_,param1));
         }
      }
      
      private function getNineBossRankView(param1:int) : void
      {
         bossRank.selectedIndex = param1;
      }
      
      public function set bossLocalGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1937743972bossLocalGrid;
         if(_loc2_ !== param1)
         {
            this._1937743972bossLocalGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossLocalGrid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageCoupleArr() : Array
      {
         return this._1470382258pageCoupleArr;
      }
      
      private function _ActivePanel_DataGridColumn20_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn20 = _loc1_;
         _loc1_.dataField = "femaleName";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn20",_ActivePanel_DataGridColumn20);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn43_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn43 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn43",_ActivePanel_DataGridColumn43);
         return _loc1_;
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         bangSele(3);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            setFlushStr();
         }
      }
      
      public function set txtFlush(param1:Text) : void
      {
         var _loc2_:Object = this._1477210508txtFlush;
         if(_loc2_ !== param1)
         {
            this._1477210508txtFlush = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtFlush",_loc2_,param1));
         }
      }
      
      public function __bpBtn1_click(param1:MouseEvent) : void
      {
         bpSele(1);
      }
      
      private function _ActivePanel_DataGridColumn31_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn31 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn31",_ActivePanel_DataGridColumn31);
         return _loc1_;
      }
      
      private function onInitGuildWarRank(param1:Object) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param1)
         {
            _loc2_ = new ArrayCollection();
            for(_loc3_ in param1)
            {
               _loc4_ = new Object();
               _loc4_.gid = param1[_loc3_].gid;
               _loc4_.guildName = param1[_loc3_].guildName;
               _loc4_.level = param1[_loc3_].level;
               _loc4_.leaderName = param1[_loc3_].ln;
               _loc4_.value = param1[_loc3_].totalTime;
               _loc4_.winNum = param1[_loc3_].winNum;
               _loc5_ = param1[_loc3_].totalTime % 60;
               _loc6_ = Math.floor(param1[_loc3_].totalTime / 3600);
               if(_loc6_ > 0)
               {
                  param1[_loc3_].totalTime -= _loc6_ * 3600;
               }
               _loc7_ = Math.floor(param1[_loc3_].totalTime / 60);
               _loc4_.totalTime = (_loc6_ > 0 ? _loc6_ + "h" : "") + (_loc7_ > 0 ? _loc7_ + "m" : "") + (_loc5_ > 0 ? _loc5_ + "s" : "");
               _loc2_.addItem(_loc4_);
            }
            this.guildWarGrid.dataProvider = _loc2_;
         }
      }
      
      private function _ActivePanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn1",_ActivePanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function set pageSelectorMarriage(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1647418760pageSelectorMarriage;
         if(_loc2_ !== param1)
         {
            this._1647418760pageSelectorMarriage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectorMarriage",_loc2_,param1));
         }
      }
      
      private function onInitCoupleRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         flag["marriage"] = true;
         coupleData = new Array();
         for each(_loc2_ in param1.data)
         {
            if(_loc2_.type == 1)
            {
               _loc2_.level = Language.ACTIVEPANEL_S[42];
            }
            else if(_loc2_.type == 2)
            {
               _loc2_.level = Language.ACTIVEPANEL_S[43];
            }
            else if(_loc2_.type == 3)
            {
               _loc2_.level = Language.ACTIVEPANEL_S[44];
            }
            else
            {
               _loc2_.level = "";
            }
            _loc2_.timeLable = String(_loc2_.time).substr(0,10);
         }
         coupleData = param1.data;
         pageSelectorMarriage.onPageChanged = setCoupleRank;
         pageSelectorMarriage.onPageCleared = clearPage;
         pageSelectorMarriage.initPageSeletor(param1.num,NUM_PER_PAGE);
      }
      
      [Bindable(event="propertyChange")]
      public function get lastWeekBpGrid() : DataGrid
      {
         return this._1466456834lastWeekBpGrid;
      }
      
      public function ___ActivePanel_Canvas10_show(param1:FlexEvent) : void
      {
         getInfo("totalBp");
      }
      
      public function updateTreasureHuntState() : void
      {
         if(this.initialized && Boolean(flag["treasureHunt"]))
         {
            flag["treasureHunt"] = false;
         }
      }
      
      private function _ActivePanel_DataGridColumn42_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn42 = _loc1_;
         _loc1_.dataField = "exp";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn42",_ActivePanel_DataGridColumn42);
         return _loc1_;
      }
      
      private function _ActivePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_BasicTitleCanvas1.text = param1;
         },"_ActivePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn4.label = param1;
         },"bangBtn4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn5.label = param1;
         },"bangBtn5.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn6.label = param1;
         },"bangBtn6.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn7.label = param1;
         },"bangBtn7.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn8.label = param1;
         },"bangBtn8.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn1.headerText = param1;
         },"_ActivePanel_DataGridColumn1.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn2.headerText = param1;
         },"_ActivePanel_DataGridColumn2.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn3.headerText = param1;
         },"_ActivePanel_DataGridColumn3.headerText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn4.headerText = param1;
         },"_ActivePanel_DataGridColumn4.headerText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn5.headerText = param1;
         },"_ActivePanel_DataGridColumn5.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn6.headerText = param1;
         },"_ActivePanel_DataGridColumn6.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn7.headerText = param1;
         },"_ActivePanel_DataGridColumn7.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn8.headerText = param1;
         },"_ActivePanel_DataGridColumn8.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn9.headerText = param1;
         },"_ActivePanel_DataGridColumn9.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            popBtn0.label = param1;
         },"popBtn0.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            popBtn1.label = param1;
         },"popBtn1.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            popBtn2.label = param1;
         },"popBtn2.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn10.headerText = param1;
         },"_ActivePanel_DataGridColumn10.headerText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn11.headerText = param1;
         },"_ActivePanel_DataGridColumn11.headerText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn12.headerText = param1;
         },"_ActivePanel_DataGridColumn12.headerText");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn13.headerText = param1;
         },"_ActivePanel_DataGridColumn13.headerText");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn14.headerText = param1;
         },"_ActivePanel_DataGridColumn14.headerText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn15.headerText = param1;
         },"_ActivePanel_DataGridColumn15.headerText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn16.headerText = param1;
         },"_ActivePanel_DataGridColumn16.headerText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn17.headerText = param1;
         },"_ActivePanel_DataGridColumn17.headerText");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn18.headerText = param1;
         },"_ActivePanel_DataGridColumn18.headerText");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return pageCoupleArr;
         },function(param1:Object):void
         {
            marriageGrid.dataProvider = param1;
         },"marriageGrid.dataProvider");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn19.headerText = param1;
         },"_ActivePanel_DataGridColumn19.headerText");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn20.headerText = param1;
         },"_ActivePanel_DataGridColumn20.headerText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn21.headerText = param1;
         },"_ActivePanel_DataGridColumn21.headerText");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn22.headerText = param1;
         },"_ActivePanel_DataGridColumn22.headerText");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn23.headerText = param1;
         },"_ActivePanel_DataGridColumn23.headerText");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bpBtn0.label = param1;
         },"bpBtn0.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bpBtn1.label = param1;
         },"bpBtn1.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn24.headerText = param1;
         },"_ActivePanel_DataGridColumn24.headerText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn25.headerText = param1;
         },"_ActivePanel_DataGridColumn25.headerText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn26.headerText = param1;
         },"_ActivePanel_DataGridColumn26.headerText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn27.headerText = param1;
         },"_ActivePanel_DataGridColumn27.headerText");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn28.headerText = param1;
         },"_ActivePanel_DataGridColumn28.headerText");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn29.headerText = param1;
         },"_ActivePanel_DataGridColumn29.headerText");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn30.headerText = param1;
         },"_ActivePanel_DataGridColumn30.headerText");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn31.headerText = param1;
         },"_ActivePanel_DataGridColumn31.headerText");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn32.headerText = param1;
         },"_ActivePanel_DataGridColumn32.headerText");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[66];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn33.headerText = param1;
         },"_ActivePanel_DataGridColumn33.headerText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn34.headerText = param1;
         },"_ActivePanel_DataGridColumn34.headerText");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[63];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn35.headerText = param1;
         },"_ActivePanel_DataGridColumn35.headerText");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn36.headerText = param1;
         },"_ActivePanel_DataGridColumn36.headerText");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[64];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn37.headerText = param1;
         },"_ActivePanel_DataGridColumn37.headerText");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn38.headerText = param1;
         },"_ActivePanel_DataGridColumn38.headerText");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bossLocal.label = param1;
         },"bossLocal.label");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[77];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bossAll.label = param1;
         },"bossAll.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn39.headerText = param1;
         },"_ActivePanel_DataGridColumn39.headerText");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[73];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn40.headerText = param1;
         },"_ActivePanel_DataGridColumn40.headerText");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn41.headerText = param1;
         },"_ActivePanel_DataGridColumn41.headerText");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[75];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn42.headerText = param1;
         },"_ActivePanel_DataGridColumn42.headerText");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn43.headerText = param1;
         },"_ActivePanel_DataGridColumn43.headerText");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[73];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn44.headerText = param1;
         },"_ActivePanel_DataGridColumn44.headerText");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn45.headerText = param1;
         },"_ActivePanel_DataGridColumn45.headerText");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[75];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn46.headerText = param1;
         },"_ActivePanel_DataGridColumn46.headerText");
         result[63] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            nineBossPageIndicator.filters = param1;
         },"nineBossPageIndicator.filters");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn47.headerText = param1;
         },"_ActivePanel_DataGridColumn47.headerText");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn48.headerText = param1;
         },"_ActivePanel_DataGridColumn48.headerText");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[88];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ActivePanel_DataGridColumn49.headerText = param1;
         },"_ActivePanel_DataGridColumn49.headerText");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtFlushCouple.text = param1;
         },"txtFlushCouple.text");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn9.label = param1;
         },"bangBtn9.label");
         result[69] = binding;
         return result;
      }
      
      public function init() : void
      {
         getInfo("expBattle");
      }
      
      [Bindable(event="propertyChange")]
      public function get totalBpGrid() : DataGrid
      {
         return this._1227196136totalBpGrid;
      }
      
      public function autoClick(param1:int) : void
      {
         bangSele(param1);
         if(param1 == 5 && !flag["totalBp"])
         {
            getInfo("totalBp");
         }
      }
      
      public function __expBattleGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      private function getInfo(param1:String) : void
      {
         if(!flag[param1])
         {
            if(param1 == "marriage")
            {
               _core.remote.call("getCoupleRank",new Responder(onInitCoupleRank),0);
            }
            else if(param1 == "guildWarRank")
            {
               _core.remote.call("getGuildWarRank",new Responder(onInitGuildWarRank),null);
            }
            else
            {
               _core.remote.call("rankGet",new Responder(onInfo),param1);
            }
         }
      }
      
      private function _ActivePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ACTIVEPANEL_U[11];
         _loc1_ = Language.ACTIVEPANEL_U[5];
         _loc1_ = Language.ACTIVEPANEL_U[6];
         _loc1_ = Language.ACTIVEPANEL_U[7];
         _loc1_ = Language.ACTIVEPANEL_U[8];
         _loc1_ = Language.ACTIVEPANEL_U[44];
         _loc1_ = Language.ACTIVEPANEL_U[42];
         _loc1_ = Language.ACTIVEPANEL_U[45];
         _loc1_ = Language.ACTIVEPANEL_U[46];
         _loc1_ = Language.ACTIVEPANEL_U[47];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[20];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[21];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[22];
         _loc1_ = Language.ACTIVEPANEL_S[23];
         _loc1_ = Language.ACTIVEPANEL_S[24];
         _loc1_ = Language.ACTIVEPANEL_S[25];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[26];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[26];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[26];
         _loc1_ = pageCoupleArr;
         _loc1_ = Language.ACTIVEPANEL_S[45];
         _loc1_ = Language.ACTIVEPANEL_S[46];
         _loc1_ = Language.ACTIVEPANEL_S[47];
         _loc1_ = Language.ACTIVEPANEL_S[48];
         _loc1_ = Language.ACTIVEPANEL_S[49];
         _loc1_ = Language.ACTIVEPANEL_S[23];
         _loc1_ = Language.ACTIVEPANEL_S[25];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[40];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[40];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[19];
         _loc1_ = Language.ACTIVEPANEL_S[53];
         _loc1_ = Language.ACTIVEPANEL_S[66];
         _loc1_ = Language.ACTIVEPANEL_S[67];
         _loc1_ = Language.ACTIVEPANEL_S[63];
         _loc1_ = Language.ACTIVEPANEL_S[68];
         _loc1_ = Language.ACTIVEPANEL_S[64];
         _loc1_ = Language.ACTIVEPANEL_S[65];
         _loc1_ = Language.ACTIVEPANEL_S[76];
         _loc1_ = Language.ACTIVEPANEL_S[77];
         _loc1_ = Language.ACTIVEPANEL_S[71];
         _loc1_ = Language.ACTIVEPANEL_S[73];
         _loc1_ = Language.ACTIVEPANEL_S[74];
         _loc1_ = Language.ACTIVEPANEL_S[75];
         _loc1_ = Language.ACTIVEPANEL_S[71];
         _loc1_ = Language.ACTIVEPANEL_S[73];
         _loc1_ = Language.ACTIVEPANEL_S[74];
         _loc1_ = Language.ACTIVEPANEL_S[75];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.ACTIVEPANEL_S[18];
         _loc1_ = Language.ACTIVEPANEL_S[87];
         _loc1_ = Language.ACTIVEPANEL_S[88];
         _loc1_ = Language.ACTIVEPANEL_S[54];
         _loc1_ = Language.ACTIVEPANEL_U[54];
      }
      
      public function set popMonthGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._151627115popMonthGrid;
         if(_loc2_ !== param1)
         {
            this._151627115popMonthGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popMonthGrid",_loc2_,param1));
         }
      }
      
      public function __moneyGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function __bangBtn8_click(param1:MouseEvent) : void
      {
         bangSele(8);
      }
      
      private function _ActivePanel_DataGridColumn30_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn30 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn30",_ActivePanel_DataGridColumn30);
         return _loc1_;
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
      
      public function ___ActivePanel_Canvas7_show(param1:FlexEvent) : void
      {
         getInfo("popWeek");
      }
      
      [Bindable(event="propertyChange")]
      public function get popGrid() : DataGrid
      {
         return this._395304649popGrid;
      }
      
      [Bindable(event="propertyChange")]
      public function get bossRank() : ViewStack
      {
         return this._2126478649bossRank;
      }
      
      private function popSele(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this["popBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["popBtn" + param1].selected = true;
         vsPop.selectedIndex = param1;
      }
      
      public function ___ActivePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _ActivePanel_DataGridColumn41_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn41 = _loc1_;
         _loc1_.dataField = "roundNum";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn41",_ActivePanel_DataGridColumn41);
         return _loc1_;
      }
      
      public function reset() : void
      {
         flag = new Object();
      }
      
      [Bindable(event="propertyChange")]
      public function get treasureHuntGrid() : DataGrid
      {
         return this._1513983672treasureHuntGrid;
      }
      
      public function __popMonthGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function ___ActivePanel_Canvas17_show(param1:FlexEvent) : void
      {
         getInfo("treasureHunt");
      }
      
      public function ___ActivePanel_Canvas1_show(param1:FlexEvent) : void
      {
         getInfo("expBattle");
      }
      
      public function __bossLocalGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function set bpBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1383795006bpBtn0;
         if(_loc2_ !== param1)
         {
            this._1383795006bpBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bpBtn0",_loc2_,param1));
         }
      }
      
      public function set bpBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1383795005bpBtn1;
         if(_loc2_ !== param1)
         {
            this._1383795005bpBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bpBtn1",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn40_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn40 = _loc1_;
         _loc1_.dataField = "bossIndex";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn40",_ActivePanel_DataGridColumn40);
         return _loc1_;
      }
      
      private function set pageCoupleArr(param1:Array) : void
      {
         var _loc2_:Object = this._1470382258pageCoupleArr;
         if(_loc2_ !== param1)
         {
            this._1470382258pageCoupleArr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageCoupleArr",_loc2_,param1));
         }
      }
      
      public function set popWeekGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._862864693popWeekGrid;
         if(_loc2_ !== param1)
         {
            this._862864693popWeekGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popWeekGrid",_loc2_,param1));
         }
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         bangSele(2);
      }
      
      private function bangSele(param1:int) : void
      {
         var _loc2_:int = 10;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["bangBtn" + _loc3_].selected = false;
            _loc3_++;
         }
         this["bangBtn" + param1].selected = true;
         vsBang.selectedIndex = param1;
         if(param1 == 4)
         {
            txtFlush.visible = false;
            txtFlushCouple.visible = true;
         }
         else
         {
            txtFlush.visible = true;
            txtFlushCouple.visible = false;
         }
      }
      
      public function ___ActivePanel_Canvas11_show(param1:FlexEvent) : void
      {
         getInfo("lastWeekBp");
      }
      
      public function __bpBtn0_click(param1:MouseEvent) : void
      {
         bpSele(0);
      }
      
      public function set guildWarGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._505391835guildWarGrid;
         if(_loc2_ !== param1)
         {
            this._505391835guildWarGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildWarGrid",_loc2_,param1));
         }
      }
      
      public function ___ActivePanel_Canvas8_show(param1:FlexEvent) : void
      {
         getInfo("marriage");
      }
      
      public function __lastWeekBpGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function __popWeekGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get nineBossBtnNextPage() : Button
      {
         return this._2086588895nineBossBtnNextPage;
      }
      
      private function gridClick(param1:ListEvent) : void
      {
         var _loc2_:Object = param1.itemRenderer.data;
         var _loc3_:Number = Number(_loc2_.id);
         var _loc4_:String = _loc2_.name;
         var _loc5_:Array = [{
            "label":GamePredef.MENU_WISPER,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_P2PWISPER,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_INFO,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.CHAR_MENU_INVITE_T,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.CHAR_MENU_TRADE,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_ADDF,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_ADDB,
            "id":_loc3_,
            "name":_loc4_
         }];
         var _loc6_:Menu = CustomMenu.createMenu(null,_loc5_);
         _loc6_.show(stage.mouseX + 25,stage.mouseY > 390 ? 390 : stage.mouseY);
         _loc6_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function __bangBtn7_click(param1:MouseEvent) : void
      {
         bangSele(7);
      }
      
      public function set bossAll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._68580084bossAll;
         if(_loc2_ !== param1)
         {
            this._68580084bossAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossAll",_loc2_,param1));
         }
      }
      
      public function set lastWeekBpGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1466456834lastWeekBpGrid;
         if(_loc2_ !== param1)
         {
            this._1466456834lastWeekBpGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastWeekBpGrid",_loc2_,param1));
         }
      }
      
      public function ___ActivePanel_Canvas2_show(param1:FlexEvent) : void
      {
         getInfo("exp");
      }
      
      public function __treasureHuntGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      private function setCoupleRank(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc3_:int = param1;
         if(!coupleData[param1])
         {
            _core.remote.call("getCoupleRank",new Responder(onAddCoupleData),Math.floor(pageSelectorMarriage.pageNo / REFRESH_PAGE_NUM));
         }
         else
         {
            _loc4_ = 0;
            _loc5_ = [];
            while(_loc4_ < NUM_PER_PAGE && Boolean(coupleData[param1 + _loc4_]))
            {
               _loc5_[_loc4_] = coupleData[param1 + _loc4_];
               _loc4_++;
            }
            pageCoupleArr = _loc5_;
         }
      }
      
      private function showCrossRank(param1:int) : *
      {
         var _loc2_:* = Math.floor(crossRankNum / 10) + 1;
         if(_loc2_ > 1)
         {
            nineBossPageIndicator.text = param1 + "/" + 2;
         }
         else
         {
            if(param1 == 2)
            {
               return;
            }
            nineBossPageIndicator.text = param1 + "/" + 1;
         }
         var _loc3_:ArrayCollection = new ArrayCollection();
         var _loc4_:* = 1 + 10 * (param1 - 1);
         while(_loc4_ <= 10 * param1)
         {
            if(Boolean(crossRankData) && crossRankNum >= _loc4_)
            {
               _loc3_.addItem(crossRankData[_loc4_ - 1]);
            }
            _loc4_++;
         }
         this.bossAllGrid.dataProvider = _loc3_;
      }
      
      private function valueSortFunc(param1:Object, param2:Object) : int
      {
         if(Boolean(param1) && Boolean(param2))
         {
            if(Number(param1.value) < Number(param2.value))
            {
               return -1;
            }
            if(Number(param1.value) > Number(param2.value))
            {
               return 1;
            }
         }
         return 0;
      }
      
      public function set expGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1310248189expGrid;
         if(_loc2_ !== param1)
         {
            this._1310248189expGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expGrid",_loc2_,param1));
         }
      }
      
      public function __expGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get expBattleGrid() : DataGrid
      {
         return this._902145509expBattleGrid;
      }
      
      public function set achPointGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1857819888achPointGrid;
         if(_loc2_ !== param1)
         {
            this._1857819888achPointGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achPointGrid",_loc2_,param1));
         }
      }
      
      public function __totalBpGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function __bossLocal_click(param1:MouseEvent) : void
      {
         getNineBossRankView(0);
      }
      
      public function set totalBpGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1227196136totalBpGrid;
         if(_loc2_ !== param1)
         {
            this._1227196136totalBpGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalBpGrid",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn19_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn19 = _loc1_;
         _loc1_.dataField = "maleName";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn19",_ActivePanel_DataGridColumn19);
         return _loc1_;
      }
      
      public function ___ActivePanel_Canvas12_show(param1:FlexEvent) : void
      {
         getInfo("achPoint");
      }
      
      private function _ActivePanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ActivePanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get vsPop() : ViewStack
      {
         return this._112481876vsPop;
      }
      
      public function ___ActivePanel_Canvas9_show(param1:FlexEvent) : void
      {
         getInfo("totalBp");
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         bangSele(1);
      }
      
      private function sortAc(param1:ArrayCollection, param2:int) : ArrayCollection
      {
         var _loc3_:Sort = new Sort();
         switch(param2)
         {
            case 1:
               _loc3_.fields = [new SortField("rank")];
               break;
            case 2:
               _loc3_.fields = [new SortField("totalSec",true,true)];
         }
         param1.sort = _loc3_;
         param1.refresh();
         return param1;
      }
      
      public function set marriageGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._595248336marriageGrid;
         if(_loc2_ !== param1)
         {
            this._595248336marriageGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"marriageGrid",_loc2_,param1));
         }
      }
      
      public function set popGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._395304649popGrid;
         if(_loc2_ !== param1)
         {
            this._395304649popGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popGrid",_loc2_,param1));
         }
      }
      
      public function set bossRank(param1:ViewStack) : void
      {
         var _loc2_:Object = this._2126478649bossRank;
         if(_loc2_ !== param1)
         {
            this._2126478649bossRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtFlush() : Text
      {
         return this._1477210508txtFlush;
      }
      
      private function _ActivePanel_DataGridColumn18_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn18 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn18",_ActivePanel_DataGridColumn18);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectorMarriage() : PageSelector
      {
         return this._1647418760pageSelectorMarriage;
      }
      
      private function clearPage() : void
      {
         pageCoupleArr = new Array();
      }
      
      private function getNineBossRank() : void
      {
         var _loc1_:* = new Date().getTime() + _core.timeLag;
         _core.remote.call("getNineBossRankByClient",new Responder(onGetNineBossRank),_loc1_,_haveNineBossRankTime,_haveNineBossCrossRankTime);
      }
      
      public function set nineBossPageIndicator(param1:TextInput) : void
      {
         var _loc2_:Object = this._816022719nineBossPageIndicator;
         if(_loc2_ !== param1)
         {
            this._816022719nineBossPageIndicator = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nineBossPageIndicator",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ActivePanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set popBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._395451579popBtn0;
         if(_loc2_ !== param1)
         {
            this._395451579popBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popBtn0",_loc2_,param1));
         }
      }
      
      public function set popBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._395451578popBtn1;
         if(_loc2_ !== param1)
         {
            this._395451578popBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popBtn1",_loc2_,param1));
         }
      }
      
      public function set popBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._395451577popBtn2;
         if(_loc2_ !== param1)
         {
            this._395451577popBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popBtn2",_loc2_,param1));
         }
      }
      
      public function set treasureHuntGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1513983672treasureHuntGrid;
         if(_loc2_ !== param1)
         {
            this._1513983672treasureHuntGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasureHuntGrid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popMonthGrid() : DataGrid
      {
         return this._151627115popMonthGrid;
      }
      
      private function _ActivePanel_DataGridColumn29_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn29 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn29",_ActivePanel_DataGridColumn29);
         return _loc1_;
      }
      
      public function __bangBtn6_click(param1:MouseEvent) : void
      {
         bangSele(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get vsBang() : ViewStack
      {
         return this._808459627vsBang;
      }
      
      public function ___ActivePanel_Canvas3_show(param1:FlexEvent) : void
      {
         getInfo("money");
      }
      
      private function onGetNineBossRank(param1:Object) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(param1)
         {
            if(param1[1])
            {
               if(param1[1].type == 1)
               {
                  _haveNineBossRankTime = param1[1].time;
                  _loc2_ = new ArrayCollection();
                  for(_loc3_ in param1[1].rankObj)
                  {
                     if(param1[1].rankObj[_loc3_])
                     {
                        if(param1[1].rankObj[_loc3_].rank)
                        {
                           param1[1].rankObj[_loc3_].rank = Number(param1[1].rankObj[_loc3_].rank);
                        }
                        _loc2_.addItem(param1[1].rankObj[_loc3_]);
                     }
                  }
                  _loc2_ = sortAc(_loc2_,1);
                  this.bossLocalGrid.dataProvider = _loc2_;
               }
            }
            if(param1[2])
            {
               if(param1[2].type == 2)
               {
                  _haveNineBossCrossRankTime = param1[2].time;
                  crossRankData = new ArrayCollection();
                  _loc4_ = 1;
                  for(_loc3_ in param1[2].rankObj)
                  {
                     if(param1[2].rankObj[_loc3_])
                     {
                        if(param1[2].rankObj[_loc3_].totalSec)
                        {
                           param1[2].rankObj[_loc3_].totalSec = Number(param1[2].rankObj[_loc3_].totalSec);
                        }
                        crossRankData.addItem(param1[2].rankObj[_loc3_]);
                        _loc4_++;
                     }
                  }
                  crossRankData = sortAc(crossRankData,2);
                  crossRankNum = _loc4_ - 1;
                  showCrossRank(1);
               }
            }
         }
      }
      
      public function set txtFlushCouple(param1:Text) : void
      {
         var _loc2_:Object = this._880039084txtFlushCouple;
         if(_loc2_ !== param1)
         {
            this._880039084txtFlushCouple = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtFlushCouple",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn17_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn17 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn17",_ActivePanel_DataGridColumn17);
         return _loc1_;
      }
      
      public function __popBtn2_click(param1:MouseEvent) : void
      {
         popSele(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get bpBtn0() : BasicGlowButton
      {
         return this._1383795006bpBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bpBtn1() : BasicGlowButton
      {
         return this._1383795005bpBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get popWeekGrid() : DataGrid
      {
         return this._862864693popWeekGrid;
      }
      
      private function _ActivePanel_DataGridColumn28_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn28 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn28",_ActivePanel_DataGridColumn28);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildWarGrid() : DataGrid
      {
         return this._505391835guildWarGrid;
      }
      
      public function ___ActivePanel_Canvas13_show(param1:FlexEvent) : void
      {
         getInfo("guildWarRank");
      }
      
      [Bindable(event="propertyChange")]
      public function get bossAll() : BasicGlowButton
      {
         return this._68580084bossAll;
      }
      
      private function _ActivePanel_DataGridColumn39_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn39 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn39",_ActivePanel_DataGridColumn39);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn16_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn16 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn16",_ActivePanel_DataGridColumn16);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn9",_ActivePanel_DataGridColumn9);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get expGrid() : DataGrid
      {
         return this._1310248189expGrid;
      }
      
      private function setFlushStr() : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc1_:String = Language.ACTIVEPANEL_S[51];
         var _loc2_:uint = new Date().getDate();
         var _loc3_:uint = new Date().getMonth() + 1;
         var _loc4_:uint = new Date().getHours();
         if(_loc4_ >= 14)
         {
            _loc5_ = new Date(new Date().getTime() + 86400000).getDate();
            _loc6_ = new Date(new Date().getTime() + 86400000).getMonth() + 1;
            _loc1_ = _loc1_.replace("{month1}",_loc3_).replace("{date1}",_loc2_).replace("{month2}",_loc6_).replace("{date2}",_loc5_).replace("{hour1}",14).replace("{hour2}",0);
         }
         else
         {
            _loc7_ = new Date(new Date().getTime() - 86400000).getDate();
            _loc8_ = new Date(new Date().getTime() - 86400000).getMonth() + 1;
            _loc1_ = _loc1_.replace("{month1}",_loc3_).replace("{date1}",_loc2_).replace("{month2}",_loc3_).replace("{date2}",_loc2_).replace("{hour1}",0).replace("{hour2}",14);
         }
         txtFlush.text = _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get achPointGrid() : DataGrid
      {
         return this._1857819888achPointGrid;
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         bangSele(0);
      }
      
      private function _ActivePanel_DataGridColumn27_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn27 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn27",_ActivePanel_DataGridColumn27);
         return _loc1_;
      }
      
      public function __nineBossBtnLastPage_click(param1:MouseEvent) : void
      {
         showCrossRank(1);
      }
      
      private function onInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Date = null;
         flag[param1.name] = true;
         if(param1.name == "level")
         {
            for each(_loc2_ in param1.data)
            {
               _loc2_.value = _core.basic.expToLevel(_loc2_.value);
            }
         }
         else if(param1.name == "treasureHunt")
         {
            for each(_loc2_ in param1.data)
            {
               if(_loc2_)
               {
                  _loc3_ = new Date(_loc2_.time);
                  _loc2_.time = _loc3_.hours + ":" + _loc3_.minutes + ":" + _loc3_.seconds;
               }
            }
         }
         this[param1.name + "Grid"].dataProvider = param1.data;
      }
      
      [Bindable(event="propertyChange")]
      public function get marriageGrid() : DataGrid
      {
         return this._595248336marriageGrid;
      }
      
      private function _ActivePanel_DataGridColumn15_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn15 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn15",_ActivePanel_DataGridColumn15);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn38_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn38 = _loc1_;
         _loc1_.dataField = "totalTime";
         _loc1_.width = 100;
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn38",_ActivePanel_DataGridColumn38);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn8",_ActivePanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function ___ActivePanel_Canvas4_show(param1:FlexEvent) : void
      {
         getInfo("pop");
      }
      
      [Bindable(event="propertyChange")]
      public function get nineBossPageIndicator() : TextInput
      {
         return this._816022719nineBossPageIndicator;
      }
      
      [Bindable(event="propertyChange")]
      public function get popBtn0() : BasicGlowButton
      {
         return this._395451579popBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get popBtn1() : BasicGlowButton
      {
         return this._395451578popBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get popBtn2() : BasicGlowButton
      {
         return this._395451577popBtn2;
      }
      
      public function __nineBossBtnNextPage_click(param1:MouseEvent) : void
      {
         showCrossRank(2);
      }
      
      private function _ActivePanel_DataGridColumn26_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn26 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn26",_ActivePanel_DataGridColumn26);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn49_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn49 = _loc1_;
         _loc1_.dataField = "time";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn49",_ActivePanel_DataGridColumn49);
         return _loc1_;
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
      public function get txtFlushCouple() : Text
      {
         return this._880039084txtFlushCouple;
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
      
      public function set bangBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324750bangBtn6;
         if(_loc2_ !== param1)
         {
            this._1863324750bangBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn6",_loc2_,param1));
         }
      }
      
      public function set bangBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324749bangBtn7;
         if(_loc2_ !== param1)
         {
            this._1863324749bangBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn7",_loc2_,param1));
         }
      }
      
      public function set bangBtn8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324748bangBtn8;
         if(_loc2_ !== param1)
         {
            this._1863324748bangBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn8",_loc2_,param1));
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
      
      public function set bangBtn9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324747bangBtn9;
         if(_loc2_ !== param1)
         {
            this._1863324747bangBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn9",_loc2_,param1));
         }
      }
      
      public function __popBtn1_click(param1:MouseEvent) : void
      {
         popSele(1);
      }
      
      private function _ActivePanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn14 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn14",_ActivePanel_DataGridColumn14);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn37_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn37 = _loc1_;
         _loc1_.dataField = "winNum";
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn37",_ActivePanel_DataGridColumn37);
         return _loc1_;
      }
      
      private function onAddCoupleData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         for each(_loc2_ in param1.data)
         {
            if(_loc2_.type == 1)
            {
               _loc2_.level = Language.ACTIVEPANEL_S[42];
            }
            else if(_loc2_.type == 2)
            {
               _loc2_.level = Language.ACTIVEPANEL_S[43];
            }
            else if(_loc2_.type == 3)
            {
               _loc2_.level = Language.ACTIVEPANEL_S[44];
            }
            else
            {
               _loc2_.level = "";
            }
            _loc2_.timeLable = String(_loc2_.time).substr(0,10);
         }
         if(param1.num != pageSelectorMarriage.totalItemCount)
         {
            pageSelectorMarriage.initPageSeletor(param1.num,NUM_PER_PAGE);
            flag["marriage"] = false;
         }
         for(_loc3_ in param1.data)
         {
            coupleData[param1.start + _loc3_] = param1.data[_loc3_];
         }
         _loc4_ = 0;
         _loc5_ = [];
         while(_loc4_ < NUM_PER_PAGE && Boolean(param1.data[_loc4_]))
         {
            _loc5_[_loc4_] = param1.data[_loc4_];
            _loc4_++;
         }
         pageCoupleArr = _loc5_;
      }
      
      public function ___ActivePanel_Canvas14_show(param1:FlexEvent) : void
      {
         getNineBossRank();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActivePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActivePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ActivePanelWatcherSetupUtil");
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
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(param1.label == GamePredef.MENU_WISPER)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(param1.item.name);
         }
         else if(param1.label == GamePredef.MENU_P2PWISPER)
         {
            ChatPanelUtil.createChatPanel(param1.item.id);
         }
         else if(param1.label == GamePredef.MENU_INFO)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(param1.item.id);
         }
         else if(param1.label == GamePredef.CHAR_MENU_INVITE_T)
         {
            _core.remote.groupInvite(param1.item.id);
         }
         else if(param1.label == GamePredef.CHAR_MENU_TRADE)
         {
            _core.view.getUI(ViewManager.PANEL_TRADE).newTrade(param1.item.id,param1.item.name);
         }
         else if(param1.label == GamePredef.MENU_ADDF)
         {
            _core.addFriend(param1.item.name);
         }
         else if(param1.label == GamePredef.MENU_ADDB)
         {
            _core.addBlack(param1.item.name);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn5() : BasicGlowButton
      {
         return this._1863324751bangBtn5;
      }
      
      private function _ActivePanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn13 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn13",_ActivePanel_DataGridColumn13);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn36_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn36 = _loc1_;
         _loc1_.dataField = "leaderName";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn36",_ActivePanel_DataGridColumn36);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn8() : BasicGlowButton
      {
         return this._1863324748bangBtn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn9() : BasicGlowButton
      {
         return this._1863324747bangBtn9;
      }
      
      private function _ActivePanel_DataGridColumn48_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn48 = _loc1_;
         _loc1_.dataField = "rank";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn48",_ActivePanel_DataGridColumn48);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn4() : BasicGlowButton
      {
         return this._1863324752bangBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn6() : BasicGlowButton
      {
         return this._1863324750bangBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn7() : BasicGlowButton
      {
         return this._1863324749bangBtn7;
      }
      
      public function set nineBossBtnNextPage(param1:Button) : void
      {
         var _loc2_:Object = this._2086588895nineBossBtnNextPage;
         if(_loc2_ !== param1)
         {
            this._2086588895nineBossBtnNextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nineBossBtnNextPage",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn25_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn25 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn25",_ActivePanel_DataGridColumn25);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn6",_ActivePanel_DataGridColumn6);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn7",_ActivePanel_DataGridColumn7);
         return _loc1_;
      }
      
      public function __achPointGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function ___ActivePanel_Canvas5_show(param1:FlexEvent) : void
      {
         getInfo("pop");
      }
      
      public function set vsBp(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3628011vsBp;
         if(_loc2_ !== param1)
         {
            this._3628011vsBp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsBp",_loc2_,param1));
         }
      }
      
      private function _ActivePanel_DataGridColumn24_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn24 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn24",_ActivePanel_DataGridColumn24);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn47_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn47 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn47",_ActivePanel_DataGridColumn47);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn12 = _loc1_;
         _loc1_.dataField = "value";
         _loc1_.sortCompareFunction = valueSortFunc;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn12",_ActivePanel_DataGridColumn12);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn35_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn35 = _loc1_;
         _loc1_.dataField = "guildName";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn35",_ActivePanel_DataGridColumn35);
         return _loc1_;
      }
      
      private function _ActivePanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _ActivePanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "guild";
         BindingManager.executeBindings(this,"_ActivePanel_DataGridColumn5",_ActivePanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get vsBp() : ViewStack
      {
         return this._3628011vsBp;
      }
      
      public function set bossLocal(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1491193854bossLocal;
         if(_loc2_ !== param1)
         {
            this._1491193854bossLocal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossLocal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bossLocal() : BasicGlowButton
      {
         return this._1491193854bossLocal;
      }
   }
}

