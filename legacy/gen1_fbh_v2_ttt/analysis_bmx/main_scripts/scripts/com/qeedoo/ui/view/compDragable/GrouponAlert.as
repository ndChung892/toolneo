package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GrouponAlert extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _instance:GrouponAlert;
      
      private var _922290793hintTxt:TextArea;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1092797764closeBtn:Button;
      
      public var _GrouponAlert_BasicGlowButton1:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":220,
               "height":140,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"closeBtn",
                  "events":{"click":"__closeBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "12";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":10,
                        "styleName":"BtnPanelClose"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"hintTxt",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.horizontalCenter = "0";
                     this.color = 16777215;
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":200,
                        "y":40,
                        "mouseEnabled":false,
                        "selectable":false,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GrouponAlert_BasicGlowButton1",
                  "events":{"click":"___GrouponAlert_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CrystalYellowButton",
                        "width":80,
                        "height":30
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindings:Array = [];
      
      public function GrouponAlert()
      {
         super();
         mx_internal::_document = this;
         this.width = 220;
         this.height = 140;
         this.styleName = "CanvasPopup";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GrouponAlert._watcherSetupUtil = param1;
      }
      
      public static function show(param1:String, param2:DisplayObject) : void
      {
         _instance = _instance || new GrouponAlert();
         PopUpManager.removePopUp(_instance);
         PopUpManager.addPopUp(_instance,param2);
         PopUpManager.centerPopUp(_instance);
         _instance.updateView(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get closeBtn() : Button
      {
         return this._1092797764closeBtn;
      }
      
      public function set closeBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1092797764closeBtn;
         if(_loc2_ !== param1)
         {
            this._1092797764closeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeBtn",_loc2_,param1));
         }
      }
      
      private function updateView(param1:String) : void
      {
         if(!hintTxt)
         {
            this.callLater(updateView,[param1]);
            return;
         }
         hintTxt.text = param1;
      }
      
      public function ___GrouponAlert_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         PopUpManager.removePopUp(this);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GrouponAlert = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GrouponAlert_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GrouponAlertWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      public function set hintTxt(param1:TextArea) : void
      {
         var _loc2_:Object = this._922290793hintTxt;
         if(_loc2_ !== param1)
         {
            this._922290793hintTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hintTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hintTxt() : TextArea
      {
         return this._922290793hintTxt;
      }
      
      public function __closeBtn_click(param1:MouseEvent) : void
      {
         PopUpManager.removePopUp(this);
      }
      
      private function _GrouponAlert_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            closeBtn.filters = param1;
         },"closeBtn.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            hintTxt.filters = param1;
         },"hintTxt.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponAlert_BasicGlowButton1.label = param1;
         },"_GrouponAlert_BasicGlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _GrouponAlert_BasicGlowButton1.filters = param1;
         },"_GrouponAlert_BasicGlowButton1.filters");
         result[3] = binding;
         return result;
      }
      
      private function _GrouponAlert_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.GROUPON_PANEL[30];
         _loc1_ = [GamePredef.FILTER_TITLE];
      }
   }
}

