package com.qeedoo.game.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ShopSlotVO implements IEventDispatcher
   {
      
      private var _1871571223itemDescription:String;
      
      private var _3575610type:Number;
      
      private var _2127804432itemColor:uint;
      
      private var _3681st:int;
      
      private var _1302660062stackNum:int;
      
      private var _1579499688moneyType2:Number;
      
      private var _1713519590moneyType:Number;
      
      private var _1177331774itemName:String;
      
      private var _1087037752slotData:Object;
      
      private var _1177017728itemCost:Number;
      
      private var _3172733giid:Number;
      
      private var _1302658492stackMax:Number;
      
      private var _176116450limitNu:uint;
      
      private var _2127811250itemCost2:Number;
      
      private var _3145580flag:Number;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _100346066index:Number;
      
      public function ShopSlotVO()
      {
         super();
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemCost() : Number
      {
         return this._1177017728itemCost;
      }
      
      public function set itemCost(param1:Number) : void
      {
         var _loc2_:Object = this._1177017728itemCost;
         if(_loc2_ !== param1)
         {
            this._1177017728itemCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemCost",_loc2_,param1));
         }
      }
      
      public function set slotData(param1:Object) : void
      {
         var _loc2_:Object = this._1087037752slotData;
         if(_loc2_ !== param1)
         {
            this._1087037752slotData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotData",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyType() : Number
      {
         return this._1713519590moneyType;
      }
      
      public function set itemColor(param1:uint) : void
      {
         var _loc2_:Object = this._2127804432itemColor;
         if(_loc2_ !== param1)
         {
            this._2127804432itemColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemColor",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemColor() : uint
      {
         return this._2127804432itemColor;
      }
      
      public function set index(param1:Number) : void
      {
         var _loc2_:Object = this._100346066index;
         if(_loc2_ !== param1)
         {
            this._100346066index = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemCost2() : Number
      {
         return this._2127811250itemCost2;
      }
      
      public function set moneyType2(param1:Number) : void
      {
         var _loc2_:Object = this._1579499688moneyType2;
         if(_loc2_ !== param1)
         {
            this._1579499688moneyType2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyType2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : Number
      {
         return this._3575610type;
      }
      
      public function set moneyType(param1:Number) : void
      {
         var _loc2_:Object = this._1713519590moneyType;
         if(_loc2_ !== param1)
         {
            this._1713519590moneyType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyType",_loc2_,param1));
         }
      }
      
      public function set stackNum(param1:int) : void
      {
         var _loc2_:Object = this._1302660062stackNum;
         if(_loc2_ !== param1)
         {
            this._1302660062stackNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stackNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemName() : String
      {
         return this._1177331774itemName;
      }
      
      public function set st(param1:int) : void
      {
         var _loc2_:Object = this._3681st;
         if(_loc2_ !== param1)
         {
            this._3681st = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"st",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stackMax() : Number
      {
         return this._1302658492stackMax;
      }
      
      public function set limitNu(param1:uint) : void
      {
         var _loc2_:Object = this._176116450limitNu;
         if(_loc2_ !== param1)
         {
            this._176116450limitNu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitNu",_loc2_,param1));
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slotData() : Object
      {
         return this._1087037752slotData;
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : Number
      {
         return this._100346066index;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function set itemDescription(param1:String) : void
      {
         var _loc2_:Object = this._1871571223itemDescription;
         if(_loc2_ !== param1)
         {
            this._1871571223itemDescription = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDescription",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stackNum() : int
      {
         return this._1302660062stackNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyType2() : Number
      {
         return this._1579499688moneyType2;
      }
      
      [Bindable(event="propertyChange")]
      public function get st() : int
      {
         return this._3681st;
      }
      
      [Bindable(event="propertyChange")]
      public function get limitNu() : uint
      {
         return this._176116450limitNu;
      }
      
      public function set itemCost2(param1:Number) : void
      {
         var _loc2_:Object = this._2127811250itemCost2;
         if(_loc2_ !== param1)
         {
            this._2127811250itemCost2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemCost2",_loc2_,param1));
         }
      }
      
      public function set flag(param1:Number) : void
      {
         var _loc2_:Object = this._3145580flag;
         if(_loc2_ !== param1)
         {
            this._3145580flag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDescription() : String
      {
         return this._1871571223itemDescription;
      }
      
      [Bindable(event="propertyChange")]
      public function get flag() : Number
      {
         return this._3145580flag;
      }
      
      public function set type(param1:Number) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
         }
      }
      
      public function set stackMax(param1:Number) : void
      {
         var _loc2_:Object = this._1302658492stackMax;
         if(_loc2_ !== param1)
         {
            this._1302658492stackMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stackMax",_loc2_,param1));
         }
      }
      
      public function set giid(param1:Number) : void
      {
         var _loc2_:Object = this._3172733giid;
         if(_loc2_ !== param1)
         {
            this._3172733giid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giid",_loc2_,param1));
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function set itemName(param1:String) : void
      {
         var _loc2_:Object = this._1177331774itemName;
         if(_loc2_ !== param1)
         {
            this._1177331774itemName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get giid() : Number
      {
         return this._3172733giid;
      }
   }
}

