package com.qeedoo.ui.view.compDragable
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.DressEvent;
   import com.qeedoo.ui.utils.LanguageUtil;
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
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RecipeExchangePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const TYPE_RECIPE:int = 1;
      
      private static const TYPE_DRESS:int = 1;
      
      private static const TYPE_FLYER:int = 2;
      
      private static const PAGE_NUM:int = 5;
      
      private var _dressArr:Array;
      
      private var _1978788499recipeItem4:RecipeItem;
      
      private var _1978788495recipeItem0:RecipeItem;
      
      mx_internal var _watchers:Array = [];
      
      private var _pageFlyer:int = 1;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _1978788498recipeItem3:RecipeItem;
      
      private var _flyerArr:Array;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1978788497recipeItem2:RecipeItem;
      
      private var _2128961247scoreText:Label;
      
      private var _803559802pageTab:HButtonTab;
      
      public var _RecipeExchangePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1978788496recipeItem1:RecipeItem;
      
      private var _pageDress:int = 1;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_RecipeExchangePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "events":{"tabChanged":"__pageTab_tabChanged"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":41,
                        "selectedIndex":0,
                        "tabWidth":75
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "x":15,
                        "y":60,
                        "width":270,
                        "height":325,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"InputContent",
                                 "width":250,
                                 "height":30,
                                 "y":10,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"scoreText",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"x":7};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":45,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RecipeItem,
                                    "id":"recipeItem0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"visible":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RecipeItem,
                                    "id":"recipeItem1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"visible":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RecipeItem,
                                    "id":"recipeItem2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"visible":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RecipeItem,
                                    "id":"recipeItem3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"visible":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RecipeItem,
                                    "id":"recipeItem4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"visible":false};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelectorOnly,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "setChange":false,
                                 "changeCall":pageHandler
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function RecipeExchangePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 400;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___RecipeExchangePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RecipeExchangePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
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
      
      [Bindable(event="propertyChange")]
      public function get recipeItem0() : RecipeItem
      {
         return this._1978788495recipeItem0;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RecipeExchangePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RecipeExchangePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_RecipeExchangePanelWatcherSetupUtil");
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
      public function get recipeItem2() : RecipeItem
      {
         return this._1978788497recipeItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeItem4() : RecipeItem
      {
         return this._1978788499recipeItem4;
      }
      
      public function __pageTab_tabChanged(param1:DressEvent) : void
      {
         tabChangeHandler(param1);
      }
      
      private function updateView() : void
      {
         var _loc2_:Object = null;
         _dressArr = [];
         _flyerArr = [];
         var _loc1_:Object = GameData.d[GamePredef.TBL_RECIPE];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.type == TYPE_RECIPE)
            {
               if(_loc2_.kind == TYPE_DRESS)
               {
                  _dressArr.push(_loc2_);
               }
               else if(_loc2_.kind == TYPE_FLYER)
               {
                  _flyerArr.push(_loc2_);
               }
            }
         }
         _dressArr.sortOn("position",Array.NUMERIC);
         _flyerArr.sortOn("position",Array.NUMERIC);
         updateSelector();
         updatePage();
         changeHandler();
      }
      
      public function set recipeItem0(param1:RecipeItem) : void
      {
         var _loc2_:Object = this._1978788495recipeItem0;
         if(_loc2_ !== param1)
         {
            this._1978788495recipeItem0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeItem0",_loc2_,param1));
         }
      }
      
      public function set recipeItem1(param1:RecipeItem) : void
      {
         var _loc2_:Object = this._1978788496recipeItem1;
         if(_loc2_ !== param1)
         {
            this._1978788496recipeItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeItem1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeItem3() : RecipeItem
      {
         return this._1978788498recipeItem3;
      }
      
      public function set recipeItem2(param1:RecipeItem) : void
      {
         var _loc2_:Object = this._1978788497recipeItem2;
         if(_loc2_ !== param1)
         {
            this._1978788497recipeItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeItem2",_loc2_,param1));
         }
      }
      
      private function _RecipeExchangePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DRESS_PANEL[21];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[40];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      private function cleanView() : void
      {
         var _loc2_:RecipeItem = null;
         _pageDress = 1;
         _pageFlyer = 1;
         _dressArr = null;
         _flyerArr = null;
         var _loc1_:int = 0;
         while(_loc1_ < PAGE_NUM)
         {
            _loc2_ = this["recipeItem" + _loc1_];
            _loc2_.clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeItem1() : RecipeItem
      {
         return this._1978788496recipeItem1;
      }
      
      public function set recipeItem4(param1:RecipeItem) : void
      {
         var _loc2_:Object = this._1978788499recipeItem4;
         if(_loc2_ !== param1)
         {
            this._1978788499recipeItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeItem4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      private function onComplete() : void
      {
         DressLogic.dressProxy.addEventListener(DressEvent.DRESS_CHANGE,changeHandler);
         this.updateView();
      }
      
      private function pageHandler() : void
      {
         if(pageTab.selectedIndex == 0)
         {
            _pageDress = pageSelector.curPage;
         }
         else
         {
            _pageFlyer = pageSelector.curPage;
         }
         updatePage();
      }
      
      public function set recipeItem3(param1:RecipeItem) : void
      {
         var _loc2_:Object = this._1978788498recipeItem3;
         if(_loc2_ !== param1)
         {
            this._1978788498recipeItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeItem3",_loc2_,param1));
         }
      }
      
      public function set scoreText(param1:Label) : void
      {
         var _loc2_:Object = this._2128961247scoreText;
         if(_loc2_ !== param1)
         {
            this._2128961247scoreText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scoreText",_loc2_,param1));
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
      
      private function updateSelector() : void
      {
         var _loc1_:Array = pageTab.selectedIndex == 0 ? _dressArr : _flyerArr;
         var _loc2_:int = _loc1_ ? int(_loc1_.length) : 0;
         pageSelector.totalPage = Math.ceil(_loc2_ / PAGE_NUM);
         if(pageTab.selectedIndex == 0)
         {
            _pageDress = pageSelector.curPage;
         }
         else
         {
            _pageFlyer = pageSelector.curPage;
         }
      }
      
      public function ___RecipeExchangePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         onComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get scoreText() : Label
      {
         return this._2128961247scoreText;
      }
      
      private function _RecipeExchangePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RecipeExchangePanel_BasicTitleCanvas1.text = param1;
         },"_RecipeExchangePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.DRESS_PANEL[40];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            scoreText.filters = param1;
         },"scoreText.filters");
         result[3] = binding;
         return result;
      }
      
      private function tabChangeHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         pageSelector.curPage = pageTab.selectedIndex == 0 ? _pageDress : _pageFlyer;
         this.updateSelector();
         this.updatePage();
      }
      
      private function updatePage() : void
      {
         var _loc5_:int = 0;
         var _loc6_:RecipeItem = null;
         var _loc7_:Object = null;
         var _loc1_:Array = pageTab.selectedIndex == 0 ? _dressArr : _flyerArr;
         if(!_loc1_ || _loc1_.length <= 0)
         {
            this.cleanView();
            return;
         }
         var _loc2_:int = (pageSelector.curPage - 1) * PAGE_NUM;
         var _loc3_:int = _loc2_ + PAGE_NUM;
         var _loc4_:int = _loc2_;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc4_ - _loc2_;
            _loc6_ = this["recipeItem" + _loc5_];
            _loc7_ = _loc1_[_loc4_];
            _loc6_.visible = true;
            if(!_loc7_)
            {
               _loc6_.clean();
            }
            else
            {
               _loc6_.updateView(_loc7_.id);
            }
            _loc4_++;
         }
      }
      
      private function changeHandler(param1:Event = null) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 0;
         if(_core.player.dressInfo)
         {
            _loc3_ = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            if(Boolean(_loc3_) && _loc3_.hasOwnProperty("score"))
            {
               _loc2_ = Number(_loc3_.score) > 0 ? int(Number(_loc3_.score)) : 0;
            }
         }
         scoreText.text = LanguageUtil.replace(Language.DRESS_PANEL[41],{"score":_loc2_});
      }
   }
}

