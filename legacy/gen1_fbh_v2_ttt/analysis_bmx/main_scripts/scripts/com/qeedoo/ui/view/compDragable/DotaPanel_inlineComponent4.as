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
   import mx.controls.Label;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class DotaPanel_inlineComponent4 extends Label
   {
      
      private var _88844982outerDocument:DotaPanel;
      
      public function DotaPanel_inlineComponent4()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         var _loc2_:String = "#ff7f27";
         if(param1.index % 2 == 1)
         {
            _loc2_ = "#00ffff";
         }
         this.htmlText = "<font color=\'" + _loc2_ + "\'>" + param1.score + "</font>";
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : DotaPanel
      {
         return this._88844982outerDocument;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set outerDocument(param1:DotaPanel) : void
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

