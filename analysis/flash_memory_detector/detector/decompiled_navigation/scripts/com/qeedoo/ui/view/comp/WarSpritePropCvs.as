package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class WarSpritePropCvs extends Canvas
   {
      
      private var _309157064propLB1:Label;
      
      private var _309157062propLB3:Label;
      
      private var _1307249202titleLB:Label;
      
      private var _309157060propLB5:Label;
      
      public var kind:Number;
      
      private var _309157063propLB2:Label;
      
      private var _309157061propLB4:Label;
      
      private var _309157059propLB6:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":155,
               "height":165,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"titleLB",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.horizontalCenter = "0";
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"property:",
                        "y":3
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":110,
                        "height":1,
                        "y":22
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"propLB1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"propLB2",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"propLB3",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"propLB4",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":94
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"propLB5",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":116
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"propLB6",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":138
                     };
                  }
               })]
            };
         }
      });
      
      public function WarSpritePropCvs()
      {
         super();
         mx_internal::_document = this;
         this.width = 155;
         this.height = 165;
         this.styleName = "CanvasBorder";
      }
      
      public function set propLB6(param1:Label) : void
      {
         var _loc2_:Object = this._309157059propLB6;
         if(_loc2_ !== param1)
         {
            this._309157059propLB6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLB6",_loc2_,param1));
         }
      }
      
      public function updateView(param1:Number) : void
      {
         var _loc5_:Label = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(kind == 1)
         {
            titleLB.text = Language.WAR_SPRITE[6];
         }
         else
         {
            titleLB.text = Language.WAR_SPRITE[7];
         }
         var _loc2_:Object = GameData.d[GamePredef.TBL_WAR_SPRITE][param1];
         var _loc3_:int = 1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            _loc5_ = this["propLB" + _loc4_] as Label;
            if(_loc2_)
            {
               _loc6_ = Number(_loc2_["pT" + _loc3_]);
               _loc7_ = Number(_loc2_["pN" + _loc3_]);
               if(_loc6_)
               {
                  if(_loc6_ == 5 || _loc6_ == 7)
                  {
                     _loc3_++;
                     _loc6_ = Number(_loc2_["pT" + _loc3_]);
                     _loc7_ = Number(_loc2_["pN" + _loc3_]);
                     this["propLB" + _loc4_].text = Language.WAR_SPRITE_PROP[_loc6_].toString().replace("{num}",_loc7_ / 100);
                     _loc3_++;
                  }
                  else
                  {
                     this["propLB" + _loc4_].text = Language.WAR_SPRITE_PROP[_loc6_].toString().replace("{num}",_loc7_ / 100);
                     _loc3_++;
                  }
               }
            }
            else
            {
               _loc5_.text = "Đã Max Cấp";
            }
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propLB6() : Label
      {
         return this._309157059propLB6;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set titleLB(param1:Label) : void
      {
         var _loc2_:Object = this._1307249202titleLB;
         if(_loc2_ !== param1)
         {
            this._1307249202titleLB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleLB",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleLB() : Label
      {
         return this._1307249202titleLB;
      }
      
      public function set propLB1(param1:Label) : void
      {
         var _loc2_:Object = this._309157064propLB1;
         if(_loc2_ !== param1)
         {
            this._309157064propLB1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLB1",_loc2_,param1));
         }
      }
      
      public function set propLB2(param1:Label) : void
      {
         var _loc2_:Object = this._309157063propLB2;
         if(_loc2_ !== param1)
         {
            this._309157063propLB2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLB2",_loc2_,param1));
         }
      }
      
      public function set propLB3(param1:Label) : void
      {
         var _loc2_:Object = this._309157062propLB3;
         if(_loc2_ !== param1)
         {
            this._309157062propLB3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLB3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propLB1() : Label
      {
         return this._309157064propLB1;
      }
      
      [Bindable(event="propertyChange")]
      public function get propLB2() : Label
      {
         return this._309157063propLB2;
      }
      
      [Bindable(event="propertyChange")]
      public function get propLB3() : Label
      {
         return this._309157062propLB3;
      }
      
      [Bindable(event="propertyChange")]
      public function get propLB4() : Label
      {
         return this._309157061propLB4;
      }
      
      [Bindable(event="propertyChange")]
      public function get propLB5() : Label
      {
         return this._309157060propLB5;
      }
      
      public function set propLB4(param1:Label) : void
      {
         var _loc2_:Object = this._309157061propLB4;
         if(_loc2_ !== param1)
         {
            this._309157061propLB4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLB4",_loc2_,param1));
         }
      }
      
      public function set propLB5(param1:Label) : void
      {
         var _loc2_:Object = this._309157060propLB5;
         if(_loc2_ !== param1)
         {
            this._309157060propLB5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLB5",_loc2_,param1));
         }
      }
   }
}

