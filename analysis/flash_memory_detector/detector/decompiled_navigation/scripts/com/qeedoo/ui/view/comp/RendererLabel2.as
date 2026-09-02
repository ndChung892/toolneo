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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class RendererLabel2 extends HBox
   {
      
      private var _95474683descl:Label;
      
      private var _104585025namel:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":HBox,
         "propertiesFactory":function():Object
         {
            return {
               "height":20,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"namel",
                  "propertiesFactory":function():Object
                  {
                     return {"width":70};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"descl",
                  "stylesFactory":function():void
                  {
                     this.color = 16744228;
                  }
               })]
            };
         }
      });
      
      public function RendererLabel2()
      {
         super();
         mx_internal::_document = this;
         this.height = 20;
      }
      
      [Bindable(event="propertyChange")]
      public function get namel() : Label
      {
         return this._104585025namel;
      }
      
      public function set namel(param1:Label) : void
      {
         var _loc2_:Object = this._104585025namel;
         if(_loc2_ !== param1)
         {
            this._104585025namel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"namel",_loc2_,param1));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         namel.text = data.name;
         descl.text = data.desc;
         namel.setStyle("color",data.color);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get descl() : Label
      {
         return this._95474683descl;
      }
      
      public function set descl(param1:Label) : void
      {
         var _loc2_:Object = this._95474683descl;
         if(_loc2_ !== param1)
         {
            this._95474683descl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descl",_loc2_,param1));
         }
      }
   }
}

