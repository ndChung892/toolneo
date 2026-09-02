package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.Button;
   import mx.effects.Glow;
   import mx.events.FlexEvent;
   
   public class BasicGlowButton extends Button
   {
      
      private var glow:Glow;
      
      public function BasicGlowButton()
      {
         super();
         this.addEventListener("initialize",___BasicGlowButton_Button1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function removeGlow(param1:Object) : void
      {
         glow.target = param1;
         this.glow.end();
         filters = [];
      }
      
      public function setGlow(param1:Object) : void
      {
         glow = new Glow();
         glow.target = param1;
         glow.repeatCount = 0;
         glow.duration = 3000;
         glow.color = 16776960;
         glow.blurXTo = 10;
         glow.blurYTo = 10;
         glow.strength = 100;
         glow.alphaTo = 100;
         glow.play();
      }
      
      private function init() : void
      {
         textField.filters = [GamePredef.FILTER_TITLE];
      }
      
      public function ___BasicGlowButton_Button1_initialize(param1:FlexEvent) : void
      {
         init();
      }
   }
}

