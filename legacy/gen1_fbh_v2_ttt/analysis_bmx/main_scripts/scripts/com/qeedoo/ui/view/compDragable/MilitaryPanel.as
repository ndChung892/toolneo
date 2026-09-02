package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class MilitaryPanel extends DragableCanvas
   {
      
      private var _584079194btn_exchange:BasicGlowButton;
      
      private var _1074097225funCanvas:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":70,
               "height":37,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"funCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":70,
                        "height":37,
                        "styleName":"RightButtonBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_exchange",
                           "events":{"click":"__btn_exchange_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":6,
                                 "width":55,
                                 "height":25,
                                 "styleName":"BtnStdRed",
                                 "label":"军衔"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function MilitaryPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 70;
         this.height = 37;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_exchange() : BasicGlowButton
      {
         return this._584079194btn_exchange;
      }
      
      public function showPanel() : void
      {
         this.visible = true;
      }
      
      public function set btn_exchange(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._584079194btn_exchange;
         if(_loc2_ !== param1)
         {
            this._584079194btn_exchange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_exchange",_loc2_,param1));
         }
      }
      
      public function __btn_exchange_click(param1:MouseEvent) : void
      {
         showMagicArrayPanel();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get funCanvas() : Canvas
      {
         return this._1074097225funCanvas;
      }
      
      public function showMagicArrayPanel() : void
      {
         this.visible = false;
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_MAGIC_ARRAY);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function set funCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1074097225funCanvas;
         if(_loc2_ !== param1)
         {
            this._1074097225funCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funCanvas",_loc2_,param1));
         }
      }
   }
}

