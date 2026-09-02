package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.compGameStage.BattleCreatureView;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class BattleTargetCanvas extends SimpleCanvas
   {
      
      private var _3645t1:Image;
      
      private var _98786ct3:Image;
      
      private var _3647t3:Image;
      
      private var _114999tp3:Image;
      
      private var _98785ct2:Image;
      
      private var _showData:Object = {};
      
      private var _114998tp2:Image;
      
      private var _3644t0:Image;
      
      private var _3646t2:Image;
      
      private var _3648t4:Image;
      
      private var _98784ct1:Image;
      
      private var _114997tp1:Image;
      
      private var _115000tp4:Image;
      
      private var _98783ct0:Image;
      
      private var _3064305ctp0:Image;
      
      private var _3064306ctp1:Image;
      
      private var _98787ct4:Image;
      
      private var _114996tp0:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":325,
               "height":58,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"ct0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":2,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ctp0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":2,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ct1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ctp1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ct2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":66,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ctp2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":66,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ct3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":98,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ctp3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":98,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ct4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":130,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ctp4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":130,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"t0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":170,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"tp0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":170,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"t1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":202,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"tp1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":202,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"t2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":234,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"tp2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":234,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"t3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":266,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"tp3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":266,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"t4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":298,
                        "y":2,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"tp4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":298,
                        "y":34,
                        "width":30,
                        "height":30,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _3064309ctp4:Image;
      
      private var _3064307ctp2:Image;
      
      private var _3064308ctp3:Image;
      
      public function BattleTargetCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 325;
         this.height = 58;
         this.addEventListener("creationComplete",___BattleTargetCanvas_SimpleCanvas1_creationComplete);
      }
      
      public function set t1(param1:Image) : void
      {
         var _loc2_:Object = this._3645t1;
         if(_loc2_ !== param1)
         {
            this._3645t1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ctp2() : Image
      {
         return this._3064307ctp2;
      }
      
      private function imgDown(param1:MouseEvent) : void
      {
         var _loc3_:BattleCreatureView = null;
         var _loc2_:Image = Image(param1.currentTarget);
         if(_loc2_.data)
         {
            if(_loc2_.data is BattleCreatureView)
            {
               _loc3_ = BattleCreatureView(_loc2_.data);
               if(_loc3_._cg)
               {
                  _loc3_._cg.dispatchEvent(param1);
               }
               else if(_loc3_.defaultCg)
               {
                  _loc3_.defaultCg.dispatchEvent(param1);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ctp0() : Image
      {
         return this._3064305ctp0;
      }
      
      public function set tp0(param1:Image) : void
      {
         var _loc2_:Object = this._114996tp0;
         if(_loc2_ !== param1)
         {
            this._114996tp0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tp0",_loc2_,param1));
         }
      }
      
      private function activeImage(param1:Image, param2:Object) : void
      {
         param1.visible = true;
         param1.source = ResManager.getIconUrl(param2.gameObject.iconCode);
         ResManager.setColorCode(param1,param2.gameObject.colorCode);
         param1.data = param2;
         param1.toolTip = param2.gameObject.name;
         param1.addEventListener(MouseEvent.ROLL_OVER,imgOver);
         param1.addEventListener(MouseEvent.ROLL_OUT,imgOut);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,imgDown);
      }
      
      public function set showData(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:BattleCreatureView = null;
         var _loc6_:BattleCreatureView = null;
         _showData = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            _loc3_ = 10 + _loc2_;
            if(param1[_loc2_])
            {
               _loc4_ = param1[_loc2_];
               deactiveImage(Image(this["ct" + _loc2_]));
               if(_loc4_["c"])
               {
                  _loc5_ = BattleCreatureView(_loc4_["c"]);
                  if(_loc5_.visible)
                  {
                     activeImage(Image(this["ct" + _loc2_]),_loc5_);
                  }
               }
               deactiveImage(Image(this["ctp" + _loc2_]));
               if(_loc4_["p"])
               {
                  _loc5_ = BattleCreatureView(_loc4_["p"]);
                  if(_loc5_.visible)
                  {
                     activeImage(Image(this["ctp" + _loc2_]),_loc5_);
                  }
               }
            }
            if(param1[_loc3_])
            {
               _loc4_ = param1[_loc3_];
               deactiveImage(Image(this["t" + _loc2_]));
               if(_loc4_["c"])
               {
                  _loc6_ = BattleCreatureView(_loc4_["c"]);
                  if(_loc6_.visible)
                  {
                     activeImage(Image(this["t" + _loc2_]),_loc6_);
                  }
               }
               deactiveImage(Image(this["tp" + _loc2_]));
               if(_loc4_["p"])
               {
                  _loc6_ = BattleCreatureView(_loc4_["p"]);
                  if(_loc6_.visible)
                  {
                     activeImage(Image(this["tp" + _loc2_]),_loc6_);
                  }
               }
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ct3() : Image
      {
         return this._98786ct3;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function imgOut(param1:MouseEvent) : void
      {
         var _loc4_:BattleCreatureView = null;
         var _loc2_:Image = Image(param1.currentTarget);
         var _loc3_:Array = _loc2_.filters;
         _loc3_.pop();
         _loc2_.filters = _loc3_;
         if(_loc2_.data)
         {
            if(_loc2_.data is BattleCreatureView)
            {
               _loc4_ = BattleCreatureView(_loc2_.data);
               if(_loc4_._cg)
               {
                  _loc4_._cg.dispatchEvent(param1);
               }
               else if(_loc4_.defaultCg)
               {
                  _loc4_.defaultCg.dispatchEvent(param1);
               }
            }
         }
      }
      
      public function set t2(param1:Image) : void
      {
         var _loc2_:Object = this._3646t2;
         if(_loc2_ !== param1)
         {
            this._3646t2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2",_loc2_,param1));
         }
      }
      
      public function set t4(param1:Image) : void
      {
         var _loc2_:Object = this._3648t4;
         if(_loc2_ !== param1)
         {
            this._3648t4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t4",_loc2_,param1));
         }
      }
      
      public function clearView() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this["t" + _loc1_].visible = false;
            this["t" + _loc1_].removeEventListener(MouseEvent.ROLL_OVER,imgOver);
            this["t" + _loc1_].removeEventListener(MouseEvent.ROLL_OUT,imgOut);
            this["t" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,imgDown);
            this["tp" + _loc1_].visible = false;
            this["tp" + _loc1_].removeEventListener(MouseEvent.ROLL_OVER,imgOver);
            this["tp" + _loc1_].removeEventListener(MouseEvent.ROLL_OUT,imgOut);
            this["tp" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,imgDown);
            this["ct" + _loc1_].visible = false;
            this["ct" + _loc1_].removeEventListener(MouseEvent.ROLL_OVER,imgOver);
            this["ct" + _loc1_].removeEventListener(MouseEvent.ROLL_OUT,imgOut);
            this["ct" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,imgDown);
            this["ctp" + _loc1_].visible = false;
            this["ctp" + _loc1_].removeEventListener(MouseEvent.ROLL_OVER,imgOver);
            this["ctp" + _loc1_].removeEventListener(MouseEvent.ROLL_OUT,imgOut);
            this["ctp" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,imgDown);
            _loc1_++;
         }
      }
      
      public function set ctp0(param1:Image) : void
      {
         var _loc2_:Object = this._3064305ctp0;
         if(_loc2_ !== param1)
         {
            this._3064305ctp0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ctp0",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
      }
      
      public function set t3(param1:Image) : void
      {
         var _loc2_:Object = this._3647t3;
         if(_loc2_ !== param1)
         {
            this._3647t3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t2() : Image
      {
         return this._3646t2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ctp4() : Image
      {
         return this._3064309ctp4;
      }
      
      public function set ctp4(param1:Image) : void
      {
         var _loc2_:Object = this._3064309ctp4;
         if(_loc2_ !== param1)
         {
            this._3064309ctp4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ctp4",_loc2_,param1));
         }
      }
      
      public function set ctp2(param1:Image) : void
      {
         var _loc2_:Object = this._3064307ctp2;
         if(_loc2_ !== param1)
         {
            this._3064307ctp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ctp2",_loc2_,param1));
         }
      }
      
      public function set tp1(param1:Image) : void
      {
         var _loc2_:Object = this._114997tp1;
         if(_loc2_ !== param1)
         {
            this._114997tp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tp1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tp0() : Image
      {
         return this._114996tp0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tp2() : Image
      {
         return this._114998tp2;
      }
      
      private function imgOver(param1:MouseEvent) : void
      {
         var _loc4_:BattleCreatureView = null;
         var _loc2_:Image = Image(param1.currentTarget);
         var _loc3_:Array = _loc2_.filters;
         _loc3_.push(GamePredef.FILTER_SLOT_SELECTED);
         _loc2_.filters = _loc3_;
         if(_loc2_.data)
         {
            if(_loc2_.data is BattleCreatureView)
            {
               _loc4_ = BattleCreatureView(_loc2_.data);
               if(_loc4_._cg)
               {
                  _loc4_._cg.dispatchEvent(param1);
               }
               else if(_loc4_.defaultCg)
               {
                  _loc4_.defaultCg.dispatchEvent(param1);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tp4() : Image
      {
         return this._115000tp4;
      }
      
      [Bindable(event="propertyChange")]
      public function get t1() : Image
      {
         return this._3645t1;
      }
      
      [Bindable(event="propertyChange")]
      public function get t3() : Image
      {
         return this._3647t3;
      }
      
      public function set ct1(param1:Image) : void
      {
         var _loc2_:Object = this._98784ct1;
         if(_loc2_ !== param1)
         {
            this._98784ct1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t0() : Image
      {
         return this._3644t0;
      }
      
      public function set ct3(param1:Image) : void
      {
         var _loc2_:Object = this._98786ct3;
         if(_loc2_ !== param1)
         {
            this._98786ct3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct3",_loc2_,param1));
         }
      }
      
      public function set ct0(param1:Image) : void
      {
         var _loc2_:Object = this._98783ct0;
         if(_loc2_ !== param1)
         {
            this._98783ct0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t4() : Image
      {
         return this._3648t4;
      }
      
      public function set ct2(param1:Image) : void
      {
         var _loc2_:Object = this._98785ct2;
         if(_loc2_ !== param1)
         {
            this._98785ct2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct2",_loc2_,param1));
         }
      }
      
      public function set ct4(param1:Image) : void
      {
         var _loc2_:Object = this._98787ct4;
         if(_loc2_ !== param1)
         {
            this._98787ct4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tp3() : Image
      {
         return this._114999tp3;
      }
      
      private function deactiveImage(param1:Image) : void
      {
         param1.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get tp1() : Image
      {
         return this._114997tp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct0() : Image
      {
         return this._98783ct0;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct1() : Image
      {
         return this._98784ct1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct2() : Image
      {
         return this._98785ct2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct4() : Image
      {
         return this._98787ct4;
      }
      
      public function set ctp1(param1:Image) : void
      {
         var _loc2_:Object = this._3064306ctp1;
         if(_loc2_ !== param1)
         {
            this._3064306ctp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ctp1",_loc2_,param1));
         }
      }
      
      public function set ctp3(param1:Image) : void
      {
         var _loc2_:Object = this._3064308ctp3;
         if(_loc2_ !== param1)
         {
            this._3064308ctp3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ctp3",_loc2_,param1));
         }
      }
      
      public function velidateImgVisible() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            if(this["t" + _loc1_].visible)
            {
               if(!this["t" + _loc1_].data || !this["t" + _loc1_].data.visible)
               {
                  deactiveImage(Image(this["t" + _loc1_]));
               }
            }
            if(this["tp" + _loc1_].visible)
            {
               if(!this["tp" + _loc1_].data || !this["tp" + _loc1_].data.visible)
               {
                  deactiveImage(Image(this["tp" + _loc1_]));
               }
            }
            if(this["ct" + _loc1_].visible)
            {
               if(!this["ct" + _loc1_].data || !this["ct" + _loc1_].data.visible)
               {
                  deactiveImage(Image(this["ct" + _loc1_]));
               }
            }
            if(this["ctp" + _loc1_].visible)
            {
               if(!this["ctp" + _loc1_].data || !this["ctp" + _loc1_].data.visible)
               {
                  deactiveImage(Image(this["ctp" + _loc1_]));
               }
            }
            _loc1_++;
         }
      }
      
      public function set tp4(param1:Image) : void
      {
         var _loc2_:Object = this._115000tp4;
         if(_loc2_ !== param1)
         {
            this._115000tp4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tp4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ctp3() : Image
      {
         return this._3064308ctp3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ctp1() : Image
      {
         return this._3064306ctp1;
      }
      
      public function set tp2(param1:Image) : void
      {
         var _loc2_:Object = this._114998tp2;
         if(_loc2_ !== param1)
         {
            this._114998tp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tp2",_loc2_,param1));
         }
      }
      
      public function set tp3(param1:Image) : void
      {
         var _loc2_:Object = this._114999tp3;
         if(_loc2_ !== param1)
         {
            this._114999tp3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tp3",_loc2_,param1));
         }
      }
      
      public function ___BattleTargetCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set t0(param1:Image) : void
      {
         var _loc2_:Object = this._3644t0;
         if(_loc2_ !== param1)
         {
            this._3644t0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t0",_loc2_,param1));
         }
      }
   }
}

