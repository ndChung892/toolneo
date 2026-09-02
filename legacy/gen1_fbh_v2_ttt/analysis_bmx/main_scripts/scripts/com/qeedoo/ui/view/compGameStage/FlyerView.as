package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class FlyerView extends DynamicItemView
   {
      
      private var _flyer:Sprite;
      
      private var _flyer_cg:Object;
      
      private var _core:Core;
      
      public function FlyerView(param1:Object)
      {
         super();
         _core = Core.getInstance();
         _flyer = new Sprite();
         _flyer_cg = param1;
         _flyer_cg.x = -_flyer_cg.midX;
         _flyer_cg.y = -_flyer_cg.footY;
         _flyer.addChild(DisplayObject(_flyer_cg));
         addChild(_flyer);
      }
      
      public function get posY() : int
      {
         return y;
      }
      
      public function get centerY() : int
      {
         return _core.view.getUI(ViewManager.STAGE_MAIN).centerY;
      }
      
      public function set posX(param1:int) : void
      {
         x = param1;
      }
      
      public function get yBase() : int
      {
         return y;
      }
      
      public function get posX() : int
      {
         return x;
      }
      
      public function playFlyer(param1:int, param2:int) : void
      {
         if(_flyer_cg)
         {
            _flyer_cg.dir = param1;
            _flyer_cg.behavior = param2;
            _flyer_cg.play(_flyer_cg.dir + "-" + _flyer_cg.behavior);
         }
      }
      
      public function set posY(param1:int) : void
      {
         y = param1;
      }
      
      public function get centerX() : int
      {
         return _core.view.getUI(ViewManager.STAGE_MAIN).centerX;
      }
      
      public function removeFlyer() : void
      {
         if(_flyer.contains(DisplayObject(_flyer_cg)))
         {
            _flyer.removeChild(DisplayObject(_flyer_cg));
         }
         removeChild(_flyer);
      }
      
      public function setFlyerXY(param1:CharactorView, param2:Number, param3:Number) : void
      {
         x = param1.x;
         y = param1.y;
         _flyer.x = param1._body.x + param2;
         _flyer.y = param1._body.y + param3;
         scaleX = param1.scaleX;
         scaleY = param1.scaleY;
      }
   }
}

