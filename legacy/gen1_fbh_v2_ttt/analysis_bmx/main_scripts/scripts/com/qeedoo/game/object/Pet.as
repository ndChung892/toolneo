package com.qeedoo.game.object
{
   import com.qeedoo.game.predef.GamePredef;
   
   public class Pet extends Creature
   {
      
      public var leaderId:Number;
      
      public var tid:Number;
      
      public var posCenterY:int;
      
      public var petTrendAction:int;
      
      public var posCenterX:int;
      
      public var cid:Number;
      
      public function Pet()
      {
         super();
         tid = -1;
         cid = -1;
         posCenterX = 0;
         posCenterY = 0;
         petTrendAction = 0;
         leaderId = -1;
         type = GamePredef.TBL_PET;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Object = null;
         for(_loc2_ in param1)
         {
            if(hasOwnProperty(_loc2_))
            {
               this[_loc2_] = param1[_loc2_];
            }
         }
      }
   }
}

