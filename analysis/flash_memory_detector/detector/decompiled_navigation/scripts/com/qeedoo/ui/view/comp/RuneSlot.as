package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.view.compDragable.DecorateLogic;
   import flash.net.Responder;
   import mx.controls.Alert;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   
   public class RuneSlot extends Slot
   {
      
      public static const CHA_RUNE_SET:uint = 0;
      
      public static const PET_RUNE_SET:uint = 1;
      
      public var conBagSlot:Boolean = false;
      
      public var runeChaBagPos:int = -1;
      
      public var runePetHolePos:int = -1;
      
      public var runePetBagPos:int = -1;
      
      public var runeChaHolePos:int = -1;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Slot,
         "propertiesFactory":function():Object
         {
            return {
               "width":40,
               "height":40
            };
         }
      });
      
      public var decoPosition:int = 0;
      
      public function RuneSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 40;
         this.height = 40;
         this.addEventListener("creationComplete",___RuneSlot_Slot1_creationComplete);
      }
      
      private function updateDecoInfo(param1:Object) : void
      {
         DecorateLogic.updateDecoInfo(param1);
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:RuneSlot = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as RuneSlot;
            if(_loc2_ == this)
            {
               trace("移动到原位置");
               return;
            }
            if(_loc2_.slotType == this.slotType)
            {
               trace("同种背包移动");
               return;
            }
            if(_loc2_.slotType == SLOT_RUNE_CHA && this.slotType == SLOT_RUNE_CHA_HOLE)
            {
               _core.remote.call("runeSet",new Responder(updateDecoInfo),_loc2_.runeChaBagPos,this.runeChaHolePos,CHA_RUNE_SET,this.decoPosition);
            }
            else if(_loc2_.slotType == SLOT_RUNE_PET && this.slotType == SLOT_RUNE_PET_HOLE)
            {
               _core.remote.call("runeSet",new Responder(updateDecoInfo),_loc2_.runePetBagPos,this.runePetHolePos,PET_RUNE_SET,this.decoPosition);
            }
            else if(_loc2_.slotType == SLOT_RUNE_CHA_HOLE && this.slotType == SLOT_RUNE_CHA)
            {
               _core.remote.call("runeRemove",new Responder(updateDecoInfo),_loc2_.runeChaHolePos,this.runeChaBagPos,CHA_RUNE_SET,_loc2_.decoPosition);
            }
            else if(_loc2_.slotType == SLOT_RUNE_PET_HOLE && this.slotType == SLOT_RUNE_PET)
            {
               _core.remote.call("runeRemove",new Responder(updateDecoInfo),_loc2_.runePetHolePos,this.runePetBagPos,PET_RUNE_SET,_loc2_.decoPosition);
            }
            else if(_loc2_.slotType == SLOT_RUNE_CHA && this.slotType == SLOT_RUNE_UP)
            {
               _core.remote.call("runeMove",null,_loc2_.runeChaBagPos,-1,CHA_RUNE_SET);
            }
            else if(_loc2_.slotType == SLOT_RUNE_PET && this.slotType == SLOT_RUNE_UP)
            {
               _core.remote.call("runeMove",null,_loc2_.runePetBagPos,-1,PET_RUNE_SET);
            }
            else if(_loc2_.slotType == SLOT_RUNE_UP && this.slotType == SLOT_RUNE_CHA)
            {
               _loc3_ = _loc2_.giid;
               _loc4_ = int(GameData.d[GamePredef.TBL_DECO_RUNE][_loc3_]["kind"]);
               if(_loc4_ == 1)
               {
                  _core.remote.call("runeMove",null,-1,this.runeChaBagPos,CHA_RUNE_SET);
               }
               else
               {
                  Alert.show(Language.DECORATE_PANEL[49]);
               }
            }
            else if(_loc2_.slotType == SLOT_RUNE_UP && this.slotType == SLOT_RUNE_PET)
            {
               _loc3_ = _loc2_.giid;
               _loc4_ = int(GameData.d[GamePredef.TBL_DECO_RUNE][_loc3_]["kind"]);
               if(_loc4_ == 2)
               {
                  _core.remote.call("runeMove",null,-1,this.runePetBagPos,PET_RUNE_SET);
               }
               else
               {
                  Alert.show(Language.DECORATE_PANEL[49]);
               }
            }
            else
            {
               Alert.show(Language.DECORATE_PANEL[49]);
            }
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function ___RuneSlot_Slot1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function init() : void
      {
         if(this.slotType == SLOT_RUNE_CHA_HOLE || this.slotType == SLOT_RUNE_PET_HOLE)
         {
            this.resetRuneSlotSetIconSize();
            this.setRuneSetNumText();
         }
         else
         {
            this.resetRuneSlotIconSize();
            this.setRuneNumText();
         }
         if(conBagSlot)
         {
            this.resetBagSlotIconSize();
            this.setBagNumText();
         }
      }
   }
}

