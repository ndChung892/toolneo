package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PrePurchaseListRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1090542378leftdayslabel:Label;
      
      private var hp:String = ResManager.getIconUrl(4130220003801);
      
      private var _104079552money:Currency;
      
      mx_internal var _watchers:Array = [];
      
      private var pdata:Object = null;
      
      private var _97884btn:BasicDelayButton;
      
      private var _104387img:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1177491377itemSlot:ItemSlot;
      
      private var _1245307721namelabel:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":226,
               "height":82,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"",
                        "width":48,
                        "height":60,
                        "x":0,
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"itemSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":32,
                        "height":32,
                        "x":28,
                        "y":27,
                        "acceptable":false,
                        "type":29,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"namelabel",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":63,
                        "y":11
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"leftdayslabel",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":63,
                        "y":59,
                        "width":153
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"money",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "value":0,
                        "x":68,
                        "y":35,
                        "width":62,
                        "type":1
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":2000,
                        "label":"",
                        "x":136,
                        "y":34,
                        "styleName":"BtnNormalRed",
                        "width":73,
                        "height":21
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      private var hg:String = ResManager.getIconUrl(4130220003802);
      
      public function PrePurchaseListRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 226;
         this.height = 82;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.styleName = "CanvasBorder";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PrePurchaseListRenderer._watcherSetupUtil = param1;
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         list_itemClickHandler();
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      public function set money(param1:Currency) : void
      {
         var _loc2_:Object = this._104079552money;
         if(_loc2_ !== param1)
         {
            this._104079552money = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PrePurchaseListRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PrePurchaseListRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PrePurchaseListRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      public function set namelabel(param1:Label) : void
      {
         var _loc2_:Object = this._1245307721namelabel;
         if(_loc2_ !== param1)
         {
            this._1245307721namelabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"namelabel",_loc2_,param1));
         }
      }
      
      private function _PrePurchaseListRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_SHOP;
         },function(param1:int):void
         {
            itemSlot.slotType = param1;
         },"itemSlot.slotType");
         result[0] = binding;
         return result;
      }
      
      public function set leftdayslabel(param1:Label) : void
      {
         var _loc2_:Object = this._1090542378leftdayslabel;
         if(_loc2_ !== param1)
         {
            this._1090542378leftdayslabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftdayslabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemSlot() : ItemSlot
      {
         return this._1177491377itemSlot;
      }
      
      private function _PrePurchaseListRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_SHOP;
      }
      
      public function set btn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get money() : Currency
      {
         return this._104079552money;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      [Bindable(event="propertyChange")]
      public function get namelabel() : Label
      {
         return this._1245307721namelabel;
      }
      
      private function reset() : void
      {
         itemSlot.slotData = null;
         itemSlot.giid = 0;
         itemSlot.stackNum = 0;
         namelabel.text = "null";
         money.value = 0;
         btn.label = "";
         img.source = "";
         leftdayslabel.text = "";
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            pdata = param1;
            reset();
            _loc2_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][int(param1.id)];
            if(!_loc2_)
            {
               return;
            }
            itemSlot.giid = int(param1.id);
            itemSlot.slotData = _loc2_;
            itemSlot.stackNum = int(param1.n);
            namelabel.text = param1.name;
            money.value = param1.price;
            if(param1.leftDays >= 0)
            {
               leftdayslabel.text = Language.PPCHES_PANEL[3].toString().replace("{days}",param1.leftDays);
            }
            else
            {
               leftdayslabel.text = "";
            }
            switch(int(param1.btnStatus))
            {
               case 1:
                  btn.label = "购买截止";
                  img.source = "";
                  break;
               case 2:
                  btn.label = "购买";
                  img.source = "";
                  leftdayslabel.text = "购买后连续7天每天可领取1次";
                  break;
               case 3:
                  btn.label = "领取截止";
                  img.source = "";
                  leftdayslabel.text = Language.PPCHES_PANEL[3].toString().replace("{days}",0);
                  break;
               case 4:
                  btn.label = "今日已领取";
                  img.source = hg;
                  break;
               case 5:
                  btn.label = "领取";
                  img.source = hp;
            }
         }
      }
      
      private function list_itemClickHandler() : void
      {
         if(pdata)
         {
            parentDocument.list_itemClickHandler(pdata);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : BasicDelayButton
      {
         return this._97884btn;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftdayslabel() : Label
      {
         return this._1090542378leftdayslabel;
      }
      
      public function set itemSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177491377itemSlot;
         if(_loc2_ !== param1)
         {
            this._1177491377itemSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemSlot",_loc2_,param1));
         }
      }
   }
}

