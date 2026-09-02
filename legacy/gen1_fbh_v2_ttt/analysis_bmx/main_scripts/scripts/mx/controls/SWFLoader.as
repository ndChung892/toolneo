package mx.controls
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import mx.core.Application;
   import mx.core.FlexLoader;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.managers.CursorManager;
   import mx.managers.ISystemManager;
   import mx.managers.SystemManagerGlobals;
   import mx.styles.ISimpleStyleClient;
   import mx.utils.LoaderUtil;
   
   use namespace mx_internal;
   
   public class SWFLoader extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      mx_internal var contentHolder:DisplayObject;
      
      private var brokenImage:Boolean = false;
      
      private var _bytesLoaded:Number = NaN;
      
      private var _autoLoad:Boolean = true;
      
      private var _loaderContext:LoaderContext;
      
      private var requestedURL:URLRequest;
      
      private var _showBusyCursor:Boolean = false;
      
      private var _scaleContent:Boolean = true;
      
      private var _bytesTotal:Number = NaN;
      
      private var flexContent:Boolean = false;
      
      private var explicitLoaderContext:Boolean = false;
      
      private var _maintainAspectRatio:Boolean = true;
      
      private var resizableContent:Boolean = false;
      
      private var brokenImageBorder:IFlexDisplayObject;
      
      private var isContentLoaded:Boolean = false;
      
      private var attemptingChildAppDomain:Boolean = false;
      
      private var _trustContent:Boolean = false;
      
      private var scaleContentChanged:Boolean = false;
      
      private var _source:Object;
      
      private var contentRequestID:String = null;
      
      private var contentChanged:Boolean = false;
      
      public function SWFLoader()
      {
         super();
         tabChildren = true;
         tabEnabled = false;
         addEventListener(FlexEvent.INITIALIZE,initializeHandler);
         showInAutomationHierarchy = false;
      }
      
      [Bindable("trustContentChanged")]
      public function get trustContent() : Boolean
      {
         return _trustContent;
      }
      
      public function set trustContent(param1:Boolean) : void
      {
         if(_trustContent != param1)
         {
            _trustContent = param1;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("trustContentChanged"));
         }
      }
      
      public function get contentHeight() : Number
      {
         return contentHolder ? contentHolder.height : NaN;
      }
      
      [Bindable("maintainAspectRatioChanged")]
      public function get maintainAspectRatio() : Boolean
      {
         return _maintainAspectRatio;
      }
      
      private function contentLoaderInfo_progressEventHandler(param1:ProgressEvent) : void
      {
         _bytesTotal = param1.bytesTotal;
         _bytesLoaded = param1.bytesLoaded;
         dispatchEvent(param1);
      }
      
      private function contentLoaded() : void
      {
         var loaderInfo:LoaderInfo = null;
         isContentLoaded = true;
         if(contentHolder is Loader)
         {
            loaderInfo = Loader(contentHolder).contentLoaderInfo;
         }
         resizableContent = false;
         if(loaderInfo)
         {
            if(loaderInfo.contentType == "application/x-shockwave-flash")
            {
               resizableContent = true;
            }
            if(resizableContent)
            {
               try
               {
                  flexContent = Loader(contentHolder).content is IFlexDisplayObject;
               }
               catch(e:Error)
               {
                  flexContent = false;
               }
            }
         }
         try
         {
            if(tabChildren && contentHolder is Loader && Loader(contentHolder).content is DisplayObjectContainer)
            {
               Loader(contentHolder).tabChildren = true;
               DisplayObjectContainer(Loader(contentHolder).content).tabChildren = true;
            }
         }
         catch(e:Error)
         {
         }
         invalidateSize();
         invalidateDisplayList();
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return 0;
         }
         return super.baselinePosition;
      }
      
      private function unScaleContent() : void
      {
         contentHolder.scaleX = 1;
         contentHolder.scaleY = 1;
         contentHolder.x = 0;
         contentHolder.y = 0;
      }
      
      private function get contentHolderHeight() : Number
      {
         var loaderInfo:LoaderInfo = null;
         var content:IFlexDisplayObject = null;
         var testContent:DisplayObject = null;
         if(contentHolder is Loader)
         {
            loaderInfo = Loader(contentHolder).contentLoaderInfo;
         }
         if(loaderInfo)
         {
            if(loaderInfo.contentType == "application/x-shockwave-flash")
            {
               try
               {
                  content = Loader(contentHolder).content as IFlexDisplayObject;
                  if(content)
                  {
                     return content.measuredHeight;
                  }
               }
               catch(error:Error)
               {
                  return contentHolder.height;
               }
            }
            else
            {
               try
               {
                  testContent = Loader(contentHolder).content;
               }
               catch(error:Error)
               {
                  return contentHolder.height;
               }
            }
            return loaderInfo.height;
         }
         if(contentHolder is IUIComponent)
         {
            return IUIComponent(contentHolder).getExplicitOrMeasuredHeight();
         }
         if(contentHolder is IFlexDisplayObject)
         {
            return IFlexDisplayObject(contentHolder).measuredHeight;
         }
         return contentHolder.height;
      }
      
      public function set maintainAspectRatio(param1:Boolean) : void
      {
         _maintainAspectRatio = param1;
         dispatchEvent(new Event("maintainAspectRatioChanged"));
      }
      
      public function set showBusyCursor(param1:Boolean) : void
      {
         if(_showBusyCursor != param1)
         {
            _showBusyCursor = param1;
            if(_showBusyCursor)
            {
               CursorManager.registerToUseBusyCursor(this);
            }
            else
            {
               CursorManager.unRegisterToUseBusyCursor(this);
            }
         }
      }
      
      [Bindable("complete")]
      public function get bytesTotal() : Number
      {
         return _bytesTotal;
      }
      
      private function initializeHandler(param1:FlexEvent) : void
      {
         if(contentChanged)
         {
            contentChanged = false;
            if(_autoLoad)
            {
               load(_source);
            }
         }
      }
      
      public function get showBusyCursor() : Boolean
      {
         return _showBusyCursor;
      }
      
      public function set scaleContent(param1:Boolean) : void
      {
         if(_scaleContent != param1)
         {
            _scaleContent = param1;
            scaleContentChanged = true;
            invalidateDisplayList();
         }
         dispatchEvent(new Event("scaleContentChanged"));
      }
      
      private function contentLoaderInfo_openEventHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override public function regenerateStyleCache(param1:Boolean) : void
      {
         var sm:ISystemManager = null;
         var recursive:Boolean = param1;
         super.regenerateStyleCache(recursive);
         try
         {
            sm = content as ISystemManager;
            if(sm != null)
            {
               Object(sm).regenerateStyleCache(recursive);
            }
         }
         catch(error:Error)
         {
         }
      }
      
      [Bindable("loaderContextChanged")]
      public function get loaderContext() : LoaderContext
      {
         return _loaderContext;
      }
      
      private function getHorizontalAlignValue() : Number
      {
         var _loc1_:String = getStyle("horizontalAlign");
         if(_loc1_ == "left")
         {
            return 0;
         }
         if(_loc1_ == "right")
         {
            return 1;
         }
         return 0.5;
      }
      
      [Bindable("progress")]
      public function get percentLoaded() : Number
      {
         var _loc1_:Number = isNaN(_bytesTotal) || _bytesTotal == 0 ? 0 : 100 * (_bytesLoaded / _bytesTotal);
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      private function contentLoaderInfo_unloadEventHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      mx_internal function contentLoaderInfo_completeEventHandler(param1:Event) : void
      {
         if(LoaderInfo(param1.target).loader != contentHolder)
         {
            return;
         }
         dispatchEvent(param1);
         contentLoaded();
      }
      
      override public function notifyStyleChangeInChildren(param1:String, param2:Boolean) : void
      {
         var sm:ISystemManager = null;
         var styleProp:String = param1;
         var recursive:Boolean = param2;
         super.notifyStyleChangeInChildren(styleProp,recursive);
         try
         {
            sm = content as ISystemManager;
            if(sm != null)
            {
               Object(sm).notifyStyleChangeInChildren(styleProp,recursive);
            }
         }
         catch(error:Error)
         {
         }
      }
      
      [Bindable("autoLoadChanged")]
      public function get autoLoad() : Boolean
      {
         return _autoLoad;
      }
      
      public function set source(param1:Object) : void
      {
         if(_source != param1)
         {
            _source = param1;
            contentChanged = true;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("sourceChanged"));
         }
      }
      
      [Bindable("sourceChanged")]
      public function get source() : Object
      {
         return _source;
      }
      
      private function contentLoaderInfo_httpStatusEventHandler(param1:HTTPStatusEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function set loaderContext(param1:LoaderContext) : void
      {
         _loaderContext = param1;
         explicitLoaderContext = true;
         dispatchEvent(new Event("loaderContextChanged"));
      }
      
      private function get contentHolderWidth() : Number
      {
         var loaderInfo:LoaderInfo = null;
         var content:IFlexDisplayObject = null;
         var testContent:DisplayObject = null;
         if(contentHolder is Loader)
         {
            loaderInfo = Loader(contentHolder).contentLoaderInfo;
         }
         if(loaderInfo)
         {
            if(loaderInfo.contentType == "application/x-shockwave-flash")
            {
               try
               {
                  content = Loader(contentHolder).content as IFlexDisplayObject;
                  if(content)
                  {
                     return content.measuredWidth;
                  }
               }
               catch(error:Error)
               {
                  return contentHolder.width;
               }
            }
            else
            {
               try
               {
                  testContent = Loader(contentHolder).content;
               }
               catch(error:Error)
               {
                  return contentHolder.width;
               }
            }
            return loaderInfo.width;
         }
         if(contentHolder is IUIComponent)
         {
            return IUIComponent(contentHolder).getExplicitOrMeasuredWidth();
         }
         if(contentHolder is IFlexDisplayObject)
         {
            return IFlexDisplayObject(contentHolder).measuredWidth;
         }
         return contentHolder.width;
      }
      
      private function loadContent(param1:Object) : DisplayObject
      {
         var child:DisplayObject = null;
         var cls:Class = null;
         var url:String = null;
         var byteArray:ByteArray = null;
         var loader:Loader = null;
         var lc:LoaderContext = null;
         var rootURL:String = null;
         var lastIndex:int = 0;
         var message:String = null;
         var classOrString:Object = param1;
         if(classOrString is Class)
         {
            cls = Class(classOrString);
         }
         else if(classOrString is String)
         {
            try
            {
               cls = Class(systemManager.getDefinitionByName(String(classOrString)));
            }
            catch(e:Error)
            {
            }
            url = String(classOrString);
         }
         else if(classOrString is ByteArray)
         {
            byteArray = ByteArray(classOrString);
         }
         else
         {
            url = classOrString.toString();
         }
         if(cls)
         {
            contentHolder = child = new cls();
            addChild(child);
            contentLoaded();
         }
         else if(classOrString is DisplayObject)
         {
            contentHolder = child = DisplayObject(classOrString);
            addChild(child);
            contentLoaded();
         }
         else if(byteArray)
         {
            loader = new FlexLoader();
            child = loader;
            addChild(child);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,contentLoaderInfo_completeEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.INIT,contentLoaderInfo_initEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.UNLOAD,contentLoaderInfo_unloadEventHandler);
            loader.loadBytes(byteArray,loaderContext);
         }
         else
         {
            if(!url)
            {
               message = resourceManager.getString("controls","notLoadable",[source]);
               throw new Error(message);
            }
            loader = new FlexLoader();
            child = loader;
            addChild(loader);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,contentLoaderInfo_completeEventHandler);
            loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,contentLoaderInfo_httpStatusEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.INIT,contentLoaderInfo_initEventHandler);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,contentLoaderInfo_ioErrorEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.OPEN,contentLoaderInfo_openEventHandler);
            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,contentLoaderInfo_progressEventHandler);
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,contentLoaderInfo_securityErrorEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.UNLOAD,contentLoaderInfo_unloadEventHandler);
            if(Capabilities.isDebugger == true && url.indexOf(".jpg") == -1 && LoaderUtil.normalizeURL(Application.application.systemManager.loaderInfo).indexOf("debug=true") > -1)
            {
               url += url.indexOf("?") > -1 ? "&debug=true" : "?debug=true";
            }
            if(!(url.indexOf(":") > -1 || url.indexOf("/") == 0 || url.indexOf("\\") == 0))
            {
               if(SystemManagerGlobals.bootstrapLoaderInfoURL != null && SystemManagerGlobals.bootstrapLoaderInfoURL != "")
               {
                  rootURL = SystemManagerGlobals.bootstrapLoaderInfoURL;
               }
               else if(root)
               {
                  rootURL = LoaderUtil.normalizeURL(root.loaderInfo);
               }
               else if(systemManager)
               {
                  rootURL = LoaderUtil.normalizeURL(DisplayObject(systemManager).loaderInfo);
               }
               if(rootURL)
               {
                  lastIndex = Math.max(rootURL.lastIndexOf("\\"),rootURL.lastIndexOf("/"));
                  if(lastIndex != -1)
                  {
                     url = rootURL.substr(0,lastIndex + 1) + url;
                  }
               }
            }
            requestedURL = new URLRequest(url);
            lc = loaderContext;
            if(!lc)
            {
               lc = new LoaderContext();
               _loaderContext = lc;
               if(trustContent)
               {
                  lc.securityDomain = SecurityDomain.currentDomain;
               }
               else
               {
                  attemptingChildAppDomain = true;
                  lc.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
               }
            }
            loader.load(requestedURL,lc);
         }
         invalidateDisplayList();
         return child;
      }
      
      public function get contentWidth() : Number
      {
         return contentHolder ? contentHolder.width : NaN;
      }
      
      [Bindable("scaleContentChanged")]
      public function get scaleContent() : Boolean
      {
         return _scaleContent;
      }
      
      [Bindable("progress")]
      public function get bytesLoaded() : Number
      {
         return _bytesLoaded;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(contentChanged)
         {
            contentChanged = false;
            if(_autoLoad)
            {
               load(_source);
            }
         }
      }
      
      private function contentLoaderInfo_securityErrorEventHandler(param1:SecurityErrorEvent) : void
      {
         var _loc2_:LoaderContext = null;
         if(attemptingChildAppDomain)
         {
            attemptingChildAppDomain = false;
            _loc2_ = new LoaderContext();
            _loaderContext = _loc2_;
            callLater(load);
            return;
         }
         dispatchEvent(param1);
      }
      
      public function load(param1:Object = null) : void
      {
         var imageData:Bitmap = null;
         var url:Object = param1;
         if(url)
         {
            _source = url;
         }
         if(contentHolder)
         {
            if(isContentLoaded)
            {
               if(contentHolder is Loader)
               {
                  try
                  {
                     if(Loader(contentHolder).content is Bitmap)
                     {
                        imageData = Bitmap(Loader(contentHolder).content);
                        if(imageData.bitmapData)
                        {
                           imageData.bitmapData = null;
                        }
                     }
                  }
                  catch(error:Error)
                  {
                  }
                  Loader(contentHolder).unload();
                  if(!explicitLoaderContext)
                  {
                     _loaderContext = null;
                  }
               }
               else if(contentHolder is Bitmap)
               {
                  imageData = Bitmap(contentHolder);
                  if(imageData.bitmapData)
                  {
                     imageData.bitmapData = null;
                  }
               }
            }
            else if(contentHolder is Loader)
            {
               try
               {
                  Loader(contentHolder).close();
               }
               catch(error:Error)
               {
               }
            }
            try
            {
               if(contentHolder.parent == this)
               {
                  removeChild(contentHolder);
               }
            }
            catch(error:Error)
            {
               try
               {
                  removeChild(contentHolder);
               }
               catch(error1:Error)
               {
               }
            }
            contentHolder = null;
         }
         isContentLoaded = false;
         brokenImage = false;
         if(!_source || _source == "")
         {
            return;
         }
         contentHolder = loadContent(_source);
      }
      
      public function set autoLoad(param1:Boolean) : void
      {
         if(_autoLoad != param1)
         {
            _autoLoad = param1;
            contentChanged = true;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("autoLoadChanged"));
         }
      }
      
      private function contentLoaderInfo_initEventHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override protected function measure() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.measure();
         if(isContentLoaded)
         {
            _loc1_ = contentHolder.scaleX;
            _loc2_ = contentHolder.scaleY;
            contentHolder.scaleX = 1;
            contentHolder.scaleY = 1;
            measuredWidth = contentHolderWidth;
            measuredHeight = contentHolderHeight;
            contentHolder.scaleX = _loc1_;
            contentHolder.scaleY = _loc2_;
         }
         else if(!_source || _source == "")
         {
            measuredWidth = 0;
            measuredHeight = 0;
         }
      }
      
      private function doScaleLoader() : void
      {
         if(!isContentLoaded)
         {
            return;
         }
         unScaleContent();
         var _loc1_:Number = unscaledWidth;
         var _loc2_:Number = unscaledHeight;
         if(contentHolderWidth > _loc1_ || contentHolderHeight > _loc2_)
         {
            contentHolder.scrollRect = new Rectangle(0,0,_loc1_,_loc2_);
         }
         else
         {
            contentHolder.scrollRect = null;
         }
         contentHolder.x = (_loc1_ - contentHolderWidth) * getHorizontalAlignValue();
         contentHolder.y = (_loc2_ - contentHolderHeight) * getVerticalAlignValue();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Class = null;
         super.updateDisplayList(param1,param2);
         if(contentChanged)
         {
            contentChanged = false;
            if(_autoLoad)
            {
               load(_source);
            }
         }
         if(isContentLoaded)
         {
            if(_scaleContent && !brokenImage)
            {
               doScaleContent();
            }
            else
            {
               doScaleLoader();
            }
            scaleContentChanged = false;
         }
         if(brokenImage && !brokenImageBorder)
         {
            _loc3_ = getStyle("brokenImageBorderSkin");
            if(_loc3_)
            {
               brokenImageBorder = IFlexDisplayObject(new _loc3_());
               if(brokenImageBorder is ISimpleStyleClient)
               {
                  ISimpleStyleClient(brokenImageBorder).styleName = this;
               }
               addChild(DisplayObject(brokenImageBorder));
            }
         }
         else if(!brokenImage && Boolean(brokenImageBorder))
         {
            removeChild(DisplayObject(brokenImageBorder));
            brokenImageBorder = null;
         }
         if(brokenImageBorder)
         {
            brokenImageBorder.setActualSize(param1,param2);
         }
      }
      
      private function getVerticalAlignValue() : Number
      {
         var _loc1_:String = getStyle("verticalAlign");
         if(_loc1_ == "top")
         {
            return 0;
         }
         if(_loc1_ == "bottom")
         {
            return 1;
         }
         return 0.5;
      }
      
      public function get content() : DisplayObject
      {
         if(contentHolder is Loader)
         {
            return Loader(contentHolder).content;
         }
         return contentHolder;
      }
      
      private function doScaleContent() : void
      {
         var interiorWidth:Number = NaN;
         var interiorHeight:Number = NaN;
         var contentWidth:Number = NaN;
         var contentHeight:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var newXScale:Number = NaN;
         var newYScale:Number = NaN;
         var scale:Number = NaN;
         var w:Number = NaN;
         var h:Number = NaN;
         var holder:Loader = null;
         var lInfo:LoaderInfo = null;
         if(!isContentLoaded)
         {
            return;
         }
         if(!resizableContent || maintainAspectRatio && !flexContent)
         {
            unScaleContent();
            interiorWidth = unscaledWidth;
            interiorHeight = unscaledHeight;
            contentWidth = contentHolderWidth;
            contentHeight = contentHolderHeight;
            x = 0;
            y = 0;
            newXScale = contentWidth == 0 ? 1 : interiorWidth / contentWidth;
            newYScale = contentHeight == 0 ? 1 : interiorHeight / contentHeight;
            if(_maintainAspectRatio)
            {
               if(newXScale > newYScale)
               {
                  x = Math.floor((interiorWidth - contentWidth * newYScale) * getHorizontalAlignValue());
                  scale = newYScale;
               }
               else
               {
                  y = Math.floor((interiorHeight - contentHeight * newXScale) * getVerticalAlignValue());
                  scale = newXScale;
               }
               contentHolder.scaleX = scale;
               contentHolder.scaleY = scale;
            }
            else
            {
               contentHolder.scaleX = newXScale;
               contentHolder.scaleY = newYScale;
            }
            contentHolder.x = x;
            contentHolder.y = y;
         }
         else
         {
            contentHolder.x = 0;
            contentHolder.y = 0;
            w = unscaledWidth;
            h = unscaledHeight;
            if(contentHolder is Loader)
            {
               holder = Loader(contentHolder);
               try
               {
                  if(holder.content.width > 0)
                  {
                     if(holder.content is IFlexDisplayObject)
                     {
                        IFlexDisplayObject(holder.content).setActualSize(w,h);
                     }
                     else
                     {
                        lInfo = holder.contentLoaderInfo;
                        if(lInfo)
                        {
                           contentHolder.scaleX = w / lInfo.width;
                           contentHolder.scaleY = h / lInfo.height;
                        }
                        else
                        {
                           contentHolder.width = w;
                           contentHolder.height = h;
                        }
                     }
                  }
                  else if(!(holder.content is IFlexDisplayObject))
                  {
                     contentHolder.width = w;
                     contentHolder.height = h;
                  }
               }
               catch(error:Error)
               {
                  contentHolder.width = w;
                  contentHolder.height = h;
               }
            }
            else
            {
               contentHolder.width = w;
               contentHolder.height = h;
            }
         }
      }
      
      private function contentLoaderInfo_ioErrorEventHandler(param1:IOErrorEvent) : void
      {
         source = getStyle("brokenImageSkin");
         load();
         contentChanged = false;
         brokenImage = true;
         if(hasEventListener(param1.type))
         {
            dispatchEvent(param1);
         }
      }
   }
}

