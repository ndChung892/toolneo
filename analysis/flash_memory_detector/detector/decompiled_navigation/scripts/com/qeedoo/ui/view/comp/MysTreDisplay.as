package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MysTreDisplay extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      private var _875431037mysTreItem6:MysTreItem;
      
      mx_internal var _watchers:Array = [];
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _875431042mysTreItem1:MysTreItem;
      
      private var _875431039mysTreItem4:MysTreItem;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _875431041mysTreItem2:MysTreItem;
      
      private var _mysTreBookData:Object;
      
      private var mysArray:Array = new Array();
      
      private var mysAll:Array;
      
      private var _875431038mysTreItem5:MysTreItem;
      
      mx_internal var _bindings:Array = [];
      
      private var _875431040mysTreItem3:MysTreItem;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":365,
               "height":210,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"StandardTitle",
                        "mouseEnabled":false,
                        "y":4,
                        "width":160,
                        "height":15,
                        "mouseChildren":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_MysTreDisplay_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.textAlign = "center";
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"text":"Danh Sách"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreItem,
                  "id":"mysTreItem1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreItem,
                  "id":"mysTreItem4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":195,
                        "y":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreItem,
                  "id":"mysTreItem2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":77
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreItem,
                  "id":"mysTreItem5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":195,
                        "y":77
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreItem,
                  "id":"mysTreItem3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":126
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreItem,
                  "id":"mysTreItem6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":195,
                        "y":126
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":108,
                        "changeCall":updatePage
                     };
                  }
               })]
            };
         }
      });
      
      public var _MysTreDisplay_Label1:Label;
      
      private var _kind:Number;
      
      public function MysTreDisplay()
      {
         super();
         mx_internal::_document = this;
         this.width = 365;
         this.height = 210;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___MysTreDisplay_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MysTreDisplay._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreItem3() : MysTreItem
      {
         return this._875431040mysTreItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreItem4() : MysTreItem
      {
         return this._875431039mysTreItem4;
      }
      
      public function set mysTreItem4(param1:MysTreItem) : void
      {
         var _loc2_:Object = this._875431039mysTreItem4;
         if(_loc2_ !== param1)
         {
            this._875431039mysTreItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreItem4",_loc2_,param1));
         }
      }
      
      public function set mysTreItem5(param1:MysTreItem) : void
      {
         var _loc2_:Object = this._875431038mysTreItem5;
         if(_loc2_ !== param1)
         {
            this._875431038mysTreItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreItem5",_loc2_,param1));
         }
      }
      
      public function set mysTreItem6(param1:MysTreItem) : void
      {
         var _loc2_:Object = this._875431037mysTreItem6;
         if(_loc2_ !== param1)
         {
            this._875431037mysTreItem6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreItem6",_loc2_,param1));
         }
      }
      
      public function set mysTreItem3(param1:MysTreItem) : void
      {
         var _loc2_:Object = this._875431040mysTreItem3;
         if(_loc2_ !== param1)
         {
            this._875431040mysTreItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreItem3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreItem5() : MysTreItem
      {
         return this._875431038mysTreItem5;
      }
      
      public function set mysTreItem2(param1:MysTreItem) : void
      {
         var _loc2_:Object = this._875431041mysTreItem2;
         if(_loc2_ !== param1)
         {
            this._875431041mysTreItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreItem2",_loc2_,param1));
         }
      }
      
      public function updateView(param1:Object) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = undefined;
         var _loc2_:Number = mysArray.length;
         var _loc3_:Number = pageSelector.totalPage = Math.ceil(_loc2_ / 6);
         var _loc4_:Number = pageSelector.curPage;
         var _loc5_:Number = (_loc4_ - 1) * 6;
         var _loc6_:int = 1;
         while(_loc6_ <= 6)
         {
            if(_loc5_ + _loc6_ > _loc2_)
            {
               (this["mysTreItem" + _loc6_] as UIComponent).visible = false;
            }
            else
            {
               _loc7_ = mysArray[_loc5_ + _loc6_ - 1] ? Number(mysArray[_loc5_ + _loc6_ - 1]["id"]) : 0;
               if(!_loc7_)
               {
                  return;
               }
               _loc8_ = false;
               for each(_loc9_ in param1[_kind])
               {
                  if(_loc9_ == _loc7_)
                  {
                     _loc8_ = true;
                     break;
                  }
               }
               (this["mysTreItem" + _loc6_] as MysTreItem).mysActived = _loc8_;
               (this["mysTreItem" + _loc6_] as MysTreItem).mid = _loc7_;
               if(!(this["mysTreItem" + _loc6_] as UIComponent).visible)
               {
                  (this["mysTreItem" + _loc6_] as UIComponent).visible = true;
               }
            }
            _loc6_++;
         }
      }
      
      public function init() : void
      {
         var _loc1_:Object = null;
         mysAll = (GameData.d[GamePredef.TBL_MYSTRE] as Array).slice(1);
         for each(_loc1_ in mysAll)
         {
            if(_loc1_["kind"] == _kind)
            {
               mysArray.push(_loc1_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreItem6() : MysTreItem
      {
         return this._875431037mysTreItem6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MysTreDisplay = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MysTreDisplay_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MysTreDisplayWatcherSetupUtil");
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
      
      public function set kind(param1:Number) : void
      {
         _kind = param1;
      }
      
      private function _MysTreDisplay_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function ___MysTreDisplay_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _MysTreDisplay_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _MysTreDisplay_Label1.filters = param1;
         },"_MysTreDisplay_Label1.filters");
         result[0] = binding;
         return result;
      }
      
      public function set mysTreBookData(param1:Object) : void
      {
         _mysTreBookData = param1;
         updateView(param1);
      }
      
      public function updatePage() : void
      {
         updateView(_mysTreBookData);
      }
      
      public function set mysTreItem1(param1:MysTreItem) : void
      {
         var _loc2_:Object = this._875431042mysTreItem1;
         if(_loc2_ !== param1)
         {
            this._875431042mysTreItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreItem1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreItem1() : MysTreItem
      {
         return this._875431042mysTreItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreItem2() : MysTreItem
      {
         return this._875431041mysTreItem2;
      }
   }
}

