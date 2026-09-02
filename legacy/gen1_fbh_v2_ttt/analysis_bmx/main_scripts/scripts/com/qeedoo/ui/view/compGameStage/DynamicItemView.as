package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.config.Debug;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.Loader10;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class DynamicItemView extends Sprite
   {
      
      public var container:DisplayObjectContainer;
      
      protected var _resLoader:Loader10;
      
      protected var _autoVisible:Boolean;
      
      protected var _localizer:Point;
      
      protected var _yBase:int;
      
      protected var _visibleTimer:Timer;
      
      protected var _deleted:Boolean;
      
      public function DynamicItemView()
      {
         super();
         _localizer = new Point();
         _autoVisible = true;
         _deleted = false;
      }
      
      public function set colorCode(param1:int) : void
      {
         ResManager.setColorCode(_resLoader,param1);
      }
      
      public function destroy() : void
      {
         if(_deleted)
         {
            return;
         }
         container = null;
         _localizer = null;
         _deleted = true;
         if(_visibleTimer)
         {
            Debug.refTimer(_visibleTimer);
            _visibleTimer.stop();
            _visibleTimer = null;
         }
         visible = false;
      }
      
      public function set brightCode(param1:Number) : void
      {
         ResManager.setBrightCode(_resLoader,param1);
      }
      
      public function get inScreen() : Boolean
      {
         var _loc1_:Rectangle = new Rectangle(x,y,width,height);
         var _loc2_:StageMain = StageMain(ViewManager.getInstance().getUI(ViewManager.STAGE_MAIN));
         var _loc3_:Rectangle = new Rectangle(-_loc2_.x / _loc2_.flyingZoomRate,-_loc2_.y / _loc2_.flyingZoomRate,GamePredef.APP_WIDTH / _loc2_.flyingZoomRate,GamePredef.APP_HEIGHT / _loc2_.flyingZoomRate);
         return _loc3_.intersects(_loc1_);
      }
      
      override public function get visible() : Boolean
      {
         return Boolean(parent != null);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:* = undefined;
         if(container == null)
         {
            if(parent == null)
            {
               if(this._deleted == false)
               {
                  _loc2_ = null;
                  _loc2_.assert();
                  return;
               }
               return;
            }
            container = parent;
         }
         if(param1)
         {
            if(!visible)
            {
               container.addChild(this);
               container["sortChildren"]();
            }
         }
         else if(visible)
         {
            container.removeChild(this);
         }
      }
   }
}

