package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.CrossTeamFightPanel;
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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class CrossTeamFightActiveLine extends Canvas
   {
      
      private var _110233973team2:CrossTeamFightActiveTeamInfo;
      
      private var _110233972team1:CrossTeamFightActiveTeamInfo;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":615,
               "height":113,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":CrossTeamFightActiveTeamInfo,
                  "id":"team1"
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"vs",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  }
               }),new UIComponentDescriptor({
                  "type":CrossTeamFightActiveTeamInfo,
                  "id":"team2",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  }
               })]
            };
         }
      });
      
      private var _3773vs:Image;
      
      public function CrossTeamFightActiveLine()
      {
         super();
         mx_internal::_document = this;
         this.width = 615;
         this.height = 113;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public function set refreshData(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.team1))
         {
            param1.team1.win = param1.win;
         }
         if(Boolean(param1) && Boolean(param1.team2))
         {
            param1.team2.win = param1.win;
         }
         var _loc2_:int = CrossTeamFightPanel.TEAM_CROSSPK_STATE;
         if(_loc2_ >= 5)
         {
            vs.source = ResManager.getIconUrl(4130220000243);
         }
         else
         {
            vs.source = ResManager.getIconUrl(4130220000237);
         }
         team1.refresh(param1.team1,param1.team2,param1.status);
         team2.refresh(param1.team2,param1.team1,param1.status);
      }
      
      public function set team1(param1:CrossTeamFightActiveTeamInfo) : void
      {
         var _loc2_:Object = this._110233972team1;
         if(_loc2_ !== param1)
         {
            this._110233972team1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"team1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set team2(param1:CrossTeamFightActiveTeamInfo) : void
      {
         var _loc2_:Object = this._110233973team2;
         if(_loc2_ !== param1)
         {
            this._110233973team2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"team2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get team1() : CrossTeamFightActiveTeamInfo
      {
         return this._110233972team1;
      }
      
      [Bindable(event="propertyChange")]
      public function get team2() : CrossTeamFightActiveTeamInfo
      {
         return this._110233973team2;
      }
      
      public function set vs(param1:Image) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : Image
      {
         return this._3773vs;
      }
      
      public function init() : void
      {
         team1.init();
         team2.init();
      }
   }
}

