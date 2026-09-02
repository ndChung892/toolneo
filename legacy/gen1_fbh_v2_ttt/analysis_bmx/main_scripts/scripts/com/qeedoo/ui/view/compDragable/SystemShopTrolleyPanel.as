package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RendererItemSlot;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.LinkButton;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SystemShopTrolleyPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const MAX_GOODS_NUM:int = 20;
      
      public var _SystemShopTrolleyPanel_DataGrid1:DataGrid;
      
      private var _406334549totalTrolleyGoods:ArrayCollection = new ArrayCollection();
      
      private var buyList:Dictionary = new Dictionary();
      
      private var _719302555totalPrice:int = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1261039379acDetail:String;
      
      public var _SystemShopTrolleyPanel_DataGridColumn2:DataGridColumn;
      
      public var _SystemShopTrolleyPanel_DataGridColumn3:DataGridColumn;
      
      public var _SystemShopTrolleyPanel_DataGridColumn4:DataGridColumn;
      
      public var _SystemShopTrolleyPanel_DataGridColumn5:DataGridColumn;
      
      public var _SystemShopTrolleyPanel_DataGridColumn6:DataGridColumn;
      
      public var _SystemShopTrolleyPanel_DataGridColumn7:DataGridColumn;
      
      public var _SystemShopTrolleyPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _SystemShopTrolleyPanel_BasicGlowButton2:BasicGlowButton;
      
      private const ITEM_COUNT_PER_PAGE:int = 8;
      
      private var _90794110_core:Core = Core.getInstance();
      
      public var _SystemShopTrolleyPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      public var _SystemShopTrolleyPanel_RoundedLabel1:RoundedLabel;
      
      public var _SystemShopTrolleyPanel_RoundedLabel2:RoundedLabel;
      
      public var _SystemShopTrolleyPanel_RoundedLabel3:RoundedLabel;
      
      public var _SystemShopTrolleyPanel_RoundedLabel4:RoundedLabel;
      
      public var _SystemShopTrolleyPanel_RoundedLabel5:RoundedLabel;
      
      private var _callback:Function;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _2027545824pageTrolleyGoods:ArrayCollection = new ArrayCollection();
      
      public var _SystemShopTrolleyPanel_LinkButton1:LinkButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SystemShopTrolleyPanel_Image1:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _849911390totalNum:int = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":390,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SystemShopTrolleyPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.bottom = "40";
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"_SystemShopTrolleyPanel_DataGrid1",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.top = "10";
                              this.bottom = "52";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "rowHeight":28,
                                 "selectable":false,
                                 "columns":[_SystemShopTrolleyPanel_DataGridColumn1_c(),_SystemShopTrolleyPanel_DataGridColumn2_i(),_SystemShopTrolleyPanel_DataGridColumn3_i(),_SystemShopTrolleyPanel_DataGridColumn4_i(),_SystemShopTrolleyPanel_DataGridColumn5_i(),_SystemShopTrolleyPanel_DataGridColumn6_i(),_SystemShopTrolleyPanel_DataGridColumn7_i()]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_SystemShopTrolleyPanel_RoundedLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.left = "10";
                              this.textAlign = "right";
                              this.bottom = "32";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":40};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_SystemShopTrolleyPanel_RoundedLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.left = "10";
                              this.textAlign = "right";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":120};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_SystemShopTrolleyPanel_RoundedLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.left = "50";
                              this.bottom = "32";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":50};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_SystemShopTrolleyPanel_RoundedLabel4",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.left = "124.65";
                              this.textAlign = "center";
                              this.bottom = "32";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":40};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_SystemShopTrolleyPanel_Image1",
                           "stylesFactory":function():void
                           {
                              this.bottom = "33";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":166.65,
                                 "width":16,
                                 "height":16
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_SystemShopTrolleyPanel_RoundedLabel5",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.left = "186.65";
                              this.textAlign = "left";
                              this.bottom = "32";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":40};
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.bottom = "33";
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_SystemShopTrolleyPanel_LinkButton1",
                           "events":{"click":"___SystemShopTrolleyPanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.textDecoration = "underline";
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":124.65,
                                 "y":282
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_SystemShopTrolleyPanel_BasicGlowButton1",
                  "events":{"click":"___SystemShopTrolleyPanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-50";
                     this.bottom = "10";
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
                  "type":BasicGlowButton,
                  "id":"_SystemShopTrolleyPanel_BasicGlowButton2",
                  "events":{"click":"___SystemShopTrolleyPanel_BasicGlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "50";
                     this.bottom = "10";
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
      
      public function SystemShopTrolleyPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 390;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___SystemShopTrolleyPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SystemShopTrolleyPanel._watcherSetupUtil = param1;
      }
      
      private function _SystemShopTrolleyPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemSlot;
         return _loc1_;
      }
      
      public function ___SystemShopTrolleyPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function getTotalGold(param1:Object, param2:DataGridColumn) : int
      {
         return parseInt(param1.num) * parseInt(param1.gold);
      }
      
      public function init() : void
      {
      }
      
      public function doBuy(param1:CloseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.detail == Alert.OK)
         {
            _loc2_ = int(_core.view.getUI(ViewManager.PANEL_GAMEINTRO).carStyle);
            _core.remote.call("buySystemItemMulti",new Responder(_callback),buyList,_loc2_);
            totalTrolleyGoods.removeAll();
            pageTrolleyGoods.removeAll();
            totalNum = 0;
            totalPrice = 0;
            buyList = null;
            hide();
         }
      }
      
      private function _SystemShopTrolleyPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[25];
         _loc1_ = pageTrolleyGoods;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[30];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[31];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[32];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[33];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[34];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[35];
         _loc1_ = this.totalNum;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[29];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[26];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[28];
         _loc1_ = ResManager.ICON_CURRENCY_GOLD_ALL;
         _loc1_ = this.totalPrice;
         _loc1_ = acDetail;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[13];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[27];
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
      
      [Bindable(event="propertyChange")]
      private function get pageTrolleyGoods() : ArrayCollection
      {
         return this._2027545824pageTrolleyGoods;
      }
      
      [Bindable(event="propertyChange")]
      private function get acDetail() : String
      {
         return this._1261039379acDetail;
      }
      
      public function ___SystemShopTrolleyPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         handleClose();
      }
      
      private function set acDetail(param1:String) : void
      {
         var _loc2_:Object = this._1261039379acDetail;
         if(_loc2_ !== param1)
         {
            this._1261039379acDetail = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acDetail",_loc2_,param1));
         }
      }
      
      public function handleAcDetailText(param1:String) : void
      {
         if(param1 == null || param1 == "")
         {
            acDetail = Language.SYSTEMSHOPPANEL_U[45];
         }
         else
         {
            acDetail = param1;
         }
      }
      
      public function removeGoods(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:int = pageSelector.pageNo;
         for(_loc3_ in totalTrolleyGoods)
         {
            if(totalTrolleyGoods.getItemAt(_loc3_).shopSlotId == param1.shopSlotId)
            {
               totalTrolleyGoods.removeItemAt(_loc3_);
               --totalNum;
               totalPrice -= parseInt(param1.gold) * parseInt(param1.num);
               break;
            }
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(totalTrolleyGoods.length,ITEM_COUNT_PER_PAGE);
         pageSelector.pageNo = _loc2_;
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SystemShopTrolleyPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 110;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_SystemShopTrolleyPanel_DataGridColumn2",_SystemShopTrolleyPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function handleBuy() : void
      {
         var _loc1_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         if(!_loc1_.goldSelected)
         {
            Alert.show(Language.SYSTEMSHOPPANEL_U[38],Language.SYSTEMSHOPPANEL_U[39],Alert.OK | Alert.CANCEL,null,handleAlertEvent);
         }
         else
         {
            tryBuy();
         }
      }
      
      private function set pageTrolleyGoods(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._2027545824pageTrolleyGoods;
         if(_loc2_ !== param1)
         {
            this._2027545824pageTrolleyGoods = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTrolleyGoods",_loc2_,param1));
         }
      }
      
      private function set totalNum(param1:int) : void
      {
         var _loc2_:Object = this._849911390totalNum;
         if(_loc2_ !== param1)
         {
            this._849911390totalNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalNum",_loc2_,param1));
         }
      }
      
      public function getAcDetailText() : void
      {
         if(acDetail == null)
         {
            _core.remote.call("getShopAwardStr",new Responder(handleAcDetailText));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPrice() : int
      {
         return this._719302555totalPrice;
      }
      
      private function getTypeName(param1:Object, param2:DataGridColumn) : String
      {
         return GamePredef.ITEM_TYPE_NAME[param1.typeName];
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SystemShopTrolleyPanel_DataGridColumn6 = _loc1_;
         _loc1_.width = 70;
         _loc1_.dataField = "";
         _loc1_.labelFunction = getTotalGold;
         BindingManager.executeBindings(this,"_SystemShopTrolleyPanel_DataGridColumn6",_SystemShopTrolleyPanel_DataGridColumn6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get totalTrolleyGoods() : ArrayCollection
      {
         return this._406334549totalTrolleyGoods;
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.dataField = "";
         _loc1_.width = 35;
         _loc1_.itemRenderer = _SystemShopTrolleyPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      private function clearPage() : void
      {
         pageTrolleyGoods.removeAll();
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SystemShopTrolleyPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "num";
         BindingManager.executeBindings(this,"_SystemShopTrolleyPanel_DataGridColumn5",_SystemShopTrolleyPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      private function getAcDetail() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
         if(!_loc1_.visible)
         {
            _loc1_.show();
         }
         _loc1_.autoClick(8);
         _loc1_.flTabBtnClick(3);
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
         var target:SystemShopTrolleyPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SystemShopTrolleyPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SystemShopTrolleyPanelWatcherSetupUtil");
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
      
      public function handleCallback(param1:Object) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get totalNum() : int
      {
         return this._849911390totalNum;
      }
      
      public function addGoodsToTrolley(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(acDetail == null)
         {
            _core.remote.call("getShopAwardStr",new Responder(handleAcDetailText));
         }
         if(totalTrolleyGoods.length >= MAX_GOODS_NUM)
         {
            Alert.show(Language.SYSTEMSHOPPANEL_U[36]);
            return;
         }
         for(_loc2_ in totalTrolleyGoods)
         {
            if(param1.shopSlotId == totalTrolleyGoods.getItemAt(_loc2_).shopSlotId)
            {
               Alert.show(Language.SYSTEMSHOPPANEL_U[37]);
               return;
            }
         }
         totalTrolleyGoods.addItem(param1);
         ++totalNum;
         totalPrice += parseInt(param1.gold) * parseInt(param1.num);
         if(pageTrolleyGoods.length <= ITEM_COUNT_PER_PAGE)
         {
            pageTrolleyGoods.addItem(param1);
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(totalTrolleyGoods.length,ITEM_COUNT_PER_PAGE);
      }
      
      private function handleClose() : void
      {
         hide();
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SystemShopTrolleyPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "gold";
         BindingManager.executeBindings(this,"_SystemShopTrolleyPanel_DataGridColumn4",_SystemShopTrolleyPanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function _SystemShopTrolleyPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_BasicTitleCanvas1.text = param1;
         },"_SystemShopTrolleyPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return pageTrolleyGoods;
         },function(param1:Object):void
         {
            _SystemShopTrolleyPanel_DataGrid1.dataProvider = param1;
         },"_SystemShopTrolleyPanel_DataGrid1.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_DataGridColumn2.headerText = param1;
         },"_SystemShopTrolleyPanel_DataGridColumn2.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_DataGridColumn3.headerText = param1;
         },"_SystemShopTrolleyPanel_DataGridColumn3.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_DataGridColumn4.headerText = param1;
         },"_SystemShopTrolleyPanel_DataGridColumn4.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_DataGridColumn5.headerText = param1;
         },"_SystemShopTrolleyPanel_DataGridColumn5.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_DataGridColumn6.headerText = param1;
         },"_SystemShopTrolleyPanel_DataGridColumn6.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_DataGridColumn7.headerText = param1;
         },"_SystemShopTrolleyPanel_DataGridColumn7.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = this.totalNum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_RoundedLabel1.text = param1;
         },"_SystemShopTrolleyPanel_RoundedLabel1.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_RoundedLabel2.text = param1;
         },"_SystemShopTrolleyPanel_RoundedLabel2.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_RoundedLabel3.text = param1;
         },"_SystemShopTrolleyPanel_RoundedLabel3.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_RoundedLabel4.text = param1;
         },"_SystemShopTrolleyPanel_RoundedLabel4.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_CURRENCY_GOLD_ALL;
         },function(param1:Object):void
         {
            _SystemShopTrolleyPanel_Image1.source = param1;
         },"_SystemShopTrolleyPanel_Image1.source");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = this.totalPrice;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_RoundedLabel5.text = param1;
         },"_SystemShopTrolleyPanel_RoundedLabel5.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = acDetail;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_LinkButton1.label = param1;
         },"_SystemShopTrolleyPanel_LinkButton1.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_BasicGlowButton1.label = param1;
         },"_SystemShopTrolleyPanel_BasicGlowButton1.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopTrolleyPanel_BasicGlowButton2.label = param1;
         },"_SystemShopTrolleyPanel_BasicGlowButton2.label");
         result[16] = binding;
         return result;
      }
      
      public function ___SystemShopTrolleyPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         getAcDetail();
      }
      
      private function set totalTrolleyGoods(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._406334549totalTrolleyGoods;
         if(_loc2_ !== param1)
         {
            this._406334549totalTrolleyGoods = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalTrolleyGoods",_loc2_,param1));
         }
      }
      
      private function _SystemShopTrolleyPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SystemShopTrolleyPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function set totalPrice(param1:int) : void
      {
         var _loc2_:Object = this._719302555totalPrice;
         if(_loc2_ !== param1)
         {
            this._719302555totalPrice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPrice",_loc2_,param1));
         }
      }
      
      private function tryBuy() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:BagPanel = null;
         buyList = new Dictionary();
         for(_loc3_ in totalTrolleyGoods)
         {
            _loc1_ = Number(totalTrolleyGoods.getItemAt(_loc3_).shopSlotId);
            _loc2_ = int(totalTrolleyGoods.getItemAt(_loc3_).num);
            buyList[_loc1_] = _loc2_;
         }
         _callback = handleCallback;
         _loc4_ = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         if(_loc4_.goldDisable())
         {
            _loc4_.clickLock(2);
            return;
         }
         var _loc5_:String = Language.SYSTEMSHOPPANEL_U[40].replace("{totalGold}",totalPrice);
         Alert.show(_loc5_,Language.SYSTEMSHOPPANEL_U[39],Alert.OK | Alert.CANCEL,null,doBuy);
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            pageTrolleyGoods.addItem(totalTrolleyGoods.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      private function handleAlertEvent(param1:CloseEvent) : void
      {
         if(param1.detail != Alert.OK)
         {
            return;
         }
         tryBuy();
      }
      
      public function ___SystemShopTrolleyPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         handleBuy();
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SystemShopTrolleyPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 65;
         _loc1_.dataField = "typeName";
         _loc1_.labelFunction = getTypeName;
         BindingManager.executeBindings(this,"_SystemShopTrolleyPanel_DataGridColumn3",_SystemShopTrolleyPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      private function _SystemShopTrolleyPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SystemShopTrolleyPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "";
         _loc1_.itemRenderer = _SystemShopTrolleyPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_SystemShopTrolleyPanel_DataGridColumn7",_SystemShopTrolleyPanel_DataGridColumn7);
         return _loc1_;
      }
   }
}

