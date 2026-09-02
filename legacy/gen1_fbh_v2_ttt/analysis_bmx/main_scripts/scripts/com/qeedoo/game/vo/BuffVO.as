package com.qeedoo.game.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class BuffVO implements IEventDispatcher
   {
      
      private var _759220509timeLeftStr:String;
      
      private var _1140107293toolTip:String;
      
      private var _97533bid:Number;
      
      private var _1148582130addTime:Number;
      
      private var _1313955948timeAll:Number;
      
      private var _3035219buff:int;
      
      private var _3575610type:int;
      
      private var _2053458143battleLeft:int;
      
      private var _525658375hasRoundLimit:Boolean = true;
      
      private var _1065974863needTimer:Boolean = false;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _896505829source:String;
      
      private var _3355id:Number;
      
      private var _2077607820timeLeft:Number;
      
      private var _5288267roundLeft:int;
      
      private var _1327629297ineffectiveTime:Number;
      
      public function BuffVO()
      {
         super();
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get hasRoundLimit() : Boolean
      {
         return this._525658375hasRoundLimit;
      }
      
      [Bindable(event="propertyChange")]
      public function get addTime() : Number
      {
         return this._1148582130addTime;
      }
      
      public function set hasRoundLimit(param1:Boolean) : void
      {
         var _loc2_:Object = this._525658375hasRoundLimit;
         if(_loc2_ !== param1)
         {
            this._525658375hasRoundLimit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasRoundLimit",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : Number
      {
         return this._3355id;
      }
      
      public function set addTime(param1:Number) : void
      {
         var _loc2_:Object = this._1148582130addTime;
         if(_loc2_ !== param1)
         {
            this._1148582130addTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLeftStr() : String
      {
         return this._759220509timeLeftStr;
      }
      
      public function set ineffectiveTime(param1:Number) : void
      {
         var _loc2_:Object = this._1327629297ineffectiveTime;
         if(_loc2_ !== param1)
         {
            this._1327629297ineffectiveTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ineffectiveTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get source() : String
      {
         return this._896505829source;
      }
      
      [Bindable(event="propertyChange")]
      public function get timeAll() : Number
      {
         return this._1313955948timeAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get ineffectiveTime() : Number
      {
         return this._1327629297ineffectiveTime;
      }
      
      public function set timeAll(param1:Number) : void
      {
         var _loc2_:Object = this._1313955948timeAll;
         if(_loc2_ !== param1)
         {
            this._1313955948timeAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeAll",_loc2_,param1));
         }
      }
      
      public function set buff(param1:int) : void
      {
         var _loc2_:Object = this._3035219buff;
         if(_loc2_ !== param1)
         {
            this._3035219buff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buff",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get roundLeft() : int
      {
         return this._5288267roundLeft;
      }
      
      public function set id(param1:Number) : void
      {
         var _loc2_:Object = this._3355id;
         if(_loc2_ !== param1)
         {
            this._3355id = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      public function set battleLeft(param1:int) : void
      {
         var _loc2_:Object = this._2053458143battleLeft;
         if(_loc2_ !== param1)
         {
            this._2053458143battleLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleLeft",_loc2_,param1));
         }
      }
      
      public function set needTimer(param1:Boolean) : void
      {
         var _loc2_:Object = this._1065974863needTimer;
         if(_loc2_ !== param1)
         {
            this._1065974863needTimer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needTimer",_loc2_,param1));
         }
      }
      
      public function set source(param1:String) : void
      {
         var _loc2_:Object = this._896505829source;
         if(_loc2_ !== param1)
         {
            this._896505829source = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"source",_loc2_,param1));
         }
      }
      
      public function set toolTip(param1:String) : void
      {
         var _loc2_:Object = this._1140107293toolTip;
         if(_loc2_ !== param1)
         {
            this._1140107293toolTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toolTip",_loc2_,param1));
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function set timeLeftStr(param1:String) : void
      {
         var _loc2_:Object = this._759220509timeLeftStr;
         if(_loc2_ !== param1)
         {
            this._759220509timeLeftStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLeftStr",_loc2_,param1));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      [Bindable(event="propertyChange")]
      public function get needTimer() : Boolean
      {
         return this._1065974863needTimer;
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      [Bindable(event="propertyChange")]
      public function get buff() : int
      {
         return this._3035219buff;
      }
      
      public function get battleBuffTooltip() : String
      {
         if(hasRoundLimit)
         {
            return toolTip + roundLeft;
         }
         return toolTip;
      }
      
      [Bindable(event="propertyChange")]
      public function get battleLeft() : int
      {
         return this._2053458143battleLeft;
      }
      
      [Bindable(event="propertyChange")]
      public function get toolTip() : String
      {
         return this._1140107293toolTip;
      }
      
      public function set timeLeft(param1:Number) : void
      {
         var _loc2_:Object = this._2077607820timeLeft;
         if(_loc2_ !== param1)
         {
            this._2077607820timeLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLeft",_loc2_,param1));
         }
      }
      
      public function set roundLeft(param1:int) : void
      {
         var _loc2_:Object = this._5288267roundLeft;
         if(_loc2_ !== param1)
         {
            this._5288267roundLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roundLeft",_loc2_,param1));
         }
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
         }
      }
      
      public function set bid(param1:Number) : void
      {
         var _loc2_:Object = this._97533bid;
         if(_loc2_ !== param1)
         {
            this._97533bid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLeft() : Number
      {
         return this._2077607820timeLeft;
      }
      
      [Bindable(event="propertyChange")]
      public function get bid() : Number
      {
         return this._97533bid;
      }
   }
}

