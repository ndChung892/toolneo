package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PRSSlotItem extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var chipId:int = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _PRSSlotItem_BasicGlowButton1:BasicGlowButton;
      
      private var _1475234682needNumLbl:Label;
      
      private var _306294705prsSlot:ItemSlot;
      
      private var _1721933611nameLbl:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":199,
               "height":60,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"prsSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":10,
                        "y":13
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameLbl",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"needNumLbl",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":53,
                        "y":34
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_PRSSlotItem_BasicGlowButton1",
                  "events":{"click":"___PRSSlotItem_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "7";
                     this.right = "9";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnStdGreen"};
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function PRSSlotItem()
      {
         super();
         mx_internal::_document = this;
         this.width = 199;
         this.height = 60;
         this.styleName = "CanvasBorder";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PRSSlotItem._watcherSetupUtil = param1;
      }
      
      public function ___PRSSlotItem_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         exchangeChip();
      }
      
      [Bindable(event="propertyChange")]
      public function get needNumLbl() : Label
      {
         return this._1475234682needNumLbl;
      }
      
      public function exchangeChip() : void
      {
         if(chipId)
         {
            _core.remote.call("exchangePRSChip",null,_core.cid,chipId);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PRSSlotItem = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PRSSlotItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PRSSlotItemWatcherSetupUtil");
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
      
      public function set nameLbl(param1:Label) : void
      {
         var _loc2_:Object = this._1721933611nameLbl;
         if(_loc2_ !== param1)
         {
            this._1721933611nameLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLbl",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prsSlot() : ItemSlot
      {
         return this._306294705prsSlot;
      }
      
      public function set needNumLbl(param1:Label) : void
      {
         var _loc2_:Object = this._1475234682needNumLbl;
         if(_loc2_ !== param1)
         {
            this._1475234682needNumLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needNumLbl",_loc2_,param1));
         }
      }
      
      public function set prsSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._306294705prsSlot;
         if(_loc2_ !== param1)
         {
            this._306294705prsSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsSlot",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLbl() : Label
      {
         return this._1721933611nameLbl;
      }
      
      private function _PRSSlotItem_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PRS_PANEL[16];
      }
      
      private function _PRSSlotItem_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSSlotItem_BasicGlowButton1.label = param1;
         },"_PRSSlotItem_BasicGlowButton1.label");
         result[0] = binding;
         return result;
      }
      
      public function updateItem() : void
      {
         var _loc1_:Object = null;
         if(chipId)
         {
            _loc1_ = DataManager.getInstance().gameData[GamePredef.TBL_PRS_CHIP][chipId];
            nameLbl.text = _loc1_["name"];
            needNumLbl.text = Language.PRS_PANEL[20].toString().replace("{num}",_loc1_["costCrystal"]);
            prsSlot.clean();
            prsSlot.slotData = _loc1_;
            prsSlot.type = GamePredef.TBL_PRS_CHIP;
            prsSlot.giid = chipId;
            prsSlot.stackNum = 1;
         }
      }
   }
}

