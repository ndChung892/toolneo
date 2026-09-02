package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import mx.core.FlexSprite;
   import mx.core.IButton;
   import mx.core.IChildList;
   import mx.core.IRawChildrenContainer;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class FocusManager implements IFocusManager
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private var focusableObjects:Array;
      
      private var _showFocusIndicator:Boolean = false;
      
      private var defButton:IButton;
      
      private var _form:IFocusManagerContainer;
      
      private var focusableCandidates:Array;
      
      private var LARGE_TAB_INDEX:int = 99999;
      
      private var browserFocusComponent:InteractiveObject;
      
      private var activated:Boolean = false;
      
      private var _defaultButton:IButton;
      
      private var calculateCandidates:Boolean = true;
      
      private var _focusPane:Sprite;
      
      private var lastFocus:IFocusManagerComponent;
      
      private var _defaultButtonEnabled:Boolean = true;
      
      public var browserMode:Boolean;
      
      private var lastAction:String;
      
      public function FocusManager(param1:IFocusManagerContainer, param2:Boolean = false)
      {
         super();
         browserMode = Capabilities.playerType == "ActiveX" && !param2;
         param1.focusManager = this;
         _form = param1;
         focusableObjects = [];
         focusPane = new FlexSprite();
         focusPane.name = "focusPane";
         addFocusables(DisplayObject(param1));
         param1.addEventListener(Event.ADDED,addedHandler);
         param1.addEventListener(Event.REMOVED,removedHandler);
         param1.addEventListener(FlexEvent.SHOW,showHandler);
         param1.addEventListener(FlexEvent.HIDE,hideHandler);
         if(param1.systemManager is SystemManager)
         {
            if(param1 != SystemManager(param1.systemManager).application)
            {
               param1.addEventListener(FlexEvent.CREATION_COMPLETE,creationCompleteHandler);
            }
         }
         param1.systemManager.addFocusManager(param1);
      }
      
      public function deactivate() : void
      {
         form.systemManager.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,mouseFocusChangeHandler);
         form.systemManager.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
         form.removeEventListener(FocusEvent.FOCUS_IN,focusInHandler,true);
         form.removeEventListener(FocusEvent.FOCUS_OUT,focusOutHandler,true);
         form.systemManager.stage.removeEventListener(Event.ACTIVATE,activateHandler);
         form.systemManager.stage.removeEventListener(Event.DEACTIVATE,deactivateHandler);
         form.removeEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         form.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler,true);
         activated = false;
      }
      
      private function getIndexOfNextObject(param1:int, param2:Boolean, param3:Boolean, param4:String) : int
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:IFocusManagerGroup = null;
         var _loc9_:int = 0;
         var _loc10_:DisplayObject = null;
         var _loc11_:IFocusManagerGroup = null;
         var _loc5_:int = int(focusableCandidates.length);
         var _loc6_:int = param1;
         while(true)
         {
            if(param2)
            {
               param1--;
            }
            else
            {
               param1++;
            }
            if(param3)
            {
               if(param2 && param1 < 0)
               {
                  break;
               }
               if(!param2 && param1 == _loc5_)
               {
                  break;
               }
            }
            else
            {
               param1 = int((param1 + _loc5_) % _loc5_);
               if(_loc6_ == param1)
               {
                  break;
               }
            }
            if(isValidFocusCandidate(focusableCandidates[param1],param4))
            {
               _loc7_ = DisplayObject(findFocusManagerComponent(focusableCandidates[param1]));
               if(_loc7_ is IFocusManagerGroup)
               {
                  _loc8_ = IFocusManagerGroup(_loc7_);
                  _loc9_ = 0;
                  while(_loc9_ < focusableCandidates.length)
                  {
                     _loc10_ = focusableCandidates[_loc9_];
                     if(_loc10_ is IFocusManagerGroup)
                     {
                        _loc11_ = IFocusManagerGroup(_loc10_);
                        if(_loc11_.groupName == _loc8_.groupName && _loc11_.selected)
                        {
                           if(InteractiveObject(_loc10_).tabIndex != InteractiveObject(_loc7_).tabIndex && !_loc8_.selected)
                           {
                              return getIndexOfNextObject(param1,param2,param3,param4);
                           }
                           param1 = _loc9_;
                           break;
                        }
                     }
                     _loc9_++;
                  }
               }
               return param1;
            }
         }
         return param1;
      }
      
      private function mouseFocusChangeHandler(param1:FocusEvent) : void
      {
         var _loc2_:TextField = null;
         if(param1.relatedObject is TextField)
         {
            _loc2_ = param1.relatedObject as TextField;
            if(_loc2_.type == "input" || _loc2_.selectable)
            {
               return;
            }
         }
         param1.preventDefault();
      }
      
      mx_internal function set form(param1:IFocusManagerContainer) : void
      {
         _form = param1;
      }
      
      private function addFocusables(param1:DisplayObject, param2:Boolean = false) : void
      {
         var focusable:IFocusManagerComponent = null;
         var doc:DisplayObjectContainer = null;
         var i:int = 0;
         var rawChildren:IChildList = null;
         var o:DisplayObject = param1;
         var skipTopLevel:Boolean = param2;
         if(o is IFocusManagerComponent && !skipTopLevel)
         {
            focusable = IFocusManagerComponent(o);
            if(focusable.focusEnabled)
            {
               if(focusable.tabEnabled && isTabVisible(o))
               {
                  focusableObjects.push(o);
                  calculateCandidates = true;
               }
               o.addEventListener("tabEnabledChange",tabEnabledChangeHandler);
               o.addEventListener("tabIndexChange",tabIndexChangeHandler);
            }
         }
         if(o is DisplayObjectContainer)
         {
            doc = DisplayObjectContainer(o);
            o.addEventListener("tabChildrenChange",tabChildrenChangeHandler);
            if(doc.tabChildren)
            {
               if(o is IRawChildrenContainer)
               {
                  rawChildren = IRawChildrenContainer(o).rawChildren;
                  i = 0;
                  while(i < rawChildren.numChildren)
                  {
                     try
                     {
                        addFocusables(rawChildren.getChildAt(i));
                     }
                     catch(error:SecurityError)
                     {
                     }
                     i++;
                  }
               }
               else
               {
                  i = 0;
                  while(i < doc.numChildren)
                  {
                     try
                     {
                        addFocusables(doc.getChildAt(i));
                     }
                     catch(error:SecurityError)
                     {
                     }
                     i++;
                  }
               }
            }
         }
      }
      
      private function getMaxTabIndex() : int
      {
         var _loc4_:Number = NaN;
         var _loc1_:Number = 0;
         var _loc2_:int = int(focusableObjects.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = Number(focusableObjects[_loc3_].tabIndex);
            if(!isNaN(_loc4_))
            {
               _loc1_ = Math.max(_loc1_,_loc4_);
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function showHandler(param1:Event) : void
      {
         form.systemManager.activate(form);
      }
      
      public function toString() : String
      {
         return Object(form).toString() + ".focusManager";
      }
      
      private function mouseDownHandler(param1:MouseEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         var _loc2_:DisplayObject = getTopLevelFocusTarget(InteractiveObject(param1.target));
         if(!_loc2_)
         {
            return;
         }
         showFocusIndicator = false;
         if((_loc2_ != lastFocus || lastAction == "ACTIVATE") && !(_loc2_ is TextField))
         {
            setFocus(IFocusManagerComponent(_loc2_));
         }
         lastAction = "MOUSEDOWN";
      }
      
      private function sortByDepth(param1:IFocusManagerComponent, param2:IFocusManagerComponent) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:String = "";
         var _loc4_:String = "";
         var _loc8_:String = "0000";
         var _loc9_:DisplayObject = DisplayObject(param1);
         var _loc10_:DisplayObject = DisplayObject(param2);
         while(_loc9_ != DisplayObject(form) && Boolean(_loc9_.parent))
         {
            _loc5_ = getChildIndex(_loc9_.parent,_loc9_);
            _loc6_ = _loc5_.toString(16);
            if(_loc6_.length < 4)
            {
               _loc7_ = _loc8_.substring(0,4 - _loc6_.length) + _loc6_;
            }
            _loc3_ = _loc7_ + _loc3_;
            _loc9_ = _loc9_.parent;
         }
         while(_loc10_ != DisplayObject(form) && Boolean(_loc10_.parent))
         {
            _loc5_ = getChildIndex(_loc10_.parent,_loc10_);
            _loc6_ = _loc5_.toString(16);
            if(_loc6_.length < 4)
            {
               _loc7_ = _loc8_.substring(0,4 - _loc6_.length) + _loc6_;
            }
            _loc4_ = _loc7_ + _loc4_;
            _loc10_ = _loc10_.parent;
         }
         return _loc3_ > _loc4_ ? 1 : (_loc3_ < _loc4_ ? -1 : 0);
      }
      
      private function focusOutHandler(param1:FocusEvent) : void
      {
         var _loc2_:InteractiveObject = InteractiveObject(param1.target);
      }
      
      public function setFocus(param1:IFocusManagerComponent) : void
      {
         param1.setFocus();
      }
      
      private function getChildIndex(param1:DisplayObjectContainer, param2:DisplayObject) : int
      {
         var parent:DisplayObjectContainer = param1;
         var child:DisplayObject = param2;
         try
         {
            return parent.getChildIndex(child);
         }
         catch(e:Error)
         {
            if(parent is IRawChildrenContainer)
            {
               return IRawChildrenContainer(parent).rawChildren.getChildIndex(child);
            }
            throw e;
         }
      }
      
      public function findFocusManagerComponent(param1:InteractiveObject) : IFocusManagerComponent
      {
         while(param1)
         {
            if(param1 is IFocusManagerComponent && IFocusManagerComponent(param1).focusEnabled)
            {
               return IFocusManagerComponent(param1);
            }
            param1 = param1.parent;
         }
         return null;
      }
      
      private function sortFocusableObjectsTabIndex() : void
      {
         var _loc3_:IFocusManagerComponent = null;
         focusableCandidates = [];
         var _loc1_:int = int(focusableObjects.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = focusableObjects[_loc2_];
            if(Boolean(_loc3_.tabIndex) && !isNaN(Number(_loc3_.tabIndex)))
            {
               focusableCandidates.push(_loc3_);
            }
            _loc2_++;
         }
         focusableCandidates.sort(sortByTabIndex);
      }
      
      private function removeFocusables(param1:DisplayObject, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         if(param1 is DisplayObjectContainer)
         {
            if(!param2)
            {
               param1.removeEventListener("tabChildrenChange",tabChildrenChangeHandler);
            }
            _loc3_ = 0;
            while(_loc3_ < focusableObjects.length)
            {
               if(isParent(DisplayObjectContainer(param1),focusableObjects[_loc3_]))
               {
                  if(focusableObjects[_loc3_] == lastFocus)
                  {
                     lastFocus.drawFocus(false);
                     lastFocus = null;
                  }
                  focusableObjects[_loc3_].removeEventListener("tabEnabledChange",tabEnabledChangeHandler);
                  focusableObjects[_loc3_].removeEventListener("tabIndexChange",tabIndexChangeHandler);
                  focusableObjects.splice(_loc3_,1);
                  _loc3_--;
                  calculateCandidates = true;
               }
               _loc3_++;
            }
         }
      }
      
      private function setFocusToNextObject(param1:FocusEvent) : void
      {
         if(focusableObjects.length == 0)
         {
            return;
         }
         var _loc2_:IFocusManagerComponent = getNextFocusManagerComponent(param1.shiftKey);
         if(_loc2_)
         {
            if(_loc2_ is IFocusManagerComplexComponent)
            {
               IFocusManagerComplexComponent(_loc2_).assignFocus(param1.shiftKey ? "bottom" : "top");
            }
            else
            {
               setFocus(_loc2_);
            }
         }
      }
      
      private function getTopLevelFocusTarget(param1:InteractiveObject) : InteractiveObject
      {
         while(param1 != InteractiveObject(form))
         {
            if(param1 is IFocusManagerComponent && IFocusManagerComponent(param1).focusEnabled && IFocusManagerComponent(param1).mouseFocusEnabled && (param1 is IUIComponent ? Boolean(IUIComponent(param1).enabled) : Boolean(true)))
            {
               return param1;
            }
            param1 = param1.parent;
            if(param1 == null)
            {
               break;
            }
         }
         return null;
      }
      
      public function set defaultButton(param1:IButton) : void
      {
         var _loc2_:IButton = param1 ? IButton(param1) : null;
         if(_loc2_ != _defaultButton)
         {
            if(_defaultButton)
            {
               _defaultButton.emphasized = false;
            }
            if(defButton)
            {
               defButton.emphasized = false;
            }
            _defaultButton = _loc2_;
            defButton = _loc2_;
            if(_loc2_)
            {
               _loc2_.emphasized = true;
            }
         }
      }
      
      mx_internal function sendDefaultButtonEvent() : void
      {
         defButton.dispatchEvent(new MouseEvent("click"));
      }
      
      public function getFocus() : IFocusManagerComponent
      {
         var _loc1_:InteractiveObject = form.systemManager.stage.focus;
         return findFocusManagerComponent(_loc1_);
      }
      
      private function isEnabledAndVisible(param1:DisplayObject) : Boolean
      {
         var _loc2_:DisplayObjectContainer = DisplayObject(form).parent;
         while(param1 != _loc2_)
         {
            if(param1 is IUIComponent)
            {
               if(!IUIComponent(param1).enabled)
               {
                  return false;
               }
            }
            if(!param1.visible)
            {
               return false;
            }
            param1 = param1.parent;
         }
         return true;
      }
      
      private function deactivateHandler(param1:Event) : void
      {
         var _loc2_:InteractiveObject = InteractiveObject(param1.target);
      }
      
      private function hideHandler(param1:Event) : void
      {
         form.systemManager.deactivate(form);
      }
      
      private function addedHandler(param1:Event) : void
      {
         var _loc2_:DisplayObject = DisplayObject(param1.target);
         if(_loc2_.stage)
         {
            addFocusables(DisplayObject(param1.target));
         }
      }
      
      public function hideFocus() : void
      {
         if(showFocusIndicator)
         {
            showFocusIndicator = false;
            if(lastFocus)
            {
               lastFocus.drawFocus(false);
            }
         }
      }
      
      private function tabChildrenChangeHandler(param1:Event) : void
      {
         if(param1.target != param1.currentTarget)
         {
            return;
         }
         calculateCandidates = true;
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer(param1.target);
         if(_loc2_.tabChildren)
         {
            addFocusables(_loc2_,true);
         }
         else
         {
            removeFocusables(_loc2_,true);
         }
      }
      
      private function isValidFocusCandidate(param1:DisplayObject, param2:String) : Boolean
      {
         var _loc3_:IFocusManagerGroup = null;
         if(!isEnabledAndVisible(param1))
         {
            return false;
         }
         if(param1 is IFocusManagerGroup)
         {
            _loc3_ = IFocusManagerGroup(param1);
            if(param2 == _loc3_.groupName)
            {
               return false;
            }
         }
         return true;
      }
      
      public function set focusPane(param1:Sprite) : void
      {
         _focusPane = param1;
      }
      
      private function keyFocusChangeHandler(param1:FocusEvent) : void
      {
         showFocusIndicator = true;
         if(param1.keyCode == Keyboard.TAB && !param1.isDefaultPrevented())
         {
            if(browserFocusComponent)
            {
               if(browserFocusComponent.tabIndex == LARGE_TAB_INDEX)
               {
                  browserFocusComponent.tabIndex = -1;
               }
               browserFocusComponent = null;
               return;
            }
            setFocusToNextObject(param1);
            param1.preventDefault();
         }
      }
      
      private function getIndexOfFocusedObject(param1:DisplayObject) : int
      {
         var _loc4_:IUIComponent = null;
         if(!param1)
         {
            return -1;
         }
         var _loc2_:int = int(focusableCandidates.length);
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(focusableCandidates[_loc3_] == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = focusableCandidates[_loc3_] as IUIComponent;
            if((Boolean(_loc4_)) && _loc4_.owns(param1))
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function isParent(param1:DisplayObjectContainer, param2:DisplayObject) : Boolean
      {
         if(param1 is IRawChildrenContainer)
         {
            return IRawChildrenContainer(param1).rawChildren.contains(param2);
         }
         return param1.contains(param2);
      }
      
      private function removedHandler(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = DisplayObject(param1.target);
         if(_loc3_ is IFocusManagerComponent)
         {
            _loc2_ = 0;
            while(_loc2_ < focusableObjects.length)
            {
               if(_loc3_ == focusableObjects[_loc2_])
               {
                  if(_loc3_ == lastFocus)
                  {
                     lastFocus.drawFocus(false);
                     lastFocus = null;
                  }
                  _loc3_.removeEventListener("tabEnabledChange",tabEnabledChangeHandler);
                  _loc3_.removeEventListener("tabIndexChange",tabIndexChangeHandler);
                  focusableObjects.splice(_loc2_,1);
                  calculateCandidates = true;
                  break;
               }
               _loc2_++;
            }
         }
         removeFocusables(_loc3_,false);
      }
      
      mx_internal function get form() : IFocusManagerContainer
      {
         return _form;
      }
      
      private function tabIndexChangeHandler(param1:Event) : void
      {
         calculateCandidates = true;
      }
      
      private function sortFocusableObjects() : void
      {
         var _loc3_:InteractiveObject = null;
         focusableCandidates = [];
         var _loc1_:int = int(focusableObjects.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = focusableObjects[_loc2_];
            if(Boolean(_loc3_.tabIndex) && Boolean(!isNaN(Number(_loc3_.tabIndex))) && _loc3_.tabIndex > 0)
            {
               sortFocusableObjectsTabIndex();
               return;
            }
            focusableCandidates.push(_loc3_);
            _loc2_++;
         }
         focusableCandidates.sort(sortByDepth);
      }
      
      public function get nextTabIndex() : int
      {
         return getMaxTabIndex() + 1;
      }
      
      public function get defaultButton() : IButton
      {
         return _defaultButton;
      }
      
      public function showFocus() : void
      {
         if(!showFocusIndicator)
         {
            showFocusIndicator = true;
            if(lastFocus)
            {
               lastFocus.drawFocus(true);
            }
         }
      }
      
      private function activateHandler(param1:Event) : void
      {
         var _loc2_:InteractiveObject = InteractiveObject(param1.target);
         if(Boolean(lastFocus) && !browserMode)
         {
            lastFocus.setFocus();
         }
         lastAction = "ACTIVATE";
      }
      
      public function getNextFocusManagerComponent(param1:Boolean = false) : IFocusManagerComponent
      {
         var _loc8_:IFocusManagerGroup = null;
         if(focusableObjects.length == 0)
         {
            return null;
         }
         if(calculateCandidates)
         {
            sortFocusableObjects();
            calculateCandidates = false;
         }
         var _loc2_:DisplayObject = form.systemManager.stage.focus;
         _loc2_ = DisplayObject(findFocusManagerComponent(InteractiveObject(_loc2_)));
         var _loc3_:String = "";
         if(_loc2_ is IFocusManagerGroup)
         {
            _loc8_ = IFocusManagerGroup(_loc2_);
            _loc3_ = _loc8_.groupName;
         }
         var _loc4_:int = getIndexOfFocusedObject(_loc2_);
         var _loc5_:Boolean = false;
         var _loc6_:int = _loc4_;
         if(_loc4_ == -1)
         {
            if(param1)
            {
               _loc4_ = int(focusableCandidates.length);
            }
            _loc5_ = true;
         }
         var _loc7_:int = getIndexOfNextObject(_loc4_,param1,_loc5_,_loc3_);
         return findFocusManagerComponent(focusableCandidates[_loc7_]);
      }
      
      public function get focusPane() : Sprite
      {
         return _focusPane;
      }
      
      public function set defaultButtonEnabled(param1:Boolean) : void
      {
         _defaultButtonEnabled = param1;
      }
      
      private function keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:IFocusManagerGroup = null;
         var _loc2_:SystemManager = form.systemManager as SystemManager;
         if(_loc2_)
         {
            _loc2_.idleCounter = 0;
         }
         if(param1.keyCode == Keyboard.TAB)
         {
            lastAction = "KEY";
            if(calculateCandidates)
            {
               sortFocusableObjects();
               calculateCandidates = false;
            }
         }
         if(browserMode)
         {
            if(param1.keyCode == Keyboard.TAB && focusableCandidates.length > 0)
            {
               _loc3_ = form.systemManager.stage.focus;
               _loc3_ = DisplayObject(findFocusManagerComponent(InteractiveObject(_loc3_)));
               _loc4_ = "";
               if(_loc3_ is IFocusManagerGroup)
               {
                  _loc7_ = IFocusManagerGroup(_loc3_);
                  _loc4_ = _loc7_.groupName;
               }
               _loc5_ = getIndexOfFocusedObject(_loc3_);
               _loc6_ = getIndexOfNextObject(_loc5_,param1.shiftKey,false,_loc4_);
               if(param1.shiftKey)
               {
                  if(_loc6_ >= _loc5_)
                  {
                     browserFocusComponent = form.systemManager.stage.focus;
                     if(browserFocusComponent.tabIndex == -1)
                     {
                        browserFocusComponent.tabIndex = 0;
                     }
                  }
               }
               else if(_loc6_ <= _loc5_)
               {
                  browserFocusComponent = form.systemManager.stage.focus;
                  if(browserFocusComponent.tabIndex == -1)
                  {
                     browserFocusComponent.tabIndex = LARGE_TAB_INDEX;
                  }
               }
            }
         }
         if(Boolean(defaultButtonEnabled && param1.keyCode == Keyboard.ENTER) && Boolean(defaultButton) && Boolean(defButton.enabled))
         {
            defButton.callLater(sendDefaultButtonEvent);
         }
      }
      
      private function focusInHandler(param1:FocusEvent) : void
      {
         var _loc3_:IButton = null;
         var _loc2_:InteractiveObject = InteractiveObject(param1.target);
         if(isParent(DisplayObjectContainer(form),_loc2_))
         {
            lastFocus = findFocusManagerComponent(InteractiveObject(_loc2_));
            if(lastFocus is IButton)
            {
               _loc3_ = lastFocus as IButton;
               if(defButton)
               {
                  defButton.emphasized = false;
                  defButton = _loc3_;
                  _loc3_.emphasized = true;
               }
            }
            else if(Boolean(defButton) && defButton != _defaultButton)
            {
               defButton.emphasized = false;
               defButton = _defaultButton;
               _defaultButton.emphasized = true;
            }
         }
      }
      
      public function set showFocusIndicator(param1:Boolean) : void
      {
         _showFocusIndicator = param1;
      }
      
      private function sortByTabIndex(param1:IFocusManagerComponent, param2:IFocusManagerComponent) : int
      {
         var _loc3_:int = param1.tabIndex;
         var _loc4_:int = param2.tabIndex;
         if(_loc3_ == -1)
         {
            _loc3_ = int.MAX_VALUE;
         }
         if(_loc4_ == -1)
         {
            _loc4_ = int.MAX_VALUE;
         }
         return _loc3_ > _loc4_ ? 1 : (_loc3_ < _loc4_ ? -1 : int(sortByDepth(param1,param2)));
      }
      
      public function activate() : void
      {
         if(activated)
         {
            return;
         }
         form.systemManager.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,mouseFocusChangeHandler,false,0,true);
         form.systemManager.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler,false,0,true);
         form.addEventListener(FocusEvent.FOCUS_IN,focusInHandler,true);
         form.addEventListener(FocusEvent.FOCUS_OUT,focusOutHandler,true);
         form.systemManager.stage.addEventListener(Event.ACTIVATE,activateHandler,false,0,true);
         form.systemManager.stage.addEventListener(Event.DEACTIVATE,deactivateHandler,false,0,true);
         form.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         form.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler,true);
         activated = true;
         if(lastFocus)
         {
            setFocus(lastFocus);
         }
      }
      
      public function get defaultButtonEnabled() : Boolean
      {
         return _defaultButtonEnabled;
      }
      
      private function isTabVisible(param1:DisplayObject) : Boolean
      {
         var _loc2_:DisplayObject = DisplayObject(form.systemManager);
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:DisplayObjectContainer = param1.parent;
         while(Boolean(_loc3_) && _loc3_ != _loc2_)
         {
            if(!_loc3_.tabChildren)
            {
               return false;
            }
            _loc3_ = _loc3_.parent;
         }
         return true;
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         if(DisplayObject(form).visible && !activated)
         {
            form.systemManager.activate(form);
         }
      }
      
      public function get showFocusIndicator() : Boolean
      {
         return _showFocusIndicator;
      }
      
      private function tabEnabledChangeHandler(param1:Event) : void
      {
         calculateCandidates = true;
         var _loc2_:InteractiveObject = InteractiveObject(param1.target);
         var _loc3_:int = int(focusableObjects.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(focusableObjects[_loc4_] == _loc2_)
            {
               break;
            }
            _loc4_++;
         }
         if(_loc2_.tabEnabled)
         {
            if(_loc4_ == _loc3_ && isTabVisible(_loc2_))
            {
               focusableObjects.push(_loc2_);
            }
         }
         else if(_loc4_ < _loc3_)
         {
            focusableObjects.splice(_loc4_,1);
         }
      }
   }
}

