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
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class MysTreItem extends Canvas
   {
      
      private var _mid:Number;
      
      private var _866804303starContainer:HBox;
      
      private var _3533310slot:Slot;
      
      private var _1161797090actived:Label;
      
      private var _1526406002mysName:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":160,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Slot,
                  "id":"slot",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"TransparentSlot",
                        "movable":false,
                        "acceptable":false,
                        "stackNum":1,
                        "x":5,
                        "width":34,
                        "height":34
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"mysName",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":46,
                        "y":4
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"actived",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":117,
                        "y":24
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"starContainer",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "x":41,
                        "y":27
                     };
                  }
               })]
            };
         }
      });
      
      private var _mysActived:Boolean = false;
      
      public function MysTreItem()
      {
         super();
         mx_internal::_document = this;
         this.width = 160;
         this.height = 50;
         this.horizontalScrollPolicy = "off";
         this.styleName = "InputContent";
         this.verticalScrollPolicy = "off";
      }
      
      public function set slot(param1:Slot) : void
      {
         var _loc2_:Object = this._3533310slot;
         if(_loc2_ !== param1)
         {
            this._3533310slot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get starContainer() : HBox
      {
         return this._866804303starContainer;
      }
      
      [Bindable(event="propertyChange")]
      public function get actived() : Label
      {
         return this._1161797090actived;
      }
      
      public function set mid(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc5_:Image = null;
         _mid = param1;
         _loc2_ = GameData.d[GamePredef.TBL_MYSTRE][_mid];
         mysName.text = _loc2_["name"];
         slot.clean();
         slot.slotData = _loc2_;
         slot.type = GamePredef.TBL_MYSTRE;
         slot.giid = _mid;
         var _loc3_:int = int(_loc2_["star"]);
         if(starContainer.numChildren > 0)
         {
            starContainer.removeAllChildren();
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new Image();
            _loc5_.width = 16;
            _loc5_.height = 16;
            _loc5_.source = ResManager.ICON_EQUIP_STAR;
            starContainer.addChild(_loc5_);
            _loc4_++;
         }
      }
      
      public function set mysName(param1:Label) : void
      {
         var _loc2_:Object = this._1526406002mysName;
         if(_loc2_ !== param1)
         {
            this._1526406002mysName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysName",_loc2_,param1));
         }
      }
      
      public function set starContainer(param1:HBox) : void
      {
         var _loc2_:Object = this._866804303starContainer;
         if(_loc2_ !== param1)
         {
            this._866804303starContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starContainer",_loc2_,param1));
         }
      }
      
      public function set mysActived(param1:Boolean) : void
      {
         _mysActived = param1;
         this.filters = _mysActived ? null : [GamePredef.GRAY_FILTER];
         actived.text = _mysActived ? Language.DECORATE_PANEL[5] : Language.DECORATE_PANEL[4];
      }
      
      [Bindable(event="propertyChange")]
      public function get mysName() : Label
      {
         return this._1526406002mysName;
      }
      
      public function set actived(param1:Label) : void
      {
         var _loc2_:Object = this._1161797090actived;
         if(_loc2_ !== param1)
         {
            this._1161797090actived = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actived",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot() : Slot
      {
         return this._3533310slot;
      }
   }
}

