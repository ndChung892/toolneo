package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Alert;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemSlotJewel extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _hasSeted:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
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
      
      private var slotTmp:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      public function ItemSlotJewel()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
         this.showStackNum = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotJewel._watcherSetupUtil = param1;
      }
      
      private function _ItemSlotJewel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_JEWEL;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
      
      private function _ItemSlotJewel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_JEWEL;
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
            if((this as ItemSlot).giid > 0)
            {
               Alert.show(Language.PET_STONE_PANEL[47]);
               return;
            }
            if(!enabled)
            {
               return;
            }
            switch(slotType)
            {
               case SLOT_JEWEL:
                  trace("drop on a jewel slot ");
                  if(_loc2_.slotType == SLOT_BAG)
                  {
                     if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_ITEM_INSTANCE))
                     {
                        _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                        if(_loc3_)
                        {
                           if(ToolKit.isEqual(_loc3_.type,GamePredef.ITEM_TYPE_JEWEL))
                           {
                              if(_hasSeted)
                              {
                                 slotTmp = _loc2_;
                                 Alert.show(Language.ITEMSLOTJEWEL_S[0],"",Alert.YES | Alert.NO,this,jewelHandler);
                                 return;
                              }
                              slotData = _loc2_.slotData;
                              type = _loc2_.type;
                              tempBagFlag = false;
                              giid = _loc2_.giid;
                              if(showStackNum)
                              {
                                 stackNum = _loc2_.stackNum;
                              }
                           }
                        }
                     }
                  }
                  else if(_loc2_.slotType == SLOT_TEMP_SLOT)
                  {
                     if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_ITEM_TEMPLATE))
                     {
                        _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                        if(_loc3_)
                        {
                           if(ToolKit.isEqual(_loc3_.type,GamePredef.ITEM_TYPE_JEWEL))
                           {
                              if(_hasSeted)
                              {
                                 slotTmp = _loc2_;
                                 Alert.show(Language.ITEMSLOTJEWEL_S[0],"",Alert.YES | Alert.NO,this,jewelHandler);
                                 return;
                              }
                              slotData = _loc2_.slotData;
                              type = _loc2_.type;
                              _loc2_.slotData.id = _loc2_.posId;
                              tempBagFlag = true;
                              giid = _loc2_.giid;
                              if(showStackNum)
                              {
                                 stackNum = _loc2_.stackNum;
                              }
                           }
                        }
                     }
                  }
            }
         }
      }
      
      public function set hasSeted(param1:Boolean) : void
      {
         _hasSeted = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotJewel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotJewel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotJewelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      private function jewelHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES && Boolean(slotTmp))
         {
            slotData = slotTmp.slotData;
            type = slotTmp.type;
            giid = slotTmp.giid;
            if(showStackNum)
            {
               stackNum = slotTmp.stackNum;
            }
         }
      }
   }
}

