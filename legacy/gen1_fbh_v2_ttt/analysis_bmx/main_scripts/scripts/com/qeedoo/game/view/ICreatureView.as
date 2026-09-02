package com.qeedoo.game.view
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public interface ICreatureView extends ISceneItem
   {
      
      function set colorCode(param1:int) : void;
      
      function set gameObject(param1:Object) : void;
      
      function get centerX() : int;
      
      function get posX() : int;
      
      function get posY() : int;
      
      function set posX(param1:int) : void;
      
      function set state(param1:int) : void;
      
      function set posY(param1:int) : void;
      
      function get centerY() : int;
      
      function get hitTestLayer() : DisplayObject;
      
      function get isWalking() : Boolean;
      
      function walk(param1:Event) : void;
      
      function get gameObject() : Object;
      
      function behavior(param1:int, param2:int = 0) : void;
      
      function onSay(param1:String) : void;
      
      function get state() : int;
      
      function stop() : void;
      
      function emotion(param1:Number) : void;
      
      function walkTo(param1:int, param2:int) : void;
      
      function faceTo(param1:int, param2:int = 0) : void;
   }
}

