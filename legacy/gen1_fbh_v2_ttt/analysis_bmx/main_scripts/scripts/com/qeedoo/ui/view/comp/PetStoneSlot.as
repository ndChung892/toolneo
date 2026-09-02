package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.utils.ObjectUtil;
   
   public class PetStoneSlot extends Slot
   {
      
      private var _skillId:int = -1;
      
      private var _sid:int = -1;
      
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
      
      public function PetStoneSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
         this.styleName = "TransparentSlot";
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:PetStoneSlot = null;
         var _loc3_:Object = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as PetStoneSlot;
            if(_loc2_ == this)
            {
               return;
            }
            if(_loc2_.slotType == this.slotType)
            {
               return;
            }
            if(this.slotType == Slot.SLOT_PET_STONE_COMPO)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(_loc2_.type != GamePredef.TBL_PET_STONE)
               {
                  return;
               }
               if(_loc3_)
               {
                  _loc3_.updatePetStoneCompoSlot(_loc2_);
               }
            }
            if(this.slotType == Slot.SLOT_PET_STONE_NORMAL)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(_loc2_.type != GamePredef.TBL_PET_STONE)
               {
                  return;
               }
               if(_loc3_)
               {
                  _loc3_.updatePetStoneEnergySlot(_loc2_,this);
               }
            }
            if(this.slotType == Slot.SLOT_PET_STONE_RESOLVE)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(_loc2_.type != GamePredef.TBL_PET_STONE)
               {
                  return;
               }
               if(_loc3_)
               {
                  _loc3_.updatePetStoneResolveSlot(_loc2_);
               }
            }
            if(this.slotType == Slot.SLOT_PET_STONE_EQUIPT && _loc2_.slotType == Slot.SLOT_PET_STONE_EQUIP_BAG)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(_loc3_)
               {
                  _loc3_.updatePetStoneSetEquipSlot(_loc2_);
               }
            }
            if(this.slotType == Slot.SLOT_PET_STONE_SET)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(_loc2_.type != GamePredef.TBL_PET_STONE)
               {
                  return;
               }
               if(_loc3_)
               {
                  _loc3_.setPetStone(_loc2_,this);
               }
            }
            if(this.slotType == Slot.SLOT_PET_STONE_CHANGE_SKILL)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(_loc2_.type != GamePredef.TBL_PET_STONE)
               {
                  return;
               }
               if(_loc3_)
               {
                  _loc3_.updateChangeSkill(_loc2_);
               }
            }
         }
      }
      
      override public function clean() : void
      {
         super.clean();
         _sid = -1;
         _skillId = -1;
      }
      
      public function get sid() : int
      {
         return _sid;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      override protected function showTempToolTip(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(_core.data.hasData(_type,_itemId))
         {
            _loc6_ = _core.data.getGameData(_type,_itemId);
            _loc4_ = ObjectUtil.copy(_loc6_);
            _loc5_ = {};
            _loc5_.slotType = _slotType;
            _loc5_.type = BasicToolTip.TYPE_TEMP;
            _loc5_.btnVisible = false;
            _loc5_.soulActived = false;
            _loc5_.inst = null;
            _loc5_.temp = _loc4_;
            _loc5_.skillId = _skillId;
            _toolTip = getToolTip();
            _toolTip.object = _loc5_;
            _toolTip.show();
         }
         else
         {
            if(param2)
            {
               return;
            }
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,dataLoaded);
            _core.data.getGameData(_type,_itemId);
         }
      }
      
      public function set skillId(param1:int) : void
      {
         _skillId = param1;
      }
      
      public function get skillId() : int
      {
         return _skillId;
      }
      
      public function set sid(param1:int) : void
      {
         _sid = param1;
      }
   }
}

