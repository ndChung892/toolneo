package com.qeedoo.game.object
{
   public dynamic class Building extends Charactor
   {
      
      public var layer:int;
      
      public var buildState:String;
      
      public var buildType:int;
      
      public var tid:int;
      
      public function Building()
      {
         super();
         colorCode = 0;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
   }
}

