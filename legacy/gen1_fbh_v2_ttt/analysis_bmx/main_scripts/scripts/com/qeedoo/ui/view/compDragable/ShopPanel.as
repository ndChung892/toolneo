package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IPanelUI;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.ShopSlot;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.collections.ArrayCollection;
   import mx.containers.HBox;
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShopPanel extends DragableCanvas implements IPanelUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2115046235shopSlot9:ShopSlot;
      
      private var _1141924044shopSlot11:ShopSlot;
      
      private var _slotList:Object;
      
      private var _2115046236shopSlot8:ShopSlot;
      
      private var _2115046240shopSlot4:ShopSlot;
      
      private var _selectedSlot:ShopSlot;
      
      public var _ShopPanel_BasicGlowButton2:BasicGlowButton;
      
      public var _ShopPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _ShopPanel_BasicGlowButton4:BasicGlowButton;
      
      public var _ShopPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _2115046237shopSlot7:ShopSlot;
      
      private var _2115046241shopSlot3:ShopSlot;
      
      private var _1267797936_itemList:ArrayCollection = new ArrayCollection();
      
      public var shopType:int = 1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2115046238shopSlot6:ShopSlot;
      
      private var _2115046242shopSlot2:ShopSlot;
      
      public var _ShopPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2115046239shopSlot5:ShopSlot;
      
      public var _ShopPanel_RoundedLabel1:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _2115046243shopSlot1:ShopSlot;
      
      private var _2106311967tileItem:Tile;
      
      private var ITEM_COUNT_PER_PAGE:int;
      
      mx_internal var _watchers:Array = [];
      
      private var _2115046244shopSlot0:ShopSlot;
      
      private const ITEM_COUNT_PER_PAGE_NORMAL_SHOP:int = 12;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _laterTimer:Timer;
      
      private var currentNPCID:Number = -1;
      
      private var _1141924045shopSlot10:ShopSlot;
      
      private const ITEM_COUNT_PER_PAGE_NEW_SHOP:int = 9;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _slot:ISlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _autoOpenBag:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":460,
               "height":310,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ShopPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.top = "40";
                     this.bottom = "40";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "id":"tileItem",
                           "events":{"mouseDown":"__tileItem_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.horizontalAlign = "center";
                              this.top = "3";
                              this.paddingBottom = 5;
                              this.paddingLeft = 5;
                              this.paddingRight = 5;
                              this.paddingTop = 5;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "height":195,
                                 "width":386,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot0",
                                    "events":{
                                       "click":"__shopSlot0_click",
                                       "doubleClick":"__shopSlot0_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot1",
                                    "events":{
                                       "click":"__shopSlot1_click",
                                       "doubleClick":"__shopSlot1_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot2",
                                    "events":{
                                       "click":"__shopSlot2_click",
                                       "doubleClick":"__shopSlot2_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot3",
                                    "events":{
                                       "click":"__shopSlot3_click",
                                       "doubleClick":"__shopSlot3_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot4",
                                    "events":{
                                       "click":"__shopSlot4_click",
                                       "doubleClick":"__shopSlot4_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot5",
                                    "events":{
                                       "click":"__shopSlot5_click",
                                       "doubleClick":"__shopSlot5_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot6",
                                    "events":{
                                       "click":"__shopSlot6_click",
                                       "doubleClick":"__shopSlot6_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot7",
                                    "events":{
                                       "click":"__shopSlot7_click",
                                       "doubleClick":"__shopSlot7_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot8",
                                    "events":{
                                       "click":"__shopSlot8_click",
                                       "doubleClick":"__shopSlot8_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot9",
                                    "events":{
                                       "click":"__shopSlot9_click",
                                       "doubleClick":"__shopSlot9_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot10",
                                    "events":{
                                       "click":"__shopSlot10_click",
                                       "doubleClick":"__shopSlot10_doubleClick"
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot11",
                                    "events":{
                                       "click":"__shopSlot11_click",
                                       "doubleClick":"__shopSlot11_doubleClick"
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":204};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"_ShopPanel_RoundedLabel1",
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                           this.paddingLeft = 0;
                           this.paddingRight = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"width":173};
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"_ShopPanel_BasicGlowButton1",
                        "events":{"click":"___ShopPanel_BasicGlowButton1_click"},
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 0;
                           this.paddingRight = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"BtnNormalRed",
                              "width":38,
                              "height":19
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"_ShopPanel_BasicGlowButton2",
                        "events":{"click":"___ShopPanel_BasicGlowButton2_click"},
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 0;
                           this.paddingRight = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"BtnNormalRed",
                              "width":38,
                              "height":19
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"_ShopPanel_BasicGlowButton3",
                        "events":{"click":"___ShopPanel_BasicGlowButton3_click"},
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 0;
                           this.paddingRight = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"BtnNormalRed",
                              "width":61,
                              "height":19
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"_ShopPanel_BasicGlowButton4",
                        "events":{"click":"___ShopPanel_BasicGlowButton4_click"},
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 0;
                           this.paddingRight = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"BtnNormalRed",
                              "width":89,
                              "height":19
                           };
                        }
                     })]};
                  }
               })]
            };
         }
      });
      
      public function ShopPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 460;
         this.height = 310;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___ShopPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShopPanel._watcherSetupUtil = param1;
      }
      
      public function ___ShopPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __shopSlot3_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function dragOverHandler(param1:DragEvent) : void
      {
         DragManager.showFeedback(DragManager.MOVE);
      }
      
      public function __shopSlot10_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot7_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function init() : void
      {
         addEventListener(DragEvent.DRAG_ENTER,dragEnterHandler);
         addEventListener(DragEvent.DRAG_OVER,dragOverHandler);
         addEventListener(DragEvent.DRAG_DROP,dragDropHandler);
      }
      
      private function doubleClickHandler(param1:Event) : void
      {
         var _loc2_:ShopSlot = null;
         _loc2_ = ShopSlot(param1.currentTarget);
         if(_loc2_.giid >= 0)
         {
            _loc2_.selected = true;
            buy();
         }
      }
      
      public function showDataDirect(param1:int) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = _core.data.getData(GamePredef.TBL_SHOP,param1);
         if(_loc2_)
         {
            shopType = _loc2_.type;
            tileItem.visible = false;
            _selectedSlot = null;
            _itemList.source = [];
            _slotList = _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][param1];
            for each(_loc3_ in _slotList)
            {
               _loc3_.currentAmount = -1;
            }
            initView();
            show();
            setDataLater();
            currentNPCID = -1;
            if(shopType == 1)
            {
               ITEM_COUNT_PER_PAGE = ITEM_COUNT_PER_PAGE_NORMAL_SHOP;
            }
            else
            {
               ITEM_COUNT_PER_PAGE = ITEM_COUNT_PER_PAGE_NEW_SHOP;
            }
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
      
      public function ___ShopPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_REPAIR_NORMAL);
      }
      
      public function __shopSlot6_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot8_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot4_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
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
      
      public function __shopSlot0_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
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
      
      public function showData(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         if(param1.hide)
         {
            if(param1.hide == currentNPCID)
            {
               this.visible = false;
            }
         }
         else
         {
            shopType = _core.data.getData(GamePredef.TBL_SHOP,param1.shopId).type;
            tileItem.visible = false;
            _selectedSlot = null;
            _itemList.source = [];
            _slotList = _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][param1.shopId];
            for each(_loc2_ in _slotList)
            {
               _loc2_.currentAmount = -1;
            }
            initView();
            show();
            setDataLater();
            currentNPCID = param1.id;
            if(shopType == 1)
            {
               ITEM_COUNT_PER_PAGE = ITEM_COUNT_PER_PAGE_NORMAL_SHOP;
            }
            else
            {
               ITEM_COUNT_PER_PAGE = ITEM_COUNT_PER_PAGE_NEW_SHOP;
            }
         }
      }
      
      override public function hide() : void
      {
         if(_laterTimer != null)
         {
            _laterTimer.stop();
         }
         super.hide();
         if(_autoOpenBag)
         {
            _core.view.hide(ViewManager.PANEL_BAG);
            _autoOpenBag = false;
         }
      }
      
      private function mouseAction(param1:Event, param2:int) : void
      {
         param1.stopImmediatePropagation();
         if(param2 == GamePredef.ACTION_REPAIR_NOWEAR)
         {
         }
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[param2]);
         _core.view.mouseState = param2;
         _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_CHA;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot10() : ShopSlot
      {
         return this._1141924045shopSlot10;
      }
      
      public function __shopSlot0_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function onShopItemBuy(param1:Number) : void
      {
         _selectedSlot.slotData.currentAmount = param1;
         _selectedSlot.slotData = _selectedSlot.slotData;
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
      
      private function sell(param1:Number, param2:String = null) : void
      {
         _core.remote.sellItem(param1,param2);
         var _loc3_:Function = _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum;
         setTimeout(_loc3_,2000);
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot11() : ShopSlot
      {
         return this._1141924044shopSlot11;
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
      
      public function __shopSlot2_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
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
      
      public function set shopSlot0(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046244shopSlot0;
         if(_loc2_ !== param1)
         {
            this._2115046244shopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot0",_loc2_,param1));
         }
      }
      
      private function sortList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc3_.shopType = shopType;
            _loc2_.push(_loc3_);
         }
         return _loc2_.sortOn("position",Array.NUMERIC);
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
      
      public function __shopSlot4_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __shopSlot10_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
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
      
      public function __shopSlot8_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function ___ShopPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         Alert.show(Language.SHOPPANEL_S[3],"",3,this,repairAll);
      }
      
      private function set _itemList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1267797936_itemList;
         if(_loc2_ !== param1)
         {
            this._1267797936_itemList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_itemList",_loc2_,param1));
         }
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
      
      public function set shopSlot10(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924045shopSlot10;
         if(_loc2_ !== param1)
         {
            this._1141924045shopSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot10",_loc2_,param1));
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
      
      private function timerCompHander(param1:TimerEvent) : void
      {
         _laterTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,timerCompHander);
         _itemList.source = sortList(_slotList);
         tileItem.visible = true;
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(_itemList.length,ITEM_COUNT_PER_PAGE);
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            this["shopSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      private function dragDropHandler(param1:DragEvent) : void
      {
         var func:Function = null;
         var sellItem:Function = null;
         var event:DragEvent = param1;
         var iData:Object = _core.data.getGameData(_slot.slotData.type,_slot.slotData.itemId);
         if(Boolean(iData) && iData.color > 2)
         {
            if(_core.delPass)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     sell(_slot.slotData.id,_core.delPass);
                  }
               };
               Alert.show(Language.SHOPPANEL_S[0],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               sellItem = function(param1:String):void
               {
                  sell(_slot.slotData.id,MD5.hash(param1));
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.BAGPANEL_S[20],sellItem);
            }
         }
         else
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  sell(_slot.slotData.id);
               }
            };
            Alert.show(Language.SHOPPANEL_S[0],"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShopPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShopPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ShopPanelWatcherSetupUtil");
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
      
      private function repairPetEquAll(param1:CloseEvent) : void
      {
         var _loc2_:* = _core.battlePet;
         if(Boolean(param1) && Boolean(param1.detail == Alert.YES) && Boolean(_loc2_))
         {
            _core.remote.repairPetEquAll(_loc2_.id,1);
         }
      }
      
      public function __shopSlot11_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      private function buy() : void
      {
         var bagpanel:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
         };
         if(_selectedSlot.slotData.gt == 1)
         {
            if(_selectedSlot.slotData.gold > 0 && !bagpanel.goldSelected)
            {
               Alert.show(Language.SHOPPANEL_S[8],"",Alert.YES,null,null);
            }
            else if(_selectedSlot.slotData.money > 0 && !bagpanel.silverSelected)
            {
               Alert.show(Language.SHOPPANEL_S[9],"",Alert.YES,null,null);
            }
            else if(_selectedSlot.slotData.gold > 0 && Boolean(bagpanel.goldLockFlag))
            {
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
            }
            else if(_selectedSlot.slotData.money > 0 && Boolean(bagpanel.silverLockFlag))
            {
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.BAGPANEL_S[21],func);
            }
            else
            {
               doBuy(true);
            }
         }
         else if(_selectedSlot.slotData.gold > 0)
         {
            if(bagpanel.goldDisable())
            {
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
            }
            else
            {
               doBuy(true);
            }
         }
         else if(bagpanel.silverDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.BAGPANEL_S[21],func);
         }
         else
         {
            doBuy(true);
         }
      }
      
      private function _ShopPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicTitleCanvas1.text = param1;
         },"_ShopPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_RoundedLabel1.text = param1;
         },"_ShopPanel_RoundedLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_RoundedLabel1.toolTip = param1;
         },"_ShopPanel_RoundedLabel1.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton1.label = param1;
         },"_ShopPanel_BasicGlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton2.toolTip = param1;
         },"_ShopPanel_BasicGlowButton2.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton2.label = param1;
         },"_ShopPanel_BasicGlowButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton3.toolTip = param1;
         },"_ShopPanel_BasicGlowButton3.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton3.label = param1;
         },"_ShopPanel_BasicGlowButton3.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton4.toolTip = param1;
         },"_ShopPanel_BasicGlowButton4.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOPPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShopPanel_BasicGlowButton4.label = param1;
         },"_ShopPanel_BasicGlowButton4.label");
         result[9] = binding;
         return result;
      }
      
      public function __shopSlot5_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __shopSlot9_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __shopSlot1_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot5() : ShopSlot
      {
         return this._2115046239shopSlot5;
      }
      
      private function clickHandler(param1:Event) : void
      {
         var _loc2_:ShopSlot = null;
         clearSelection();
         _loc2_ = ShopSlot(param1.currentTarget);
         _loc2_.selected = true;
         _selectedSlot = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot0() : ShopSlot
      {
         return this._2115046244shopSlot0;
      }
      
      public function __shopSlot11_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot2() : ShopSlot
      {
         return this._2115046242shopSlot2;
      }
      
      private function dragEnterHandler(param1:DragEvent) : void
      {
         var _loc2_:ISlot = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ISlot;
            _slot = _loc2_;
            if(_loc2_.slotType == Slot.SLOT_BAG)
            {
               DragManager.acceptDragDrop(UIComponent(param1.currentTarget));
            }
         }
      }
      
      public function ___ShopPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         Alert.show(Language.SHOPPANEL_S[7],"",3,this,repairPetEquAll);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot6() : ShopSlot
      {
         return this._2115046238shopSlot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot8() : ShopSlot
      {
         return this._2115046236shopSlot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot1() : ShopSlot
      {
         return this._2115046243shopSlot1;
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
      public function get shopSlot7() : ShopSlot
      {
         return this._2115046237shopSlot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot9() : ShopSlot
      {
         return this._2115046235shopSlot9;
      }
      
      public function __shopSlot1_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot3_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot5_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot7_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      public function __shopSlot9_doubleClick(param1:MouseEvent) : void
      {
         doubleClickHandler(param1);
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < tileItem.numChildren)
         {
            ShopSlot(tileItem.getChildAt(_loc1_)).selected = false;
            _loc1_++;
         }
      }
      
      private function setDataLater() : void
      {
         if(_laterTimer != null)
         {
            _laterTimer.stop();
            _laterTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,timerCompHander);
         }
         _laterTimer = new Timer(500,1);
         _laterTimer.addEventListener(TimerEvent.TIMER_COMPLETE,timerCompHander);
         _laterTimer.start();
      }
      
      public function set tileItem(param1:Tile) : void
      {
         var _loc2_:Object = this._2106311967tileItem;
         if(_loc2_ !== param1)
         {
            this._2106311967tileItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileItem",_loc2_,param1));
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["shopSlot" + _loc4_].slotData = _itemList[_loc3_];
            this["shopSlot" + _loc4_].visible = true;
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _itemList() : ArrayCollection
      {
         return this._1267797936_itemList;
      }
      
      public function __shopSlot6_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __shopSlot2_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _ShopPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SHOPPANEL_U[3];
         _loc1_ = Language.SHOPPANEL_S[4];
         _loc1_ = Language.SHOPPANEL_S[5];
         _loc1_ = Language.SHOPPANEL_U[0];
         _loc1_ = Language.SHOPPANEL_S[1];
         _loc1_ = Language.SHOPPANEL_U[1];
         _loc1_ = Language.SHOPPANEL_S[2];
         _loc1_ = Language.SHOPPANEL_U[2];
         _loc1_ = Language.SHOPPANEL_S[6];
         _loc1_ = Language.SHOPPANEL_U[4];
      }
      
      private function repairAll(param1:CloseEvent) : void
      {
         if(Boolean(param1) && param1.detail == Alert.YES)
         {
            _core.remote.repairAll(2);
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tileItem() : Tile
      {
         return this._2106311967tileItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(visible && !param1)
         {
            if(_core.remote)
            {
               _core.remote.shopClosePanel();
            }
         }
         super.visible = param1;
      }
      
      public function __tileItem_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function ___ShopPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      public function doBuy(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_selectedSlot.slotData.gold > 0) && Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            else if(Boolean(_loc2_) && Boolean(_loc2_.silverSelected))
            {
               _loc2_.silverLockFlag = false;
            }
            if(_selectedSlot)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               _loc3_.parent = this;
               _loc3_.showSelected(_selectedSlot,null,2,onShopItemBuy);
               _loc3_.closeWith(this);
            }
         }
      }
      
      override public function show() : void
      {
         var _loc1_:Object = null;
         super.show();
         clearSelection();
         _loc1_ = _core.view.getUI(ViewManager.PANEL_BAG);
         if(!_loc1_.visible)
         {
            _loc1_.startFollow(this);
            _loc1_.show();
            _autoOpenBag = true;
         }
         else
         {
            _autoOpenBag = false;
         }
      }
   }
}

