package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.resource.ResCacher;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.core.UIComponent;
   
   public class AdventureLayer extends UIComponent
   {
      
      private var _goddess:MovieClip;
      
      public function AdventureLayer()
      {
         init();
         super();
      }
      
      public function init() : void
      {
         this.x = 800;
         this.y = 600;
      }
      
      public function adventureEffect() : void
      {
         var onLoadComplete:Function = null;
         var url:String = ResManager.getResUrlNoHash(2080130200000);
         var newHash:String = ResManager.hash(url);
         var obj:Object = ResCacher.getInstance().getRes(newHash);
         if(obj == null)
         {
            onLoadComplete = function(param1:Event):void
            {
               ResCacher.getInstance().removeEventListener(Event.COMPLETE,onLoadComplete);
               var _loc2_:MovieClip = param1.target.current_complete_loader.content as MovieClip;
               setMcAndPlay(_loc2_);
            };
            ResCacher.getInstance().addEventListener(Event.COMPLETE,onLoadComplete);
         }
         else if(_goddess)
         {
            play(_goddess);
         }
      }
      
      private function setMcAndPlay(param1:Object) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:MovieClip = param1 as MovieClip;
         if(Boolean(_loc2_) && _loc2_.numChildren > 0)
         {
            _loc3_ = _loc2_.getChildAt(0) as MovieClip;
            if(_loc3_)
            {
               setPlayObj(_loc3_);
               play(_loc3_);
            }
         }
      }
      
      private function play(param1:MovieClip) : void
      {
         var onEnterFrame:Function = null;
         var onClick:Function = null;
         var mc:MovieClip = param1;
         if(mc)
         {
            onEnterFrame = function(param1:Event):void
            {
               if(mc.currentFrame == mc.totalFrames)
               {
                  mc.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
                  mc.removeEventListener(MouseEvent.CLICK,onClick);
                  if(contains(mc))
                  {
                     removeChild(mc);
                  }
                  else
                  {
                     trace("------");
                  }
               }
            };
            onClick = function(param1:Event):void
            {
               mc.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
               mc.removeEventListener(MouseEvent.CLICK,onClick);
               if(contains(mc))
               {
                  removeChild(mc);
               }
               else
               {
                  trace("---@click---");
               }
            };
            mc.gotoAndStop(0);
            mc.addEventListener(Event.ENTER_FRAME,onEnterFrame);
            mc.addEventListener(MouseEvent.CLICK,onClick);
            addChild(mc);
            mc.gotoAndPlay(0);
         }
      }
      
      private function setPlayObj(param1:MovieClip) : void
      {
         if(!_goddess)
         {
            _goddess = param1;
         }
      }
   }
}

