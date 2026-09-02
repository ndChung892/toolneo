package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class SudokuCard extends Canvas
   {
      
      private var _clickAvailable:Boolean = true;
      
      private var _3236047img2:Image;
      
      private var _104387img:Image;
      
      private var _inited:Boolean;
      
      private var _1184239130indexx:Label;
      
      private var _cardIndex:int;
      
      private var _cardId:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":110,
               "height":110,
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
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"indexx",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  }
               })]
            };
         }
      });
      
      private var resArray1:Array = [4130220001101,4130220001102,4130220001103,4130220001104,4130220001105,4130220001106,4130220001107,4130220001108,4130220001109];
      
      private var resArray2:Array = [4130220001110,4130220001111,4130220001112,4130220001113,4130220001114,4130220001115,4130220001116,4130220001117,4130220001118];
      
      private var resArray3:Array = [4130220001119,4130220001120,4130220001121,4130220001122,4130220001123,4130220001124,4130220001125,4130220001126,4130220001127];
      
      public function SudokuCard()
      {
         super();
         mx_internal::_document = this;
         this.width = 110;
         this.height = 110;
         this.addEventListener("creationComplete",___SudokuCard_Canvas1_creationComplete);
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
      
      public function set clickAvailable(param1:Boolean) : void
      {
         this._clickAvailable = param1;
      }
      
      public function get cardId() : int
      {
         return _cardId;
      }
      
      public function set indexx(param1:Label) : void
      {
         var _loc2_:Object = this._1184239130indexx;
         if(_loc2_ !== param1)
         {
            this._1184239130indexx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indexx",_loc2_,param1));
         }
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
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function setCardImg(param1:int) : void
      {
         if(param1 == 1)
         {
            img2.visible = false;
         }
         else if(param1 == 2)
         {
            img2.visible = true;
         }
      }
      
      public function setTileEnable(param1:Boolean) : void
      {
         this._clickAvailable = param1;
         this.buttonMode = param1;
      }
      
      public function overHandler(param1:MouseEvent) : void
      {
         if(!_clickAvailable)
         {
            return;
         }
         setCardImg(2);
      }
      
      public function set cardId(param1:int) : void
      {
         _cardId = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get img2() : Image
      {
         return this._3236047img2;
      }
      
      public function get clickAvailable() : Boolean
      {
         return _clickAvailable;
      }
      
      public function clickHandler(param1:MouseEvent) : void
      {
         if(!_clickAvailable)
         {
            return;
         }
         var _loc2_:GameDataEvent = new GameDataEvent("sudokuCardClick",true);
         _loc2_.data = cardIndex;
         this.dispatchEvent(_loc2_);
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
      
      [Bindable(event="propertyChange")]
      public function get indexx() : Label
      {
         return this._1184239130indexx;
      }
      
      private function init() : void
      {
         this.addEventListener(MouseEvent.CLICK,clickHandler);
         this.addEventListener(MouseEvent.ROLL_OVER,overHandler);
         this.addEventListener(MouseEvent.ROLL_OUT,outHandler);
      }
      
      public function get cardIndex() : int
      {
         return _cardIndex;
      }
      
      public function outHandler(param1:MouseEvent) : void
      {
         if(!_clickAvailable)
         {
            return;
         }
         setCardImg(1);
      }
      
      public function initSudokuCard(param1:int, param2:int) : void
      {
         this.cardIndex = param1;
         this.cardId = param2;
         if(!_inited)
         {
            img.source = ResManager.getIconUrl(resArray1[_cardId]);
            img2.source = ResManager.getIconUrl(resArray2[_cardId]);
            img2.visible = false;
            _inited = true;
         }
      }
      
      public function ___SudokuCard_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

