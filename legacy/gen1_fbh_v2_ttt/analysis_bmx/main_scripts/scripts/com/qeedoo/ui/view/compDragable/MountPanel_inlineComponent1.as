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
   import mx.controls.Label;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MountPanel_inlineComponent1 extends Label implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _88844982outerDocument:MountPanel;
      
      public function MountPanel_inlineComponent1()
      {
         super();
         this.width = 90;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MountPanel_inlineComponent1._watcherSetupUtil = param1;
      }
      
      public function set outerDocument(param1:MountPanel) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : MountPanel
      {
         return this._88844982outerDocument;
      }
      
      private function _MountPanel_inlineComponent1_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = data.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            this.text = param1;
         },"this.text");
         result[0] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var i:uint;
         var target:MountPanel_inlineComponent1 = null;
         var watcherSetupUtilClass:Object = null;
         var bindings:Array = _MountPanel_inlineComponent1_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MountPanel_inlineComponent1WatcherSetupUtil");
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
      
      private function _MountPanel_inlineComponent1_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = data.name;
      }
   }
}

