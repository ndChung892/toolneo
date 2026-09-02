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
   
   use namespace mx_internal;
   
   public class ItemSlotPetFunc extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
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
      
      private var _petFuncType:Array;
      
      public function ItemSlotPetFunc()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotPetFunc._watcherSetupUtil = param1;
      }
      
      private function _ItemSlotPetFunc_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_PETFUNC;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
      
      private function _ItemSlotPetFunc_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_PETFUNC;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var slot:ItemSlot = null;
         var itemTmp:Object = null;
         var inPetFuncType:Function = null;
         var event:DragEvent = param1;
         if(event.dragSource.hasFormat("slot"))
         {
            slot = event.dragSource.dataForFormat("slot") as ItemSlot;
            if(slot == this)
            {
               return;
            }
            if(!enabled)
            {
               return;
            }
            switch(slotType)
            {
               case SLOT_PETFUNC:
                  if(slot.slotType == SLOT_BAG)
                  {
                     if(ToolKit.isEqual(slot.type,GamePredef.TBL_ITEM_INSTANCE))
                     {
                        itemTmp = _core.getTemplateData(slot.type,slot.giid);
                        inPetFuncType = function(param1:int, param2:Array):Boolean
                        {
                           var _loc4_:* = undefined;
                           var _loc3_:Boolean = false;
                           for(_loc4_ in param2)
                           {
                              if(ToolKit.isEqual(param1,param2[_loc4_]))
                              {
                                 _loc3_ = true;
                                 break;
                              }
                           }
                           return _loc3_;
                        };
                        if(itemTmp)
                        {
                           if(ToolKit.isEqual(itemTmp.type,GamePredef.ITEM_TYPE_PETFUNC) && Boolean(inPetFuncType(itemTmp.propType,_petFuncType)))
                           {
                              slotData = slot.slotData;
                              type = slot.type;
                              giid = slot.giid;
                              stackNum = slot.stackNum;
                           }
                        }
                     }
                  }
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotPetFunc = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotPetFunc_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotPetFuncWatcherSetupUtil");
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
      
      public function set petFuncType(param1:Array) : void
      {
         _petFuncType = param1;
      }
      
      public function get petFuncType() : Array
      {
         return _petFuncType;
      }
   }
}

