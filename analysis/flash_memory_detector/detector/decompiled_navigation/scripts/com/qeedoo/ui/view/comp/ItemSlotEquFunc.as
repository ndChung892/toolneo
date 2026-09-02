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
   
   public class ItemSlotEquFunc extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const EQUIP_COMMON:Object = {"kinds":{
         1:true,
         2:true,
         3:true,
         4:true,
         12:true
      }};
      
      public static const EQUIP_MW:Object = {"kinds":{8:true}};
      
      public static const EQUIP_MW_MAIN:Object = {
         "kinds":{8:true},
         "types":{800:true}
      };
      
      public static const EQUIP_MW_SUB:Object = {
         "kinds":{8:true},
         "types":{801:true}
      };
      
      public static const EQUIP_PETEQU:Object = {"kinds":{9:true}};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var dragable:Boolean = true;
      
      mx_internal var _bindings:Array = [];
      
      private var defaultAcceptObj:Object = EQUIP_COMMON;
      
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
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public function ItemSlotEquFunc()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotEquFunc._watcherSetupUtil = param1;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:ItemSlot = null;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Object = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ItemSlot;
            if(_loc2_ == this || !dragable)
            {
               return;
            }
            switch(slotType)
            {
               case SLOT_EQUFUNC:
                  if(_loc2_.slotType == SLOT_BAG)
                  {
                     _loc3_ = false;
                     _loc4_ = ToolKit.isEqual(_loc2_.type,GamePredef.TBL_EQUIPT_INSTANCE);
                     _loc5_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
                     acceptObj = acceptObj || defaultAcceptObj;
                     _loc3_ = _loc4_ && checkAcceptObj(_loc5_);
                     if(_loc3_)
                     {
                        slotData = _loc2_.slotData;
                        type = _loc2_.type;
                        giid = _loc2_.giid;
                        stackNum = _loc2_.stackNum;
                        dropSlot = _loc2_;
                     }
                  }
            }
         }
      }
      
      private function _ItemSlotEquFunc_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_EQUFUNC;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotEquFunc = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotEquFunc_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotEquFuncWatcherSetupUtil");
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
      
      private function _ItemSlotEquFunc_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_EQUFUNC;
      }
   }
}

