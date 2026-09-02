package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemSlotStoneSeal extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var isOpen:Boolean = false;
      
      public var sealIndex:int = -1;
      
      mx_internal var _watchers:Array = [];
      
      private var _1091760867holeImg:Image;
      
      private var _hasSeted:Boolean = false;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":ItemSlot,
         "propertiesFactory":function():Object
         {
            return {
               "width":34,
               "height":34,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"holeImg",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":1,
                        "y":1,
                        "visible":false,
                        "buttonMode":true
                     };
                  }
               })]
            };
         }
      });
      
      private var slotTmp:ItemSlot;
      
      public function ItemSlotStoneSeal()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
         this.showStackNum = false;
         this.addEventListener("creationComplete",___ItemSlotStoneSeal_ItemSlot1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotStoneSeal._watcherSetupUtil = param1;
      }
      
      private function _ItemSlotStoneSeal_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_STONE_SEAL;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000381);
         },function(param1:Object):void
         {
            holeImg.source = param1;
         },"holeImg.source");
         result[1] = binding;
         return result;
      }
      
      private function dClick(param1:GameEvent) : void
      {
         var _loc2_:Object = null;
         if(isOpen && type > 0 && giid > 0)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
            if(_loc2_)
            {
               _loc2_.toRemove(sealIndex);
            }
         }
      }
      
      private function _ItemSlotStoneSeal_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_STONE_SEAL;
         _loc1_ = ResManager.getIconUrl(4130220000381);
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:ItemSlot = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
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
               case SLOT_STONE_SEAL:
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
                              if(!isOpen)
                              {
                                 Alert.show(Language.STONE_SEAL_PANEL_U[5],"",Alert.YES,this);
                                 return;
                              }
                              _loc4_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
                              if(_loc4_)
                              {
                                 _loc4_.stoneSealSetStone(_loc2_,this);
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
                              if(!isOpen)
                              {
                                 Alert.show(Language.STONE_SEAL_PANEL_U[5],"",Alert.YES,this);
                                 return;
                              }
                              _loc4_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
                              if(_loc4_)
                              {
                                 _loc4_.stoneSealSetStone(_loc2_,this);
                              }
                           }
                        }
                     }
                  }
                  else if(_loc2_.slotType == SLOT_STONE_SEAL)
                  {
                     _loc4_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
                     if((Boolean(_loc4_)) && _loc2_ is ItemSlotStoneSeal)
                     {
                        _loc4_.toSwap((_loc2_ as ItemSlotStoneSeal).sealIndex,this.sealIndex);
                     }
                  }
            }
         }
      }
      
      private function click(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(!isOpen)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
            if(_loc2_)
            {
               _loc2_.toBore(sealIndex);
            }
         }
      }
      
      public function setOpen(param1:Boolean, param2:int = 0) : void
      {
         isOpen = param1;
         if(!isOpen)
         {
            clean();
            toolTip = Language.STONE_SEAL_PANEL_U[4];
         }
         else if(param2 == 0)
         {
            toolTip = "";
            clean();
         }
         else
         {
            toolTip = "";
            type = GamePredef.TBL_ITEM_TEMPLATE;
            giid = param2;
         }
         holeImg.visible = !param1;
      }
      
      public function set holeImg(param1:Image) : void
      {
         var _loc2_:Object = this._1091760867holeImg;
         if(_loc2_ !== param1)
         {
            this._1091760867holeImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeImg",_loc2_,param1));
         }
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemSlotStoneSeal = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotStoneSeal_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotStoneSealWatcherSetupUtil");
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
      
      public function set hasSeted(param1:Boolean) : void
      {
         _hasSeted = param1;
      }
      
      public function init() : void
      {
         addEventListener(MouseEvent.CLICK,click);
         addEventListener(Slot.EVENT_SLOT_DCLICK,dClick);
      }
      
      [Bindable(event="propertyChange")]
      public function get holeImg() : Image
      {
         return this._1091760867holeImg;
      }
      
      public function ___ItemSlotStoneSeal_ItemSlot1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

