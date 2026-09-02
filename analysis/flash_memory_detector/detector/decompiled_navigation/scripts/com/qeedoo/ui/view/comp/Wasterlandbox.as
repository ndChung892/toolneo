package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.compDragable.Wasteland;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   
   public class Wasterlandbox extends Canvas
   {
      
      private static var yellowbm:Sprite;
      
      private var bm:Bitmap;
      
      private var uic:UIComponent;
      
      private var index:int = -1;
      
      private var covered:Boolean = false;
      
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
      
      public function Wasterlandbox()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
         this.addEventListener("creationComplete",___Wasterlandbox_Canvas1_creationComplete);
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : UIComponent
      {
         return this._410956671container;
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
      
      public function click(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Alert = null;
         var _loc4_:IUITextField = null;
         if(this.index == 3)
         {
            Core.getInstance().sysMidNote(Language.SUMMER_GAME_PANEL[66]);
            return;
         }
         if(this.type != -1)
         {
            if(Wasteland.showAlert)
            {
               _loc2_ = Language.ANNIVERSARY_LANG[19];
               _loc3_ = Alert.show(_loc2_,"",Alert.YES | Alert.NO,null,showChange);
               _loc4_ = _loc3_.mx_internal::alertForm.mx_internal::textField;
               _loc4_.htmlText = _loc2_;
               _loc4_.filters = GamePredef.FILTER_TEXT1;
            }
            else
            {
               Core.getInstance().remote.call("wastelandChangeBox",null,index);
            }
            return;
         }
         Core.getInstance().remote.call("wastelandSetBox",null,index);
      }
      
      private function showChange(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            Core.getInstance().remote.call("wastelandChangeBox",null,index);
         }
      }
      
      private function init() : void
      {
      }
      
      public function ___Wasterlandbox_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function setIndex(param1:int) : void
      {
         index = param1;
      }
      
      public function mouseOver(param1:MouseEvent) : void
      {
         if(!yellowbm)
         {
            return;
         }
         yellowbm.x = this.x - 4;
         yellowbm.y = this.y - 4;
         this.parent.addChild(yellowbm);
      }
      
      public function refresh(param1:BitmapData) : void
      {
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function register() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,mouseOver);
         addEventListener(MouseEvent.ROLL_OUT,mouseOut);
         addEventListener(MouseEvent.CLICK,click);
      }
      
      public function mouseOut(param1:MouseEvent) : void
      {
         if(!yellowbm)
         {
            return;
         }
         if(yellowbm.parent)
         {
            yellowbm.parent.removeChild(yellowbm);
         }
      }
      
      public function setType(param1:int, param2:Boolean) : void
      {
         var _loc3_:Bitmap = null;
         if(!bm)
         {
            uic = new UIComponent();
            bm = new Bitmap();
            uic.addChild(bm);
            addChild(uic);
            if(!yellowbm)
            {
               yellowbm = new Sprite();
               yellowbm.mouseChildren = false;
               yellowbm.mouseEnabled = false;
               _loc3_ = new Bitmap();
               _loc3_.bitmapData = Wasteland.yellowBMD;
               yellowbm.addChild(_loc3_);
            }
         }
         type = param1;
         covered = param2;
         if(type == -1)
         {
            bm.bitmapData = Wasteland.backBMD;
         }
         else if(!covered)
         {
            bm.bitmapData = Wasteland.pic_bmds[type];
         }
         else
         {
            bm.bitmapData = Wasteland.picc_bmds[type];
         }
      }
   }
}

