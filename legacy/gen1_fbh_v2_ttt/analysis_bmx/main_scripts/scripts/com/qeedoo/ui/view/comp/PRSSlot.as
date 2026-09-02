package com.qeedoo.ui.view.comp
{
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   
   public class PRSSlot extends Slot
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Slot,
         "propertiesFactory":function():Object
         {
            return {
               "width":34,
               "height":34
            };
         }
      });
      
      public var excBagPos:Number = 0;
      
      public var chipBagPos:Number = 0;
      
      public function PRSSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
         this.styleName = "TransparentSlot";
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:PRSSlot = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as PRSSlot;
            if(_loc2_ == this)
            {
               return;
            }
            if(_loc2_.slotType == this.slotType)
            {
               return;
            }
            if(_loc2_.slotType == SLOT_PRS_CHIPBAG && this.slotType == SLOT_PRS_EXCBAG)
            {
               _core.remote.call("movePRSChip",null,_core.cid,_loc2_.chipBagPos,this.excBagPos,1);
            }
            else if(this.slotType == SLOT_PRS_CHIPBAG && _loc2_.slotType == SLOT_PRS_EXCBAG)
            {
               _core.remote.call("movePRSChip",null,_core.cid,_loc2_.excBagPos,this.chipBagPos,2);
            }
         }
      }
   }
}

