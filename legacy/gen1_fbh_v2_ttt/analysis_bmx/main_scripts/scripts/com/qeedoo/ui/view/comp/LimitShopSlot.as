package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.ShopSlotVO;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LimitShopSlot extends SimpleCanvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1607243192endTime:RoundedLabel;
      
      private var _114226sts:Canvas;
      
      private var _3059661cost:Currency;
      
      private var _95173395is_Stack:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _345321964shopSlot:Slot;
      
      private var _2129294769startTime:RoundedLabel;
      
      private var _530283547is_soldout:Boolean = false;
      
      private var _1141922867shopSlotVO:ShopSlotVO = new ShopSlotVO();
      
      private var _core:Core = Core.getInstance();
      
      public var _LimitShopSlot_RoundedLabel1:RoundedLabel;
      
      public var _LimitShopSlot_BasicGlowButton1:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _714930330isBinded:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _539157401limitNuImage:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":248,
               "height":75,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Slot,
                  "id":"shopSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":6,
                        "y":5,
                        "movable":false,
                        "width":34,
                        "height":34,
                        "styleName":"TransparentSlot"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_LimitShopSlot_RoundedLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":42,
                        "y":5,
                        "width":190,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"cost",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "y":44,
                        "width":82,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"isBinded",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":16,
                        "width":70,
                        "y":5,
                        "x":174
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"startTime",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":42,
                        "y":18,
                        "height":18,
                        "width":202
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"endTime",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":42,
                        "y":31,
                        "height":18,
                        "width":202
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_LimitShopSlot_BasicGlowButton1",
                  "events":{"click":"___LimitShopSlot_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "60";
                     this.bottom = "3";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CrystalYellowButton",
                        "width":60,
                        "height":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"sts",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":192,
                        "y":52,
                        "width":53,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"limitNuImage",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 11;
                     this.color = 16761125;
                     this.fontFamily = "Arial";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":46,
                        "width":82,
                        "height":16
                     };
                  }
               })]
            };
         }
      });
      
      public function LimitShopSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 248;
         this.height = 75;
         this.enabled = false;
         this.styleName = "RoundedGradientBorder";
         this.addEventListener("creationComplete",___LimitShopSlot_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LimitShopSlot._watcherSetupUtil = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         shopSlotVO.giid = param1;
      }
      
      public function set _endTime(param1:Date) : void
      {
         endTime.text = Language.SYSTEMSHOPPANEL_U[22].replace("{year}",param1.getFullYear()).replace("{month}",param1.getMonth() + 1).replace("{day}",param1.getDate()).replace("{hour}",param1.getHours()).replace("{minute}",param1.getMinutes());
      }
      
      [Bindable(event="propertyChange")]
      private function get is_Stack() : Boolean
      {
         return this._95173395is_Stack;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot() : Slot
      {
         return this._345321964shopSlot;
      }
      
      public function set shopSlot(param1:Slot) : void
      {
         var _loc2_:Object = this._345321964shopSlot;
         if(_loc2_ !== param1)
         {
            this._345321964shopSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot",_loc2_,param1));
         }
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:Event = null;
         if(enabled)
         {
            _loc2_ = new Event(Slot.EVENT_SLOT_DCLICK);
            dispatchEvent(_loc2_);
         }
      }
      
      public function set limitNuImage(param1:Label) : void
      {
         var _loc2_:Object = this._539157401limitNuImage;
         if(_loc2_ !== param1)
         {
            this._539157401limitNuImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitNuImage",_loc2_,param1));
         }
      }
      
      private function set is_Stack(param1:Boolean) : void
      {
         var _loc2_:Object = this._95173395is_Stack;
         if(_loc2_ !== param1)
         {
            this._95173395is_Stack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"is_Stack",_loc2_,param1));
         }
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         }
         else
         {
            filters = [];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sts() : Canvas
      {
         return this._114226sts;
      }
      
      public function get type() : int
      {
         return shopSlotVO.type;
      }
      
      public function ___LimitShopSlot_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get endTime() : RoundedLabel
      {
         return this._1607243192endTime;
      }
      
      public function clean() : void
      {
         shopSlot.clean();
         shopSlotVO.itemName = "";
         shopSlotVO.itemCost = -1;
         shopSlotVO.giid = -1;
         enabled = false;
         doubleClickEnabled = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get startTime() : RoundedLabel
      {
         return this._2129294769startTime;
      }
      
      public function reset() : void
      {
         shopSlot.reset();
      }
      
      public function get slotType() : int
      {
         return shopSlot.slotType;
      }
      
      public function set sts(param1:Canvas) : void
      {
         var _loc2_:Object = this._114226sts;
         if(_loc2_ !== param1)
         {
            this._114226sts = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sts",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isBinded() : RoundedLabel
      {
         return this._714930330isBinded;
      }
      
      private function _LimitShopSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return shopSlotVO.slotData;
         },function(param1:Object):void
         {
            shopSlot.slotData = param1;
         },"shopSlot.slotData");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !is_soldout;
         },function(param1:Boolean):void
         {
            shopSlot.enabled = param1;
         },"shopSlot.enabled");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return shopSlotVO.type;
         },function(param1:int):void
         {
            shopSlot.type = param1;
         },"shopSlot.type");
         result[2] = binding;
         binding = new Binding(this,function():Number
         {
            return shopSlotVO.giid;
         },function(param1:Number):void
         {
            shopSlot.giid = param1;
         },"shopSlot.giid");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            shopSlot.slotType = param1;
         },"shopSlot.slotType");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = shopSlotVO.itemName + "(" + (shopSlotVO.slotData.remain + "/" + shopSlotVO.slotData.num) + "个)";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LimitShopSlot_RoundedLabel1.text = param1;
         },"_LimitShopSlot_RoundedLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.itemColor;
         },function(param1:uint):void
         {
            _LimitShopSlot_RoundedLabel1.setStyle("color",param1);
         },"_LimitShopSlot_RoundedLabel1.color");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cost.value > 0;
         },function(param1:Boolean):void
         {
            cost.visible = param1;
         },"cost.visible");
         result[7] = binding;
         binding = new Binding(this,function():Number
         {
            return shopSlotVO.itemCost;
         },function(param1:Number):void
         {
            cost.value = param1;
         },"cost.value");
         result[8] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.moneyType;
         },function(param1:uint):void
         {
            cost.type = param1;
         },"cost.type");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            isBinded.text = param1;
         },"isBinded.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LimitShopSlot_BasicGlowButton1.label = param1;
         },"_LimitShopSlot_BasicGlowButton1.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "每个ID限购" + shopSlotVO.limitNu + "个";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            limitNuImage.text = param1;
         },"limitNuImage.text");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return shopSlotVO.limitNu;
         },function(param1:Boolean):void
         {
            limitNuImage.visible = param1;
         },"limitNuImage.visible");
         result[13] = binding;
         return result;
      }
      
      public function set stackMax(param1:int) : void
      {
         shopSlotVO.stackMax = param1;
      }
      
      public function set type(param1:int) : void
      {
         shopSlotVO.type = param1;
      }
      
      public function get giid() : Number
      {
         return shopSlotVO.giid;
      }
      
      public function restore() : void
      {
         shopSlot.restore();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LimitShopSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LimitShopSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_LimitShopSlotWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get limitNuImage() : Label
      {
         return this._539157401limitNuImage;
      }
      
      public function set cost(param1:Currency) : void
      {
         var _loc2_:Object = this._3059661cost;
         if(_loc2_ !== param1)
         {
            this._3059661cost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost",_loc2_,param1));
         }
      }
      
      public function get selected() : Boolean
      {
         return Boolean(filters) && filters.length > 0;
      }
      
      public function set startTime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2129294769startTime;
         if(_loc2_ !== param1)
         {
            this._2129294769startTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startTime",_loc2_,param1));
         }
      }
      
      public function set slotData(param1:Object) : void
      {
         shopSlotVO.slotData = param1;
         if(param1)
         {
            shopSlotVO.type = param1.tid;
            shopSlotVO.giid = param1.itemId;
            shopSlotVO.limitNu = param1.limitNu;
            shopSlotVO.flag = param1.flag;
            isBinded.visible = Boolean(Number(param1.bind));
            is_Stack = Boolean(param1.remain) && param1.remain != -1;
            is_soldout = param1.remain == 0;
            if(12 == param1.tid)
            {
            }
            if(param1.gold > 0)
            {
               shopSlotVO.moneyType = Currency.TYPE_GOLD;
               shopSlotVO.itemCost = param1.gold;
            }
            else if(param1.money > 0)
            {
               shopSlotVO.moneyType = Currency.TYPE_MONEYALL;
               shopSlotVO.itemCost = param1.money;
            }
            else if(param1.point > 0)
            {
               shopSlotVO.moneyType = Currency.TYPE_EXPOINT;
               shopSlotVO.itemCost = param1.point;
            }
            else
            {
               shopSlotVO.itemCost = -1;
            }
            getItemInfo(param1.tid,param1.itemId);
            enabled = true;
            doubleClickEnabled = true;
         }
      }
      
      public function set _startTime(param1:Date) : void
      {
         startTime.text = Language.SYSTEMSHOPPANEL_U[23].replace("{year}",param1.getFullYear()).replace("{month}",param1.getMonth() + 1).replace("{day}",param1.getDate()).replace("{hour}",param1.getHours()).replace("{minute}",param1.getMinutes());
      }
      
      private function set shopSlotVO(param1:ShopSlotVO) : void
      {
         var _loc2_:Object = this._1141922867shopSlotVO;
         if(_loc2_ !== param1)
         {
            this._1141922867shopSlotVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlotVO",_loc2_,param1));
         }
      }
      
      public function set index(param1:int) : void
      {
         shopSlotVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      private function _LimitShopSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = shopSlotVO.slotData;
         _loc1_ = !is_soldout;
         _loc1_ = shopSlotVO.type;
         _loc1_ = shopSlotVO.giid;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = shopSlotVO.itemName + "(" + (shopSlotVO.slotData.remain + "/" + shopSlotVO.slotData.num) + "个)";
         _loc1_ = shopSlotVO.itemColor;
         _loc1_ = cost.value > 0;
         _loc1_ = shopSlotVO.itemCost;
         _loc1_ = shopSlotVO.moneyType;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[21];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[13];
         _loc1_ = "每个ID限购" + shopSlotVO.limitNu + "个";
         _loc1_ = shopSlotVO.limitNu;
      }
      
      public function set endTime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1607243192endTime;
         if(_loc2_ !== param1)
         {
            this._1607243192endTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endTime",_loc2_,param1));
         }
      }
      
      public function set stackNum(param1:int) : void
      {
         shopSlotVO.stackNum = param1;
      }
      
      public function set st(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               sts.styleName = "CanvasShopHot";
               break;
            case 2:
               sts.styleName = "CanvasShopSale";
               break;
            case 3:
               sts.styleName = "CanvasShopLimit";
               break;
            case 4:
               sts.styleName = "CanvasShopNew";
         }
      }
      
      public function get slotData() : Object
      {
         return shopSlot.slotData;
      }
      
      private function set is_soldout(param1:Boolean) : void
      {
         var _loc2_:Object = this._530283547is_soldout;
         if(_loc2_ !== param1)
         {
            this._530283547is_soldout = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"is_soldout",_loc2_,param1));
         }
      }
      
      public function get stackMax() : int
      {
         return shopSlotVO.stackMax;
      }
      
      [Bindable(event="propertyChange")]
      private function get shopSlotVO() : ShopSlotVO
      {
         return this._1141922867shopSlotVO;
      }
      
      public function update() : void
      {
         shopSlot.update();
      }
      
      public function set isBinded(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._714930330isBinded;
         if(_loc2_ !== param1)
         {
            this._714930330isBinded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBinded",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost() : Currency
      {
         return this._3059661cost;
      }
      
      public function initView() : void
      {
      }
      
      private function doBuyHandler() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP);
         _loc1_._selectedLimitSlot = this;
         _loc1_.buyLimit();
      }
      
      private function getItemInfo(param1:int, param2:Number) : void
      {
         var _loc4_:int = 0;
         if(param2 <= 0 || param1 <= 0)
         {
            return;
         }
         var _loc3_:Object = GameData.d[param1][param2];
         if(_loc3_ != null)
         {
            _loc4_ = Math.ceil(shopSlotVO.slotData.q / 5);
            if(ToolKit.isEqual(param1,GamePredef.TBL_CREATURE))
            {
               _loc4_ = _core.basic.colorByGrowRate(shopSlotVO.slotData.q / 10);
            }
            if(ToolKit.isBigOrEqual(_loc3_.color,0))
            {
               _loc4_ = int(_loc3_.color);
            }
            shopSlotVO.itemName = _loc3_.name;
            if(ToolKit.isOriginalMaterial(_loc3_))
            {
               shopSlotVO.itemName += "[" + GamePredef.POSTFIX_MATERIAL_NAME[_loc4_] + "]";
            }
            shopSlotVO.itemColor = GamePredef.CODE_ITEM_COLOR[_loc4_];
            shopSlotVO.itemDescription = _loc3_.description;
            if(shopSlotVO.itemCost <= 0)
            {
               if(_loc3_.gold > 0)
               {
                  shopSlotVO.itemCost = Number(_loc3_.gold);
                  shopSlotVO.moneyType = Currency.TYPE_GOLD;
               }
               else if(_loc3_.honor > 0)
               {
                  shopSlotVO.itemCost = Number(_loc3_.honor);
                  shopSlotVO.moneyType = Currency.TYPE_HONOR;
               }
               else if(_loc3_.price > 0)
               {
                  shopSlotVO.itemCost = Number(_loc3_.price);
                  shopSlotVO.moneyType = Currency.TYPE_EXPOINT;
               }
               else if(_loc3_.exPoint)
               {
                  shopSlotVO.itemCost = Number(_loc3_.exPoint);
                  shopSlotVO.moneyType = Currency.TYPE_EXPOINT;
               }
            }
            shopSlot.addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
         }
         else
         {
            this.visible = false;
         }
      }
      
      public function get index() : int
      {
         return shopSlotVO.index;
      }
      
      public function get stackNum() : int
      {
         return shopSlotVO.stackNum;
      }
      
      [Bindable(event="propertyChange")]
      private function get is_soldout() : Boolean
      {
         return this._530283547is_soldout;
      }
      
      public function ___LimitShopSlot_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         doBuyHandler();
      }
   }
}

