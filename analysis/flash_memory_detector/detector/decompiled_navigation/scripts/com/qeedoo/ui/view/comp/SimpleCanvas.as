package com.qeedoo.ui.view.comp
{
   import mx.containers.Canvas;
   
   public class SimpleCanvas extends Canvas
   {
      
      public function SimpleCanvas()
      {
         super();
         verticalScrollPolicy = "off";
         horizontalScrollPolicy = "off";
         clipContent = false;
         creatingContentPane = false;
         mouseEnabled = false;
         tabChildren = false;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function show() : void
      {
         visible = true;
      }
   }
}

