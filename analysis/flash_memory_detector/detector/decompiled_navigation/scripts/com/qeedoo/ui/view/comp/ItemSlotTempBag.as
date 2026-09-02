package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemSlotTempBag extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":ItemSlot});
      
      private var _selected:Boolean = false;
      
      public function ItemSlotTempBag()
      {
         super();
         mx_internal::_document = this;
         this.movable = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotTempBag._watcherSetupUtil = param1;
      }
      
      override public function get selected() : Boolean
      {
         return _selected;
      }
      
      private function _ItemSlotTempBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BAGPANEL_U[0];
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = [GamePredef.TBL_ITEM_INSTANCE];
         _loc1_ = Slot.SLOT_TEMP_BAG;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         super.dragDropHandler(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotTempBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotTempBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotTempBagWatcherSetupUtil");
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
      
      private function _ItemSlotTempBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            this.text = param1;
         },"this.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            this.type = param1;
         },"this.type");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_ITEM_INSTANCE];
         },function(param1:Array):void
         {
            this.acceptType = param1;
         },"this.acceptType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TEMP_BAG;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[3] = binding;
         return result;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         _selected = param1;
         if(param1)
         {
            setStyleName(3);
         }
         else
         {
            resetQualityColor();
         }
      }
   }
}

