package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
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
   import mx.containers.Tile;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class JXHDAwardItem extends Canvas
   {
      
      private var _data:Object;
      
      private var _1177280081itemList:Tile;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"title",
                  "stylesFactory":function():void
                  {
                     this.top = "3";
                     this.left = "10";
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"text":""};
                  }
               }),new UIComponentDescriptor({
                  "type":Tile,
                  "id":"itemList",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 5;
                     this.top = "26";
                     this.bottom = "10";
                     this.left = "5";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "direction":"horizontal",
                        "width":370
                     };
                  }
               })]
            };
         }
      });
      
      private var _110371416title:RoundedLabel;
      
      public function JXHDAwardItem()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 70;
      }
      
      public function set itemList(param1:Tile) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
         }
      }
      
      public function setData(param1:*) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:ItemSlot = null;
         itemList.removeAllChildren();
         title.text = "";
         title.text = param1.title;
         for(_loc2_ in param1.list)
         {
            if(param1.list[_loc2_])
            {
               _loc3_ = GameData.d[int(param1.list[_loc2_].t)][int(param1.list[_loc2_].i)];
               _loc4_ = new ItemSlot();
               _loc4_.acceptable = false;
               _loc4_.movable = false;
               _loc4_.slotType = Slot.SLOT_EQUFUNC_ITEM;
               _loc4_.type = int(param1.list[_loc2_].t);
               _loc4_.giid = int(param1.list[_loc2_].ii);
               _loc4_.slotData = _loc3_;
               _loc4_.stackNum = int(param1.list[_loc2_].n);
               itemList.addChild(_loc4_);
            }
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : Tile
      {
         return this._1177280081itemList;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : RoundedLabel
      {
         return this._110371416title;
      }
      
      public function set title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
   }
}

