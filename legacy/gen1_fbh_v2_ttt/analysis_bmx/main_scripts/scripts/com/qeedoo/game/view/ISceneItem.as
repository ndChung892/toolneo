package com.qeedoo.game.view
{
   import flash.events.IEventDispatcher;
   
   public interface ISceneItem extends IEventDispatcher
   {
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function get yBase() : int;
   }
}

