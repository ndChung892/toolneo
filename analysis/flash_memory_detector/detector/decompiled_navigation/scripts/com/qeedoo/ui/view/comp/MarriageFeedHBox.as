package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MarriageFeedHBox extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _113000rlb:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _1080508585btn_refuse:Button;
      
      mx_internal var _bindings:Array;
      
      private var _1569156021btn_accept:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _obj:Object = null;
      
      private var _core:Core;
      
      public function MarriageFeedHBox()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"rlb"
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn_accept",
                  "events":{"click":"__btn_accept_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnAcceptMarriage"};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn_refuse",
                  "events":{"click":"__btn_refuse_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnRefuseMarriage"};
                  }
               })]};
            }
         });
         _core = Core.getInstance();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.horizontalGap = 0;
         };
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarriageFeedHBox._watcherSetupUtil = param1;
      }
      
      public function __btn_refuse_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_accept() : Button
      {
         return this._1569156021btn_accept;
      }
      
      private function _MarriageFeedHBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MARRIAGE_PANEL_U[31];
         _loc1_ = Language.MARRIAGE_PANEL_U[32];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarriageFeedHBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarriageFeedHBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MarriageFeedHBoxWatcherSetupUtil");
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
      
      override public function set data(param1:Object) : void
      {
         _obj = param1;
         if(_obj.flag == 0)
         {
            this.contains(rlb) && this.removeChild(rlb);
            !this.contains(btn_accept) && this.addChild(btn_accept);
            !this.contains(btn_refuse) && this.addChild(btn_refuse);
         }
         else
         {
            this.contains(btn_accept) && this.removeChild(btn_accept);
            this.contains(btn_refuse) && this.removeChild(btn_refuse);
            !this.contains(rlb) && this.addChild(rlb);
            if(_obj.flag == 1)
            {
               rlb.text = Language.MARRIAGE_PANEL_U[33];
            }
            else
            {
               rlb.text = Language.MARRIAGE_PANEL_U[34];
            }
         }
      }
      
      public function set btn_accept(param1:Button) : void
      {
         var _loc2_:Object = this._1569156021btn_accept;
         if(_loc2_ !== param1)
         {
            this._1569156021btn_accept = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_accept",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_refuse() : Button
      {
         return this._1080508585btn_refuse;
      }
      
      [Bindable(event="propertyChange")]
      public function get rlb() : RoundedLabel
      {
         return this._113000rlb;
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.target.id == "btn_accept")
         {
            _loc2_ = 1;
         }
         else if(param1.target.id == "btn_refuse")
         {
            _loc2_ = 2;
         }
         _core.remote.marriageReqFeedback(_obj.id,_loc2_);
      }
      
      public function set rlb(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._113000rlb;
         if(_loc2_ !== param1)
         {
            this._113000rlb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rlb",_loc2_,param1));
         }
      }
      
      public function __btn_accept_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set btn_refuse(param1:Button) : void
      {
         var _loc2_:Object = this._1080508585btn_refuse;
         if(_loc2_ !== param1)
         {
            this._1080508585btn_refuse = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_refuse",_loc2_,param1));
         }
      }
      
      private function _MarriageFeedHBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_accept.toolTip = param1;
         },"btn_accept.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_refuse.toolTip = param1;
         },"btn_refuse.toolTip");
         result[1] = binding;
         return result;
      }
   }
}

