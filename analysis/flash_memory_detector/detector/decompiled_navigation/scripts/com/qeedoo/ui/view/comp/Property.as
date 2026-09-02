package com.qeedoo.ui.view.comp
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
   import mx.controls.ProgressBar;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class Property extends ProgressBar implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1480355228_color:int = 16777215;
      
      private var _max:Number;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _value:Number;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      public function Property()
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
            this.fontWeight = "normal";
            this.fontSize = 10;
         };
         this.labelPlacement = "center";
         this.mode = "manual";
         this.label = "";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Property._watcherSetupUtil = param1;
      }
      
      private function _Property_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():uint
         {
            return _color;
         },function(param1:uint):void
         {
            this.setStyle("color",param1);
         },"this.color");
         result[0] = binding;
         return result;
      }
      
      public function set v(param1:Number) : void
      {
         _value = param1;
         setProgress(_value,_max);
      }
      
      public function set color(param1:Number) : void
      {
         _color = param1;
      }
      
      private function set _color(param1:int) : void
      {
         var _loc2_:Object = this._1480355228_color;
         if(_loc2_ !== param1)
         {
            this._1480355228_color = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_color",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var i:uint;
         var target:Property = null;
         var watcherSetupUtilClass:Object = null;
         var bindings:Array = _Property_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PropertyWatcherSetupUtil");
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
      
      public function set m(param1:Number) : void
      {
         _max = param1;
         setProgress(_value,_max);
      }
      
      private function _Property_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _color;
      }
      
      [Bindable(event="propertyChange")]
      private function get _color() : int
      {
         return this._1480355228_color;
      }
   }
}

