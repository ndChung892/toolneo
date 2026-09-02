package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
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
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   public class BuildSlot extends Slot
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Slot,
         "propertiesFactory":function():Object
         {
            return {
               "width":105,
               "height":80
            };
         }
      });
      
      public function BuildSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 105;
         this.height = 80;
         this.movable = false;
         this.styleName = "CanvasBorder";
         this.addEventListener("creationComplete",___BuildSlot_Slot1_creationComplete);
      }
      
      private function dClick(param1:GameEvent) : void
      {
         Alert.show(Language.BUILDSLOT_U[0],"",Alert.YES | Alert.NO,null,handler);
      }
      
      public function ___BuildSlot_Slot1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function handler(param1:CloseEvent) : void
      {
         if(param1 != null && param1.detail != Alert.YES)
         {
            return;
         }
         var _loc2_:Object = slotData;
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_CONSTRUCTIONMANAGER).currentBuild;
         if(_loc3_ == null)
         {
            Alert.show(Language.BUILDSLOT_U[1],"");
         }
         var _loc4_:Object = GameData.d[GamePredef.TBL_BUILDING][_loc3_.tid];
         if(_loc4_ == null)
         {
            Alert.show(Language.BUILDSLOT_U[2],"");
         }
         if(ToolKit.isEqual(_loc4_.type,GamePredef.TYPE_EXTEND_BUILD))
         {
            _core.remote.constructBuild(_loc3_.id,_loc2_.id,GamePredef.CREATE_BUILD,_core.player.posMapId);
         }
         else if(ToolKit.isEqual(_loc4_.type,GamePredef.TYPE_GUILD_BUILD))
         {
            _core.remote.constructBuild(_loc3_.id,_loc2_.id,GamePredef.UPGRADE_BUILD,_core.player.posMapId);
         }
         _core.view.getUI(ViewManager.PANEL_CONSTRUCTIONMANAGER).hide();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function init() : void
      {
         addEventListener(Slot.EVENT_SLOT_DCLICK,dClick);
      }
      
      override protected function rollOutHandler(param1:Event) : void
      {
         var _loc2_:Array = filters;
         super.rollOutHandler(param1);
         filters = _loc2_;
      }
      
      override public function get selected() : Boolean
      {
         return Boolean(filters) && filters.length > 0;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         }
         else
         {
            filters = [];
         }
      }
      
      override public function setStackMax() : void
      {
      }
   }
}

