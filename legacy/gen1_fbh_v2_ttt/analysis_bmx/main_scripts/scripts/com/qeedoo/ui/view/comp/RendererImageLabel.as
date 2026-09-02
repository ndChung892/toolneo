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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class RendererImageLabel extends HBox
   {
      
      private var _104387img:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3446lb:Label;
      
      private var _859611628imageURL:String;
      
      public function RendererImageLabel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "propertiesFactory":function():Object
            {
               return {
                  "height":16,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"img",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":16,
                           "height":16
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"lb",
                     "propertiesFactory":function():Object
                     {
                        return {"height":16};
                     }
                  })]
               };
            }
         });
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.verticalAlign = "middle";
            this.horizontalGap = 1;
         };
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.height = 16;
      }
      
      [Bindable(event="propertyChange")]
      public function get imageURL() : String
      {
         return this._859611628imageURL;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function set lb(param1:Label) : void
      {
         var _loc2_:Object = this._3446lb;
         if(_loc2_ !== param1)
         {
            this._3446lb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb",_loc2_,param1));
         }
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      public function set imageURL(param1:String) : void
      {
         var _loc2_:Object = this._859611628imageURL;
         if(_loc2_ !== param1)
         {
            this._859611628imageURL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageURL",_loc2_,param1));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1)
         {
            if(param1.icon)
            {
               img.source = param1.icon;
            }
            else
            {
               img.visible = false;
               img.includeInLayout = false;
            }
            lb.text = param1.text;
            lb.setStyle("color",param1.color);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb() : Label
      {
         return this._3446lb;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
   }
}

