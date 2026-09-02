package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.XiaochudasaiPanel;
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
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class XCDSDiabetesBox extends Canvas
   {
      
      private static var clickBox:XCDSDiabetesBox;
      
      private static var view:XiaochudasaiPanel;
      
      private static var r:Rectangle;
      
      private static var d:Point;
      
      public var num:int = 1;
      
      private var uic:UIComponent;
      
      private var bm:Bitmap;
      
      private var registed:Boolean = false;
      
      public var index:int = -1;
      
      public var bomb:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"container",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               })]
            };
         }
      });
      
      private var _410956671container:UIComponent;
      
      public var type:int = -1;
      
      public function XCDSDiabetesBox()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
         this.addEventListener("creationComplete",___XCDSDiabetesBox_Canvas1_creationComplete);
      }
      
      public function destroy() : void
      {
         removeEventListener(MouseEvent.MOUSE_DOWN,mouseDown);
         removeEventListener(MouseEvent.ROLL_OVER,mouseOver);
         if(this.parent)
         {
            parent.removeChild(this);
         }
      }
      
      public function set container(param1:UIComponent) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : UIComponent
      {
         return this._410956671container;
      }
      
      public function setParam(param1:Boolean, param2:int) : void
      {
         this.bomb = param1;
         this.num = param2;
      }
      
      private function init() : void
      {
      }
      
      public function setIndex(param1:int) : void
      {
         index = param1;
         if(!registed)
         {
            if(index >= 81)
            {
               addEventListener(MouseEvent.MOUSE_DOWN,mouseDown);
               addEventListener(MouseEvent.ROLL_OVER,mouseOver);
               registed = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function mouseOver(param1:MouseEvent) : void
      {
         if(!clickBox || !param1.buttonDown)
         {
            return;
         }
         if(!view)
         {
            view = Core.getInstance().view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY) as XiaochudasaiPanel;
         }
         if(clickBox.index + 1 == this.index || clickBox.index - 1 == this.index || clickBox.index + 9 == this.index || clickBox.index - 9 == this.index)
         {
            view.checkDiabetes(clickBox.index,this.index);
         }
         clickBox = null;
      }
      
      private function mouseDown(param1:MouseEvent) : void
      {
         clickBox = this;
         trace(" index =  " + this.index + " type =  " + this.type);
         if(!stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            stage.addEventListener(MouseEvent.MOUSE_UP,mouseUp);
         }
      }
      
      private function mouseUp(param1:MouseEvent) : void
      {
         clickBox = null;
         if(stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,mouseUp);
         }
      }
      
      public function ___XCDSDiabetesBox_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function setType(param1:int) : void
      {
         if(!bm)
         {
            uic = new UIComponent();
            bm = new Bitmap();
            uic.addChild(bm);
            addChild(uic);
         }
         type = param1;
         visible = true;
         if(!r)
         {
            r = new Rectangle(0,0,50,50);
         }
         if(!d)
         {
            d = new Point(0,0);
         }
         if(!bm.bitmapData)
         {
            bm.bitmapData = new BitmapData(50,50,true,16777215);
         }
         else
         {
            bm.bitmapData.fillRect(r,16777215);
         }
         if(type >= 0 && type <= 4)
         {
            bm.bitmapData.copyPixels(XiaochudasaiPanel.rects[type],r,d);
            var _loc2_:Matrix = new Matrix();
            if(this.bomb)
            {
               _loc2_.ty = bm.bitmapData.height - XiaochudasaiPanel.rects[5].height;
               bm.bitmapData.draw(XiaochudasaiPanel.rects[5],_loc2_);
            }
            else if(this.num == 2)
            {
               _loc2_.ty = bm.bitmapData.height - XiaochudasaiPanel.rects[6].height;
               bm.bitmapData.draw(XiaochudasaiPanel.rects[6],_loc2_);
            }
            return;
         }
         visible = false;
      }
   }
}

