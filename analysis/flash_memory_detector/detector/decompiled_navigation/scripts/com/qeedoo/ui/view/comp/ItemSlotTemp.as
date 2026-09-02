package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemSlotTemp extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var douClick:Function;
      
      private var dragDropFunc:Function;
      
      private var _ban:Boolean = false;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":ItemSlot});
      
      public function ItemSlotTemp()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___ItemSlotTemp_ItemSlot1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotTemp._watcherSetupUtil = param1;
      }
      
      public function set onDragDrop(param1:Function) : void
      {
         dragDropFunc = param1;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         if(_ban)
         {
            return;
         }
         dragDropFunc(param1);
      }
      
      private function _ItemSlotTemp_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_TEMP_SLOT;
         _loc1_ = [GamePredef.TBL_ITEM_INSTANCE,GamePredef.TBL_ITEM_TEMPLATE];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotTemp = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotTemp_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotTempWatcherSetupUtil");
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
      
      private function init() : void
      {
         this.addEventListener(Slot.EVENT_SLOT_DCLICK,doubleClick);
      }
      
      private function set banSet(param1:Boolean) : void
      {
         _ban = param1;
         if(param1)
         {
            _canvas.alpha = 0.3;
         }
         else
         {
            _canvas.alpha = 1;
         }
      }
      
      public function set DoubleFunc(param1:Function) : void
      {
         douClick = param1;
      }
      
      public function ___ItemSlotTemp_ItemSlot1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _ItemSlotTemp_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TEMP_SLOT;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_ITEM_INSTANCE,GamePredef.TBL_ITEM_TEMPLATE];
         },function(param1:Array):void
         {
            this.acceptType = param1;
         },"this.acceptType");
         result[1] = binding;
         return result;
      }
      
      private function doubleClick(param1:Event) : void
      {
         douClick(param1);
      }
      
      public function set sData(param1:Object) : void
      {
         this.id = param1.id;
         this.posId = param1.idx;
         this.type = param1.type;
         this.giid = param1.itemId;
         this.stackNum = param1.num;
         this.slotData = param1.slotData;
         this.banSet = param1.en;
         setStyleName(slotData.q / 5);
      }
   }
}

