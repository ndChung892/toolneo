package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ConsumeNoticeItem extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3587ps:String;
      
      private var _data:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3573pe:String;
      
      mx_internal var _watchers:Array = [];
      
      public var list:ArrayCollection = new ArrayCollection();
      
      private var _3575610type:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _1177280081itemList:Tile;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":760,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"title",
                  "stylesFactory":function():void
                  {
                     this.top = "3";
                     this.left = "10";
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":Tile,
                  "id":"itemList",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 10;
                     this.top = "26";
                     this.bottom = "0";
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"direction":"horizontal"};
                  }
               })]
            };
         }
      });
      
      private var _110371416title:RoundedLabel;
      
      public function ConsumeNoticeItem()
      {
         super();
         mx_internal::_document = this;
         this.width = 760;
         this.height = 70;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ConsumeNoticeItem._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : String
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : RoundedLabel
      {
         return this._110371416title;
      }
      
      public function set ps(param1:String) : void
      {
         var _loc2_:Object = this._3587ps;
         if(_loc2_ !== param1)
         {
            this._3587ps = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ps",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ConsumeNoticeItem = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ConsumeNoticeItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ConsumeNoticeItemWatcherSetupUtil");
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
      public function get itemList() : Tile
      {
         return this._1177280081itemList;
      }
      
      private function _ConsumeNoticeItem_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = type + ": " + ps + " ~ " + pe + " 元可获得以下奖励";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get ps() : String
      {
         return this._3587ps;
      }
      
      public function set itemList(param1:Tile) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
         }
      }
      
      public function set pe(param1:String) : void
      {
         var _loc2_:Object = this._3573pe;
         if(_loc2_ !== param1)
         {
            this._3573pe = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pe",_loc2_,param1));
         }
      }
      
      private function _ConsumeNoticeItem_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = type + ": " + ps + " ~ " + pe + " 元可获得以下奖励";
      }
      
      public function setData(param1:Array) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:ItemSlot = null;
         itemList.removeAllChildren();
         if(param1.length < 1)
         {
            return;
         }
         ps = (param1[0].r as String).split("|")[0];
         pe = (param1[0].r as String).split("|")[1];
         for(_loc2_ in param1)
         {
            if(param1[_loc2_])
            {
               _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][int(param1[_loc2_].i)];
               _loc4_ = new ItemSlot();
               _loc4_.acceptable = false;
               _loc4_.movable = false;
               _loc4_.slotType = Slot.SLOT_EQUFUNC_ITEM;
               _loc4_.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc4_.giid = int(param1[_loc2_].i);
               _loc4_.slotData = _loc3_;
               _loc4_.stackNum = int(param1[_loc2_].n);
               itemList.addChild(_loc4_);
            }
         }
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pe() : String
      {
         return this._3573pe;
      }
      
      public function set title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
   }
}

