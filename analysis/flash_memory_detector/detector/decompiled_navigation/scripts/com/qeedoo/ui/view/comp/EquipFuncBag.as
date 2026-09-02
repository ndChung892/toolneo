package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compDragable.NumPanel;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class EquipFuncBag extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _saltType:String;
      
      private var _109532659slot1:ItemSlot;
      
      private var downItemCls:String = null;
      
      public var _showTab:int = 0;
      
      private var _109532667slot9:ItemSlot;
      
      private var _2115046240shopSlot4:ShopSlot;
      
      private var _899454813slot16:ItemSlot;
      
      private var _1951567364dslot13:ItemSlot;
      
      private var _133022078firstTile:Tile;
      
      private var _1322519536dslot2:ItemSlot;
      
      private var showItemListDown:Array = null;
      
      private var _109532664slot6:ItemSlot;
      
      private var _shopShowList:Array;
      
      private var _1280534524downItem1:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2143325187itemTileD:Tile;
      
      private var _296401653updateDown:BasicGlowButton;
      
      private var _109532661slot3:ItemSlot;
      
      private var _2115046242shopSlot2:ShopSlot;
      
      private var _899454818slot11:ItemSlot;
      
      private var _1951567362dslot11:ItemSlot;
      
      private var _1322519533dslot5:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _2114215424shopTileD:Tile;
      
      private var _1951567369dslot18:ItemSlot;
      
      private var _2115046244shopSlot0:ShopSlot;
      
      private var _899454815slot14:ItemSlot;
      
      private var upItemType:int = -1;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _1322519530dslot8:ItemSlot;
      
      private var _1647659402pageSelectorD:PageSelector;
      
      public var eFuncPanel:Object;
      
      private const SHOP_SLOT_NUM:int = 6;
      
      private var _1951567367dslot16:ItemSlot;
      
      private var _109532665slot7:ItemSlot;
      
      private var _899454812slot17:ItemSlot;
      
      private var _saleList:Object = null;
      
      private var _1322519535dslot3:ItemSlot;
      
      private var _109532662slot4:ItemSlot;
      
      private var _1951567365dslot14:ItemSlot;
      
      private var downItemList:Object = null;
      
      private var _1322519529dslot9:ItemSlot;
      
      private var _selectedSlot:ShopSlot;
      
      private var _1280534523downItem0:BasicGlowButton;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _899454817slot12:ItemSlot;
      
      private var _1322519532dslot6:ItemSlot;
      
      private var _2115046241shopSlot3:ShopSlot;
      
      private const NUM_PER_PAGE:int = 18;
      
      private var _1951567363dslot12:ItemSlot;
      
      private var _1554086441tabDown:ViewStack;
      
      private var _839632818upItem:BasicGlowButton;
      
      private var _899454814slot15:ItemSlot;
      
      private var _1322519537dslot1:ItemSlot;
      
      private var _2115046239shopSlot5:ShopSlot;
      
      private var _2115046243shopSlot1:ShopSlot;
      
      private var _109532666slot8:ItemSlot;
      
      private var _1951567361dslot10:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _109532663slot5:ItemSlot;
      
      private var _899454819slot10:ItemSlot;
      
      private var _1951567368dslot17:ItemSlot;
      
      private var showItemListUp:Array = null;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1322519534dslot4:ItemSlot;
      
      private var downItemType:int = -1;
      
      private var _itemList:Object = null;
      
      private var _899454811slot18:ItemSlot;
      
      private var _109532660slot2:ItemSlot;
      
      public var _EquipFuncBag_Canvas1:Canvas;
      
      public var _EquipFuncBag_Canvas2:Canvas;
      
      public var _EquipFuncBag_Canvas3:Canvas;
      
      private var _isRefreshing:Boolean = false;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _899454816slot13:ItemSlot;
      
      private var _1951567366dslot15:ItemSlot;
      
      private var _1322595652updateUp:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _1322519531dslot7:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":240,
               "height":367,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"upItem",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":true,
                        "x":5,
                        "y":4,
                        "styleName":"HorizontalTab",
                        "width":50,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"updateUp",
                  "events":{"click":"__updateUp_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":175,
                        "y":4,
                        "styleName":"HorizontalTab",
                        "width":40,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":21,
                        "width":240,
                        "height":146,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_EquipFuncBag_Canvas1",
                           "stylesFactory":function():void
                           {
                              this.top = "3";
                              this.bottom = "3";
                              this.left = "4.5";
                              this.right = "4.5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Tile,
                                 "id":"firstTile",
                                 "stylesFactory":function():void
                                 {
                                    this.verticalGap = 4;
                                    this.horizontalGap = 3;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":0,
                                       "y":0,
                                       "percentWidth":100,
                                       "height":125,
                                       "direction":"horizontal",
                                       "horizontalScrollPolicy":"off",
                                       "verticalScrollPolicy":"off",
                                       "styleName":"TileSlot",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot1",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot3",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot4",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot5",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot6",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot7",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot8",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot9",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot10",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot11",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot12",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot13",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot14",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot15",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot16",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot17",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"slot18",
                                          "propertiesFactory":function():Object
                                          {
                                             return {"acceptable":false};
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":PageSelector,
                                 "id":"pageSelector",
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "2";
                                    this.horizontalCenter = "0";
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":170,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"downItem0",
                           "events":{"click":"__downItem0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"downItem1",
                           "events":{"click":"__downItem1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"updateDown",
                  "events":{"click":"__updateDown_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":175,
                        "y":170,
                        "styleName":"HorizontalTab",
                        "width":40,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tabDown",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":187,
                        "width":240,
                        "height":165,
                        "creationPolicy":"all",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipFuncBag_Canvas2",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "3";
                                       this.bottom = "3";
                                       this.left = "4.5";
                                       this.right = "4.5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"itemTileD",
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 4;
                                             this.horizontalGap = 3;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":0,
                                                "y":0,
                                                "percentWidth":100,
                                                "height":121,
                                                "direction":"horizontal",
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"TileSlot",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot3",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot4",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot5",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot6",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot7",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot8",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot9",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot10",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot11",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot12",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot13",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot14",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot15",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot16",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot17",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"dslot18",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"acceptable":false};
                                                   }
                                                })]
                                             };
                                          }
                                       })]};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "events":{"creationComplete":"___EquipFuncBag_SimpleCanvas4_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":240,
                                 "percentHeight":100,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipFuncBag_Canvas3",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "3";
                                       this.bottom = "3";
                                       this.left = "1.5";
                                       this.right = "1.5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"shopTileD",
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 4;
                                             this.horizontalGap = 3;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":0,
                                                "y":0,
                                                "percentWidth":100,
                                                "height":136,
                                                "direction":"horizontal",
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"TileSlot",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ShopSlot,
                                                   "id":"shopSlot0",
                                                   "events":{
                                                      "click":"__shopSlot0_click",
                                                      "doubleClick":"__shopSlot0_doubleClick"
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":112};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ShopSlot,
                                                   "id":"shopSlot1",
                                                   "events":{
                                                      "click":"__shopSlot1_click",
                                                      "doubleClick":"__shopSlot1_doubleClick"
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":112};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ShopSlot,
                                                   "id":"shopSlot2",
                                                   "events":{
                                                      "click":"__shopSlot2_click",
                                                      "doubleClick":"__shopSlot2_doubleClick"
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":112};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ShopSlot,
                                                   "id":"shopSlot3",
                                                   "events":{
                                                      "click":"__shopSlot3_click",
                                                      "doubleClick":"__shopSlot3_doubleClick"
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":112};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ShopSlot,
                                                   "id":"shopSlot4",
                                                   "events":{
                                                      "click":"__shopSlot4_click",
                                                      "doubleClick":"__shopSlot4_doubleClick"
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":112};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ShopSlot,
                                                   "id":"shopSlot5",
                                                   "events":{
                                                      "click":"__shopSlot5_click",
                                                      "doubleClick":"__shopSlot5_doubleClick"
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":112};
                                                   }
                                                })]
                                             };
                                          }
                                       })]};
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelectorD",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":328
                     };
                  }
               })]
            };
         }
      });
      
      private var upItemCls:String = null;
      
      public function EquipFuncBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 240;
         this.height = 367;
         this.addEventListener("creationComplete",___EquipFuncBag_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EquipFuncBag._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopTileD() : Tile
      {
         return this._2114215424shopTileD;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot10() : ItemSlot
      {
         return this._1951567361dslot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get downItem0() : BasicGlowButton
      {
         return this._1280534523downItem0;
      }
      
      [Bindable(event="propertyChange")]
      public function get downItem1() : BasicGlowButton
      {
         return this._1280534524downItem1;
      }
      
      public function set dslot11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567362dslot11;
         if(_loc2_ !== param1)
         {
            this._1951567362dslot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot11",_loc2_,param1));
         }
      }
      
      private function _EquipFuncBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[180];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[187];
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[185];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[186];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[187];
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.BANKPANEL_S[2];
      }
      
      public function set dslot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567363dslot12;
         if(_loc2_ !== param1)
         {
            this._1951567363dslot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot16() : ItemSlot
      {
         return this._1951567367dslot16;
      }
      
      public function __shopSlot3_click(param1:MouseEvent) : void
      {
         shopClickHandler(param1);
      }
      
      public function set dslot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567361dslot10;
         if(_loc2_ !== param1)
         {
            this._1951567361dslot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot12() : ItemSlot
      {
         return this._1951567363dslot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot13() : ItemSlot
      {
         return this._1951567364dslot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot15() : ItemSlot
      {
         return this._1951567366dslot15;
      }
      
      public function set dslot16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567367dslot16;
         if(_loc2_ !== param1)
         {
            this._1951567367dslot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot16",_loc2_,param1));
         }
      }
      
      public function set dslot17(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567368dslot17;
         if(_loc2_ !== param1)
         {
            this._1951567368dslot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot17",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot11() : ItemSlot
      {
         return this._1951567362dslot11;
      }
      
      private function addSlotListener() : void
      {
         _core.data.addEventListener(GamePredef.EVENT_REFRESH_FUNCSLOTS,refreshEquipBag);
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot14() : ItemSlot
      {
         return this._1951567365dslot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot1() : ItemSlot
      {
         return this._1322519537dslot1;
      }
      
      public function set dslot13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567364dslot13;
         if(_loc2_ !== param1)
         {
            this._1951567364dslot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot18() : ItemSlot
      {
         return this._1951567369dslot18;
      }
      
      public function refreshSlots(param1:Object) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ <= NUM_PER_PAGE)
         {
            if(Boolean(this["slot" + _loc2_].slotData) && ToolKit.isEqual(this["slot" + _loc2_].slotData.sid,param1.sid))
            {
               this["slot" + _loc2_].giid = param1.giid;
               return;
            }
            if(Boolean(this["dslot" + _loc2_].slotData) && ToolKit.isEqual(this["dslot" + _loc2_].slotData.sid,param1.sid))
            {
               this["dslot" + _loc2_].giid = param1.giid;
            }
            _loc2_++;
         }
      }
      
      public function set dslot15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567366dslot15;
         if(_loc2_ !== param1)
         {
            this._1951567366dslot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot15",_loc2_,param1));
         }
      }
      
      public function ___EquipFuncBag_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot2() : ItemSlot
      {
         return this._1322519536dslot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot17() : ItemSlot
      {
         return this._1951567368dslot17;
      }
      
      private function clearShopPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < SHOP_SLOT_NUM)
         {
            this["shopSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function set dslot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519537dslot1;
         if(_loc2_ !== param1)
         {
            this._1322519537dslot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot1",_loc2_,param1));
         }
      }
      
      public function set dslot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519536dslot2;
         if(_loc2_ !== param1)
         {
            this._1322519536dslot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot2",_loc2_,param1));
         }
      }
      
      public function set dslot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519532dslot6;
         if(_loc2_ !== param1)
         {
            this._1322519532dslot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot3() : ItemSlot
      {
         return this._1322519535dslot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot9() : ItemSlot
      {
         return this._1322519529dslot9;
      }
      
      public function set dslot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519535dslot3;
         if(_loc2_ !== param1)
         {
            this._1322519535dslot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot3",_loc2_,param1));
         }
      }
      
      public function set dslot18(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567369dslot18;
         if(_loc2_ !== param1)
         {
            this._1951567369dslot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot18",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot5() : ItemSlot
      {
         return this._1322519533dslot5;
      }
      
      public function __shopSlot2_doubleClick(param1:MouseEvent) : void
      {
         shopDClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot8() : ItemSlot
      {
         return this._1322519530dslot8;
      }
      
      public function set dslot7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519531dslot7;
         if(_loc2_ !== param1)
         {
            this._1322519531dslot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot7",_loc2_,param1));
         }
      }
      
      public function set dslot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519530dslot8;
         if(_loc2_ !== param1)
         {
            this._1322519530dslot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot8",_loc2_,param1));
         }
      }
      
      public function set dslot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519534dslot4;
         if(_loc2_ !== param1)
         {
            this._1322519534dslot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot4",_loc2_,param1));
         }
      }
      
      public function set dslot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519533dslot5;
         if(_loc2_ !== param1)
         {
            this._1322519533dslot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot5",_loc2_,param1));
         }
      }
      
      public function set slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot6() : ItemSlot
      {
         return this._1322519532dslot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot7() : ItemSlot
      {
         return this._1322519531dslot7;
      }
      
      public function __shopSlot0_click(param1:MouseEvent) : void
      {
         shopClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      public function set slot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemTileD() : Tile
      {
         return this._2143325187itemTileD;
      }
      
      [Bindable(event="propertyChange")]
      public function get dslot4() : ItemSlot
      {
         return this._1322519534dslot4;
      }
      
      private function getAllShopList() : void
      {
         var _loc5_:String = null;
         _saleList = {};
         var _loc1_:Object = getShopListByName(Language.SYSTEMSHOPPANEL_S[0]);
         var _loc2_:Object = getShopListByName(Language.SYSTEMSHOPPANEL_S[2]);
         var _loc3_:Object = getShopListByName(Language.SYSTEMSHOPPANEL_S[5]);
         var _loc4_:Object = getShopListByName(Language.SYSTEMSHOPPANEL_S[15]);
         for(_loc5_ in _loc1_)
         {
            if(!_saleList[_loc5_])
            {
               _saleList[_loc5_] = _loc1_[_loc5_];
            }
         }
         for(_loc5_ in _loc2_)
         {
            if(!_saleList[_loc5_])
            {
               _saleList[_loc5_] = _loc2_[_loc5_];
            }
         }
         for(_loc5_ in _loc3_)
         {
            if(!_saleList[_loc5_])
            {
               _saleList[_loc5_] = _loc3_[_loc5_];
            }
         }
         for(_loc5_ in _loc4_)
         {
            if(!_saleList[_loc5_])
            {
               _saleList[_loc5_] = _loc4_[_loc5_];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ItemSlot
      {
         return this._109532667slot9;
      }
      
      public function set shopTileD(param1:Tile) : void
      {
         var _loc2_:Object = this._2114215424shopTileD;
         if(_loc2_ !== param1)
         {
            this._2114215424shopTileD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopTileD",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : ItemSlot
      {
         return this._109532662slot4;
      }
      
      private function getShopListByName(param1:String) : Object
      {
         var _loc3_:* = undefined;
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_SHOP][param1];
         for(_loc3_ in _loc2_)
         {
            if(_loc2_[_loc3_])
            {
               return _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_loc2_[_loc3_].id];
            }
         }
         return null;
      }
      
      public function set updateDown(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._296401653updateDown;
         if(_loc2_ !== param1)
         {
            this._296401653updateDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"updateDown",_loc2_,param1));
         }
      }
      
      public function __downItem0_click(param1:MouseEvent) : void
      {
         tabDownClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ItemSlot
      {
         return this._109532661slot3;
      }
      
      public function set itemTileD(param1:Tile) : void
      {
         var _loc2_:Object = this._2143325187itemTileD;
         if(_loc2_ !== param1)
         {
            this._2143325187itemTileD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemTileD",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ItemSlot
      {
         return this._109532664slot6;
      }
      
      public function set dslot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1951567365dslot14;
         if(_loc2_ !== param1)
         {
            this._1951567365dslot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot14",_loc2_,param1));
         }
      }
      
      private function onShopPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["shopSlot" + _loc4_].type = _shopShowList[_loc3_].type;
            this["shopSlot" + _loc4_].slotData = _shopShowList[_loc3_].slotData;
            this["shopSlot" + _loc4_].stackNum = _shopShowList[_loc3_].stackNum;
            this["shopSlot" + _loc4_].giid = _shopShowList[_loc3_].giid;
            this["shopSlot" + _loc4_].visible = true;
            _loc4_++;
         }
      }
      
      public function set dslot9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1322519529dslot9;
         if(_loc2_ !== param1)
         {
            this._1322519529dslot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dslot9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectorD() : PageSelector
      {
         return this._1647659402pageSelectorD;
      }
      
      public function ___EquipFuncBag_SimpleCanvas4_creationComplete(param1:FlexEvent) : void
      {
         getAllShopList();
      }
      
      [Bindable(event="propertyChange")]
      public function get upItem() : BasicGlowButton
      {
         return this._839632818upItem;
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= NUM_PER_PAGE)
         {
            this["slot" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      public function set updateUp(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1322595652updateUp;
         if(_loc2_ !== param1)
         {
            this._1322595652updateUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"updateUp",_loc2_,param1));
         }
      }
      
      public function __shopSlot5_click(param1:MouseEvent) : void
      {
         shopClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : ItemSlot
      {
         return this._109532666slot8;
      }
      
      private function buy() : void
      {
         var bagpanel:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuy(true);
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot4() : ShopSlot
      {
         return this._2115046240shopSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot5() : ShopSlot
      {
         return this._2115046239shopSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : ItemSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : ItemSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : ItemSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : ItemSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : ItemSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : ItemSlot
      {
         return this._899454812slot17;
      }
      
      public function __updateUp_click(param1:MouseEvent) : void
      {
         upItemFresh();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : ItemSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : ItemSlot
      {
         return this._899454819slot10;
      }
      
      public function __shopSlot3_doubleClick(param1:MouseEvent) : void
      {
         shopDClickHandler(param1);
      }
      
      private function shopClickHandler(param1:Event) : void
      {
         clearSelection();
         var _loc2_:ShopSlot = ShopSlot(param1.currentTarget);
         _loc2_.selected = true;
         _selectedSlot = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : ItemSlot
      {
         return this._899454811slot18;
      }
      
      public function set upItem(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._839632818upItem;
         if(_loc2_ !== param1)
         {
            this._839632818upItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upItem",_loc2_,param1));
         }
      }
      
      private function addItemToShopList(param1:Object) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.slotData = param1;
         _loc2_.type = param1.type;
         _loc2_.giid = param1.itemId;
         _loc2_.quality = param1.quality;
         _loc2_.st = param1.st;
         if(_loc2_.st == 3 && !isSystemShopSlot(_loc2_.slotData.sid))
         {
            return;
         }
         if(_loc2_.st == Number(GamePredef.SHOP_SELL_TYPE_HIDE))
         {
            return;
         }
         _shopShowList.push(_loc2_);
      }
      
      public function __shopSlot2_click(param1:MouseEvent) : void
      {
         shopClickHandler(param1);
      }
      
      public function set slot9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            showItem(_showTab,_itemList);
         }
      }
      
      public function set pageSelectorD(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1647659402pageSelectorD;
         if(_loc2_ !== param1)
         {
            this._1647659402pageSelectorD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectorD",_loc2_,param1));
         }
      }
      
      public function set firstTile(param1:Tile) : void
      {
         var _loc2_:Object = this._133022078firstTile;
         if(_loc2_ !== param1)
         {
            this._133022078firstTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstTile",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get updateDown() : BasicGlowButton
      {
         return this._296401653updateDown;
      }
      
      private function updateView(param1:int = 0, param2:Object = null) : void
      {
         switch(param1)
         {
            case 0:
               upItemType = GamePredef.TBL_EQUIPT_INSTANCE;
               downItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[180];
               upItemCls = "equipt";
               downItemCls = "matrl";
               _saltType = Language.SYSTEMSHOPPANEL_S[7];
               break;
            case 1:
               upItemType = GamePredef.TBL_EQUIPT_INSTANCE;
               downItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[180];
               upItemCls = "equipt";
               downItemCls = "matrl";
               break;
            case 2:
               upItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[181];
               upItemCls = "matrl";
               downItemType = -1;
               downItemCls = null;
               break;
            case 3:
               upItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[182];
               upItemCls = "jewel";
               downItemType = -1;
               downItemCls = null;
               break;
            case 4:
               upItemType = GamePredef.TBL_EQUIPT_INSTANCE;
               downItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[183];
               upItemCls = "mw";
               downItemCls = "mw_m";
               break;
            case 5:
               upItemType = GamePredef.TBL_EQUIPT_INSTANCE;
               downItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[184];
               upItemCls = "pet";
               downItemCls = "pet_m";
               break;
            case 99:
               upItemType = GamePredef.TBL_EQUIPT_INSTANCE;
               downItemType = GamePredef.TBL_ITEM_INSTANCE;
               upItem.label = Language.EQUIPTFUNCPANEL_U[180];
               upItemCls = "equipt";
               downItemCls = "matrl";
         }
         upItemFresh();
         if(param1 == 2 || param1 == 3)
         {
            tabDownClick(1);
         }
         else
         {
            tabDownClick(0);
         }
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
      
      private function dClickHandler(param1:Event) : void
      {
         trace(" equFunc dClick ");
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
      }
      
      private function isSystemShopSlot(param1:int) : Boolean
      {
         var _loc2_:String = null;
         for(_loc2_ in GamePredef.SYSTEM_SHOP_ID)
         {
            if(param1 == GamePredef.SYSTEM_SHOP_ID[_loc2_])
            {
               return true;
            }
         }
         return false;
      }
      
      public function __shopSlot4_doubleClick(param1:MouseEvent) : void
      {
         shopDClickHandler(param1);
      }
      
      public function __updateDown_click(param1:MouseEvent) : void
      {
         downFresh();
      }
      
      private function showSaleItems() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         _shopShowList = new Array();
         if(!_itemList || _itemList.type < 0 && _itemList.type != -2)
         {
            clearShopPage();
            pageSelectorD.initPageSeletor(0,SHOP_SLOT_NUM);
            return;
         }
         for each(_loc1_ in _saleList)
         {
            _loc2_ = _core.getTemplateData(_loc1_.type,_loc1_.itemId,false);
            if(_itemList.type == 1)
            {
               if(_itemList.idList.indexOf(Number(_loc1_.itemId)) >= 0)
               {
                  addItemToShopList(_loc1_);
               }
            }
            else if(_itemList.type == 2)
            {
               if(_itemList.val == Number(_loc2_.type))
               {
                  addItemToShopList(_loc1_);
               }
            }
            else if(_itemList.type == -2)
            {
               if(_itemList.idList.indexOf(Number(_loc2_.type)) >= 0)
               {
                  addItemToShopList(_loc1_);
               }
            }
         }
         _shopShowList.sortOn("quality",Array.NUMERIC);
         initShopPage();
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
      
      public function set shopSlot0(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046244shopSlot0;
         if(_loc2_ !== param1)
         {
            this._2115046244shopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot0",_loc2_,param1));
         }
      }
      
      private function buySelected(param1:int) : void
      {
         _core.remote.buySystemItemClient(_selectedSlot.slotData.id,param1);
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
      
      public function __shopSlot0_doubleClick(param1:MouseEvent) : void
      {
         shopDClickHandler(param1);
      }
      
      private function onDownPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ - 1 + param1;
            this["dslot" + _loc4_].type = showItemListDown[_loc3_].type;
            this["dslot" + _loc4_].slotData = showItemListDown[_loc3_].slotData;
            this["dslot" + _loc4_].stackNum = showItemListDown[_loc3_].stackNum;
            this["dslot" + _loc4_].giid = showItemListDown[_loc3_].giid;
            this["dslot" + _loc4_].update();
            _loc4_++;
         }
      }
      
      public function set slot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
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
      
      public function set slot17(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function __shopSlot4_click(param1:MouseEvent) : void
      {
         shopClickHandler(param1);
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
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      public function set slot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
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
      
      public function set slot13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      public function downItemFresh() : void
      {
         showItemListDown = getItemList(downItemType,downItemCls,_itemList);
         pageSelectorD.onPageChanged = onDownPageChanged;
         pageSelectorD.onPageCleared = clearDownPage;
         pageSelectorD.initPageSeletor(showItemListDown.length,NUM_PER_PAGE);
      }
      
      public function set slot11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      private function addSlotEventListener() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 18)
         {
            this["slot" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,eFuncPanel.funcBagClickHandler);
            this["dslot" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,eFuncPanel.funcBagClickHandler);
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get updateUp() : BasicGlowButton
      {
         return this._1322595652updateUp;
      }
      
      public function set slot18(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      public function set slot16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function setSlot(param1:Object) : void
      {
         _dm.initSlotData(param1);
         updateView(_showTab,_itemList);
      }
      
      public function upItemFresh() : void
      {
         showItemListUp = getItemList(upItemType,upItemCls);
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(showItemListUp.length,NUM_PER_PAGE);
      }
      
      public function __shopSlot1_click(param1:MouseEvent) : void
      {
         shopClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EquipFuncBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EquipFuncBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_EquipFuncBagWatcherSetupUtil");
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
      
      public function __downItem1_click(param1:MouseEvent) : void
      {
         tabDownClick(1);
      }
      
      public function set tabDown(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1554086441tabDown;
         if(_loc2_ !== param1)
         {
            this._1554086441tabDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabDown",_loc2_,param1));
         }
      }
      
      private function downFresh() : void
      {
         tabDownClick(tabDown.selectedIndex);
      }
      
      public function __shopSlot1_doubleClick(param1:MouseEvent) : void
      {
         shopDClickHandler(param1);
      }
      
      public function showItem(param1:int = 0, param2:Object = null) : void
      {
         _showTab = param1;
         _itemList = param2;
         if(visible)
         {
            _isRefreshing = true;
            updateView(param1,param2);
            _isRefreshing = false;
         }
      }
      
      public function __shopSlot5_doubleClick(param1:MouseEvent) : void
      {
         shopDClickHandler(param1);
      }
      
      private function _EquipFuncBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[180];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upItem.label = param1;
         },"upItem.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[187];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            updateUp.label = param1;
         },"updateUp.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFuncBag_Canvas1.label = param1;
         },"_EquipFuncBag_Canvas1.label");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[185];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            downItem0.label = param1;
         },"downItem0.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[186];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            downItem1.label = param1;
         },"downItem1.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[187];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            updateDown.label = param1;
         },"updateDown.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFuncBag_Canvas2.label = param1;
         },"_EquipFuncBag_Canvas2.label");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot1.slotType = param1;
         },"dslot1.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot2.slotType = param1;
         },"dslot2.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot3.slotType = param1;
         },"dslot3.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot4.slotType = param1;
         },"dslot4.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot5.slotType = param1;
         },"dslot5.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot6.slotType = param1;
         },"dslot6.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot7.slotType = param1;
         },"dslot7.slotType");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot8.slotType = param1;
         },"dslot8.slotType");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot9.slotType = param1;
         },"dslot9.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot10.slotType = param1;
         },"dslot10.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot11.slotType = param1;
         },"dslot11.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot12.slotType = param1;
         },"dslot12.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot13.slotType = param1;
         },"dslot13.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot14.slotType = param1;
         },"dslot14.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot15.slotType = param1;
         },"dslot15.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot16.slotType = param1;
         },"dslot16.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot17.slotType = param1;
         },"dslot17.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            dslot18.slotType = param1;
         },"dslot18.slotType");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFuncBag_Canvas3.label = param1;
         },"_EquipFuncBag_Canvas3.label");
         result[43] = binding;
         return result;
      }
      
      private function clearDownPage() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= NUM_PER_PAGE)
         {
            this["dslot" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ <= 5)
         {
            this["shopSlot" + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      private function refreshEquipBag(param1:GameDataEvent) : void
      {
         if(!visible || _isRefreshing)
         {
            return;
         }
         if(Boolean(param1.data) && Boolean(param1.data.numOnly))
         {
            refreshStackNum(param1.data.insId,param1.data.stackNum);
         }
         else if(Boolean(param1.data) && Boolean(param1.data.id) && Boolean(param1.data.itemList))
         {
            showItem(param1.data.id,param1.data.itemList);
         }
         else
         {
            upItemFresh();
            if(tabDown.selectedIndex == 0)
            {
               downItemFresh();
            }
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ - 1 + param1;
            this["slot" + _loc4_].type = showItemListUp[_loc3_].type;
            this["slot" + _loc4_].slotData = showItemListUp[_loc3_].slotData;
            this["slot" + _loc4_].stackNum = showItemListUp[_loc3_].stackNum;
            this["slot" + _loc4_].giid = showItemListUp[_loc3_].giid;
            this["slot" + _loc4_].update();
            _loc4_++;
         }
      }
      
      private function getItemList(param1:int = -1, param2:String = null, param3:Object = null) : Array
      {
         var _loc5_:Array = null;
         var _loc6_:Boolean = false;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         var _loc13_:String = null;
         var _loc14_:Object = null;
         var _loc4_:Array = new Array();
         if(Boolean(_dm.bagSlotIndex) && Boolean(_dm.bagSlotIndex[param1]))
         {
            _loc5_ = null;
            _loc6_ = false;
            if(!param3 || param3.type < 0)
            {
               switch(param2)
               {
                  case "equipt":
                     _loc5_ = [GamePredef.ITEM_KIND_MAINHAND,GamePredef.ITEM_KIND_SUBHAND,GamePredef.ITEM_KIND_DEFENCE,GamePredef.ITEM_KIND_JEWELRY];
                     break;
                  case "matrl":
                     _loc5_ = [GamePredef.ITEM_TYPE_DIAMOND,GamePredef.ITEM_TYPE_METAL,GamePredef.ITEM_TYPE_WOOD,GamePredef.ITEM_TYPE_JADE,GamePredef.ITEM_TYPE_CLOTH,GamePredef.ITEM_TYPE_FUR];
                     break;
                  case "jewel":
                     _loc5_ = [GamePredef.ITEM_TYPE_JEWEL];
                     break;
                  case "mw":
                     _loc5_ = [GamePredef.ITEM_KIND_MAGICWEAPON];
                     break;
                  case "mw_m":
                     _loc5_ = [GamePredef.ITEM_TYPE_MW_REPAIR,GamePredef.ITEM_TYPE_MW_SKILL_RESET,GamePredef.ITEM_TYPE_MW_TRANS,GamePredef.ITEM_TYPE_MW_STAGE_EIGHT];
                     break;
                  case "pet":
                     _loc5_ = [GamePredef.ITEM_KIND_PETEQU];
                     break;
                  case "pet_m":
                     _loc5_ = [GamePredef.ITEM_TYPE_PETEQU_LEVELUP,GamePredef.ITEM_TYPE_PETEQU_MODCOLOR,GamePredef.ITEM_TYPE_STAR];
               }
            }
            for(_loc8_ in _dm.bagSlotIndex[param1])
            {
               if(!(Boolean(param3) && Boolean(param3.type == 1) && param3.idList.indexOf(Number(_loc8_)) < 0))
               {
                  _loc7_ = _dm.bagSlotIndex[param1][_loc8_];
                  if(_loc7_)
                  {
                     _loc9_ = _core.getTemplateData(param1 + 1,Number(_loc8_),false);
                     if(!(Boolean(param3) && Boolean(param3.type == 2) && Number(_loc9_.type) != param3.val))
                     {
                        if(param2 == "equipt" || param2 == "pet" || param2 == "mw")
                        {
                           _loc11_ = int(_loc9_.kind);
                        }
                        else
                        {
                           _loc11_ = int(_loc9_.type);
                        }
                        for(_loc13_ in _loc7_)
                        {
                           _loc10_ = _dm.sList[_loc7_[_loc13_]];
                           if((Boolean(_loc10_)) && Boolean(_core.data.isBagSlot(Number(_loc10_.sid))) && (!_loc5_ || _loc5_.indexOf(_loc11_) >= 0))
                           {
                              _loc12_ = _dm.getGameData(_loc10_.type,_loc10_.itemId);
                              if(!(param2 == "pet" && _loc10_.stackNum <= 0))
                              {
                                 _loc14_ = new Object();
                                 if(_loc12_)
                                 {
                                    _loc14_.color = _loc12_.color;
                                 }
                                 else
                                 {
                                    _loc14_.color = 0;
                                 }
                                 _loc14_.slotData = _loc10_;
                                 _loc14_.type = _loc10_.type;
                                 _loc14_.giid = _loc10_.itemId;
                                 _loc14_.stackNum = _loc10_.stackNum;
                                 _loc4_.push(_loc14_);
                              }
                           }
                        }
                     }
                  }
               }
            }
            _loc4_.sortOn("color",Array.NUMERIC);
         }
         return _loc4_;
      }
      
      private function shopDClickHandler(param1:Event) : void
      {
         var _loc2_:ShopSlot = ShopSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _loc2_.selected = true;
         buy();
      }
      
      private function refreshStackNum(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 1;
         while(_loc3_ <= NUM_PER_PAGE)
         {
            if(ToolKit.isEqual(this["slot" + _loc3_].giid,param1))
            {
               this["slot" + _loc3_].stackNum = param2;
               this["slot" + _loc3_].update();
               return;
            }
            if(ToolKit.isEqual(this["dslot" + _loc3_].giid,param1))
            {
               this["dslot" + _loc3_].stackNum = param2;
               this["dslot" + _loc3_].update();
            }
            _loc3_++;
         }
      }
      
      public function initView() : void
      {
         addSlotListener();
         firstTimeFlag = false;
         if(!_dm.sInited)
         {
            _core.remote.call("getInitSlot",new Responder(setSlot));
         }
         else
         {
            updateView(_showTab,_itemList);
         }
         addSlotEventListener();
      }
      
      private function initShopPage() : void
      {
         pageSelectorD.onPageChanged = onShopPageChanged;
         pageSelectorD.onPageCleared = clearShopPage;
         pageSelectorD.initPageSeletor(_shopShowList.length,SHOP_SLOT_NUM);
      }
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabDown() : ViewStack
      {
         return this._1554086441tabDown;
      }
      
      public function set slot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      private function tabDownClick(param1:int) : void
      {
         tabDown.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= tabDown.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["downItem" + _loc2_].selected = true;
            }
            else
            {
               this["downItem" + _loc2_].selected = false;
            }
            _loc2_++;
         }
         if(param1 == 1)
         {
            showSaleItems();
         }
         else
         {
            downItemFresh();
         }
      }
      
      public function set slot7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      public function set slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : ItemSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : ItemSlot
      {
         return this._109532665slot7;
      }
      
      public function doBuy(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            if(_selectedSlot)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               _loc3_.numStepper.enabled = true;
               _loc3_.parent = DragableCanvas(_core.view.getUI(ViewManager.PANEL_EQUIPTFUNC));
               _loc3_.showSelected(_selectedSlot,null,NumPanel.TYPE_BUY,buySelected);
               _loc3_.closeWith(DragableCanvas(_core.view.getUI(ViewManager.PANEL_EQUIPTFUNC)));
               return;
            }
         }
      }
      
      public function set downItem0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1280534523downItem0;
         if(_loc2_ !== param1)
         {
            this._1280534523downItem0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"downItem0",_loc2_,param1));
         }
      }
      
      public function set downItem1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1280534524downItem1;
         if(_loc2_ !== param1)
         {
            this._1280534524downItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"downItem1",_loc2_,param1));
         }
      }
   }
}

