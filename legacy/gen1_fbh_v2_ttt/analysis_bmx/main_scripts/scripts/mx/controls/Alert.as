package mx.controls
{
   import flash.display.Sprite;
   import flash.events.Event;
   import mx.containers.Panel;
   import mx.controls.alertClasses.AlertForm;
   import mx.core.Application;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.managers.PopUpManager;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class Alert extends Panel
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      private static var cancelLabelOverride:String;
      
      private static var _resourceManager:IResourceManager;
      
      private static var noLabelOverride:String;
      
      private static var _yesLabel:String;
      
      private static var yesLabelOverride:String;
      
      private static var _okLabel:String;
      
      private static var _cancelLabel:String;
      
      private static var okLabelOverride:String;
      
      private static var _noLabel:String;
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      public static const YES:uint = 1;
      
      public static const NO:uint = 2;
      
      public static const OK:uint = 4;
      
      public static const CANCEL:uint = 8;
      
      public static const NONMODAL:uint = 32768;
      
      private static var initialized:Boolean = false;
      
      public static var buttonHeight:Number = 22;
      
      public static var buttonWidth:Number = FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0 ? 60 : 65;
      
      mx_internal var alertForm:AlertForm;
      
      public var defaultButtonFlag:uint = 4;
      
      public var text:String = "";
      
      private var init:Boolean = false;
      
      public var buttonFlags:uint = 4;
      
      public var iconClass:Class;
      
      public function Alert()
      {
         super();
         title = "";
      }
      
      private static function initialize() : void
      {
         if(!initialized)
         {
            resourceManager.addEventListener(Event.CHANGE,static_resourceManager_changeHandler,false,0,true);
            static_resourcesChanged();
            initialized = true;
         }
      }
      
      private static function static_resourcesChanged() : void
      {
         cancelLabel = cancelLabelOverride;
         noLabel = noLabelOverride;
         okLabel = okLabelOverride;
         yesLabel = yesLabelOverride;
      }
      
      public static function get cancelLabel() : String
      {
         initialize();
         return _cancelLabel;
      }
      
      public static function set yesLabel(param1:String) : void
      {
         yesLabelOverride = param1;
         _yesLabel = param1 != null ? param1 : resourceManager.getString("controls","yesLabel");
      }
      
      public static function get noLabel() : String
      {
         initialize();
         return _noLabel;
      }
      
      public static function set cancelLabel(param1:String) : void
      {
         cancelLabelOverride = param1;
         _cancelLabel = param1 != null ? param1 : resourceManager.getString("controls","cancelLabel");
      }
      
      private static function get resourceManager() : IResourceManager
      {
         if(!_resourceManager)
         {
            _resourceManager = ResourceManager.getInstance();
         }
         return _resourceManager;
      }
      
      public static function get yesLabel() : String
      {
         initialize();
         return _yesLabel;
      }
      
      public static function set noLabel(param1:String) : void
      {
         noLabelOverride = param1;
         _noLabel = param1 != null ? param1 : resourceManager.getString("controls","noLabel");
      }
      
      private static function static_resourceManager_changeHandler(param1:Event) : void
      {
         static_resourcesChanged();
      }
      
      public static function set okLabel(param1:String) : void
      {
         okLabelOverride = param1;
         _okLabel = param1 != null ? param1 : resourceManager.getString("controls","okLabel");
      }
      
      public static function get okLabel() : String
      {
         initialize();
         return _okLabel;
      }
      
      public static function show(param1:String = "", param2:String = "", param3:uint = 4, param4:Sprite = null, param5:Function = null, param6:Class = null, param7:uint = 4) : Alert
      {
         var _loc8_:Boolean = param3 & Alert.NONMODAL ? false : true;
         if(!param4)
         {
            param4 = Sprite(Application.application);
         }
         var _loc9_:Alert = new Alert();
         if(Boolean(param3 & Alert.OK) || Boolean(param3 & Alert.CANCEL) || Boolean(param3 & Alert.YES) || Boolean(param3 & Alert.NO))
         {
            _loc9_.buttonFlags = param3;
         }
         if(param7 == Alert.OK || param7 == Alert.CANCEL || param7 == Alert.YES || param7 == Alert.NO)
         {
            _loc9_.defaultButtonFlag = param7;
         }
         _loc9_.text = param1;
         _loc9_.title = param2;
         _loc9_.iconClass = param6;
         if(param5 != null)
         {
            _loc9_.addEventListener(CloseEvent.CLOSE,param5);
         }
         if(param4 is UIComponent)
         {
            _loc9_.moduleFactory = UIComponent(param4).moduleFactory;
         }
         PopUpManager.addPopUp(_loc9_,param4,_loc8_);
         _loc9_.setActualSize(_loc9_.getExplicitOrMeasuredWidth(),_loc9_.getExplicitOrMeasuredHeight());
         return _loc9_;
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc2_:String = null;
         super.styleChanged(param1);
         if(param1 == "messageStyleName")
         {
            _loc2_ = getStyle("messageStyleName");
            styleName = _loc2_;
         }
         if(alertForm)
         {
            alertForm.styleChanged(param1);
         }
      }
      
      override protected function measure() : void
      {
         var _loc1_:EdgeMetrics = null;
         super.measure();
         _loc1_ = viewMetrics;
         measuredWidth = Math.max(measuredWidth,alertForm.getExplicitOrMeasuredWidth() + _loc1_.left + _loc1_.right);
         measuredHeight = alertForm.getExplicitOrMeasuredHeight() + _loc1_.top + _loc1_.bottom;
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         static_resourcesChanged();
      }
      
      override protected function initializeAccessibility() : void
      {
         if(Alert.createAccessibilityImplementation != null)
         {
            Alert.createAccessibilityImplementation(this);
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.updateDisplayList(param1,param2);
         var _loc3_:EdgeMetrics = viewMetrics;
         alertForm.setActualSize(param1 - _loc3_.left - _loc3_.right - getStyle("paddingLeft") - getStyle("paddingRight"),param2 - _loc3_.top - _loc3_.bottom - getStyle("paddingTop") - getStyle("paddingBottom"));
         if(!init)
         {
            if(parent == systemManager)
            {
               _loc4_ = (screen.width - measuredWidth) / 2;
               _loc5_ = (screen.height - measuredHeight) / 2;
            }
            else
            {
               _loc4_ = (parent.width - measuredWidth) / 2;
               _loc5_ = (parent.height - measuredHeight) / 2;
            }
            move(Math.round(_loc4_),Math.round(_loc5_));
            init = true;
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         var _loc1_:String = getStyle("messageStyleName");
         if(_loc1_)
         {
            styleName = _loc1_;
         }
         if(!alertForm)
         {
            alertForm = new AlertForm();
            alertForm.styleName = this;
            addChild(alertForm);
         }
      }
   }
}

