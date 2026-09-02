package com.qeedoo.game.event
{
   import flash.events.Event;
   
   public class GameDataEvent extends Event
   {
      
      public static var DATA_RECIEVED:String = "DATA_RECIEVED";
      
      public static var DATA_PACKAGE_RECIEVED:String = "DATA_PACKAGE_RECIEVED";
      
      public static var SKILL_LEVEL_CLICKED:String = "SKILL_LEVEL_CLICKED";
      
      public static var RES_LOADED:String = "RES_LOADED";
      
      public static var MAP_READY:String = "MAP_READY";
      
      public var data:*;
      
      public function GameDataEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

