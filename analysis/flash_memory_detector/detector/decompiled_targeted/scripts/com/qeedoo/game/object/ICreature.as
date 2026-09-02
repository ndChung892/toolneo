package com.qeedoo.game.object
{
   public interface ICreature
   {
      
      function set inBattle(param1:Boolean) : void;
      
      function closeTo(param1:int, param2:int) : void;
      
      function walkTo(param1:int, param2:int) : void;
      
      function set data(param1:Object) : void;
      
      function walk() : void;
      
      function p2pWisper(param1:String, param2:Number, param3:Number) : void;
      
      function say(param1:String, param2:int) : void;
      
      function wisper(param1:String, param2:String) : void;
      
      function get inBattle() : Boolean;
      
      function battleRouteTo(param1:int, param2:int) : void;
   }
}

