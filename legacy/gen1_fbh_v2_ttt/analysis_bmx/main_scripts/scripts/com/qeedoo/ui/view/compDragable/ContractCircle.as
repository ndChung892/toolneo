package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.ResCacher;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import mx.core.UIComponent;
   
   public class ContractCircle extends UIComponent
   {
      
      private static const RADIUS:int = 35;
      
      private static const SWF_BASE:Number = 2080130102013;
      
      private var _textField:TextField;
      
      public var type:int = 1;
      
      private var _core:Core = Core.getInstance();
      
      public function ContractCircle()
      {
         super();
         this.graphics.beginFill(16777215,0);
         this.graphics.drawCircle(RADIUS,RADIUS,RADIUS);
         this.graphics.endFill();
         this.buttonMode = true;
         _textField = new TextField();
         _textField.y = 20;
         _textField.width = 2 * RADIUS;
         _textField.selectable = false;
         _textField.mouseEnabled = false;
         _textField.mouseWheelEnabled = false;
         var _loc1_:TextFormat = new TextFormat("宋体",12,16777215);
         _loc1_.align = TextFormatAlign.CENTER;
         _loc1_.leading = 6;
         _textField.defaultTextFormat = _loc1_;
         _textField.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
         this.addChild(_textField);
         this.addEventListener(MouseEvent.MOUSE_OVER,overHandler);
         this.addEventListener(MouseEvent.MOUSE_OUT,outHandler);
      }
      
      private function addCircleSwf(param1:MovieClip) : void
      {
         param1.mouseEnabled = false;
         param1.mouseChildren = false;
         if(param1.parent == this)
         {
            return;
         }
         param1.x = 2 * RADIUS - param1.width >> 1;
         this.addChildAt(param1,0);
      }
      
      private function overHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.filters = [GamePredef.FILTER_GLOW_GOLD_HIGH];
      }
      
      private function outHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.filters = null;
      }
      
      public function updateView() : void
      {
         var stepIndex:int = 0;
         var circleUrl:String = null;
         var circleSwf:MovieClip = null;
         var onLoadSwf:Function = null;
         var contractPet:Object = _core.player.contractPet;
         var propStr:String = GamePredef.CONTRACT_DICT[type];
         var propLvl:int = Boolean(contractPet) && Boolean(contractPet[propStr]) ? int(contractPet[propStr]) : 0;
         stepIndex = int(100 * propLvl / GamePredef.MAX_CONTRACT_LEVEL);
         _textField.htmlText = Language.PET_EVOLUTION_PANEL_U[59][type] + Language.PET_EVOLUTION_PANEL_U[63] + propLvl;
         circleUrl = ResManager.getResUrl(SWF_BASE + type);
         circleSwf = ResCacher.getInstance().getRes(circleUrl) as MovieClip;
         if(!circleSwf)
         {
            onLoadSwf = function(param1:Event):void
            {
               var _loc2_:LoaderInfo = ResCacher.getInstance().current_complete_loader;
               if(_loc2_.url.indexOf(circleUrl) == -1)
               {
                  return;
               }
               ResCacher.getInstance().removeEventListener("complete",onLoadSwf);
               circleSwf = param1.target.current_complete_loader.content as MovieClip;
               circleSwf.gotoAndStop(stepIndex);
               addCircleSwf(circleSwf);
            };
            ResCacher.getInstance().addEventListener("complete",onLoadSwf);
            return;
         }
         circleSwf.gotoAndStop(stepIndex);
         this.addCircleSwf(circleSwf);
      }
   }
}

