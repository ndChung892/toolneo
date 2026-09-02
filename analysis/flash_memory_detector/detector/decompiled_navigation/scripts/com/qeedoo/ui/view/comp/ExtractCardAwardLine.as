package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.compDragable.ExtractCardActivity;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExtractCardAwardLine extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      private var _55432362leftStr:Label;
      
      mx_internal var _watchers:Array = [];
      
      public var lvl:int = -1;
      
      private var _obj:Object = null;
      
      private var _455921717getAwardBtn:BasicDelayButton;
      
      private var _691653267protectSlot:ItemSlot;
      
      private var _1177331774itemName:Label;
      
      private var tips:String = "";
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var awardId:int = 0;
      
      public var awardNum:int = 1;
      
      mx_internal var _bindings:Array = [];
      
      private var charactors:Object = null;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"protectSlot",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"movable":false};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"itemName",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "60";
                     this.textAlign = "left";
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":200};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"leftStr",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "20";
                     this.left = "60";
                     this.textAlign = "left";
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":200};
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"getAwardBtn",
                  "events":{"click":"__getAwardBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.bottom = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalBlue",
                        "visible":true,
                        "width":35,
                        "height":20
                     };
                  }
               })]
            };
         }
      });
      
      public var leftNum:int = -1;
      
      public function ExtractCardAwardLine()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 100;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExtractCardAwardLine._watcherSetupUtil = param1;
      }
      
      public function refreshNumber(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(Boolean(_loc3_) && Boolean(_obj) && _loc3_.awardId == _obj.awardId)
            {
               refresh(_loc3_);
               return;
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExtractCardAwardLine = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExtractCardAwardLine_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ExtractCardAwardLineWatcherSetupUtil");
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
      
      private function _ExtractCardAwardLine_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot.slotType = param1;
         },"protectSlot.slotType");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwardBtn.label = param1;
         },"getAwardBtn.label");
         result[1] = binding;
         return result;
      }
      
      private function _ExtractCardAwardLine_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[8];
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot() : ItemSlot
      {
         return this._691653267protectSlot;
      }
      
      public function init() : void
      {
      }
      
      public function __getAwardBtn_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function getAward() : void
      {
         if(_obj)
         {
            _core.remote.call("extractCardActivityGetAward",null,lvl,_obj.awardId);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftStr() : Label
      {
         return this._55432362leftStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get getAwardBtn() : BasicDelayButton
      {
         return this._455921717getAwardBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemName() : Label
      {
         return this._1177331774itemName;
      }
      
      public function completeHandler(param1:FlexEvent) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
         refresh(_obj);
      }
      
      public function set leftStr(param1:Label) : void
      {
         var _loc2_:Object = this._55432362leftStr;
         if(_loc2_ !== param1)
         {
            this._55432362leftStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftStr",_loc2_,param1));
         }
      }
      
      public function refresh(param1:Object) : void
      {
         _obj = param1;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(!param1)
         {
            return;
         }
         tips = param1.tips;
         awardId = param1.award;
         awardNum = param1.awardNum;
         if(int(param1.limit) == 0)
         {
            leftNum = -1;
         }
         else if(!param1.date || ExtractCardActivity.EXTRACT_DATE != param1.date)
         {
            leftNum = int(param1.limit);
         }
         else
         {
            if(param1.dbuy)
            {
               leftNum = int(param1.limit) - int(param1.dbuy);
            }
            else
            {
               leftNum = int(param1.limit);
            }
            if(leftNum < 0)
            {
               leftNum = 0;
            }
         }
         charactors = param1;
         refreshProtect();
      }
      
      public function set protectSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._691653267protectSlot;
         if(_loc2_ !== param1)
         {
            this._691653267protectSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot",_loc2_,param1));
         }
      }
      
      public function set getAwardBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._455921717getAwardBtn;
         if(_loc2_ !== param1)
         {
            this._455921717getAwardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getAwardBtn",_loc2_,param1));
         }
      }
      
      private function refreshProtect() : void
      {
         this["protectSlot"].type = GamePredef.TBL_ITEM_TEMPLATE;
         this["protectSlot"].giid = awardId;
         this["protectSlot"].enabled = true;
         this["protectSlot"].acceptable = false;
         getAwardBtn.toolTip = tips;
         var _loc1_:Object = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][awardId];
         if(_loc1_)
         {
            itemName.text = _loc1_.name + "*" + awardNum;
            if(leftNum == -1)
            {
               leftStr.text = Language.EXTRACT_CARD_PANEL_U[15] + Language.EXTRACT_CARD_PANEL_U[16];
            }
            else if(leftNum == 0)
            {
               leftStr.text = Language.EXTRACT_CARD_PANEL_U[15] + Language.EXTRACT_CARD_PANEL_U[17];
            }
            else
            {
               leftStr.text = Language.EXTRACT_CARD_PANEL_U[15] + leftNum;
            }
         }
      }
      
      public function set itemName(param1:Label) : void
      {
         var _loc2_:Object = this._1177331774itemName;
         if(_loc2_ !== param1)
         {
            this._1177331774itemName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemName",_loc2_,param1));
         }
      }
   }
}

