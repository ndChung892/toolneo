package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Mouse;
   import mx.core.ApplicationGlobals;
   import mx.core.EventPriority;
   import mx.core.FlexSprite;
   import mx.core.mx_internal;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class CursorManagerImpl implements ICursorManager
   {
      
      private static var instance:ICursorManager;
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private var showSystemCursor:Boolean = false;
      
      private var nextCursorID:int = 1;
      
      private var systemManager:ISystemManager = null;
      
      private var cursorList:Array = [];
      
      private var _currentCursorYOffset:Number = 0;
      
      private var cursorHolder:Sprite;
      
      private var currentCursor:DisplayObject;
      
      private var _currentCursorID:int = 0;
      
      private var listenForContextMenu:Boolean = false;
      
      private var showCustomCursor:Boolean = false;
      
      private var initialized:Boolean = false;
      
      private var overTextField:Boolean = false;
      
      private var _currentCursorXOffset:Number = 0;
      
      private var busyCursorList:Array = [];
      
      private var overLink:Boolean = false;
      
      private var sourceArray:Array = [];
      
      public function CursorManagerImpl(param1:ISystemManager = null)
      {
         super();
         if(Boolean(instance) && !param1)
         {
            throw new Error("Instance already exists.");
         }
         if(param1)
         {
            this.systemManager = param1;
         }
         else
         {
            this.systemManager = ApplicationGlobals.application.systemManager;
         }
      }
      
      public static function getInstance() : ICursorManager
      {
         if(!instance)
         {
            instance = new CursorManagerImpl();
         }
         return instance;
      }
      
      public function set currentCursorYOffset(param1:Number) : void
      {
         _currentCursorYOffset = param1;
      }
      
      public function get currentCursorXOffset() : Number
      {
         return _currentCursorXOffset;
      }
      
      public function removeCursor(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:CursorQueueItem = null;
         for(_loc2_ in cursorList)
         {
            _loc3_ = cursorList[_loc2_];
            if(_loc3_.cursorID == param1)
            {
               cursorList.splice(_loc2_,1);
               showCurrentCursor();
               break;
            }
         }
      }
      
      public function get currentCursorID() : int
      {
         return _currentCursorID;
      }
      
      public function set currentCursorID(param1:int) : void
      {
         _currentCursorID = param1;
      }
      
      public function removeAllCursors() : void
      {
         cursorList.splice(0);
         showCurrentCursor();
      }
      
      private function priorityCompare(param1:CursorQueueItem, param2:CursorQueueItem) : int
      {
         if(param1.priority < param2.priority)
         {
            return -1;
         }
         if(param1.priority == param2.priority)
         {
            return 0;
         }
         return 1;
      }
      
      public function setBusyCursor() : void
      {
         var _loc1_:CSSStyleDeclaration = StyleManager.getStyleDeclaration("CursorManager");
         var _loc2_:Class = _loc1_.getStyle("busyCursor");
         busyCursorList.push(setCursor(_loc2_,CursorManagerPriority.LOW));
      }
      
      public function showCursor() : void
      {
         if(cursorHolder)
         {
            cursorHolder.visible = true;
         }
      }
      
      private function findSource(param1:Object) : int
      {
         var _loc2_:int = int(sourceArray.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(sourceArray[_loc3_] === param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function showCurrentCursor() : void
      {
         var _loc1_:InteractiveObject = null;
         var _loc2_:InteractiveObject = null;
         var _loc3_:CursorQueueItem = null;
         var _loc4_:ISystemManager = null;
         if(cursorList.length > 0)
         {
            if(!initialized)
            {
               cursorHolder = new FlexSprite();
               cursorHolder.name = "cursorHolder";
               cursorHolder.mouseEnabled = false;
               initialized = true;
            }
            _loc3_ = cursorList[0];
            if(currentCursorID == CursorManager.NO_CURSOR)
            {
               Mouse.hide();
            }
            if(_loc3_.cursorID != currentCursorID)
            {
               if(cursorHolder.numChildren > 0)
               {
                  cursorHolder.removeChildAt(0);
               }
               currentCursor = new _loc3_.cursorClass();
               if(currentCursor)
               {
                  if(currentCursor is InteractiveObject)
                  {
                     InteractiveObject(currentCursor).mouseEnabled = false;
                  }
                  _loc4_ = _loc3_.systemManager ? _loc3_.systemManager : ApplicationGlobals.application.systemManager;
                  if(Boolean(systemManager) && systemManager != _loc4_)
                  {
                     systemManager.cursorChildren.removeChild(cursorHolder);
                  }
                  systemManager = _loc4_;
                  if(!systemManager.cursorChildren.contains(cursorHolder))
                  {
                     systemManager.cursorChildren.addChild(cursorHolder);
                  }
                  cursorHolder.addChild(currentCursor);
                  if(!listenForContextMenu)
                  {
                     _loc1_ = systemManager.document as InteractiveObject;
                     if(Boolean(_loc1_) && Boolean(_loc1_.contextMenu))
                     {
                        _loc1_.contextMenu.addEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler);
                        listenForContextMenu = true;
                     }
                     _loc2_ = systemManager as InteractiveObject;
                     if(Boolean(_loc2_) && Boolean(_loc2_.contextMenu))
                     {
                        _loc2_.contextMenu.addEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler);
                        listenForContextMenu = true;
                     }
                  }
                  if(systemManager is SystemManager)
                  {
                     cursorHolder.x = SystemManager(systemManager).mouseX + _loc3_.x;
                     cursorHolder.y = SystemManager(systemManager).mouseY + _loc3_.y;
                  }
                  else if(systemManager is DisplayObject)
                  {
                     cursorHolder.x = DisplayObject(systemManager).mouseX + _loc3_.x;
                     cursorHolder.y = DisplayObject(systemManager).mouseY + _loc3_.y;
                  }
                  else
                  {
                     cursorHolder.x = _loc3_.x;
                     cursorHolder.y = _loc3_.y;
                  }
                  systemManager.stage.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true,EventPriority.CURSOR_MANAGEMENT);
               }
               currentCursorID = _loc3_.cursorID;
               currentCursorXOffset = _loc3_.x;
               currentCursorYOffset = _loc3_.y;
            }
         }
         else
         {
            if(currentCursorID != CursorManager.NO_CURSOR)
            {
               currentCursorID = CursorManager.NO_CURSOR;
               currentCursorXOffset = 0;
               currentCursorYOffset = 0;
               systemManager.stage.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
               cursorHolder.removeChild(currentCursor);
               if(listenForContextMenu)
               {
                  _loc1_ = systemManager.document as InteractiveObject;
                  if(Boolean(_loc1_) && Boolean(_loc1_.contextMenu))
                  {
                     _loc1_.contextMenu.removeEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler);
                  }
                  _loc2_ = systemManager as InteractiveObject;
                  if(Boolean(_loc2_) && Boolean(_loc2_.contextMenu))
                  {
                     _loc2_.contextMenu.removeEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler);
                  }
                  listenForContextMenu = false;
               }
            }
            Mouse.show();
         }
      }
      
      public function get currentCursorYOffset() : Number
      {
         return _currentCursorYOffset;
      }
      
      private function contextMenu_menuSelectHandler(param1:ContextMenuEvent) : void
      {
         showCustomCursor = true;
         systemManager.stage.addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
      }
      
      public function hideCursor() : void
      {
         if(cursorHolder)
         {
            cursorHolder.visible = false;
         }
      }
      
      public function registerToUseBusyCursor(param1:Object) : void
      {
         if(Boolean(param1) && param1 is EventDispatcher)
         {
            param1.addEventListener(ProgressEvent.PROGRESS,progressHandler);
            param1.addEventListener(Event.COMPLETE,completeHandler);
            param1.addEventListener(IOErrorEvent.IO_ERROR,completeHandler);
         }
      }
      
      private function completeHandler(param1:Event) : void
      {
         var _loc2_:int = findSource(param1.target);
         if(_loc2_ != -1)
         {
            sourceArray.splice(_loc2_,1);
            removeBusyCursor();
         }
      }
      
      public function setCursor(param1:Class, param2:int = 2, param3:Number = 0, param4:Number = 0) : int
      {
         var _loc5_:int = nextCursorID++;
         var _loc6_:CursorQueueItem = new CursorQueueItem();
         _loc6_.cursorID = _loc5_;
         _loc6_.cursorClass = param1;
         _loc6_.priority = param2;
         _loc6_.x = param3;
         _loc6_.y = param4;
         if(systemManager)
         {
            _loc6_.systemManager = systemManager;
         }
         else
         {
            _loc6_.systemManager = ApplicationGlobals.application.systemManager;
         }
         cursorList.push(_loc6_);
         cursorList.sort(priorityCompare);
         showCurrentCursor();
         return _loc5_;
      }
      
      private function progressHandler(param1:ProgressEvent) : void
      {
         var _loc2_:int = findSource(param1.target);
         if(_loc2_ == -1)
         {
            sourceArray.push(param1.target);
            setBusyCursor();
         }
      }
      
      public function removeBusyCursor() : void
      {
         if(busyCursorList.length > 0)
         {
            removeCursor(int(busyCursorList.pop()));
         }
      }
      
      private function mouseMoveHandler(param1:MouseEvent) : void
      {
         if(systemManager is SystemManager)
         {
            cursorHolder.x = SystemManager(systemManager).mouseX + currentCursorXOffset;
            cursorHolder.y = SystemManager(systemManager).mouseY + currentCursorYOffset;
         }
         else if(systemManager is DisplayObject)
         {
            cursorHolder.x = DisplayObject(systemManager).mouseX + currentCursorXOffset;
            cursorHolder.y = DisplayObject(systemManager).mouseY + currentCursorYOffset;
         }
         else
         {
            cursorHolder.x = currentCursorXOffset;
            cursorHolder.y = currentCursorYOffset;
         }
         var _loc2_:Object = param1.target;
         if(!overTextField && _loc2_ is TextField && _loc2_.type == TextFieldType.INPUT)
         {
            overTextField = true;
            showSystemCursor = true;
         }
         else if(overTextField && !(_loc2_ is TextField && _loc2_.type == TextFieldType.INPUT))
         {
            overTextField = false;
            showCustomCursor = true;
         }
         if(showSystemCursor)
         {
            showSystemCursor = false;
            cursorHolder.visible = false;
            Mouse.show();
         }
         if(showCustomCursor)
         {
            showCustomCursor = false;
            cursorHolder.visible = true;
            Mouse.hide();
         }
      }
      
      public function unRegisterToUseBusyCursor(param1:Object) : void
      {
         if(Boolean(param1) && param1 is EventDispatcher)
         {
            param1.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
            param1.removeEventListener(Event.COMPLETE,completeHandler);
            param1.removeEventListener(IOErrorEvent.IO_ERROR,completeHandler);
         }
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         systemManager.stage.removeEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
         mouseMoveHandler(param1);
      }
      
      public function set currentCursorXOffset(param1:Number) : void
      {
         _currentCursorXOffset = param1;
      }
   }
}

import mx.core.mx_internal;

use namespace mx_internal;

class CursorQueueItem
{
   
   mx_internal static const VERSION:String = "3.0.0.0";
   
   public var priority:int = 2;
   
   public var cursorClass:Class = null;
   
   public var cursorID:int = 0;
   
   public var x:Number;
   
   public var y:Number;
   
   public var systemManager:ISystemManager;
   
   public function CursorQueueItem()
   {
      super();
   }
}
