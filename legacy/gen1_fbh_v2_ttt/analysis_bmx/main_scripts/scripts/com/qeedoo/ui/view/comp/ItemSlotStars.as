package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.styles.*;
   
   public class ItemSlotStars extends ItemSlot
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
      
      public function ItemSlotStars()
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
         var _loc3_:Object = null;
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
            switch(slotType)
            {
               case SLOT_STARS_ADD:
                  if(_loc2_.slotType == SLOT_BAG)
                  {
                     if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_ITEM_INSTANCE))
                     {
                        _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                        if(_loc3_)
                        {
                           if(ToolKit.isEqual(_loc3_.type,GamePredef.ITEM_TYPE_STAR_ADD))
                           {
                              slotData = _loc2_.slotData;
                              type = _loc2_.type;
                              giid = _loc2_.giid;
                              stackNum = _loc2_.stackNum;
                           }
                        }
                     }
                  }
                  break;
               case SLOT_STARS_SPEED:
                  if(_loc2_.slotType == SLOT_BAG)
                  {
                     if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_ITEM_INSTANCE))
                     {
                        _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                        if(_loc3_)
                        {
                           if(ToolKit.isEqual(_loc3_.type,GamePredef.ITEM_TYPE_STAR_SPEED))
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
      }
   }
}

