package com.qeedoo.ui.view.compDragable
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.Image;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AwardPanelAll extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const PRE_1:String = "N";
      
      private static const PRE_2:String = "G";
      
      private static const PRE_3:String = "D";
      
      private static const PRE_A:String = "A";
      
      private static const PRE_O:String = "O";
      
      private var _core:Core;
      
      public var _AwardPanelAll_BasicDelayButton2:BasicDelayButton;
      
      private var _itemIcon:Image;
      
      private var _425076048getAwardsByCode:BasicGlowButton;
      
      private var _3311i8:ItemSlot;
      
      public var _AwardPanelAll_IntroText1:IntroText;
      
      public var _AwardPanelAll_IntroText2:IntroText;
      
      public var _AwardPanelAll_IntroText3:IntroText;
      
      mx_internal var _watchers:Array = [];
      
      public var _AwardPanelAll_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3701ti:TextInput;
      
      private var giftCount:int = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3310i7:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1197257913getAwardsFromNet:BasicDelayButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":442,
               "height":382,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AwardPanelAll_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":37,
                        "width":419,
                        "height":317,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":TextInput,
                           "id":"ti",
                           "events":{"mouseDown":"__ti_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.cornerRadius = 0;
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":201.5,
                                 "y":58,
                                 "width":135,
                                 "height":20,
                                 "maxChars":12
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"i7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":255,
                                 "y":153
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"i8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":255,
                                 "y":264
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"getAwardsByCode",
                           "events":{"click":"__getAwardsByCode_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":350.9,
                                 "y":55,
                                 "styleName":"BtnStdRed",
                                 "width":58.1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"getAwardsFromNet",
                           "events":{"click":"__getAwardsFromNet_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":60000,
                                 "x":350.9,
                                 "y":158,
                                 "styleName":"BtnStdRed",
                                 "width":58.1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"_AwardPanelAll_BasicDelayButton2",
                           "events":{"click":"___AwardPanelAll_BasicDelayButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":60000,
                                 "x":350.9,
                                 "y":269,
                                 "styleName":"BtnStdRed",
                                 "width":58.1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_AwardPanelAll_IntroText1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "width":149.5,
                                 "height":85
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_AwardPanelAll_IntroText2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":119,
                                 "width":149.5,
                                 "height":85
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_AwardPanelAll_IntroText3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":222,
                                 "width":149.5,
                                 "height":85
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var obj:Object;
      
      public function AwardPanelAll()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 442;
         this.height = 382;
         this.addEventListener("creationComplete",___AwardPanelAll_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AwardPanelAll._watcherSetupUtil = param1;
      }
      
      public function __ti_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get i7() : ItemSlot
      {
         return this._3310i7;
      }
      
      [Bindable(event="propertyChange")]
      public function get ti() : TextInput
      {
         return this._3701ti;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AwardPanelAll = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AwardPanelAll_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AwardPanelAllWatcherSetupUtil");
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
      
      public function onSerchForGift(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _itemIcon = new Image();
            _loc2_ = _core.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,2059,false);
            if(_loc2_)
            {
               _itemIcon.source = ResManager.getIconUrl(_loc2_.iconCode);
               ResManager.setColorCode(_itemIcon,_loc2_.colorCode);
               i8.addChild(_itemIcon);
            }
         }
      }
      
      public function init() : void
      {
         iniGift();
      }
      
      private function take() : void
      {
         if(!_core.player.enoughBag(1))
         {
            _core.sysMidNote(Language.AWARDCODEPANEL_S[0]);
            return;
         }
         var _loc1_:String = ti.text.slice(0,1);
         if(Boolean(ti.text) && Boolean(ti.text.length) && (_loc1_ == PRE_1 || _loc1_ == PRE_2 || _loc1_ == PRE_3 || _loc1_ == PRE_A || _loc1_ == PRE_O || ti.text.length == 9) > 0)
         {
            _core.remote.uc(ti.text);
         }
         ti.text = "";
      }
      
      private function _AwardPanelAll_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanelAll_BasicTitleCanvas1.text = param1;
         },"_AwardPanelAll_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDALL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwardsByCode.label = param1;
         },"getAwardsByCode.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDALL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwardsFromNet.label = param1;
         },"getAwardsFromNet.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanelAll_BasicDelayButton2.toolTip = param1;
         },"_AwardPanelAll_BasicDelayButton2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDALL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanelAll_BasicDelayButton2.label = param1;
         },"_AwardPanelAll_BasicDelayButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDALL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanelAll_IntroText1.text = param1;
         },"_AwardPanelAll_IntroText1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDALL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanelAll_IntroText2.text = param1;
         },"_AwardPanelAll_IntroText2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDALL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanelAll_IntroText3.text = param1;
         },"_AwardPanelAll_IntroText3.text");
         result[7] = binding;
         return result;
      }
      
      public function ___AwardPanelAll_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         systemAward();
      }
      
      public function iniGift() : void
      {
         _core = Core.getInstance();
         _core.remote.call("serchForGift",new Responder(onSerchForGift));
         getGameGift();
      }
      
      public function ___AwardPanelAll_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set getAwardsFromNet(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1197257913getAwardsFromNet;
         if(_loc2_ !== param1)
         {
            this._1197257913getAwardsFromNet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getAwardsFromNet",_loc2_,param1));
         }
      }
      
      public function getGameGift() : void
      {
         _core.remote.searchGameGift();
      }
      
      [Bindable(event="propertyChange")]
      public function get getAwardsByCode() : BasicGlowButton
      {
         return this._425076048getAwardsByCode;
      }
      
      [Bindable(event="propertyChange")]
      public function get getAwardsFromNet() : BasicDelayButton
      {
         return this._1197257913getAwardsFromNet;
      }
      
      public function onGetGameGift(param1:String) : void
      {
         var _loc3_:Object = null;
         obj = com.adobe.serialization.json.JSON.decode(param1);
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in obj)
         {
            giftCount += 1;
            _loc2_.addItem(_loc3_);
         }
         if(giftCount == 0)
         {
            return;
         }
         _itemIcon = new Image();
         var _loc4_:Object = _core.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,_loc2_[0].giftid,false);
         if(_loc4_)
         {
            _itemIcon.source = ResManager.getIconUrl(_loc4_.iconCode);
            ResManager.setColorCode(_itemIcon,_loc4_.colorCode);
            i7.addChild(_itemIcon);
         }
      }
      
      public function set i7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3310i7;
         if(_loc2_ !== param1)
         {
            this._3310i7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i7",_loc2_,param1));
         }
      }
      
      public function set i8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3311i8;
         if(_loc2_ !== param1)
         {
            this._3311i8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i8",_loc2_,param1));
         }
      }
      
      public function __getAwardsByCode_click(param1:MouseEvent) : void
      {
         take();
      }
      
      public function set getAwardsByCode(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._425076048getAwardsByCode;
         if(_loc2_ !== param1)
         {
            this._425076048getAwardsByCode = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getAwardsByCode",_loc2_,param1));
         }
      }
      
      public function set ti(param1:TextInput) : void
      {
         var _loc2_:Object = this._3701ti;
         if(_loc2_ !== param1)
         {
            this._3701ti = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ti",_loc2_,param1));
         }
      }
      
      private function systemAward() : void
      {
         _core.remote.gtg();
         i8.removeAllChildren();
      }
      
      [Bindable(event="propertyChange")]
      public function get i8() : ItemSlot
      {
         return this._3311i8;
      }
      
      public function __getAwardsFromNet_click(param1:MouseEvent) : void
      {
         moveGiftToBag();
      }
      
      public function makeGiftCount(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(obj)
         {
            for(_loc2_ in param1)
            {
               delete obj[_loc2_];
               if(giftCount <= 0)
               {
                  giftCount = 0;
               }
               else
               {
                  giftCount = giftCount - 1;
               }
            }
         }
         if(giftCount > 0)
         {
            _core.sysMidMsg(Language.AWARDCODEPANEL_S[3].toString().replace("{num}",giftCount));
         }
         else
         {
            _core.sysMidMsg(Language.AWARDCODEPANEL_S[2]);
            i7.removeAllChildren();
         }
      }
      
      public function moveGiftToBag() : void
      {
         if(giftCount == 0)
         {
            return;
         }
         if(obj)
         {
            _core.remote.call("getGameGift",null,obj);
         }
      }
      
      public function cancel() : void
      {
         hide();
      }
      
      public function onGiftRemain() : void
      {
         i8.addChild(_itemIcon);
      }
      
      private function _AwardPanelAll_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AWARDPANEL_U[2];
         _loc1_ = Language.AWARDALL_S[3];
         _loc1_ = Language.AWARDALL_S[3];
         _loc1_ = Language.SYSTEMSHOPPANEL_S[14];
         _loc1_ = Language.AWARDALL_S[3];
         _loc1_ = Language.AWARDALL_S[0];
         _loc1_ = Language.AWARDALL_S[1];
         _loc1_ = Language.AWARDALL_S[2];
      }
   }
}

