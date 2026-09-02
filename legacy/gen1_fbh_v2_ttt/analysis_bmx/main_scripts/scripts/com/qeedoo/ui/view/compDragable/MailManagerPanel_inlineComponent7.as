package com.qeedoo.ui.view.compDragable
{
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
   import mx.controls.Text;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MailManagerPanel_inlineComponent7 extends Text implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _88844982outerDocument:MailManagerPanel;
      
      public function MailManagerPanel_inlineComponent7()
      {
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.textAlign = "center";
         };
         this.height = 10;
         this.x = 0;
         this.y = 0;
         this.percentWidth = 100;
         this.selectable = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MailManagerPanel_inlineComponent7._watcherSetupUtil = param1;
      }
      
      private function _MailManagerPanel_inlineComponent7_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = data.sColor;
         _loc1_ = data.senderName;
      }
      
      public function set outerDocument(param1:MailManagerPanel) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
         }
      }
      
      private function _MailManagerPanel_inlineComponent7_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():uint
         {
            return data.sColor;
         },function(param1:uint):void
         {
            this.setStyle("color",param1);
         },"this.color");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = data.senderName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            this.htmlText = param1;
         },"this.htmlText");
         result[1] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var i:uint;
         var target:MailManagerPanel_inlineComponent7 = null;
         var watcherSetupUtilClass:Object = null;
         var bindings:Array = _MailManagerPanel_inlineComponent7_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MailManagerPanel_inlineComponent7WatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : MailManagerPanel
      {
         return this._88844982outerDocument;
      }
   }
}

