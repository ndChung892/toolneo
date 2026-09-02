package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class WarSpriteCvs extends Canvas
   {
      
      private var _69784570levelLB:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":130,
               "height":65,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"image",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":4};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameLB",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":60,
                        "y":7,
                        "width":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"levelLB",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":68,
                        "y":35,
                        "width":50
                     };
                  }
               })]
            };
         }
      });
      
      public var wspId:Number;
      
      private var _1052832447nameLB:Label;
      
      public var selected:Boolean;
      
      private var _100313435image:Image;
      
      public var resCode:Number;
      
      public var wspName:String;
      
      public function WarSpriteCvs()
      {
         super();
         mx_internal::_document = this;
         this.width = 130;
         this.height = 65;
         this.addEventListener("creationComplete",___WarSpriteCvs_Canvas1_creationComplete);
      }
      
      public function set nameLB(param1:Label) : void
      {
         var _loc2_:Object = this._1052832447nameLB;
         if(_loc2_ !== param1)
         {
            this._1052832447nameLB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLB",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLB() : Label
      {
         return this._1052832447nameLB;
      }
      
      public function updateView() : void
      {
         var _loc1_:Object = GameData.d[GamePredef.TBL_WAR_SPRITE][wspId];
         var _loc2_:String = _loc1_["level"];
         levelLB.text = Language.WAR_SPRITE[5].toString().replace("{num}",_loc2_);
         if(selected)
         {
            this.styleName = "Selected";
         }
         else
         {
            this.styleName = null;
         }
      }
      
      private function initView() : void
      {
         image.source = ResManager.getIconUrl(resCode);
         nameLB.text = wspName;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Image
      {
         return this._100313435image;
      }
      
      public function ___WarSpriteCvs_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function set levelLB(param1:Label) : void
      {
         var _loc2_:Object = this._69784570levelLB;
         if(_loc2_ !== param1)
         {
            this._69784570levelLB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLB",_loc2_,param1));
         }
      }
      
      public function set image(param1:Image) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLB() : Label
      {
         return this._69784570levelLB;
      }
   }
}

