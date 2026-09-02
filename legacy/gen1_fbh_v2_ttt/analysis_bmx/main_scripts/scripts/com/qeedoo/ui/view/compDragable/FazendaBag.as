package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FazendaBag extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _899454816slot13:ItemSlot;
      
      private var _1424273442nextPage:Button;
      
      private var _109532659slot1:ItemSlot;
      
      private var _109532667slot9:ItemSlot;
      
      private var _maxNumOfBagIndex:int = 0;
      
      private var _899454817slot12:ItemSlot;
      
      private var _133022078firstTile:Tile;
      
      private var _109532664slot6:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109532661slot3:ItemSlot;
      
      private var _899454818slot11:ItemSlot;
      
      private var _899454814slot15:ItemSlot;
      
      private var _109532658slot0:ItemSlot;
      
      private var _109532666slot8:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _2050561200bagtitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _109532663slot5:ItemSlot;
      
      private var _899454815slot14:ItemSlot;
      
      private var _899454819slot10:ItemSlot;
      
      private var _109532660slot2:ItemSlot;
      
      public var _FazendaBag_Label1:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109532665slot7:ItemSlot;
      
      public var _FazendaBag_Button2:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":260,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"bagtitle",
                  "events":{"creationComplete":"__bagtitle_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":163,
                        "height":153,
                        "y":40,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "id":"firstTile",
                           "stylesFactory":function():void
                           {
                              this.verticalGap = 4;
                              this.horizontalGap = 4;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":1,
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "styleName":"TileBagItem",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot0"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot1"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot2"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot3"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot4"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot5"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot6"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot7"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot8"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot9"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot10"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot11"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot12"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot13"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot14"
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"slot15"
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"nextPage",
                  "events":{"click":"__nextPage_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "x":120,
                        "y":200
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_FazendaBag_Button2",
                  "events":{"click":"___FazendaBag_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "x":25,
                        "y":200
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_FazendaBag_Label1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":230};
                  }
               })]
            };
         }
      });
      
      private var _bagIdOffset:int = 0;
      
      private var _109532662slot4:ItemSlot;
      
      public function FazendaBag()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 200;
         this.height = 260;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FazendaBag._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ItemSlot
      {
         return this._109532667slot9;
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
      public function get slot8() : ItemSlot
      {
         return this._109532666slot8;
      }
      
      public function __nextPage_click(param1:MouseEvent) : void
      {
         toOtherPage();
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
      
      private function updateView() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         if(!_core.player)
         {
            return;
         }
         var _loc1_:Object = _core.player.farmBag;
         if(_loc1_)
         {
            if(_maxNumOfBagIndex > 15)
            {
               nextPage.visible = true;
            }
            else
            {
               _bagIdOffset = 0;
               nextPage.visible = false;
            }
            _loc2_ = 0;
            while(_loc2_ < 16)
            {
               _loc3_ = _loc2_ + _bagIdOffset;
               if(_loc1_[_loc3_])
               {
                  _loc4_ = new Object();
                  _loc4_.ti = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc4_.ii = _loc1_[_loc3_].tid;
                  _loc4_.n = _loc1_[_loc3_].num;
                  _loc4_.q = _loc1_[_loc3_].c;
                  _loc4_.b = 1;
                  _loc4_.bid = _loc3_;
                  _loc5_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_[_loc3_].tid];
                  if(_loc5_)
                  {
                     this["slot" + _loc2_].slotData = _loc4_;
                     this["slot" + _loc2_].type = GamePredef.TBL_ITEM_TEMPLATE;
                     this["slot" + _loc2_].giid = _loc1_[_loc3_].tid;
                     this["slot" + _loc2_].stackNum = _loc1_[_loc3_].num;
                  }
               }
               else
               {
                  this["slot" + _loc2_].clean();
               }
               _loc2_++;
            }
         }
         else
         {
            clearView();
            _core.remote.call("getFarmBag",new Responder(onGetFarmBag));
         }
      }
      
      private function init() : void
      {
         _core.remote.call("getFarmBag",new Responder(onGetFarmBag));
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            this["slot" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,onSlotDClick);
            _loc1_++;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(initialized && param1)
         {
            updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : ItemSlot
      {
         return this._109532662slot4;
      }
      
      private function _FazendaBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDABAG_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bagtitle.text = param1;
         },"bagtitle.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot0.slotType = param1;
         },"slot0.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FARM_BAG;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDABAG_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextPage.label = param1;
         },"nextPage.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDABAG_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FazendaBag_Button2.label = param1;
         },"_FazendaBag_Button2.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDABAG_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FazendaBag_Label1.text = param1;
         },"_FazendaBag_Label1.text");
         result[19] = binding;
         return result;
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
      public function get nextPage() : Button
      {
         return this._1424273442nextPage;
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
      
      public function set slot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
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
      
      public function set slot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
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
      
      public function set slot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      private function findMaxIndexOfBag() : void
      {
         var _loc1_:String = null;
         _maxNumOfBagIndex = 0;
         for(_loc1_ in _core.player.farmBag)
         {
            if(Number(_loc1_) > _maxNumOfBagIndex)
            {
               _maxNumOfBagIndex = Number(_loc1_);
            }
         }
      }
      
      public function set nextPage(param1:Button) : void
      {
         var _loc2_:Object = this._1424273442nextPage;
         if(_loc2_ !== param1)
         {
            this._1424273442nextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPage",_loc2_,param1));
         }
      }
      
      public function ___FazendaBag_Button2_click(param1:MouseEvent) : void
      {
         _core.remote.getFarmBagAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get bagtitle() : BasicTitleCanvas
      {
         return this._2050561200bagtitle;
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
      
      private function onSlotDClick(param1:GameEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.slotData)
         {
            _core.remote.call("getFromFarmBag",null,_loc2_.slotData.bid,-1);
         }
      }
      
      public function __bagtitle_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      private function toOtherPage() : void
      {
         if(_bagIdOffset + 16 > _maxNumOfBagIndex)
         {
            _bagIdOffset = 0;
         }
         else
         {
            _bagIdOffset += 16;
         }
         updateView();
      }
      
      private function clearView() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            this["slot" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FazendaBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FazendaBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FazendaBagWatcherSetupUtil");
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
      public function get slot11() : ItemSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : ItemSlot
      {
         return this._899454817slot12;
      }
      
      public function set bagtitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._2050561200bagtitle;
         if(_loc2_ !== param1)
         {
            this._2050561200bagtitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagtitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : ItemSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : ItemSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : ItemSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : ItemSlot
      {
         return this._899454816slot13;
      }
      
      private function _FazendaBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAZENDABAG_U[0];
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Slot.SLOT_FARM_BAG;
         _loc1_ = Language.FAZENDABAG_U[3];
         _loc1_ = Language.FAZENDABAG_U[2];
         _loc1_ = Language.FAZENDABAG_U[1];
      }
      
      public function onUpFarmBag(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc2_:Object = _core.player.farmBag;
         if(_loc2_)
         {
            for(_loc3_ in param1)
            {
               if(param1[_loc3_] == null)
               {
                  delete _loc2_[_loc3_];
                  if(Number(_loc3_) == _maxNumOfBagIndex)
                  {
                     findMaxIndexOfBag();
                  }
               }
               else
               {
                  if(Number(_loc3_) > _maxNumOfBagIndex)
                  {
                     _maxNumOfBagIndex = Number(_loc3_);
                  }
                  _loc2_[_loc3_] = param1[_loc3_];
               }
            }
            updateView();
         }
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
      
      public function set slot0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532658slot0;
         if(_loc2_ !== param1)
         {
            this._109532658slot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot0",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get slot0() : ItemSlot
      {
         return this._109532658slot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ItemSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ItemSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : ItemSlot
      {
         return this._109532665slot7;
      }
      
      public function onGetFarmBag(param1:Object) : void
      {
         _core.player.farmBag = param1;
         findMaxIndexOfBag();
         updateView();
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
      public function get slot5() : ItemSlot
      {
         return this._109532663slot5;
      }
   }
}

