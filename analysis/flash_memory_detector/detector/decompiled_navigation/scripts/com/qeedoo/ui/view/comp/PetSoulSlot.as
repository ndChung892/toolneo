package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   
   public class PetSoulSlot extends SoulSlot
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SoulSlot,
         "propertiesFactory":function():Object
         {
            return {
               "width":65,
               "height":65
            };
         }
      });
      
      private var _stype:int;
      
      public var acceptObj:Object;
      
      public function PetSoulSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 65;
         this.height = 65;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function setData(param1:Object) : void
      {
         acceptObj = param1;
         if(Boolean(acceptObj.state) && Boolean(acceptObj.soulId) && acceptObj.soulId != -1)
         {
            this.movable = true;
         }
         else
         {
            this.movable = false;
         }
         if(Boolean(GameData.d[GamePredef.TBL_PET_SOUL][acceptObj.soulId]) && Boolean(GameData.d[GamePredef.TBL_PET_SOUL][acceptObj.soulId]["iconCode"]))
         {
            _iconCode = GameData.d[GamePredef.TBL_PET_SOUL][acceptObj.soulId]["iconCode"];
         }
         else
         {
            _iconCode = -1;
         }
         this.type = GamePredef.TBL_PET_SOUL;
         this.slotData = acceptObj;
         this.giid = Number(acceptObj.soulId);
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:PetSoulSlot = null;
         if(!acceptObj || acceptObj.soulId < 0)
         {
            trace("普通拖放");
            super.dragDropHandler(param1);
         }
         else
         {
            if(this.state == 0)
            {
               return;
            }
            if(param1.dragSource.hasFormat("petSoulSlot"))
            {
               _loc2_ = param1.dragSource.dataForFormat("petSoulSlot") as PetSoulSlot;
               if(_loc2_ == this)
               {
                  return;
               }
               switch(_loc2_.slotType)
               {
                  case SLOT_PET_SOUL:
                     if(_loc2_.slotData.petId)
                     {
                        _core.remote.moveSoul(_loc2_.index,index,_loc2_.slotData.petId);
                     }
                     else
                     {
                        _core.remote.moveSoul(_loc2_.index,index,-1);
                     }
                     break;
                  case SLOT_BAG_SOUL:
                     if(acceptObj.petId)
                     {
                        _core.remote.moveSoul(_loc2_.index,index,acceptObj.petId);
                     }
                     else
                     {
                        _core.remote.moveSoul(_loc2_.index,index,-1);
                     }
               }
            }
         }
      }
   }
}

