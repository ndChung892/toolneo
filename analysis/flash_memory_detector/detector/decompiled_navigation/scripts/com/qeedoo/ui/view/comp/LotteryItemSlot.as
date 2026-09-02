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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LotteryItemSlot extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const JiangPinGe1:Class = LotteryItemSlot_JiangPinGe1;
      
      public static const JiangPinGe2:Class = LotteryItemSlot_JiangPinGe2;
      
      private var _1258775035awardSlot:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _214688399imgBackGround:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"imgBackGround",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "width":65,
                     "height":67
                  };
               }
            }),new UIComponentDescriptor({
               "type":ItemSlot,
               "id":"awardSlot",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":15,
                     "y":17,
                     "movable":false
                  };
               }
            })]};
         }
      });
      
      public function LotteryItemSlot()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___LotteryItemSlot_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LotteryItemSlot._watcherSetupUtil = param1;
      }
      
      private function initV() : void
      {
      }
      
      private function _LotteryItemSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return JiangPinGe1;
         },function(param1:Object):void
         {
            imgBackGround.source = param1;
         },"imgBackGround.source");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardSlot.slotType = param1;
         },"awardSlot.slotType");
         result[1] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LotteryItemSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LotteryItemSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_LotteryItemSlotWatcherSetupUtil");
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
      
      private function _LotteryItemSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = JiangPinGe1;
         _loc1_ = Slot.SLOT_TREASURE;
      }
      
      public function ___LotteryItemSlot_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         initV();
      }
      
      public function set imgBackGround(param1:Image) : void
      {
         var _loc2_:Object = this._214688399imgBackGround;
         if(_loc2_ !== param1)
         {
            this._214688399imgBackGround = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBackGround",_loc2_,param1));
         }
      }
      
      public function change(param1:Boolean) : void
      {
         if(param1)
         {
            imgBackGround.source = JiangPinGe2;
         }
         else
         {
            imgBackGround.source = JiangPinGe1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBackGround() : Image
      {
         return this._214688399imgBackGround;
      }
      
      public function set awardSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1258775035awardSlot;
         if(_loc2_ !== param1)
         {
            this._1258775035awardSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardSlot",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardSlot() : ItemSlot
      {
         return this._1258775035awardSlot;
      }
   }
}

