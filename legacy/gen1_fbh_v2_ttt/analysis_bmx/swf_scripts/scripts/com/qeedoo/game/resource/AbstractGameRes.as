package com.qeedoo.game.resource
{
   import flash.display.MovieClip;
   
   public class AbstractGameRes extends MovieClip implements IGameRes
   {
      
      public static const DIR_DOWN:uint = 0;
      
      public static const DIR_LEFT:uint = 1;
      
      public static const DIR_LEFT_DOWN:uint = 2;
      
      public static const DIR_LEFT_UP:uint = 3;
      
      public static const DIR_UP:uint = 4;
      
      public static const DIR_RIGHT_UP:uint = 5;
      
      public static const DIR_RIGHT:uint = 6;
      
      public static const DIR_RIGHT_DOWN:uint = 7;
      
      public static const BH_BREATH_SLOW:uint = 0;
      
      public static const BH_BREATH_FAST:uint = 0;
      
      public static const BH_RUN_FAST:uint = 1;
      
      public static const BH_RUN_NORMAL:uint = 2;
      
      public static const BH_ATTACK:uint = 3;
      
      public static const BH_SIT:uint = 4;
      
      public static const BH_DEAD:uint = 4;
      
      public static const BH_HURT:uint = 5;
      
      public static const BH_DEFENCE:uint = 6;
      
      public static const BH_MAGIC:uint = 7;
      
      public static const BH_BACK:uint = 10080;
      
      public static const BH_TURNBACK:uint = 10100;
      
      public static const BH_TURNTO:uint = 10110;
      
      public static const BH_DIE:uint = 10120;
      
      public static const BH_ESCAPE:uint = 10130;
      
      public static const BH_DODGE:uint = 10140;
      
      public static const BH_DODGE_COOL:uint = 10150;
      
      public static const BH_CHECKESC:uint = 10500;
      
      public static const BH_NOTHING:uint = 11500;
      
      public static const BH_RUSH:uint = 11600;
      
      protected var _behavior:int;
      
      protected var _dir:int;
      
      public var midX:int;
      
      public var totalWidth:int;
      
      public var totalHeight:int;
      
      public var bodyX:int;
      
      public var bodyY:int;
      
      public var bodyWidth:int;
      
      public var bodyHeight:int;
      
      public var headY:int;
      
      public var eyeY:int;
      
      public var handY:int;
      
      public var footY:int;
      
      public var mouthY:int;
      
      public var callBack:Function;
      
      public function AbstractGameRes()
      {
         super();
      }
      
      protected function stopAndCall() : void
      {
      }
      
      public function set behavior(param1:int) : void
      {
      }
      
      public function set dir(param1:int) : void
      {
      }
      
      public function get behavior() : int
      {
         return 0;
      }
      
      public function get dir() : int
      {
         return 0;
      }
   }
}

