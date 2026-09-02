package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.predef.GamePredef;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   
   public class CreatureShowView extends CreatureView
   {
      
      public var decoFlag:Boolean = false;
      
      public function CreatureShowView()
      {
         super();
         if(_shadow)
         {
            this.removeChild(_shadow);
            _shadow = null;
         }
      }
      
      override protected function mouseOverHandler(param1:MouseEvent) : void
      {
      }
      
      public function setDecoBottomRes(param1:String) : void
      {
         if(!param1 || !_gameObject)
         {
            return;
         }
         if(_gameObject.decoBottomCode == param1)
         {
            return;
         }
         if(_tepe_cg)
         {
            _tepe_cg.unload();
            _tepe_cg = null;
         }
         _gameObject.decoBottomCode = param1;
         super.tepeOn();
      }
      
      public function setDecoLightRes(param1:String) : void
      {
         if(!param1 || !_gameObject)
         {
            return;
         }
         if(_gameObject.decoLightCode == param1)
         {
            return;
         }
         if(_round_cg)
         {
            _round_cg.unload();
            _round_cg = null;
         }
         _gameObject.decoLightCode = param1;
         super.roundOn();
      }
      
      override public function get inScreen() : Boolean
      {
         return true;
      }
      
      override protected function checkVisible(param1:TimerEvent) : void
      {
      }
      
      override protected function setName() : void
      {
      }
      
      override protected function setFairyGraphic(param1:Object) : void
      {
      }
      
      override public function mountOn() : void
      {
         if(!_gameObject || _gameObject.flyingState != GamePredef.FLYING_STATE_ON_GROUND)
         {
            return;
         }
         if(decoFlag)
         {
            return;
         }
         super.mountOn();
      }
      
      override public function flyerOn() : void
      {
         if(!_gameObject || isNaN(_gameObject.flyerResCode) || _gameObject.flyerResCode <= 0)
         {
            return;
         }
         super.flyerOn();
         super.mountOff();
      }
      
      override protected function mouseOutHandler(param1:MouseEvent) : void
      {
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
      }
      
      override protected function mouseDownHandler(param1:MouseEvent) : void
      {
      }
      
      override protected function removeListener() : void
      {
      }
      
      public function setFlyerCodes(param1:Object) : void
      {
         if(!param1 || !_gameObject)
         {
            return;
         }
         var _loc2_:* = param1.flyerResCode;
         var _loc3_:* = param1.flyerFrontResCode;
         if(_gameObject.flyerResCode == _loc2_)
         {
            return;
         }
         _gameObject.flyerResCode = _loc2_;
         _gameObject.flyerFrontResCode = _loc3_;
         super.flyerOff();
         flyerOn();
      }
      
      override protected function setPosition() : void
      {
      }
      
      public function setDecoLightMaskRes(param1:String) : void
      {
         if(!param1 || !_gameObject)
         {
            return;
         }
         if(_gameObject.decoLightMaskCode == param1)
         {
            return;
         }
         if(_round_mask_cg)
         {
            _round_mask_cg.unload();
            _round_mask_cg = null;
         }
         _gameObject.decoLightMaskCode = param1;
         super.roundMaskOn();
      }
      
      override public function flyerOff() : void
      {
         super.flyerOff();
         this.mountOn();
      }
      
      public function setDecoHeadRes(param1:String) : void
      {
         if(!param1 || !_gameObject)
         {
            return;
         }
         if(_gameObject.decoHeadCode == param1)
         {
            return;
         }
         if(_halo_cg)
         {
            _halo_cg.unload();
            _halo_cg = null;
         }
         _gameObject.decoHeadCode = param1;
         super.haloOn();
      }
      
      override protected function addVisibleTimer() : void
      {
      }
      
      override protected function addListener() : void
      {
      }
      
      public function setResCode(param1:Number) : void
      {
         _gameObject.resCode = param1;
         this.loadRes();
      }
      
      override public function faceTo(param1:int, param2:int = 0) : void
      {
         _gameObject.dir = param1;
         gameObject.posDir = param1;
         super.faceTo(param1,param2);
      }
   }
}

