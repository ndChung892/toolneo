package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class GuideAlertPanel extends DragableCanvas
   {
      
      private var _guideStep:Object;
      
      private var _1464826535_title:String;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":339,
               "height":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___GuideAlertPanel_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnBeginGuide",
                        "enabled":true
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function GuideAlertPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 339;
         this.height = 300;
         this.styleName = "CanvasGuide";
         this.movable = false;
      }
      
      private function set _title(param1:String) : void
      {
         var _loc2_:Object = this._1464826535_title;
         if(_loc2_ !== param1)
         {
            this._1464826535_title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_title",_loc2_,param1));
         }
      }
      
      public function ___GuideAlertPanel_Button1_click(param1:MouseEvent) : void
      {
         findNpc();
      }
      
      public function findNpc() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Npc = null;
         if(Boolean(_guideStep) && _guideStep.findNpcId > 0)
         {
            _loc1_ = _core.data.gameDataIndex[GamePredef.TBL_NPC][_core.player.posMapId];
            for each(_loc2_ in _loc1_)
            {
               if(_loc2_.id == _guideStep.findNpcId)
               {
                  _loc3_ = _core.getNpc(_loc2_.id);
                  _loc3_.view.clickNpc();
                  break;
               }
            }
         }
         visible = false;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      private function get _title() : String
      {
         return this._1464826535_title;
      }
      
      public function init(param1:Object) : void
      {
         visible = true;
         _guideStep = param1;
      }
   }
}

