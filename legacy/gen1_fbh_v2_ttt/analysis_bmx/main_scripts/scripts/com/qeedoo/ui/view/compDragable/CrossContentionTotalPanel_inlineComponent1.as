package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
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
   
   public class CrossContentionTotalPanel_inlineComponent1 extends Text
   {
      
      private var _88844982outerDocument:CrossContentionTotalPanel;
      
      public function CrossContentionTotalPanel_inlineComponent1()
      {
         super();
         this.selectable = false;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:String = null;
         super.data = param1;
         if(data.lordname)
         {
            _loc2_ = CrossContentionTotalPanel.getServerName(Number(data.lordname));
            this.htmlText = Language.CROSS_CONTENTION_PANEL_U[16].toString().replace("{osid}",_loc2_);
            this.toolTip = CrossContentionTotalPanel.getUnitServersName(Number(data.lordname));
         }
         else
         {
            this.htmlText = Language.CROSS_CONTENTION_PANEL_U[17];
            this.toolTip = "";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : CrossContentionTotalPanel
      {
         return this._88844982outerDocument;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set outerDocument(param1:CrossContentionTotalPanel) : void
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

