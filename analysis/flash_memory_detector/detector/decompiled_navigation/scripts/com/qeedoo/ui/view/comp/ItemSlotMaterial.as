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
   
   public class ItemSlotMaterial extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _requireSlot:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _haveRequireSlot:Boolean = true;
      
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
      
      public function ItemSlotMaterial()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotMaterial._watcherSetupUtil = param1;
      }
      
      public function get haveRequireSlot() : Boolean
      {
         return _haveRequireSlot;
      }
      
      public function get requireSlot() : Object
      {
         return _requireSlot;
      }
      
      public function set requireSlot(param1:Object) : void
      {
         _requireSlot = param1;
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
            switch(slotType)
            {
               case SLOT_MATERIAL:
                  trace("drop on a material slot ");
                  if(_loc2_.slotType == SLOT_BAG)
                  {
                     _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                     if(!_loc3_)
                     {
                        return;
                     }
                     if(!(ToolKit.isEqual(_loc3_.kind,GamePredef.ITEM_KIND_MATERIAL) || ToolKit.isEqual(_loc3_.id,2039)))
                     {
                        return;
                     }
                     if(_haveRequireSlot)
                     {
                        if(requireSlot)
                        {
                           if(ToolKit.isEqual(_loc2_.type,requireSlot.type - 1) && ToolKit.isEqual(_loc3_.id,requireSlot.giid) && ToolKit.isBigOrEqual(_loc2_.stackNum,requireSlot.stackNum))
                           {
                              tempBagFlag = false;
                              slotData = _loc2_.slotData;
                              type = _loc2_.type;
                              stackNum = requireSlot.stackNum;
                              giid = _loc2_.giid;
                           }
                        }
                     }
                     else
                     {
                        tempBagFlag = false;
                        slotData = _loc2_.slotData;
                        type = _loc2_.type;
                        stackNum = _loc2_.stackNum;
                        giid = _loc2_.giid;
                     }
                  }
                  else if(_loc2_.slotType == SLOT_TEMP_SLOT)
                  {
                     _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                     if(!_loc3_)
                     {
                        return;
                     }
                     if(!(ToolKit.isEqual(_loc3_.kind,GamePredef.ITEM_KIND_MATERIAL) || ToolKit.isEqual(_loc3_.id,2039)))
                     {
                        return;
                     }
                     if(_haveRequireSlot)
                     {
                        if(requireSlot)
                        {
                           if(ToolKit.isEqual(_loc2_.type,requireSlot.type) && ToolKit.isEqual(_loc3_.id,requireSlot.giid) && ToolKit.isBigOrEqual(_loc2_.stackNum,requireSlot.stackNum))
                           {
                              tempBagFlag = true;
                              _loc2_.slotData.idx = _loc2_.posId;
                              slotData = _loc2_.slotData;
                              setStyleName(slotData.q / 5);
                              type = _loc2_.type;
                              stackNum = requireSlot.stackNum;
                              giid = _loc2_.giid;
                           }
                        }
                     }
                     else
                     {
                        tempBagFlag = true;
                        _loc2_.slotData.idx = _loc2_.posId;
                        slotData = _loc2_.slotData;
                        setStyleName(slotData.q / 5);
                        type = _loc2_.type;
                        stackNum = _loc2_.stackNum;
                        giid = _loc2_.giid;
                     }
                  }
            }
         }
      }
      
      private function _ItemSlotMaterial_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_MATERIAL;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
      
      override public function reset() : void
      {
         super.reset();
         _requireSlot = null;
         _haveRequireSlot = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotMaterial = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotMaterial_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotMaterialWatcherSetupUtil");
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
      
      private function _ItemSlotMaterial_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_MATERIAL;
      }
      
      public function set haveRequireSlot(param1:Boolean) : void
      {
         _haveRequireSlot = param1;
      }
   }
}

