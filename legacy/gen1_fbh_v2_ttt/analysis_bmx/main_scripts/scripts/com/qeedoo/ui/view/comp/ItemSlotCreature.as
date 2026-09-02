package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.utils.ToolKit;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   
   public class ItemSlotCreature extends ItemSlot
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":ItemSlot,
         "propertiesFactory":function():Object
         {
            return {
               "width":34,
               "height":34
            };
         }
      });
      
      public function ItemSlotCreature()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:ItemSlot = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ItemSlot;
            if(_loc2_ == this)
            {
               return;
            }
            if(!enabled)
            {
               return;
            }
            if(sourceGroup)
            {
               return;
            }
            switch(slotType)
            {
               case SLOT_CREATURE:
                  if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_CREATURE) && Boolean(_loc2_.slotData))
                  {
                     slotData = _loc2_.slotData;
                     type = _loc2_.type;
                     giid = _loc2_.giid;
                     stackNum = _loc2_.stackNum;
                  }
                  break;
               case SLOT_JEWEL:
                  if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_ITEM_TEMPLATE) && Boolean(_loc2_.slotData))
                  {
                     slotData = _loc2_.slotData;
                     type = _loc2_.type;
                     giid = _loc2_.giid;
                     stackNum = _loc2_.stackNum;
                  }
            }
         }
      }
   }
}

