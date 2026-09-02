package com.qeedoo.ui.view.comp
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class ExtractCardAwardPanel extends Canvas
   {
      
      public static const MOVE_LENGTH:Number = 200;
      
      private var _55416021leftBtn:Button;
      
      private var _1436107104rightBtn:Button;
      
      private var itemStartIndex:int = 0;
      
      private var movePanel:Canvas = new Canvas();
      
      private var items:Array = [];
      
      public var lvl:int = -1;
      
      private var move_type:int = 0;
      
      private var awardRects:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":650,
               "height":120,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"container",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":600,
                        "height":120,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"leftBtn",
                  "events":{"click":"__leftBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "2";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "styleName":"BtnActivityPageUp",
                        "y":70,
                        "rotation":-90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"rightBtn",
                  "events":{"click":"__rightBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "2";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "styleName":"BtnActivityPageDown",
                        "y":70,
                        "rotation":-90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"title",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.top = "5";
                     this.color = 16777215;
                  }
               })]
            };
         }
      });
      
      private var _410956671container:Canvas;
      
      private var _110371416title:Label;
      
      private var counter:int = 0;
      
      private var moveStep:int = 0;
      
      public function ExtractCardAwardPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 650;
         this.height = 120;
         this.styleName = "CanvasBorder";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___ExtractCardAwardPanel_Canvas1_creationComplete);
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : Canvas
      {
         return this._410956671container;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:ExtractCardAwardLine = null;
         title.text = Language.EXTRACT_CARD_PANEL_U[9 + lvl];
         movePanel.height = 120;
         movePanel.x = -200;
         movePanel.horizontalScrollPolicy = "off";
         movePanel.verticalScrollPolicy = "off";
         container.addChild(movePanel);
         awardRects = [];
         movePanel.width = 1000;
         _loc1_ = 0;
         while(_loc1_ < 4)
         {
            _loc2_ = new ExtractCardAwardLine();
            _loc2_.x = 200 * _loc1_ + 200;
            _loc2_.y = 10;
            _loc2_.visible = false;
            _loc2_.lvl = int(lvl);
            awardRects[_loc1_] = _loc2_;
            movePanel.addChild(_loc2_);
            _loc1_++;
         }
      }
      
      private function toMove(param1:Boolean) : void
      {
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = movePanel;
         _loc2_.stepLength = 20;
         _loc2_.xBy = param1 ? MOVE_LENGTH : -MOVE_LENGTH;
         _loc2_.yBy = 0;
         _loc2_.addEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
         _loc2_.play(true);
      }
      
      public function refreshAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:ExtractCardAwardLine = null;
         itemStartIndex = 0;
         counter = 0;
         items.length = 0;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            items.push(_loc3_);
            _loc4_ = awardRects[counter];
            if(counter <= 3)
            {
               _loc4_.x = 200 * counter + 200;
               _loc4_.y = 10;
               _loc4_.refresh(_loc3_);
               _loc4_.visible = true;
            }
            ++counter;
         }
         if(counter > 3)
         {
            leftBtn.visible = true;
            leftBtn.enabled = true;
            rightBtn.visible = true;
            rightBtn.enabled = true;
         }
         else
         {
            leftBtn.visible = false;
            leftBtn.enabled = false;
            rightBtn.visible = false;
            rightBtn.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftBtn() : Button
      {
         return this._55416021leftBtn;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set container(param1:Canvas) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
         }
      }
      
      public function ___ExtractCardAwardPanel_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __rightBtn_click(param1:MouseEvent) : void
      {
         toRight();
      }
      
      private function getNextItemId(param1:int, param2:Boolean) : int
      {
         var _loc3_:int = param1;
         if(param2)
         {
            if(_loc3_ - 1 < 0)
            {
               _loc3_ = items.length - 1;
            }
            else
            {
               _loc3_--;
            }
         }
         else if(_loc3_ + 3 > items.length - 1)
         {
            _loc3_ -= items.length - 3;
         }
         else
         {
            _loc3_ += 3;
         }
         if(_loc3_ < 0)
         {
            _loc3_ = items.length - 1;
         }
         else if(_loc3_ > items.length - 1)
         {
            _loc3_ = 0;
         }
         return _loc3_;
      }
      
      private function moveEndHandler(param1:Event) : void
      {
         var _loc4_:ExtractCardAwardLine = null;
         var _loc2_:EnterFrameMove = param1.currentTarget as EnterFrameMove;
         _loc2_.removeEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
         _loc2_.destroy();
         _loc2_ = null;
         if(move_type == 1)
         {
            awardRects.push(awardRects.shift());
            ++itemStartIndex;
         }
         else
         {
            awardRects.unshift(awardRects.pop());
            --itemStartIndex;
         }
         if(itemStartIndex < 0)
         {
            itemStartIndex = items.length - 1;
         }
         else if(itemStartIndex > items.length - 1)
         {
            itemStartIndex = 0;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 4)
         {
            _loc4_ = awardRects[_loc3_];
            _loc4_.x = 200 * _loc3_ + 200;
            _loc4_.y = 10;
            _loc3_++;
         }
         movePanel.x = -200;
         move_type = 0;
      }
      
      private function toRight() : void
      {
         var _loc1_:ExtractCardAwardLine = null;
         if(move_type != 0 || counter <= 3)
         {
            return;
         }
         move_type = 1;
         _loc1_ = awardRects[3];
         var _loc2_:int = getNextItemId(itemStartIndex,false);
         var _loc3_:Object = items[_loc2_];
         _loc1_.refresh(_loc3_);
         _loc1_.x = 800;
         _loc1_.visible = true;
         --moveStep;
         toMove(false);
      }
      
      [Bindable(event="propertyChange")]
      public function get rightBtn() : Button
      {
         return this._1436107104rightBtn;
      }
      
      private function toLeft() : void
      {
         var _loc3_:ExtractCardAwardLine = null;
         if(move_type != 0 || counter <= 3)
         {
            return;
         }
         move_type = 2;
         var _loc1_:int = getNextItemId(itemStartIndex,true);
         var _loc2_:Object = items[_loc1_];
         _loc3_ = awardRects[3];
         _loc3_.refresh(_loc2_);
         _loc3_.x = 0;
         _loc3_.visible = true;
         ++moveStep;
         toMove(true);
      }
      
      public function set leftBtn(param1:Button) : void
      {
         var _loc2_:Object = this._55416021leftBtn;
         if(_loc2_ !== param1)
         {
            this._55416021leftBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftBtn",_loc2_,param1));
         }
      }
      
      public function refreshAwardNumber(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:ExtractCardAwardLine = null;
         var _loc2_:int = 0;
         while(_loc2_ < items.length)
         {
            _loc4_ = items[_loc2_];
            if((Boolean(_loc4_)) && Boolean(param1[_loc4_.awardId]))
            {
               items[_loc2_] = param1[_loc4_.awardId];
            }
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            _loc5_ = awardRects[_loc3_];
            _loc5_.refreshNumber(param1);
            _loc3_++;
         }
      }
      
      public function set rightBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1436107104rightBtn;
         if(_loc2_ !== param1)
         {
            this._1436107104rightBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : Label
      {
         return this._110371416title;
      }
      
      public function __leftBtn_click(param1:MouseEvent) : void
      {
         toLeft();
      }
      
      public function set title(param1:Label) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
   }
}

