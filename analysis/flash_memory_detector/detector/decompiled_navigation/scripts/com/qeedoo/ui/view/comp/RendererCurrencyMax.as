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
   
   public class RendererCurrencyMax extends Currency
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Currency,
         "propertiesFactory":function():Object
         {
            return {
               "width":80,
               "height":16
            };
         }
      });
      
      public function RendererCurrencyMax()
      {
         super();
         mx_internal::_document = this;
         this.width = 80;
         this.height = 16;
         this.addEventListener("creationComplete",___RendererCurrencyMax_Currency1_creationComplete);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1.auctionType == 1)
         {
            type = TYPE_MONEY;
            value = param1.maxMoney;
         }
         else if(param1.auctionType == 2)
         {
            type = TYPE_GOLD;
            value = param1.maxGold;
         }
      }
      
      public function ___RendererCurrencyMax_Currency1_creationComplete(param1:FlexEvent) : void
      {
         initV();
      }
      
      private function initV() : void
      {
         verticalScrollPolicy;
      }
   }
}

