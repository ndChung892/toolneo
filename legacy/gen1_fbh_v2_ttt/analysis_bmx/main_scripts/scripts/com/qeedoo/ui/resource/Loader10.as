package com.qeedoo.ui.resource
{
   import flash.display.Loader;
   
   public class Loader10 extends Loader
   {
      
      public static var gc:Boolean = false;
      
      public function Loader10()
      {
         super();
      }
      
      public function unloadAndGC() : void
      {
         super.unload();
      }
      
      override public function unload() : void
      {
         super.unload();
      }
   }
}

