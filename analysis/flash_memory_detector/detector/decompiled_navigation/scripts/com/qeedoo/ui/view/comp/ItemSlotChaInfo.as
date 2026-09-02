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
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemSlotChaInfo extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
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
      
      public function ItemSlotChaInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 34;
         this.movable = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemSlotChaInfo._watcherSetupUtil = param1;
      }
      
      override public function showTooltip(param1:Boolean = false) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         _loc3_ = _core.getTemplateData(type,giid,false);
         var _loc5_:Number = int(Number(id.slice(5)));
         if(_loc3_)
         {
            if(_core.data.hasData(type,giid))
            {
               _loc2_ = _core.data.getGameData(type,giid);
               _loc4_ = {};
               _loc4_.type = BasicToolTip.TYPE_INST;
               _loc4_.btnVisible = false;
               _loc4_.soulActived = _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).equipActiveList[_loc5_];
               _loc4_.inst = _loc2_;
               _loc4_.temp = _loc3_;
               _toolTip = getToolTip();
               _toolTip.object = _loc4_;
               if(type == GamePredef.TBL_ITEM_INSTANCE || type == GamePredef.TBL_EQUIPT_INSTANCE)
               {
                  if(this.isInAuction)
                  {
                     _toolTip.currencyHide("temp");
                  }
                  else
                  {
                     _toolTip.currencyHide("inst");
                  }
               }
               _toolTip.show();
            }
            else
            {
               _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + type + "_" + giid,dataLoaded);
               _core.data.getGameData(type,giid);
            }
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + type + "_" + giid,dataLoaded);
            _core.data.getGameData(type,giid);
         }
      }
      
      private function _ItemSlotChaInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUIP;
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
         var target:ItemSlotChaInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemSlotChaInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ItemSlotChaInfoWatcherSetupUtil");
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
      
      private function _ItemSlotChaInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_EQUIP;
      }
   }
}

