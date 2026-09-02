package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SoulSprite extends Sprite
   {
      
      public static var loaderCache:Object = new Object();
      
      private var urlLoader:URLLoader = new URLLoader();
      
      private var resUrl:String = "";
      
      private var loader:Loader = new Loader();
      
      private var currentFrame:* = 0;
      
      private var mc:MovieClip;
      
      private var currentLoadingUrl:String = "";
      
      public function SoulSprite()
      {
         super();
      }
      
      public function gotoAndPlay(param1:*) : void
      {
         currentFrame = param1;
         if(!mc)
         {
            mc = new MovieClip();
         }
         mc = loader.content as MovieClip;
         if(Boolean(mc) && mc.hasOwnProperty("gotoAndPlay"))
         {
            if(mc.currentFrameLabel != currentFrame)
            {
               mc.gotoAndPlay(currentFrame);
            }
         }
      }
      
      public function destroy() : void
      {
         loader.removeEventListener(Event.COMPLETE,loadCompleteHandler);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,loadErrorHandler);
         this.removeChild(loader);
         loader.unload();
      }
      
      public function unShow() : void
      {
         loader.visible = false;
         if(Boolean(mc) && mc.hasOwnProperty("stop"))
         {
            mc.stop();
            mc = null;
         }
         destroy();
      }
      
      public function getBitmapData(param1:Boolean = false) : BitmapData
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(!mc)
         {
            mc = new MovieClip();
         }
         mc = loader.content as MovieClip;
         if(Boolean(mc) && mc.hasOwnProperty("gotoAndPlay"))
         {
            mc.gotoAndPlay(currentFrame);
            _loc2_ = new BitmapData(mc.width,mc.height,true,0);
            _loc3_ = new Matrix();
            _loc3_.tx = mc.width / 2;
            _loc3_.ty = mc.height / 2;
            _loc2_.draw(mc,_loc3_);
         }
         return _loc2_;
      }
      
      public function loadCompleteHandler(param1:Event) : void
      {
         loader.visible = true;
         if(!mc)
         {
            mc = new MovieClip();
         }
         mc = loader.content as MovieClip;
         if(Boolean(mc) && mc.hasOwnProperty("gotoAndPlay"))
         {
            mc.gotoAndPlay(currentFrame);
         }
         mc.x = 0;
         mc.y = 0;
         loader.removeEventListener(Event.COMPLETE,loadCompleteHandler);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,loadErrorHandler);
      }
      
      private function loadErrorHandler(param1:IOErrorEvent) : void
      {
      }
      
      public function show(param1:String) : void
      {
         var _loc2_:String = null;
         _loc2_ = ResManager.hash(param1 + "_NEW.swf");
         this.currentLoadingUrl = _loc2_;
         addChild(loader);
         loader.x = 33;
         loader.y = 33;
         loader.addEventListener(Event.COMPLETE,loadCompleteHandler);
         loader.addEventListener(IOErrorEvent.IO_ERROR,loadErrorHandler);
         loader.load(new URLRequest(_loc2_));
      }
   }
}

