package com.qeedoo.game.ui
{
   import mx.core.IUIComponent;
   
   public interface ISlot extends IUIComponent
   {
      
      function set giid(param1:Number) : void;
      
      function set index(param1:int) : void;
      
      function get slotData() : Object;
      
      function update() : void;
      
      function clean() : void;
      
      function restore() : void;
      
      function reset() : void;
      
      function set slotData(param1:Object) : void;
      
      function get index() : int;
      
      function set type(param1:int) : void;
      
      function get slotType() : int;
      
      function get type() : int;
      
      function set stackNum(param1:int) : void;
      
      function get giid() : Number;
      
      function get stackNum() : int;
      
      function set stackMax(param1:int) : void;
   }
}

