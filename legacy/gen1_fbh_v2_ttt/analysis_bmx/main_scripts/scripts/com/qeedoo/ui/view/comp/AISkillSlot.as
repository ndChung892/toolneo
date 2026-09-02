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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AISkillSlot extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _337548032_defaultLabelVisible:Boolean = false;
      
      private var _1523114770_defaultLabel:String = "";
      
      mx_internal var _watchers:Array = [];
      
      public var _AISkillSlot_Label1:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":ItemSlot,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Label,
               "id":"_AISkillSlot_Label1",
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "0";
                  this.verticalCenter = "0";
                  this.color = 16777215;
                  this.fontSize = 14;
               }
            })]};
         }
      });
      
      public function AISkillSlot()
      {
         super();
         mx_internal::_document = this;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AISkillSlot._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _defaultLabelVisible() : Boolean
      {
         return this._337548032_defaultLabelVisible;
      }
      
      override public function set giid(param1:Number) : void
      {
         super.giid = param1;
         if(param1 > 0)
         {
            _defaultLabelVisible = false;
         }
      }
      
      private function set _defaultLabelVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._337548032_defaultLabelVisible;
         if(_loc2_ !== param1)
         {
            this._337548032_defaultLabelVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_defaultLabelVisible",_loc2_,param1));
         }
      }
      
      override public function clean() : void
      {
         super.clean();
         if(_defaultLabel)
         {
            _defaultLabelVisible = true;
         }
      }
      
      private function _AISkillSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _defaultLabel;
         _loc1_ = _defaultLabelVisible;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AISkillSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AISkillSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_AISkillSlotWatcherSetupUtil");
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
      private function get _defaultLabel() : String
      {
         return this._1523114770_defaultLabel;
      }
      
      public function set frontLabel(param1:String) : void
      {
         _defaultLabel = param1;
         if(this.giid < 0)
         {
            _defaultLabelVisible = true;
         }
      }
      
      private function set _defaultLabel(param1:String) : void
      {
         var _loc2_:Object = this._1523114770_defaultLabel;
         if(_loc2_ !== param1)
         {
            this._1523114770_defaultLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_defaultLabel",_loc2_,param1));
         }
      }
      
      private function _AISkillSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _defaultLabel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AISkillSlot_Label1.text = param1;
         },"_AISkillSlot_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _defaultLabelVisible;
         },function(param1:Boolean):void
         {
            _AISkillSlot_Label1.visible = param1;
         },"_AISkillSlot_Label1.visible");
         result[1] = binding;
         return result;
      }
   }
}

