package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Alert;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PRSExcCvs extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const PAGE_NUM:uint = 5;
      
      public var _PRSExcCvs_Label1:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _129859695prsSlotItem1:PRSSlotItem;
      
      private var _129859696prsSlotItem2:PRSSlotItem;
      
      private var _129859697prsSlotItem3:PRSSlotItem;
      
      private var _129859698prsSlotItem4:PRSSlotItem;
      
      private var _129859699prsSlotItem5:PRSSlotItem;
      
      public var _PRSExcCvs_LinkButton1:LinkButton;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _curPage:int = 1;
      
      private var _chipArr:Array;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _totalPage:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":260,
               "height":388,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_PRSExcCvs_Label1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":35,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_PRSExcCvs_LinkButton1",
                  "events":{"click":"___PRSExcCvs_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textDecoration = "underline";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":179,
                        "y":10,
                        "width":78
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":190,
                        "height":1,
                        "y":36
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlotItem,
                  "id":"prsSlotItem1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":30.5,
                        "y":43
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlotItem,
                  "id":"prsSlotItem2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":109,
                        "x":30.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlotItem,
                  "id":"prsSlotItem3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":174,
                        "x":31.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlotItem,
                  "id":"prsSlotItem4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":236,
                        "x":31.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlotItem,
                  "id":"prsSlotItem5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":297,
                        "x":30.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"changeCall":updatePage};
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function PRSExcCvs()
      {
         super();
         mx_internal::_document = this;
         this.width = 260;
         this.height = 388;
         this.styleName = "CanvasBorder";
         this.addEventListener("creationComplete",___PRSExcCvs_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PRSExcCvs._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      private function helpInfo() : void
      {
         var _loc1_:String = Language.PRS_PANEL[43].toString();
         Alert.show(_loc1_);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PRSExcCvs = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PRSExcCvs_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PRSExcCvsWatcherSetupUtil");
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
      
      public function ___PRSExcCvs_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      private function _PRSExcCvs_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PRS_PANEL[19].toString().replace("{num}",_core.player.realSoulCrystal);
         _loc1_ = Language.PRS_PANEL[42];
      }
      
      public function ___PRSExcCvs_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
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
      
      private function init() : void
      {
         _chipArr = (GameData.d[GamePredef.TBL_PRS_CHIP] as Array).slice(1);
         _chipArr.sortOn("position",Array.NUMERIC);
         updatePage();
      }
      
      private function _PRSExcCvs_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[19].toString().replace("{num}",_core.player.realSoulCrystal);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSExcCvs_Label1.text = param1;
         },"_PRSExcCvs_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSExcCvs_LinkButton1.label = param1;
         },"_PRSExcCvs_LinkButton1.label");
         result[1] = binding;
         return result;
      }
      
      public function set prsSlotItem1(param1:PRSSlotItem) : void
      {
         var _loc2_:Object = this._129859695prsSlotItem1;
         if(_loc2_ !== param1)
         {
            this._129859695prsSlotItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsSlotItem1",_loc2_,param1));
         }
      }
      
      public function set prsSlotItem2(param1:PRSSlotItem) : void
      {
         var _loc2_:Object = this._129859696prsSlotItem2;
         if(_loc2_ !== param1)
         {
            this._129859696prsSlotItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsSlotItem2",_loc2_,param1));
         }
      }
      
      public function set prsSlotItem3(param1:PRSSlotItem) : void
      {
         var _loc2_:Object = this._129859697prsSlotItem3;
         if(_loc2_ !== param1)
         {
            this._129859697prsSlotItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsSlotItem3",_loc2_,param1));
         }
      }
      
      public function set prsSlotItem4(param1:PRSSlotItem) : void
      {
         var _loc2_:Object = this._129859698prsSlotItem4;
         if(_loc2_ !== param1)
         {
            this._129859698prsSlotItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsSlotItem4",_loc2_,param1));
         }
      }
      
      public function set prsSlotItem5(param1:PRSSlotItem) : void
      {
         var _loc2_:Object = this._129859699prsSlotItem5;
         if(_loc2_ !== param1)
         {
            this._129859699prsSlotItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsSlotItem5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prsSlotItem1() : PRSSlotItem
      {
         return this._129859695prsSlotItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get prsSlotItem2() : PRSSlotItem
      {
         return this._129859696prsSlotItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get prsSlotItem3() : PRSSlotItem
      {
         return this._129859697prsSlotItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get prsSlotItem4() : PRSSlotItem
      {
         return this._129859698prsSlotItem4;
      }
      
      public function updatePage() : void
      {
         var _loc1_:* = _chipArr.length;
         _totalPage = pageSelector.totalPage = Math.ceil(_loc1_ / PAGE_NUM);
         _curPage = pageSelector.curPage;
         var _loc2_:Number = (_curPage - 1) * PAGE_NUM;
         var _loc3_:int = 1;
         while(_loc3_ <= PAGE_NUM)
         {
            if(_loc2_ + _loc3_ > _chipArr.length)
            {
               (this["prsSlotItem" + _loc3_] as UIComponent).visible = false;
            }
            else
            {
               (this["prsSlotItem" + _loc3_] as PRSSlotItem).chipId = int(_chipArr[_loc2_ + _loc3_ - 1].id);
               (this["prsSlotItem" + _loc3_] as PRSSlotItem).updateItem();
            }
            _loc3_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prsSlotItem5() : PRSSlotItem
      {
         return this._129859699prsSlotItem5;
      }
   }
}

