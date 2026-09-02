package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.CrossContentionSinglePanel;
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
   import mx.controls.Image;
   import mx.styles.*;
   
   public class CrossContentionIcon extends Image
   {
      
      public static var iconUrls:Array = [4130220000303,4130220000304,4130220000305,4130220000306,4130220000307,4130220000308];
      
      public var index:int = 0;
      
      public var iconUrl:Number = 0;
      
      public var isBoss:Boolean = false;
      
      private var _core:Core = Core.getInstance();
      
      private var _showTip:Boolean;
      
      public function CrossContentionIcon()
      {
         super();
         this.width = 120;
         this.height = 120;
         this.scaleContent = false;
         this.addEventListener("rollOver",___CrossContentionIcon_Image1_rollOver);
         this.addEventListener("rollOut",___CrossContentionIcon_Image1_rollOut);
         this.addEventListener("click",___CrossContentionIcon_Image1_click);
      }
      
      private function showTip(param1:int) : void
      {
      }
      
      public function ___CrossContentionIcon_Image1_rollOut(param1:MouseEvent) : void
      {
         hideTip();
         beUnSelected();
      }
      
      public function ___CrossContentionIcon_Image1_click(param1:MouseEvent) : void
      {
         showAlert();
      }
      
      public function showAlert(param1:Boolean = true) : void
      {
         var _loc2_:Object = null;
         if(isBoss)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_BOSS_AREA);
            if(_loc2_)
            {
               _loc2_.showPanel(index,CrossContentionSinglePanel.mData,iconUrl);
               if(param1)
               {
                  _core.remote.call("crossContentionOpenPointPanel",null,index);
               }
            }
            return;
         }
         if(!index)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_AREA);
         if(_loc2_)
         {
            _loc2_.areaId = index;
            _loc2_.mapId = CrossContentionSinglePanel.mData.mid;
            _loc2_.mapData = CrossContentionSinglePanel.mData;
            if(isBoss)
            {
               _loc2_.isBoss = true;
            }
            else
            {
               _loc2_.isBoss = false;
            }
            _loc2_.showPanel(CrossContentionSinglePanel.mData,iconUrl);
            if(param1)
            {
               _core.remote.call("crossContentionOpenPointPanel",null,index);
            }
         }
      }
      
      private function showInfo() : void
      {
         var _loc1_:Number = NaN;
         if(!isBoss)
         {
            if(Boolean(CrossContentionSinglePanel.mData) && Boolean(CrossContentionSinglePanel.mData.mid))
            {
               _loc1_ = Number(CrossContentionSinglePanel.mData.mid);
               toolTip = Language.CROSS_CONTENTION_PANEL_U[56].toString().replace("{name}",GamePredef.CROSS_CONTENTION_MAP[_loc1_].name) + " " + Language.CROSS_CONTENTION_PANEL_U[57].toString().replace("{id}",index);
            }
         }
         else if(Boolean(CrossContentionSinglePanel.mData) && Boolean(CrossContentionSinglePanel.mData.mid))
         {
            _loc1_ = Number(CrossContentionSinglePanel.mData.mid);
            toolTip = Language.CROSS_CONTENTION_PANEL_U[56].toString().replace("{name}",GamePredef.CROSS_CONTENTION_MAP[_loc1_].name) + " " + Language.CROSS_CONTENTION_PANEL_U[57].toString().replace("{id}",index);
         }
      }
      
      public function beSelected() : void
      {
         var _loc1_:Array = filters;
         _loc1_.push(GamePredef.FILTER_ALLOW_SELECTED);
         filters = _loc1_;
      }
      
      public function beUnSelected() : void
      {
         refersh();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function ___CrossContentionIcon_Image1_rollOver(param1:MouseEvent) : void
      {
         showInfo();
         beSelected();
      }
      
      public function refersh() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(isBoss)
         {
            iconUrl = iconUrls[0];
            source = ResManager.getIconUrl(iconUrl);
         }
         else
         {
            _loc1_ = GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[CrossContentionSinglePanel.MAP_ID]][index];
            iconUrl = iconUrls[_loc1_.p];
            source = ResManager.getIconUrl(iconUrl);
         }
         if(isBoss)
         {
            _loc2_ = CrossContentionSinglePanel.bossData;
            if(Boolean(_loc2_) && Boolean(_loc2_.data) && Boolean(_loc2_.data[index]) && _loc2_.data[index].state == 2)
            {
               this.filters = [];
            }
            else
            {
               ResManager.applyGray(this);
            }
         }
         else
         {
            _loc3_ = CrossContentionSinglePanel.mData.mData[index];
            if(!_loc3_ || !_loc3_.osid)
            {
               ResManager.applyGray(this);
               return;
            }
            if(_loc3_.osid)
            {
               this.filters = [];
            }
         }
      }
      
      private function hideTip() : void
      {
      }
      
      private function init() : void
      {
      }
   }
}

