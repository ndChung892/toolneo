package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.containers.ViewStack;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AnniversaryPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _349420012rank5Slot3:ItemSlot;
      
      private var _292161709rank3Slot2:ItemSlot;
      
      private var loader:Loader;
      
      private var _292161712rank3Slot5:ItemSlot;
      
      private var _320790863rank4Slot5:ItemSlot;
      
      private var SERVER_ID_NAME:Object = {
         1:"Server 12",
         2:"Server 6",
         6:"Server 32",
         16:"Server 36",
         19:"Server 38"
      };
      
      private var _378049165rank6Slot5:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      private var _349420010rank5Slot1:ItemSlot;
      
      private var _263532558rank2Slot2:ItemSlot;
      
      public var _AnniversaryPanel_Label10:Label;
      
      public var _AnniversaryPanel_Label11:Label;
      
      public var _AnniversaryPanel_Label12:Label;
      
      public var _AnniversaryPanel_Label13:Label;
      
      public var _AnniversaryPanel_Label14:Label;
      
      public var _AnniversaryPanel_Label15:Label;
      
      public var _AnniversaryPanel_Label16:Label;
      
      public var _AnniversaryPanel_Label17:Label;
      
      public var _AnniversaryPanel_Label18:Label;
      
      public var _AnniversaryPanel_Label19:Label;
      
      private var subC4:Class;
      
      private var subC5:Class;
      
      private var subC6:Class;
      
      private var subC7:Class;
      
      private var subC1:Class;
      
      private var _1352493073perCrossRank:DataGrid;
      
      private var _234903408rank1Slot3:ItemSlot;
      
      private var _263532561rank2Slot5:ItemSlot;
      
      private var _409271709totalContainer:Canvas;
      
      private var subC3:Class;
      
      private var subC8:Class;
      
      public var _AnniversaryPanel_Label20:Label;
      
      public var _AnniversaryPanel_Label21:Label;
      
      public var _AnniversaryPanel_Label22:Label;
      
      public var _AnniversaryPanel_Label23:Label;
      
      public var _AnniversaryPanel_Label24:Label;
      
      public var _AnniversaryPanel_Label25:Label;
      
      public var _AnniversaryPanel_Label26:Label;
      
      public var _AnniversaryPanel_Label27:Label;
      
      public var _AnniversaryPanel_Label28:Label;
      
      public var _AnniversaryPanel_Label29:Label;
      
      private var _292161710rank3Slot3:ItemSlot;
      
      private var _378049163rank6Slot3:ItemSlot;
      
      public var _AnniversaryPanel_ViewStack1:ViewStack;
      
      private var _2077431384totalCrossRank:DataGrid;
      
      private var _320790861rank4Slot3:ItemSlot;
      
      public var _AnniversaryPanel_Label30:Label;
      
      public var _AnniversaryPanel_Label31:Label;
      
      public var _AnniversaryPanel_Label32:Label;
      
      public var _AnniversaryPanel_Label33:Label;
      
      public var _AnniversaryPanel_Label1:Label;
      
      public var _AnniversaryPanel_Label2:Label;
      
      public var _AnniversaryPanel_Label3:Label;
      
      public var _AnniversaryPanel_Label4:Label;
      
      public var _AnniversaryPanel_Label5:Label;
      
      public var _AnniversaryPanel_Label6:Label;
      
      public var _AnniversaryPanel_Label7:Label;
      
      public var _AnniversaryPanel_Label8:Label;
      
      public var _AnniversaryPanel_Label35:Label;
      
      private var _349420013rank5Slot4:ItemSlot;
      
      public var _AnniversaryPanel_Label9:Label;
      
      public var _AnniversaryPanel_Label36:Label;
      
      public var _AnniversaryPanel_Label34:Label;
      
      private var subC2:Class;
      
      private var AnniScoreAwardConfig:Array = [[5739,5740,5741,5742,5743],[5744,5745,5746,5747,5748],[5749,5750,5751,5752,5753],[5754,5755,5756,5757,5758],[5759,5760,5761,5762,5763],[5764,5765,5766,5767,5768]];
      
      private var _234903406rank1Slot1:ItemSlot;
      
      public var _AnniversaryPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _378049161rank6Slot1:ItemSlot;
      
      public var _AnniversaryPanel_Image1:Image;
      
      private var _263532559rank2Slot3:ItemSlot;
      
      private var _234903409rank1Slot4:ItemSlot;
      
      private var _349420011rank5Slot2:ItemSlot;
      
      private var _292161708rank3Slot1:ItemSlot;
      
      private var _1794723803perTotalCrossRank:DataGrid;
      
      private var _320790859rank4Slot1:ItemSlot;
      
      private var _292161711rank3Slot4:ItemSlot;
      
      private var _803559802pageTab:HButtonTab;
      
      private var _320790862rank4Slot4:ItemSlot;
      
      private var _378049164rank6Slot4:ItemSlot;
      
      private var _349420014rank5Slot5:ItemSlot;
      
      private var _679437591perRank:DataGrid;
      
      mx_internal var _watchers:Array = [];
      
      private var _263532557rank2Slot1:ItemSlot;
      
      private var _1913215863serverCrossRank:DataGrid;
      
      private var _234903407rank1Slot2:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _263532560rank2Slot4:ItemSlot;
      
      private var _234903410rank1Slot5:ItemSlot;
      
      private var _320790860rank4Slot2:ItemSlot;
      
      private var _967817459perTotalRank:DataGrid;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":760,
               "height":550,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AnniversaryPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"totalContainer",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":39,
                        "width":740,
                        "height":490,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_AnniversaryPanel_Image1"
                        }),new UIComponentDescriptor({
                           "type":HButtonTab,
                           "id":"pageTab",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":47,
                                 "selectedIndex":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"_AnniversaryPanel_ViewStack1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":85,
                                 "width":400,
                                 "height":366,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":260,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"perRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":36,
                                                            "y":41,
                                                            "columns":[_AnniversaryPanel_DataGridColumn1_c(),_AnniversaryPanel_DataGridColumn2_c(),_AnniversaryPanel_DataGridColumn3_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":60000,
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Làm mới",
                                                   "x":332,
                                                   "y":257
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Thưởng",
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16737792;
                                                this.horizontalCenter = "-145";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top1",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16711935;
                                                this.horizontalCenter = "-72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top2",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 13311;
                                                this.horizontalCenter = "-2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top3",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65280;
                                                this.horizontalCenter = "72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top5",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label6",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.horizontalCenter = "144";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top10",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank1Slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":299
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank1Slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":110,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank1Slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank1Slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank1Slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":325,
                                                   "y":297
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Nhận",
                                                   "x":169,
                                                   "y":338
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
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":260,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"perCrossRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":36,
                                                            "y":41,
                                                            "columns":[_AnniversaryPanel_DataGridColumn4_c(),_AnniversaryPanel_DataGridColumn5_c(),_AnniversaryPanel_DataGridColumn6_c(),_AnniversaryPanel_DataGridColumn7_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":60000,
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Làm mới",
                                                   "x":332,
                                                   "y":257
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Thưởng",
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label8",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16737792;
                                                this.horizontalCenter = "-145";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top1",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label9",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16711935;
                                                this.horizontalCenter = "-72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top2",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label10",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 13311;
                                                this.horizontalCenter = "-2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top3",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label11",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65280;
                                                this.horizontalCenter = "72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top5",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label12",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.horizontalCenter = "144";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top10",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank2Slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":299
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank2Slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":110,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank2Slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank2Slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank2Slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":325,
                                                   "y":297
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Nhận",
                                                   "x":169,
                                                   "y":338
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
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":260,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"serverCrossRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":36,
                                                            "y":41,
                                                            "columns":[_AnniversaryPanel_DataGridColumn8_c(),_AnniversaryPanel_DataGridColumn9_c(),_AnniversaryPanel_DataGridColumn10_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":60000,
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Làm mới",
                                                   "x":332,
                                                   "y":257
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label13",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Thưởng Sv",
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label14",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16737792;
                                                this.horizontalCenter = "-145";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top1",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label15",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16711935;
                                                this.horizontalCenter = "-72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top2",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label16",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 13311;
                                                this.horizontalCenter = "-2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top3",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label17",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65280;
                                                this.horizontalCenter = "72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top5",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label18",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.horizontalCenter = "144";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top10",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank3Slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":299
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank3Slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":110,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank3Slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank3Slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank3Slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":325,
                                                   "y":297
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton6_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Nhận",
                                                   "x":169,
                                                   "y":338
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
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":260,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"perTotalRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":36,
                                                            "y":41,
                                                            "columns":[_AnniversaryPanel_DataGridColumn11_c(),_AnniversaryPanel_DataGridColumn12_c(),_AnniversaryPanel_DataGridColumn13_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton7_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":60000,
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Làm mới",
                                                   "x":332,
                                                   "y":257
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label19",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Thưởng",
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label20",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16737792;
                                                this.horizontalCenter = "-145";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top1",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label21",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16711935;
                                                this.horizontalCenter = "-72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top2",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label22",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 13311;
                                                this.horizontalCenter = "-2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top3",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label23",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65280;
                                                this.horizontalCenter = "72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top5",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label24",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.horizontalCenter = "144";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top10",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank4Slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":299
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank4Slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":110,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank4Slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank4Slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank4Slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":325,
                                                   "y":297
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton8_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Nhận",
                                                   "x":169,
                                                   "y":338
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
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":260,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"perTotalCrossRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":36,
                                                            "y":41,
                                                            "columns":[_AnniversaryPanel_DataGridColumn14_c(),_AnniversaryPanel_DataGridColumn15_c(),_AnniversaryPanel_DataGridColumn16_c(),_AnniversaryPanel_DataGridColumn17_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton9_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":60000,
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Làm mới",
                                                   "x":332,
                                                   "y":257
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label25",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Thưởng",
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label26",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16737792;
                                                this.horizontalCenter = "-145";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top1",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label27",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16711935;
                                                this.horizontalCenter = "-72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top2",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label28",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 13311;
                                                this.horizontalCenter = "-2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top3",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label29",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65280;
                                                this.horizontalCenter = "72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top5",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label30",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.horizontalCenter = "144";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top10",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank5Slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":299
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank5Slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":110,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank5Slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank5Slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank5Slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":325,
                                                   "y":297
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton10_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Nhận",
                                                   "x":169,
                                                   "y":338
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
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":260,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"totalCrossRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":36,
                                                            "y":37,
                                                            "columns":[_AnniversaryPanel_DataGridColumn18_c(),_AnniversaryPanel_DataGridColumn19_c(),_AnniversaryPanel_DataGridColumn20_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton11_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":60000,
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Làm mới",
                                                   "x":332,
                                                   "y":257
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label31",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Thưởng",
                                                   "y":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label32",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16737792;
                                                this.horizontalCenter = "-145";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top1",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label33",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16711935;
                                                this.horizontalCenter = "-72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top2",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label34",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 13311;
                                                this.horizontalCenter = "-2";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top3",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label35",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65280;
                                                this.horizontalCenter = "72";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top5",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AnniversaryPanel_Label36",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.horizontalCenter = "144";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Top10",
                                                   "y":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank6Slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38,
                                                   "y":299
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank6Slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":110,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank6Slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":181,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank6Slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":298
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rank6Slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":325,
                                                   "y":297
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___AnniversaryPanel_BasicDelayButton12_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "label":"Nhận",
                                                   "x":169,
                                                   "y":338
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
      
      private var _378049162rank6Slot2:ItemSlot;
      
      public function AnniversaryPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 760;
         this.height = 550;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___AnniversaryPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AnniversaryPanel._watcherSetupUtil = param1;
      }
      
      private function _AnniversaryPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "XH";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      private function _AnniversaryPanel_DataGridColumn9_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Sv";
         _loc1_.dataField = "server";
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank2Slot2() : ItemSlot
      {
         return this._263532558rank2Slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank2Slot3() : ItemSlot
      {
         return this._263532559rank2Slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank2Slot4() : ItemSlot
      {
         return this._263532560rank2Slot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank2Slot5() : ItemSlot
      {
         return this._263532561rank2Slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank2Slot1() : ItemSlot
      {
         return this._263532557rank2Slot1;
      }
      
      private function _AnniversaryPanel_DataGridColumn17_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Điểm";
         _loc1_.dataField = "score";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      public function set rank2Slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._263532559rank2Slot3;
         if(_loc2_ !== param1)
         {
            this._263532559rank2Slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank2Slot3",_loc2_,param1));
         }
      }
      
      public function set rank2Slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._263532560rank2Slot4;
         if(_loc2_ !== param1)
         {
            this._263532560rank2Slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank2Slot4",_loc2_,param1));
         }
      }
      
      public function set rank2Slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._263532557rank2Slot1;
         if(_loc2_ !== param1)
         {
            this._263532557rank2Slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank2Slot1",_loc2_,param1));
         }
      }
      
      public function set rank2Slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._263532561rank2Slot5;
         if(_loc2_ !== param1)
         {
            this._263532561rank2Slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank2Slot5",_loc2_,param1));
         }
      }
      
      private function _AnniversaryPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnniversaryPanel_BasicTitleCanvas1.text = param1;
         },"_AnniversaryPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000723);
         },function(param1:Object):void
         {
            _AnniversaryPanel_Image1.source = param1;
         },"_AnniversaryPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.ANNIVERSARY_LANG[2];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return pageTab.selectedIndex;
         },function(param1:int):void
         {
            _AnniversaryPanel_ViewStack1.selectedIndex = param1;
         },"_AnniversaryPanel_ViewStack1.selectedIndex");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label1.filters = param1;
         },"_AnniversaryPanel_Label1.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label2.filters = param1;
         },"_AnniversaryPanel_Label2.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label3.filters = param1;
         },"_AnniversaryPanel_Label3.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label4.filters = param1;
         },"_AnniversaryPanel_Label4.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label5.filters = param1;
         },"_AnniversaryPanel_Label5.filters");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label6.filters = param1;
         },"_AnniversaryPanel_Label6.filters");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label7.filters = param1;
         },"_AnniversaryPanel_Label7.filters");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label8.filters = param1;
         },"_AnniversaryPanel_Label8.filters");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label9.filters = param1;
         },"_AnniversaryPanel_Label9.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label10.filters = param1;
         },"_AnniversaryPanel_Label10.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label11.filters = param1;
         },"_AnniversaryPanel_Label11.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label12.filters = param1;
         },"_AnniversaryPanel_Label12.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label13.filters = param1;
         },"_AnniversaryPanel_Label13.filters");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label14.filters = param1;
         },"_AnniversaryPanel_Label14.filters");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label15.filters = param1;
         },"_AnniversaryPanel_Label15.filters");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label16.filters = param1;
         },"_AnniversaryPanel_Label16.filters");
         result[20] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label17.filters = param1;
         },"_AnniversaryPanel_Label17.filters");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label18.filters = param1;
         },"_AnniversaryPanel_Label18.filters");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label19.filters = param1;
         },"_AnniversaryPanel_Label19.filters");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label20.filters = param1;
         },"_AnniversaryPanel_Label20.filters");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label21.filters = param1;
         },"_AnniversaryPanel_Label21.filters");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label22.filters = param1;
         },"_AnniversaryPanel_Label22.filters");
         result[26] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label23.filters = param1;
         },"_AnniversaryPanel_Label23.filters");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label24.filters = param1;
         },"_AnniversaryPanel_Label24.filters");
         result[28] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label25.filters = param1;
         },"_AnniversaryPanel_Label25.filters");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label26.filters = param1;
         },"_AnniversaryPanel_Label26.filters");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label27.filters = param1;
         },"_AnniversaryPanel_Label27.filters");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label28.filters = param1;
         },"_AnniversaryPanel_Label28.filters");
         result[32] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label29.filters = param1;
         },"_AnniversaryPanel_Label29.filters");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label30.filters = param1;
         },"_AnniversaryPanel_Label30.filters");
         result[34] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label31.filters = param1;
         },"_AnniversaryPanel_Label31.filters");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label32.filters = param1;
         },"_AnniversaryPanel_Label32.filters");
         result[36] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label33.filters = param1;
         },"_AnniversaryPanel_Label33.filters");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label34.filters = param1;
         },"_AnniversaryPanel_Label34.filters");
         result[38] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label35.filters = param1;
         },"_AnniversaryPanel_Label35.filters");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AnniversaryPanel_Label36.filters = param1;
         },"_AnniversaryPanel_Label36.filters");
         result[40] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get perTotalCrossRank() : DataGrid
      {
         return this._1794723803perTotalCrossRank;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton5_click(param1:MouseEvent) : void
      {
         getRankByType(3);
      }
      
      private function _AnniversaryPanel_DataGridColumn20_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Điểm";
         _loc1_.dataField = "score";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      public function set rank2Slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._263532558rank2Slot2;
         if(_loc2_ !== param1)
         {
            this._263532558rank2Slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank2Slot2",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         subC1 = loader.contentLoaderInfo.applicationDomain.getDefinition("mashangjiqing") as Class;
         var _loc2_:SimpleButton = new subC1();
         _loc2_.x = 24;
         _loc2_.y = 10;
         _loc2_.addEventListener(MouseEvent.CLICK,click);
         var _loc3_:UIComponent = new UIComponent();
         _loc3_.addChild(_loc2_);
         totalContainer.addChild(_loc3_);
         subC2 = loader.contentLoaderInfo.applicationDomain.getDefinition("shuiguanyouhuo") as Class;
         var _loc4_:SimpleButton = new subC2();
         _loc4_.x = 24;
         _loc4_.y = 130;
         _loc4_.addEventListener(MouseEvent.CLICK,click);
         var _loc5_:UIComponent = new UIComponent();
         _loc5_.addChild(_loc4_);
         totalContainer.addChild(_loc5_);
         subC3 = loader.contentLoaderInfo.applicationDomain.getDefinition("tiantianxiaochu") as Class;
         var _loc6_:SimpleButton = new subC3();
         _loc6_.x = 24;
         _loc6_.y = 250;
         _loc6_.addEventListener(MouseEvent.CLICK,click);
         var _loc7_:UIComponent = new UIComponent();
         _loc7_.addChild(_loc6_);
         totalContainer.addChild(_loc7_);
         subC4 = loader.contentLoaderInfo.applicationDomain.getDefinition("zhongzhinengshou") as Class;
         var _loc8_:SimpleButton = new subC4();
         _loc8_.x = 593;
         _loc8_.y = 10;
         _loc8_.addEventListener(MouseEvent.CLICK,click);
         var _loc9_:UIComponent = new UIComponent();
         _loc9_.addChild(_loc8_);
         totalContainer.addChild(_loc9_);
         subC5 = loader.contentLoaderInfo.applicationDomain.getDefinition("chengzhongdashi") as Class;
         var _loc10_:SimpleButton = new subC5();
         _loc10_.x = 593;
         _loc10_.y = 130;
         _loc10_.addEventListener(MouseEvent.CLICK,click);
         var _loc11_:UIComponent = new UIComponent();
         _loc11_.addChild(_loc10_);
         totalContainer.addChild(_loc11_);
         subC6 = loader.contentLoaderInfo.applicationDomain.getDefinition("mofafangkuai") as Class;
         var _loc12_:SimpleButton = new subC6();
         _loc12_.x = 593;
         _loc12_.y = 250;
         _loc12_.addEventListener(MouseEvent.CLICK,click);
         var _loc13_:UIComponent = new UIComponent();
         _loc13_.addChild(_loc12_);
         totalContainer.addChild(_loc13_);
         subC7 = loader.contentLoaderInfo.applicationDomain.getDefinition("jiugongpitu") as Class;
         var _loc14_:SimpleButton = new subC7();
         _loc14_.x = 24;
         _loc14_.y = 370;
         _loc14_.addEventListener(MouseEvent.CLICK,click);
         var _loc15_:UIComponent = new UIComponent();
         _loc15_.addChild(_loc14_);
         totalContainer.addChild(_loc15_);
         subC8 = loader.contentLoaderInfo.applicationDomain.getDefinition("chongwupaidui") as Class;
         var _loc16_:SimpleButton = new subC8();
         _loc16_.x = 593;
         _loc16_.y = 370;
         _loc16_.addEventListener(MouseEvent.CLICK,click);
         var _loc17_:UIComponent = new UIComponent();
         _loc17_.addChild(_loc16_);
         totalContainer.addChild(_loc17_);
      }
      
      private function gameWasteland() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_WASTELAND);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn8_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "XH";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      private function fixRankDataServer(param1:Object) : Array
      {
         var _loc4_:Number = NaN;
         var _loc2_:Array = param1 as Array;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = Number(_loc2_[_loc3_]["serverId"]);
            _loc2_[_loc3_]["server"] = SERVER_ID_NAME[_loc4_];
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function openCubeGamePanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CUBEMASTER);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function set perTotalCrossRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1794723803perTotalCrossRank;
         if(_loc2_ !== param1)
         {
            this._1794723803perTotalCrossRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perTotalCrossRank",_loc2_,param1));
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn16_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tên";
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton12_click(param1:MouseEvent) : void
      {
         getAnniAward(6);
      }
      
      public function ___AnniversaryPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         getAnniAward(1);
      }
      
      private function gameHorseRace() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_HORSE_RACE);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      private function _AnniversaryPanel_DataGridColumn7_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Điểm";
         _loc1_.dataField = "score";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank6Slot2() : ItemSlot
      {
         return this._378049162rank6Slot2;
      }
      
      private function _AnniversaryPanel_DataGridColumn15_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Sv";
         _loc1_.dataField = "server";
         _loc1_.width = 70;
         return _loc1_;
      }
      
      private function getAnniRes() : void
      {
         var _loc1_:LoaderContext = null;
         if(!loader)
         {
            loader = new Loader();
            _loc1_ = new LoaderContext();
            _loc1_.applicationDomain = ApplicationDomain.currentDomain;
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            loader.load(new URLRequest(ResManager.getResUrl(2080130106015)),_loc1_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank3Slot5() : ItemSlot
      {
         return this._292161712rank3Slot5;
      }
      
      public function set rank4Slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._320790861rank4Slot3;
         if(_loc2_ !== param1)
         {
            this._320790861rank4Slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank4Slot3",_loc2_,param1));
         }
      }
      
      public function ___AnniversaryPanel_BasicDelayButton7_click(param1:MouseEvent) : void
      {
         getRankByType(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get rank3Slot3() : ItemSlot
      {
         return this._292161710rank3Slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank3Slot4() : ItemSlot
      {
         return this._292161711rank3Slot4;
      }
      
      public function set rank4Slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._320790859rank4Slot1;
         if(_loc2_ !== param1)
         {
            this._320790859rank4Slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank4Slot1",_loc2_,param1));
         }
      }
      
      public function set rank4Slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._320790862rank4Slot4;
         if(_loc2_ !== param1)
         {
            this._320790862rank4Slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank4Slot4",_loc2_,param1));
         }
      }
      
      public function set rank4Slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._320790863rank4Slot5;
         if(_loc2_ !== param1)
         {
            this._320790863rank4Slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank4Slot5",_loc2_,param1));
         }
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" stone master load res Error ");
      }
      
      private function _AnniversaryPanel_DataGridColumn6_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tên";
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      private function _AnniversaryPanel_DataGridColumn14_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "XH Sv";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      public function set rank1Slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._234903406rank1Slot1;
         if(_loc2_ !== param1)
         {
            this._234903406rank1Slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank1Slot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank6Slot1() : ItemSlot
      {
         return this._378049161rank6Slot1;
      }
      
      public function set rank1Slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._234903407rank1Slot2;
         if(_loc2_ !== param1)
         {
            this._234903407rank1Slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank1Slot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank6Slot3() : ItemSlot
      {
         return this._378049163rank6Slot3;
      }
      
      public function set rank1Slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._234903408rank1Slot3;
         if(_loc2_ !== param1)
         {
            this._234903408rank1Slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank1Slot3",_loc2_,param1));
         }
      }
      
      public function set rank1Slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._234903409rank1Slot4;
         if(_loc2_ !== param1)
         {
            this._234903409rank1Slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank1Slot4",_loc2_,param1));
         }
      }
      
      public function set rank1Slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._234903410rank1Slot5;
         if(_loc2_ !== param1)
         {
            this._234903410rank1Slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank1Slot5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank3Slot1() : ItemSlot
      {
         return this._292161708rank3Slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank3Slot2() : ItemSlot
      {
         return this._292161709rank3Slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get perRank() : DataGrid
      {
         return this._679437591perRank;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton4_click(param1:MouseEvent) : void
      {
         getAnniAward(2);
      }
      
      public function set rank4Slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._320790860rank4Slot2;
         if(_loc2_ !== param1)
         {
            this._320790860rank4Slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank4Slot2",_loc2_,param1));
         }
      }
      
      private function gameThreeDiabetes() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_DIABETES);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank6Slot5() : ItemSlot
      {
         return this._378049165rank6Slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get perTotalRank() : DataGrid
      {
         return this._967817459perTotalRank;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank6Slot4() : ItemSlot
      {
         return this._378049164rank6Slot4;
      }
      
      private function openSudokuPanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SUDOKU);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function set pageTab(param1:HButtonTab) : void
      {
         var _loc2_:Object = this._803559802pageTab;
         if(_loc2_ !== param1)
         {
            this._803559802pageTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverCrossRank() : DataGrid
      {
         return this._1913215863serverCrossRank;
      }
      
      public function set rank6Slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._378049161rank6Slot1;
         if(_loc2_ !== param1)
         {
            this._378049161rank6Slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank6Slot1",_loc2_,param1));
         }
      }
      
      public function set rank6Slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._378049162rank6Slot2;
         if(_loc2_ !== param1)
         {
            this._378049162rank6Slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank6Slot2",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         visible = true;
         getAnniRes();
      }
      
      public function set rank6Slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._378049165rank6Slot5;
         if(_loc2_ !== param1)
         {
            this._378049165rank6Slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank6Slot5",_loc2_,param1));
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn5_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Sv";
         _loc1_.dataField = "server";
         _loc1_.width = 70;
         return _loc1_;
      }
      
      public function onUpdateRankByType(param1:Object) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         if(param1)
         {
            _loc2_ = uint(Number(param1["type"]));
            _loc3_ = param1["rank"];
            switch(_loc2_)
            {
               case 1:
                  perRank.dataProvider = _loc3_;
                  break;
               case 2:
                  perCrossRank.dataProvider = fixRankData(_loc3_);
                  break;
               case 3:
                  serverCrossRank.dataProvider = fixRankDataServer(_loc3_);
                  break;
               case 4:
                  perTotalRank.dataProvider = _loc3_;
                  break;
               case 5:
                  perTotalCrossRank.dataProvider = fixRankData(_loc3_);
                  break;
               case 6:
                  totalCrossRank.dataProvider = fixRankDataServer(_loc3_);
            }
         }
      }
      
      private function initSlot() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:ItemSlot = null;
         var _loc1_:uint = 1;
         while(_loc1_ <= 6)
         {
            _loc2_ = 1;
            while(_loc2_ <= 5)
            {
               _loc3_ = this["rank" + _loc1_ + "Slot" + _loc2_] as ItemSlot;
               _loc3_.clean();
               _loc3_.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc3_.giid = AnniScoreAwardConfig[_loc1_ - 1][_loc2_ - 1];
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function ___AnniversaryPanel_BasicDelayButton9_click(param1:MouseEvent) : void
      {
         getRankByType(5);
      }
      
      private function _AnniversaryPanel_DataGridColumn13_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tích lũy";
         _loc1_.dataField = "score";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      private function fixRankData(param1:Object) : Array
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc2_:Array = param1 as Array;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = Number(_loc2_[_loc3_]["cid"]);
            _loc5_ = Math.floor(_loc4_ / 100000000);
            _loc6_ = _loc4_ % 100000000;
            _loc2_[_loc3_]["server"] = SERVER_ID_NAME[_loc5_];
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton11_click(param1:MouseEvent) : void
      {
         getRankByType(6);
      }
      
      private function openStoneGamePanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_STONEMASTER);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function set rank6Slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._378049163rank6Slot3;
         if(_loc2_ !== param1)
         {
            this._378049163rank6Slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank6Slot3",_loc2_,param1));
         }
      }
      
      public function ___AnniversaryPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         getRankByType(1);
      }
      
      public function set totalContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._409271709totalContainer;
         if(_loc2_ !== param1)
         {
            this._409271709totalContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalContainer",_loc2_,param1));
         }
      }
      
      public function set rank6Slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._378049164rank6Slot4;
         if(_loc2_ !== param1)
         {
            this._378049164rank6Slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank6Slot4",_loc2_,param1));
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn4_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Toàn Sv";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank4Slot2() : ItemSlot
      {
         return this._320790860rank4Slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank4Slot4() : ItemSlot
      {
         return this._320790862rank4Slot4;
      }
      
      private function _AnniversaryPanel_DataGridColumn12_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tên";
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      public function set rank3Slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._292161708rank3Slot1;
         if(_loc2_ !== param1)
         {
            this._292161708rank3Slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank3Slot1",_loc2_,param1));
         }
      }
      
      public function set rank3Slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._292161712rank3Slot5;
         if(_loc2_ !== param1)
         {
            this._292161712rank3Slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank3Slot5",_loc2_,param1));
         }
      }
      
      public function set rank3Slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._292161709rank3Slot2;
         if(_loc2_ !== param1)
         {
            this._292161709rank3Slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank3Slot2",_loc2_,param1));
         }
      }
      
      public function set rank3Slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._292161711rank3Slot4;
         if(_loc2_ !== param1)
         {
            this._292161711rank3Slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank3Slot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank4Slot5() : ItemSlot
      {
         return this._320790863rank4Slot5;
      }
      
      public function set totalCrossRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2077431384totalCrossRank;
         if(_loc2_ !== param1)
         {
            this._2077431384totalCrossRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalCrossRank",_loc2_,param1));
         }
      }
      
      public function set rank3Slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._292161710rank3Slot3;
         if(_loc2_ !== param1)
         {
            this._292161710rank3Slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank3Slot3",_loc2_,param1));
         }
      }
      
      public function ___AnniversaryPanel_BasicDelayButton6_click(param1:MouseEvent) : void
      {
         getAnniAward(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get rank1Slot1() : ItemSlot
      {
         return this._234903406rank1Slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank1Slot2() : ItemSlot
      {
         return this._234903407rank1Slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank1Slot3() : ItemSlot
      {
         return this._234903408rank1Slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank1Slot4() : ItemSlot
      {
         return this._234903409rank1Slot4;
      }
      
      public function getRankByType(param1:uint) : void
      {
         switch(param1)
         {
            case 1:
               _core.remote.call("updateAnniversaryRank",null,1);
               break;
            case 2:
               _core.remote.call("updateAnniPerRank",null,1);
               break;
            case 3:
               _core.remote.call("updateAnniversaryCrossRank",null,1);
               break;
            case 4:
               _core.remote.call("updateAnniversaryRank",null,2);
               break;
            case 5:
               _core.remote.call("updateAnniPerRank",null,2);
               break;
            case 6:
               _core.remote.call("updateAnniversaryCrossRank",null,2);
         }
      }
      
      public function set serverCrossRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1913215863serverCrossRank;
         if(_loc2_ !== param1)
         {
            this._1913215863serverCrossRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverCrossRank",_loc2_,param1));
         }
      }
      
      public function ___AnniversaryPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initSlot();
      }
      
      private function openFarmGamePanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_FARMMASTER);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank4Slot3() : ItemSlot
      {
         return this._320790861rank4Slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank1Slot5() : ItemSlot
      {
         return this._234903410rank1Slot5;
      }
      
      private function _AnniversaryPanel_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Cống hiến";
         _loc1_.dataField = "score";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      private function click(param1:Event) : void
      {
         var _loc2_:Object = param1.currentTarget;
         if(param1.currentTarget is subC1)
         {
            gameHorseRace();
         }
         else if(param1.currentTarget is subC2)
         {
            gameWasteland();
         }
         else if(param1.currentTarget is subC3)
         {
            gameThreeDiabetes();
         }
         else if(param1.currentTarget is subC4)
         {
            openFarmGamePanel();
         }
         else if(param1.currentTarget is subC5)
         {
            openStoneGamePanel();
         }
         else if(param1.currentTarget is subC6)
         {
            openCubeGamePanel();
         }
         else if(param1.currentTarget is subC7)
         {
            openSudokuPanel();
         }
         else if(param1.currentTarget is subC8)
         {
            openDuiduipengPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank4Slot1() : ItemSlot
      {
         return this._320790859rank4Slot1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AnniversaryPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AnniversaryPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AnniversaryPanelWatcherSetupUtil");
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
      
      private function openDuiduipengPanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_DUIDUIPENG);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn11_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "XH";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      private function _AnniversaryPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANNIVERSARY_LANG[0];
         _loc1_ = ResManager.getIconUrl(4130220000723);
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.ANNIVERSARY_LANG[2];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      [Bindable(event="propertyChange")]
      public function get totalCrossRank() : DataGrid
      {
         return this._2077431384totalCrossRank;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         getRankByType(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get totalContainer() : Canvas
      {
         return this._409271709totalContainer;
      }
      
      private function _AnniversaryPanel_DataGridColumn19_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Sv";
         _loc1_.dataField = "server";
         return _loc1_;
      }
      
      private function _AnniversaryPanel_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tên";
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      public function set perRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._679437591perRank;
         if(_loc2_ !== param1)
         {
            this._679437591perRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perRank",_loc2_,param1));
         }
      }
      
      public function set rank5Slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._349420010rank5Slot1;
         if(_loc2_ !== param1)
         {
            this._349420010rank5Slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank5Slot1",_loc2_,param1));
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn10_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Điểm";
         _loc1_.dataField = "score";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      public function set rank5Slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._349420011rank5Slot2;
         if(_loc2_ !== param1)
         {
            this._349420011rank5Slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank5Slot2",_loc2_,param1));
         }
      }
      
      public function set rank5Slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._349420012rank5Slot3;
         if(_loc2_ !== param1)
         {
            this._349420012rank5Slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank5Slot3",_loc2_,param1));
         }
      }
      
      public function set rank5Slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._349420014rank5Slot5;
         if(_loc2_ !== param1)
         {
            this._349420014rank5Slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank5Slot5",_loc2_,param1));
         }
      }
      
      public function set perCrossRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1352493073perCrossRank;
         if(_loc2_ !== param1)
         {
            this._1352493073perCrossRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perCrossRank",_loc2_,param1));
         }
      }
      
      private function getAnniAward(param1:uint) : void
      {
         switch(param1)
         {
            case 1:
            case 2:
            case 3:
               _core.remote.call("getAnniversaryAward",null,param1);
               break;
            case 4:
            case 5:
            case 6:
               _core.remote.call("getAnniversaryAwardFinal",null,param1 - 3);
         }
      }
      
      public function set rank5Slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._349420013rank5Slot4;
         if(_loc2_ !== param1)
         {
            this._349420013rank5Slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank5Slot4",_loc2_,param1));
         }
      }
      
      private function _AnniversaryPanel_DataGridColumn18_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "XH";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      public function set perTotalRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._967817459perTotalRank;
         if(_loc2_ !== param1)
         {
            this._967817459perTotalRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perTotalRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank5Slot2() : ItemSlot
      {
         return this._349420011rank5Slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get perCrossRank() : DataGrid
      {
         return this._1352493073perCrossRank;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank5Slot1() : ItemSlot
      {
         return this._349420010rank5Slot1;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton10_click(param1:MouseEvent) : void
      {
         getAnniAward(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get rank5Slot4() : ItemSlot
      {
         return this._349420013rank5Slot4;
      }
      
      public function ___AnniversaryPanel_BasicDelayButton8_click(param1:MouseEvent) : void
      {
         getAnniAward(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get rank5Slot3() : ItemSlot
      {
         return this._349420012rank5Slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank5Slot5() : ItemSlot
      {
         return this._349420014rank5Slot5;
      }
   }
}

