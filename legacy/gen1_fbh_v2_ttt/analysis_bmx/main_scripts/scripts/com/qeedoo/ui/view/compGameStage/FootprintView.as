package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.resource.FootprintGraphic;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class FootprintView extends DynamicItemView
   {
      
      private var _container:DisplayObjectContainer;
      
      private var current_frame:int = 1;
      
      private var _fc:FootprintGraphic;
      
      public function FootprintView(param1:FootprintGraphic, param2:DisplayObjectContainer)
      {
         super();
         _fc = param1;
         _container = param2;
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         addChild(DisplayObject(param1));
      }
      
      private function removeSelf() : void
      {
         if(this.parent == _container)
         {
            _container.removeChild(this);
         }
      }
      
      public function get yBase() : int
      {
         return 0;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         ++current_frame;
         if(current_frame > _fc.mc.totalFrames)
         {
            removeSelf();
            this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
      }
   }
}

