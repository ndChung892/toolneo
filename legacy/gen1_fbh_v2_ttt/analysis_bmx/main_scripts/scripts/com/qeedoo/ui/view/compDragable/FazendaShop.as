package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ShopSlot;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.Tile;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.CursorManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FazendaShop extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2115046235shopSlot9:ShopSlot;
      
      private var _2115046243shopSlot1:ShopSlot;
      
      private var _2106311967tileItem:Tile;
      
      mx_internal var _watchers:Array = [];
      
      private var _2115046236shopSlot8:ShopSlot;
      
      private var _2115046240shopSlot4:ShopSlot;
      
      private var _2115046237shopSlot7:ShopSlot;
      
      private var _2115046241shopSlot3:ShopSlot;
      
      private var _1141924045shopSlot10:ShopSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _FazendaShop_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2115046238shopSlot6:ShopSlot;
      
      private var _2115046242shopSlot2:ShopSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":420,
               "height":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FazendaShop_BasicTitleCanvas1"
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
                                    "id":"shopSlot1",
                                    "events":{"click":"__shopSlot1_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot2",
                                    "events":{"click":"__shopSlot2_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot3",
                                    "events":{"click":"__shopSlot3_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot4",
                                    "events":{"click":"__shopSlot4_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot5",
                                    "events":{"click":"__shopSlot5_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot6",
                                    "events":{"click":"__shopSlot6_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot7",
                                    "events":{"click":"__shopSlot7_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot8",
                                    "events":{"click":"__shopSlot8_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot9",
                                    "events":{"click":"__shopSlot9_click"}
                                 }),new UIComponentDescriptor({
                                    "type":ShopSlot,
                                    "id":"shopSlot10",
                                    "events":{"click":"__shopSlot10_click"}
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
      
      private var _2115046239shopSlot5:ShopSlot;
      
      private var _core:Core = Core.getInstance();
      
      public function FazendaShop()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 420;
         this.height = 300;
         this.addEventListener("creationComplete",___FazendaShop_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FazendaShop._watcherSetupUtil = param1;
      }
      
      public function __shopSlot1_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot1.slotData.id);
      }
      
      public function __shopSlot3_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot3.slotData.id);
      }
      
      public function __shopSlot9_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot9.slotData.id);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FazendaShop = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FazendaShop_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FazendaShopWatcherSetupUtil");
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
      
      public function __shopSlot5_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot5.slotData.id);
      }
      
      public function __shopSlot7_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot7.slotData.id);
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot3() : ShopSlot
      {
         return this._2115046241shopSlot3;
      }
      
      public function init() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc1_:Object = _core.data.gameData[GamePredef.TBL_MINERAL_TEMPLATE];
         for(_loc2_ in _loc1_)
         {
            _loc1_[_loc2_].type = GamePredef.TBL_MINERAL_TEMPLATE;
            _loc1_[_loc2_].itemId = _loc1_[_loc2_].id;
            _loc3_ = Language.FAZENDAPANEL_S[17].toString().replace("{time}",_loc1_[_loc2_].time);
            _loc1_[_loc2_].description += _loc3_;
            _loc4_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc1_[_loc2_].tid];
            _loc1_[_loc2_].info = Language.FAZENDAPANEL_S[18].toString().replace("{num}",_loc1_[_loc2_].num).replace("{name}",_loc4_.name);
            this["shopSlot" + _loc2_].type = GamePredef.TBL_MINERAL_TEMPLATE;
            this["shopSlot" + _loc2_].giid = _loc1_[_loc2_].id;
            this["shopSlot" + _loc2_].name = _loc1_[_loc2_].name;
            this["shopSlot" + _loc2_].slotData = _loc1_[_loc2_];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot6() : ShopSlot
      {
         return this._2115046238shopSlot6;
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
      
      private function mouseAction(param1:MouseEvent, param2:int) : void
      {
         CursorManager.removeAllCursors();
         _core.view.resoreMouse();
         param1.stopImmediatePropagation();
         var _loc3_:int = 160 + (param2 - 1) * 10;
         var _loc4_:Class = ResManager.MOUSE_ACTION_IMG[_loc3_];
         CursorManager.setCursor(_loc4_);
         _core.view.mouseState = _loc3_;
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot10() : ShopSlot
      {
         return this._1141924045shopSlot10;
      }
      
      private function _FazendaShop_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAZENDASHOPPANEL_U[0];
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
      
      public function __shopSlot2_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot2.slotData.id);
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
      
      public function __shopSlot4_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot4.slotData.id);
      }
      
      public function __shopSlot6_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot6.slotData.id);
      }
      
      public function __shopSlot8_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot8.slotData.id);
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
      
      public function set shopSlot5(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046239shopSlot5;
         if(_loc2_ !== param1)
         {
            this._2115046239shopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot5",_loc2_,param1));
         }
      }
      
      private function _FazendaShop_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDASHOPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FazendaShop_BasicTitleCanvas1.text = param1;
         },"_FazendaShop_BasicTitleCanvas1.text");
         result[0] = binding;
         return result;
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
      
      public function set shopSlot9(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046235shopSlot9;
         if(_loc2_ !== param1)
         {
            this._2115046235shopSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot9",_loc2_,param1));
         }
      }
      
      public function __shopSlot10_click(param1:MouseEvent) : void
      {
         mouseAction(param1,shopSlot10.slotData.id);
      }
      
      [Bindable(event="propertyChange")]
      public function get tileItem() : Tile
      {
         return this._2106311967tileItem;
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
      
      public function __tileItem_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function ___FazendaShop_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
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
      
      public function set tileItem(param1:Tile) : void
      {
         var _loc2_:Object = this._2106311967tileItem;
         if(_loc2_ !== param1)
         {
            this._2106311967tileItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileItem",_loc2_,param1));
         }
      }
   }
}

