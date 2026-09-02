package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import flash.events.MouseEvent;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   
   public class LocalAlertPanel extends DragableCanvas
   {
      
      private var _callBack:Function;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":462,
               "height":381,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___LocalAlertPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":189.5,
                        "y":330,
                        "width":83,
                        "height":32,
                        "styleName":"CanvasGuideLocalTY"
                     };
                  }
               })]
            };
         }
      });
      
      public function LocalAlertPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 462;
         this.height = 381;
         this.styleName = "CanvasGuideLocal";
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function allow() : void
      {
         if(Boolean(_callBack))
         {
            _callBack();
         }
         this.hide();
      }
      
      public function setGuide(param1:Function) : void
      {
         this._callBack = param1;
         this.show();
      }
      
      public function ___LocalAlertPanel_Button1_click(param1:MouseEvent) : void
      {
         allow();
      }
   }
}

