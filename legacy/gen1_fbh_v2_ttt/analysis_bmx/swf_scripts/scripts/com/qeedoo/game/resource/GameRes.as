package com.qeedoo.game.resource
{
   public class GameRes extends AbstractGameRes
   {
      
      public function GameRes()
      {
         super();
         _behavior = 0;
         _dir = 0;
      }
      
      override protected function stopAndCall() : void
      {
         stop();
         if(callBack != null)
         {
            callBack();
         }
      }
      
      override public function play() : void
      {
         gotoAndPlay(_dir + "-" + _behavior);
      }
      
      override public function set behavior(param1:int) : void
      {
         _behavior = param1;
         play();
      }
      
      override public function set dir(param1:int) : void
      {
         _dir = param1;
         play();
      }
      
      override public function get behavior() : int
      {
         return _behavior;
      }
      
      override public function get dir() : int
      {
         return _dir;
      }
   }
}

