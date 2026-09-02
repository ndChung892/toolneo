package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicToolTip;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.TextArea;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class GuidePanel extends DragableCanvas
   {
      
      private var _timer:Timer;
      
      private var _3693ta:TextArea;
      
      private var _pecent:int = 0;
      
      private var _color1:uint = 16774207;
      
      private var _color2:uint = 16733184;
      
      private var _guideSid:int;
      
      public var _lastReference:Object;
      
      private var _lineColor:uint;
      
      private var _fillColor:uint;
      
      private var _currentGuide:Object;
      
      private var _fillColor1:uint = 0;
      
      private var _fillColor2:uint = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _upRoundPanel:Object;
      
      private var _guideX:int;
      
      private var _guideY:int;
      
      private var _core:Core;
      
      public function GuidePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":130,
                  "height":60,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":TextArea,
                     "id":"ta",
                     "stylesFactory":function():void
                     {
                        this.borderThickness = 0;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        this.color = 16777215;
                        this.fontWeight = "bold";
                        this.right = "5";
                        this.top = "5";
                        this.left = "5";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "height":40,
                           "editable":false
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         _upRoundPanel = {
            530:true,
            280:true,
            2100:true,
            53:true,
            801:true
         };
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundAlpha = 0;
         };
         this.width = 130;
         this.height = 60;
         this.movable = false;
      }
      
      public function getBetweenColor(param1:uint, param2:uint, param3:Number) : uint
      {
         var _loc4_:Number = (param2 >> 16) - (param1 >> 16);
         var _loc5_:Number = (param2 >> 8 & 0xFF) - (param1 >> 8 & 0xFF);
         var _loc6_:Number = (param2 & 0xFF) - (param1 & 0xFF);
         var _loc7_:Number = (param1 >> 16) + _loc4_ * param3;
         var _loc8_:Number = (param1 >> 8 & 0xFF) + _loc5_ * param3;
         var _loc9_:Number = (param1 & 0xFF) + _loc6_ * param3;
         return _loc7_ << 16 | _loc8_ << 8 | _loc9_;
      }
      
      public function showGuide(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(_lastReference is QuestGuide && !_lastReference.visible)
         {
            trace("指引目标面板目前不可见");
            return;
         }
         if(_currentGuide.reference == ViewManager.PANEL_ACTIVE && !_lastReference.visible)
         {
            return;
         }
         if(_currentGuide.reference == ViewManager.PANEL_CHARACTOR && !_lastReference.visible)
         {
            return;
         }
         if(_currentGuide.reference == ViewManager.PANEL_CHARACTOR && Boolean(_lastReference.visible))
         {
            _lastReference.tabBtnClick(0,1,2);
         }
         ta.htmlText = param1;
         visible = true;
         if(Boolean(_timer) && _timer.running)
         {
            _timer.stop();
            _timer = null;
         }
         _timer = new Timer(35,0);
         _timer.addEventListener(TimerEvent.TIMER,handleDrawTimer);
         _timer.start();
      }
      
      private function drawUpRound2() : void
      {
         graphics.lineStyle(2,_lineColor);
         graphics.beginFill(_fillColor);
         graphics.drawRoundRect(ta.x - 2,ta.y - 2,ta.width + 4,ta.height + 4,5);
         graphics.moveTo(ta.width + 4 - 55,ta.y - 2);
         graphics.lineTo(ta.width + 4 - 10,ta.y - 2 - 15);
         graphics.lineTo(ta.width + 4 - 30,ta.y - 2);
         graphics.endFill();
         graphics.beginFill(_fillColor);
         graphics.lineStyle(1,_fillColor);
         graphics.moveTo(ta.width + 4 - 34,ta.y - 2 + 2);
         graphics.lineTo(ta.width + 4 - 10 - 7,ta.y - 2 - 15 + 3);
         graphics.lineTo(ta.width + 4 - 53,ta.y - 2 + 2);
         graphics.lineTo(ta.width + 4 - 34,ta.y - 2 + 2);
         graphics.endFill();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function handleReftPanelClose(param1:Event) : void
      {
         if(param1.target is BasicToolTip)
         {
            if(this.parent is BasicToolTip)
            {
               if(Boolean(_timer) && _timer.running)
               {
                  _timer.stop();
                  _timer = null;
                  trace("remove timer");
               }
               (param1.target as UIComponent).removeChild(this);
            }
            (param1.target as UIComponent).removeEventListener(DragableCanvas.EVENT_CLOSE,handleReftPanelClose);
         }
         else
         {
            if(_lastReference == param1.target)
            {
               hide();
            }
            (param1.target as UIComponent).removeEventListener(DragableCanvas.EVENT_CLOSE,handleReftPanelClose);
            (param1.target as UIComponent).removeEventListener(DragableCanvas.EVENT_MOVE,handleRefPanelMove);
         }
      }
      
      public function handleDrawTimer(param1:TimerEvent) : void
      {
         var _loc2_:uint = 0;
         if(_pecent == 11)
         {
            _loc2_ = _color1;
            _color1 = _color2;
            _color2 = _loc2_;
            _pecent = 0;
         }
         _lineColor = getBetweenColor(_color1,_color2,_pecent / 10);
         _fillColor = getBetweenColor(_fillColor1,_fillColor2,_pecent / 10);
         graphics.clear();
         if(_upRoundPanel[_currentGuide.reference])
         {
            if(_currentGuide.reference == 2100 || _currentGuide.reference == 801)
            {
               drawUpRound2();
            }
            else
            {
               drawUpRound();
            }
         }
         else
         {
            drawDownRound();
         }
         ++_pecent;
      }
      
      private function drawUpRound() : void
      {
         graphics.lineStyle(2,_lineColor);
         graphics.beginFill(_fillColor);
         graphics.drawRoundRect(ta.x - 2,ta.y - 2,ta.width + 4,ta.height + 4,5);
         graphics.moveTo(ta.x - 2 + 55,ta.y - 2);
         graphics.lineTo(ta.x - 2 + 10,ta.y - 2 - 15);
         graphics.lineTo(ta.x - 2 + 30,ta.y - 2);
         graphics.endFill();
         graphics.beginFill(_fillColor);
         graphics.lineStyle(1,_fillColor);
         graphics.moveTo(ta.x - 2 + 34,ta.y - 2 + 2);
         graphics.lineTo(ta.x - 2 + 10 + 7,ta.y - 2 - 15 + 3);
         graphics.lineTo(ta.x - 2 + 53,ta.y - 2 + 2);
         graphics.lineTo(ta.x - 2 + 34,ta.y - 2 + 2);
         graphics.endFill();
      }
      
      override public function hide() : void
      {
         if(Boolean(_timer) && _timer.running)
         {
            _timer.stop();
            _timer = null;
            trace("remove timer");
         }
         if(this.parent is BasicToolTip)
         {
            (this.parent as UIComponent).removeChild(this);
            return;
         }
         visible = false;
         var _loc1_:Event = new Event(DragableCanvas.EVENT_CLOSE);
         dispatchEvent(_loc1_);
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:UIComponent = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         if(!param1)
         {
            return;
         }
         _currentGuide = param1;
         _loc2_ = int(param1.scPid);
         _loc3_ = int(param1.mouseX);
         _loc4_ = int(param1.mouseY);
         _loc5_ = _core.view.getUI(param1.reference) as UIComponent;
         if(this.parent is BasicToolTip)
         {
            (this.parent as UIComponent).removeChild(this);
         }
         visible = false;
         _lastReference = _loc5_;
         if(_loc2_ == ViewManager.TOOLTIP_QUEST)
         {
            _guideX = _loc3_;
            _guideY = _loc4_;
            x = _loc3_;
            y = _loc4_;
            _loc5_.addChild(this);
            _loc5_.addEventListener(DragableCanvas.EVENT_CLOSE,handleReftPanelClose);
         }
         else if(param1.reference > 0 && Boolean(_loc5_))
         {
            if(_loc2_ == ViewManager.PANEL_BAG)
            {
               _loc6_ = 0;
               _loc7_ = 0;
               for each(_loc9_ in _core.data.sList)
               {
                  if(_loc9_.tid == _core.lastGetItemId && _loc9_.sid > _loc8_)
                  {
                     _loc8_ = int(_loc9_.sid);
                     _guideSid = _loc9_.sid;
                     _loc6_ = (_loc9_.sid - GamePredef.SLOT_SID_BAG[0] - 1) % 7 * 37;
                     _loc7_ = int((_loc9_.sid - GamePredef.SLOT_SID_BAG[0] - 1) / 7) * 37;
                  }
               }
               _loc3_ += _loc6_;
               _loc4_ += _loc7_;
            }
            _guideX = _loc3_;
            _guideY = _loc4_;
            x = _loc5_.x + _loc3_;
            y = _loc5_.y + _loc4_;
            _loc5_.addEventListener(DragableCanvas.EVENT_CLOSE,handleReftPanelClose);
            _loc5_.addEventListener(DragableCanvas.EVENT_MOVE,handleRefPanelMove);
         }
         else
         {
            this.x = _loc3_;
            this.y = _loc4_;
         }
      }
      
      public function handleRefPanelMove(param1:Event) : void
      {
         if(Boolean(_lastReference) && param1.target.className != _lastReference.className)
         {
            return;
         }
         this.x = param1.target.x + _guideX;
         this.y = param1.target.y + _guideY;
      }
      
      [Bindable(event="propertyChange")]
      public function get ta() : TextArea
      {
         return this._3693ta;
      }
      
      private function drawDownRound() : void
      {
         graphics.lineStyle(2,_lineColor);
         graphics.beginFill(_fillColor);
         graphics.drawRoundRect(ta.x - 2,ta.y - 2,ta.width + 4,ta.height + 4,5);
         graphics.moveTo(ta.x - 2 + 55,ta.y - 2 + ta.height + 4);
         graphics.lineTo(ta.x - 2 + 10,ta.y - 2 + ta.height + 4 + 15);
         graphics.lineTo(ta.x - 2 + 30,ta.y - 2 + ta.height + 4);
         graphics.endFill();
         graphics.beginFill(_fillColor);
         graphics.lineStyle(1,_fillColor);
         graphics.moveTo(ta.x - 2 + 34,ta.y - 2 + ta.height + 2);
         graphics.lineTo(ta.x - 2 + 10 + 7,ta.y - 2 + ta.height + 4 + 15 - 3);
         graphics.lineTo(ta.x - 2 + 53,ta.y - 2 + ta.height + 2);
         graphics.lineTo(ta.x - 2 + 34,ta.y - 2 + ta.height + 2);
         graphics.endFill();
      }
      
      public function set ta(param1:TextArea) : void
      {
         var _loc2_:Object = this._3693ta;
         if(_loc2_ !== param1)
         {
            this._3693ta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ta",_loc2_,param1));
         }
      }
   }
}

