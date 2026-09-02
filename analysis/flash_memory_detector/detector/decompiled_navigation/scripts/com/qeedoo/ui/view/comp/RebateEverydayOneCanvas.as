package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class RebateEverydayOneCanvas extends SimpleCanvas
   {
      
      private var _iid:Number;
      
      private var _1721933570nameLab:Label;
      
      private var _1649909124numberLab:Label;
      
      private var _lab:String;
      
      private var _alert:Alert;
      
      private var _97884btn:Button;
      
      private var _3242771item:ItemSlot;
      
      private var _1524928035wordLab:Label;
      
      private var _number:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":190,
               "height":120,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":18,
                        "y":18,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"马上兑换",
                        "x":45,
                        "y":80,
                        "width":100,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameLab",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":55,
                        "y":15,
                        "width":135,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"wordLab",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":55,
                        "y":35,
                        "width":135,
                        "height":20,
                        "text":"兑换消耗:"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"numberLab",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":55,
                        "y":55,
                        "width":135,
                        "height":20
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function RebateEverydayOneCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 120;
         this.styleName = "CanvasBorder";
         this.addEventListener("creationComplete",___RebateEverydayOneCanvas_SimpleCanvas1_creationComplete);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLab() : Label
      {
         return this._1721933570nameLab;
      }
      
      public function set nameLab(param1:Label) : void
      {
         var _loc2_:Object = this._1721933570nameLab;
         if(_loc2_ !== param1)
         {
            this._1721933570nameLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLab",_loc2_,param1));
         }
      }
      
      public function set wordLab(param1:Label) : void
      {
         var _loc2_:Object = this._1524928035wordLab;
         if(_loc2_ !== param1)
         {
            this._1524928035wordLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wordLab",_loc2_,param1));
         }
      }
      
      public function set numberLab(param1:Label) : void
      {
         var _loc2_:Object = this._1649909124numberLab;
         if(_loc2_ !== param1)
         {
            this._1649909124numberLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberLab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberLab() : Label
      {
         return this._1649909124numberLab;
      }
      
      public function set Num(param1:Number) : void
      {
         _number = param1;
         if(initialized)
         {
            numberLab.htmlText = Language.REBATE_EVERYDAY_PANEL[4].replace("{num}",_number);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      private function initData() : void
      {
         if(_number)
         {
            this.Num = _number;
         }
         if(_iid)
         {
            this.ItemData = _iid;
         }
         if(_lab)
         {
            this.Lab = _lab;
         }
         this.x = 8;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set Lab(param1:String) : void
      {
         var _loc2_:Number = NaN;
         _lab = param1;
         if(initialized)
         {
            _loc2_ = 0;
            if(Boolean(item.slotData) && Boolean(item.slotData.color))
            {
               _loc2_ = Number(item.slotData.color);
            }
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
            _lab = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc2_] + "\'>" + _lab + "</font>";
            nameLab.htmlText = _lab;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      public function get Num() : Number
      {
         return _number;
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         clickBtn();
      }
      
      [Bindable(event="propertyChange")]
      public function get wordLab() : Label
      {
         return this._1524928035wordLab;
      }
      
      public function set item(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      private function clickBtn() : void
      {
         var _loc1_:String = "";
         _loc1_ += Language.REBATE_EVERYDAY_PANEL[3].replace("{point}",_number).replace("{name}",item.slotData.name);
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_REBATEEVERYDAY_ALERT);
         if(_loc2_)
         {
            _loc2_.iid = _iid;
            _loc2_.str = _loc1_;
            _loc2_.showPanel();
         }
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function set ItemData(param1:Number) : void
      {
         _iid = param1;
         if(initialized)
         {
            item.type = GamePredef.TBL_ITEM_TEMPLATE;
            item.giid = param1;
            item.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1];
         }
      }
      
      public function ___RebateEverydayOneCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initData();
      }
   }
}

