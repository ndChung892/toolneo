package com.qeedoo.ui.view.comp
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
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class RendererItemButton extends Canvas
   {
      
      private var _97884btn:Button;
      
      private var _click:Function;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Button,
               "id":"btn",
               "events":{"click":"__btn_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"BtnStdRed",
                     "width":80,
                     "height":25
                  };
               }
            })]};
         }
      });
      
      private var _obj:Object;
      
      public function RendererItemButton()
      {
         super();
         mx_internal::_document = this;
      }
      
      private function onClick() : void
      {
         if(Boolean(_click))
         {
            _click(_obj.type,_obj.index);
         }
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         _obj = param1;
         if(_obj.onClick)
         {
            _click = _obj.onClick;
         }
         if(_obj.label)
         {
            btn.label = _obj.label;
         }
         if(_obj.isTaken)
         {
            btn.enabled = false;
            btn.label = Language.SERVERACTPANEL_S[14];
         }
         else
         {
            if(_obj.score >= _obj.limit)
            {
               btn.enabled = true;
            }
            else
            {
               btn.enabled = false;
            }
            btn.label = Language.SERVERACTPANEL_S[13];
         }
         btn.styleName = "BtnStdRed";
         super.data = _obj;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         onClick();
      }
   }
}

