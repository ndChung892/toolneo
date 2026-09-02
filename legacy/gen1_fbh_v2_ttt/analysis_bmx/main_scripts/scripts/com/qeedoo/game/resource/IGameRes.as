package com.qeedoo.game.resource
{
   public interface IGameRes
   {
      
      function stop() : void;
      
      function set behavior(param1:int) : void;
      
      function get behavior() : int;
      
      function set dir(param1:int) : void;
      
      function play() : void;
      
      function get dir() : int;
   }
}

