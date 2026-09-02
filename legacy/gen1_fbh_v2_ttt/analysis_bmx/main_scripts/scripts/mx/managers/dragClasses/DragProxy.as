package mx.managers.dragClasses
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.DragSource;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.effects.Zoom;
   import mx.events.DragEvent;
   import mx.events.EffectEvent;
   import mx.managers.CursorManager;
   import mx.managers.DragManager;
   import mx.managers.ISystemManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class DragProxy extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      public var allowMove:Boolean = true;
      
      private var cursorClass:Class = null;
      
      public var action:String;
      
      public var target:IUIComponent = null;
      
      public var dragInitiator:IUIComponent;
      
      private var lastMouseEvent:MouseEvent;
      
      public var yOffset:Number;
      
      public var dragSource:DragSource;
      
      private var cursorID:int = 0;
      
      public var xOffset:Number;
      
      public var startX:Number;
      
      public var startY:Number;
      
      private var lastKeyEvent:KeyboardEvent;
      
      public function DragProxy(param1:IUIComponent, param2:DragSource)
      {
         super();
         this.dragInitiator = param1;
         this.dragSource = param2;
         var _loc3_:ISystemManager = param1.systemManager.topLevelSystemManager;
         _loc3_.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
         _loc3_.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         _loc3_.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
         _loc3_.addEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
      }
      
      public function mouseUpHandler(param1:MouseEvent) : void
      {
         var _loc2_:DragEvent = null;
         var _loc5_:Point = null;
         var _loc6_:Move = null;
         var _loc7_:Zoom = null;
         var _loc8_:Move = null;
         var _loc3_:ISystemManager = dragInitiator.systemManager.topLevelSystemManager;
         _loc3_.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,stage_mouseMoveHandler);
         _loc3_.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         _loc3_.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
         stage.removeEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler);
         _loc3_.removeEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
         var _loc4_:Object = automationDelegate;
         if(Boolean(target) && action != DragManager.NONE)
         {
            _loc2_ = new DragEvent(DragEvent.DRAG_DROP);
            _loc2_.dragInitiator = dragInitiator;
            _loc2_.dragSource = dragSource;
            _loc2_.action = action;
            _loc2_.ctrlKey = param1.ctrlKey;
            _loc2_.altKey = param1.altKey;
            _loc2_.shiftKey = param1.shiftKey;
            _loc5_ = new Point();
            _loc5_.x = lastMouseEvent.localX;
            _loc5_.y = lastMouseEvent.localY;
            _loc5_ = DisplayObject(lastMouseEvent.target).localToGlobal(_loc5_);
            _loc5_ = DisplayObject(target).globalToLocal(_loc5_);
            _loc2_.localX = _loc5_.x;
            _loc2_.localY = _loc5_.y;
            if(_loc4_)
            {
               _loc4_.recordAutomatableDragDrop(target,_loc2_);
            }
            target.dispatchEvent(_loc2_);
         }
         else
         {
            action = DragManager.NONE;
         }
         if(action == DragManager.NONE)
         {
            _loc6_ = new Move(this);
            _loc6_.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
            _loc6_.xFrom = x;
            _loc6_.yFrom = y;
            _loc6_.xTo = startX;
            _loc6_.yTo = startY;
            _loc6_.duration = 200;
            _loc6_.play();
         }
         else
         {
            _loc7_ = new Zoom(this);
            _loc7_.zoomWidthFrom = _loc7_.zoomHeightFrom = 1;
            _loc7_.zoomWidthTo = _loc7_.zoomHeightTo = 0;
            _loc7_.duration = 200;
            _loc7_.play();
            _loc8_ = new Move(this);
            _loc8_.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
            _loc8_.xFrom = x;
            _loc8_.yFrom = this.y;
            _loc8_.xTo = parent.mouseX;
            _loc8_.yTo = parent.mouseY;
            _loc8_.duration = 200;
            _loc8_.play();
         }
         _loc2_ = new DragEvent(DragEvent.DRAG_COMPLETE);
         _loc2_.dragInitiator = dragInitiator;
         _loc2_.dragSource = dragSource;
         _loc2_.relatedObject = InteractiveObject(target);
         _loc2_.action = action;
         _loc2_.ctrlKey = param1.ctrlKey;
         _loc2_.altKey = param1.altKey;
         _loc2_.shiftKey = param1.shiftKey;
         dragInitiator.dispatchEvent(_loc2_);
         if(Boolean(_loc4_) && action == DragManager.NONE)
         {
            _loc4_.recordAutomatableDragCancel(dragInitiator,_loc2_);
         }
         cursorManager.removeCursor(cursorID);
         cursorID = CursorManager.NO_CURSOR;
         this.lastMouseEvent = null;
      }
      
      public function showFeedback() : void
      {
         var _loc1_:Class = cursorClass;
         var _loc2_:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
         if(action == DragManager.COPY)
         {
            _loc1_ = _loc2_.getStyle("copyCursor");
         }
         else if(action == DragManager.LINK)
         {
            _loc1_ = _loc2_.getStyle("linkCursor");
         }
         else if(action == DragManager.NONE)
         {
            _loc1_ = _loc2_.getStyle("rejectCursor");
         }
         else
         {
            _loc1_ = _loc2_.getStyle("moveCursor");
         }
         if(_loc1_ != cursorClass)
         {
            cursorClass = _loc1_;
            if(cursorID != CursorManager.NO_CURSOR)
            {
               cursorManager.removeCursor(cursorID);
            }
            cursorID = cursorManager.setCursor(cursorClass,2,0,0);
         }
      }
      
      override public function initialize() : void
      {
         super.initialize();
         stage.addEventListener(MouseEvent.MOUSE_MOVE,stage_mouseMoveHandler);
         stage.addEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler);
         if(!getFocus())
         {
            setFocus();
         }
      }
      
      public function mouseMoveHandler(param1:MouseEvent) : void
      {
         var _loc2_:DragEvent = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:int = 0;
         var _loc12_:Boolean = false;
         var _loc13_:IUIComponent = null;
         lastMouseEvent = param1;
         var _loc5_:Point = new Point();
         var _loc6_:Point = new Point(param1.localX,param1.localY);
         _loc6_ = DisplayObject(param1.target).localToGlobal(_loc6_);
         _loc6_ = DisplayObject(dragInitiator.systemManager.topLevelSystemManager).globalToLocal(_loc6_);
         var _loc7_:Number = _loc6_.x;
         var _loc8_:Number = _loc6_.y;
         x = _loc7_ - xOffset;
         y = _loc8_ - yOffset;
         if(!param1)
         {
            return;
         }
         var _loc9_:Array = DisplayObjectContainer(dragInitiator.systemManager.topLevelSystemManager).getObjectsUnderPoint(new Point(_loc7_,_loc8_));
         var _loc10_:DisplayObject = null;
         var _loc11_:* = int(_loc9_.length - 1);
         while(_loc11_ >= 0)
         {
            _loc10_ = _loc9_[_loc11_];
            if(_loc10_ != this && !contains(_loc10_))
            {
               break;
            }
            _loc11_--;
         }
         if(target)
         {
            _loc12_ = false;
            _loc13_ = target;
            _loc3_ = _loc10_;
            while(_loc3_)
            {
               if(_loc3_ == target)
               {
                  dispatchDragEvent(DragEvent.DRAG_OVER,param1,_loc3_);
                  _loc12_ = true;
                  break;
               }
               dispatchDragEvent(DragEvent.DRAG_ENTER,param1,_loc3_);
               if(target == _loc3_)
               {
                  _loc12_ = false;
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
            if(!_loc12_)
            {
               dispatchDragEvent(DragEvent.DRAG_EXIT,param1,_loc13_);
               if(target == _loc13_)
               {
                  target = null;
               }
            }
         }
         if(!target)
         {
            action = DragManager.MOVE;
            _loc3_ = _loc10_;
            while(_loc3_)
            {
               if(_loc3_ != this)
               {
                  dispatchDragEvent(DragEvent.DRAG_ENTER,param1,_loc3_);
                  if(target)
                  {
                     break;
                  }
               }
               _loc3_ = _loc3_.parent;
            }
            if(!target)
            {
               action = DragManager.NONE;
            }
         }
         showFeedback();
      }
      
      private function dispatchDragEvent(param1:String, param2:MouseEvent, param3:Object) : void
      {
         var _loc4_:DragEvent = new DragEvent(param1);
         var _loc5_:Point = new Point();
         _loc4_.dragInitiator = dragInitiator;
         _loc4_.dragSource = dragSource;
         _loc4_.action = action;
         _loc4_.ctrlKey = param2.ctrlKey;
         _loc4_.altKey = param2.altKey;
         _loc4_.shiftKey = param2.shiftKey;
         _loc5_.x = lastMouseEvent.localX;
         _loc5_.y = lastMouseEvent.localY;
         _loc5_ = DisplayObject(lastMouseEvent.target).localToGlobal(_loc5_);
         _loc5_ = DisplayObject(param3).globalToLocal(_loc5_);
         _loc4_.localX = _loc5_.x;
         _loc4_.localY = _loc5_.y;
         param3.dispatchEvent(_loc4_);
      }
      
      override protected function keyUpHandler(param1:KeyboardEvent) : void
      {
         checkKeyEvent(param1);
      }
      
      private function effectEndHandler(param1:EffectEvent) : void
      {
         DragManager.mx_internal::endDrag();
      }
      
      public function checkKeyEvent(param1:KeyboardEvent) : void
      {
         var _loc2_:DragEvent = null;
         var _loc3_:Point = null;
         if(target)
         {
            if(Boolean(lastKeyEvent) && Boolean(param1.type == lastKeyEvent.type) && param1.keyCode == lastKeyEvent.keyCode)
            {
               return;
            }
            lastKeyEvent = param1;
            _loc2_ = new DragEvent(DragEvent.DRAG_OVER);
            _loc2_.dragInitiator = dragInitiator;
            _loc2_.dragSource = dragSource;
            _loc2_.action = action;
            _loc2_.ctrlKey = param1.ctrlKey;
            _loc2_.altKey = param1.altKey;
            _loc2_.shiftKey = param1.shiftKey;
            _loc3_ = new Point();
            _loc3_.x = lastMouseEvent.localX;
            _loc3_.y = lastMouseEvent.localY;
            _loc3_ = DisplayObject(lastMouseEvent.target).localToGlobal(_loc3_);
            _loc3_ = DisplayObject(target).globalToLocal(_loc3_);
            _loc2_.localX = _loc3_.x;
            _loc2_.localY = _loc3_.y;
            target.dispatchEvent(_loc2_);
            showFeedback();
         }
      }
      
      public function mouseLeaveHandler(param1:Event) : void
      {
         mouseUpHandler(lastMouseEvent);
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         checkKeyEvent(param1);
      }
      
      public function stage_mouseMoveHandler(param1:MouseEvent) : void
      {
         if(param1.target != stage)
         {
            return;
         }
         mouseMoveHandler(param1);
      }
   }
}

