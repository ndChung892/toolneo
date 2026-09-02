package com.qeedoo.ui.utils
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import mx.effects.Fade;
   import mx.events.EffectEvent;
   
   public class AreaUtil
   {
      
      private static var cloudFadeEffect:Fade = null;
      
      public function AreaUtil()
      {
         super();
      }
      
      private static function stopCloudFadeEffect() : void
      {
         if(Boolean(cloudFadeEffect) && cloudFadeEffect.isPlaying)
         {
            cloudFadeEffect.stop();
            cloudFadeEffect = null;
         }
      }
      
      public static function drawClouds(param1:Sprite, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Boolean = false) : void
      {
         var count:int = 0;
         var hit:Boolean = false;
         var clouds:Array = null;
         var i:int = 0;
         var func:Function = null;
         var v:DisplayObject = null;
         var myBitmapData:BitmapData = null;
         var cloudID:int = 0;
         var cloud:Bitmap = null;
         var x:int = 0;
         var y:int = 0;
         var layer:Sprite = param1;
         var densityFactor:int = param2;
         var bgWidth:int = param3;
         var bgHeight:int = param4;
         var sx:int = param5;
         var sy:int = param6;
         var ex:int = param7;
         var ey:int = param8;
         var fadeIn:Boolean = param9;
         stopCloudFadeEffect();
         if(!Boolean(Number(GamePredef.GLOBAL_SETTING["flyEffect"])))
         {
            return;
         }
         if(layer.numChildren == 0)
         {
            count = bgWidth * bgHeight / densityFactor;
            hit = false;
            clouds = new Array();
            i = 1;
            while(i <= 3)
            {
               v = new (ResManager["CLOUD" + i] as Class)();
               myBitmapData = new BitmapData(v.width,v.height,true,0);
               myBitmapData.draw(v);
               clouds.push(myBitmapData);
               v = null;
               i++;
            }
            while(count-- > 0)
            {
               hit = false;
               cloudID = Math.floor(ToolKit.genRangeRandom(0,2));
               cloud = new Bitmap(clouds[cloudID]);
               x = ToolKit.genRangeRandom(sx,bgWidth + ex);
               y = ToolKit.genRangeRandom(sy,bgHeight + ey);
               if(!hit)
               {
                  cloud.x = x;
                  cloud.y = y;
                  layer.addChild(cloud);
               }
            }
            func = function():void
            {
               cloudFadeEffect = null;
            };
            if(fadeIn)
            {
               cloudFadeEffect = new Fade(layer);
               cloudFadeEffect.alphaFrom = 0;
               cloudFadeEffect.alphaTo = 1;
               cloudFadeEffect.duration = 2000;
               cloudFadeEffect.addEventListener(EffectEvent.EFFECT_END,func);
               cloudFadeEffect.play();
            }
         }
      }
      
      public static function getRectArea(param1:String, param2:int, param3:int) : Boolean
      {
         var _loc8_:int = 0;
         var _loc9_:Rectangle = null;
         if(param1 == "0" || param1 == "" || param1 == null)
         {
            return false;
         }
         var _loc4_:Array = param1.split("|");
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            _loc4_[_loc5_] = String(_loc4_[_loc5_]).split("-");
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length)
         {
            _loc8_ = 0;
            while(_loc8_ < 2)
            {
               _loc4_[_loc6_][_loc8_] = String(_loc4_[_loc6_][_loc8_]).split(",");
               _loc8_++;
            }
            _loc6_++;
         }
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length)
         {
            _loc9_ = new Rectangle(_loc4_[_loc7_][0][0],_loc4_[_loc7_][0][1],Math.abs(_loc4_[_loc7_][1][0] - _loc4_[_loc7_][0][0]),Math.abs(_loc4_[_loc7_][1][1] - _loc4_[_loc7_][1][0]));
            if(_loc9_.contains(param2,param3))
            {
               return true;
            }
            _loc7_++;
         }
         return false;
      }
      
      public static function clearClouds(param1:Sprite, param2:Boolean = false) : void
      {
         var func:Function;
         var layer:Sprite = param1;
         var fadeOut:Boolean = param2;
         stopCloudFadeEffect();
         func = function():void
         {
            while(layer.numChildren > 0)
            {
               layer.removeChildAt(0);
            }
            cloudFadeEffect = null;
         };
         if(fadeOut)
         {
            cloudFadeEffect = new Fade(layer);
            cloudFadeEffect.alphaFrom = 1;
            cloudFadeEffect.alphaTo = 0;
            cloudFadeEffect.duration = 2000;
            cloudFadeEffect.addEventListener(EffectEvent.EFFECT_END,func);
            cloudFadeEffect.play();
         }
         else
         {
            func();
         }
      }
   }
}

