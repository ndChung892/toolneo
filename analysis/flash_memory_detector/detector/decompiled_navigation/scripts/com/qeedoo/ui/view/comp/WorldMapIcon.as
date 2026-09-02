package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.MouseEvent;
   import mx.controls.Image;
   import mx.events.FlexEvent;
   
   public class WorldMapIcon extends Image
   {
      
      private var iconU:Class = WorldMapIcon_iconU;
      
      private var _core:Core = Core.getInstance();
      
      private var _showTip:Boolean;
      
      private var iconC:Class = WorldMapIcon_iconC;
      
      private var iconN:Class = WorldMapIcon_iconN;
      
      private var iconT:Class = WorldMapIcon_iconT;
      
      public function WorldMapIcon()
      {
         super();
         this.width = 20;
         this.height = 20;
         this.scaleContent = false;
         this.addEventListener("rollOver",___WorldMapIcon_Image1_rollOver);
         this.addEventListener("rollOut",___WorldMapIcon_Image1_rollOut);
         this.addEventListener("creationComplete",___WorldMapIcon_Image1_creationComplete);
         this.addEventListener("click",___WorldMapIcon_Image1_click);
      }
      
      private function showInfo() : void
      {
         _showTip = true;
         filters = [GamePredef.FILTER_ALLOW_SELECTED];
         if(!id)
         {
            return;
         }
         var _loc1_:Number = Number(id.slice(1));
         if(_loc1_ > 0)
         {
            showTip(_loc1_);
         }
      }
      
      private function init() : void
      {
         setN();
         if(!id)
         {
            setU();
         }
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function ___WorldMapIcon_Image1_click(param1:MouseEvent) : void
      {
         showAlert();
      }
      
      public function ___WorldMapIcon_Image1_rollOver(param1:MouseEvent) : void
      {
         showInfo();
      }
      
      private function showTip(param1:int) : void
      {
         if(!_showTip)
         {
            return;
         }
         var _loc2_:TipMap = TipMap(_core.view.getUI(ViewManager.TOOLTIP_MAP));
         _loc2_.showMap(param1);
      }
      
      private function showAlert() : void
      {
         if(!id)
         {
            return;
         }
         var _loc1_:Number = Number(id.slice(1));
         _core.player.mapTrans(_loc1_);
      }
      
      public function setC() : void
      {
         source = iconC;
         width = 20;
         height = 20;
      }
      
      public function ___WorldMapIcon_Image1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function ___WorldMapIcon_Image1_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function setN() : void
      {
         source = iconN;
         width = 20;
         height = 20;
      }
      
      public function setT() : void
      {
         source = iconT;
         width = 20;
         height = 20;
      }
      
      private function hideTip() : void
      {
         _showTip = false;
         filters = [];
      }
      
      public function setU() : void
      {
         source = iconU;
         width = 20;
         height = 20;
      }
   }
}

