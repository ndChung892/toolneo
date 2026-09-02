package com.qeedoo.ui.view.comp
{
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
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class PentagonCanvas extends SimpleCanvas
   {
      
      private var propertyGraphics:Shape = new Shape();
      
      private var _104584982nameA:Label;
      
      private var maxLen:Number = 40;
      
      private var _104584983nameB:Label;
      
      private var _showInfo:Boolean = false;
      
      private var _115791uic:UIComponent;
      
      private var _finalColor:uint = 6684927;
      
      private var _104584984nameC:Label;
      
      private var _propColor:uint = 65280;
      
      private var _lineColor:uint = 3377407;
      
      private var _104584985nameD:Label;
      
      private var _lineShow:Boolean = true;
      
      private var miniRatio:Number = 0.05;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":100,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"uic"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameA",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":-1};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameB",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.left = "86";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":34};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameC",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.left = "74";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":78};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameD",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                     this.right = "72";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":78};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameE",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                     this.right = "85";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":34};
                  }
               })]
            };
         }
      });
      
      private var _104584986nameE:Label;
      
      public function PentagonCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 100;
         this.height = 100;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___PentagonCanvas_SimpleCanvas1_creationComplete);
      }
      
      public function set propColor(param1:uint) : void
      {
         _propColor = param1;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set showInfo(param1:Boolean) : void
      {
         _showInfo = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameC() : Label
      {
         return this._104584984nameC;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameD() : Label
      {
         return this._104584985nameD;
      }
      
      public function set setName(param1:Array) : void
      {
         nameA.text = param1[0];
         nameB.text = param1[1];
         nameC.text = param1[2];
         nameD.text = param1[3];
         nameE.text = param1[4];
      }
      
      [Bindable(event="propertyChange")]
      public function get nameA() : Label
      {
         return this._104584982nameA;
      }
      
      public function set finalColor(param1:uint) : void
      {
         _finalColor = param1;
      }
      
      public function set lineColor(param1:uint) : void
      {
         _lineColor = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameB() : Label
      {
         return this._104584983nameB;
      }
      
      public function set lineShow(param1:Boolean) : void
      {
         _lineShow = param1;
      }
      
      public function set nameA(param1:Label) : void
      {
         var _loc2_:Object = this._104584982nameA;
         if(_loc2_ !== param1)
         {
            this._104584982nameA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameA",_loc2_,param1));
         }
      }
      
      public function set uic(param1:UIComponent) : void
      {
         var _loc2_:Object = this._115791uic;
         if(_loc2_ !== param1)
         {
            this._115791uic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uic",_loc2_,param1));
         }
      }
      
      public function set nameB(param1:Label) : void
      {
         var _loc2_:Object = this._104584983nameB;
         if(_loc2_ !== param1)
         {
            this._104584983nameB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameB",_loc2_,param1));
         }
      }
      
      public function set nameC(param1:Label) : void
      {
         var _loc2_:Object = this._104584984nameC;
         if(_loc2_ !== param1)
         {
            this._104584984nameC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameC",_loc2_,param1));
         }
      }
      
      public function set nameD(param1:Label) : void
      {
         var _loc2_:Object = this._104584985nameD;
         if(_loc2_ !== param1)
         {
            this._104584985nameD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameD",_loc2_,param1));
         }
      }
      
      public function set nameE(param1:Label) : void
      {
         var _loc2_:Object = this._104584986nameE;
         if(_loc2_ !== param1)
         {
            this._104584986nameE = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameE",_loc2_,param1));
         }
      }
      
      public function ___PentagonCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get nameE() : Label
      {
         return this._104584986nameE;
      }
      
      [Bindable(event="propertyChange")]
      public function get uic() : UIComponent
      {
         return this._115791uic;
      }
      
      private function initView() : void
      {
         var _loc4_:Shape = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc1_:Array = new Array();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            _loc1_[_loc3_] = Math.cos(_loc3_ * 2 * Math.PI / 5) * maxLen;
            _loc2_[_loc3_] = Math.sin(_loc3_ * 2 * Math.PI / 5) * maxLen;
            _loc3_++;
         }
         if(_lineShow)
         {
            _loc4_ = new Shape();
            _loc4_.graphics.lineStyle(2,_lineColor,0.9);
            _loc4_.graphics.moveTo(_loc1_[0],_loc2_[0]);
            _loc5_ = 1;
            while(_loc5_ < 5)
            {
               _loc4_.graphics.lineTo(_loc1_[_loc5_],_loc2_[_loc5_]);
               _loc5_++;
            }
            _loc4_.graphics.lineTo(_loc1_[0],_loc2_[0]);
            _loc4_.graphics.lineStyle(1,_lineColor,0.6);
            _loc6_ = 0;
            while(_loc6_ < 5)
            {
               _loc4_.graphics.moveTo(0,0);
               _loc4_.graphics.lineTo(_loc1_[_loc6_],_loc2_[_loc6_]);
               _loc6_++;
            }
            uic.addChild(_loc4_);
         }
         uic.x = width / 2 - 1;
         uic.y = height / 2 + 3;
         uic.rotation = -90;
      }
      
      private function drawPentagon(param1:int, param2:Array, param3:uint, param4:Number) : void
      {
         var _loc5_:Array = new Array();
         var _loc6_:Array = new Array();
         var _loc7_:int = 0;
         while(_loc7_ < 5)
         {
            if(param2[_loc7_] > param1)
            {
               _loc5_[_loc7_] = Math.cos(_loc7_ * 2 * Math.PI / 5) * maxLen;
               _loc6_[_loc7_] = Math.sin(_loc7_ * 2 * Math.PI / 5) * maxLen;
            }
            else if(param2[_loc7_] / param1 < miniRatio)
            {
               _loc5_[_loc7_] = Math.cos(_loc7_ * 2 * Math.PI / 5) * maxLen * miniRatio;
               _loc6_[_loc7_] = Math.sin(_loc7_ * 2 * Math.PI / 5) * maxLen * miniRatio;
            }
            else
            {
               _loc5_[_loc7_] = Math.cos(_loc7_ * 2 * Math.PI / 5) * maxLen * param2[_loc7_] / param1;
               _loc6_[_loc7_] = Math.sin(_loc7_ * 2 * Math.PI / 5) * maxLen * param2[_loc7_] / param1;
            }
            _loc7_++;
         }
         propertyGraphics.graphics.beginFill(param3,param4);
         propertyGraphics.graphics.moveTo(_loc5_[0],_loc6_[0]);
         var _loc8_:int = 1;
         while(_loc8_ < 5)
         {
            propertyGraphics.graphics.lineTo(_loc5_[_loc8_],_loc6_[_loc8_]);
            _loc8_++;
         }
         propertyGraphics.graphics.lineTo(_loc5_[0],_loc6_[0]);
         propertyGraphics.graphics.endFill();
      }
      
      public function showProperty(param1:int, param2:Array, param3:Array = null) : void
      {
         propertyGraphics.graphics.clear();
         if(param3 != null)
         {
            drawPentagon(param1,param3,_finalColor,0.3);
            nameA.toolTip = "(" + param2[0] + "," + param3[0] + ")";
            nameB.toolTip = "(" + param2[1] + "," + param3[1] + ")";
            nameC.toolTip = "(" + param2[2] + "," + param3[2] + ")";
            nameD.toolTip = "(" + param2[3] + "," + param3[3] + ")";
            nameE.toolTip = "(" + param2[4] + "," + param3[4] + ")";
         }
         else
         {
            nameA.toolTip = "(" + param2[0] + ")";
            nameB.toolTip = "(" + param2[1] + ")";
            nameC.toolTip = "(" + param2[2] + ")";
            nameD.toolTip = "(" + param2[3] + ")";
            nameE.toolTip = "(" + param2[4] + ")";
         }
         if(_showInfo)
         {
            nameA.text += nameA.toolTip;
            nameB.text += nameB.toolTip;
            nameC.text += nameC.toolTip;
            nameD.text += nameD.toolTip;
            nameE.text += nameE.toolTip;
         }
         drawPentagon(param1,param2,_propColor,0.5);
         uic.addChild(propertyGraphics);
      }
   }
}

