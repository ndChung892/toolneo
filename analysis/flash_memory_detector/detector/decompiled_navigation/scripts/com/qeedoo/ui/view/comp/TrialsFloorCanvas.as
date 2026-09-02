package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class TrialsFloorCanvas extends SimpleCanvas
   {
      
      private var _index:Number = -1;
      
      private var _705847778imgStar3:Image;
      
      private var _fiterBtn:Boolean;
      
      private var _705847779imgStar2:Image;
      
      private var _815537921trialsBtn:Button;
      
      private var _705847780imgStar1:Image;
      
      private var _sc:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":163,
               "height":75,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"trialsBtn",
                  "events":{"click":"__trialsBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":163,
                        "height":75,
                        "x":0,
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":48,
                        "y":44,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":73,
                        "y":44,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":97,
                        "y":44,
                        "width":20,
                        "height":20
                     };
                  }
               })]
            };
         }
      });
      
      public function TrialsFloorCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 163;
         this.height = 75;
         this.addEventListener("creationComplete",___TrialsFloorCanvas_SimpleCanvas1_creationComplete);
      }
      
      public function __trialsBtn_click(param1:MouseEvent) : void
      {
         selectFloor();
      }
      
      public function set imgStar2(param1:Image) : void
      {
         var _loc2_:Object = this._705847779imgStar2;
         if(_loc2_ !== param1)
         {
            this._705847779imgStar2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar2",_loc2_,param1));
         }
      }
      
      public function set imgStar3(param1:Image) : void
      {
         var _loc2_:Object = this._705847778imgStar3;
         if(_loc2_ !== param1)
         {
            this._705847778imgStar3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar3",_loc2_,param1));
         }
      }
      
      public function set trialsBtn(param1:Button) : void
      {
         var _loc2_:Object = this._815537921trialsBtn;
         if(_loc2_ !== param1)
         {
            this._815537921trialsBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialsBtn",_loc2_,param1));
         }
      }
      
      public function ___TrialsFloorCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get trialsBtn() : Button
      {
         return this._815537921trialsBtn;
      }
      
      public function get scord() : Number
      {
         return _sc;
      }
      
      public function cancelSelectFloor() : void
      {
         this.trialsBtn.filters = [];
      }
      
      private function init() : void
      {
         setStarLev(_sc);
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar1() : Image
      {
         return this._705847780imgStar1;
      }
      
      public function cleanStarLev() : void
      {
         this.imgStar1.source = ResManager.IMG_STARS_INS_DARK;
         this.imgStar1.source = ResManager.IMG_STARS_INS_DARK;
         this.imgStar1.source = ResManager.IMG_STARS_INS_DARK;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar2() : Image
      {
         return this._705847779imgStar2;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar3() : Image
      {
         return this._705847778imgStar3;
      }
      
      public function set findex(param1:Number) : void
      {
         _index = param1;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function setStarLev(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 > 65)
         {
            _loc2_ = 3;
         }
         else if(param1 > 50)
         {
            _loc2_ = 2;
         }
         else if(param1 > 1)
         {
            _loc2_ = 1;
         }
         if(!_fiterBtn)
         {
            this.trialsBtn.styleName = "trialsBtn0" + _index;
         }
         else
         {
            this.trialsBtn.styleName = "trialsBtn0" + _index + "1";
         }
         var _loc3_:uint = 1;
         while(_loc3_ < 4)
         {
            if(_loc3_ > _loc2_)
            {
               this["imgStar" + _loc3_].source = ResManager.IMG_STARS_INS_DARK;
               this["imgStar" + _loc3_].visible = false;
            }
            else
            {
               this["imgStar" + _loc3_].source = ResManager.IMG_STARS_INS_LIGHT;
               this["imgStar" + _loc3_].visible = true;
            }
            _loc3_++;
         }
      }
      
      public function selectFloor() : void
      {
         this.trialsBtn.filters = [GamePredef.FILTER_NOALLOW_SELECTED];
      }
      
      public function set scord(param1:Number) : void
      {
         _sc = param1;
      }
      
      public function set imgStar1(param1:Image) : void
      {
         var _loc2_:Object = this._705847780imgStar1;
         if(_loc2_ !== param1)
         {
            this._705847780imgStar1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar1",_loc2_,param1));
         }
      }
      
      public function get findex() : Number
      {
         return _index;
      }
      
      public function set fiterBtn(param1:Boolean) : void
      {
         _fiterBtn = param1;
      }
      
      public function get fiterBtn() : Boolean
      {
         return _fiterBtn;
      }
   }
}

