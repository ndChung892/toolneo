package mx.managers
{
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.DragSource;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.managers.dragClasses.DragProxy;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class DragManagerImpl implements IDragManager
   {
      
      private static var instance:IDragManager;
      
      private static var sm:ISystemManager;
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private var bDoingDrag:Boolean = false;
      
      private var mouseIsDown:Boolean = false;
      
      public var dragProxy:DragProxy;
      
      private var dragInitiator:IUIComponent;
      
      public function DragManagerImpl()
      {
         super();
         if(instance)
         {
            throw new Error("Instance already exists.");
         }
         if(sm.isTopLevel())
         {
            sm.addEventListener(MouseEvent.MOUSE_DOWN,sm_mouseDownHandler);
            sm.addEventListener(MouseEvent.MOUSE_UP,sm_mouseUpHandler);
         }
      }
      
      public static function getInstance() : IDragManager
      {
         if(!instance)
         {
            sm = SystemManagerGlobals.topLevelSystemManagers[0];
            instance = new DragManagerImpl();
         }
         return instance;
      }
      
      public function showFeedback(param1:String) : void
      {
         if(dragProxy)
         {
            if(param1 == DragManager.MOVE && !dragProxy.allowMove)
            {
               param1 = DragManager.COPY;
            }
            dragProxy.action = param1;
         }
      }
      
      private function sm_mouseDownHandler(param1:MouseEvent) : void
      {
         mouseIsDown = true;
      }
      
      public function getFeedback() : String
      {
         return dragProxy ? dragProxy.action : DragManager.NONE;
      }
      
      public function acceptDragDrop(param1:IUIComponent) : void
      {
         if(dragProxy)
         {
            dragProxy.target = param1;
         }
      }
      
      public function get isDragging() : Boolean
      {
         return bDoingDrag;
      }
      
      private function sm_mouseUpHandler(param1:MouseEvent) : void
      {
         mouseIsDown = false;
      }
      
      public function endDrag() : void
      {
         var _loc1_:ISystemManager = null;
         if(dragProxy)
         {
            _loc1_ = dragInitiator.systemManager;
            _loc1_.popUpChildren.removeChild(dragProxy);
            dragProxy.removeChildAt(0);
            dragProxy = null;
         }
         dragInitiator = null;
         bDoingDrag = false;
      }
      
      public function doDrag(param1:IUIComponent, param2:DragSource, param3:MouseEvent, param4:IFlexDisplayObject = null, param5:Number = 0, param6:Number = 0, param7:Number = 0.5, param8:Boolean = true) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc17_:CSSStyleDeclaration = null;
         var _loc18_:Class = null;
         if(bDoingDrag)
         {
            return;
         }
         if(!(param3.type == MouseEvent.MOUSE_DOWN || param3.type == MouseEvent.CLICK || mouseIsDown || param3.buttonDown))
         {
            return;
         }
         bDoingDrag = true;
         this.dragInitiator = param1;
         dragProxy = new DragProxy(param1,param2);
         param1.systemManager.popUpChildren.addChild(dragProxy);
         if(!param4)
         {
            _loc17_ = StyleManager.getStyleDeclaration("DragManager");
            _loc18_ = _loc17_.getStyle("defaultDragImageSkin");
            param4 = new _loc18_();
            dragProxy.addChild(DisplayObject(param4));
            _loc9_ = Number(param1.width);
            _loc10_ = Number(param1.height);
         }
         else
         {
            dragProxy.addChild(DisplayObject(param4));
            if(param4 is ILayoutManagerClient)
            {
               UIComponentGlobals.layoutManager.validateClient(ILayoutManagerClient(param4),true);
            }
            if(param4 is IUIComponent)
            {
               _loc9_ = (param4 as IUIComponent).getExplicitOrMeasuredWidth();
               _loc10_ = (param4 as IUIComponent).getExplicitOrMeasuredHeight();
            }
            else
            {
               _loc9_ = param4.measuredWidth;
               _loc10_ = param4.measuredHeight;
            }
         }
         param4.setActualSize(_loc9_,_loc10_);
         dragProxy.setActualSize(_loc9_,_loc10_);
         dragProxy.alpha = param7;
         dragProxy.allowMove = param8;
         var _loc11_:Object = param3.target;
         if(_loc11_ == null)
         {
            _loc11_ = param1;
         }
         var _loc12_:Point = new Point(param3.localX,param3.localY);
         _loc12_ = DisplayObject(_loc11_).localToGlobal(_loc12_);
         _loc12_ = DisplayObject(param1.systemManager.topLevelSystemManager).globalToLocal(_loc12_);
         var _loc13_:Number = _loc12_.x;
         var _loc14_:Number = _loc12_.y;
         var _loc15_:Point = DisplayObject(_loc11_).localToGlobal(new Point(param3.localX,param3.localY));
         _loc15_ = DisplayObject(param1).globalToLocal(_loc15_);
         dragProxy.xOffset = _loc15_.x + param5;
         dragProxy.yOffset = _loc15_.y + param6;
         dragProxy.x = _loc13_ - dragProxy.xOffset;
         dragProxy.y = _loc14_ - dragProxy.yOffset;
         dragProxy.startX = dragProxy.x;
         dragProxy.startY = dragProxy.y;
         if(param4 is DisplayObject)
         {
            DisplayObject(param4).cacheAsBitmap = true;
         }
         var _loc16_:Object = dragProxy.automationDelegate;
         if(_loc16_)
         {
            _loc16_.recordAutomatableDragStart(param1,param3);
         }
      }
   }
}

