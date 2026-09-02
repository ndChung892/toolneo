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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class RendererItemMonthlyWelfare extends RendererItemSlot
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":RendererItemSlot,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":HBox,
               "id":"hbox",
               "stylesFactory":function():void
               {
                  this.horizontalGap = 4;
               }
            })]};
         }
      });
      
      private var _3196003hbox:HBox;
      
      public function RendererItemMonthlyWelfare()
      {
         super();
         mx_internal::_document = this;
         this.scaleX = 1;
         this.scaleY = 1;
         this.addEventListener("creationComplete",___RendererItemMonthlyWelfare_RendererItemSlot1_creationComplete);
      }
      
      [Bindable(event="propertyChange")]
      public function get hbox() : HBox
      {
         return this._3196003hbox;
      }
      
      public function ___RendererItemMonthlyWelfare_RendererItemSlot1_creationComplete(param1:FlexEvent) : void
      {
         initV();
      }
      
      private function initV() : void
      {
      }
      
      public function set hbox(param1:HBox) : void
      {
         var _loc2_:Object = this._3196003hbox;
         if(_loc2_ !== param1)
         {
            this._3196003hbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hbox",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:ItemSlot = null;
         _loc2_ = param1.array;
         hbox.removeAllChildren();
         var _loc3_:int = 0;
         for(_loc4_ in _loc2_)
         {
            _loc5_ = new ItemSlot();
            _loc5_.setStyleName(0);
            _loc5_.data = _loc2_[_loc4_];
            _loc5_.type = _loc2_[_loc4_].type;
            _loc5_.giid = _loc2_[_loc4_].itemId;
            _loc5_.stackNum = _loc2_[_loc4_].stackNum;
            _loc5_.slotData = {};
            _loc5_.slotData.q = _loc2_[_loc4_].quality;
            _loc5_.isInAuction = true;
            hbox.addChild(_loc5_);
            _loc3_++;
         }
      }
   }
}

