package com.qeedoo.ui.view.compDragable
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
   import mx.controls.Text;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class MailManagerPanel_inlineComponent8 extends Text
   {
      
      private var _88844982outerDocument:MailManagerPanel;
      
      public function MailManagerPanel_inlineComponent8()
      {
         super();
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.textAlign = "center";
            this.color = 3436896;
         };
         this.x = 0;
         this.y = 0;
         this.height = 10;
         this.percentWidth = 100;
         this.selectable = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : MailManagerPanel
      {
         return this._88844982outerDocument;
      }
      
      override public function initialize() : void
      {
         super.initialize();
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
   }
}

