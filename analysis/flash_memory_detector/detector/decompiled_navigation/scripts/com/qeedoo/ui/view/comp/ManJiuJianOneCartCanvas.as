package com.qeedoo.ui.view.comp
{
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
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class ManJiuJianOneCartCanvas extends SimpleCanvas
   {
      
      private var _iid:Number;
      
      private var _3237501inum:Label;
      
      private var _104493ipt:Label;
      
      private var _bc:Number;
      
      private var _pt:Number;
      
      private var _3242771item:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      private var _100343412iname:Label;
      
      public function ManJiuJianOneCartCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SimpleCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":459,
                  "height":38,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":ItemSlot,
                     "id":"item",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":6.5,
                           "y":2.55,
                           "movable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"iname",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 13;
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":125,
                           "height":30,
                           "y":7,
                           "x":55
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"inum",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 13;
                        this.color = 65535;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":70,
                           "height":30,
                           "text":"3",
                           "y":8,
                           "x":150
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"ipt",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 13;
                        this.color = 16776960;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":90,
                           "height":30,
                           "text":"3",
                           "y":8,
                           "x":300
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":LinkButton,
                     "events":{"click":"___ManJiuJianOneCartCanvas_LinkButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textDecoration = "underline";
                        this.fontSize = 13;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":401,
                           "y":9,
                           "label":"删除",
                           "width":58
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundAlpha = 0;
         };
         this.width = 459;
         this.height = 38;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___ManJiuJianOneCartCanvas_SimpleCanvas1_creationComplete);
      }
      
      private function removeCart() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         if(_loc1_)
         {
            _loc1_.removeCart(_iid);
         }
      }
      
      public function set BuyCount(param1:Number) : void
      {
         _bc = param1;
         if(initialized)
         {
            inum.text = String(_bc);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      private function initData() : void
      {
         this.ItemId = _iid;
         this.BuyCount = _bc;
         this.Point = _pt;
      }
      
      public function set ItemId(param1:Number) : void
      {
         var _loc2_:Object = null;
         _iid = param1;
         if(initialized)
         {
            _loc2_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_iid];
            item.type = GamePredef.TBL_ITEM_TEMPLATE;
            item.giid = _iid;
            item.slotData = _loc2_;
            iname.text = _loc2_.name;
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set ipt(param1:Label) : void
      {
         var _loc2_:Object = this._104493ipt;
         if(_loc2_ !== param1)
         {
            this._104493ipt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ipt",_loc2_,param1));
         }
      }
      
      public function ___ManJiuJianOneCartCanvas_LinkButton1_click(param1:MouseEvent) : void
      {
         removeCart();
      }
      
      public function set Point(param1:Number) : void
      {
         _pt = param1;
         if(initialized)
         {
            ipt.text = String(_pt);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ipt() : Label
      {
         return this._104493ipt;
      }
      
      public function set iname(param1:Label) : void
      {
         var _loc2_:Object = this._100343412iname;
         if(_loc2_ !== param1)
         {
            this._100343412iname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iname() : Label
      {
         return this._100343412iname;
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
      
      public function ___ManJiuJianOneCartCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initData();
      }
      
      public function set inum(param1:Label) : void
      {
         var _loc2_:Object = this._3237501inum;
         if(_loc2_ !== param1)
         {
            this._3237501inum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inum() : Label
      {
         return this._3237501inum;
      }
   }
}

