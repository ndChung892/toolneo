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
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PageSelectorOnly extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _319324206prePage:FilterButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _1424273442nextPage:FilterButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1275986905pageShower:TextInput;
      
      public var changeCall:Function;
      
      private var _curPage:int = 1;
      
      public var setChange:Boolean;
      
      private var _totalPage:int = 1;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":HBox,
               "stylesFactory":function():void
               {
                  this.verticalAlign = "middle";
                  this.horizontalGap = 4;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "mouseEnabled":false,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":FilterButton,
                        "id":"prePage",
                        "events":{"click":"__prePage_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"LastPage",
                              "width":48,
                              "height":20,
                              "buttonMode":true
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":TextInput,
                        "id":"pageShower",
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"PageNoIndicator",
                              "mouseEnabled":false,
                              "mouseChildren":false,
                              "width":45,
                              "height":17,
                              "editable":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":FilterButton,
                        "id":"nextPage",
                        "events":{"click":"__nextPage_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"LastPage",
                              "width":48,
                              "height":20,
                              "buttonMode":true
                           };
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public function PageSelectorOnly()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___PageSelectorOnly_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PageSelectorOnly._watcherSetupUtil = param1;
      }
      
      public function ___PageSelectorOnly_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get pageShower() : TextInput
      {
         return this._1275986905pageShower;
      }
      
      public function __nextPage_click(param1:MouseEvent) : void
      {
         pageHandler(true);
      }
      
      private function updateView() : void
      {
         if(!this.initialized)
         {
            this.callLater(updateView);
            return;
         }
         pageShower.text = _curPage + "/" + _totalPage;
         prePage.enabled = _curPage > 1;
         nextPage.enabled = _curPage < _totalPage;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PageSelectorOnly = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PageSelectorOnly_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PageSelectorOnlyWatcherSetupUtil");
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
      public function get prePage() : FilterButton
      {
         return this._319324206prePage;
      }
      
      public function __prePage_click(param1:MouseEvent) : void
      {
         pageHandler(false);
      }
      
      public function set curPage(param1:int) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         if(_curPage == param1)
         {
            return;
         }
         _curPage = param1;
         if(_curPage > _totalPage)
         {
            _curPage = _totalPage;
         }
         this.updateView();
         setChange && changeCall && changeCall();
      }
      
      [Bindable(event="propertyChange")]
      public function get nextPage() : FilterButton
      {
         return this._1424273442nextPage;
      }
      
      private function _PageSelectorOnly_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PAGE_SELECTOR[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prePage.label = param1;
         },"prePage.label");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            prePage.filters = param1;
         },"prePage.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageShower.filters = param1;
         },"pageShower.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PAGE_SELECTOR[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextPage.label = param1;
         },"nextPage.label");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            nextPage.filters = param1;
         },"nextPage.filters");
         result[4] = binding;
         return result;
      }
      
      public function set prePage(param1:FilterButton) : void
      {
         var _loc2_:Object = this._319324206prePage;
         if(_loc2_ !== param1)
         {
            this._319324206prePage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prePage",_loc2_,param1));
         }
      }
      
      public function set totalPage(param1:int) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         if(_totalPage == param1)
         {
            return;
         }
         _totalPage = param1;
         if(_curPage > _totalPage)
         {
            _curPage = _totalPage;
         }
         this.updateView();
         setChange && changeCall && changeCall();
      }
      
      public function get curPage() : int
      {
         return _curPage;
      }
      
      public function set nextPage(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1424273442nextPage;
         if(_loc2_ !== param1)
         {
            this._1424273442nextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPage",_loc2_,param1));
         }
      }
      
      public function get totalPage() : int
      {
         return _totalPage;
      }
      
      public function set pageShower(param1:TextInput) : void
      {
         var _loc2_:Object = this._1275986905pageShower;
         if(_loc2_ !== param1)
         {
            this._1275986905pageShower = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageShower",_loc2_,param1));
         }
      }
      
      private function pageHandler(param1:Boolean) : void
      {
         if(param1)
         {
            ++_curPage;
         }
         else
         {
            --_curPage;
         }
         if(_curPage > _totalPage)
         {
            _curPage = _totalPage;
            return;
         }
         if(_curPage < 1)
         {
            _curPage = 1;
            return;
         }
         this.updateView();
         changeCall && changeCall();
      }
      
      private function _PageSelectorOnly_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PAGE_SELECTOR[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PAGE_SELECTOR[1];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
   }
}

