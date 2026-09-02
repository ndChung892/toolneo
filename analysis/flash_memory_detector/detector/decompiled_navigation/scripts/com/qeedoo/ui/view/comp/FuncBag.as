package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compDragable.NumPanel;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FuncBag extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _downSlotType:Number = 0;
      
      private var _cond:Object = {};
      
      public var pFuncPanel:Object = {};
      
      private var downSlotLabel:String = "downSlot";
      
      private var _selectedSlot:ShopSlot;
      
      private var _row:Number = 3;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      public var DClickCallBack:Function;
      
      private var _133022078firstTile:Tile;
      
      public var _FuncBag_SimpleCanvas2:SimpleCanvas;
      
      private var upSlotLabel:String = "upSlot";
      
      private var shopSlotLabel:String = "shopSlot";
      
      private var _shopItemList:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1437268089downTabBtn0:BasicGlowButton;
      
      private var _2143325187itemTileD:Tile;
      
      private var _1554086441tabDown:ViewStack;
      
      private var _933746814tabBtnUp:HBox;
      
      private var _sysShopId:Array = [35,36,41,65,66,67,70,79,81,88,89];
      
      private var filterField:String;
      
      private var _792846463_heightUp:Number = 110;
      
      private var _core:Core = Core.getInstance();
      
      private var _2114215424shopTileD:Tile;
      
      private var _1716743160_heightDown:Number = 124;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelector;
      
      private var _upItemList:Array = [];
      
      private var _upSlotType:Number = 0;
      
      private var upBtnLabel:String = "upTabBtn";
      
      private var privateAddSlots:Object = {};
      
      private var downBtnLabel:String = "downTabBtn";
      
      private var _col:Number = 3;
      
      private var _1647659402pageSelectorD:PageSelector;
      
      private var filterValueArr:Array;
      
      private var _1462071097_width:Number = 240;
      
      private var labelArr:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var filterValue:Number;
      
      private var _316973001tabBtnDown:HBox;
      
      private var _sysShopAllItems:Object;
      
      private var _1437268088downTabBtn1:BasicGlowButton;
      
      private var _downItemList:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":240,
               "height":290,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":HBox,
                  "id":"tabBtnUp",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":4
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"_FuncBag_SimpleCanvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":21,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "3";
                              this.bottom = "3";
                              this.left = "4.5";
                              this.right = "4.5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Tile,
                                 "id":"firstTile",
                                 "stylesFactory":function():void
                                 {
                                    this.verticalGap = 4;
                                    this.horizontalGap = 3;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":0,
                                       "y":0,
                                       "percentWidth":100,
                                       "direction":"horizontal",
                                       "horizontalScrollPolicy":"off",
                                       "verticalScrollPolicy":"off",
                                       "styleName":"TileSlot"
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.bottom = "2";
                              this.horizontalCenter = "0";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"tabBtnDown",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"downTabBtn0",
                           "events":{"click":"__downTabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"downTabBtn1",
                           "events":{"click":"__downTabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tabDown",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "creationPolicy":"all",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "3";
                                       this.bottom = "3";
                                       this.left = "4.5";
                                       this.right = "4.5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"itemTileD",
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 4;
                                             this.horizontalGap = 3;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":0,
                                                "y":0,
                                                "percentWidth":100,
                                                "height":80,
                                                "direction":"horizontal",
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"TileSlot"
                                             };
                                          }
                                       })]};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "events":{"creationComplete":"___FuncBag_SimpleCanvas4_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "3";
                                       this.bottom = "3";
                                       this.left = "1.5";
                                       this.right = "1.5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"shopTileD",
                                          "stylesFactory":function():void
                                          {
                                             this.verticalGap = 4;
                                             this.horizontalGap = 3;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":0,
                                                "y":0,
                                                "percentWidth":100,
                                                "height":80,
                                                "direction":"horizontal",
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "styleName":"TileSlot"
                                             };
                                          }
                                       })]};
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelectorD",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  }
               })]
            };
         }
      });
      
      public function FuncBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 240;
         this.height = 290;
         this.addEventListener("creationComplete",___FuncBag_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FuncBag._watcherSetupUtil = param1;
      }
      
      public function set firstTile(param1:Tile) : void
      {
         var _loc2_:Object = this._133022078firstTile;
         if(_loc2_ !== param1)
         {
            this._133022078firstTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstTile",_loc2_,param1));
         }
      }
      
      public function set tabBtnUp(param1:HBox) : void
      {
         var _loc2_:Object = this._933746814tabBtnUp;
         if(_loc2_ !== param1)
         {
            this._933746814tabBtnUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnUp",_loc2_,param1));
         }
      }
      
      public function set itemTileD(param1:Tile) : void
      {
         var _loc2_:Object = this._2143325187itemTileD;
         if(_loc2_ !== param1)
         {
            this._2143325187itemTileD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemTileD",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopTileD() : Tile
      {
         return this._2114215424shopTileD;
      }
      
      [Bindable(event="propertyChange")]
      private function get _heightDown() : Number
      {
         return this._1716743160_heightDown;
      }
      
      private function set _heightUp(param1:Number) : void
      {
         var _loc2_:Object = this._792846463_heightUp;
         if(_loc2_ !== param1)
         {
            this._792846463_heightUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_heightUp",_loc2_,param1));
         }
      }
      
      public function set upType(param1:Number) : void
      {
         _upSlotType = param1;
      }
      
      public function set downTabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1437268089downTabBtn0;
         if(_loc2_ !== param1)
         {
            this._1437268089downTabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"downTabBtn0",_loc2_,param1));
         }
      }
      
      public function set shopTileD(param1:Tile) : void
      {
         var _loc2_:Object = this._2114215424shopTileD;
         if(_loc2_ !== param1)
         {
            this._2114215424shopTileD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopTileD",_loc2_,param1));
         }
      }
      
      private function _FuncBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return this._width;
         },function(param1:Number):void
         {
            _FuncBag_SimpleCanvas2.width = param1;
         },"_FuncBag_SimpleCanvas2.width");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return this._heightUp;
         },function(param1:Number):void
         {
            _FuncBag_SimpleCanvas2.height = param1;
         },"_FuncBag_SimpleCanvas2.height");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[185];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            downTabBtn0.label = param1;
         },"downTabBtn0.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[186];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            downTabBtn1.label = param1;
         },"downTabBtn1.label");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return this._width;
         },function(param1:Number):void
         {
            tabDown.width = param1;
         },"tabDown.width");
         result[4] = binding;
         binding = new Binding(this,function():Number
         {
            return this._heightDown;
         },function(param1:Number):void
         {
            tabDown.height = param1;
         },"tabDown.height");
         result[5] = binding;
         return result;
      }
      
      public function set downTabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1437268088downTabBtn1;
         if(_loc2_ !== param1)
         {
            this._1437268088downTabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"downTabBtn1",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      private function set _heightDown(param1:Number) : void
      {
         var _loc2_:Object = this._1716743160_heightDown;
         if(_loc2_ !== param1)
         {
            this._1716743160_heightDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_heightDown",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemTileD() : Tile
      {
         return this._2143325187itemTileD;
      }
      
      private function getPetList(param1:Object) : Array
      {
         var petSort:Function;
         var pet:* = undefined;
         var canPut:Boolean = false;
         var temp:Object = null;
         var pColor:int = 0;
         var limit:Object = param1;
         var _petList:Object = _core.player.petList;
         var sortList:Array = [];
         var petColor:int = int(limit.color);
         var classIds:int = int(limit.classIds);
         if(_petList)
         {
            for each(pet in _petList)
            {
               if(pet)
               {
                  canPut = true;
                  temp = _core.getTemplateData(GamePredef.TBL_CREATURE,pet.tid,false);
                  pColor = _core.basic.colorByGrowRate(pet.growRate);
                  if(limit.color)
                  {
                     if(pColor != limit.color)
                     {
                        canPut = false;
                     }
                  }
                  if(limit.classIds)
                  {
                     if(limit.classIds[temp.classIds])
                     {
                        canPut = limit.color ? canPut : true;
                     }
                     else
                     {
                        canPut = false;
                     }
                  }
                  if(canPut)
                  {
                     sortList.push({
                        "type":GamePredef.TBL_PET,
                        "slotData":pet,
                        "stackNum":1,
                        "giid":pet.id,
                        "color":pColor
                     });
                  }
               }
            }
         }
         petSort = function(param1:*, param2:*):Number
         {
            if(param1.slotData.tid != param2.slotData.tid)
            {
               return param2.slotData.tid - param1.slotData.tid;
            }
            if(param1.slotData.growRate != param2.slotData.growRate)
            {
               return param2.slotData.growRate - param1.slotData.growRate;
            }
            return 0;
         };
         sortList.sort(petSort);
         return sortList;
      }
      
      public function ___FuncBag_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function __downTabBtn1_click(param1:MouseEvent) : void
      {
         tabDownClick(1);
      }
      
      private function initSystemShopList() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         _sysShopAllItems = {};
         for(_loc1_ in _sysShopId)
         {
            _loc2_ = _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_sysShopId[_loc1_]];
            for(_loc3_ in _loc2_)
            {
               _sysShopAllItems[_loc3_] = _loc2_[_loc3_];
            }
         }
      }
      
      private function onDownPageCleared() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= _row * _col)
         {
            privateAddSlots[downSlotLabel + _loc1_].clean();
            _loc1_++;
         }
      }
      
      private function showDownSlots() : void
      {
         if(_cond["down"])
         {
            if(_cond["down"].pets)
            {
               _downItemList = getPetList(_cond["down"]);
            }
            else
            {
               _downItemList = getItemList(_cond["down"]);
            }
            pageSelectorD.onPageChanged = onDownPageChanged;
            pageSelectorD.onPageCleared = onDownPageCleared;
            pageSelectorD.initPageSeletor(_downItemList.length,_col * _row);
         }
      }
      
      private function buySelected(param1:int) : void
      {
         _core.remote.buySystemItemClient(_selectedSlot.slotData.id,param1);
      }
      
      private function initAllSlots() : void
      {
         var _loc2_:ItemSlot = null;
         var _loc3_:ItemSlot = null;
         var _loc1_:int = 1;
         while(_loc1_ <= _row * _col)
         {
            _loc2_ = new ItemSlot();
            _loc2_.id = upSlotLabel + _loc1_;
            _loc2_.slotType = _upSlotType;
            _loc2_.acceptable = false;
            _loc2_.addEventListener(Slot.EVENT_SLOT_DCLICK,normalSlotDClick);
            firstTile.addChild(_loc2_);
            privateAddSlots[_loc2_.id] = _loc2_;
            _loc3_ = new ItemSlot();
            _loc3_.id = downSlotLabel + _loc1_;
            _loc3_.slotType = _downSlotType;
            _loc3_.acceptable = false;
            _loc3_.addEventListener(Slot.EVENT_SLOT_DCLICK,normalSlotDClick);
            itemTileD.addChild(_loc3_);
            privateAddSlots[_loc3_.id] = _loc3_;
            _loc1_++;
         }
      }
      
      public function set condition(param1:Object) : void
      {
         _cond = param1;
         if(initialized)
         {
            showItems();
         }
      }
      
      private function refreshFuncBag(param1:GameDataEvent) : void
      {
         if(!visible)
         {
            return;
         }
         if(Boolean(param1.data) && Boolean(param1.data.numOnly))
         {
            updateStackNum(param1.data.insId,param1.data.stackNum);
         }
         else
         {
            showUpSlots();
            if(tabDown.selectedIndex == 0)
            {
               showDownSlots();
            }
         }
      }
      
      public function set upTabButtons(param1:Object) : void
      {
         labelArr = param1.l;
         filterField = param1.p;
         filterValueArr = param1.v;
      }
      
      private function onDownPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ - 1 + param1;
            privateAddSlots[downSlotLabel + _loc4_].type = _downItemList[_loc3_].type;
            privateAddSlots[downSlotLabel + _loc4_].slotData = _downItemList[_loc3_].slotData;
            privateAddSlots[downSlotLabel + _loc4_].stackNum = _downItemList[_loc3_].stackNum;
            privateAddSlots[downSlotLabel + _loc4_].giid = _downItemList[_loc3_].giid;
            privateAddSlots[downSlotLabel + _loc4_].update();
            _loc4_++;
         }
      }
      
      private function _FuncBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = this._width;
         _loc1_ = this._heightUp;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[185];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[186];
         _loc1_ = this._width;
         _loc1_ = this._heightDown;
      }
      
      private function onShopPageCleared() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= Math.floor(_row * _col / 3))
         {
            privateAddSlots[shopSlotLabel + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      private function showShopSlots() : void
      {
         _shopItemList = getShopItemList();
         pageSelectorD.onPageChanged = onShopPageChanged;
         pageSelectorD.onPageCleared = onShopPageCleared;
         pageSelectorD.initPageSeletor(_shopItemList.length,Math.floor(_col * _row / 3));
      }
      
      private function onShopPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ + param1 - 1;
            privateAddSlots[shopSlotLabel + _loc4_].type = _shopItemList[_loc3_].type;
            privateAddSlots[shopSlotLabel + _loc4_].slotData = _shopItemList[_loc3_].slotData;
            privateAddSlots[shopSlotLabel + _loc4_].stackNum = _shopItemList[_loc3_].stackNum;
            privateAddSlots[shopSlotLabel + _loc4_].giid = _shopItemList[_loc3_].giid;
            privateAddSlots[shopSlotLabel + _loc4_].visible = true;
            _loc4_++;
         }
      }
      
      private function normalSlotDClick(param1:GameEvent) : void
      {
         DClickCallBack(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectorD() : PageSelector
      {
         return this._1647659402pageSelectorD;
      }
      
      [Bindable(event="propertyChange")]
      private function get _heightUp() : Number
      {
         return this._792846463_heightUp;
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      private function buy() : void
      {
         var bagpanel:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuy(true);
         }
      }
      
      public function ___FuncBag_SimpleCanvas4_creationComplete(param1:FlexEvent) : void
      {
         initShopSlots();
         initSystemShopList();
      }
      
      [Bindable(event="propertyChange")]
      public function get downTabBtn0() : BasicGlowButton
      {
         return this._1437268089downTabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get downTabBtn1() : BasicGlowButton
      {
         return this._1437268088downTabBtn1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FuncBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FuncBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FuncBagWatcherSetupUtil");
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
      public function get tabBtnUp() : HBox
      {
         return this._933746814tabBtnUp;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      public function set tabBtnDown(param1:HBox) : void
      {
         var _loc2_:Object = this._316973001tabBtnDown;
         if(_loc2_ !== param1)
         {
            this._316973001tabBtnDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnDown",_loc2_,param1));
         }
      }
      
      private function initUpTabButton() : void
      {
         var _loc2_:BasicGlowButton = null;
         var _loc1_:int = 0;
         while(_loc1_ < labelArr.length)
         {
            _loc2_ = new BasicGlowButton();
            _loc2_.id = upBtnLabel + _loc1_;
            _loc2_.styleName = "HorizontalTab";
            _loc2_.selected = _loc1_ == 0;
            _loc2_.label = labelArr[_loc1_];
            _loc2_.width = _loc2_.label.length * 9;
            _loc2_.addEventListener(MouseEvent.CLICK,tabUpBtnClick);
            tabBtnUp.addChild(_loc2_);
            privateAddSlots[_loc2_.id] = _loc2_;
            _loc1_++;
         }
      }
      
      private function showUpSlots() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         if(_cond["up"])
         {
            if(_cond["up"].pets)
            {
               _upItemList = getPetList(_cond["up"]);
            }
            else
            {
               _upItemList = getItemList(_cond["up"]);
            }
            _loc1_ = [];
            for each(_loc2_ in _upItemList)
            {
               if(!(filterValue >= 0 && !ToolKit.isEqual(_loc2_[filterField],filterValue)))
               {
                  _loc1_.push(_loc2_);
               }
            }
            _upItemList = _loc1_;
            pageSelector.onPageChanged = onUpPageChanged;
            pageSelector.onPageCleared = onUpPageCleared;
            pageSelector.initPageSeletor(_upItemList.length,_col * _row);
         }
      }
      
      private function set _width(param1:Number) : void
      {
         var _loc2_:Object = this._1462071097_width;
         if(_loc2_ !== param1)
         {
            this._1462071097_width = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_width",_loc2_,param1));
         }
      }
      
      public function set tabDown(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1554086441tabDown;
         if(_loc2_ !== param1)
         {
            this._1554086441tabDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabDown",_loc2_,param1));
         }
      }
      
      private function initShopSlots() : void
      {
         var _loc2_:ShopSlot = null;
         var _loc1_:int = 1;
         while(_loc1_ <= Math.floor(_row * _col / 3))
         {
            _loc2_ = new ShopSlot();
            _loc2_.id = shopSlotLabel + _loc1_;
            _loc2_.width = 112;
            _loc2_.addEventListener(MouseEvent.CLICK,shopClickHandler);
            _loc2_.addEventListener(MouseEvent.DOUBLE_CLICK,shopDClickHandler);
            shopTileD.addChild(_loc2_);
            privateAddSlots[_loc2_.id] = _loc2_;
            _loc1_++;
         }
      }
      
      private function shopClickHandler(param1:Event) : void
      {
         clearSelection();
         var _loc2_:ShopSlot = ShopSlot(param1.currentTarget);
         _loc2_.selected = true;
         _selectedSlot = _loc2_;
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= Math.floor(_row * _col / 3))
         {
            privateAddSlots[shopSlotLabel + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      private function updateStackNum(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 1;
         while(_loc3_ <= _col * _row)
         {
            if(ToolKit.isEqual(privateAddSlots[upSlotLabel + _loc3_].giid,param1))
            {
               privateAddSlots[upSlotLabel + _loc3_].stackNum = param2;
               privateAddSlots[upSlotLabel + _loc3_].update();
               return;
            }
            if(ToolKit.isEqual(privateAddSlots[downSlotLabel + _loc3_].giid,param1))
            {
               privateAddSlots[downSlotLabel + _loc3_].stackNum = param2;
               privateAddSlots[downSlotLabel + _loc3_].update();
            }
            _loc3_++;
         }
      }
      
      private function showItems() : void
      {
         showUpSlots();
         showDownSlots();
      }
      
      private function tabUpBtnClick(param1:MouseEvent) : void
      {
         var _loc2_:String = param1.currentTarget.id;
         var _loc3_:Number = Number(_loc2_.substr(upBtnLabel.length));
         param1.currentTarget.selected = true;
         filterValue = filterValueArr[_loc3_];
         var _loc4_:int = 0;
         while(_loc4_ < labelArr.length)
         {
            if(_loc4_ != _loc3_)
            {
               privateAddSlots[upBtnLabel + _loc4_].selected = false;
            }
            _loc4_++;
         }
         showUpSlots();
      }
      
      private function getItemList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:String = null;
         var _loc11_:Object = null;
         var _loc2_:Array = [];
         if(Boolean(param1 && !param1.nth && param1.itemType) && Boolean(_dm.bagSlotIndex) && Boolean(_dm.bagSlotIndex[param1.itemType]))
         {
            _loc3_ = _dm.bagSlotIndex[param1.itemType];
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _core.getTemplateData(param1.itemType - -1,Number(_loc4_),false);
               if(Boolean(_loc3_[_loc4_]) && Boolean(_loc5_))
               {
                  _loc6_ = false;
                  if(Boolean(param1.id) && Boolean(param1.id[_loc4_]))
                  {
                     _loc6_ = true;
                  }
                  if(param1.kind)
                  {
                     if(param1.kind[_loc5_.kind])
                     {
                        _loc6_ = param1.id ? _loc6_ : true;
                     }
                     else
                     {
                        _loc6_ = false;
                     }
                  }
                  if(param1.type)
                  {
                     if(param1.type[_loc5_.type])
                     {
                        _loc6_ = Boolean(param1.id) || Boolean(param1.kind) ? _loc6_ : true;
                     }
                     else
                     {
                        _loc6_ = false;
                     }
                  }
                  if(param1.propType)
                  {
                     if(param1.propType[_loc5_.propType])
                     {
                        _loc6_ = Boolean(param1.id) || Boolean(param1.kind) || Boolean(param1.type) ? _loc6_ : true;
                     }
                     else
                     {
                        _loc6_ = false;
                     }
                  }
                  if(_loc6_)
                  {
                     _loc7_ = _loc3_[_loc4_];
                     for(_loc10_ in _loc7_)
                     {
                        _loc8_ = _dm.sList[_loc7_[_loc10_]];
                        if((Boolean(_loc8_)) && Boolean(_dm.isBagSlot(Number(_loc8_.sid))) && _loc8_.stackNum > 0)
                        {
                           _loc11_ = {};
                           _loc9_ = _dm.getGameData(_loc8_.type,_loc8_.itemId);
                           if(_loc9_)
                           {
                              _loc11_.color = _loc9_.color;
                           }
                           else
                           {
                              _loc11_.color = 0;
                           }
                           _loc11_.slotData = _loc8_;
                           _loc11_.type = _loc8_.type;
                           _loc11_.giid = _loc8_.itemId;
                           _loc11_.stackNum = _loc8_.stackNum;
                           _loc2_.push(_loc11_);
                        }
                     }
                  }
               }
            }
            _loc2_.sortOn(param1.sortField,param1.sortParam);
         }
         return _loc2_;
      }
      
      private function shopDClickHandler(param1:Event) : void
      {
         var _loc2_:ShopSlot = ShopSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _loc2_.selected = true;
         buy();
      }
      
      public function set sysShopId(param1:Array) : void
      {
         _sysShopId = param1;
      }
      
      private function initView() : void
      {
         _width = _col * 34 + (_col - 1) * 3 + 9 + 12;
         firstTile.height = _row * 34 + (_row - 1) * 4 + 6 + 6;
         _heightUp = firstTile.height + 30;
         tabBtnDown.y = _heightUp + 30;
         tabDown.y = tabBtnDown.y + 17;
         itemTileD.height = firstTile.height;
         shopTileD.height = _row * 41 + (_row - 1) * 4 + 5;
         _heightDown = itemTileD.height + 44;
         pageSelectorD.y = tabDown.y + tabDown.height - 26;
         this.width = _width;
         this.height = 21 + _heightUp + 9 + 17 + _heightDown + 9;
         initUpTabButton();
         initAllSlots();
         showItems();
         _core.data.addEventListener(GamePredef.EVENT_REFRESH_FUNCSLOTS,refreshFuncBag);
      }
      
      [Bindable(event="propertyChange")]
      private function get _width() : Number
      {
         return this._1462071097_width;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabDown() : ViewStack
      {
         return this._1554086441tabDown;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnDown() : HBox
      {
         return this._316973001tabBtnDown;
      }
      
      private function getShopItemList() : Array
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Boolean = false;
         var _loc13_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Object = Boolean(_cond.down) && !_cond.down.nth ? _cond.down : _cond.up;
         if(_cond.npcShop)
         {
            _loc3_ = _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_cond.npcShop];
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc6_ = _core.getTemplateData(_loc5_.type,_loc5_.itemId,false);
               if(_loc6_)
               {
                  _loc7_ = false;
                  if(Boolean(_loc2_.id) && Boolean(_loc2_.id[_loc6_.id]))
                  {
                     _loc7_ = true;
                  }
                  if(_loc2_.kind)
                  {
                     if(_loc2_.kind[_loc6_.kind])
                     {
                        _loc7_ = _loc2_.id ? _loc7_ : true;
                     }
                     else
                     {
                        _loc7_ = false;
                     }
                  }
                  if(_loc2_.type)
                  {
                     if(_loc2_.type[_loc6_.type])
                     {
                        _loc7_ = Boolean(_loc2_.id) || Boolean(_loc2_.kind) ? _loc7_ : true;
                     }
                     else
                     {
                        _loc7_ = false;
                     }
                  }
                  if(_loc7_)
                  {
                     _loc8_ = new Object();
                     _loc8_.slotData = _loc5_;
                     _loc8_.type = _loc5_.type;
                     _loc8_.giid = _loc5_.itemId;
                     _loc8_.quality = _loc5_.quality;
                     _loc8_.st = _loc5_.st;
                     if(_loc8_.st != 3)
                     {
                        if(_loc8_.st != Number(GamePredef.SHOP_SELL_TYPE_HIDE))
                        {
                           _loc1_.push(_loc8_);
                        }
                     }
                  }
               }
            }
         }
         if(_cond.sysShop)
         {
            for(_loc9_ in _sysShopAllItems)
            {
               _loc10_ = _sysShopAllItems[_loc9_];
               _loc11_ = _core.getTemplateData(_loc10_.type,_loc10_.itemId,false);
               if(_loc11_)
               {
                  _loc12_ = false;
                  if(Boolean(_loc2_.id) && Boolean(_loc2_.id[_loc11_.id]))
                  {
                     _loc12_ = true;
                  }
                  if(_loc2_.kind)
                  {
                     if(_loc2_.kind[_loc11_.kind])
                     {
                        _loc12_ = _loc2_.id ? _loc12_ : true;
                     }
                     else
                     {
                        _loc12_ = false;
                     }
                  }
                  if(_loc2_.type)
                  {
                     if(_loc2_.type[_loc11_.type])
                     {
                        _loc12_ = Boolean(_loc2_.id) || Boolean(_loc2_.kind) ? _loc12_ : true;
                     }
                     else
                     {
                        _loc12_ = false;
                     }
                  }
                  if(_loc2_.propType)
                  {
                     if(_loc2_.propType[_loc11_.propType])
                     {
                        _loc12_ = Boolean(_loc2_.id) || Boolean(_loc2_.kind) || Boolean(_loc2_.type) ? _loc12_ : true;
                     }
                     else
                     {
                        _loc12_ = false;
                     }
                  }
                  if(_loc12_)
                  {
                     _loc13_ = new Object();
                     _loc13_.slotData = _loc10_;
                     _loc13_.type = _loc10_.type;
                     _loc13_.giid = _loc10_.itemId;
                     _loc13_.quality = _loc10_.quality;
                     _loc13_.st = _loc10_.st;
                     if(_loc13_.st != 3)
                     {
                        if(_loc13_.st != Number(GamePredef.SHOP_SELL_TYPE_HIDE))
                        {
                           _loc1_.push(_loc13_);
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function set rows(param1:int) : void
      {
         _row = param1;
      }
      
      private function onUpPageCleared() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= _row * _col)
         {
            privateAddSlots[upSlotLabel + _loc1_].clean();
            _loc1_++;
         }
      }
      
      private function onUpPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ - 1 + param1;
            privateAddSlots[upSlotLabel + _loc4_].type = _upItemList[_loc3_].type;
            privateAddSlots[upSlotLabel + _loc4_].slotData = _upItemList[_loc3_].slotData;
            privateAddSlots[upSlotLabel + _loc4_].stackNum = _upItemList[_loc3_].stackNum;
            privateAddSlots[upSlotLabel + _loc4_].giid = _upItemList[_loc3_].giid;
            _loc4_++;
         }
      }
      
      public function set cols(param1:int) : void
      {
         _col = param1;
      }
      
      public function __downTabBtn0_click(param1:MouseEvent) : void
      {
         tabDownClick(0);
      }
      
      private function tabDownClick(param1:int) : void
      {
         tabDown.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < tabDown.numChildren)
         {
            if(_loc2_ == param1)
            {
               this[downBtnLabel + _loc2_].selected = true;
            }
            else
            {
               this[downBtnLabel + _loc2_].selected = false;
            }
            _loc2_++;
         }
         if(param1 == 1)
         {
            showShopSlots();
         }
         else
         {
            showDownSlots();
         }
      }
      
      public function set pageSelectorD(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1647659402pageSelectorD;
         if(_loc2_ !== param1)
         {
            this._1647659402pageSelectorD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectorD",_loc2_,param1));
         }
      }
      
      public function set downType(param1:Number) : void
      {
         _downSlotType = param1;
      }
      
      public function doBuy(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            if(_selectedSlot)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               _loc3_.numStepper.enabled = true;
               _loc3_.parent = DragableCanvas(_core.view.getUI(ViewManager.PANEL_EQUIPTFUNC));
               _loc3_.showSelected(_selectedSlot,null,NumPanel.TYPE_BUY,buySelected);
               _loc3_.closeWith(DragableCanvas(_core.view.getUI(ViewManager.PANEL_EQUIPTFUNC)));
               return;
            }
         }
      }
   }
}

