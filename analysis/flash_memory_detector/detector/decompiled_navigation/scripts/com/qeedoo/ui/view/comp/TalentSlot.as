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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TalentSlot extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var csid:Number = 0;
      
      mx_internal var _bindings:Array = [];
      
      public var sid:Number = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":ItemSlot,
         "propertiesFactory":function():Object
         {
            return {
               "width":35,
               "height":35
            };
         }
      });
      
      public function TalentSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 35;
         this.height = 35;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TalentSlot._watcherSetupUtil = param1;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:TalentSlot = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(!acceptObj)
         {
            trace("普通拖放");
            super.dragDropHandler(param1);
         }
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as TalentSlot;
            if(_loc2_ == this)
            {
               return;
            }
            if(!_loc2_.sid || !_loc2_.slotData)
            {
               return;
            }
            if(ToolKit.isSmallOrEqual(_loc2_.sid,10000) && ToolKit.isBigThan(this.sid,10000) && ToolKit.isSmallOrEqual(this.sid,60000) && (ToolKit.isEqual(Math.floor(this.sid % 10000),11) || ToolKit.isEqual(Math.floor(this.sid % 10000),10)))
            {
               if(Boolean(_core.player) && Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.inTal) && Boolean(_core.player.petTalentData.inTal[this.sid]))
               {
                  _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[19]);
                  return;
               }
               if(Boolean(_core.player) && Boolean(_core.player.petTalentData))
               {
                  if(!_core.player.petTalentData.tal || !_core.player.petTalentData.tal[this.sid])
                  {
                     _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[20]);
                     return;
                  }
                  _loc3_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][this.giid];
                  _loc4_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][_loc2_.giid];
                  if(Boolean(_loc3_) && Boolean(_loc4_) && ToolKit.isSmallThan(_loc3_.lv,_loc4_.lv))
                  {
                     _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[21]);
                     return;
                  }
                  if(Boolean(_loc3_) && Boolean(_loc4_) && ToolKit.isSmallThan(ToolKit.add(_loc3_.sid,10),_loc4_.sid))
                  {
                     _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[22]);
                     return;
                  }
               }
               _core.remote.call("fillTalentStone",null,_loc2_.sid,this.sid,_loc2_.giid);
               return;
            }
            if(ToolKit.isSmallOrEqual(this.sid,10000) && ToolKit.isBigThan(_loc2_.sid,10000) && ToolKit.isSmallOrEqual(_loc2_.sid,60000))
            {
               _core.remote.call("takeOffTalentStone",null,_loc2_.sid,this.sid,_loc2_.giid);
               return;
            }
            if(ToolKit.isSmallOrEqual(this.sid,10000) && ToolKit.isSmallOrEqual(_loc2_.sid,10000) && Boolean(_loc2_.slotData))
            {
               _core.remote.call("moveStoneBagToBag",null,_loc2_.sid,this.sid);
               return;
            }
            if(ToolKit.isSmallOrEqual(_loc2_.sid,10000) && ToolKit.isBigThan(this.sid,60000))
            {
               slotData = _loc2_.slotData;
               type = _loc2_.type;
               giid = _loc2_.giid;
               csid = _loc2_.sid;
               if(this.showStackNum)
               {
                  stackNum = _loc2_.stackNum;
               }
            }
            return;
         }
      }
      
      private function _TalentSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_TALENT;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TalentSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TalentSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TalentSlotWatcherSetupUtil");
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
      
      private function _TalentSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_TALENT;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         return result;
      }
   }
}

