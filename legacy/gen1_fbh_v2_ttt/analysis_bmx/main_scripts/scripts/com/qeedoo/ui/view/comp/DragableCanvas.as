package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.core.ContainerCreationPolicy;
   import mx.core.SpriteAsset;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   
   public class DragableCanvas extends Canvas
   {
      
      public static const EVENT_MOVE:String = "DPANEL_EVENT_MOVE";
      
      public static const EVENT_CLOSE:String = "DPANEL_EVENT_CLOSE";
      
      public static const TOP:int = 0;
      
      public static const RIGHT:int = 1;
      
      public static const BOTTOM:int = 2;
      
      public static const LEFT:int = 3;
      
      public static var DRAGABLE:Boolean = true;
      
      public static var SHOW_DEFAULT_POS:Boolean = false;
      
      private var _titleLeft:SpriteAsset;
      
      private var _container:Object;
      
      private var origWidth:int;
      
      private var _ox:int;
      
      private var _oy:int;
      
      public var _hasHideGudie:Boolean = false;
      
      private var _closeBtn:Button;
      
      private var _showMinBtn:Boolean;
      
      private var _titleMid:SpriteAsset;
      
      private var _target:DragableCanvas;
      
      private var _dx:Number;
      
      private var _dy:Number;
      
      private var _movable:Boolean;
      
      private var yOff:Number;
      
      private var _titleRight:SpriteAsset;
      
      private var _width:Number;
      
      private var origHeight:int;
      
      private var _isMin:Boolean;
      
      private var _height:Number;
      
      private var _dir:int;
      
      private var _minBtn:Button;
      
      private var _restoreHeight:int;
      
      private var xOff:Number;
      
      private var _closeWith:DragableCanvas;
      
      private var _showBtn:Boolean;
      
      public var movable:Boolean;
      
      private var _firstTimeVisible:Boolean;
      
      public var viewType:uint = 16;
      
      public function DragableCanvas()
      {
         super();
         addEventListener(FlexEvent.CREATION_COMPLETE,creationCompleteHandler);
         addEventListener(KeyboardEvent.KEY_DOWN,kdHandler);
         verticalScrollPolicy = "off";
         horizontalScrollPolicy = "off";
         cacheAsBitmap = true;
         creationPolicy = ContainerCreationPolicy.ALL;
         movable = true;
         _firstTimeVisible = false;
      }
      
      private function minBtnClick(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new FlexEvent("min"));
      }
      
      private function helpBtnClick(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new FlexEvent("help"));
      }
      
      private function mouseUpHandler(param1:MouseEvent) : void
      {
         stopDrag();
         systemManager.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         systemManager.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
      }
      
      private function creationCompleteHandler(param1:Event) : void
      {
         addEventListener(MouseEvent.MOUSE_DOWN,clickHandler);
      }
      
      public function set container(param1:Object) : void
      {
         _container = param1;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         addEventListener(FlexEvent.CREATION_COMPLETE,createCompleteHandler);
      }
      
      private function btnDown(param1:Event) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         setToFront();
         if(movable && DRAGABLE && param1.stageY - y < 25)
         {
            startDrag();
            systemManager.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
            systemManager.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
            xOff = param1.currentTarget.mouseX;
            yOff = param1.currentTarget.mouseY;
         }
      }
      
      private function closeBtnClick(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new FlexEvent("close"));
      }
      
      public function set dx(param1:Number) : void
      {
         x = param1;
         _dx = param1;
      }
      
      public function set dy(param1:Number) : void
      {
         y = param1;
         _dy = param1;
      }
      
      private function kdHandler(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               hide();
         }
      }
      
      private function closeHandler(param1:Event) : void
      {
         if(param1)
         {
            dispatchEvent(param1);
         }
         stopFollow();
         stopCloseWith();
         hide();
      }
      
      private function _stopDrag(param1:Event) : void
      {
         stopDrag();
      }
      
      private function _startDrag(param1:Event) : void
      {
         startDrag();
      }
      
      private function setToFront() : void
      {
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      private function createCompleteHandler(param1:FlexEvent) : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,createCompleteHandler);
      }
      
      private function help(param1:FlexEvent) : void
      {
         trace("call help here");
      }
      
      public function hide() : void
      {
         visible = false;
         var _loc1_:Event = new Event(EVENT_CLOSE);
         dispatchEvent(_loc1_);
      }
      
      private function guidePanelHitTest() : void
      {
         if(className == "GuidePanel")
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Object = Core.getInstance().view.getUI(ViewManager.POP_NEW_PLAER_GUIDE) as UIComponent;
         if(Boolean(_loc2_) && Boolean(_loc2_._lastReference))
         {
            if(className == _loc2_._lastReference.className)
            {
               _loc1_ = true;
            }
            if(Boolean(_loc2_.visible && !_loc1_) && Boolean(hitTestObject(_loc2_ as UIComponent)) && _loc2_._lastReference is DragableCanvas)
            {
               _loc2_.visible = false;
               _hasHideGudie = true;
               if(_loc2_._lastReference.className != "PetCmdCanvas" && _loc2_._lastReference.className != "PlayerCmdCanvas")
               {
                  if(_loc2_._lastReference.hasOwnProperty("_hasHideGudie"))
                  {
                     _loc2_._lastReference._hasHideGudie = true;
                  }
               }
            }
            else if(_hasHideGudie && !_loc1_ && !hitTestObject(_loc2_ as UIComponent))
            {
               _loc2_.visible = true;
               _hasHideGudie = false;
            }
            else if(_hasHideGudie && _loc1_)
            {
               _loc2_.visible = true;
               _hasHideGudie = false;
            }
         }
         else if(Boolean(_loc2_) && !_loc2_._lastReference)
         {
            if(Boolean(_loc2_.visible) && hitTestObject(_loc2_ as UIComponent))
            {
               _loc2_.visible = false;
               _hasHideGudie = true;
            }
            else if(_hasHideGudie && !hitTestObject(_loc2_ as UIComponent))
            {
               _loc2_.visible = true;
               _hasHideGudie = false;
            }
         }
      }
      
      private function closePanelHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         hide();
      }
      
      protected function updateLater(param1:FlexEvent) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,updateLater);
         update();
      }
      
      public function startFollow(param1:DragableCanvas, param2:int = 1) : void
      {
         stopFollow();
         _target = param1;
         _dir = param2;
         _target.addEventListener(EVENT_MOVE,followHandler);
         _target.addEventListener(EVENT_CLOSE,closeHandler);
         _movable = movable;
         movable = false;
         _ox = x;
         _oy = y;
         followHandler(null);
      }
      
      public function completeHandler(param1:FlexEvent) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
         initView();
      }
      
      public function stopFollow() : void
      {
         if(_target)
         {
            _target.removeEventListener(EVENT_CLOSE,closeHandler);
            _target.removeEventListener(EVENT_MOVE,followHandler);
            _target = null;
            movable = _movable;
            x = _ox;
            y = _oy;
         }
      }
      
      private function mouseMoveHandler(param1:MouseEvent) : void
      {
         if(parent == null)
         {
            return;
         }
         var _loc2_:Event = new Event(EVENT_MOVE);
         dispatchEvent(_loc2_);
         guidePanelHitTest();
      }
      
      public function initView() : void
      {
      }
      
      public function update() : void
      {
      }
      
      private function followHandler(param1:Event) : void
      {
         if(param1)
         {
            dispatchEvent(param1);
         }
         if(_dir == TOP)
         {
            x = _target.x;
            y = _target.y - this.height;
         }
         else if(_dir == RIGHT)
         {
            x = _target.x + _target.width;
            y = _target.y;
         }
         else if(_dir == BOTTOM)
         {
            x = _target.x;
            y = _target.y + _target.height;
         }
         else if(_dir == LEFT)
         {
            x = _target.x - this.width;
            y = _target.y;
         }
         else
         {
            x = _target.x + _target.width;
            y = _target.y;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(_container == null)
         {
            return;
         }
         if(param1)
         {
            if(SHOW_DEFAULT_POS)
            {
               x = _dx;
               y = _dy;
            }
            if(_firstTimeVisible)
            {
            }
            if(!_isMin)
            {
               _width = width;
               _height = height;
            }
            if(visible)
            {
               setToFront();
            }
            else
            {
               _container.addChild(this);
            }
         }
         else
         {
            stopFollow();
            dispatchEvent(new Event(EVENT_CLOSE));
            if(visible)
            {
               _container.removeChild(this);
            }
         }
      }
      
      public function get container() : Object
      {
         return _container;
      }
      
      public function closeWith(param1:DragableCanvas) : void
      {
         stopCloseWith();
         _closeWith = param1;
         _closeWith.addEventListener(EVENT_CLOSE,closeHandler);
      }
      
      override public function get visible() : Boolean
      {
         return Boolean(parent != null);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
      }
      
      private function close(param1:FlexEvent) : void
      {
         param1.stopPropagation();
         hide();
      }
      
      override protected function initializationComplete() : void
      {
         _container = parentDocument;
      }
      
      public function stopCloseWith() : void
      {
         if(_closeWith)
         {
            _closeWith.removeEventListener(EVENT_CLOSE,closeHandler);
            _closeWith = null;
         }
      }
      
      public function show() : void
      {
         visible = true;
         setFocus();
      }
   }
}

