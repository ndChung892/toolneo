package com.qeedoo.game.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class PropTextVO implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _309152637propOri:String;
      
      private var _993843058propName:String;
      
      private var _754105920propColor:uint;
      
      private var _1417869132propModified:String;
      
      public function PropTextVO()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get propColor() : uint
      {
         return this._754105920propColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get propOri() : String
      {
         return this._309152637propOri;
      }
      
      public function set propOri(param1:String) : void
      {
         var _loc2_:Object = this._309152637propOri;
         if(_loc2_ !== param1)
         {
            this._309152637propOri = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propOri",_loc2_,param1));
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      [Bindable(event="propertyChange")]
      public function get propModified() : String
      {
         return this._1417869132propModified;
      }
      
      [Bindable(event="propertyChange")]
      public function get propName() : String
      {
         return this._993843058propName;
      }
      
      public function set propColor(param1:uint) : void
      {
         var _loc2_:Object = this._754105920propColor;
         if(_loc2_ !== param1)
         {
            this._754105920propColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propColor",_loc2_,param1));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function set propName(param1:String) : void
      {
         var _loc2_:Object = this._993843058propName;
         if(_loc2_ !== param1)
         {
            this._993843058propName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propName",_loc2_,param1));
         }
      }
      
      public function set propModified(param1:String) : void
      {
         var _loc2_:Object = this._1417869132propModified;
         if(_loc2_ !== param1)
         {
            this._1417869132propModified = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propModified",_loc2_,param1));
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
   }
}

