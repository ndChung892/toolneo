package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.text.Font;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import mx.core.EmbeddedFontRegistry;
   import mx.core.FlexSprite;
   import mx.core.IChildList;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IInvalidating;
   import mx.core.IRawChildrenContainer;
   import mx.core.IUIComponent;
   import mx.core.RSLItem;
   import mx.core.Singleton;
   import mx.core.TextFieldFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.messaging.config.LoaderConfig;
   import mx.preloaders.DownloadProgressBar;
   import mx.preloaders.Preloader;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceBundle;
   import mx.resources.ResourceManager;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class SystemManager extends MovieClip implements IChildList, IFlexDisplayObject, IFlexModuleFactory, ISystemManager
   {
      
      mx_internal static var lastSystemManager:SystemManager;
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private static const IDLE_THRESHOLD:Number = 1000;
      
      private static const IDLE_INTERVAL:Number = 100;
      
      mx_internal static var allSystemManagers:Dictionary = new Dictionary(true);
      
      mx_internal var nestLevel:int = 0;
      
      private var forms:Array = [];
      
      private var mouseCatcher:Sprite;
      
      private var _height:Number;
      
      private var preloader:Preloader;
      
      private var _document:Object;
      
      private var _topLevelSystemManager:ISystemManager;
      
      private var _toolTipIndex:int = 0;
      
      private var _rawChildren:SystemRawChildrenList;
      
      private var _explicitHeight:Number;
      
      private var _toolTipChildren:SystemChildrenList;
      
      private var form:IFocusManagerContainer;
      
      private var _width:Number;
      
      private var initialized:Boolean = false;
      
      private var _focusPane:Sprite;
      
      private var _fontList:Object = null;
      
      private var isStageRoot:Boolean = true;
      
      private var _popUpChildren:SystemChildrenList;
      
      private var rslSizes:Array = null;
      
      private var _topMostIndex:int = 0;
      
      private var nextFrameTimer:Timer = null;
      
      private var topLevel:Boolean = true;
      
      private var _cursorIndex:int = 0;
      
      mx_internal var _mouseX:*;
      
      mx_internal var _mouseY:*;
      
      private var _numModalWindows:int = 0;
      
      private var _screen:Rectangle;
      
      mx_internal var idleCounter:int = 0;
      
      private var _cursorChildren:SystemChildrenList;
      
      private var initCallbackFunctions:Array = [];
      
      private var _noTopMostIndex:int = 0;
      
      private var _applicationIndex:int = 1;
      
      private var idleTimer:Timer;
      
      private var doneExecutingInitCallbacks:Boolean = false;
      
      private var _explicitWidth:Number;
      
      mx_internal var topLevelWindow:IUIComponent;
      
      public function SystemManager()
      {
         super();
         if(stage)
         {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
         }
         if(SystemManagerGlobals.topLevelSystemManagers.length > 0 && !stage)
         {
            topLevel = false;
         }
         if(!stage)
         {
            isStageRoot = false;
         }
         if(topLevel)
         {
            SystemManagerGlobals.topLevelSystemManagers.push(this);
         }
         mx_internal::lastSystemManager = this;
         var _loc1_:Array = info()["compiledLocales"];
         ResourceBundle.locale = _loc1_ != null && _loc1_.length > 0 ? _loc1_[0] : "en_US";
         executeCallbacks();
         stop();
         if(topLevel && currentFrame != 1)
         {
            throw new Error("The SystemManager constructor was called when the currentFrame was at " + currentFrame + " Please add this SWF to bug 129782.");
         }
         if(Boolean(root) && Boolean(root.loaderInfo))
         {
            root.loaderInfo.addEventListener(Event.INIT,initHandler);
         }
      }
      
      public static function getSWFRoot(param1:Object) : DisplayObject
      {
         var p:* = undefined;
         var sm:ISystemManager = null;
         var domain:ApplicationDomain = null;
         var cls:Class = null;
         var object:Object = param1;
         var className:String = getQualifiedClassName(object);
         for(p in allSystemManagers)
         {
            sm = p as ISystemManager;
            domain = sm.loaderInfo.applicationDomain;
            try
            {
               cls = Class(domain.getDefinition(className));
               if(object is cls)
               {
                  return sm as DisplayObject;
               }
            }
            catch(e:Error)
            {
            }
         }
         return null;
      }
      
      mx_internal static function registerInitCallback(param1:Function) : void
      {
         if(!allSystemManagers || !lastSystemManager)
         {
            return;
         }
         var _loc2_:SystemManager = lastSystemManager;
         if(_loc2_.doneExecutingInitCallbacks)
         {
            param1(_loc2_);
         }
         else
         {
            _loc2_.initCallbackFunctions.push(param1);
         }
      }
      
      mx_internal function addingChild(param1:DisplayObject) : void
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:int = 1;
         if(!topLevel)
         {
            _loc4_ = parent.parent;
            while(_loc4_)
            {
               if(_loc4_ is ILayoutManagerClient)
               {
                  _loc2_ = ILayoutManagerClient(_loc4_).nestLevel + 1;
                  break;
               }
               _loc4_ = _loc4_.parent;
            }
         }
         nestLevel = _loc2_;
         if(param1 is IUIComponent)
         {
            IUIComponent(param1).systemManager = this;
         }
         var _loc3_:Class = Class(getDefinitionByName("mx.core.UIComponent"));
         if(param1 is IUIComponent && !IUIComponent(param1).document)
         {
            IUIComponent(param1).document = document;
         }
         if(param1 is ILayoutManagerClient)
         {
            ILayoutManagerClient(param1).nestLevel = nestLevel + 1;
         }
         if(param1 is InteractiveObject)
         {
            if(doubleClickEnabled)
            {
               InteractiveObject(param1).doubleClickEnabled = true;
            }
         }
         if(param1 is IUIComponent)
         {
            IUIComponent(param1).parentChanged(this);
         }
         if(param1 is IStyleClient)
         {
            IStyleClient(param1).regenerateStyleCache(true);
         }
         if(param1 is ISimpleStyleClient)
         {
            ISimpleStyleClient(param1).styleChanged(null);
         }
         if(param1 is IStyleClient)
         {
            IStyleClient(param1).notifyStyleChangeInChildren(null,true);
         }
         if(Boolean(_loc3_) && param1 is _loc3_)
         {
            _loc3_(param1).initThemeColor();
         }
         if(Boolean(_loc3_) && param1 is _loc3_)
         {
            _loc3_(param1).stylesInitialized();
         }
      }
      
      private function idleTimer_timerHandler(param1:TimerEvent) : void
      {
         ++idleCounter;
         if(idleCounter * IDLE_INTERVAL > IDLE_THRESHOLD)
         {
            dispatchEvent(new FlexEvent(FlexEvent.IDLE));
         }
      }
      
      public function getExplicitOrMeasuredHeight() : Number
      {
         return !isNaN(explicitHeight) ? explicitHeight : measuredHeight;
      }
      
      mx_internal function notifyStyleChangeInChildren(param1:String, param2:Boolean) : void
      {
         var _loc6_:IStyleClient = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = rawChildren.numChildren;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = rawChildren.getChildAt(_loc5_) as IStyleClient;
            if(_loc6_)
            {
               _loc6_.styleChanged(param1);
               _loc6_.notifyStyleChangeInChildren(param1,param2);
            }
            if(isTopLevelWindow(DisplayObject(_loc6_)))
            {
               _loc3_ = true;
            }
            _loc4_ = rawChildren.numChildren;
            _loc5_++;
         }
         if(!_loc3_ && topLevelWindow is IStyleClient)
         {
            IStyleClient(topLevelWindow).styleChanged(param1);
            IStyleClient(topLevelWindow).notifyStyleChangeInChildren(param1,param2);
         }
      }
      
      mx_internal function rawChildren_getObjectsUnderPoint(param1:Point) : Array
      {
         return super.getObjectsUnderPoint(param1);
      }
      
      private function initHandler(param1:Event) : void
      {
         allSystemManagers[this] = this.loaderInfo.url;
         root.loaderInfo.removeEventListener(Event.INIT,initHandler);
         var _loc2_:int = totalFrames == 1 ? 0 : 1;
         addFrameScript(_loc2_,docFrameHandler);
         var _loc3_:int = _loc2_ + 1;
         while(_loc3_ < totalFrames)
         {
            addFrameScript(_loc3_,extraFrameHandler);
            _loc3_++;
         }
         initialize();
      }
      
      override public function contains(param1:DisplayObject) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         if(super.contains(param1))
         {
            if(param1.parent == this)
            {
               _loc2_ = super.getChildIndex(param1);
               if(_loc2_ < noTopMostIndex)
               {
                  return true;
               }
            }
            else
            {
               _loc3_ = 0;
               while(_loc3_ < noTopMostIndex)
               {
                  _loc4_ = super.getChildAt(_loc3_);
                  if(_loc4_ is IRawChildrenContainer)
                  {
                     if(IRawChildrenContainer(_loc4_).rawChildren.contains(param1))
                     {
                        return true;
                     }
                  }
                  if(_loc4_ is DisplayObjectContainer)
                  {
                     if(DisplayObjectContainer(_loc4_).contains(param1))
                     {
                        return true;
                     }
                  }
                  _loc3_++;
               }
            }
         }
         return false;
      }
      
      public function getDefinitionByName(param1:String) : Object
      {
         var _loc3_:Object = null;
         var _loc2_:ApplicationDomain = !topLevel && parent is Loader ? Loader(parent).contentLoaderInfo.applicationDomain : info()["currentDomain"] as ApplicationDomain;
         if(_loc2_.hasDefinition(param1))
         {
            _loc3_ = _loc2_.getDefinition(param1);
         }
         return _loc3_;
      }
      
      public function get embeddedFontList() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(_fontList == null)
         {
            _fontList = {};
            _loc1_ = info()["fonts"];
            for(_loc2_ in _loc1_)
            {
               _fontList[_loc2_] = _loc1_[_loc2_];
            }
            if(!topLevel && Boolean(_topLevelSystemManager))
            {
               _loc3_ = _topLevelSystemManager.embeddedFontList;
               for(_loc2_ in _loc3_)
               {
                  _fontList[_loc2_] = _loc3_[_loc2_];
               }
            }
         }
         return _fontList;
      }
      
      mx_internal function set cursorIndex(param1:int) : void
      {
         var _loc2_:int = param1 - _cursorIndex;
         _cursorIndex = param1;
      }
      
      public function set document(param1:Object) : void
      {
         _document = param1;
      }
      
      override public function getChildAt(param1:int) : DisplayObject
      {
         return super.getChildAt(applicationIndex + param1);
      }
      
      public function get rawChildren() : IChildList
      {
         if(!_rawChildren)
         {
            _rawChildren = new SystemRawChildrenList(this);
         }
         return _rawChildren;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(param1 == FlexEvent.IDLE && !idleTimer)
         {
            idleTimer = new Timer(IDLE_INTERVAL);
            idleTimer.addEventListener(TimerEvent.TIMER,idleTimer_timerHandler);
            idleTimer.start();
            addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
            addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         }
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeFocusManager(param1:IFocusManagerContainer) : void
      {
         var _loc2_:int = int(forms.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(forms[_loc3_] == param1)
            {
               if(form == param1)
               {
                  deactivate(param1);
               }
               forms.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      private function mouseMoveHandler(param1:MouseEvent) : void
      {
         idleCounter = 0;
      }
      
      public function get focusPane() : Sprite
      {
         return _focusPane;
      }
      
      override public function get mouseX() : Number
      {
         if(_mouseX === undefined)
         {
            return super.mouseX;
         }
         return _mouseX;
      }
      
      private function mouseDownHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:IChildList = null;
         idleCounter = 0;
         if(numModalWindows == 0)
         {
            if(forms.length > 1)
            {
               _loc2_ = int(forms.length);
               _loc3_ = DisplayObject(param1.target);
               _loc4_ = Boolean(document.rawChildren.contains(_loc3_));
               while(_loc3_)
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc2_)
                  {
                     if(forms[_loc5_] == _loc3_)
                     {
                        _loc6_ = 0;
                        if(_loc3_ != form && _loc3_ is IFocusManagerContainer)
                        {
                           activate(IFocusManagerContainer(_loc3_));
                        }
                        if(popUpChildren.contains(_loc3_))
                        {
                           _loc9_ = popUpChildren;
                        }
                        else
                        {
                           _loc9_ = this;
                        }
                        _loc8_ = _loc7_ = _loc9_.getChildIndex(_loc3_);
                        _loc2_ = int(forms.length);
                        _loc6_ = 0;
                        while(_loc6_ < _loc2_)
                        {
                           if(_loc9_.contains(forms[_loc6_]))
                           {
                              if(_loc9_.getChildIndex(forms[_loc6_]) > _loc7_)
                              {
                                 _loc8_ = Math.max(_loc9_.getChildIndex(forms[_loc6_]),_loc8_);
                              }
                           }
                           _loc6_++;
                        }
                        if(_loc8_ > _loc7_ && !_loc4_)
                        {
                           _loc9_.setChildIndex(_loc3_,_loc8_);
                        }
                        return;
                     }
                     _loc5_++;
                  }
                  _loc3_ = _loc3_.parent;
               }
            }
         }
      }
      
      public function get screen() : Rectangle
      {
         if(!_screen)
         {
            Stage_resizeHandler();
         }
         return _screen;
      }
      
      mx_internal function set topMostIndex(param1:int) : void
      {
         var _loc2_:int = param1 - _topMostIndex;
         _topMostIndex = param1;
         toolTipIndex += _loc2_;
      }
      
      mx_internal function docFrameHandler(param1:Event = null) : void
      {
         var _loc2_:TextFieldFactory = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Class = null;
         Singleton.registerClass("mx.managers::IBrowserManager",Class(getDefinitionByName("mx.managers::BrowserManagerImpl")));
         Singleton.registerClass("mx.managers::ICursorManager",Class(getDefinitionByName("mx.managers::CursorManagerImpl")));
         Singleton.registerClass("mx.managers::IHistoryManager",Class(getDefinitionByName("mx.managers::HistoryManagerImpl")));
         Singleton.registerClass("mx.managers::ILayoutManager",Class(getDefinitionByName("mx.managers::LayoutManager")));
         Singleton.registerClass("mx.managers::IPopUpManager",Class(getDefinitionByName("mx.managers::PopUpManagerImpl")));
         Singleton.registerClass("mx.managers::IToolTipManager2",Class(getDefinitionByName("mx.managers::ToolTipManagerImpl")));
         if(Capabilities.playerType == "Desktop")
         {
            Singleton.registerClass("mx.managers::IDragManager",Class(getDefinitionByName("mx.managers::NativeDragManagerImpl")));
            if(Singleton.getClass("mx.managers::IDragManager") == null)
            {
               Singleton.registerClass("mx.managers::IDragManager",Class(getDefinitionByName("mx.managers::DragManagerImpl")));
            }
         }
         else
         {
            Singleton.registerClass("mx.managers::IDragManager",Class(getDefinitionByName("mx.managers::DragManagerImpl")));
         }
         Singleton.registerClass("mx.core::ITextFieldFactory",Class(getDefinitionByName("mx.core::TextFieldFactory")));
         executeCallbacks();
         doneExecutingInitCallbacks = true;
         var _loc3_:Array = info()["mixins"];
         if(Boolean(_loc3_) && _loc3_.length > 0)
         {
            _loc4_ = int(_loc3_.length);
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc6_ = Class(getDefinitionByName(_loc3_[_loc5_]));
               _loc6_["init"](this);
               _loc5_++;
            }
         }
         installCompiledResourceBundles();
         initializeTopLevelWindow(null);
         deferredNextFrame();
      }
      
      private function Stage_resizeHandler(param1:Event = null) : void
      {
         var _loc2_:Number = stage.stageWidth;
         var _loc3_:Number = stage.stageHeight;
         var _loc4_:Number = loaderInfo.width;
         var _loc5_:Number = loaderInfo.height;
         var _loc6_:Number = (_loc4_ - _loc2_) / 2;
         var _loc7_:Number = (_loc5_ - _loc3_) / 2;
         var _loc8_:String = stage.align;
         if(_loc8_ == StageAlign.TOP)
         {
            _loc7_ = 0;
         }
         else if(_loc8_ == StageAlign.BOTTOM)
         {
            _loc7_ = _loc5_ - _loc3_;
         }
         else if(_loc8_ == StageAlign.LEFT)
         {
            _loc6_ = 0;
         }
         else if(_loc8_ == StageAlign.RIGHT)
         {
            _loc6_ = _loc4_ - _loc2_;
         }
         else if(_loc8_ == StageAlign.TOP_LEFT || _loc8_ == "LT")
         {
            _loc7_ = 0;
            _loc6_ = 0;
         }
         else if(_loc8_ == StageAlign.TOP_RIGHT)
         {
            _loc7_ = 0;
            _loc6_ = _loc4_ - _loc2_;
         }
         else if(_loc8_ == StageAlign.BOTTOM_LEFT)
         {
            _loc7_ = _loc5_ - _loc3_;
            _loc6_ = 0;
         }
         else if(_loc8_ == StageAlign.BOTTOM_RIGHT)
         {
            _loc7_ = _loc5_ - _loc3_;
            _loc6_ = _loc4_ - _loc2_;
         }
         if(!_screen)
         {
            _screen = new Rectangle();
         }
         _screen.x = _loc6_;
         _screen.y = _loc7_;
         _screen.width = _loc2_;
         _screen.height = _loc3_;
         if(isStageRoot)
         {
            _width = stage.stageWidth;
            _height = stage.stageHeight;
         }
         if(param1)
         {
            resizeMouseCatcher();
            dispatchEvent(param1);
         }
      }
      
      public function get explicitHeight() : Number
      {
         return _explicitHeight;
      }
      
      public function get preloaderBackgroundSize() : String
      {
         return info()["backgroundSize"];
      }
      
      public function isTopLevel() : Boolean
      {
         return topLevel;
      }
      
      override public function get mouseY() : Number
      {
         if(_mouseY === undefined)
         {
            return super.mouseY;
         }
         return _mouseY;
      }
      
      public function getExplicitOrMeasuredWidth() : Number
      {
         return !isNaN(explicitWidth) ? explicitWidth : measuredWidth;
      }
      
      public function deactivate(param1:IFocusManagerContainer) : void
      {
         var _loc2_:IFocusManagerContainer = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:IFocusManagerContainer = null;
         if(form)
         {
            if(form == param1 && forms.length > 1)
            {
               form.focusManager.deactivate();
               _loc3_ = int(forms.length);
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  _loc5_ = forms[_loc4_];
                  if(_loc5_ == param1)
                  {
                     _loc4_ += 1;
                     while(_loc4_ < _loc3_)
                     {
                        _loc5_ = forms[_loc4_];
                        if(Sprite(_loc5_).visible == true && IUIComponent(_loc5_).enabled)
                        {
                           _loc2_ = _loc5_;
                        }
                        _loc4_++;
                     }
                     form = _loc2_;
                     break;
                  }
                  if(Sprite(_loc5_).visible && IUIComponent(_loc5_).enabled)
                  {
                     _loc2_ = _loc5_;
                  }
                  _loc4_++;
               }
               if(form)
               {
                  form.focusManager.activate();
               }
            }
         }
      }
      
      override public function getChildByName(param1:String) : DisplayObject
      {
         return super.getChildByName(param1);
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         ++noTopMostIndex;
         return rawChildren_addChildAt(param1,applicationIndex + param2);
      }
      
      public function get measuredWidth() : Number
      {
         return topLevelWindow ? topLevelWindow.getExplicitOrMeasuredWidth() : loaderInfo.width;
      }
      
      public function info() : Object
      {
         return {};
      }
      
      mx_internal function get toolTipIndex() : int
      {
         return _toolTipIndex;
      }
      
      public function setActualSize(param1:Number, param2:Number) : void
      {
         if(isStageRoot)
         {
            return;
         }
         _width = param1;
         _height = param2;
         if(mouseCatcher)
         {
            mouseCatcher.width = param1;
            mouseCatcher.height = param2;
         }
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      public function set focusPane(param1:Sprite) : void
      {
         if(param1)
         {
            addChild(param1);
            param1.x = 0;
            param1.y = 0;
            param1.scrollRect = null;
            _focusPane = param1;
         }
         else
         {
            removeChild(_focusPane);
            _focusPane = null;
         }
      }
      
      mx_internal function set applicationIndex(param1:int) : void
      {
         _applicationIndex = param1;
      }
      
      private function executeCallbacks() : void
      {
         var _loc1_:Function = null;
         if(!parent)
         {
            return;
         }
         while(initCallbackFunctions.length > 0)
         {
            _loc1_ = initCallbackFunctions.shift();
            _loc1_(this);
         }
      }
      
      public function get popUpChildren() : IChildList
      {
         if(!topLevel)
         {
            return _topLevelSystemManager.popUpChildren;
         }
         if(!_popUpChildren)
         {
            _popUpChildren = new SystemChildrenList(this,new QName(mx_internal,"noTopMostIndex"),new QName(mx_internal,"topMostIndex"));
         }
         return _popUpChildren;
      }
      
      public function set explicitHeight(param1:Number) : void
      {
         _explicitHeight = param1;
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         --noTopMostIndex;
         return rawChildren_removeChild(param1);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         ++noTopMostIndex;
         return rawChildren_addChildAt(param1,noTopMostIndex - 1);
      }
      
      public function create(... rest) : Object
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:String = info()["mainClassName"];
         if(_loc2_ == null)
         {
            _loc4_ = loaderInfo.loaderURL;
            _loc5_ = _loc4_.lastIndexOf(".");
            _loc6_ = _loc4_.lastIndexOf("/");
            _loc2_ = _loc4_.substring(_loc6_ + 1,_loc5_);
         }
         var _loc3_:Class = Class(getDefinitionByName(_loc2_));
         return _loc3_ ? new _loc3_() : null;
      }
      
      override public function get stage() : Stage
      {
         var _loc1_:Stage = super.stage;
         if(_loc1_)
         {
            return _loc1_;
         }
         if(!topLevel && Boolean(_topLevelSystemManager))
         {
            return _topLevelSystemManager.stage;
         }
         return null;
      }
      
      mx_internal function rawChildren_removeChild(param1:DisplayObject) : DisplayObject
      {
         removingChild(param1);
         super.removeChild(param1);
         childRemoved(param1);
         return param1;
      }
      
      final mx_internal function get $numChildren() : int
      {
         return super.numChildren;
      }
      
      public function get toolTipChildren() : IChildList
      {
         if(!topLevel)
         {
            return _topLevelSystemManager.toolTipChildren;
         }
         if(!_toolTipChildren)
         {
            _toolTipChildren = new SystemChildrenList(this,new QName(mx_internal,"topMostIndex"),new QName(mx_internal,"toolTipIndex"));
         }
         return _toolTipChildren;
      }
      
      override public function getChildIndex(param1:DisplayObject) : int
      {
         return super.getChildIndex(param1) - applicationIndex;
      }
      
      private function mouseUpHandler(param1:MouseEvent) : void
      {
         idleCounter = 0;
      }
      
      mx_internal function rawChildren_getChildIndex(param1:DisplayObject) : int
      {
         return super.getChildIndex(param1);
      }
      
      public function activate(param1:IFocusManagerContainer) : void
      {
         var _loc2_:IFocusManagerContainer = null;
         if(form)
         {
            if(form != param1 && forms.length > 1)
            {
               _loc2_ = form;
               _loc2_.focusManager.deactivate();
            }
         }
         form = param1;
         if(param1.focusManager)
         {
            param1.focusManager.activate();
         }
      }
      
      private function deferredNextFrame() : void
      {
         if(currentFrame + 1 > totalFrames)
         {
            return;
         }
         if(currentFrame + 1 <= framesLoaded)
         {
            nextFrame();
         }
         else
         {
            nextFrameTimer = new Timer(100);
            nextFrameTimer.addEventListener(TimerEvent.TIMER,nextFrameTimerHandler);
            nextFrameTimer.start();
         }
      }
      
      mx_internal function get cursorIndex() : int
      {
         return _cursorIndex;
      }
      
      mx_internal function rawChildren_contains(param1:DisplayObject) : Boolean
      {
         return super.contains(param1);
      }
      
      override public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         super.setChildIndex(param1,applicationIndex + param2);
      }
      
      public function get document() : Object
      {
         return _document;
      }
      
      private function resizeMouseCatcher() : void
      {
         var _loc1_:Graphics = null;
         if(mouseCatcher)
         {
            _loc1_ = mouseCatcher.graphics;
            _loc1_.clear();
            _loc1_.beginFill(0,0);
            _loc1_.drawRect(0,0,stage.stageWidth,stage.stageHeight);
            _loc1_.endFill();
         }
      }
      
      override public function get height() : Number
      {
         return _height;
      }
      
      mx_internal function rawChildren_getChildAt(param1:int) : DisplayObject
      {
         return super.getChildAt(param1);
      }
      
      mx_internal function set noTopMostIndex(param1:int) : void
      {
         var _loc2_:int = param1 - _noTopMostIndex;
         _noTopMostIndex = param1;
         topMostIndex += _loc2_;
      }
      
      override public function getObjectsUnderPoint(param1:Point) : Array
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:Array = null;
         var _loc2_:Array = [];
         var _loc3_:int = topMostIndex;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = super.getChildAt(_loc4_);
            if(_loc5_ is DisplayObjectContainer)
            {
               _loc6_ = DisplayObjectContainer(_loc5_).getObjectsUnderPoint(param1);
               if(_loc6_)
               {
                  _loc2_ = _loc2_.concat(_loc6_);
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      mx_internal function get topMostIndex() : int
      {
         return _topMostIndex;
      }
      
      mx_internal function regenerateStyleCache(param1:Boolean) : void
      {
         var _loc5_:IStyleClient = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = rawChildren.numChildren;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = rawChildren.getChildAt(_loc4_) as IStyleClient;
            if(_loc5_)
            {
               _loc5_.regenerateStyleCache(param1);
            }
            if(isTopLevelWindow(DisplayObject(_loc5_)))
            {
               _loc2_ = true;
            }
            _loc3_ = rawChildren.numChildren;
            _loc4_++;
         }
         if(!_loc2_ && topLevelWindow is IStyleClient)
         {
            IStyleClient(topLevelWindow).regenerateStyleCache(param1);
         }
      }
      
      public function addFocusManager(param1:IFocusManagerContainer) : void
      {
         forms.push(param1);
      }
      
      public function isFontFaceEmbedded(param1:TextFormat) : Boolean
      {
         var _loc6_:Font = null;
         var _loc7_:String = null;
         var _loc2_:String = param1.font;
         var _loc3_:Array = Font.enumerateFonts();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc6_ = Font(_loc3_[_loc4_]);
            if(_loc6_.fontName == _loc2_)
            {
               _loc7_ = "regular";
               if(Boolean(param1.bold) && Boolean(param1.italic))
               {
                  _loc7_ = "boldItalic";
               }
               else if(param1.bold)
               {
                  _loc7_ = "bold";
               }
               else if(param1.italic)
               {
                  _loc7_ = "italic";
               }
               if(_loc6_.fontStyle == _loc7_)
               {
                  return true;
               }
            }
            _loc4_++;
         }
         if(!_loc2_ || !embeddedFontList || !embeddedFontList[_loc2_])
         {
            return false;
         }
         var _loc5_:Object = embeddedFontList[_loc2_];
         return !(Boolean(param1.bold) && !_loc5_.bold || Boolean(param1.italic) && !_loc5_.italic || !param1.bold && !param1.italic && !_loc5_.regular);
      }
      
      mx_internal function rawChildren_setChildIndex(param1:DisplayObject, param2:int) : void
      {
         super.setChildIndex(param1,param2);
      }
      
      mx_internal function childAdded(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new FlexEvent(FlexEvent.ADD));
         if(param1 is IUIComponent)
         {
            IUIComponent(param1).initialize();
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(param1 == FlexEvent.IDLE)
         {
            super.removeEventListener(param1,param2,param3);
            if(!hasEventListener(FlexEvent.IDLE) && Boolean(idleTimer))
            {
               idleTimer.stop();
               idleTimer = null;
               removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
               removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
            }
         }
         else
         {
            super.removeEventListener(param1,param2,param3);
         }
      }
      
      private function extraFrameHandler(param1:Event = null) : void
      {
         var _loc3_:Class = null;
         var _loc2_:Object = info()["frames"];
         if(Boolean(_loc2_) && Boolean(_loc2_[currentLabel]))
         {
            _loc3_ = Class(getDefinitionByName(_loc2_[currentLabel]));
            _loc3_["frame"](this);
         }
         deferredNextFrame();
      }
      
      public function get application() : IUIComponent
      {
         return IUIComponent(_document);
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         --noTopMostIndex;
         return rawChildren_removeChildAt(applicationIndex + param1);
      }
      
      mx_internal function rawChildren_removeChildAt(param1:int) : DisplayObject
      {
         var _loc2_:DisplayObject = super.getChildAt(param1);
         removingChild(_loc2_);
         super.removeChildAt(param1);
         childRemoved(_loc2_);
         return _loc2_;
      }
      
      private function installCompiledResourceBundles() : void
      {
         var _loc1_:Object = this.info();
         var _loc2_:ApplicationDomain = !topLevel && parent is Loader ? Loader(parent).contentLoaderInfo.applicationDomain : _loc1_["currentDomain"];
         var _loc3_:Array = _loc1_["compiledLocales"];
         var _loc4_:Array = _loc1_["compiledResourceBundleNames"];
         var _loc5_:IResourceManager = ResourceManager.getInstance();
         _loc5_.installCompiledResourceBundles(_loc2_,_loc3_,_loc4_);
         if(!_loc5_.localeChain)
         {
            _loc5_.localeChain = _loc3_;
         }
      }
      
      mx_internal function removingChild(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new FlexEvent(FlexEvent.REMOVE));
      }
      
      mx_internal function get applicationIndex() : int
      {
         return _applicationIndex;
      }
      
      mx_internal function set toolTipIndex(param1:int) : void
      {
         var _loc2_:int = param1 - _toolTipIndex;
         _toolTipIndex = param1;
         cursorIndex += _loc2_;
      }
      
      public function get cursorChildren() : IChildList
      {
         if(!topLevel)
         {
            return _topLevelSystemManager.cursorChildren;
         }
         if(!_cursorChildren)
         {
            _cursorChildren = new SystemChildrenList(this,new QName(mx_internal,"toolTipIndex"),new QName(mx_internal,"cursorIndex"));
         }
         return _cursorChildren;
      }
      
      public function get preloaderBackgroundImage() : Object
      {
         return info()["backgroundImage"];
      }
      
      public function set numModalWindows(param1:int) : void
      {
         _numModalWindows = param1;
      }
      
      public function get preloaderBackgroundAlpha() : Number
      {
         return info()["backgroundAlpha"];
      }
      
      mx_internal function rawChildren_getChildByName(param1:String) : DisplayObject
      {
         return super.getChildByName(param1);
      }
      
      private function preloader_preloaderDoneHandler(param1:Event) : void
      {
         var _loc2_:IUIComponent = topLevelWindow;
         preloader.removeEventListener(FlexEvent.PRELOADER_DONE,preloader_preloaderDoneHandler);
         _popUpChildren.removeChild(preloader);
         preloader = null;
         mouseCatcher = new FlexSprite();
         mouseCatcher.name = "mouseCatcher";
         ++noTopMostIndex;
         super.addChildAt(mouseCatcher,0);
         resizeMouseCatcher();
         if(!topLevel)
         {
            mouseCatcher.visible = false;
            mask = mouseCatcher;
         }
         ++noTopMostIndex;
         super.addChildAt(DisplayObject(_loc2_),1);
         _loc2_.dispatchEvent(new FlexEvent(FlexEvent.APPLICATION_COMPLETE));
         dispatchEvent(new FlexEvent(FlexEvent.APPLICATION_COMPLETE));
      }
      
      public function get preloaderBackgroundColor() : uint
      {
         var _loc1_:* = info()["backgroundColor"];
         if(_loc1_ == undefined)
         {
            return StyleManager.NOT_A_COLOR;
         }
         return StyleManager.getColorName(_loc1_);
      }
      
      public function get topLevelSystemManager() : ISystemManager
      {
         if(topLevel)
         {
            return this;
         }
         return _topLevelSystemManager;
      }
      
      mx_internal function initialize() : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:EmbeddedFontRegistry = null;
         var _loc13_:Class = null;
         var _loc14_:Object = null;
         var _loc15_:RSLItem = null;
         if(isStageRoot)
         {
            _width = stage.stageWidth;
            _height = stage.stageHeight;
         }
         else
         {
            _width = loaderInfo.width;
            _height = loaderInfo.height;
         }
         preloader = new Preloader();
         preloader.addEventListener(FlexEvent.INIT_PROGRESS,preloader_initProgressHandler);
         preloader.addEventListener(FlexEvent.PRELOADER_DONE,preloader_preloaderDoneHandler);
         if(!_popUpChildren)
         {
            _popUpChildren = new SystemChildrenList(this,new QName(mx_internal,"noTopMostIndex"),new QName(mx_internal,"topMostIndex"));
         }
         _popUpChildren.addChild(preloader);
         var _loc1_:Array = info()["rsls"];
         var _loc2_:Array = info()["cdRsls"];
         var _loc3_:Boolean = true;
         if(info()["usePreloader"] != undefined)
         {
            _loc3_ = Boolean(info()["usePreloader"]);
         }
         var _loc4_:Class = info()["preloader"] as Class;
         if(_loc3_ && !_loc4_)
         {
            _loc4_ = DownloadProgressBar;
         }
         var _loc5_:Array = [];
         if(Boolean(_loc2_) && _loc2_.length > 0)
         {
            _loc13_ = Class(getDefinitionByName("mx.core::CrossDomainRSLItem"));
            _loc6_ = int(_loc2_.length);
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc14_ = new _loc13_(_loc2_[_loc7_]["rsls"],_loc2_[_loc7_]["policyFiles"],_loc2_[_loc7_]["digests"],_loc2_[_loc7_]["types"],_loc2_[_loc7_]["isSigned"]);
               _loc5_.push(_loc14_);
               _loc7_++;
            }
         }
         if(_loc1_ != null && _loc1_.length > 0)
         {
            _loc6_ = int(_loc1_.length);
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc15_ = new RSLItem(_loc1_[_loc7_].url);
               _loc5_.push(_loc15_);
               _loc7_++;
            }
         }
         Singleton.registerClass("mx.resources::IResourceManager",Class(getDefinitionByName("mx.resources::ResourceManagerImpl")));
         var _loc8_:IResourceManager = ResourceManager.getInstance();
         Singleton.registerClass("mx.core::IEmbeddedFontRegistry",Class(getDefinitionByName("mx.core::EmbeddedFontRegistry")));
         Singleton.registerClass("mx.styles::IStyleManager",Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
         Singleton.registerClass("mx.styles::IStyleManager2",Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
         var _loc10_:String = loaderInfo.parameters["localeChain"];
         if(_loc10_ != null && _loc10_ != "")
         {
            _loc8_.localeChain = _loc10_.split(",");
         }
         var _loc11_:String = loaderInfo.parameters["resourceModuleURLs"];
         var _loc12_:Array = _loc11_ ? _loc11_.split(",") : null;
         preloader.initialize(_loc3_,_loc4_,preloaderBackgroundColor,preloaderBackgroundAlpha,preloaderBackgroundImage,preloaderBackgroundSize,isStageRoot ? stage.stageWidth : loaderInfo.width,isStageRoot ? stage.stageHeight : loaderInfo.height,null,null,_loc5_,_loc12_);
      }
      
      private function appCreationCompleteHandler(param1:FlexEvent) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         if(!topLevel && Boolean(parent))
         {
            _loc2_ = parent.parent;
            while(_loc2_)
            {
               if(_loc2_ is IInvalidating)
               {
                  IInvalidating(_loc2_).invalidateSize();
                  IInvalidating(_loc2_).invalidateDisplayList();
                  return;
               }
               _loc2_ = _loc2_.parent;
            }
         }
      }
      
      public function get measuredHeight() : Number
      {
         return topLevelWindow ? topLevelWindow.getExplicitOrMeasuredHeight() : loaderInfo.height;
      }
      
      mx_internal function rawChildren_addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         addingChild(param1);
         super.addChildAt(param1,param2);
         childAdded(param1);
         return param1;
      }
      
      private function nextFrameTimerHandler(param1:TimerEvent) : void
      {
         if(currentFrame + 1 <= framesLoaded)
         {
            nextFrame();
            nextFrameTimer.removeEventListener(TimerEvent.TIMER,nextFrameTimerHandler);
            nextFrameTimer.reset();
         }
      }
      
      mx_internal function childRemoved(param1:DisplayObject) : void
      {
         if(param1 is IUIComponent)
         {
            IUIComponent(param1).parentChanged(null);
         }
      }
      
      mx_internal function get noTopMostIndex() : int
      {
         return _noTopMostIndex;
      }
      
      override public function get numChildren() : int
      {
         return noTopMostIndex - applicationIndex;
      }
      
      private function initializeTopLevelWindow(param1:Event) : void
      {
         var _loc2_:IUIComponent = null;
         var _loc3_:DisplayObjectContainer = null;
         initialized = true;
         if(!parent)
         {
            return;
         }
         if(!topLevel)
         {
            _loc3_ = parent.parent;
            if(!_loc3_)
            {
               return;
            }
            while(_loc3_)
            {
               if(_loc3_ is IUIComponent)
               {
                  _topLevelSystemManager = IUIComponent(_loc3_).systemManager;
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler,true);
         if(topLevel && Boolean(stage))
         {
            stage.addEventListener(Event.RESIZE,Stage_resizeHandler,false,0,true);
         }
         document = _loc2_ = topLevelWindow = IUIComponent(create());
         if(document)
         {
            IEventDispatcher(_loc2_).addEventListener(FlexEvent.CREATION_COMPLETE,appCreationCompleteHandler);
            if(topLevel && Boolean(stage))
            {
               LoaderConfig._url = loaderInfo.url;
               LoaderConfig._parameters = loaderInfo.parameters;
               _width = stage.stageWidth;
               _height = stage.stageHeight;
               IFlexDisplayObject(_loc2_).setActualSize(stage.stageWidth,stage.stageHeight);
            }
            else
            {
               IFlexDisplayObject(_loc2_).setActualSize(loaderInfo.width,loaderInfo.height);
            }
            if(preloader)
            {
               preloader.registerApplication(_loc2_);
            }
            addingChild(DisplayObject(_loc2_));
            childAdded(DisplayObject(_loc2_));
         }
         else
         {
            document = this;
         }
      }
      
      public function get numModalWindows() : int
      {
         return _numModalWindows;
      }
      
      public function isTopLevelWindow(param1:DisplayObject) : Boolean
      {
         return param1 is IUIComponent && IUIComponent(param1) == topLevelWindow;
      }
      
      override public function get width() : Number
      {
         return _width;
      }
      
      public function move(param1:Number, param2:Number) : void
      {
      }
      
      public function set explicitWidth(param1:Number) : void
      {
         _explicitWidth = param1;
      }
      
      private function preloader_initProgressHandler(param1:Event) : void
      {
         preloader.removeEventListener(FlexEvent.INIT_PROGRESS,preloader_initProgressHandler);
         deferredNextFrame();
      }
      
      public function get explicitWidth() : Number
      {
         return _explicitWidth;
      }
      
      mx_internal function rawChildren_addChild(param1:DisplayObject) : DisplayObject
      {
         addingChild(param1);
         super.addChild(param1);
         childAdded(param1);
         return param1;
      }
   }
}

