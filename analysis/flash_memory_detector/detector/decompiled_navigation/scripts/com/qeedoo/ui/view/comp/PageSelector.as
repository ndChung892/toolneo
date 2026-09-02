package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Button;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PageSelector extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _currentPageNo:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var _320271553btnLastPage:Button;
      
      private var _1090881890btnNextPage:Button;
      
      public var pageIndicatorPattern:String = "{0} / {1}";
      
      public var onPageCleared:Function = null;
      
      private var _1229795408txtPageIndicator:TextInput;
      
      private var _pageCount:int = 0;
      
      public var onPageChanged:Function = null;
      
      private var _369863342lastBtnLabel:String = Language.PAGE_SELECTOR[0];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _itemCountPerPage:int = 5;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1047590411nextBtnLabel:String = Language.PAGE_SELECTOR[1];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":HBox,
               "stylesFactory":function():void
               {
                  this.verticalAlign = "middle";
                  this.horizontalGap = 5;
               },
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "id":"btnLastPage",
                     "events":{"buttonDown":"__btnLastPage_buttonDown"},
                     "stylesFactory":function():void
                     {
                        this.left = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"LastPage",
                           "autoRepeat":true,
                           "width":45,
                           "useHandCursor":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"txtPageIndicator",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                        this.fontSize = 12;
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"PageNoIndicator",
                           "width":50,
                           "height":16,
                           "text":"0",
                           "y":2.5,
                           "editable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"btnNextPage",
                     "events":{"buttonDown":"__btnNextPage_buttonDown"},
                     "stylesFactory":function():void
                     {
                        this.right = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"NextPage",
                           "autoRepeat":true,
                           "width":45,
                           "useHandCursor":true,
                           "y":0
                        };
                     }
                  })]};
               }
            })]};
         }
      });
      
      private var _totalItemCount:int = 0;
      
      public function PageSelector()
      {
         super();
         mx_internal::_document = this;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PageSelector._watcherSetupUtil = param1;
      }
      
      private function _PageSelector_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = lastBtnLabel;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = nextBtnLabel;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PageSelector = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PageSelector_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PageSelectorWatcherSetupUtil");
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
      
      public function refreshPage() : void
      {
         var _loc1_:int = 0;
         if(onPageCleared != null)
         {
            onPageCleared();
         }
         if(onPageChanged != null && _totalItemCount >= 0)
         {
            _loc1_ = _itemCountPerPage;
            if(_totalItemCount == 0)
            {
               _loc1_ = 0;
            }
            else if(_currentPageNo == _pageCount - 1)
            {
               _loc1_ = _totalItemCount % _itemCountPerPage;
               if(_loc1_ == 0)
               {
                  _loc1_ = _itemCountPerPage;
               }
            }
            onPageChanged(_itemCountPerPage * _currentPageNo,_loc1_);
         }
      }
      
      public function __btnLastPage_buttonDown(param1:FlexEvent) : void
      {
         --pageNo;
      }
      
      public function __btnNextPage_buttonDown(param1:FlexEvent) : void
      {
         ++pageNo;
      }
      
      public function set btnLastPage(param1:Button) : void
      {
         var _loc2_:Object = this._320271553btnLastPage;
         if(_loc2_ !== param1)
         {
            this._320271553btnLastPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLastPage",_loc2_,param1));
         }
      }
      
      public function set nextBtnLabel(param1:String) : void
      {
         var _loc2_:Object = this._1047590411nextBtnLabel;
         if(_loc2_ !== param1)
         {
            this._1047590411nextBtnLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextBtnLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextBtnLabel() : String
      {
         return this._1047590411nextBtnLabel;
      }
      
      public function setMidTextStyle(param1:String) : void
      {
         txtPageIndicator.styleName = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnNextPage() : Button
      {
         return this._1090881890btnNextPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastBtnLabel() : String
      {
         return this._369863342lastBtnLabel;
      }
      
      public function get pageNo() : int
      {
         return _currentPageNo;
      }
      
      private function limitPageBoundary(param1:int) : int
      {
         if(param1 < 0 || _pageCount == 0)
         {
            param1 = 0;
         }
         else if(param1 >= _pageCount)
         {
            param1 = _pageCount - 1;
         }
         return param1;
      }
      
      public function set btnNextPage(param1:Button) : void
      {
         var _loc2_:Object = this._1090881890btnNextPage;
         if(_loc2_ !== param1)
         {
            this._1090881890btnNextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnNextPage",_loc2_,param1));
         }
      }
      
      public function get pageSize() : int
      {
         return _itemCountPerPage;
      }
      
      public function get pageCount() : int
      {
         return _pageCount;
      }
      
      public function setNextBtnStyle(param1:String) : void
      {
         btnNextPage.styleName = param1;
      }
      
      public function resetPageSeletor(param1:int, param2:int) : void
      {
         _totalItemCount = param1;
         _itemCountPerPage = param2;
         _pageCount = Math.ceil(_totalItemCount / _itemCountPerPage);
         if(pageNo == 0)
         {
            pageNo = 0;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPageIndicator() : TextInput
      {
         return this._1229795408txtPageIndicator;
      }
      
      public function set currentPage(param1:int) : void
      {
         _currentPageNo = limitPageBoundary(param1);
         if(_totalItemCount == 0)
         {
            txtPageIndicator.text = pageIndicatorPattern.replace("{0}","0").replace("{1}","0");
         }
         else
         {
            if(_pageCount >= 100)
            {
               pageIndicatorPattern = "{0}/{1}";
            }
            else
            {
               pageIndicatorPattern = "{0} / {1}";
            }
            txtPageIndicator.text = pageIndicatorPattern.replace("{0}",_currentPageNo + 1).replace("{1}",_pageCount);
         }
         updateControlAvailability();
         if(Boolean(onPageCleared))
         {
            onPageCleared();
         }
      }
      
      public function get totalItemCount() : int
      {
         return _totalItemCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLastPage() : Button
      {
         return this._320271553btnLastPage;
      }
      
      public function set lastBtnLabel(param1:String) : void
      {
         var _loc2_:Object = this._369863342lastBtnLabel;
         if(_loc2_ !== param1)
         {
            this._369863342lastBtnLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastBtnLabel",_loc2_,param1));
         }
      }
      
      private function _PageSelector_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = lastBtnLabel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLastPage.label = param1;
         },"btnLastPage.label");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            txtPageIndicator.filters = param1;
         },"txtPageIndicator.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = nextBtnLabel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnNextPage.label = param1;
         },"btnNextPage.label");
         result[2] = binding;
         return result;
      }
      
      private function updateControlAvailability() : void
      {
         var _loc1_:Boolean = _pageCount > 0;
         btnLastPage.enabled = _loc1_ && _currentPageNo > 0;
         btnNextPage.enabled = _loc1_ && _currentPageNo < _pageCount - 1;
         txtPageIndicator.enabled = _loc1_;
      }
      
      public function set pageSize(param1:int) : void
      {
         _itemCountPerPage = param1;
      }
      
      public function set pageNo(param1:int) : void
      {
         currentPage = param1;
         refreshPage();
      }
      
      public function get itemCountPerPage() : int
      {
         return _itemCountPerPage;
      }
      
      public function setLastBtnStyle(param1:String) : void
      {
         btnLastPage.styleName = param1;
      }
      
      public function set txtPageIndicator(param1:TextInput) : void
      {
         var _loc2_:Object = this._1229795408txtPageIndicator;
         if(_loc2_ !== param1)
         {
            this._1229795408txtPageIndicator = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPageIndicator",_loc2_,param1));
         }
      }
      
      public function initPageSeletor(param1:int, param2:int) : void
      {
         if(param1 < 0 || param2 < 1)
         {
            throw new Error("Illegal Arguments for PageSelector");
         }
         _totalItemCount = param1;
         _itemCountPerPage = param2;
         _pageCount = Math.ceil(_totalItemCount / _itemCountPerPage);
         pageNo = 0;
      }
   }
}

