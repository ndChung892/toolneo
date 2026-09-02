package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.ui.view.comp.RendererImage;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   public class MailManagerPanel_inlineComponent5 extends RendererImage
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":RendererImage});
      
      private var _88844982outerDocument:MailManagerPanel;
      
      public function MailManagerPanel_inlineComponent5()
      {
         super();
         mx_internal::_document = this;
         this.x = 0;
         this.y = 0;
         this.percentWidth = 100;
         this.percentHeight = 100;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
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
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : MailManagerPanel
      {
         return this._88844982outerDocument;
      }
   }
}

