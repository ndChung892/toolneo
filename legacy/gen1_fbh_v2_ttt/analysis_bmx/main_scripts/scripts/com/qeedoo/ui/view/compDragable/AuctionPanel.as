package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.ButtonTree;
   import com.qeedoo.ui.view.comp.Currency;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotAuction;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PageableDataGrid;
   import com.qeedoo.ui.view.comp.RendererCurrency;
   import com.qeedoo.ui.view.comp.RendererCurrencyMax;
   import com.qeedoo.ui.view.comp.RendererItemSlot;
   import com.qeedoo.ui.view.comp.RendererLabel;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.NumericStepper;
   import mx.controls.RadioButton;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.DragSource;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Glow;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AuctionPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var TIMESPAN:Number = 5000;
      
      public var _AuctionPanel_Canvas1:Canvas;
      
      public var _AuctionPanel_Canvas4:Canvas;
      
      private var _289018751auctionTree:ButtonTree;
      
      private var myAuctionList:Object;
      
      private var response:Boolean = true;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var currentTreeIndex:int = 0;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _1656583354levelHigh:TextInput;
      
      private var _565654093searchCanva:Canvas;
      
      private var _207684226glowEffect:Glow;
      
      private var _core:Core = Core.getInstance();
      
      private var _114581tab:ViewStack;
      
      private var _905190219moneyMaxCurrency:Currency;
      
      private var dataBuffer:Object = {};
      
      public var _AuctionPanel_DataGridColumn2:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn3:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn4:DataGridColumn;
      
      public var _AuctionPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _AuctionPanel_DataGridColumn6:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn7:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn8:DataGridColumn;
      
      private var _pageSize:uint = 30;
      
      public var _AuctionPanel_DataGridColumn5:DataGridColumn;
      
      public var _AuctionPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton8:BasicTxtButton;
      
      private var _289027152auctionTime:NumericStepper;
      
      public var _AuctionPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _858962330pageCtrl:PageSelector;
      
      private var _1177331774itemName:TextInput;
      
      private var _286697229costMoney:Currency;
      
      private var _289344522auctionItem:ItemSlotAuction;
      
      public var _AuctionPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _AuctionPanel_BasicGlowButton2:BasicGlowButton;
      
      public var _AuctionPanel_BasicGlowButton4:BasicGlowButton;
      
      public var _AuctionPanel_BasicGlowButton5:BasicGlowButton;
      
      public var _AuctionPanel_BasicGlowButton6:BasicGlowButton;
      
      public var _AuctionPanel_BasicGlowButton7:BasicGlowButton;
      
      private var resultAC:ArrayCollection;
      
      private var _2131644112levelLow:TextInput;
      
      private var _947882863goldCurrency:Currency;
      
      private var _109408723moneyRadioButton:RadioButton;
      
      public var _AuctionPanel_DataGridColumn11:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn14:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn15:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn16:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn10:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn12:DataGridColumn;
      
      public var _AuctionPanel_DataGridColumn13:DataGridColumn;
      
      private var _603490777myAuctionDataGrid:DataGrid;
      
      private var _2039330033moneyCurrency:Currency;
      
      public var _AuctionPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _AuctionPanel_BasicTxtButton12:BasicTxtButton;
      
      private var myAuctionAC:ArrayCollection;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _599930547resultDataGrid:PageableDataGrid;
      
      mx_internal var _watchers:Array = [];
      
      private var _365389062searchButton:BasicGlowButton;
      
      private var _1177533677itemType:BoxLabel;
      
      private var _1242201835goldMaxCurrency:Currency;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var npcId:int = -1;
      
      private var lastSearch:Number = new Date().getTime();
      
      private var _currentPage:uint = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _446420339goldRadioButton:RadioButton;
      
      private var _1116570670bidCurrency:Currency;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":445,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AuctionPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tab",
                  "events":{"mouseDown":"__tab_mouseDown"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "y":60,
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_AuctionPanel_Canvas1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"searchCanva",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":370,
                                          "styleName":"CanvasBorder",
                                          "y":0,
                                          "width":670,
                                          "x":15,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ButtonTree,
                                             "id":"auctionTree",
                                             "events":{
                                                "change":"__auctionTree_change",
                                                "itemClick":"__auctionTree_itemClick"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":143,
                                                   "x":5,
                                                   "height":235,
                                                   "y":4
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
                                                   "x":155,
                                                   "y":10,
                                                   "height":315,
                                                   "width":507,
                                                   "styleName":"RoundedGradientBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":PageableDataGrid,
                                                      "id":"resultDataGrid",
                                                      "events":{"change":"__resultDataGrid_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalAlign = "middle";
                                                         this.alternatingItemColors = [16777215,16777215];
                                                         this.useRollOver = false;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "columns":[_AuctionPanel_DataGridColumn1_c(),_AuctionPanel_DataGridColumn2_i(),_AuctionPanel_DataGridColumn3_i(),_AuctionPanel_DataGridColumn4_i(),_AuctionPanel_DataGridColumn5_i(),_AuctionPanel_DataGridColumn6_i(),_AuctionPanel_DataGridColumn7_i(),_AuctionPanel_DataGridColumn8_i()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Currency,
                                             "id":"bidCurrency",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "13";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "inputEnabled":true,
                                                   "x":417,
                                                   "width":87.95
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_AuctionPanel_BasicGlowButton1",
                                             "events":{"click":"___AuctionPanel_BasicGlowButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "13";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":514,
                                                   "styleName":"LastPage",
                                                   "width":69
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_AuctionPanel_BasicGlowButton2",
                                             "events":{"click":"___AuctionPanel_BasicGlowButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "13";
                                                this.right = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"LastPage",
                                                   "width":69
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"itemType",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":247,
                                                   "width":90,
                                                   "x":63
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextInput,
                                             "id":"itemName",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.cornerRadius = 0;
                                                this.color = 16777215;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":274,
                                                   "width":90,
                                                   "x":63,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextInput,
                                             "id":"levelLow",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.cornerRadius = 0;
                                                this.color = 16777215;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":63,
                                                   "y":301,
                                                   "width":29,
                                                   "restrict":"0-9",
                                                   "maxChars":3,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextInput,
                                             "id":"levelHigh",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.cornerRadius = 0;
                                                this.color = 16777215;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":301,
                                                   "width":30,
                                                   "restrict":"0-9",
                                                   "maxChars":3,
                                                   "height":20,
                                                   "x":115
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"searchButton",
                                             "events":{"click":"__searchButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "13";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "styleName":"LastPage",
                                                   "width":69
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":250,
                                                   "height":18,
                                                   "width":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":276,
                                                   "height":18,
                                                   "width":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":301,
                                                   "height":18,
                                                   "width":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelector,
                                             "id":"pageCtrl",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "13";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "onPageChanged":pageRefresh,
                                                   "x":253
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
                           "id":"_AuctionPanel_Canvas4",
                           "events":{"creationComplete":"___AuctionPanel_Canvas4_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":670,
                                          "height":370,
                                          "styleName":"CanvasBorder",
                                          "x":15,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlotAuction,
                                             "id":"auctionItem",
                                             "events":{"doubleClick":"__auctionItem_doubleClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":63.699997,
                                                   "y":14.95,
                                                   "movable":false,
                                                   "doubleClickEnabled":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RadioButton,
                                             "id":"moneyRadioButton",
                                             "events":{"click":"__moneyRadioButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "groupName":"selectRadioButton",
                                                   "y":58,
                                                   "selected":true,
                                                   "width":68,
                                                   "label":"　　　",
                                                   "x":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Currency,
                                             "id":"moneyCurrency",
                                             "stylesFactory":function():void
                                             {
                                                this.disabledOverlayAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "minValue":1,
                                                   "value":1,
                                                   "inputEnabled":true,
                                                   "y":80,
                                                   "width":83,
                                                   "x":66,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Currency,
                                             "id":"moneyMaxCurrency",
                                             "stylesFactory":function():void
                                             {
                                                this.disabledOverlayAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "inputEnabled":true,
                                                   "y":102,
                                                   "height":20,
                                                   "width":83,
                                                   "x":66
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RadioButton,
                                             "id":"goldRadioButton",
                                             "events":{"click":"__goldRadioButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "groupName":"selectRadioButton",
                                                   "y":135,
                                                   "width":68,
                                                   "label":"　　　",
                                                   "x":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Currency,
                                             "id":"goldCurrency",
                                             "stylesFactory":function():void
                                             {
                                                this.disabledOverlayAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":157,
                                                   "minValue":1,
                                                   "value":0,
                                                   "inputEnabled":true,
                                                   "enabled":false,
                                                   "height":20,
                                                   "width":83,
                                                   "x":66
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Currency,
                                             "id":"goldMaxCurrency",
                                             "stylesFactory":function():void
                                             {
                                                this.disabledOverlayAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":178,
                                                   "inputEnabled":true,
                                                   "enabled":false,
                                                   "height":20,
                                                   "width":83,
                                                   "x":66
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"auctionTime",
                                             "events":{"change":"__auctionTime_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":68,
                                                   "y":219,
                                                   "stepSize":1,
                                                   "value":24,
                                                   "maximum":48,
                                                   "width":40,
                                                   "height":21
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Currency,
                                             "id":"costMoney",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":244,
                                                   "height":20,
                                                   "width":76,
                                                   "x":68
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_AuctionPanel_BasicGlowButton4",
                                             "events":{"click":"___AuctionPanel_BasicGlowButton4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdOrg",
                                                   "width":61.7,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_AuctionPanel_BasicGlowButton5",
                                             "events":{"click":"___AuctionPanel_BasicGlowButton5_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":79.7,
                                                   "styleName":"BtnStdGreen",
                                                   "width":61.7
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":155,
                                                   "y":10,
                                                   "height":315,
                                                   "width":507,
                                                   "styleName":"RoundedGradientBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"myAuctionDataGrid",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalAlign = "middle";
                                                         this.alternatingItemColors = [16777215,16777215];
                                                         this.useRollOver = false;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "height":299,
                                                            "width":491,
                                                            "x":8,
                                                            "y":8,
                                                            "columns":[_AuctionPanel_DataGridColumn9_c(),_AuctionPanel_DataGridColumn10_i(),_AuctionPanel_DataGridColumn11_i(),_AuctionPanel_DataGridColumn12_i(),_AuctionPanel_DataGridColumn13_i(),_AuctionPanel_DataGridColumn14_i(),_AuctionPanel_DataGridColumn15_i(),_AuctionPanel_DataGridColumn16_i()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_AuctionPanel_BasicGlowButton6",
                                             "events":{"click":"___AuctionPanel_BasicGlowButton6_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.right = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdBlue",
                                                   "width":77.8
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":83,
                                                   "y":58,
                                                   "height":18,
                                                   "width":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":82,
                                                   "height":18,
                                                   "width":53
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton6",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":104,
                                                   "height":18,
                                                   "width":53
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":83,
                                                   "y":135,
                                                   "height":18,
                                                   "width":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton8",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":157,
                                                   "height":18,
                                                   "width":53
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton9",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":179,
                                                   "height":18,
                                                   "width":53
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton10",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":221,
                                                   "height":18,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton11",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":244,
                                                   "height":18,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_AuctionPanel_BasicTxtButton12",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":113,
                                                   "y":221,
                                                   "height":18,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_AuctionPanel_BasicGlowButton7",
                                             "events":{"click":"___AuctionPanel_BasicGlowButton7_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "45";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdOrg",
                                                   "width":61.7,
                                                   "x":10
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
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "enabled":true,
                        "selected":true,
                        "width":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":85,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":60,
                        "height":21
                     };
                  }
               })]
            };
         }
      });
      
      public function AuctionPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 445;
         this.styleName = "StandardContent";
         _AuctionPanel_Glow1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AuctionPanel._watcherSetupUtil = param1;
      }
      
      private function colorSortFunc(param1:Object, param2:Object) : int
      {
         if(Boolean(param1) && Boolean(param2))
         {
            if(param1.color < param2.color)
            {
               return -1;
            }
            if(param1.color > param2.color)
            {
               return 1;
            }
            if(param1.color == param2.color)
            {
               if(param1.name < param2.name)
               {
                  return -1;
               }
               if(param1.name > param2.name)
               {
                  return 1;
               }
               return 0;
            }
         }
         return 0;
      }
      
      private function _AuctionPanel_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererLabel;
         return _loc1_;
      }
      
      private function _AuctionPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn10 = _loc1_;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory6_c();
         _loc1_.width = 80;
         _loc1_.sortCompareFunction = colorSortFunc;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn10",_AuctionPanel_DataGridColumn10);
         return _loc1_;
      }
      
      public function __auctionTree_itemClick(param1:ListEvent) : void
      {
         treeClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get auctionItem() : ItemSlotAuction
      {
         return this._289344522auctionItem;
      }
      
      public function ___AuctionPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         clearAuctionView();
      }
      
      [Bindable(event="propertyChange")]
      public function get myAuctionDataGrid() : DataGrid
      {
         return this._603490777myAuctionDataGrid;
      }
      
      private function _AuctionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTitleCanvas1.text = param1;
         },"_AuctionPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_Canvas1.label = param1;
         },"_AuctionPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():PageSelector
         {
            return pageCtrl;
         },function(param1:PageSelector):void
         {
            resultDataGrid.pageSelector = param1;
         },"resultDataGrid.pageSelector");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn2.headerText = param1;
         },"_AuctionPanel_DataGridColumn2.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn3.headerText = param1;
         },"_AuctionPanel_DataGridColumn3.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn4.headerText = param1;
         },"_AuctionPanel_DataGridColumn4.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn5.headerText = param1;
         },"_AuctionPanel_DataGridColumn5.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn6.headerText = param1;
         },"_AuctionPanel_DataGridColumn6.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn7.headerText = param1;
         },"_AuctionPanel_DataGridColumn7.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn8.headerText = param1;
         },"_AuctionPanel_DataGridColumn8.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicGlowButton1.label = param1;
         },"_AuctionPanel_BasicGlowButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicGlowButton2.label = param1;
         },"_AuctionPanel_BasicGlowButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            searchButton.label = param1;
         },"searchButton.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton1.label = param1;
         },"_AuctionPanel_BasicTxtButton1.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton2.label = param1;
         },"_AuctionPanel_BasicTxtButton2.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton3.label = param1;
         },"_AuctionPanel_BasicTxtButton3.label");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return _pageSize;
         },function(param1:int):void
         {
            pageCtrl.pageSize = param1;
         },"pageCtrl.pageSize");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_Canvas4.label = param1;
         },"_AuctionPanel_Canvas4.label");
         result[17] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            moneyCurrency.type = param1;
         },"moneyCurrency.type");
         result[18] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            moneyMaxCurrency.type = param1;
         },"moneyMaxCurrency.type");
         result[19] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            goldCurrency.type = param1;
         },"goldCurrency.type");
         result[20] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            goldMaxCurrency.type = param1;
         },"goldMaxCurrency.type");
         result[21] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEYALL;
         },function(param1:uint):void
         {
            costMoney.type = param1;
         },"costMoney.type");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicGlowButton4.label = param1;
         },"_AuctionPanel_BasicGlowButton4.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicGlowButton5.label = param1;
         },"_AuctionPanel_BasicGlowButton5.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn10.headerText = param1;
         },"_AuctionPanel_DataGridColumn10.headerText");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn11.headerText = param1;
         },"_AuctionPanel_DataGridColumn11.headerText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn12.headerText = param1;
         },"_AuctionPanel_DataGridColumn12.headerText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn13.headerText = param1;
         },"_AuctionPanel_DataGridColumn13.headerText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn14.headerText = param1;
         },"_AuctionPanel_DataGridColumn14.headerText");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn15.headerText = param1;
         },"_AuctionPanel_DataGridColumn15.headerText");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_S[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_DataGridColumn16.headerText = param1;
         },"_AuctionPanel_DataGridColumn16.headerText");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicGlowButton6.label = param1;
         },"_AuctionPanel_BasicGlowButton6.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton4.label = param1;
         },"_AuctionPanel_BasicTxtButton4.label");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton5.label = param1;
         },"_AuctionPanel_BasicTxtButton5.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton6.label = param1;
         },"_AuctionPanel_BasicTxtButton6.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton7.label = param1;
         },"_AuctionPanel_BasicTxtButton7.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton8.label = param1;
         },"_AuctionPanel_BasicTxtButton8.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton9.label = param1;
         },"_AuctionPanel_BasicTxtButton9.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton10.label = param1;
         },"_AuctionPanel_BasicTxtButton10.label");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton11.label = param1;
         },"_AuctionPanel_BasicTxtButton11.label");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicTxtButton12.label = param1;
         },"_AuctionPanel_BasicTxtButton12.label");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AuctionPanel_BasicGlowButton7.label = param1;
         },"_AuctionPanel_BasicGlowButton7.label");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Number(_core.player.pmLevel) >= 3;
         },function(param1:Boolean):void
         {
            _AuctionPanel_BasicGlowButton7.visible = param1;
         },"_AuctionPanel_BasicGlowButton7.visible");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[45] = binding;
         return result;
      }
      
      public function set goldMaxCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._1242201835goldMaxCurrency;
         if(_loc2_ !== param1)
         {
            this._1242201835goldMaxCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldMaxCurrency",_loc2_,param1));
         }
      }
      
      public function onAuctionSearch(param1:Object) : void
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:Object = null;
         var _loc10_:* = undefined;
         _core.view.hide(ViewManager.POPU_WAIT);
         var _loc2_:* = param1 && param1.arg;
         var _loc3_:* = param1 && param1.version;
         var _loc4_:* = param1 && param1.list;
         this.response = true;
         auctionTree.enabled = true;
         searchButton.enabled = true;
         if(param1 == null)
         {
            _core.sysMidNote(Language.AUCTIONPANEL_S[2]);
            return;
         }
         var _loc5_:Boolean = false;
         if(Number(_loc2_.type) > 0)
         {
            _loc5_ = Boolean(dataBuffer[_loc2_.kind]) && Boolean(dataBuffer[_loc2_.kind][_loc2_.type]) && _loc3_ <= dataBuffer[_loc2_.kind][_loc2_.type].version;
            if(_loc5_)
            {
               _loc4_ = dataBuffer[_loc2_.kind][_loc2_.type].data;
            }
            else
            {
               dataBuffer[_loc2_.kind][_loc2_.type] = {
                  "version":_loc3_,
                  "data":_loc4_
               };
            }
         }
         else
         {
            _loc5_ = Boolean(dataBuffer[_loc2_.kind]) && _loc3_ <= dataBuffer[_loc2_.kind].version;
            if(_loc5_)
            {
               _loc4_ = dataBuffer[_loc2_.kind].data;
            }
            else
            {
               dataBuffer[_loc2_.kind] = {
                  "version":_loc3_,
                  "data":_loc4_
               };
               _loc9_ = GamePredef.ITEM_KIND_TYPE[_loc2_.kind];
               for(_loc7_ in _loc9_)
               {
                  dataBuffer[_loc2_.kind][_loc7_] = {
                     "version":_loc3_,
                     "data":_loc4_
                  };
               }
            }
         }
         _loc6_ = {};
         for(_loc7_ in _loc4_)
         {
            _loc10_ = _loc4_[_loc7_];
            if(!(Number(_loc2_.type) > 0 && Number(_loc2_.type) != _loc10_.itemType))
            {
               if(!(Boolean(_loc2_.name) && Boolean(_loc2_.name != "") && _loc10_.name.indexOf(_loc2_.name) < 0))
               {
                  if(!(Number(_loc10_.itemKind) != GamePredef.ITEM_KIND_PET && _loc2_.levelLow > 0 && _loc10_.reqLevel < _loc2_.levelLow))
                  {
                     if(!(Number(_loc10_.itemKind) != GamePredef.ITEM_KIND_PET && _loc2_.levelHigh > 0 && _loc10_.reqLevel > _loc2_.levelHigh))
                     {
                        _loc6_[_loc7_] = _loc10_;
                     }
                  }
               }
            }
         }
         resultAC = new ArrayCollection();
         for each(_loc8_ in _loc6_)
         {
            if(_loc8_)
            {
               _loc8_.auctionType = Number(_loc8_.auctionType);
               _loc8_.nowMoney = Number(_loc8_.nowMoney);
               _loc8_.nowGold = Number(_loc8_.nowGold);
               _loc8_.maxMoney = Number(_loc8_.maxMoney);
               _loc8_.maxGold = Number(_loc8_.maxGold);
               _loc8_.itemKind = Number(_loc8_.itemKind);
               _loc8_.itemType = Number(_loc8_.itemType);
               resultAC.addItem(_loc8_);
            }
         }
         resultDataGrid.dataAll = resultAC;
         resultDataGrid.pageSelector = pageCtrl;
         pageCtrl.initPageSeletor(resultAC.length,_pageSize);
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyRadioButton() : RadioButton
      {
         return this._109408723moneyRadioButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get bidCurrency() : Currency
      {
         return this._1116570670bidCurrency;
      }
      
      private function selectResult() : void
      {
         if(resultDataGrid.selectedItem.auctionType == 1)
         {
            bidCurrency.type = Currency.TYPE_MONEY;
            bidCurrency.value = resultDataGrid.selectedItem.nowMoney - -GamePredef.AUCTION_BIDADD[0];
         }
         else if(resultDataGrid.selectedItem.auctionType == 2)
         {
            bidCurrency.type = Currency.TYPE_GOLD;
            bidCurrency.value = resultDataGrid.selectedItem.nowGold - -GamePredef.AUCTION_BIDADD[1];
         }
      }
      
      private function _AuctionPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "wn";
         _loc1_.showDataTips = false;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn6",_AuctionPanel_DataGridColumn6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemName() : TextInput
      {
         return this._1177331774itemName;
      }
      
      private function initPmAuc() : void
      {
         var _loc3_:* = undefined;
         var _loc1_:Array = GameData.d[GamePredef.TBL_PM_RIGHT];
         var _loc2_:Object = null;
         if(Boolean(_core.player.pmLevel) && Number(_core.player.pmLevel) >= 3)
         {
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PM_AUCTION);
            if(_loc3_)
            {
               _loc3_.initPmAucPanel();
            }
         }
      }
      
      public function ___AuctionPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         auctionBidMax();
      }
      
      public function set myAuctionDataGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._603490777myAuctionDataGrid;
         if(_loc2_ !== param1)
         {
            this._603490777myAuctionDataGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myAuctionDataGrid",_loc2_,param1));
         }
      }
      
      private function selectType() : void
      {
         if(moneyRadioButton.selected)
         {
            moneyCurrency.enabled = true;
            moneyMaxCurrency.enabled = true;
            goldCurrency.enabled = false;
            goldMaxCurrency.enabled = false;
            moneyCurrency.value = 1;
            moneyMaxCurrency.value = 0;
            goldCurrency.value = 0;
            goldMaxCurrency.value = 0;
         }
         else if(goldRadioButton.selected)
         {
            moneyCurrency.enabled = false;
            moneyMaxCurrency.enabled = false;
            goldCurrency.enabled = true;
            goldMaxCurrency.enabled = true;
            moneyCurrency.value = 0;
            moneyMaxCurrency.value = 0;
            goldCurrency.value = 1;
            goldMaxCurrency.value = 0;
         }
      }
      
      private function _AuctionPanel_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemSlot;
         return _loc1_;
      }
      
      public function set moneyRadioButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._109408723moneyRadioButton;
         if(_loc2_ !== param1)
         {
            this._109408723moneyRadioButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyRadioButton",_loc2_,param1));
         }
      }
      
      public function set levelLow(param1:TextInput) : void
      {
         var _loc2_:Object = this._2131644112levelLow;
         if(_loc2_ !== param1)
         {
            this._2131644112levelLow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLow",_loc2_,param1));
         }
      }
      
      public function set bidCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._1116570670bidCurrency;
         if(_loc2_ !== param1)
         {
            this._1116570670bidCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bidCurrency",_loc2_,param1));
         }
      }
      
      private function addAuction() : void
      {
         var _loc1_:Object = {};
         if(auctionItem.type == -1 || auctionItem.giid == -1)
         {
            Alert.show(Language.AUCTIONPANEL_S[3],"",Alert.OK);
            return;
         }
         if(moneyRadioButton.selected && goldRadioButton.selected || !moneyRadioButton.selected && !goldRadioButton.selected)
         {
            Alert.show(Language.AUCTIONPANEL_S[4] + GamePredef.CURRENCY_TIP[0] + Language.AUCTIONPANEL_S[5] + GamePredef.CURRENCY_TIP[1],"",Alert.OK);
            return;
         }
         if(moneyCurrency.value == 0 && moneyMaxCurrency.value == 0 && goldCurrency.value == 0 && goldMaxCurrency.value == 0 || (moneyCurrency.value < 0 || moneyMaxCurrency.value < 0 || goldCurrency.value < 0 || goldMaxCurrency.value < 0) || (moneyCurrency.value != 0 || moneyMaxCurrency.value != 0) && (goldCurrency.value != 0 || goldMaxCurrency.value != 0))
         {
            Alert.show(Language.AUCTIONPANEL_S[6],"",Alert.OK);
            return;
         }
         if(moneyCurrency.value > moneyMaxCurrency.value && moneyMaxCurrency.value != 0 || goldCurrency.value > goldMaxCurrency.value && goldMaxCurrency.value != 0)
         {
            Alert.show(Language.AUCTIONPANEL_S[37],"",Alert.OK);
            return;
         }
         if(auctionTime.value < GamePredef.AUCTION_TIME[0] || auctionTime.value > GamePredef.AUCTION_TIME[1])
         {
            Alert.show(Language.AUCTIONPANEL_S[7],"",Alert.OK);
            return;
         }
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,1))
         {
            if(costMoney.value > _core.player.moneyBind)
            {
               Alert.show(Language.AUCTIONPANEL_S[8] + GamePredef.CURRENCY_TIP[2] + "!","",Alert.OK);
               return;
            }
         }
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,2))
         {
            if(costMoney.value > _core.player.money)
            {
               Alert.show(Language.AUCTIONPANEL_S[9] + GamePredef.CURRENCY_TIP[0] + "!","",Alert.OK);
               return;
            }
         }
         if(moneyRadioButton.selected)
         {
            _loc1_.auctionType = 1;
         }
         else if(goldRadioButton.selected)
         {
            _loc1_.auctionType = 2;
         }
         if(auctionItem.type == GamePredef.TBL_PET)
         {
            _loc1_.slotId = -1;
            _loc1_.petId = auctionItem.giid;
            _loc1_.stackNum = 1;
         }
         else
         {
            if(!auctionItem.slotData)
            {
               return;
            }
            _loc1_.slotId = auctionItem.slotData.id;
            _loc1_.petId = -1;
            _loc1_.stackNum = auctionItem.stackNum;
         }
         _loc1_.type = auctionItem.type;
         _loc1_.itemId = auctionItem.giid;
         _loc1_.nowMoney = moneyCurrency.value;
         _loc1_.maxMoney = moneyMaxCurrency.value;
         _loc1_.nowGold = goldCurrency.value;
         _loc1_.maxGold = goldMaxCurrency.value;
         _loc1_.duration = auctionTime.value;
         _core.remote.addAuction(_loc1_);
         clearAuctionView();
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0,1);
      }
      
      private function _AuctionPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn5 = _loc1_;
         _loc1_.sortCompareFunction = priceMaxSortFunc;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory4_c();
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn5",_AuctionPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get auctionTree() : ButtonTree
      {
         return this._289018751auctionTree;
      }
      
      private function _AuctionPanel_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererCurrencyMax;
         return _loc1_;
      }
      
      public function set itemName(param1:TextInput) : void
      {
         var _loc2_:Object = this._1177331774itemName;
         if(_loc2_ !== param1)
         {
            this._1177331774itemName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemName",_loc2_,param1));
         }
      }
      
      public function set levelHigh(param1:TextInput) : void
      {
         var _loc2_:Object = this._1656583354levelHigh;
         if(_loc2_ !== param1)
         {
            this._1656583354levelHigh = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelHigh",_loc2_,param1));
         }
      }
      
      private function _AuctionPanel_DataGridColumn16_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn16 = _loc1_;
         _loc1_.width = 35;
         _loc1_.dataField = "lastTime";
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn16",_AuctionPanel_DataGridColumn16);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldCurrency() : Currency
      {
         return this._947882863goldCurrency;
      }
      
      private function createMyAuctionList() : void
      {
         var _loc1_:* = undefined;
         myAuctionAC = new ArrayCollection();
         for each(_loc1_ in myAuctionList)
         {
            if(_loc1_)
            {
               _loc1_.auctionType = Number(_loc1_.auctionType);
               _loc1_.nowMoney = Number(_loc1_.nowMoney);
               _loc1_.nowGold = Number(_loc1_.nowGold);
               _loc1_.maxMoney = Number(_loc1_.maxMoney);
               _loc1_.maxGold = Number(_loc1_.maxGold);
               _loc1_.itemKind = Number(_loc1_.itemKind);
               _loc1_.itemType = Number(_loc1_.itemType);
               myAuctionAC.addItem(_loc1_);
            }
         }
         myAuctionDataGrid.dataProvider = myAuctionAC;
      }
      
      public function set resultDataGrid(param1:PageableDataGrid) : void
      {
         var _loc2_:Object = this._599930547resultDataGrid;
         if(_loc2_ !== param1)
         {
            this._599930547resultDataGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resultDataGrid",_loc2_,param1));
         }
      }
      
      private function treeClick(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(!auctionTree.enabled)
         {
            return;
         }
         if(auctionTree.selectedItem.children)
         {
            if(auctionTree.selectedIndex == currentTreeIndex)
            {
               auctionTree.expandItem(auctionTree.selectedItem,!auctionTree.isItemOpen(auctionTree.selectedItem));
            }
            else
            {
               for each(_loc2_ in auctionTree.openItems)
               {
                  auctionTree.expandItem(_loc2_,false);
               }
               auctionTree.expandItem(auctionTree.selectedItem,!auctionTree.isItemOpen(auctionTree.selectedItem));
            }
            currentTreeIndex = auctionTree.selectedIndex;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goldRadioButton() : RadioButton
      {
         return this._446420339goldRadioButton;
      }
      
      public function ___AuctionPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         initPmAuc();
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyMaxCurrency() : Currency
      {
         return this._905190219moneyMaxCurrency;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function _AuctionPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn4 = _loc1_;
         _loc1_.sortCompareFunction = priceSortFunc;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn4",_AuctionPanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function createTree() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:ArrayCollection = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:* = undefined;
         var _loc1_:Object = GamePredef.ITEM_KIND_TYPE;
         var _loc2_:ArrayCollection = new ArrayCollection();
         var _loc3_:Object = {};
         for(_loc4_ in _loc1_)
         {
            _loc3_[_loc4_] = new ArrayCollection();
            for(_loc9_ in _loc1_[_loc4_])
            {
               _loc3_[_loc4_].addItem({
                  "label":GamePredef.ITEM_TYPE_NAME[_loc9_],
                  "kind":_loc4_,
                  "type":_loc9_
               });
            }
            _loc2_.addItem({
               "label":GamePredef.ITEM_KIND_NAME[_loc4_],
               "kind":_loc4_,
               "children":_loc3_[_loc4_]
            });
         }
         _loc5_ = new ArrayCollection();
         _loc7_ = _loc6_ = 4;
         while(_loc7_ < _loc2_.length)
         {
            _loc5_.addItem(_loc2_.getItemAt(_loc7_));
            _loc7_++;
         }
         var _loc8_:int = 0;
         while(_loc8_ < 4)
         {
            _loc5_.addItem(_loc2_.getItemAt(_loc8_));
            _loc8_++;
         }
         auctionTree.dataProvider = _loc5_;
         auctionTime.minimum = GamePredef.AUCTION_TIME[0];
         auctionTime.maximum = GamePredef.AUCTION_TIME[1];
         moneyCurrency.addEventListener(Event.CHANGE,setCostMoney);
         moneyMaxCurrency.addEventListener(Event.CHANGE,setCostMoney);
         goldCurrency.addEventListener(Event.CHANGE,setCostMoney);
         goldMaxCurrency.addEventListener(Event.CHANGE,setCostMoney);
         tab.selectedIndex = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      private function _AuctionPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererCurrency;
         return _loc1_;
      }
      
      private function setCostMoney(param1:Event = null) : void
      {
         costMoney.value = Math.round((moneyCurrency.value + moneyMaxCurrency.value) / 2 * GamePredef.AUCTION_COSTPERCENT[0] / 100 + (goldCurrency.value + goldMaxCurrency.value) / 2 * GamePredef.AUCTION_COSTPERCENT[1] / 100 + auctionTime.value * GamePredef.AUCTION_TIMENUM);
      }
      
      public function ___AuctionPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         addAuction();
      }
      
      private function checkSearch() : Boolean
      {
         var _loc1_:Number = new Date().getTime();
         var _loc2_:Number = _loc1_ - this.lastSearch;
         if(_loc2_ >= AuctionPanel.TIMESPAN)
         {
            this.lastSearch = _loc1_;
            this.response = true;
            return true;
         }
         return false;
      }
      
      private function _AuctionPanel_DataGridColumn15_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn15 = _loc1_;
         _loc1_.dataField = "pn";
         _loc1_.showDataTips = true;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn15",_AuctionPanel_DataGridColumn15);
         return _loc1_;
      }
      
      public function __moneyRadioButton_click(param1:MouseEvent) : void
      {
         selectType();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:* = undefined;
         super.visible = param1;
         if(param1 == false)
         {
            clearAuctionView();
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PM_AUCTION);
            if(Boolean(_loc2_) && Boolean(_loc2_.visible))
            {
               return;
            }
            _core.remote.closeAuction();
         }
         else
         {
            searchCanva.enabled = true;
         }
      }
      
      public function __tab_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get itemType() : BoxLabel
      {
         return this._1177533677itemType;
      }
      
      private function treeChange(param1:Event) : void
      {
         if(auctionTree.selectedItem.type != undefined)
         {
            itemType.text = GamePredef.ITEM_KIND_NAME[auctionTree.selectedItem.kind] + "-" + GamePredef.ITEM_TYPE_NAME[auctionTree.selectedItem.type];
         }
         else
         {
            itemType.text = GamePredef.ITEM_KIND_NAME[auctionTree.selectedItem.kind];
         }
         if(!glowEffect.isPlaying)
         {
            glowEffect.play([searchButton]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyCurrency() : Currency
      {
         return this._2039330033moneyCurrency;
      }
      
      public function onDelAuction(param1:Number) : void
      {
         var _loc2_:* = undefined;
         if(myAuctionList)
         {
            delete myAuctionList[param1];
            for each(_loc2_ in myAuctionAC)
            {
               if(_loc2_.id == param1)
               {
                  myAuctionAC.removeItemAt(myAuctionAC.getItemIndex(_loc2_));
               }
            }
         }
      }
      
      private function _AuctionPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "stackNum";
         _loc1_.width = 35;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn3",_AuctionPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function onAuctionBid(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1.flag)
         {
            _core.sysMidNote(param1.info);
            if(visible)
            {
               for each(_loc2_ in resultAC)
               {
                  if(_loc2_.id == param1.auctionData.id)
                  {
                     resultAC.setItemAt(param1.auctionData,resultAC.getItemIndex(_loc2_));
                  }
               }
            }
         }
         else
         {
            _core.sysMidNote(param1.info);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costMoney() : Currency
      {
         return this._286697229costMoney;
      }
      
      private function clearAuctionView() : void
      {
         var _loc1_:* = undefined;
         if(!auctionItem)
         {
            return;
         }
         if(auctionItem.slotData)
         {
            _core.view.getUI(ViewManager.PANEL_BAG).updateView();
         }
         auctionItem.clean();
         moneyRadioButton.selected = true;
         moneyCurrency.enabled = true;
         moneyMaxCurrency.enabled = true;
         goldCurrency.enabled = false;
         goldMaxCurrency.enabled = false;
         moneyCurrency.value = 1;
         moneyMaxCurrency.value = 0;
         goldCurrency.value = 0;
         goldMaxCurrency.value = 0;
         costMoney.value = 0;
         bidCurrency.type = Currency.TYPE_MONEY;
         bidCurrency.value = 0;
         resultDataGrid.dataProvider = new ArrayCollection();
         resultDataGrid.dataAll = new ArrayCollection();
         resultAC = new ArrayCollection();
         pageCtrl.initPageSeletor(resultAC.length,_pageSize);
         auctionTree.selectedItem = null;
         auctionTree.enabled = true;
         for each(_loc1_ in auctionTree.openItems)
         {
            auctionTree.expandItem(_loc1_,false);
         }
         itemType.text = "";
         itemName.text = "";
         levelLow.text = "";
         levelHigh.text = "";
         searchButton.enabled = true;
         glowEffect.end();
         searchButton.filters = [];
      }
      
      [Bindable(event="propertyChange")]
      public function get searchButton() : BasicGlowButton
      {
         return this._365389062searchButton;
      }
      
      public function __resultDataGrid_change(param1:ListEvent) : void
      {
         selectResult();
      }
      
      private function _AuctionPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererLabel;
         return _loc1_;
      }
      
      public function __auctionTime_change(param1:NumericStepperEvent) : void
      {
         setCostMoney();
      }
      
      public function set auctionTree(param1:ButtonTree) : void
      {
         var _loc2_:Object = this._289018751auctionTree;
         if(_loc2_ !== param1)
         {
            this._289018751auctionTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auctionTree",_loc2_,param1));
         }
      }
      
      public function set glowEffect(param1:Glow) : void
      {
         var _loc2_:Object = this._207684226glowEffect;
         if(_loc2_ !== param1)
         {
            this._207684226glowEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glowEffect",_loc2_,param1));
         }
      }
      
      public function __auctionTree_change(param1:ListEvent) : void
      {
         treeChange(param1);
      }
      
      private function _AuctionPanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn14 = _loc1_;
         _loc1_.dataField = "wn";
         _loc1_.showDataTips = false;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn14",_AuctionPanel_DataGridColumn14);
         return _loc1_;
      }
      
      public function ___AuctionPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         auctionBid();
      }
      
      [Bindable(event="propertyChange")]
      public function get goldMaxCurrency() : Currency
      {
         return this._1242201835goldMaxCurrency;
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
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function ___AuctionPanel_Canvas4_creationComplete(param1:FlexEvent) : void
      {
         createTree();
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLow() : TextInput
      {
         return this._2131644112levelLow;
      }
      
      public function set goldCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._947882863goldCurrency;
         if(_loc2_ !== param1)
         {
            this._947882863goldCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldCurrency",_loc2_,param1));
         }
      }
      
      public function set goldRadioButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._446420339goldRadioButton;
         if(_loc2_ !== param1)
         {
            this._446420339goldRadioButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldRadioButton",_loc2_,param1));
         }
      }
      
      public function set pageCtrl(param1:PageSelector) : void
      {
         var _loc2_:Object = this._858962330pageCtrl;
         if(_loc2_ !== param1)
         {
            this._858962330pageCtrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageCtrl",_loc2_,param1));
         }
      }
      
      private function _AuctionPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn2 = _loc1_;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory2_c();
         _loc1_.width = 80;
         _loc1_.sortCompareFunction = colorSortFunc;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn2",_AuctionPanel_DataGridColumn2);
         return _loc1_;
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
      
      private function _AuctionPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemSlot;
         return _loc1_;
      }
      
      private function _AuctionPanel_Glow1_i() : Glow
      {
         var _loc1_:Glow = new Glow();
         glowEffect = _loc1_;
         _loc1_.repeatCount = 10000;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 1;
         _loc1_.blurXFrom = 0;
         _loc1_.blurXTo = 10;
         _loc1_.blurYFrom = 0;
         _loc1_.blurYTo = 10;
         _loc1_.color = 16135947;
         return _loc1_;
      }
      
      private function tabBtnClick(param1:int, param2:int) : void
      {
         tab.selectedIndex = param1;
         this["tabBtn" + param1].selected = true;
         this["tabBtn" + param2].selected = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelHigh() : TextInput
      {
         return this._1656583354levelHigh;
      }
      
      private function _AuctionPanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn13 = _loc1_;
         _loc1_.sortCompareFunction = priceMaxSortFunc;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory8_c();
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn13",_AuctionPanel_DataGridColumn13);
         return _loc1_;
      }
      
      public function addItem(param1:ItemSlot) : void
      {
         var _loc2_:DragEvent = new DragEvent(DragEvent.DRAG_DROP);
         var _loc3_:DragSource = new DragSource();
         _loc3_.addData(param1,"slot");
         _loc2_.dragSource = _loc3_;
         auctionItem.dispatchEvent(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get resultDataGrid() : PageableDataGrid
      {
         return this._599930547resultDataGrid;
      }
      
      public function onInitViewAuctionP(param1:Object) : void
      {
         if(param1.flag)
         {
            visible = true;
            npcId = param1.npcId;
            myAuctionList = param1.myAuctionList;
            setTimeout(createMyAuctionList,1000);
         }
         else
         {
            _core.sysMidNote(param1.info);
         }
      }
      
      public function pageRefresh(param1:int, param2:int) : void
      {
         if(resultAC)
         {
            resultDataGrid.dataProvider = ToolKit.getPageCollection(resultAC,param1,param2);
         }
      }
      
      public function set searchCanva(param1:Canvas) : void
      {
         var _loc2_:Object = this._565654093searchCanva;
         if(_loc2_ !== param1)
         {
            this._565654093searchCanva = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchCanva",_loc2_,param1));
         }
      }
      
      public function set auctionTime(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._289027152auctionTime;
         if(_loc2_ !== param1)
         {
            this._289027152auctionTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auctionTime",_loc2_,param1));
         }
      }
      
      private function checkResponse() : Boolean
      {
         return this.response;
      }
      
      public function set moneyMaxCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._905190219moneyMaxCurrency;
         if(_loc2_ !== param1)
         {
            this._905190219moneyMaxCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyMaxCurrency",_loc2_,param1));
         }
      }
      
      private function auctionBidMax() : void
      {
         if(resultDataGrid.selectedItem)
         {
            if(resultDataGrid.selectedItem.auctionType == 1)
            {
               if(resultDataGrid.selectedItem.maxMoney <= 0)
               {
                  Alert.show(Language.AUCTIONPANEL_S[14],"",Alert.OK);
                  return;
               }
               if(resultDataGrid.selectedItem.maxMoney > _core.player.money)
               {
                  Alert.show(Language.AUCTIONPANEL_S[15] + GamePredef.CURRENCY_TIP[0] + "!","",Alert.OK);
                  return;
               }
            }
            else
            {
               if(resultDataGrid.selectedItem.auctionType != 2)
               {
                  return;
               }
               if(resultDataGrid.selectedItem.maxGold <= 0)
               {
                  Alert.show(Language.AUCTIONPANEL_S[16],"",Alert.OK);
                  return;
               }
               if(resultDataGrid.selectedItem.maxGold > _core.player.gold)
               {
                  Alert.show(Language.AUCTIONPANEL_S[17] + GamePredef.CURRENCY_TIP[1] + "!","",Alert.OK);
                  return;
               }
            }
            _core.remote.call("auctionBidMax",new Responder(onAuctionBidMax),resultDataGrid.selectedItem.id);
         }
      }
      
      private function _AuctionPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.width = 26;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      public function ___AuctionPanel_BasicGlowButton6_click(param1:MouseEvent) : void
      {
         Alert.show(Language.AUCTIONPANEL_S[34],"",3,this,delAuction);
      }
      
      public function __goldRadioButton_click(param1:MouseEvent) : void
      {
         selectType();
      }
      
      private function _AuctionPanel_DataGridColumn9_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.width = 26;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory5_c();
         return _loc1_;
      }
      
      private function _AuctionPanel_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererCurrencyMax;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get glowEffect() : Glow
      {
         return this._207684226glowEffect;
      }
      
      public function __auctionItem_doubleClick(param1:MouseEvent) : void
      {
         clearAuctionView();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AuctionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AuctionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AuctionPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get pageCtrl() : PageSelector
      {
         return this._858962330pageCtrl;
      }
      
      private function _AuctionPanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn12 = _loc1_;
         _loc1_.sortCompareFunction = priceSortFunc;
         _loc1_.itemRenderer = _AuctionPanel_ClassFactory7_c();
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn12",_AuctionPanel_DataGridColumn12);
         return _loc1_;
      }
      
      public function onAddAuction(param1:Object) : void
      {
         if(myAuctionList == null)
         {
            myAuctionList = {};
         }
         myAuctionList[param1.id] = param1;
         createMyAuctionList();
      }
      
      public function onAuctionBidMax(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1.flag)
         {
            _core.sysMidNote(param1.info);
            if(visible)
            {
               for each(_loc2_ in resultAC)
               {
                  if(_loc2_.id == param1.auctionId)
                  {
                     resultAC.removeItemAt(resultAC.getItemIndex(_loc2_));
                  }
               }
            }
         }
         else
         {
            _core.sysMidNote(param1.info);
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1,0);
      }
      
      [Bindable(event="propertyChange")]
      public function get auctionTime() : NumericStepper
      {
         return this._289027152auctionTime;
      }
      
      private function auctionBid() : void
      {
         var onClose:Function = function(param1:CloseEvent):void
         {
            if(Alert.OK == param1.detail)
            {
               auctionBidMax();
            }
         };
         if(resultDataGrid.selectedItem)
         {
            if(resultDataGrid.selectedItem.auctionType == 1)
            {
               if(bidCurrency.value > _core.player.money)
               {
                  Alert.show(Language.AUCTIONPANEL_S[11] + GamePredef.CURRENCY_TIP[0] + "!","",Alert.OK);
                  return;
               }
               if(resultDataGrid.selectedItem.maxMoney <= bidCurrency.value && resultDataGrid.selectedItem.maxMoney != 0)
               {
                  Alert.show(Language.AUCTIONPANEL_S[36],"",Alert.OK | Alert.CANCEL,null,onClose);
                  return;
               }
               if(resultDataGrid.selectedItem.nowMoney >= bidCurrency.value)
               {
                  Alert.show(Language.AUCTIONPANEL_S[10],"",Alert.OK);
                  return;
               }
            }
            else
            {
               if(resultDataGrid.selectedItem.auctionType != 2)
               {
                  return;
               }
               if(bidCurrency.value > _core.player.gold)
               {
                  Alert.show(Language.AUCTIONPANEL_S[13] + GamePredef.CURRENCY_TIP[1] + "!","",Alert.OK);
                  return;
               }
               if(resultDataGrid.selectedItem.maxGold <= bidCurrency.value && resultDataGrid.selectedItem.maxGold != 0)
               {
                  Alert.show(Language.AUCTIONPANEL_S[36],"",Alert.OK | Alert.CANCEL,null,onClose);
                  return;
               }
               if(resultDataGrid.selectedItem.nowGold >= bidCurrency.value)
               {
                  Alert.show(Language.AUCTIONPANEL_S[12],"",Alert.OK);
                  return;
               }
            }
            _core.remote.call("auctionBid",new Responder(onAuctionBid),resultDataGrid.selectedItem.id,bidCurrency.value);
         }
      }
      
      private function _AuctionPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn8 = _loc1_;
         _loc1_.width = 35;
         _loc1_.dataField = "lastTime";
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn8",_AuctionPanel_DataGridColumn8);
         return _loc1_;
      }
      
      private function delAuction(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            if(myAuctionDataGrid.selectedItem)
            {
               _core.remote.cancelAuction(myAuctionDataGrid.selectedItem.id);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchCanva() : Canvas
      {
         return this._565654093searchCanva;
      }
      
      private function _AuctionPanel_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererCurrency;
         return _loc1_;
      }
      
      private function auctionSearch() : void
      {
         var data:Object;
         var onClose:Function = null;
         glowEffect.end();
         searchButton.filters = [];
         if(!checkResponse())
         {
            if(!checkSearch())
            {
               return;
            }
         }
         trace("Time: " + new Date().getTime() / 1000);
         if(!auctionTree.selectedItem)
         {
            _core.sysMidNote(Language.AUCTIONPANEL_S[0]);
            return;
         }
         if(auctionTree.selectedItem.type)
         {
         }
         data = {};
         if(Boolean(auctionTree.selectedItem) && Boolean(auctionTree.selectedItem.kind))
         {
            data.kind = auctionTree.selectedItem.kind;
         }
         else
         {
            data.kind = -1;
         }
         if(Boolean(auctionTree.selectedItem) && Boolean(auctionTree.selectedItem.type))
         {
            data.type = auctionTree.selectedItem.type;
         }
         else
         {
            data.type = -1;
         }
         if(levelLow.text != "")
         {
            data.levelLow = Number(levelLow.text);
         }
         else
         {
            data.levelLow = -1;
         }
         if(levelHigh.text != "")
         {
            data.levelHigh = Number(levelHigh.text);
         }
         else
         {
            data.levelHigh = -1;
         }
         data.name = itemName.text;
         data.npcId = npcId;
         if(!dataBuffer[data.kind])
         {
            dataBuffer[data.kind] = {
               "version":-1,
               "data":{}
            };
         }
         if(data.type > 0)
         {
            if(!dataBuffer[data.kind][data.type])
            {
               dataBuffer[data.kind][data.type] = {
                  "version":-1,
                  "data":{}
               };
            }
            data.version = dataBuffer[data.kind][data.type].version;
         }
         else
         {
            data.version = dataBuffer[data.kind].version;
         }
         if(_core.remote.call("auctionSearch",new Responder(onAuctionSearch),data))
         {
            auctionTree.enabled = false;
            this.response = false;
            searchButton.enabled = false;
            onClose = function(param1:TimerEvent):void
            {
               _core.view.getUI(ViewManager.POPU_WAIT).visible = false;
            };
            _core.view.getUI(ViewManager.POPU_WAIT).showText2(Language.AUCTIONPANEL_S[38],onClose);
         }
      }
      
      private function _AuctionPanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn11 = _loc1_;
         _loc1_.dataField = "stackNum";
         _loc1_.width = 35;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn11",_AuctionPanel_DataGridColumn11);
         return _loc1_;
      }
      
      public function set moneyCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._2039330033moneyCurrency;
         if(_loc2_ !== param1)
         {
            this._2039330033moneyCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyCurrency",_loc2_,param1));
         }
      }
      
      public function __searchButton_click(param1:MouseEvent) : void
      {
         auctionSearch();
      }
      
      public function set costMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._286697229costMoney;
         if(_loc2_ !== param1)
         {
            this._286697229costMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costMoney",_loc2_,param1));
         }
      }
      
      private function priceSortFunc(param1:Object, param2:Object) : int
      {
         if(param1.auctionType == param2.auctionType)
         {
            if(param1.auctionType == 1)
            {
               if(param1.nowMoney < param2.nowMoney)
               {
                  return -1;
               }
               if(param1.nowMoney > param2.nowMoney)
               {
                  return 1;
               }
               if(param1.nowMoney == param2.nowMoney)
               {
                  return 0;
               }
            }
            else if(param1.auctionType == 2)
            {
               if(param1.nowGold < param2.nowGold)
               {
                  return -1;
               }
               if(param1.nowGold > param2.nowGold)
               {
                  return 1;
               }
               if(param1.nowGold == param2.nowGold)
               {
                  return 0;
               }
            }
         }
         else
         {
            if(param1.auctionType == 1 && param2.auctionType == 2)
            {
               return -1;
            }
            if(param1.auctionType == 2 && param2.auctionType == 1)
            {
               return 1;
            }
         }
         return 0;
      }
      
      public function set itemType(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._1177533677itemType;
         if(_loc2_ !== param1)
         {
            this._1177533677itemType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemType",_loc2_,param1));
         }
      }
      
      public function set auctionItem(param1:ItemSlotAuction) : void
      {
         var _loc2_:Object = this._289344522auctionItem;
         if(_loc2_ !== param1)
         {
            this._289344522auctionItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auctionItem",_loc2_,param1));
         }
      }
      
      private function _AuctionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AUCTIONPANEL_U[6];
         _loc1_ = Language.AUCTIONPANEL_S[25];
         _loc1_ = pageCtrl;
         _loc1_ = Language.AUCTIONPANEL_S[18];
         _loc1_ = Language.AUCTIONPANEL_S[19];
         _loc1_ = Language.AUCTIONPANEL_S[20];
         _loc1_ = Language.AUCTIONPANEL_S[21];
         _loc1_ = Language.AUCTIONPANEL_S[22];
         _loc1_ = Language.AUCTIONPANEL_S[23];
         _loc1_ = Language.AUCTIONPANEL_S[24];
         _loc1_ = Language.AUCTIONPANEL_U[0];
         _loc1_ = Language.AUCTIONPANEL_U[1];
         _loc1_ = Language.AUCTIONPANEL_U[2];
         _loc1_ = Language.AUCTIONPANEL_U[12];
         _loc1_ = Language.AUCTIONPANEL_U[13];
         _loc1_ = Language.AUCTIONPANEL_U[14];
         _loc1_ = _pageSize;
         _loc1_ = Language.AUCTIONPANEL_S[26];
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Currency.TYPE_MONEYALL;
         _loc1_ = Language.AUCTIONPANEL_U[3];
         _loc1_ = Language.AUCTIONPANEL_U[4];
         _loc1_ = Language.AUCTIONPANEL_S[27];
         _loc1_ = Language.AUCTIONPANEL_S[28];
         _loc1_ = Language.AUCTIONPANEL_S[29];
         _loc1_ = Language.AUCTIONPANEL_S[30];
         _loc1_ = Language.AUCTIONPANEL_S[31];
         _loc1_ = Language.AUCTIONPANEL_S[32];
         _loc1_ = Language.AUCTIONPANEL_S[33];
         _loc1_ = Language.AUCTIONPANEL_U[5];
         _loc1_ = Language.AUCTIONPANEL_U[7];
         _loc1_ = Language.AUCTIONPANEL_U[8];
         _loc1_ = Language.AUCTIONPANEL_U[1];
         _loc1_ = Language.AUCTIONPANEL_U[9];
         _loc1_ = Language.AUCTIONPANEL_U[8];
         _loc1_ = Language.AUCTIONPANEL_U[1];
         _loc1_ = Language.AUCTIONPANEL_U[10];
         _loc1_ = Language.AUCTIONPANEL_U[11];
         _loc1_ = Language.AUCTIONPANEL_U[15];
         _loc1_ = Language.AUCTIONPANEL_U[16];
         _loc1_ = Number(_core.player.pmLevel) >= 3;
         _loc1_ = Language.AUCTIONPANEL_U[0];
         _loc1_ = Language.AUCTIONPANEL_U[3];
      }
      
      public function set searchButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._365389062searchButton;
         if(_loc2_ !== param1)
         {
            this._365389062searchButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchButton",_loc2_,param1));
         }
      }
      
      private function _AuctionPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _AuctionPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "pn";
         _loc1_.showDataTips = true;
         BindingManager.executeBindings(this,"_AuctionPanel_DataGridColumn7",_AuctionPanel_DataGridColumn7);
         return _loc1_;
      }
      
      private function priceMaxSortFunc(param1:Object, param2:Object) : int
      {
         if(param1.auctionType == param2.auctionType)
         {
            if(param1.auctionType == 1)
            {
               if(param1.maxMoney < param2.maxMoney)
               {
                  return -1;
               }
               if(param1.maxMoney > param2.maxMoney)
               {
                  return 1;
               }
               if(param1.maxMoney == param2.maxMoney)
               {
                  return 0;
               }
            }
            else if(param1.auctionType == 2)
            {
               if(param1.maxGold < param2.maxGold)
               {
                  return -1;
               }
               if(param1.maxGold > param2.maxGold)
               {
                  return 1;
               }
               if(param1.maxGold == param2.maxGold)
               {
                  return 0;
               }
            }
         }
         else
         {
            if(param1.auctionType == 1 && param2.auctionType == 2)
            {
               return -1;
            }
            if(param1.auctionType == 2 && param2.auctionType == 1)
            {
               return 1;
            }
         }
         return 0;
      }
   }
}

