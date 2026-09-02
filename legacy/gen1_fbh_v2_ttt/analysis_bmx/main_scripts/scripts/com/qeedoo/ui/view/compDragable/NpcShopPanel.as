package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.DressEvent;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.PageSelectorOnly;
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
   import mx.binding.utils.ChangeWatcher;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NpcShopPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _913513446itemDisplay5:NpcShopItemDisplay;
      
      private const TP:String = "totalPage";
      
      private var _watcher:ChangeWatcher;
      
      private var _913513445itemDisplay4:NpcShopItemDisplay;
      
      private var _1870028133titleBar:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _1473774508hintText:Label;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private const PAGE_NUM:int = 6;
      
      private var _1124544653zhishiLink:LinkButton;
      
      private var _pageDict:Object;
      
      private var _itemDict:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _shopId:String;
      
      private var _575402001currency:Label;
      
      private var _803559802pageTab:HButtonTab;
      
      private const CP:String = "curPage";
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":525,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"titleBar"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "events":{"tabChanged":"__pageTab_tabChanged"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":41,
                        "tabWidth":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":60,
                        "styleName":"CanvasBorder",
                        "width":495,
                        "height":330,
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "styleName":"InputContent",
                                 "width":475,
                                 "height":30,
                                 "mouseEnabled":false,
                                 "mouseChildren":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"currency",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"x":10};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"hintText",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                       this.textAlign = "right";
                                       this.verticalCenter = "0";
                                       this.right = "5";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"zhishiLink",
                           "events":{"click":"__zhishiLink_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.textDecoration = "underline";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":15,
                                 "x":150,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NpcShopItemDisplay,
                           "id":"itemDisplay0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":45,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NpcShopItemDisplay,
                           "id":"itemDisplay1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":250,
                                 "y":45,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NpcShopItemDisplay,
                           "id":"itemDisplay2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":130,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NpcShopItemDisplay,
                           "id":"itemDisplay3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":250,
                                 "y":130,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NpcShopItemDisplay,
                           "id":"itemDisplay4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":215,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NpcShopItemDisplay,
                           "id":"itemDisplay5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":250,
                                 "y":215,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelectorOnly,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"changeCall":pageHandler};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _913513441itemDisplay0:NpcShopItemDisplay;
      
      private var _913513442itemDisplay1:NpcShopItemDisplay;
      
      private var _913513443itemDisplay2:NpcShopItemDisplay;
      
      private var _913513444itemDisplay3:NpcShopItemDisplay;
      
      private var _core:Core = Core.getInstance();
      
      public function NpcShopPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 525;
         this.height = 410;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NpcShopPanel._watcherSetupUtil = param1;
      }
      
      private function updateCurrency(param1:Event = null) : void
      {
         var _loc2_:Object = ViewManager.NPCSHOP_CONFIG[_shopId];
         if(_shopId == "4")
         {
            currency.text = "";
            return;
         }
         currency.text = _loc2_ ? _loc2_.score + (_core.player.hasOwnProperty(_loc2_.prop) ? _core.player[_loc2_.prop] : 0) : "";
      }
      
      [Bindable(event="propertyChange")]
      public function get zhishiLink() : LinkButton
      {
         return this._1124544653zhishiLink;
      }
      
      public function set pageTab(param1:HButtonTab) : void
      {
         var _loc2_:Object = this._803559802pageTab;
         if(_loc2_ !== param1)
         {
            this._803559802pageTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTab",_loc2_,param1));
         }
      }
      
      public function updateView(param1:String) : void
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         _core.remote.call("updateLimit",new Responder(onUpdateLimit));
         _itemDict = {};
         _shopId = param1;
         var _loc2_:Object = DataManager.getInstance().gameDataIndex;
         var _loc3_:Object = _loc2_[GamePredef.TBL_CREDIT][_shopId];
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.isSell != 0)
            {
               _loc5_ = _loc4_.tab;
               _itemDict[_loc5_] = _itemDict[_loc5_] || [];
               _loc4_["position"] = Number(_loc4_["position"]);
               _itemDict[_loc5_].push(_loc4_);
            }
         }
         _pageDict = {};
         for(_loc5_ in _itemDict)
         {
            _loc6_ = _itemDict[_loc5_];
            (_loc6_) && _loc6_.sortOn("position",Array.NUMERIC);
            _pageDict[_loc5_] = {};
            _pageDict[_loc5_][CP] = 1;
            _pageDict[_loc5_][TP] = Math.ceil(_loc6_.length / PAGE_NUM);
         }
         this.updateShop();
      }
      
      private function helpInfo() : void
      {
         var _loc1_:String = Language.PRS_PANEL[44].toString();
         Alert.show(_loc1_);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NpcShopPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NpcShopPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NpcShopPanelWatcherSetupUtil");
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
      public function get currency() : Label
      {
         return this._575402001currency;
      }
      
      private function onUpdateLimit(param1:Object = null) : void
      {
         if(param1)
         {
            _core.player.creditDayDict = param1.dayDict;
            _core.player.creditWeekDict = param1.weekDict;
            _core.player.creditMonthDict = param1.monthDict;
            _core.player.creditTotalDict = param1.totalDict;
         }
         this.updatePage();
         this.show();
      }
      
      public function __pageTab_tabChanged(param1:DressEvent) : void
      {
         tabHandler(param1);
      }
      
      public function __zhishiLink_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      public function set currency(param1:Label) : void
      {
         var _loc2_:Object = this._575402001currency;
         if(_loc2_ !== param1)
         {
            this._575402001currency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currency",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function set hintText(param1:Label) : void
      {
         var _loc2_:Object = this._1473774508hintText;
         if(_loc2_ !== param1)
         {
            this._1473774508hintText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hintText",_loc2_,param1));
         }
      }
      
      private function _NpcShopPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PRS_PANEL[42];
      }
      
      private function pageHandler() : void
      {
         if(!this.initialized)
         {
            return;
         }
         var _loc1_:int = pageTab.selectedIndex + 1;
         if(!_pageDict || !_pageDict[_loc1_])
         {
            return;
         }
         _pageDict[_loc1_][TP] = pageSelector.totalPage;
         _pageDict[_loc1_][CP] = pageSelector.curPage;
         this.updatePage();
      }
      
      public function set itemDisplay0(param1:NpcShopItemDisplay) : void
      {
         var _loc2_:Object = this._913513441itemDisplay0;
         if(_loc2_ !== param1)
         {
            this._913513441itemDisplay0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDisplay0",_loc2_,param1));
         }
      }
      
      public function set titleBar(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1870028133titleBar;
         if(_loc2_ !== param1)
         {
            this._1870028133titleBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleBar",_loc2_,param1));
         }
      }
      
      public function set itemDisplay2(param1:NpcShopItemDisplay) : void
      {
         var _loc2_:Object = this._913513443itemDisplay2;
         if(_loc2_ !== param1)
         {
            this._913513443itemDisplay2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDisplay2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDisplay5() : NpcShopItemDisplay
      {
         return this._913513446itemDisplay5;
      }
      
      public function set itemDisplay1(param1:NpcShopItemDisplay) : void
      {
         var _loc2_:Object = this._913513442itemDisplay1;
         if(_loc2_ !== param1)
         {
            this._913513442itemDisplay1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDisplay1",_loc2_,param1));
         }
      }
      
      public function set itemDisplay3(param1:NpcShopItemDisplay) : void
      {
         var _loc2_:Object = this._913513444itemDisplay3;
         if(_loc2_ !== param1)
         {
            this._913513444itemDisplay3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDisplay3",_loc2_,param1));
         }
      }
      
      public function set itemDisplay4(param1:NpcShopItemDisplay) : void
      {
         var _loc2_:Object = this._913513445itemDisplay4;
         if(_loc2_ !== param1)
         {
            this._913513445itemDisplay4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDisplay4",_loc2_,param1));
         }
      }
      
      public function set itemDisplay5(param1:NpcShopItemDisplay) : void
      {
         var _loc2_:Object = this._913513446itemDisplay5;
         if(_loc2_ !== param1)
         {
            this._913513446itemDisplay5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDisplay5",_loc2_,param1));
         }
      }
      
      public function set zhishiLink(param1:LinkButton) : void
      {
         var _loc2_:Object = this._1124544653zhishiLink;
         if(_loc2_ !== param1)
         {
            this._1124544653zhishiLink = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhishiLink",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hintText() : Label
      {
         return this._1473774508hintText;
      }
      
      private function _NpcShopPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            currency.filters = param1;
         },"currency.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            hintText.filters = param1;
         },"hintText.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            zhishiLink.label = param1;
         },"zhishiLink.label");
         result[3] = binding;
         return result;
      }
      
      private function updateShop() : void
      {
         if(!this.initialized)
         {
            this.callLater(updateShop);
            return;
         }
         pageTab.selectedIndex = 0;
         var _loc1_:int = pageTab.selectedIndex + 1;
         if(Boolean(_pageDict) && Boolean(_pageDict[_loc1_]))
         {
            pageSelector.totalPage = _pageDict[_loc1_][TP];
            pageSelector.curPage = _pageDict[_loc1_][CP];
         }
         var _loc2_:Object = ViewManager.NPCSHOP_CONFIG[_shopId];
         if(!_loc2_)
         {
            return;
         }
         titleBar.text = _loc2_.name;
         pageTab.dataArray = _loc2_.data;
         hintText.text = _loc2_.hint;
         if(_shopId == "1")
         {
            zhishiLink.visible = true;
         }
         else
         {
            zhishiLink.visible = false;
         }
         if(_watcher)
         {
            _watcher.unwatch();
            _watcher = null;
         }
         _watcher = ChangeWatcher.watch(_core.player,_loc2_.prop,updateCurrency);
         this.updateCurrency();
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDisplay1() : NpcShopItemDisplay
      {
         return this._913513442itemDisplay1;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDisplay2() : NpcShopItemDisplay
      {
         return this._913513443itemDisplay2;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDisplay3() : NpcShopItemDisplay
      {
         return this._913513444itemDisplay3;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDisplay4() : NpcShopItemDisplay
      {
         return this._913513445itemDisplay4;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDisplay0() : NpcShopItemDisplay
      {
         return this._913513441itemDisplay0;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleBar() : BasicTitleCanvas
      {
         return this._1870028133titleBar;
      }
      
      private function tabHandler(param1:Event) : void
      {
         if(!this.initialized)
         {
            return;
         }
         var _loc2_:int = pageTab.selectedIndex + 1;
         if(!_pageDict || !_pageDict[_loc2_])
         {
            return;
         }
         pageSelector.totalPage = _pageDict[_loc2_][TP];
         pageSelector.curPage = _pageDict[_loc2_][CP];
         this.updatePage();
      }
      
      private function updatePage() : void
      {
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:NpcShopItemDisplay = null;
         var _loc10_:String = null;
         if(!this.initialized)
         {
            this.callLater(updatePage);
            return;
         }
         var _loc1_:int = pageTab.selectedIndex + 1;
         if(!_itemDict || !_itemDict[_loc1_])
         {
            return;
         }
         if(!_pageDict || !_pageDict[_loc1_])
         {
            return;
         }
         var _loc2_:Array = _itemDict[_loc1_];
         var _loc3_:Object = _pageDict[_loc1_];
         var _loc4_:int = (_loc3_[CP] - 1) * PAGE_NUM;
         var _loc5_:int = _loc4_ + PAGE_NUM;
         var _loc6_:int = _loc4_;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc6_ - _loc4_;
            _loc8_ = _loc2_[_loc6_];
            _loc9_ = this["itemDisplay" + _loc7_];
            _loc10_ = _loc8_ ? _loc8_.id : null;
            _loc9_.updateView(_loc10_);
            _loc6_++;
         }
      }
   }
}

