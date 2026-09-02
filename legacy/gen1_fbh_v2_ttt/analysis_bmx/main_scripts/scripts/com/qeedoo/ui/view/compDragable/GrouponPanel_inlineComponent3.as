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
   import mx.containers.VBox;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GrouponPanel_inlineComponent3 extends VBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _GrouponPanel_inlineComponent3_Label1:Label;
      
      public var _GrouponPanel_inlineComponent3_Label3:Label;
      
      mx_internal var _watchers:Array = [];
      
      public var _GrouponPanel_inlineComponent3_Label2:Label;
      
      private var _88844982outerDocument:GrouponPanel;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":VBox,
         "propertiesFactory":function():Object
         {
            /*
             * Decompilation error
             * Code may be obfuscated
             * Tip: You can try enabling "Deobfuscate code" option in Settings
             * Error type: OutOfMemoryError (Java heap space)
             */
            throw new flash.errors.IllegalOperationError("Not decompiled due to error");
         }
      });
      
      public function GrouponPanel_inlineComponent3()
      {
         super();
         mx_internal::_document = this;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GrouponPanel_inlineComponent3._watcherSetupUtil = param1;
      }
      
      private function _GrouponPanel_inlineComponent3_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = data.rebate0;
         _loc1_ = data.rebate1;
         _loc1_ = data.rebate2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GrouponPanel_inlineComponent3 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GrouponPanel_inlineComponent3_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GrouponPanel_inlineComponent3WatcherSetupUtil");
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
      
      private function _GrouponPanel_inlineComponent3_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = data.rebate0;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_inlineComponent3_Label1.text = param1;
         },"_GrouponPanel_inlineComponent3_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = data.rebate1;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_inlineComponent3_Label2.text = param1;
         },"_GrouponPanel_inlineComponent3_Label2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = data.rebate2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_inlineComponent3_Label3.text = param1;
         },"_GrouponPanel_inlineComponent3_Label3.text");
         result[2] = binding;
         return result;
      }
      
      public function set outerDocument(param1:GrouponPanel) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : GrouponPanel
      {
         return this._88844982outerDocument;
      }
   }
}

