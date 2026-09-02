package com.qeedoo.game.resource
{
   public interface IGameRes
   {
      
      function stop() : void;
      
      function play() : void;
      
      function set behavior(param1:int) : void;
      
      function set dir(param1:int) : void;
      
      function get behavior() : int;
      
      function get dir() : int;
   }
}

