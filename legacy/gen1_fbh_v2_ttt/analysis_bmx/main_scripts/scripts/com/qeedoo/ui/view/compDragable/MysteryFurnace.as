package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.DressEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ClickSlot;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterButton;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.PageSelectorOnly;
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
   import mx.binding.utils.ChangeWatcher;
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MysteryFurnace extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1584105757viewStack:ViewStack;
      
      private var _109532662slot4:ClickSlot;
      
      private var _1078781073scoreSelector:PageSelectorOnly;
      
      private var _scoreMetaDict:Object;
      
      private var _1080577661crystalText:Label;
      
      private var _109532659slot1:ClickSlot;
      
      private var _109532667slot9:ClickSlot;
      
      private var _scoreChanging:Boolean;
      
      private var _899454813slot16:ClickSlot;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _899454817slot12:ClickSlot;
      
      private var _271682174mysteryItem4:MysteryItem;
      
      private var _1820004370itemSelector:PageSelectorOnly;
      
      private var _271682178mysteryItem0:MysteryItem;
      
      private var _271682176mysteryItem2:MysteryItem;
      
      private var _109532664slot6:ClickSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _alert:Alert;
      
      private const ITEM_PAGE_NUM:int = 18;
      
      private var _899454818slot11:ClickSlot;
      
      private var _109532661slot3:ClickSlot;
      
      public var _MysteryFurnace_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _899454814slot15:ClickSlot;
      
      private var _itemMetaDict:Object;
      
      private var _803559802pageTab:HButtonTab;
      
      private var _109532658slot0:ClickSlot;
      
      private var _109532666slot8:ClickSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _itemChanging:Boolean;
      
      mx_internal var _watchers:Array = [];
      
      private var _109532663slot5:ClickSlot;
      
      private var _871500217introText:IntroText;
      
      public var _MysteryFurnace_Label1:Label;
      
      public var _MysteryFurnace_Label2:Label;
      
      private var _899454815slot14:ClickSlot;
      
      private var _271682175mysteryItem3:MysteryItem;
      
      private var _899454819slot10:ClickSlot;
      
      private var _271682177mysteryItem1:MysteryItem;
      
      private var _109532660slot2:ClickSlot;
      
      private var _itemDict:Object;
      
      private var _watcherDict:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109532665slot7:ClickSlot;
      
      public var _MysteryFurnace_FilterButton1:FilterButton;
      
      public var _MysteryFurnace_FilterButton2:FilterButton;
      
      private const SCORE_PAGE_NUM:int = 5;
      
      private const ITEM_TYPE:int = 1;
      
      private var _scoreDict:Object;
      
      private var _899454816slot13:ClickSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _899454812slot17:ClickSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":350,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MysteryFurnace_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "events":{"tabChanged":"__pageTab_tabChanged"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "selectedIndex":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "x":15,
                        "y":59,
                        "width":320,
                        "height":375,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "clipContent":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"viewStack",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":116,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "width":300,
                                          "height":180,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_MysteryFurnace_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 16777215;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":8};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Tile,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 6;
                                                this.verticalGap = 6;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "direction":"horizontal",
                                                   "width":240,
                                                   "height":120,
                                                   "y":30,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot0",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot6",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot7",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot8",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot9",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot10",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot11",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot12",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot13",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot14",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot15",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot16",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ClickSlot,
                                                      "id":"slot17",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"clickCall":onItemClick};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelectorOnly,
                                             "id":"itemSelector",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":150,
                                                   "changeCall":updatePageOne
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
                                          "styleName":"CanvasBorder",
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_MysteryFurnace_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 16777215;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":8};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 2;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":30,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":MysteryItem,
                                                      "id":"mysteryItem0",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "changeCall":onScoreChange,
                                                            "visible":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MysteryItem,
                                                      "id":"mysteryItem1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "changeCall":onScoreChange,
                                                            "visible":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MysteryItem,
                                                      "id":"mysteryItem2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "changeCall":onScoreChange,
                                                            "visible":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MysteryItem,
                                                      "id":"mysteryItem3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "changeCall":onScoreChange,
                                                            "visible":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MysteryItem,
                                                      "id":"mysteryItem4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "changeCall":onScoreChange,
                                                            "visible":false
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelectorOnly,
                                             "id":"scoreSelector",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":150,
                                                   "changeCall":updatePageTwo
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
                  "type":IntroText,
                  "id":"introText",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":70,
                        "width":300,
                        "height":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"crystalText",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.color = 65535;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":365};
                  }
               }),new UIComponentDescriptor({
                  "type":FilterButton,
                  "id":"_MysteryFurnace_FilterButton1",
                  "events":{"click":"___MysteryFurnace_FilterButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":115,
                        "y":390,
                        "height":23,
                        "styleName":"BtnStdGreen"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":FilterButton,
                  "id":"_MysteryFurnace_FilterButton2",
                  "events":{"click":"___MysteryFurnace_FilterButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":180,
                        "y":390,
                        "height":23,
                        "styleName":"BtnStdGreen"
                     };
                  }
               })]
            };
         }
      });
      
      public function MysteryFurnace()
      {
         super();
         mx_internal::_document = this;
         this.width = 350;
         this.height = 450;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MysteryFurnace._watcherSetupUtil = param1;
      }
      
      public function set mysteryItem2(param1:MysteryItem) : void
      {
         var _loc2_:Object = this._271682176mysteryItem2;
         if(_loc2_ !== param1)
         {
            this._271682176mysteryItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysteryItem2",_loc2_,param1));
         }
      }
      
      public function set mysteryItem0(param1:MysteryItem) : void
      {
         var _loc2_:Object = this._271682178mysteryItem0;
         if(_loc2_ !== param1)
         {
            this._271682178mysteryItem0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysteryItem0",_loc2_,param1));
         }
      }
      
      public function set crystalText(param1:Label) : void
      {
         var _loc2_:Object = this._1080577661crystalText;
         if(_loc2_ !== param1)
         {
            this._1080577661crystalText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalText",_loc2_,param1));
         }
      }
      
      public function set slot1(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot7(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function set mysteryItem4(param1:MysteryItem) : void
      {
         var _loc2_:Object = this._271682174mysteryItem4;
         if(_loc2_ !== param1)
         {
            this._271682174mysteryItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysteryItem4",_loc2_,param1));
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
      
      public function set mysteryItem1(param1:MysteryItem) : void
      {
         var _loc2_:Object = this._271682177mysteryItem1;
         if(_loc2_ !== param1)
         {
            this._271682177mysteryItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysteryItem1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : ClickSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ClickSlot
      {
         return this._109532667slot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ClickSlot
      {
         return this._109532659slot1;
      }
      
      private function onItemClick(param1:ClickSlot) : void
      {
         var _loc2_:Object = param1.slotData;
         _itemDict[_loc2_.id] = param1.selected ? _loc2_ : null;
         this.updateTotal();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ClickSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : ClickSlot
      {
         return this._109532662slot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemSelector() : PageSelectorOnly
      {
         return this._1820004370itemSelector;
      }
      
      public function set mysteryItem3(param1:MysteryItem) : void
      {
         var _loc2_:Object = this._271682175mysteryItem3;
         if(_loc2_ !== param1)
         {
            this._271682175mysteryItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysteryItem3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : ClickSlot
      {
         return this._109532665slot7;
      }
      
      public function set slot8(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      private function scoreStrategy() : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc1_:Array = Language.MYSTERY_FURNACE_PANEL[8];
         var _loc2_:int = int(_loc1_.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_];
            _loc5_ = 0;
            _scoreDict[_loc4_.type] = _loc5_;
            _loc3_++;
         }
      }
      
      private function _MysteryFurnace_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MYSTERY_FURNACE_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.MYSTERY_FURNACE_PANEL[1];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = Language.MYSTERY_FURNACE_PANEL[2];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.MYSTERY_FURNACE_PANEL[5];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.MYSTERY_FURNACE_PANEL[4];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.TRAIN_SOUL_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function set scoreSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._1078781073scoreSelector;
         if(_loc2_ !== param1)
         {
            this._1078781073scoreSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scoreSelector",_loc2_,param1));
         }
      }
      
      public function set itemSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._1820004370itemSelector;
         if(_loc2_ !== param1)
         {
            this._1820004370itemSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemSelector",_loc2_,param1));
         }
      }
      
      public function set slot9(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      public function set slot4(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      public function set viewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1584105757viewStack;
         if(_loc2_ !== param1)
         {
            this._1584105757viewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewStack",_loc2_,param1));
         }
      }
      
      private function updatePageTwo() : void
      {
         var _loc5_:int = 0;
         var _loc6_:MysteryItem = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc1_:Array = Language.MYSTERY_FURNACE_PANEL[8];
         scoreSelector.totalPage = Math.ceil(_loc1_.length / SCORE_PAGE_NUM);
         var _loc2_:int = SCORE_PAGE_NUM * (scoreSelector.curPage - 1);
         var _loc3_:int = _loc2_ + SCORE_PAGE_NUM;
         var _loc4_:int = _loc2_;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc4_ - _loc2_;
            _loc6_ = this["mysteryItem" + _loc5_];
            if(!_loc1_[_loc4_])
            {
               _loc6_.cleanView();
            }
            else
            {
               _loc7_ = _loc1_[_loc4_];
               _loc8_ = _watcherDict[_loc7_.type];
               _loc9_ = Number(Number(_scoreDict[_loc7_.type]) || 0);
               _loc6_.updateView(_loc4_,_loc9_);
            }
            _loc4_++;
         }
      }
      
      public function set slot12(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         var _loc1_:String = null;
         var _loc2_:ChangeWatcher = null;
         super.hide();
         _core.data.removeEventListener(GamePredef.EVENT_REFRESH_FUNCSLOTS,onItemChange);
         for(_loc1_ in _watcherDict)
         {
            _loc2_ = _watcherDict[_loc1_].watcher;
            if(_loc2_)
            {
               _loc2_.unwatch();
               _loc2_ = null;
            }
         }
         _watcherDict = {};
      }
      
      public function set slot11(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      private function updatePageOne() : void
      {
         var initSlot:Function = null;
         if(!_dm.sInited)
         {
            initSlot = function(param1:Object):void
            {
               _dm.initSlotData(param1);
               updateItems();
            };
            _core.remote.call("getInitSlot",new Responder(initSlot));
            return;
         }
         this.updateItems();
      }
      
      public function set slot17(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      private function updateItems() : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:ClickSlot = null;
         var _loc1_:Array = [];
         for each(_loc2_ in _dm.sList)
         {
            if(ToolKit.isBigThan(_loc2_.sid,GamePredef.SLOT_SID_BAG[0]) && ToolKit.isSmallOrEqual(_loc2_.sid,GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum]) || ToolKit.isBigThan(_loc2_.sid,GamePredef.SLOT_SID_BAG[7]) && ToolKit.isSmallOrEqual(_loc2_.sid,GamePredef.SLOT_SID_BAG[8]))
            {
               if(_loc2_.type == GamePredef.TBL_ITEM_INSTANCE)
               {
                  if(_core.data.hasData(_loc2_.type,_loc2_.itemId))
                  {
                     _loc6_ = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
                     if(!(!_loc6_ || !_itemMetaDict[_loc6_.tid] || !_itemMetaDict[_loc6_.tid][_loc6_.color]))
                     {
                        _loc1_.push(_loc2_);
                     }
                  }
               }
            }
         }
         _loc1_.sortOn("sid",Array.NUMERIC);
         itemSelector.totalPage = Math.ceil(_loc1_.length / ITEM_PAGE_NUM);
         _loc3_ = ITEM_PAGE_NUM * (itemSelector.curPage - 1);
         _loc4_ = _loc3_ + ITEM_PAGE_NUM;
         _loc5_ = _loc3_;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = _loc5_ - _loc3_;
            _loc8_ = this["slot" + _loc7_];
            if(!_loc1_[_loc5_])
            {
               _loc8_.clean();
            }
            else
            {
               _loc2_ = _loc1_[_loc5_];
               _loc8_.slotData = _loc2_;
               _loc8_.type = _loc2_.type;
               _loc8_.giid = _loc2_.itemId;
               _loc8_.stackNum = _loc2_.stackNum;
               _loc8_.selected = _itemDict[_loc2_.id];
            }
            _loc5_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysteryItem2() : MysteryItem
      {
         return this._271682176mysteryItem2;
      }
      
      private function onExchangeItem(param1:Object = null) : void
      {
         _itemChanging = false;
         if(!param1)
         {
            return;
         }
         _itemDict = {};
         _core.player.mysteryCrystal = param1.num;
         this.updatePageOne();
         this.updateTotal();
      }
      
      private function onScoreChange(param1:MysteryItem) : void
      {
         _scoreDict[param1.scoreType] = param1.getInput();
         this.updateTotal();
      }
      
      [Bindable(event="propertyChange")]
      public function get mysteryItem0() : MysteryItem
      {
         return this._271682178mysteryItem0;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysteryItem1() : MysteryItem
      {
         return this._271682177mysteryItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysteryItem3() : MysteryItem
      {
         return this._271682175mysteryItem3;
      }
      
      public function ___MysteryFurnace_FilterButton1_click(param1:MouseEvent) : void
      {
         exchangeHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalText() : Label
      {
         return this._1080577661crystalText;
      }
      
      public function set slot16(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MysteryFurnace = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MysteryFurnace_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MysteryFurnaceWatcherSetupUtil");
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
      public function get mysteryItem4() : MysteryItem
      {
         return this._271682174mysteryItem4;
      }
      
      private function watchScoreChange(param1:PropertyChangeEvent) : void
      {
         var _loc6_:MysteryItem = null;
         if(!this.initialized || _scoreChanging)
         {
            return;
         }
         var _loc2_:Object = _watcherDict[param1.property];
         var _loc3_:Object = Language.MYSTERY_FURNACE_PANEL[8][_loc2_.index];
         var _loc4_:Number = 0;
         _scoreDict[_loc3_.type] = _loc4_;
         var _loc5_:int = 0;
         while(_loc5_ < SCORE_PAGE_NUM)
         {
            _loc6_ = this["mysteryItem" + _loc5_];
            if(_loc6_.scoreType == _loc3_.type)
            {
               _loc6_.updateView(_loc2_.index,_scoreDict[_loc3_.type]);
               break;
            }
            _loc5_++;
         }
         this.updateTotal();
      }
      
      public function __pageTab_tabChanged(param1:DressEvent) : void
      {
         tabHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : ClickSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get scoreSelector() : PageSelectorOnly
      {
         return this._1078781073scoreSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : ClickSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : ClickSlot
      {
         return this._899454814slot15;
      }
      
      private function exchangeHandler(param1:Event) : void
      {
         var itemDict:Object = null;
         var slotId:String = null;
         var itemCheckPass:Function = null;
         var scoreEmpty:Boolean = false;
         var scoreType:String = null;
         var scoreCheckPass:Function = null;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         if(pageTab.selectedIndex == 0)
         {
            itemDict = null;
            for(slotId in _itemDict)
            {
               if(_itemDict[slotId])
               {
                  itemDict ||= {};
                  itemDict[slotId] = true;
               }
            }
            if(!itemDict)
            {
               _core.sysMidNote(Language.MYSTERY_FURNACE_PANEL[13]);
               return;
            }
            itemCheckPass = function(param1:CloseEvent):void
            {
               var itemHandler:Function;
               var event:CloseEvent = param1;
               if(event.detail == Alert.NO)
               {
                  return;
               }
               itemHandler = function(param1:String):void
               {
                  if(!param1)
                  {
                     return;
                  }
                  _itemChanging = true;
                  var _loc2_:String = MD5.hash(param1);
                  _core.remote.call("MysteryExchangeItem",new Responder(onExchangeItem),itemDict,_loc2_);
               };
               if(!_core.delPass)
               {
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.MYSTERY_FURNACE_PANEL[4],itemHandler);
                  return;
               }
               _itemChanging = true;
               _core.remote.call("MysteryExchangeItem",new Responder(onExchangeItem),itemDict,_core.delPass);
            };
            _alert = Alert.show(Language.MYSTERY_FURNACE_PANEL[14],"",Alert.YES | Alert.NO,null,itemCheckPass);
         }
         else if(pageTab.selectedIndex == 1)
         {
            scoreEmpty = true;
            for(scoreType in _scoreDict)
            {
               if(Boolean(_scoreDict[scoreType]) && Number(_scoreDict[scoreType]) > 0)
               {
                  scoreEmpty = false;
                  break;
               }
            }
            if(scoreEmpty)
            {
               _core.sysMidNote(Language.MYSTERY_FURNACE_PANEL[11]);
               return;
            }
            scoreCheckPass = function(param1:CloseEvent):void
            {
               var scoreHandler:Function;
               var event:CloseEvent = param1;
               if(event.detail == Alert.NO)
               {
                  return;
               }
               scoreHandler = function(param1:String):void
               {
                  if(!param1)
                  {
                     return;
                  }
                  _scoreChanging = true;
                  var _loc2_:String = MD5.hash(param1);
                  _core.remote.call("MysteryExchangeScore",new Responder(onExchangeScore),_scoreDict,_loc2_);
               };
               if(!_core.delPass)
               {
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.MYSTERY_FURNACE_PANEL[4],scoreHandler);
                  return;
               }
               _scoreChanging = true;
               _core.remote.call("MysteryExchangeScore",new Responder(onExchangeScore),_scoreDict,_core.delPass);
            };
            _alert = Alert.show(Language.MYSTERY_FURNACE_PANEL[12],"",Alert.YES | Alert.NO,null,scoreCheckPass);
         }
      }
      
      private function onExchangeScore(param1:Object = null) : void
      {
         _scoreChanging = false;
         if(!param1)
         {
            return;
         }
         _core.player.mysteryCrystal = param1.num;
         this.scoreStrategy();
         this.updatePageTwo();
         this.updateTotal();
      }
      
      public function set introText(param1:IntroText) : void
      {
         var _loc2_:Object = this._871500217introText;
         if(_loc2_ !== param1)
         {
            this._871500217introText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : ClickSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : ClickSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : ClickSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : ClickSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : ClickSlot
      {
         return this._109532666slot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get introText() : IntroText
      {
         return this._871500217introText;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : ClickSlot
      {
         return this._899454813slot16;
      }
      
      public function ___MysteryFurnace_FilterButton2_click(param1:MouseEvent) : void
      {
         soulHandler(param1);
      }
      
      private function soulHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_TRAIN_SOUL);
         _loc2_ && _loc2_.show();
      }
      
      private function onItemChange(param1:GameDataEvent) : void
      {
         if(!initialized || !visible || _itemChanging)
         {
            return;
         }
         _itemDict = {};
         itemSelector.curPage = 1;
         pageTab.selectedIndex == 0 && this.updateTotal();
         this.updatePageOne();
      }
      
      public function set slot0(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532658slot0;
         if(_loc2_ !== param1)
         {
            this._109532658slot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot0",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      private function _MysteryFurnace_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYSTERY_FURNACE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysteryFurnace_BasicTitleCanvas1.text = param1;
         },"_MysteryFurnace_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.MYSTERY_FURNACE_PANEL[1];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return pageTab.selectedIndex;
         },function(param1:int):void
         {
            viewStack.selectedIndex = param1;
         },"viewStack.selectedIndex");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYSTERY_FURNACE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysteryFurnace_Label1.text = param1;
         },"_MysteryFurnace_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _MysteryFurnace_Label1.filters = param1;
         },"_MysteryFurnace_Label1.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYSTERY_FURNACE_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysteryFurnace_Label2.text = param1;
         },"_MysteryFurnace_Label2.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _MysteryFurnace_Label2.filters = param1;
         },"_MysteryFurnace_Label2.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            crystalText.filters = param1;
         },"crystalText.filters");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYSTERY_FURNACE_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysteryFurnace_FilterButton1.label = param1;
         },"_MysteryFurnace_FilterButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _MysteryFurnace_FilterButton1.filters = param1;
         },"_MysteryFurnace_FilterButton1.filters");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysteryFurnace_FilterButton2.label = param1;
         },"_MysteryFurnace_FilterButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _MysteryFurnace_FilterButton2.filters = param1;
         },"_MysteryFurnace_FilterButton2.filters");
         result[12] = binding;
         return result;
      }
      
      public function set slot6(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ClickSlot
      {
         return this._109532660slot2;
      }
      
      private function tabHandler(param1:Event = null) : void
      {
         var _loc2_:int = pageTab.selectedIndex;
         var _loc3_:String = Language.MYSTERY_FURNACE_PANEL[_loc2_ == 0 ? 6 : 7];
         introText.htmlText = _loc3_;
         this.updateTotal();
      }
      
      public function set slot2(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      private function updatePage() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(!this.initialized)
         {
            this.callLater(updatePage);
            return;
         }
         _itemDict = {};
         _scoreDict = {};
         pageTab.selectedIndex = 0;
         itemSelector.curPage = 1;
         scoreSelector.curPage = 1;
         this.tabHandler();
         if(!_itemMetaDict || !_scoreMetaDict)
         {
            _itemMetaDict = {};
            _scoreMetaDict = {};
            _loc1_ = GameData.d[GamePredef.TBL_RECYCLING];
            for each(_loc2_ in _loc1_)
            {
               if(_loc2_.type == ITEM_TYPE)
               {
                  _loc3_ = _loc2_.itemId;
                  _loc4_ = _loc2_.color;
                  if(!_itemMetaDict[_loc3_])
                  {
                     _itemMetaDict[_loc3_] = {};
                  }
                  _itemMetaDict[_loc3_][_loc4_] = _loc2_;
               }
               else
               {
                  _scoreMetaDict[_loc2_.type] = _loc2_;
               }
            }
         }
         this.scoreStrategy();
         this.updatePageOne();
         this.updatePageTwo();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot0() : ClickSlot
      {
         return this._109532658slot0;
      }
      
      private function updateTotal() : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc1_:Number = 0;
         if(pageTab.selectedIndex == 0)
         {
            for(_loc2_ in _itemDict)
            {
               _loc3_ = _itemDict[_loc2_];
               if(!(!_loc3_ || !_core.data.hasData(_loc3_.type,_loc3_.itemId)))
               {
                  _loc4_ = _core.data.getGameData(_loc3_.type,_loc3_.itemId);
                  if(!(!_loc4_ || !_itemMetaDict[_loc4_.tid] || !_itemMetaDict[_loc4_.tid][_loc4_.color]))
                  {
                     _loc5_ = _itemMetaDict[_loc4_.tid][_loc4_.color];
                     _loc1_ += Number(_loc5_.value) * Number(_loc3_.stackNum);
                  }
               }
            }
         }
         else if(pageTab.selectedIndex == 1)
         {
            _loc6_ = Language.MYSTERY_FURNACE_PANEL[8];
            for(_loc7_ in _scoreDict)
            {
               _loc8_ = Number(Number(_scoreDict[_loc7_]) || 0);
               if(_scoreMetaDict[_loc7_])
               {
                  _loc9_ = _scoreMetaDict[_loc7_];
                  _loc1_ += Number(_loc9_.value) * _loc8_;
               }
            }
         }
         crystalText.text = Language.MYSTERY_FURNACE_PANEL[3] + _loc1_;
      }
      
      override public function show() : void
      {
         var _loc4_:Object = null;
         var _loc5_:ChangeWatcher = null;
         super.show();
         this.updatePage();
         _core.data.addEventListener(GamePredef.EVENT_REFRESH_FUNCSLOTS,onItemChange);
         var _loc1_:Array = Language.MYSTERY_FURNACE_PANEL[8];
         var _loc2_:int = int(_loc1_.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_];
            _loc5_ = ChangeWatcher.watch(_core.player,_loc4_.score,watchScoreChange);
            _watcherDict[_loc4_.score] = {
               "index":_loc3_,
               "watcher":_loc5_
            };
            _loc3_++;
         }
         _itemChanging = false;
         _scoreChanging = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ClickSlot
      {
         return this._109532664slot6;
      }
   }
}

