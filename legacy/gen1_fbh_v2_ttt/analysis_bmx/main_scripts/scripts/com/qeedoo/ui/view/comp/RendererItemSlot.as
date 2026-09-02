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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RendererItemSlot extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":ItemSlot});
      
      mx_internal var _watchers:Array = [];
      
      public function RendererItemSlot()
      {
         super();
         mx_internal::_document = this;
         this.scaleX = 0.8;
         this.scaleY = 0.8;
         this.addEventListener("creationComplete",___RendererItemSlot_ItemSlot1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RendererItemSlot._watcherSetupUtil = param1;
      }
      
      private function _RendererItemSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
      
      private function _RendererItemSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_TREASURE;
      }
      
      private function initV() : void
      {
         movable = false;
      }
      
      public function ___RendererItemSlot_ItemSlot1_creationComplete(param1:FlexEvent) : void
      {
         initV();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RendererItemSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RendererItemSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RendererItemSlotWatcherSetupUtil");
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
         setStyleName(0);
         if(param1.q)
         {
            slotData = {};
            slotData.q = param1.q;
         }
         super.data = param1;
         type = param1.type;
         giid = param1.itemId;
         stackNum = param1.stackNum;
         isInAuction = true;
      }
   }
}

