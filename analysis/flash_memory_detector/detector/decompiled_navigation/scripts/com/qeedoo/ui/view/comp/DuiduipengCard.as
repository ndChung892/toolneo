package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.DuiduiPeng;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class DuiduipengCard extends Canvas
   {
      
      private var _3236047img2:Image;
      
      private var resArray:Array = [4130220001130,4130220001131,4130220001132,4130220001133,4130220001134,4130220001135,4130220001136,4130220001137];
      
      private var _cardIndex:int;
      
      private var _origX:int = 0;
      
      private var _clickAvailable:Boolean = true;
      
      private var _104387img:Image;
      
      private var _imageWidth:Number = 60;
      
      private var _timer:Timer = new Timer(40);
      
      private var _inited:Boolean = false;
      
      private var _cardId:int;
      
      private var backOfCardRes:Number = 4130220001138;
      
      private var s:Number = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":60,
               "height":80,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function DuiduipengCard()
      {
         super();
         mx_internal::_document = this;
         this.width = 60;
         this.height = 80;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___DuiduipengCard_Canvas1_creationComplete);
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      public function ___DuiduipengCard_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set cardId(param1:int) : void
      {
         _cardId = param1;
      }
      
      public function flipCard(param1:Boolean) : void
      {
         overTurnCardTimer(param1);
         if(!param1)
         {
            setDuiduiCardEnable(true);
         }
         else
         {
            setDuiduiCardEnable(false);
         }
      }
      
      public function set img2(param1:Image) : void
      {
         var _loc2_:Object = this._3236047img2;
         if(_loc2_ !== param1)
         {
            this._3236047img2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         this.addEventListener(MouseEvent.CLICK,clickHandler);
      }
      
      public function get clickAvailable() : Boolean
      {
         return _clickAvailable;
      }
      
      public function clickHandler(param1:MouseEvent) : void
      {
         if(!_clickAvailable || DuiduiPeng(this.parentDocument).isFlippingOver)
         {
            return;
         }
         if(DuiduiPeng(this.parentDocument).isTimeZero)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[13]);
            return;
         }
         setFlippingOverFlag(true);
         flipCard(true);
      }
      
      private function overTurnCardTimer(param1:Boolean) : void
      {
         var card1:Image = null;
         var card2:Image = null;
         var currentCard:Image = null;
         var func:Function = null;
         var isOpen:Boolean = param1;
         if(isOpen)
         {
            card1 = img2;
            card2 = img;
         }
         else
         {
            card1 = img;
            card2 = img2;
         }
         func = function(param1:Event):void
         {
            var _loc2_:GameDataEvent = null;
            if(s == 0)
            {
               card2.visible = false;
               currentCard = card1;
               card1.scaleX = 0.75;
               card1.scaleY = 1;
               ++s;
            }
            else if(s == 1)
            {
               card1.scaleX = 0.5;
               card1.scaleY = 1;
               ++s;
            }
            else if(s == 2)
            {
               card1.scaleX = 0.25;
               card1.scaleY = 1;
               ++s;
            }
            else if(s == 3)
            {
               card1.scaleX = 0.03;
               card1.scaleY = 1;
               ++s;
            }
            else if(s == 4)
            {
               card2.visible = true;
               currentCard = card2;
               card1.visible = false;
               card1.scaleX = 1;
               card1.x = 0;
               card1.width = _imageWidth;
               card2.scaleX = 0.03;
               card2.scaleY = 1;
               ++s;
            }
            else if(s == 5)
            {
               card2.scaleX = 0.25;
               card2.scaleY = 1;
               ++s;
            }
            else if(s == 6)
            {
               card2.scaleX = 0.5;
               card2.scaleY = 1;
               ++s;
            }
            else if(s == 7)
            {
               card2.scaleX = 0.75;
               card2.scaleY = 1;
               ++s;
            }
            else if(s == 8)
            {
               card2.scaleX = 1;
               card2.scaleY = 1;
               s = 0;
               _timer.removeEventListener(TimerEvent.TIMER,func);
               _timer.stop();
               if(isOpen)
               {
                  _loc2_ = new GameDataEvent("duiduipengCardClick",true);
                  _loc2_.data = cardIndex;
                  dispatchEvent(_loc2_);
               }
               else
               {
                  setFlippingOverFlag(false);
               }
            }
            currentCard.x = _imageWidth * (1 - currentCard.scaleX) / 2;
         };
         if(_timer.running)
         {
            _timer.removeEventListener(TimerEvent.TIMER,func);
            _timer.stop();
         }
         card1.x = 0;
         card1.width = _imageWidth;
         card1.scaleX = 1;
         _timer.addEventListener(TimerEvent.TIMER,func);
         _timer.start();
      }
      
      public function get cardIndex() : int
      {
         return _cardIndex;
      }
      
      public function set clickAvailable(param1:Boolean) : void
      {
         this._clickAvailable = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function set cardIndex(param1:int) : void
      {
         _cardIndex = param1;
      }
      
      private function flipOverCardWithOutEffect(param1:Boolean) : void
      {
         img2.visible = param1;
         setDuiduiCardEnable(param1);
      }
      
      public function get cardId() : int
      {
         return _cardId;
      }
      
      [Bindable(event="propertyChange")]
      public function get img2() : Image
      {
         return this._3236047img2;
      }
      
      public function initDuiduipengCard(param1:int, param2:Object) : void
      {
         var _loc3_:int = 0;
         this.cardIndex = param1;
         this.cardId = param2.n;
         if(!_inited)
         {
            _loc3_ = this.cardId % 10;
            if(_loc3_ < 0 || _loc3_ > 7)
            {
               return;
            }
            img.source = ResManager.getIconUrl(resArray[_loc3_]);
            img2.source = ResManager.getIconUrl(backOfCardRes);
            img.visible = true;
            img2.visible = true;
            _inited = true;
         }
         if(param2.f == 1)
         {
            flipOverCardWithOutEffect(false);
         }
         else
         {
            flipOverCardWithOutEffect(true);
         }
      }
      
      public function setDuiduiCardEnable(param1:Boolean) : void
      {
         this._clickAvailable = param1;
         this.buttonMode = param1;
      }
      
      public function set inited(param1:Boolean) : void
      {
         this._inited = param1;
      }
      
      private function setFlippingOverFlag(param1:Boolean) : void
      {
         DuiduiPeng(this.parentDocument).isFlippingOver = param1;
      }
   }
}

