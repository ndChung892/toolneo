package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.ShopSlotVO;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WaWaSlot extends SimpleCanvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _102976443limit:RoundedLabel;
      
      private var _1177514720itemText:RoundedLabel;
      
      private var _3059661cost:Label;
      
      private var _95173395is_Stack:Boolean = false;
      
      private var numAR:Array = ["pNum1","pNum2"];
      
      private var _345321964shopSlot:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      internal var _alert:Alert;
      
      private var _530283547is_soldout:Boolean = false;
      
      private var _1141922867shopSlotVO:ShopSlotVO = new ShopSlotVO();
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var typeStr:String;
      
      private var _1180476246isGold:Boolean = false;
      
      private var view:Object = ViewManager.getInstance();
      
      private var eachNum:Number;
      
      private var _104387img:Image;
      
      private var numStr:String;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var uNum:Number = 0;
      
      private var eachType:Number;
      
      private var typeAR:Array = ["pType1","pType2"];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":150,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"shopSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":9,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"itemText",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":43,
                        "y":9,
                        "width":86,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"limit",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":43,
                        "y":25,
                        "text":"",
                        "width":104,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":45,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"cost",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":36.5,
                        "y":47,
                        "height":20,
                        "width":66
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "events":{"click":"___WaWaSlot_DelayButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":3000,
                        "x":98,
                        "y":44,
                        "label":"兑换",
                        "styleName":"HorizontalTab"
                     };
                  }
               })]
            };
         }
      });
      
      public function WaWaSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 150;
         this.height = 70;
         this.enabled = false;
         this.styleName = "CanvasShopSlot";
         this.addEventListener("creationComplete",___WaWaSlot_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WaWaSlot._watcherSetupUtil = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         shopSlotVO.giid = param1;
      }
      
      private function buyWaWaItem() : void
      {
         var handler:Function = null;
         var view:Object = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
         var point:Number = view ? Number(view.getPointNum()) : 0;
         if(point < shopSlotVO.itemCost)
         {
            _core.sysMsg("积分不足");
            return;
         }
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("exchangeWaWaItem",null,shopSlotVO.giid,shopSlotVO.itemCost);
            }
         };
         _alert = Alert.show("确定要兑换该道具",null,Alert.YES | Alert.NO,null,handler);
      }
      
      [Bindable(event="propertyChange")]
      private function get is_Stack() : Boolean
      {
         return this._95173395is_Stack;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot() : ItemSlot
      {
         return this._345321964shopSlot;
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
      
      public function set shopSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._345321964shopSlot;
         if(_loc2_ !== param1)
         {
            this._345321964shopSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot",_loc2_,param1));
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
      
      public function get type() : int
      {
         return shopSlotVO.type;
      }
      
      private function _WaWaSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = shopSlotVO.slotData;
         _loc1_ = !is_soldout;
         _loc1_ = shopSlotVO.type;
         _loc1_ = shopSlotVO.giid;
         _loc1_ = shopSlotVO.stackMax;
         _loc1_ = shopSlotVO.stackNum;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = shopSlotVO.itemName;
         _loc1_ = shopSlotVO.itemColor;
         _loc1_ = shopSlotVO.itemCost;
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
      
      public function reset() : void
      {
         shopSlot.reset();
      }
      
      private function set isGold(param1:Boolean) : void
      {
         var _loc2_:Object = this._1180476246isGold;
         if(_loc2_ !== param1)
         {
            this._1180476246isGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isGold",_loc2_,param1));
         }
      }
      
      public function get slotType() : int
      {
         return shopSlot.slotType;
      }
      
      public function set type(param1:int) : void
      {
         shopSlotVO.type = param1;
      }
      
      public function set limit(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._102976443limit;
         if(_loc2_ !== param1)
         {
            this._102976443limit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limit",_loc2_,param1));
         }
      }
      
      public function set stackMax(param1:int) : void
      {
         shopSlotVO.stackMax = param1;
      }
      
      public function setLimit() : void
      {
         limit.text = "剩余:(" + ToolKit.minus(shopSlotVO.stackMax,uNum) + "/" + shopSlotVO.stackMax + ")";
      }
      
      public function get giid() : Number
      {
         return shopSlotVO.giid;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WaWaSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WaWaSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_WaWaSlotWatcherSetupUtil");
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
      
      public function restore() : void
      {
         shopSlot.restore();
      }
      
      public function set cost(param1:Label) : void
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
      
      public function set slotData(param1:Object) : void
      {
         shopSlotVO.slotData = param1;
         if(param1)
         {
            shopSlotVO.type = param1.type;
            shopSlotVO.giid = param1.itemId;
            shopSlotVO.stackNum = param1.currentAmount;
            shopSlotVO.stackMax = param1.amount;
            shopSlotVO.itemCost = param1.pNum1;
            if(Number(param1.pType1) == 29)
            {
               img.source = ResManager.ICON_WORLD_CUP;
               isGold = false;
            }
            else
            {
               img.source = ResManager.ICON_WORLD_CUP_GOLD;
               isGold = true;
            }
         }
         getItemInfo(param1.type,param1.itemId);
         enabled = true;
         visible = true;
      }
      
      private function _WaWaSlot_bindingsSetup() : Array
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
            return shopSlotVO.stackMax;
         },function(param1:int):void
         {
            shopSlot.stackMax = param1;
         },"shopSlot.stackMax");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return shopSlotVO.stackNum;
         },function(param1:int):void
         {
            shopSlot.stackNum = param1;
         },"shopSlot.stackNum");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            shopSlot.slotType = param1;
         },"shopSlot.slotType");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = shopSlotVO.itemName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itemText.text = param1;
         },"itemText.text");
         result[7] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.itemColor;
         },function(param1:uint):void
         {
            itemText.setStyle("color",param1);
         },"itemText.color");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = shopSlotVO.itemCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cost.text = param1;
         },"cost.text");
         result[9] = binding;
         return result;
      }
      
      public function set index(param1:int) : void
      {
         shopSlotVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      [Bindable(event="propertyChange")]
      private function get isGold() : Boolean
      {
         return this._1180476246isGold;
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
      
      [Bindable(event="propertyChange")]
      public function get limit() : RoundedLabel
      {
         return this._102976443limit;
      }
      
      public function set stackNum(param1:int) : void
      {
         shopSlotVO.stackNum = param1;
      }
      
      public function set itemText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1177514720itemText;
         if(_loc2_ !== param1)
         {
            this._1177514720itemText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function get slotData() : Object
      {
         return shopSlot ? shopSlot.slotData : shopSlotVO.slotData;
      }
      
      public function update() : void
      {
         shopSlot.update();
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
      
      [Bindable(event="propertyChange")]
      public function get cost() : Label
      {
         return this._3059661cost;
      }
      
      public function initView() : void
      {
      }
      
      private function getItemInfo(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         if(param2 <= 0 || param1 <= 0)
         {
            return;
         }
         var _loc3_:Object = _core.getTemplateData(param1,param2);
         if(_loc3_ != null)
         {
            _loc4_ = Math.ceil(shopSlotVO.slotData.quality / 5);
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
            if(shopSlotVO.slotData.shopType == 1 && shopSlotVO.itemCost <= 0)
            {
               if(_loc3_.gold > 0)
               {
                  shopSlotVO.itemCost = Number(_loc3_.gold);
                  shopSlotVO.moneyType = Currency.TYPE_GOLDALL;
               }
               else if(_loc3_.honor > 0)
               {
                  shopSlotVO.itemCost = Number(_loc3_.honor);
                  shopSlotVO.moneyType = Currency.TYPE_HONOR;
               }
               else if(_loc3_.price)
               {
                  shopSlotVO.itemCost = Number(_loc3_.price);
                  shopSlotVO.moneyType = Currency.TYPE_MONEYALL;
               }
               else if(_loc3_.exPoint)
               {
                  shopSlotVO.itemCost = Number(_loc3_.exPoint);
                  shopSlotVO.moneyType = Currency.TYPE_EXPOINT;
               }
            }
            shopSlot && shopSlot.addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
         }
         else
         {
            trace("ShopSlot:getItemInfo-Calllater");
         }
      }
      
      public function get index() : int
      {
         return shopSlotVO.index;
      }
      
      [Bindable(event="propertyChange")]
      private function get shopSlotVO() : ShopSlotVO
      {
         return this._1141922867shopSlotVO;
      }
      
      public function ___WaWaSlot_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText() : RoundedLabel
      {
         return this._1177514720itemText;
      }
      
      public function get stackNum() : int
      {
         return shopSlotVO.stackNum;
      }
      
      public function get stackMax() : int
      {
         return shopSlotVO.stackMax;
      }
      
      public function ___WaWaSlot_DelayButton1_click(param1:MouseEvent) : void
      {
         buyWaWaItem();
      }
      
      [Bindable(event="propertyChange")]
      private function get is_soldout() : Boolean
      {
         return this._530283547is_soldout;
      }
      
      public function set useNum(param1:int) : void
      {
         uNum = param1;
      }
   }
}

