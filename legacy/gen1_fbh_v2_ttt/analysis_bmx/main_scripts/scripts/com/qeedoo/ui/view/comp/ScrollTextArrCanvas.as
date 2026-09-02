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
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class ScrollTextArrCanvas extends Canvas
   {
      
      private var _index:Number = 0;
      
      private var _1662853568elemUIC:UIComponent;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":158,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"elemUIC",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":20,
                        "width":300,
                        "height":30
                     };
                  }
               })]
            };
         }
      });
      
      private var _scrollText1:ScrollText;
      
      private var _scrollText2:ScrollText;
      
      private var _scrollText3:ScrollText;
      
      public function ScrollTextArrCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 158;
         this.height = 100;
         this.clipContent = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      [Bindable(event="propertyChange")]
      public function get elemUIC() : UIComponent
      {
         return this._1662853568elemUIC;
      }
      
      public function set elemUIC(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1662853568elemUIC;
         if(_loc2_ !== param1)
         {
            this._1662853568elemUIC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elemUIC",_loc2_,param1));
         }
      }
      
      public function setValue(param1:int, param2:String = "", param3:String = "", param4:int = 14) : void
      {
         ++_index;
         if(!_index || Number(_index) > 3 || Number(_index) < 1)
         {
            _index = 1;
         }
         if(!this["_scrollText" + _index])
         {
            this["_scrollText" + _index] = new ScrollText();
            elemUIC.addChild(this["_scrollText" + _index]);
            this["_scrollText" + _index].x = 0;
            this["_scrollText" + _index].y = -60;
         }
         var _loc5_:uint = 16711680;
         if(Number(param1) > 0)
         {
            _loc5_ = 65280;
         }
         this["_scrollText" + _index].show("+" + param2 + param1 + param3,_loc5_,param4);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
   }
}

