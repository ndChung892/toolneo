package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.automation.IAutomationObject;
   import mx.core.ApplicationGlobals;
   import mx.core.FlexSprite;
   import mx.core.IChildList;
   import mx.core.IFlexDisplayObject;
   import mx.core.IInvalidating;
   import mx.core.IUIComponent;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.effects.Blur;
   import mx.effects.Fade;
   import mx.effects.IEffect;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.FlexMouseEvent;
   import mx.styles.IStyleClient;
   
   use namespace mx_internal;
   
   public class PopUpManagerImpl implements IPopUpManager
   {
      
      private static var instance:IPopUpManager;
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private var popupInfo:Array;
      
      mx_internal var modalWindowClass:Class;
      
      public function PopUpManagerImpl()
      {
         super();
      }
      
      private static function nonmodalMouseWheelOutsideHandler(param1:DisplayObject, param2:MouseEvent) : void
      {
         if(!param1.hitTestPoint(param2.stageX,param2.stageY,true))
         {
            if(param1 is IUIComponent)
            {
               if(IUIComponent(param1).owns(DisplayObject(param2.target)))
               {
                  return;
               }
            }
            dispatchMouseWheelOutsideEvent(param1,param2);
         }
      }
      
      private static function dispatchMouseWheelOutsideEvent(param1:DisplayObject, param2:MouseEvent) : void
      {
         var _loc3_:MouseEvent = new FlexMouseEvent(FlexMouseEvent.MOUSE_WHEEL_OUTSIDE);
         var _loc4_:Point = param1.globalToLocal(new Point(param2.stageX,param2.stageY));
         _loc3_.localX = _loc4_.x;
         _loc3_.localY = _loc4_.y;
         _loc3_.buttonDown = param2.buttonDown;
         _loc3_.shiftKey = param2.shiftKey;
         _loc3_.altKey = param2.altKey;
         _loc3_.ctrlKey = param2.ctrlKey;
         _loc3_.delta = param2.delta;
         _loc3_.relatedObject = InteractiveObject(param2.target);
         param1.dispatchEvent(_loc3_);
      }
      
      private static function dispatchMouseDownOutsideEvent(param1:DisplayObject, param2:MouseEvent) : void
      {
         var _loc3_:MouseEvent = new FlexMouseEvent(FlexMouseEvent.MOUSE_DOWN_OUTSIDE);
         var _loc4_:Point = param1.globalToLocal(new Point(param2.stageX,param2.stageY));
         _loc3_.localX = _loc4_.x;
         _loc3_.localY = _loc4_.y;
         _loc3_.buttonDown = param2.buttonDown;
         _loc3_.shiftKey = param2.shiftKey;
         _loc3_.altKey = param2.altKey;
         _loc3_.ctrlKey = param2.ctrlKey;
         _loc3_.delta = param2.delta;
         _loc3_.relatedObject = InteractiveObject(param2.target);
         param1.dispatchEvent(_loc3_);
      }
      
      public static function getInstance() : IPopUpManager
      {
         if(!instance)
         {
            instance = new PopUpManagerImpl();
         }
         return instance;
      }
      
      private static function nonmodalMouseDownOutsideHandler(param1:DisplayObject, param2:MouseEvent) : void
      {
         if(!param1.hitTestPoint(param2.stageX,param2.stageY,true))
         {
            if(param1 is IUIComponent)
            {
               if(IUIComponent(param1).owns(DisplayObject(param2.target)))
               {
                  return;
               }
            }
            dispatchMouseDownOutsideEvent(param1,param2);
         }
      }
      
      private function showModalWindow(param1:PopUpData) : void
      {
         var _loc4_:Fade = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Blur = null;
         var _loc2_:IStyleClient = param1.owner as IStyleClient;
         var _loc3_:Number = 0;
         if(_loc2_)
         {
            _loc3_ = _loc2_.getStyle("modalTransparencyDuration");
         }
         endEffects(param1);
         if(_loc3_)
         {
            _loc4_ = new Fade(param1.modalWindow);
            _loc4_.alphaFrom = 0;
            _loc4_.alphaTo = _loc2_.getStyle("modalTransparency");
            _loc4_.duration = _loc3_;
            _loc4_.addEventListener(EffectEvent.EFFECT_END,fadeInEffectEndHandler);
            param1.modalWindow.alpha = 0;
            param1.modalWindow.visible = true;
            param1.fade = _loc4_;
            IUIComponent(param1.owner).setVisible(false,true);
            _loc4_.play();
            _loc5_ = _loc2_.getStyle("modalTransparencyBlur");
            if(_loc5_)
            {
               _loc6_ = "parentApplication" in param1.owner ? Object(param1.owner).parentApplication : null;
               _loc7_ = new Blur(_loc6_ ? _loc6_ : ApplicationGlobals.application);
               _loc7_.blurXFrom = _loc7_.blurYFrom = 0;
               _loc7_.blurXTo = _loc7_.blurYTo = _loc5_;
               _loc7_.duration = _loc3_;
               _loc7_.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
               param1.blur = _loc7_;
               _loc7_.play();
            }
         }
         else
         {
            IUIComponent(param1.owner).setVisible(true,true);
            param1.modalWindow.visible = true;
         }
      }
      
      private function fadeInEffectEndHandler(param1:EffectEvent) : void
      {
         var _loc4_:PopUpData = null;
         effectEndHandler(param1);
         var _loc2_:int = int(popupInfo.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = popupInfo[_loc3_];
            if(_loc4_.modalWindow == param1.effectInstance.target)
            {
               IUIComponent(_loc4_.owner).setVisible(true,true);
               break;
            }
            _loc3_++;
         }
      }
      
      public function bringToFront(param1:IFlexDisplayObject) : void
      {
         var _loc2_:PopUpData = null;
         var _loc3_:ISystemManager = null;
         if(Boolean(param1) && Boolean(param1.parent))
         {
            _loc2_ = findPopupInfoByOwner(param1);
            if(_loc2_)
            {
               _loc3_ = ISystemManager(param1.parent);
               if(_loc2_.topMost)
               {
                  _loc3_.popUpChildren.setChildIndex(DisplayObject(param1),_loc3_.popUpChildren.numChildren - 1);
               }
               else
               {
                  _loc3_.setChildIndex(DisplayObject(param1),_loc3_.numChildren - 1);
               }
            }
         }
      }
      
      private function popupShowHandler(param1:FlexEvent) : void
      {
         var _loc2_:PopUpData = findPopupInfoByOwner(param1.target);
         if(_loc2_)
         {
            showModalWindow(_loc2_);
         }
      }
      
      private function fadeOutDestroyEffectEndHandler(param1:EffectEvent) : void
      {
         var _loc3_:ISystemManager = null;
         effectEndHandler(param1);
         var _loc2_:DisplayObject = DisplayObject(param1.effectInstance.target);
         if(_loc2_.parent is ISystemManager)
         {
            _loc3_ = ISystemManager(_loc2_.parent);
            if(_loc3_.popUpChildren.contains(_loc2_))
            {
               _loc3_.popUpChildren.removeChild(_loc2_);
            }
            else
            {
               _loc3_.removeChild(_loc2_);
            }
         }
         else if(_loc2_.parent)
         {
            _loc2_.parent.removeChild(_loc2_);
         }
      }
      
      private function popupRemovedHandler(param1:Event) : void
      {
         var _loc4_:PopUpData = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:ISystemManager = null;
         var _loc2_:int = int(popupInfo.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = popupInfo[_loc3_];
            _loc5_ = _loc4_.owner;
            if(_loc5_ == param1.target)
            {
               _loc6_ = _loc4_.parent;
               _loc7_ = _loc4_.modalWindow;
               _loc8_ = _loc6_ is ISystemManager ? ISystemManager(_loc6_) : IUIComponent(_loc6_).systemManager;
               if(!_loc8_.isTopLevel())
               {
                  _loc8_ = _loc8_.topLevelSystemManager;
               }
               if(_loc5_ is IUIComponent)
               {
                  IUIComponent(_loc5_).isPopUp = false;
               }
               if(_loc5_ is IFocusManagerContainer)
               {
                  _loc8_.removeFocusManager(IFocusManagerContainer(_loc5_));
               }
               _loc5_.removeEventListener(Event.REMOVED,popupRemovedHandler);
               if(_loc7_)
               {
                  _loc7_.removeEventListener(MouseEvent.MOUSE_DOWN,_loc4_.mouseDownOutsideHandler);
                  _loc7_.removeEventListener(MouseEvent.MOUSE_WHEEL,_loc4_.mouseWheelOutsideHandler,true);
                  _loc8_.removeEventListener(Event.RESIZE,_loc4_.resizeHandler);
                  _loc5_.removeEventListener(FlexEvent.SHOW,popupShowHandler);
                  _loc5_.removeEventListener(FlexEvent.HIDE,popupHideHandler);
                  hideModalWindow(_loc4_,true);
                  --_loc8_.numModalWindows;
               }
               else
               {
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,_loc4_.mouseDownOutsideHandler);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_WHEEL,_loc4_.mouseWheelOutsideHandler,true);
               }
               popupInfo.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      private function hideModalWindow(param1:PopUpData, param2:Boolean = false) : void
      {
         var _loc5_:Fade = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         var _loc8_:Blur = null;
         var _loc3_:IStyleClient = param1.owner as IStyleClient;
         var _loc4_:Number = 0;
         if(_loc3_)
         {
            _loc4_ = _loc3_.getStyle("modalTransparencyDuration");
         }
         endEffects(param1);
         if(_loc4_)
         {
            _loc5_ = new Fade(param1.modalWindow);
            _loc5_.alphaFrom = param1.modalWindow.alpha;
            _loc5_.alphaTo = 0;
            _loc5_.duration = _loc4_;
            _loc5_.addEventListener(EffectEvent.EFFECT_END,param2 ? fadeOutDestroyEffectEndHandler : fadeOutCloseEffectEndHandler);
            param1.modalWindow.visible = true;
            param1.fade = _loc5_;
            _loc5_.play();
            _loc6_ = _loc3_.getStyle("modalTransparencyBlur");
            if(_loc6_)
            {
               _loc7_ = "parentApplication" in param1.owner ? Object(param1.owner).parentApplication : null;
               _loc8_ = new Blur(_loc7_ ? _loc7_ : ApplicationGlobals.application);
               _loc8_.blurXFrom = _loc8_.blurYFrom = _loc6_;
               _loc8_.blurXTo = _loc8_.blurYTo = 0;
               _loc8_.duration = _loc4_;
               _loc8_.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
               param1.blur = _loc8_;
               _loc8_.play();
            }
         }
         else
         {
            param1.modalWindow.visible = false;
         }
      }
      
      private function popupHideHandler(param1:FlexEvent) : void
      {
         var _loc2_:PopUpData = findPopupInfoByOwner(param1.target);
         if(_loc2_)
         {
            hideModalWindow(_loc2_);
         }
      }
      
      private function effectEndHandler(param1:EffectEvent) : void
      {
         var _loc4_:PopUpData = null;
         var _loc5_:IEffect = null;
         var _loc2_:int = int(popupInfo.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = popupInfo[_loc3_];
            _loc5_ = param1.effectInstance.effect;
            if(_loc5_ == _loc4_.fade)
            {
               _loc4_.fade = null;
            }
            else if(_loc5_ == _loc4_.blur)
            {
               _loc4_.blur = null;
            }
            _loc3_++;
         }
      }
      
      private function createModalWindow(param1:DisplayObject, param2:PopUpData, param3:IChildList, param4:Boolean) : void
      {
         var _loc5_:IFlexDisplayObject = null;
         var _loc8_:Sprite = null;
         _loc5_ = IFlexDisplayObject(param2.owner);
         var _loc6_:IStyleClient = _loc5_ as IStyleClient;
         var _loc7_:Number = 0;
         if(modalWindowClass)
         {
            _loc8_ = new modalWindowClass();
         }
         else
         {
            _loc8_ = new FlexSprite();
            _loc8_.name = "modalWindow";
         }
         var _loc9_:ISystemManager = IUIComponent(param1).systemManager;
         ++_loc9_.numModalWindows;
         param3.addChildAt(_loc8_,param3.getChildIndex(DisplayObject(_loc5_)));
         if(_loc5_ is IAutomationObject)
         {
            IAutomationObject(_loc5_).showInAutomationHierarchy = true;
         }
         if(_loc6_)
         {
            _loc8_.alpha = _loc6_.getStyle("modalTransparency");
         }
         else
         {
            _loc8_.alpha = 0;
         }
         _loc8_.tabEnabled = false;
         var _loc10_:Rectangle = _loc9_.screen;
         var _loc11_:Graphics = _loc8_.graphics;
         var _loc12_:Number = 16777215;
         if(_loc6_)
         {
            _loc12_ = _loc6_.getStyle("modalTransparencyColor");
         }
         _loc11_.clear();
         _loc11_.beginFill(_loc12_,100);
         _loc11_.drawRect(_loc10_.x,_loc10_.y,_loc10_.width,_loc10_.height);
         _loc11_.endFill();
         param2.modalWindow = _loc8_;
         param2._mouseDownOutsideHandler = dispatchMouseDownOutsideEvent;
         param2._mouseWheelOutsideHandler = dispatchMouseWheelOutsideEvent;
         _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,param2.mouseDownOutsideHandler);
         _loc8_.addEventListener(MouseEvent.MOUSE_WHEEL,param2.mouseWheelOutsideHandler,true);
         _loc9_.addEventListener(Event.RESIZE,param2.resizeHandler);
         _loc5_.addEventListener(FlexEvent.SHOW,popupShowHandler);
         _loc5_.addEventListener(FlexEvent.HIDE,popupHideHandler);
         if(param4)
         {
            showModalWindow(param2);
         }
         else
         {
            _loc5_.visible = param4;
         }
      }
      
      private function findPopupInfoByOwner(param1:Object) : PopUpData
      {
         var _loc4_:PopUpData = null;
         var _loc2_:int = int(popupInfo.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = popupInfo[_loc3_];
            if(_loc4_.owner == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function fadeOutCloseEffectEndHandler(param1:EffectEvent) : void
      {
         effectEndHandler(param1);
         DisplayObject(param1.effectInstance.target).visible = false;
      }
      
      private function endEffects(param1:PopUpData) : void
      {
         if(param1.fade)
         {
            param1.fade.end();
            param1.fade = null;
         }
         if(param1.blur)
         {
            param1.blur.end();
            param1.blur = null;
         }
      }
      
      public function removePopUp(param1:IFlexDisplayObject) : void
      {
         var _loc2_:PopUpData = null;
         var _loc3_:ISystemManager = null;
         var _loc4_:IUIComponent = null;
         if(Boolean(param1) && Boolean(param1.parent))
         {
            _loc2_ = findPopupInfoByOwner(param1);
            if(_loc2_)
            {
               _loc3_ = param1.parent as ISystemManager;
               if(!_loc3_)
               {
                  _loc4_ = param1 as IUIComponent;
                  if(!_loc4_)
                  {
                     return;
                  }
                  _loc3_ = _loc4_.systemManager;
               }
               if(_loc2_.topMost)
               {
                  _loc3_.popUpChildren.removeChild(DisplayObject(param1));
               }
               else
               {
                  _loc3_.removeChild(DisplayObject(param1));
               }
            }
         }
      }
      
      public function addPopUp(param1:IFlexDisplayObject, param2:DisplayObject, param3:Boolean = false, param4:String = null) : void
      {
         var _loc7_:ISystemManager = null;
         var _loc8_:IChildList = null;
         var _loc9_:Boolean = false;
         var _loc5_:Boolean = param1.visible;
         var _loc6_:DisplayObjectContainer = DisplayObjectContainer(param2.root);
         if((!_loc6_ || _loc6_ is Stage) && param2 is IUIComponent)
         {
            _loc6_ = DisplayObjectContainer(IUIComponent(param2).systemManager);
         }
         if(_loc6_ is ISystemManager)
         {
            _loc7_ = ISystemManager(_loc6_);
            if(!_loc7_.isTopLevel())
            {
               _loc7_ = _loc7_.topLevelSystemManager;
            }
            if(param1 is IUIComponent)
            {
               IUIComponent(param1).isPopUp = true;
            }
            if(!param4 || param4 == PopUpManagerChildList.PARENT)
            {
               _loc9_ = _loc7_.popUpChildren.contains(param2);
            }
            else
            {
               _loc9_ = param4 == PopUpManagerChildList.POPUP;
            }
            _loc8_ = _loc9_ ? _loc7_.popUpChildren : _loc7_;
            _loc8_.addChild(DisplayObject(param1));
            param1.visible = false;
            if(!popupInfo)
            {
               popupInfo = [];
            }
            var _loc10_:PopUpData = new PopUpData();
            _loc10_.owner = DisplayObject(param1);
            _loc10_.topMost = _loc9_;
            popupInfo.push(_loc10_);
            if(param1 is IFocusManagerContainer)
            {
               if(IFocusManagerContainer(param1).focusManager)
               {
                  _loc7_.addFocusManager(IFocusManagerContainer(param1));
               }
               else
               {
                  IFocusManagerContainer(param1).focusManager = new FocusManager(IFocusManagerContainer(param1),true);
               }
            }
            if(param1 is IAutomationObject)
            {
               IAutomationObject(param1).showInAutomationHierarchy = true;
            }
            if(param1 is ILayoutManagerClient)
            {
               UIComponentGlobals.layoutManager.validateClient(ILayoutManagerClient(param1),true);
            }
            _loc10_.parent = param2;
            if(param1 is IUIComponent)
            {
               IUIComponent(param1).setActualSize(IUIComponent(param1).getExplicitOrMeasuredWidth(),IUIComponent(param1).getExplicitOrMeasuredHeight());
            }
            if(param3)
            {
               this.createModalWindow(param2,_loc10_,_loc8_,_loc5_);
            }
            else
            {
               _loc10_._mouseDownOutsideHandler = nonmodalMouseDownOutsideHandler;
               _loc10_._mouseWheelOutsideHandler = nonmodalMouseWheelOutsideHandler;
               _loc7_.addEventListener(MouseEvent.MOUSE_DOWN,_loc10_.mouseDownOutsideHandler);
               _loc7_.addEventListener(MouseEvent.MOUSE_WHEEL,_loc10_.mouseWheelOutsideHandler,true);
               param1.visible = _loc5_;
            }
            param1.addEventListener(Event.REMOVED,popupRemovedHandler);
            if(param1 is IFocusManagerContainer && _loc5_)
            {
               _loc7_.activate(IFocusManagerContainer(param1));
            }
            return;
         }
      }
      
      public function createPopUp(param1:DisplayObject, param2:Class, param3:Boolean = false, param4:String = null) : IFlexDisplayObject
      {
         var _loc5_:IUIComponent = new param2();
         addPopUp(_loc5_,param1,param3,param4);
         return _loc5_;
      }
      
      public function centerPopUp(param1:IFlexDisplayObject) : void
      {
         var _loc3_:Point = null;
         if(param1 is IInvalidating)
         {
            IInvalidating(param1).validateNow();
         }
         var _loc2_:PopUpData = findPopupInfoByOwner(param1);
         if(Boolean(_loc2_) && Boolean(_loc2_.parent))
         {
            _loc3_ = new Point(0,0);
            _loc3_ = _loc2_.parent.localToGlobal(_loc3_);
            _loc3_ = param1.parent.globalToLocal(_loc3_);
            param1.move(Math.round((_loc2_.parent.width - param1.width) / 2) + _loc3_.x,Math.round((_loc2_.parent.height - param1.height) / 2) + _loc3_.y);
         }
      }
   }
}

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Rectangle;
import mx.effects.Effect;

class PopUpData
{
   
   public var _mouseWheelOutsideHandler:Function;
   
   public var owner:DisplayObject;
   
   public var blur:Effect;
   
   public var parent:DisplayObject;
   
   public var _mouseDownOutsideHandler:Function;
   
   public var topMost:Boolean;
   
   public var fade:Effect;
   
   public var modalWindow:DisplayObject;
   
   public function PopUpData()
   {
      super();
   }
   
   public function mouseWheelOutsideHandler(param1:MouseEvent) : void
   {
      _mouseWheelOutsideHandler(owner,param1);
   }
   
   public function mouseDownOutsideHandler(param1:MouseEvent) : void
   {
      _mouseDownOutsideHandler(owner,param1);
   }
   
   public function resizeHandler(param1:Event) : void
   {
      var _loc2_:Rectangle = ISystemManager(param1.target).screen;
      if(Boolean(modalWindow) && owner.stage == DisplayObject(param1.target).stage)
      {
         modalWindow.width = _loc2_.width;
         modalWindow.height = _loc2_.height;
         modalWindow.x = _loc2_.x;
         modalWindow.y = _loc2_.y;
      }
   }
}
