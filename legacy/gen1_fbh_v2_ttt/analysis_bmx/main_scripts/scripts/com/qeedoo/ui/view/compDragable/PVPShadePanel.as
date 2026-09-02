package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class PVPShadePanel extends Canvas
   {
      
      private var _347234980backImg:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"backImg",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "percentWidth":100,
                     "percentHeight":100
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{"click":"___PVPShadePanel_Button1_click"},
               "stylesFactory":function():void
               {
                  this.right = "52";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":480,
                     "styleName":"BtnWbQuit",
                     "height":50,
                     "width":50
                  };
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function PVPShadePanel()
      {
         super();
         mx_internal::_document = this;
         this.x = 0;
         this.y = 0;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.addEventListener("creationComplete",___PVPShadePanel_Canvas1_creationComplete);
      }
      
      [Bindable(event="propertyChange")]
      public function get backImg() : Image
      {
         return this._347234980backImg;
      }
      
      public function showPVPShadePanel() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(_loc1_)
         {
            _loc1_.hide();
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_ACTIVITY);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_GROUP);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_SYS);
         if(_loc1_)
         {
            _loc1_.setSysBtnBarState(false);
         }
         this.visible = true;
      }
      
      public function closePVPShadePanel() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(_loc1_)
         {
            _loc1_.show();
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_ACTIVITY);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_GROUP);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_SYS);
         if(_loc1_)
         {
            _loc1_.setSysBtnBarState(true);
         }
         _loc1_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         this.visible = false;
      }
      
      public function ___PVPShadePanel_Button1_click(param1:MouseEvent) : void
      {
         exitPVPRoom();
      }
      
      public function showPVPShadePanel2() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(_loc1_)
         {
            _loc1_.hide();
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_ACTIVITY);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_GROUP);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         _loc1_ = _core.view.getUI(ViewManager.MAIN_SYS);
         if(_loc1_)
         {
            _loc1_.setSysBtnBarState(false);
         }
         _loc1_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
         if(!_loc1_ || !_loc1_.visible)
         {
            this.visible = true;
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function exitPVPRoom() : void
      {
         _core.remote.call("leavePVPRoom",null);
      }
      
      private function init() : void
      {
         backImg.source = ResManager.hash(ResManager.getIconUrlNoHash(3130090000056));
      }
      
      public function set backImg(param1:Image) : void
      {
         var _loc2_:Object = this._347234980backImg;
         if(_loc2_ !== param1)
         {
            this._347234980backImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backImg",_loc2_,param1));
         }
      }
      
      public function ___PVPShadePanel_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

