package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.ui.view.comp.MailCheckBox;
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MailManagerPanel_inlineComponent1 extends MailCheckBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _88844982outerDocument:MailManagerPanel;
      
      public function MailManagerPanel_inlineComponent1()
      {
         super();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MailManagerPanel_inlineComponent1._watcherSetupUtil = param1;
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
      
      private function _MailManagerPanel_inlineComponent1_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return data.delCheckBox;
         },function(param1:Boolean):void
         {
            this.selected = param1;
         },"this.selected");
         result[0] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var i:uint;
         var target:MailManagerPanel_inlineComponent1 = null;
         var watcherSetupUtilClass:Object = null;
         var bindings:Array = _MailManagerPanel_inlineComponent1_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MailManagerPanel_inlineComponent1WatcherSetupUtil");
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
      
      private function _MailManagerPanel_inlineComponent1_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = data.delCheckBox;
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : MailManagerPanel
      {
         return this._88844982outerDocument;
      }
   }
}

