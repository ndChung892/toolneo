package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MoneyItemPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2116176462itemArr:ArrayCollection = new ArrayCollection();
      
      private var itemId:Number = 0;
      
      private var _114847tit:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      public var _MoneyItemPanel_RoundedLabel2:Array;
      
      private var _3646rp:Repeater;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MoneyItemPanel_VBox1:VBox;
      
      private var sid:int = -1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MoneyItemPanel_BasicGlowButton1:Array;
      
      private var _1177491377itemSlot:Array;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":RoundedLabel,
               "id":"tit",
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "-11";
                  this.fontSize = 13;
                  this.textAlign = "center";
                  this.fontWeight = "bold";
                  this.color = 16713993;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":10,
                     "width":108,
                     "height":20
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{
                  "click":"___MoneyItemPanel_Button1_click",
                  "mouseDown":"___MoneyItemPanel_Button1_mouseDown"
               },
               "stylesFactory":function():void
               {
                  this.right = "10";
                  this.top = "10";
               },
               "propertiesFactory":function():Object
               {
                  return {"styleName":"BtnPanelClose"};
               }
            }),new UIComponentDescriptor({
               "type":VBox,
               "id":"_MoneyItemPanel_VBox1",
               "stylesFactory":function():void
               {
                  this.left = "10";
                  this.right = "10";
                  this.bottom = "20";
                  this.top = "40";
               },
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":Repeater,
                     "id":"rp",
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"itemSlot",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"movable":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_MoneyItemPanel_RoundedLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16599578;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_MoneyItemPanel_BasicGlowButton1",
                                    "events":{"click":"___MoneyItemPanel_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnNormalRed",
                                          "width":53.6,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        })]};
                     }
                  })]};
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function MoneyItemPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasPopup";
         this.x = 550;
         this.y = 120;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MoneyItemPanel._watcherSetupUtil = param1;
      }
      
      public function set rp(param1:Repeater) : void
      {
         var _loc2_:Object = this._3646rp;
         if(_loc2_ !== param1)
         {
            this._3646rp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rp",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MoneyItemPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MoneyItemPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MoneyItemPanelWatcherSetupUtil");
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
      public function get tit() : RoundedLabel
      {
         return this._114847tit;
      }
      
      public function ___MoneyItemPanel_Button1_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      private function _MoneyItemPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return itemArr;
         },function(param1:Object):void
         {
            rp.dataProvider = param1;
         },"rp.dataProvider");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):int
         {
            return getType(rp.mx_internal::getItemAt(param2[0]));
         },function(param1:int, param2:Array):void
         {
            itemSlot[param2[0]].type = param1;
         },"itemSlot.type");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Number
         {
            return getGiid(rp.mx_internal::getItemAt(param2[0]));
         },function(param1:Number, param2:Array):void
         {
            itemSlot[param2[0]].giid = param1;
         },"itemSlot.giid");
         result[2] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = getText(rp.mx_internal::getItemAt(param2[0]));
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _MoneyItemPanel_RoundedLabel2[param2[0]].text = param1;
         },"_MoneyItemPanel_RoundedLabel2.text");
         result[3] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = Language.MONEYITMEPANEL_U[0];
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _MoneyItemPanel_BasicGlowButton1[param2[0]].label = param1;
         },"_MoneyItemPanel_BasicGlowButton1.label");
         result[4] = binding;
         return result;
      }
      
      private function getText(param1:Object) : String
      {
         return param1.tips;
      }
      
      private function set itemArr(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._2116176462itemArr;
         if(_loc2_ !== param1)
         {
            this._2116176462itemArr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemArr",_loc2_,param1));
         }
      }
      
      public function set title(param1:String) : void
      {
         tit.text = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemSlot() : Array
      {
         return this._1177491377itemSlot;
      }
      
      private function getType(param1:Object) : int
      {
         return param1.itemData.type;
      }
      
      private function useItem(param1:MouseEvent) : void
      {
         var _loc2_:String = String(param1.currentTarget);
         var _loc3_:int = int(_loc2_.substr(-2,1));
         var _loc4_:int = int(itemArr[_loc3_].itemData.id);
         var _loc5_:Object = new Object();
         var _loc6_:String = "";
         itemId = _loc4_;
         var _loc7_:String = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc4_].name;
         var _loc8_:int = 0;
         while(_loc8_ <= GameData.d[GamePredef.TBL_SHOP_SLOT].length)
         {
            if(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc8_])
            {
               if(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc8_].type == GamePredef.TBL_ITEM_TEMPLATE && GameData.d[GamePredef.TBL_SHOP_SLOT][_loc8_].itemId == _loc4_ && !ToolKit.isEqual(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc8_].st,5))
               {
                  _loc5_ = GameData.d[GamePredef.TBL_SHOP_SLOT][_loc8_];
                  sid = _loc8_;
                  break;
               }
            }
            _loc8_++;
         }
         _loc6_ = Language.MONEYITEMPANEL_S[0];
         _loc6_ = _loc6_.replace("{shopData.gold}",_loc5_.gold);
         _loc6_ = _loc6_.replace("{name}",_loc7_);
         Alert.show(_loc6_,null,Alert.OK | Alert.CANCEL,this,onSele);
      }
      
      [Bindable(event="propertyChange")]
      public function get rp() : Repeater
      {
         return this._3646rp;
      }
      
      public function set tit(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._114847tit;
         if(_loc2_ !== param1)
         {
            this._114847tit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tit",_loc2_,param1));
         }
      }
      
      public function set arr(param1:ArrayCollection) : void
      {
         itemArr = param1;
         rp.dataProvider = param1;
      }
      
      private function onSele(param1:CloseEvent) : void
      {
         var _loc2_:Object = null;
         if(param1.detail == Alert.OK)
         {
            _loc2_ = new Object();
            _loc2_.tid = itemId;
            _loc2_.sid = sid;
            _core.remote.useItemGoldByShopId(_loc2_);
         }
         itemId = 0;
         sid = -1;
      }
      
      [Bindable(event="propertyChange")]
      private function get itemArr() : ArrayCollection
      {
         return this._2116176462itemArr;
      }
      
      public function get title() : String
      {
         return tit.text;
      }
      
      public function set itemSlot(param1:Array) : void
      {
         var _loc2_:Object = this._1177491377itemSlot;
         if(_loc2_ !== param1)
         {
            this._1177491377itemSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemSlot",_loc2_,param1));
         }
      }
      
      private function _MoneyItemPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = itemArr;
         _loc1_ = getType(rp.currentItem);
         _loc1_ = getGiid(rp.currentItem);
         _loc1_ = getText(rp.currentItem);
         _loc1_ = Language.MONEYITMEPANEL_U[0];
      }
      
      private function getGiid(param1:Object) : int
      {
         return param1.itemData.id;
      }
      
      public function ___MoneyItemPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         useItem(param1);
      }
      
      public function ___MoneyItemPanel_Button1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
   }
}

