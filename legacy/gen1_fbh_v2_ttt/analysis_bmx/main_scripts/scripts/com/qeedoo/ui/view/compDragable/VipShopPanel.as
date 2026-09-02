package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.ShopSlot;
   import com.qeedoo.ui.view.comp.VipShopSlot;
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
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class VipShopPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _VipShopPanel_BasicDelayButton2:BasicDelayButton;
      
      private var _1141924040shopSlot15:ShopSlot;
      
      private const VIP_SHOP_SLOT_NUM:int = 6;
      
      public var _VipShopPanel_BasicDelayButton1:BasicDelayButton;
      
      private var _buyLog:ArrayQueue = new ArrayQueue(30);
      
      private var reflashTime:Number = 0;
      
      private var _3773vs:ViewStack;
      
      private var _2115046236shopSlot8:ShopSlot;
      
      public var _VipShopPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2115046240shopSlot4:ShopSlot;
      
      private var vipShopItemList:ArrayCollection = new ArrayCollection();
      
      private var _1344515517idVipShopSlot3:VipShopSlot;
      
      private var _1051699068btnReflashEnable:Boolean = false;
      
      private var _1141924043shopSlot12:ShopSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2115046238shopSlot6:ShopSlot;
      
      private var _2115046242shopSlot2:ShopSlot;
      
      public var _selectedVipSlot:VipShopSlot;
      
      private var _1344515518idVipShopSlot4:VipShopSlot;
      
      private var _960253463idSystemAll:Canvas;
      
      private var _core:Core = Core.getInstance();
      
      private const ITEM_COUNT_PER_PAGE:int = 20;
      
      private var _2115046244shopSlot0:ShopSlot;
      
      private var _1344515519idVipShopSlot5:VipShopSlot;
      
      private var sysShopReflashTime:Number = 0;
      
      private var firstTimeFlag:Boolean = true;
      
      private var _1141924038shopSlot17:ShopSlot;
      
      private var _1141924041shopSlot14:ShopSlot;
      
      private var _277229570idTabCanvas0:BasicGlowButton;
      
      private var _1102666777linkTA:LinkTextArea;
      
      private var _2115046235shopSlot9:ShopSlot;
      
      private var _1141924044shopSlot11:ShopSlot;
      
      private var _1141924036shopSlot19:ShopSlot;
      
      private var _2115046237shopSlot7:ShopSlot;
      
      private var _2115046241shopSlot3:ShopSlot;
      
      private var _1560582704idReflashTile:Tile;
      
      private var _1344515514idVipShopSlot0:VipShopSlot;
      
      private var _2016333467idSystemAllTile:Tile;
      
      private var shopItemList:ArrayCollection = new ArrayCollection();
      
      private var _1141924039shopSlot16:ShopSlot;
      
      private var _2115046239shopSlot5:ShopSlot;
      
      private var _2115046243shopSlot1:ShopSlot;
      
      private var _1141924042shopSlot13:ShopSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _1344515515idVipShopSlot1:VipShopSlot;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1560582673idReflashTime:RoundedLabel;
      
      private var _277229569idTabCanvas1:BasicGlowButton;
      
      public var _VipShopPanel_RoundedLabel2:RoundedLabel;
      
      public var _VipShopPanel_RoundedLabel3:RoundedLabel;
      
      private var _1141924045shopSlot10:ShopSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _133132290idReflash:Canvas;
      
      private var _1344515516idVipShopSlot2:VipShopSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _1141924037shopSlot18:ShopSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":590,
               "height":380,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_VipShopPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "x":0,
                        "y":0,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 0;
                              this.left = "45";
                              this.top = "40";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HTabWrapper",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"idTabCanvas0",
                                    "events":{"click":"__idTabCanvas0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "styleName":"HorizontalTab",
                                          "selected":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"idTabCanvas1",
                                    "events":{"click":"__idTabCanvas1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"vs",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.left = "10";
                              this.right = "10";
                              this.top = "65";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"idReflash",
                                 "events":{"mouseDown":"__idReflash_mouseDown"},
                                 "stylesFactory":function():void
                                 {
                                    this.top = "60";
                                    this.left = "10";
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":305,
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"idReflashTile",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.top = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":360,
                                                "height":247,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":VipShopSlot,
                                                   "id":"idVipShopSlot0",
                                                   "events":{
                                                      "click":"__idVipShopSlot0_click",
                                                      "doubleClick":"__idVipShopSlot0_doubleClick"
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":VipShopSlot,
                                                   "id":"idVipShopSlot1",
                                                   "events":{
                                                      "click":"__idVipShopSlot1_click",
                                                      "doubleClick":"__idVipShopSlot1_doubleClick"
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":VipShopSlot,
                                                   "id":"idVipShopSlot2",
                                                   "events":{
                                                      "click":"__idVipShopSlot2_click",
                                                      "doubleClick":"__idVipShopSlot2_doubleClick"
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":VipShopSlot,
                                                   "id":"idVipShopSlot3",
                                                   "events":{
                                                      "click":"__idVipShopSlot3_click",
                                                      "doubleClick":"__idVipShopSlot3_doubleClick"
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":VipShopSlot,
                                                   "id":"idVipShopSlot4",
                                                   "events":{
                                                      "click":"__idVipShopSlot4_click",
                                                      "doubleClick":"__idVipShopSlot4_doubleClick"
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":VipShopSlot,
                                                   "id":"idVipShopSlot5",
                                                   "events":{
                                                      "click":"__idVipShopSlot5_click",
                                                      "doubleClick":"__idVipShopSlot5_doubleClick"
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"idReflashTime",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.bottom = "10";
                                             this.color = 16777215;
                                             this.fontSize = 14;
                                             this.textAlign = "center";
                                             this.fontStyle = "normal";
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"width":228};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicDelayButton,
                                          "id":"_VipShopPanel_BasicDelayButton1",
                                          "events":{"click":"___VipShopPanel_BasicDelayButton1_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "clickDelay":5000,
                                                "styleName":"BtnStdRed",
                                                "width":65,
                                                "x":285
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "stylesFactory":function():void
                                          {
                                             this.right = "5";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":200,
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":RoundedLabel,
                                                   "id":"_VipShopPanel_RoundedLabel2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.top = "8";
                                                      this.color = 16777215;
                                                      this.horizontalCenter = "0";
                                                      this.fontSize = 14;
                                                      this.textAlign = "center";
                                                      this.fontStyle = "normal";
                                                      this.fontWeight = "bold";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":LinkTextArea,
                                                   "id":"linkTA",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.backgroundAlpha = 0.3;
                                                      this.backgroundColor = 0;
                                                      this.borderStyle = "none";
                                                      this.color = 16774324;
                                                      this.bottom = "5";
                                                      this.left = "2";
                                                      this.right = "2";
                                                      this.top = "30";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "editable":false,
                                                         "enabled":true,
                                                         "selectable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"idSystemAll",
                                 "events":{"mouseDown":"__idSystemAll_mouseDown"},
                                 "stylesFactory":function():void
                                 {
                                    this.top = "60";
                                    this.left = "15";
                                    this.right = "15";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"idSystemAllTile",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.right = "10";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"childDescriptors":[new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot0"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot1"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot2"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot3"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot4"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot5"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot6"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot7"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot8"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot9"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot10"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot11"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot12"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot13"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot14"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot15"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot16"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot17"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot18"
                                             }),new UIComponentDescriptor({
                                                "type":ShopSlot,
                                                "id":"shopSlot19"
                                             })]};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":PageSelector,
                                          "id":"pageSelector",
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "40";
                                             this.horizontalCenter = "0";
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"_VipShopPanel_RoundedLabel3",
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "15";
                                             this.left = "20";
                                             this.color = 16777215;
                                             this.fontSize = 14;
                                             this.textAlign = "center";
                                             this.fontStyle = "normal";
                                             this.fontWeight = "bold";
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicDelayButton,
                                          "id":"_VipShopPanel_BasicDelayButton2",
                                          "events":{"click":"___VipShopPanel_BasicDelayButton2_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "15";
                                             this.right = "60";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "clickDelay":3000,
                                                "styleName":"BtnStdRed",
                                                "width":100
                                             };
                                          }
                                       })]
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
      });
      
      public function VipShopPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 590;
         this.height = 380;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___VipShopPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VipShopPanel._watcherSetupUtil = param1;
      }
      
      public function set idReflash(param1:Canvas) : void
      {
         var _loc2_:Object = this._133132290idReflash;
         if(_loc2_ !== param1)
         {
            this._133132290idReflash = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idReflash",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idReflash() : Canvas
      {
         return this._133132290idReflash;
      }
      
      public function set idTabCanvas1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229569idTabCanvas1;
         if(_loc2_ !== param1)
         {
            this._277229569idTabCanvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas1",_loc2_,param1));
         }
      }
      
      private function buyVipSlotSelected(param1:int) : void
      {
         _core.remote.call("buyVipShopItem",new Responder(onBuyVipSlotSelected),_selectedVipSlot.slotData.id,param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get idSystemAll() : Canvas
      {
         return this._960253463idSystemAll;
      }
      
      public function __idVipShopSlot2_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function onGetVipShopConfig(param1:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         trace("onGetVipShopConfig");
         var _loc2_:Boolean = Boolean(param1.flag);
         var _loc3_:Object = param1.vipShop;
         reflashTime = param1.reflashTime;
         var _loc4_:Object = param1.shopDynamic;
         btnReflashEnable = _loc2_;
         if(!_loc2_)
         {
            Alert.show(Language.VIPSHOPPANEL_U[11],"",Alert.YES,null,null);
            return;
         }
         idReflashTile.visible = true;
         firstTimeFlag = false;
         vipShopItemList.removeAll();
         for(_loc5_ in _loc3_)
         {
            vipShopItemList.addItem(_loc3_[_loc5_]);
         }
         _loc6_ = 0;
         while(_loc6_ < VIP_SHOP_SLOT_NUM)
         {
            if(vipShopItemList[_loc6_])
            {
               this["idVipShopSlot" + _loc6_].slotData = vipShopItemList[_loc6_];
               this["idVipShopSlot" + _loc6_].type = vipShopItemList[_loc6_].type;
               this["idVipShopSlot" + _loc6_].giid = vipShopItemList[_loc6_].itemId;
               this["idVipShopSlot" + _loc6_].visible = true;
            }
            _loc6_++;
         }
         trace("reflashTime:" + reflashTime + "==" + dateFormatter(reflashTime));
         if(reflashTime > 0)
         {
            idReflashTime.text = _checkReflashTimeValid(reflashTime) ? Language.VIPSHOPPANEL_U[6].toString().replace("{time}",dateFormatter(reflashTime)) : Language.VIPSHOPPANEL_U[15];
         }
         setShopDynamic(_loc4_);
      }
      
      public function set idSystemAll(param1:Canvas) : void
      {
         var _loc2_:Object = this._960253463idSystemAll;
         if(_loc2_ !== param1)
         {
            this._960253463idSystemAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSystemAll",_loc2_,param1));
         }
      }
      
      private function _checkReflashTimeValid(param1:Number) : Boolean
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:Number = _loc2_.getDate();
         var _loc4_:Date = new Date();
         var _loc5_:Number = _loc4_.getDate();
         return _loc3_ == _loc5_ ? true : false;
      }
      
      private function showPmPanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PM);
         if(_loc1_)
         {
            _loc1_.initPanelData(null);
         }
      }
      
      private function onBuyVipSlotSelected(param1:Object) : void
      {
         var _loc2_:Boolean = Boolean(param1.flag);
         var _loc3_:Object = param1.shopDynamic;
         if(!_loc2_)
         {
            return;
         }
         setShopDynamic(_loc3_);
      }
      
      public function ___VipShopPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         getVipShopCharConfig();
      }
      
      public function __idVipShopSlot3_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _VipShopPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.VIPSHOPPANEL_U[0];
         _loc1_ = Language.VIPSHOPPANEL_U[1];
         _loc1_ = Language.VIPSHOPPANEL_U[2];
         _loc1_ = Language.VIPSHOPPANEL_U[0];
         _loc1_ = Language.VIPSHOPPANEL_U[16];
         _loc1_ = btnReflashEnable;
         _loc1_ = Language.VIPSHOPPANEL_U[5];
         _loc1_ = Language.VIPSHOPPANEL_U[3];
         _loc1_ = Language.VIPSHOPPANEL_U[1];
         _loc1_ = Language.VIPSHOPPANEL_U[8];
         _loc1_ = Language.VIPSHOPPANEL_U[9];
      }
      
      public function set shopSlot12(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924043shopSlot12;
         if(_loc2_ !== param1)
         {
            this._1141924043shopSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot12",_loc2_,param1));
         }
      }
      
      public function set shopSlot13(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924042shopSlot13;
         if(_loc2_ !== param1)
         {
            this._1141924042shopSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot13",_loc2_,param1));
         }
      }
      
      public function set shopSlot10(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924045shopSlot10;
         if(_loc2_ !== param1)
         {
            this._1141924045shopSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot10",_loc2_,param1));
         }
      }
      
      public function set shopSlot14(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924041shopSlot14;
         if(_loc2_ !== param1)
         {
            this._1141924041shopSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot14",_loc2_,param1));
         }
      }
      
      public function set shopSlot11(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924044shopSlot11;
         if(_loc2_ !== param1)
         {
            this._1141924044shopSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot11",_loc2_,param1));
         }
      }
      
      public function set shopSlot15(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924040shopSlot15;
         if(_loc2_ !== param1)
         {
            this._1141924040shopSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot15",_loc2_,param1));
         }
      }
      
      public function set shopSlot16(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924039shopSlot16;
         if(_loc2_ !== param1)
         {
            this._1141924039shopSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot16",_loc2_,param1));
         }
      }
      
      public function set shopSlot18(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924037shopSlot18;
         if(_loc2_ !== param1)
         {
            this._1141924037shopSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot18",_loc2_,param1));
         }
      }
      
      public function set shopSlot19(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924036shopSlot19;
         if(_loc2_ !== param1)
         {
            this._1141924036shopSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot19",_loc2_,param1));
         }
      }
      
      public function set shopSlot17(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924038shopSlot17;
         if(_loc2_ !== param1)
         {
            this._1141924038shopSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot17",_loc2_,param1));
         }
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            this["shopSlot" + _loc1_].st = -1;
            this["shopSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get btnReflashEnable() : Boolean
      {
         return this._1051699068btnReflashEnable;
      }
      
      private function getVipShopCharConfig() : void
      {
         var msg:String;
         var func:Function;
         var pmLev:Number = _core.player.pmLevel;
         trace("getVipShopCharConfig " + pmLev);
         pmLev = pmLev ? pmLev : 0;
         if(pmLev <= 0)
         {
            Alert.show(Language.VIPSHOPPANEL_U[14]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getVipShopCharConfig",new Responder(onGetVipShopConfig));
            }
         };
         msg = Language.VIPSHOPPANEL_U[13].toString().replace("{gold}",GamePredef.VIP_SHOP_REFLASH_GOLD);
         Alert.show(msg,Language.VIPSHOPPANEL_U[12],Alert.YES | Alert.NO,null,func);
      }
      
      private function setShopSlot() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            if(shopItemList[_loc1_])
            {
               this["shopSlot" + _loc1_].slotData = shopItemList[_loc1_];
               this["shopSlot" + _loc1_].type = shopItemList[_loc1_].type;
               this["shopSlot" + _loc1_].giid = shopItemList[_loc1_].itemId;
               this["shopSlot" + _loc1_].stackNum = shopItemList[_loc1_].stackNum;
               this["shopSlot" + _loc1_].st = shopItemList[_loc1_].st;
               this["shopSlot" + _loc1_].visible = true;
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot0() : ShopSlot
      {
         return this._2115046244shopSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot1() : ShopSlot
      {
         return this._2115046243shopSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot2() : ShopSlot
      {
         return this._2115046242shopSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot3() : ShopSlot
      {
         return this._2115046241shopSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot4() : ShopSlot
      {
         return this._2115046240shopSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot5() : ShopSlot
      {
         return this._2115046239shopSlot5;
      }
      
      private function clickHandler(param1:Event) : void
      {
         clearSelection();
         var _loc2_:VipShopSlot = VipShopSlot(param1.currentTarget);
         _loc2_.selected = true;
         _selectedVipSlot = _loc2_;
      }
      
      public function __idVipShopSlot0_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot9() : ShopSlot
      {
         return this._2115046235shopSlot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot7() : ShopSlot
      {
         return this._2115046237shopSlot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot8() : ShopSlot
      {
         return this._2115046236shopSlot8;
      }
      
      public function __idVipShopSlot3_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      private function setShopDynamic(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:SortField = null;
         var _loc5_:Sort = null;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         var _loc14_:String = null;
         trace("setShopDynamic");
         clearBuyLog();
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            _loc2_.addItem(_loc3_);
         }
         _loc4_ = new SortField();
         _loc4_.name = "time";
         _loc5_ = new Sort();
         _loc5_.fields = [_loc4_];
         _loc4_.numeric = true;
         _loc4_.descending = true;
         _loc2_.sort = _loc5_;
         _loc2_.refresh();
         for(_loc6_ in _loc2_)
         {
            _loc7_ = _loc2_[_loc6_];
            _loc8_ = Number(_loc7_.cid);
            _loc9_ = _loc7_.cName;
            _loc10_ = int(_loc7_.type);
            _loc11_ = int(_loc7_.itemId);
            _loc12_ = int(_loc7_.num);
            _loc13_ = ObjectUtil.copy(_core.data.getGameData(_loc10_,_loc11_));
            if(!_loc13_)
            {
               return;
            }
            if(!_loc13_.color || _loc13_.color < 0)
            {
               _loc13_.color = 0;
            }
            _loc14_ = Language.VIPSHOPPANEL_U[7];
            _loc14_ = _loc14_.replace("{name}"," [@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + _loc8_ + "|" + _loc9_ + "|0|0|0] ");
            if(_loc10_ == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               _loc14_ = _loc14_.replace("{item}",TextUtil.decode(" [@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + _loc11_ + "|" + _loc13_.name + "|" + _loc13_.color + "|" + 0 + "|" + 0 + "]"));
            }
            else if(_loc10_ == GamePredef.TBL_ITEM_TEMPLATE)
            {
               _loc14_ = _loc14_.replace("{item}",TextUtil.decode(" [@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + _loc11_ + "|" + _loc13_.name + "|" + _loc13_.color + "|" + 0 + "|" + 0 + "]"));
            }
            _loc14_ += "<br>";
            _buyLog.push(TextUtil.decode(_loc14_));
         }
         if(initialized)
         {
            linkTA.htmlText = _buyLog.join();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot6() : ShopSlot
      {
         return this._2115046238shopSlot6;
      }
      
      private function delayReflashShop() : Boolean
      {
         var _loc1_:Number = 10000;
         var _loc2_:Date = new Date();
         var _loc3_:Number = _loc2_.getTime();
         if(!sysShopReflashTime || Boolean(sysShopReflashTime) && Boolean(_loc3_ >= sysShopReflashTime + _loc1_))
         {
            sysShopReflashTime = _loc3_;
            return false;
         }
         return true;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      private function dateFormatter(param1:Number) : String
      {
         if(!param1)
         {
            return "";
         }
         var _loc2_:Date = new Date(param1);
         var _loc3_:String = Language.VIPSHOPPANEL_U[17].toString();
         _loc3_ = _loc3_.replace("{hour}",("0" + _loc2_.getHours()).toString().substr(-2));
         return _loc3_.replace("{minute}",("0" + _loc2_.getMinutes()).toString().substr(-2));
      }
      
      public function set idSystemAllTile(param1:Tile) : void
      {
         var _loc2_:Object = this._2016333467idSystemAllTile;
         if(_loc2_ !== param1)
         {
            this._2016333467idSystemAllTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSystemAllTile",_loc2_,param1));
         }
      }
      
      public function initPanel() : void
      {
         if(!initialized)
         {
            _core.player.normalView.pause();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         callLater(_core.player.normalView.resume);
         idReflashTile.visible = false;
         _core.remote.call("getVipShopConfig",new Responder(onGetVipShopConfig));
      }
      
      public function ___VipShopPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function __idSystemAll_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         var _loc2_:Number = new Date().getTime();
         if(param1 && (firstTimeFlag || _loc2_ >= reflashTime))
         {
            initReflashShop();
         }
      }
      
      private function _setNumToBuy() : void
      {
         var _loc1_:NumPanel = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
         _loc1_.numStepper.value = 1;
         _loc1_.numStepper.enabled = false;
         _loc1_.parent = this;
         _loc1_.showSelected(_selectedVipSlot,null,NumPanel.TYPE_BUY,buyVipSlotSelected);
         _loc1_.closeWith(this);
      }
      
      private function getShopListBySid(param1:int) : ArrayCollection
      {
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][param1];
         return addDataToList(_loc2_);
      }
      
      public function __idVipShopSlot5_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function initReflashShop() : void
      {
         trace("initReflashShop");
         if(!idReflashTile.visible)
         {
            return;
         }
         idReflashTile.visible = false;
         _core.remote.call("getVipShopConfig",new Responder(onGetVipShopConfig));
      }
      
      private function set btnReflashEnable(param1:Boolean) : void
      {
         var _loc2_:Object = this._1051699068btnReflashEnable;
         if(_loc2_ !== param1)
         {
            this._1051699068btnReflashEnable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnReflashEnable",_loc2_,param1));
         }
      }
      
      public function __idReflash_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __idVipShopSlot0_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __idVipShopSlot4_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
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
      
      public function __idVipShopSlot2_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:VipShopSlot = VipShopSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _loc2_.selected = true;
         buyFromVipShop();
      }
      
      public function __idTabCanvas1_click(param1:MouseEvent) : void
      {
         setTab(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot10() : ShopSlot
      {
         return this._1141924045shopSlot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot12() : ShopSlot
      {
         return this._1141924043shopSlot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot13() : ShopSlot
      {
         return this._1141924042shopSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot14() : ShopSlot
      {
         return this._1141924041shopSlot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot16() : ShopSlot
      {
         return this._1141924039shopSlot16;
      }
      
      public function set shopSlot1(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046243shopSlot1;
         if(_loc2_ !== param1)
         {
            this._2115046243shopSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot11() : ShopSlot
      {
         return this._1141924044shopSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot19() : ShopSlot
      {
         return this._1141924036shopSlot19;
      }
      
      public function set shopSlot3(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046241shopSlot3;
         if(_loc2_ !== param1)
         {
            this._2115046241shopSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot3",_loc2_,param1));
         }
      }
      
      public function set shopSlot0(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046244shopSlot0;
         if(_loc2_ !== param1)
         {
            this._2115046244shopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot17() : ShopSlot
      {
         return this._1141924038shopSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot18() : ShopSlot
      {
         return this._1141924037shopSlot18;
      }
      
      public function buyFromVipShop() : void
      {
         var func:Function;
         var bagpanel:Object;
         var pmLev:Number = _core.player.pmLevel;
         pmLev = pmLev ? pmLev : 0;
         if(pmLev <= 0)
         {
            Alert.show(Language.VIPSHOPPANEL_U[14]);
            return;
         }
         bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
         func = function(param1:String):void
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
      
      public function set shopSlot6(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046238shopSlot6;
         if(_loc2_ !== param1)
         {
            this._2115046238shopSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot6",_loc2_,param1));
         }
      }
      
      public function set shopSlot7(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046237shopSlot7;
         if(_loc2_ !== param1)
         {
            this._2115046237shopSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot7",_loc2_,param1));
         }
      }
      
      public function set shopSlot5(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046239shopSlot5;
         if(_loc2_ !== param1)
         {
            this._2115046239shopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot5",_loc2_,param1));
         }
      }
      
      public function set shopSlot9(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046235shopSlot9;
         if(_loc2_ !== param1)
         {
            this._2115046235shopSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot9",_loc2_,param1));
         }
      }
      
      public function set shopSlot2(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046242shopSlot2;
         if(_loc2_ !== param1)
         {
            this._2115046242shopSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot2",_loc2_,param1));
         }
      }
      
      public function set shopSlot4(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046240shopSlot4;
         if(_loc2_ !== param1)
         {
            this._2115046240shopSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot15() : ShopSlot
      {
         return this._1141924040shopSlot15;
      }
      
      public function set shopSlot8(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046236shopSlot8;
         if(_loc2_ !== param1)
         {
            this._2115046236shopSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSystemAllTile() : Tile
      {
         return this._2016333467idSystemAllTile;
      }
      
      public function set idVipShopSlot0(param1:VipShopSlot) : void
      {
         var _loc2_:Object = this._1344515514idVipShopSlot0;
         if(_loc2_ !== param1)
         {
            this._1344515514idVipShopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idVipShopSlot0",_loc2_,param1));
         }
      }
      
      public function set idVipShopSlot1(param1:VipShopSlot) : void
      {
         var _loc2_:Object = this._1344515515idVipShopSlot1;
         if(_loc2_ !== param1)
         {
            this._1344515515idVipShopSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idVipShopSlot1",_loc2_,param1));
         }
      }
      
      public function set idVipShopSlot5(param1:VipShopSlot) : void
      {
         var _loc2_:Object = this._1344515519idVipShopSlot5;
         if(_loc2_ !== param1)
         {
            this._1344515519idVipShopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idVipShopSlot5",_loc2_,param1));
         }
      }
      
      public function set idVipShopSlot2(param1:VipShopSlot) : void
      {
         var _loc2_:Object = this._1344515516idVipShopSlot2;
         if(_loc2_ !== param1)
         {
            this._1344515516idVipShopSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idVipShopSlot2",_loc2_,param1));
         }
      }
      
      public function set idVipShopSlot3(param1:VipShopSlot) : void
      {
         var _loc2_:Object = this._1344515517idVipShopSlot3;
         if(_loc2_ !== param1)
         {
            this._1344515517idVipShopSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idVipShopSlot3",_loc2_,param1));
         }
      }
      
      public function set idVipShopSlot4(param1:VipShopSlot) : void
      {
         var _loc2_:Object = this._1344515518idVipShopSlot4;
         if(_loc2_ !== param1)
         {
            this._1344515518idVipShopSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idVipShopSlot4",_loc2_,param1));
         }
      }
      
      private function addDataToList(param1:Object) : ArrayCollection
      {
         var _loc3_:Object = null;
         var _loc4_:SortField = null;
         var _loc5_:Sort = null;
         var _loc6_:Object = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            if(_loc3_ != null)
            {
               _loc6_ = new Object();
               _loc6_.slotData = _loc3_;
               _loc6_.type = _loc3_.type;
               _loc6_.giid = _loc3_.itemId;
               _loc6_.position = _loc3_.position;
               _loc6_.st = _loc3_.st;
               if(_loc6_.slotData.sid == GamePredef.VIP_SHOP_ID)
               {
                  if(_loc6_.st != GamePredef.SHOP_SELL_TYPE_HIDE)
                  {
                     _loc2_.addItem(_loc6_);
                  }
               }
            }
         }
         _loc4_ = new SortField();
         _loc4_.name = "position";
         _loc5_ = new Sort();
         _loc5_.fields = [_loc4_];
         _loc4_.numeric = true;
         _loc2_.sort = _loc5_;
         _loc2_.refresh();
         return _loc2_;
      }
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      private function clearBuyLog() : void
      {
         if(initialized)
         {
            linkTA.htmlText = "";
         }
         _buyLog.clear();
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:VipShopPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VipShopPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_VipShopPanelWatcherSetupUtil");
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
      
      public function __idVipShopSlot1_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __idVipShopSlot5_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      private function _VipShopPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopPanel_BasicTitleCanvas1.text = param1;
         },"_VipShopPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas0.label = param1;
         },"idTabCanvas0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas1.label = param1;
         },"idTabCanvas1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idReflashTile.label = param1;
         },"idReflashTile.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idReflashTime.text = param1;
         },"idReflashTime.text");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return btnReflashEnable;
         },function(param1:Boolean):void
         {
            _VipShopPanel_BasicDelayButton1.enabled = param1;
         },"_VipShopPanel_BasicDelayButton1.enabled");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopPanel_BasicDelayButton1.label = param1;
         },"_VipShopPanel_BasicDelayButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopPanel_RoundedLabel2.text = param1;
         },"_VipShopPanel_RoundedLabel2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idSystemAllTile.label = param1;
         },"idSystemAllTile.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopPanel_RoundedLabel3.text = param1;
         },"_VipShopPanel_RoundedLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipShopPanel_BasicDelayButton2.label = param1;
         },"_VipShopPanel_BasicDelayButton2.label");
         result[10] = binding;
         return result;
      }
      
      public function ___VipShopPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         showPmPanel();
      }
      
      public function __idVipShopSlot4_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set idReflashTile(param1:Tile) : void
      {
         var _loc2_:Object = this._1560582704idReflashTile;
         if(_loc2_ !== param1)
         {
            this._1560582704idReflashTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idReflashTile",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idVipShopSlot0() : VipShopSlot
      {
         return this._1344515514idVipShopSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get idVipShopSlot1() : VipShopSlot
      {
         return this._1344515515idVipShopSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idVipShopSlot4() : VipShopSlot
      {
         return this._1344515518idVipShopSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get idVipShopSlot5() : VipShopSlot
      {
         return this._1344515519idVipShopSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get idVipShopSlot3() : VipShopSlot
      {
         return this._1344515517idVipShopSlot3;
      }
      
      private function initDictionary() : void
      {
         shopItemList = getShopListBySid(GamePredef.VIP_SHOP_ID);
      }
      
      [Bindable(event="propertyChange")]
      public function get idVipShopSlot2() : VipShopSlot
      {
         return this._1344515516idVipShopSlot2;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["shopSlot" + _loc4_].type = shopItemList[_loc3_].type;
            this["shopSlot" + _loc4_].slotData = shopItemList[_loc3_].slotData;
            this["shopSlot" + _loc4_].stackNum = shopItemList[_loc3_].stackNum;
            this["shopSlot" + _loc4_].giid = shopItemList[_loc3_].giid;
            this["shopSlot" + _loc4_].st = shopItemList[_loc3_].st;
            this["shopSlot" + _loc4_].visible = true;
            _loc4_++;
         }
      }
      
      public function set linkTA(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1102666777linkTA;
         if(_loc2_ !== param1)
         {
            this._1102666777linkTA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkTA",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idReflashTile() : Tile
      {
         return this._1560582704idReflashTile;
      }
      
      private function setTab(param1:int) : void
      {
         vs.selectedIndex = param1;
         var _loc2_:int = 2;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["idTabCanvas" + _loc3_].selected = false;
            _loc3_++;
         }
         this["idTabCanvas" + param1].selected = true;
         if(param1 == 1)
         {
            initDictionary();
            pageSelector.onPageChanged = onPageChanged;
            pageSelector.onPageCleared = clearPage;
            pageSelector.initPageSeletor(shopItemList.length,ITEM_COUNT_PER_PAGE);
         }
         else if(param1 == 0 && !delayReflashShop())
         {
            initReflashShop();
         }
      }
      
      override public function initView() : void
      {
         initDictionary();
         setShopSlot();
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < VIP_SHOP_SLOT_NUM)
         {
            this["idVipShopSlot" + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      public function __idVipShopSlot1_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set idReflashTime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1560582673idReflashTime;
         if(_loc2_ !== param1)
         {
            this._1560582673idReflashTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idReflashTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get linkTA() : LinkTextArea
      {
         return this._1102666777linkTA;
      }
      
      public function __idTabCanvas0_click(param1:MouseEvent) : void
      {
         setTab(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get idReflashTime() : RoundedLabel
      {
         return this._1560582673idReflashTime;
      }
      
      private function doBuy(param1:Boolean) : void
      {
         var num:* = undefined;
         var bagpanel:Object = null;
         var func:Function = null;
         var result:Boolean = param1;
         if(result)
         {
            num = 1;
            bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(bagpanel) && Boolean(bagpanel.goldSelected))
            {
               bagpanel.goldLockFlag = false;
            }
            if(_selectedVipSlot)
            {
               if(_selectedVipSlot.slotData.gt == 1 || Boolean(bagpanel) && Boolean(bagpanel.goldSelected))
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        buyVipSlotSelected(num);
                     }
                  };
                  Alert.show(Language.VIPSHOPPANEL_U[19].toString().replace("{gold}",_selectedVipSlot.slotData.gold),"",Alert.YES | Alert.NO,null,func);
                  return;
               }
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     buyVipSlotSelected(num);
                  }
               };
               Alert.show(Language.VIPSHOPPANEL_U[20].toString().replace("{gold}",_selectedVipSlot.slotData.gold),"",Alert.YES | Alert.NO,null,func);
               return;
            }
         }
      }
      
      public function set idTabCanvas0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229570idTabCanvas0;
         if(_loc2_ !== param1)
         {
            this._277229570idTabCanvas0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas0() : BasicGlowButton
      {
         return this._277229570idTabCanvas0;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas1() : BasicGlowButton
      {
         return this._277229569idTabCanvas1;
      }
   }
}

