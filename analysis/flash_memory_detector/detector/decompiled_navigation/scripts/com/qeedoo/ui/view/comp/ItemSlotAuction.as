package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
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
   
   public class ItemSlotAuction extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
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
      
      mx_internal var _watchers:Array = [];
      
      public function ItemSlotAuction()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotAuction._watcherSetupUtil = param1;
      }
      
      private function _ItemSlotAuction_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_AUCTION;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
      
      private function _ItemSlotAuction_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_AUCTION;
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
               case SLOT_AUCTION:
                  if(_loc2_.slotType == SLOT_BAG || _loc2_.slotType == SLOT_PET)
                  {
                     if(_loc2_.type == GamePredef.TBL_PET)
                     {
                        _loc3_ = _core.player.petList[_loc2_.giid];
                        if(!_loc3_)
                        {
                           return;
                        }
                        if(!ToolKit.isEqual(_loc3_.binded,0))
                        {
                           _core.sysMidNote(Language.ITEMSLOTAUCTION_S[0]);
                           return;
                        }
                     }
                     if(type == GamePredef.TBL_PET)
                     {
                        _core.view.getUI(ViewManager.PANEL_BAG).petInit();
                     }
                     else
                     {
                        _core.view.getUI(ViewManager.PANEL_BAG).updateView();
                     }
                     type = _loc2_.type;
                     giid = _loc2_.giid;
                     stackNum = _loc2_.stackNum;
                     slotData = _loc2_.slotData;
                     _loc2_.reset();
                  }
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotAuction = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotAuction_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotAuctionWatcherSetupUtil");
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
   }
}

