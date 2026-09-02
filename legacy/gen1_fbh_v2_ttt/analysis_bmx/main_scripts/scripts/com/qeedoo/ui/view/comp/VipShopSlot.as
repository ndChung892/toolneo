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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class VipShopSlot extends SimpleCanvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      public var _VipShopSlot_RoundedLabel1:RoundedLabel;
      
      private var _3059661cost:Currency;
      
      private var _95173395is_Stack:Boolean = false;
      
      public var _VipShopSlot_BasicGlowButton1:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _345321964shopSlot:Slot;
      
      private var _278927462soldOutFlag:Boolean = false;
      
      private var _1141922867shopSlotVO:ShopSlotVO = new ShopSlotVO();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":170,
               "height":75,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Slot,
                  "id":"shopSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":8,
                        "movable":false,
                        "width":34,
                        "height":34,
                        "styleName":"TransparentSlot"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_VipShopSlot_RoundedLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":18,
                        "width":132,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"cost",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":50,
                        "width":82,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_VipShopSlot_BasicGlowButton1",
                  "events":{"click":"___VipShopSlot_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "23";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CrystalYellowButton",
                        "width":60,
                        "height":25
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function VipShopSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 170;
         this.height = 75;
         this.enabled = false;
         this.styleName = "RoundedGradientBorder";
         this.addEventListener("creationComplete",___VipShopSlot_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VipShopSlot._watcherSetupUtil = param1;
      }
      
      private function _VipShopSlot_bindingsSetup() : Array
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
            return !soldOutFlag;
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
            var _loc1_:* = shopSlotVO.itemName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopSlot_RoundedLabel1.text = param1;
         },"_VipShopSlot_RoundedLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.itemColor;
         },function(param1:uint):void
         {
            _VipShopSlot_RoundedLabel1.setStyle("color",param1);
         },"_VipShopSlot_RoundedLabel1.color");
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
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopSlot_BasicGlowButton1.label = param1;
         },"_VipShopSlot_BasicGlowButton1.label");
         result[10] = binding;
         return result;
      }
      
      public function set slotData(param1:Object) : void
      {
         shopSlotVO.slotData = param1;
         if(param1)
         {
            shopSlotVO.type = param1.type;
            shopSlotVO.giid = param1.itemId;
            soldOutFlag = param1.flag ? true : false;
            if(param1.gold > 0)
            {
               if(param1.gt == 1)
               {
                  shopSlotVO.moneyType = Currency.TYPE_GOLD;
               }
               else
               {
                  shopSlotVO.moneyType = Currency.TYPE_GOLDALL;
               }
               shopSlotVO.itemCost = param1.gold;
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
            getItemInfo(shopSlotVO.type,shopSlotVO.giid);
            enabled = true;
            doubleClickEnabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get is_Stack() : Boolean
      {
         return this._95173395is_Stack;
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
         var target:VipShopSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VipShopSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_VipShopSlotWatcherSetupUtil");
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
      
      public function ___VipShopSlot_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         doBuyHandler();
      }
      
      public function get selected() : Boolean
      {
         return Boolean(filters) && filters.length > 0;
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot() : Slot
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
      
      private function set is_Stack(param1:Boolean) : void
      {
         var _loc2_:Object = this._95173395is_Stack;
         if(_loc2_ !== param1)
         {
            this._95173395is_Stack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"is_Stack",_loc2_,param1));
         }
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
      
      public function set stackNum(param1:int) : void
      {
         shopSlotVO.stackNum = param1;
      }
      
      public function get type() : int
      {
         return shopSlotVO.type;
      }
      
      private function _VipShopSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = shopSlotVO.slotData;
         _loc1_ = !soldOutFlag;
         _loc1_ = shopSlotVO.type;
         _loc1_ = shopSlotVO.giid;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = shopSlotVO.itemName;
         _loc1_ = shopSlotVO.itemColor;
         _loc1_ = cost.value > 0;
         _loc1_ = shopSlotVO.itemCost;
         _loc1_ = shopSlotVO.moneyType;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[13];
      }
      
      public function get slotData() : Object
      {
         return shopSlot.slotData;
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
      
      public function get stackMax() : int
      {
         return shopSlotVO.stackMax;
      }
      
      [Bindable(event="propertyChange")]
      public function get cost() : Currency
      {
         return this._3059661cost;
      }
      
      private function set soldOutFlag(param1:Boolean) : void
      {
         var _loc2_:Object = this._278927462soldOutFlag;
         if(_loc2_ !== param1)
         {
            this._278927462soldOutFlag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soldOutFlag",_loc2_,param1));
         }
      }
      
      public function initView() : void
      {
      }
      
      public function reset() : void
      {
         shopSlot.reset();
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
                  if(_loc3_.gt == 1)
                  {
                     shopSlotVO.moneyType = Currency.TYPE_GOLD;
                  }
                  else
                  {
                     shopSlotVO.moneyType = Currency.TYPE_GOLDALL;
                  }
                  shopSlotVO.itemCost = Number(_loc3_.gold);
               }
               else if(_loc3_.point)
               {
                  shopSlotVO.itemCost = Number(_loc3_.point);
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
      
      public function update() : void
      {
         shopSlot.update();
      }
      
      public function get index() : int
      {
         return shopSlotVO.index;
      }
      
      public function ___VipShopSlot_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function get slotType() : int
      {
         return shopSlot.slotType;
      }
      
      public function get stackNum() : int
      {
         return shopSlotVO.stackNum;
      }
      
      [Bindable(event="propertyChange")]
      private function get soldOutFlag() : Boolean
      {
         return this._278927462soldOutFlag;
      }
      
      [Bindable(event="propertyChange")]
      private function get shopSlotVO() : ShopSlotVO
      {
         return this._1141922867shopSlotVO;
      }
      
      private function doBuyHandler() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_VIP_SHOP);
         _loc1_._selectedVipSlot = this;
         _loc1_.buyFromVipShop();
      }
      
      public function set stackMax(param1:int) : void
      {
         shopSlotVO.stackMax = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         shopSlotVO.giid = param1;
      }
      
      public function set type(param1:int) : void
      {
         shopSlotVO.type = param1;
      }
      
      public function get giid() : Number
      {
         return shopSlotVO.giid;
      }
   }
}

