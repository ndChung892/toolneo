package com.qeedoo.ui.view.comp
{
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
   
   public class ItemSlot extends Slot
   {
      
      public var acceptObj:Object;
      
      private var _showStackNum:Boolean = true;
      
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
      
      public function ItemSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
         this.styleName = "TransparentSlot";
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ItemSlot = null;
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         if(!acceptObj)
         {
            trace("普通拖放");
            super.dragDropHandler(param1);
            if(Boolean(param1.target.dropSlot) && Boolean(param1.target.dropSlot.slotData) && param1.target.dropSlot.slotData.tid == GamePredef.HP_ADD_BAG_ON_TRIAL)
            {
               _loc2_ = _core.view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
               if(Boolean(_loc2_) && Boolean(_loc2_.visible) && _loc2_._lastReference.className == "BagPanel")
               {
                  _loc2_.hide();
               }
            }
         }
         else if(param1.dragSource.hasFormat("slot"))
         {
            _loc3_ = param1.dragSource.dataForFormat("slot") as ItemSlot;
            if(_loc3_ == this)
            {
               return;
            }
            if(_loc3_.slotType == SLOT_BAG)
            {
               _loc4_ = _core.getTemplateData(_loc3_.type,_loc3_.giid);
               _loc5_ = checkAcceptObj(_loc4_);
               if(_loc5_)
               {
                  slotData = _loc3_.slotData;
                  tempBagFlag = false;
                  type = _loc3_.type;
                  giid = _loc3_.giid;
                  if(_showStackNum)
                  {
                     stackNum = _loc3_.stackNum;
                  }
               }
            }
            else if(_loc3_.slotType == SLOT_TEMP_SLOT)
            {
               _loc4_ = _core.getTemplateData(_loc3_.type,_loc3_.giid);
               _loc5_ = checkAcceptObj(_loc4_);
               if(_loc5_)
               {
                  _loc3_.slotData.id = _loc3_.posId;
                  slotData = _loc3_.slotData;
                  tempBagFlag = true;
                  type = _loc3_.type;
                  giid = _loc3_.giid;
                  if(_showStackNum)
                  {
                     stackNum = _loc3_.stackNum;
                  }
               }
            }
         }
      }
      
      protected function checkAcceptObj(param1:Object) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc2_:Boolean = false;
         if(param1)
         {
            if(acceptObj)
            {
               if(Boolean(acceptObj.kinds) && Boolean(acceptObj.kinds[param1.kind]))
               {
                  _loc2_ = true;
               }
               if(acceptObj.types)
               {
                  _loc3_ = Boolean(acceptObj.types[param1.type]);
                  _loc2_ = acceptObj.kinds ? _loc2_ && _loc3_ : _loc3_;
               }
               if(acceptObj.ids)
               {
                  _loc2_ &&= Boolean(acceptObj.ids[param1.id]);
               }
            }
            else
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set showStackNum(param1:Boolean) : void
      {
         _showStackNum = param1;
      }
      
      public function get showStackNum() : Boolean
      {
         return _showStackNum;
      }
   }
}

