package com.qeedoo.ui.event
{
   import flash.events.Event;
   
   public class GameEvent extends Event
   {
      
      public static var GAME_INIT:String = "GAME_INIT";
      
      public static var PLAYER_STATE_CHANGE:String = "PLAYER_STATE_CHANGE";
      
      public static var PLAYER_SEND_EMOTION:String = "PLAYER_SEND_EMOTION";
      
      public static var SLOT_TYPE_CHANGE:String = "SLOT_TYPE_CHANGE";
      
      public static var SLOT_GIID_CHANGE:String = "SLOT_GIID_CHANGE";
      
      public static var SLOT_NUM_CHANGE:String = "SLOT_NUM_CHANGE";
      
      public static var CUBE_MOVE_END:String = "CUBE_MOVE_END";
      
      public static var BATTLE_ROUND_TIME_OUT:String = "BATTLE_ROUND_TIME_OUT";
      
      public static var BEHAVIOR_CHANGE_TO_RUN:String = "BEHAVIOR_CHANGE_TO_RUN";
      
      public static var BEHAVIOR_CHANGE_TO_STOP:String = "BEHAVIOR_CHANGE_TO_STOP";
      
      public static var PET_STONE_SET:String = "PET_STONE_SET";
      
      public var data:*;
      
      public function GameEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

