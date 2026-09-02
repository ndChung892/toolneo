package com.qeedoo.ui.view.comp
{
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShopSlot extends SimpleCanvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _114226sts:Canvas;
      
      private var _1177514720itemText:RoundedLabel;
      
      private var _3059661cost:Currency;
      
      private var _95173395is_Stack:Boolean = false;
      
      private var numAR:Array = ["pNum1","pNum2"];
      
      private var _345321964shopSlot:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _530283547is_soldout:Boolean = false;
      
      private var _1141922867shopSlotVO:ShopSlotVO = new ShopSlotVO();
      
      private var _core:Core = Core.getInstance();
      
      private var _94849541cost2:Currency;
      
      private var typeStr:String;
      
      private var view:Object = ViewManager.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var eachNum:Number;
      
      private var numStr:String;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var eachType:Number;
      
      private var typeAR:Array = ["pType1","pType2"];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":120,
               "height":41,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"shopSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":4,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"itemText",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":36,
                        "y":2,
                        "width":83,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"cost",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":37,
                        "y":21,
                        "width":82,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"cost2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":75,
                        "y":38,
                        "width":82,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"sts",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":67,
                        "y":21,
                        "width":53,
                        "height":20
                     };
                  }
               })]
            };
         }
      });
      
      public function ShopSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 120;
         this.height = 41;
         this.enabled = false;
         this.styleName = "CanvasShopSlot";
         this.addEventListener("creationComplete",___ShopSlot_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShopSlot._watcherSetupUtil = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         shopSlotVO.giid = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cost2() : Currency
      {
         return this._94849541cost2;
      }
      
      public function set cost2(param1:Currency) : void
      {
         var _loc2_:Object = this._94849541cost2;
         if(_loc2_ !== param1)
         {
            this._94849541cost2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost2",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get sts() : Canvas
      {
         return this._114226sts;
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
      
      public function set type(param1:int) : void
      {
         shopSlotVO.type = param1;
      }
      
      public function set stackMax(param1:int) : void
      {
         shopSlotVO.stackMax = param1;
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
         var target:ShopSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShopSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ShopSlotWatcherSetupUtil");
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
      
      public function set slotData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         shopSlotVO.slotData = param1;
         if(param1)
         {
            shopSlotVO.type = param1.type;
            shopSlotVO.giid = param1.itemId;
            shopSlotVO.stackNum = param1.currentAmount;
            shopSlotVO.stackMax = param1.amount;
            is_Stack = Boolean(param1.currentAmount) && param1.currentAmount != -1;
            is_soldout = param1.currentAmount == 0;
            switch(param1.shopType)
            {
               case 2:
                  this.height = 60;
                  itemText.x = 42;
                  itemText.y = 13;
                  shopSlotVO.itemCost = -1;
                  shopSlotVO.itemCost2 = -1;
                  for(_loc2_ in typeAR)
                  {
                     typeStr = typeAR[_loc2_];
                     numStr = numAR[_loc2_];
                     eachType = Number(param1[typeStr]);
                     eachNum = Number(param1[numStr]);
                     switch(eachType)
                     {
                        case GamePredef.CURRENCY_DOG_MEDAL:
                           shopSlotVO.moneyType2 = Currency.TYPE_DOGMEDAL;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_BATTLE_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_BTPOINT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_ACHILLES_MEDAL:
                           shopSlotVO.moneyType2 = Currency.TYPE_ACHILLESMEDAL;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_NEWYEAR_PONIT:
                           shopSlotVO.moneyType = Currency.TYPE_NEWYEARPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_LUNAYEAR_PONIT:
                           shopSlotVO.moneyType = Currency.TYPE_LUNAYEARPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_VALENTINE_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_VALENTINEPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_LANTERN_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_LANTERNPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_LABOR_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_LABORPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_FISHING_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_FISHINGPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_QIXI_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_QIXIPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_SUMMER_POINT:
                           shopSlotVO.moneyType = Currency.TYPE_SUMMERPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_ANNUAL_THIRD:
                           shopSlotVO.moneyType = Currency.TYPE_ANNUAL_THIRD;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_PET_ARENA:
                           shopSlotVO.moneyType = Currency.TYPE_PET_ARENA;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_NORMAL_CONTRIB:
                           shopSlotVO.moneyType = Currency.TYPE_NORMAL_CONTRIB;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_DONATE_CONTRIB:
                           shopSlotVO.moneyType2 = Currency.TYPE_DONATE_CONTRIB;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_XMAX_POINT:
                           shopSlotVO.moneyType2 = Currency.TYPE_XMASPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_GROUPPVP_MEDAL:
                           shopSlotVO.moneyType2 = Currency.TYPE_GROUPPVPPNT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_NATIONALDAY_POINT:
                           shopSlotVO.moneyType2 = Currency.TYPE_NATIONALDAY;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_PET_CHIP:
                           shopSlotVO.moneyType = Currency.TYPE_PET_CHIP;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_WORLD_CUP:
                           shopSlotVO.moneyType2 = Currency.TYPE_WORLD_CUP;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_GOLD_WORLD_CUP:
                           shopSlotVO.moneyType = Currency.TYPE_GOLD_WORLD_CUP;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_SUMMER_GAME:
                           shopSlotVO.moneyType = Currency.TYPE_SUMMER_GAME;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_DOUBLE_11:
                           shopSlotVO.moneyType = Currency.TYPE_DOUBLE_11;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_SHOWTIME:
                           shopSlotVO.moneyType = Currency.TYPE_SHOWTIME_POINT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_ANNIVERSARY:
                           shopSlotVO.moneyType = Currency.TYPE_ANNI_POINT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_SHOP_GOLD:
                           shopSlotVO.moneyType2 = Currency.TYPE_GOLD_POINT;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost2 = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_ANNI_CONSUME:
                           shopSlotVO.moneyType = Currency.TYPE_ANNI_CONSUME;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_MC_BEANS:
                           shopSlotVO.moneyType = Currency.TYPE_MC_BEANS;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_PET_ARENA_ACT:
                           shopSlotVO.moneyType = Currency.TYPE_PET_ARENA_ACTIVITY;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_SHOWTIME2:
                           shopSlotVO.moneyType = Currency.TYPE_SHOWTIME_POINT2;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_DMBKYSQJ:
                           shopSlotVO.moneyType = Currency.TYPE_DMBKYSQJ;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                           break;
                        case GamePredef.CURRENCY_DMBKSBJL:
                           shopSlotVO.moneyType = Currency.TYPE_DMBKSBJL;
                           if(ToolKit.isBigOrEqual(eachNum,0))
                           {
                              shopSlotVO.itemCost = eachNum;
                           }
                     }
                  }
                  cost.x = 10;
                  cost.y = 38;
                  cost.width = 64;
                  cost2.width = 45;
                  break;
               default:
                  this.height = 41;
                  if(initialized)
                  {
                     itemText.x = 36;
                     itemText.y = 2;
                     cost.x = 37;
                     cost.y = 21;
                     cost2.value = -1;
                  }
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
                  else if(param1.money > 0)
                  {
                     if(param1.gt == 1)
                     {
                        shopSlotVO.moneyType = Currency.TYPE_MONEY;
                     }
                     else
                     {
                        shopSlotVO.moneyType = Currency.TYPE_MONEYALL;
                     }
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
            }
            getItemInfo(param1.type,param1.itemId);
            enabled = true;
            doubleClickEnabled = true;
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
               break;
            default:
               sts.styleName = "";
         }
      }
      
      public function get slotData() : Object
      {
         return shopSlot ? shopSlot.slotData : shopSlotVO.slotData;
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
      
      private function _ShopSlot_bindingExprs() : void
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
         _loc1_ = cost.value >= 0;
         _loc1_ = shopSlotVO.itemCost;
         _loc1_ = shopSlotVO.moneyType;
         _loc1_ = cost2.value >= 0;
         _loc1_ = shopSlotVO.itemCost2;
         _loc1_ = shopSlotVO.moneyType2;
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
      
      [Bindable(event="propertyChange")]
      public function get cost() : Currency
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
            callLater(getItemInfo,[param1,param2]);
         }
      }
      
      public function get index() : int
      {
         return shopSlotVO.index;
      }
      
      public function ___ShopSlot_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function get stackNum() : int
      {
         return shopSlotVO.stackNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText() : RoundedLabel
      {
         return this._1177514720itemText;
      }
      
      private function _ShopSlot_bindingsSetup() : Array
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
         binding = new Binding(this,function():Boolean
         {
            return cost.value >= 0;
         },function(param1:Boolean):void
         {
            cost.visible = param1;
         },"cost.visible");
         result[9] = binding;
         binding = new Binding(this,function():Number
         {
            return shopSlotVO.itemCost;
         },function(param1:Number):void
         {
            cost.value = param1;
         },"cost.value");
         result[10] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.moneyType;
         },function(param1:uint):void
         {
            cost.type = param1;
         },"cost.type");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cost2.value >= 0;
         },function(param1:Boolean):void
         {
            cost2.visible = param1;
         },"cost2.visible");
         result[12] = binding;
         binding = new Binding(this,function():Number
         {
            return shopSlotVO.itemCost2;
         },function(param1:Number):void
         {
            cost2.value = param1;
         },"cost2.value");
         result[13] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.moneyType2;
         },function(param1:uint):void
         {
            cost2.type = param1;
         },"cost2.type");
         result[14] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get is_soldout() : Boolean
      {
         return this._530283547is_soldout;
      }
      
      public function get stackMax() : int
      {
         return shopSlotVO.stackMax;
      }
   }
}

