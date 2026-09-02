package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import flash.events.MouseEvent;
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   public class SecretTreasureHuntPanel_inlineComponent1 extends Canvas
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":BasicDelayButton,
               "events":{"click":"___SecretTreasureHuntPanel_inlineComponent1_BasicDelayButton1_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "label":"Cầu viện",
                     "styleName":"BtnStdGreen"
                  };
               }
            })]};
         }
      });
      
      private var _88844982outerDocument:SecretTreasureHuntPanel;
      
      public function SecretTreasureHuntPanel_inlineComponent1()
      {
         super();
         mx_internal::_document = this;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set outerDocument(param1:SecretTreasureHuntPanel) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : SecretTreasureHuntPanel
      {
         return this._88844982outerDocument;
      }
      
      public function ___SecretTreasureHuntPanel_inlineComponent1_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         outerDocument.callHelp(data);
      }
   }
}

