package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.ComboBox;
   import mx.controls.HRule;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.controls.VRule;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ReturnRewardPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1584105757viewStack:ViewStack;
      
      private var _35335177iGetGiftLabel:RoundedLabel;
      
      private var _245317528inviteReward:ItemSlot;
      
      private var _1197759319inviteInfo:TextArea;
      
      private var _612561589iPayLabel:RoundedLabel;
      
      private var _1700887067inviteSubmitBtn:BasicGlowButton;
      
      private var _69226535inviteLabel2:RoundedLabel;
      
      private var iServerId:int = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var rRemainReward:int = 0;
      
      private var _785110143returnReward:ItemSlot;
      
      private var _config:Object = null;
      
      private var _1729241368navBtn1:BasicGlowButton;
      
      private var _575087872iGetRewardBtn:BasicGlowButton;
      
      private var _1077878564iRewardLabel:RoundedLabel;
      
      private var _1659057022inviteServerInput:ComboBox;
      
      private var _83865907rRewardLabel:RoundedLabel;
      
      private var _1729241367navBtn0:BasicGlowButton;
      
      private var _2089651473iRemainGiftLabel:RoundedLabel;
      
      private var maxInvite:int = 0;
      
      private var _1619367044deadlineLabel:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _2065539191rGetRewardBtn:BasicGlowButton;
      
      private var _2103680635ruleTArea:TextArea;
      
      private var _1648562839iNumLabel:RoundedLabel;
      
      private var iName:String = null;
      
      private var _69226534inviteLabel1:RoundedLabel;
      
      private var rNum:int = 0;
      
      public var _ReturnRewardPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1159981765rRRewardLabel:RoundedLabel;
      
      private var _751424388inviteRuleTArea:TextArea;
      
      private var _1729325322inviteNameInput:TextInput;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _938592225iGetGiftBtn:BasicGlowButton;
      
      private var _104320400iRemainRewardLabel:RoundedLabel;
      
      private var _68714728rGetGiftBtn:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _1525340606rPayLabel:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":530,
               "height":340,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ReturnRewardPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"navBtn0",
                  "events":{"click":"__navBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "width":78,
                        "x":18,
                        "y":46
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"navBtn1",
                  "events":{"click":"__navBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":78,
                        "x":94,
                        "y":46
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"deadlineLabel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":299,
                        "y":49,
                        "width":228
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "65";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "width":510,
                                 "height":255,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"inviteLabel1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":45,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"inviteLabel2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":71,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"inviteNameInput",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":95,
                                          "y":69,
                                          "width":90
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ComboBox,
                                    "id":"inviteServerInput",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":95,
                                          "y":43,
                                          "editable":false,
                                          "width":90
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"inviteSubmitBtn",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":62,
                                          "y":105,
                                          "styleName":"BtnStdRed2",
                                          "enabled":true,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"inviteInfo",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":71,
                                          "width":165,
                                          "height":60,
                                          "editable":false,
                                          "styleName":"CSSBorder",
                                          "visible":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":195,
                                          "y":5,
                                          "height":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"returnReward",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":335,
                                          "y":15,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"rGetGiftBtn",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":327,
                                          "y":55,
                                          "styleName":"BtnStdRed2",
                                          "enabled":true,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "id":"hrule",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":195,
                                          "y":86,
                                          "width":310
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rPayLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":205,
                                          "y":102,
                                          "width":188
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rRewardLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":205,
                                          "y":120,
                                          "width":188
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rRRewardLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":205,
                                          "y":135,
                                          "width":188
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"rGetRewardBtn",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":420,
                                          "y":118,
                                          "styleName":"BtnStdRed2",
                                          "enabled":true,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":165,
                                          "width":500
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"ruleTArea",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":175,
                                          "width":470,
                                          "height":75,
                                          "editable":false,
                                          "styleName":"CSSBorder"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "width":510,
                                 "height":255,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"inviteReward",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":85,
                                          "y":28,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"iNumLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":163,
                                          "y":17,
                                          "width":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"iGetGiftLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":163,
                                          "y":38,
                                          "width":143
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"iRemainGiftLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":163,
                                          "y":58,
                                          "width":143
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"iGetGiftBtn",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":340,
                                          "y":35,
                                          "styleName":"BtnStdRed2",
                                          "enabled":true,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":86,
                                          "width":500
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"iPayLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":102,
                                          "width":188
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"iRewardLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":120,
                                          "width":188
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"iRemainRewardLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":135,
                                          "width":188
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"iGetRewardBtn",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":340,
                                          "y":118,
                                          "styleName":"BtnStdRed2",
                                          "enabled":true,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":165,
                                          "width":500
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"inviteRuleTArea",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":175,
                                          "width":470,
                                          "height":60,
                                          "editable":false,
                                          "styleName":"CSSBorder"
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _99558244hrule:HRule;
      
      public function ReturnRewardPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 530;
         this.height = 340;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ReturnRewardPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get iGetRewardBtn() : BasicGlowButton
      {
         return this._575087872iGetRewardBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteNameInput() : TextInput
      {
         return this._1729325322inviteNameInput;
      }
      
      public function set iGetRewardBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._575087872iGetRewardBtn;
         if(_loc2_ !== param1)
         {
            this._575087872iGetRewardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iGetRewardBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rGetGiftBtn() : BasicGlowButton
      {
         return this._68714728rGetGiftBtn;
      }
      
      public function set ruleTArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._2103680635ruleTArea;
         if(_loc2_ !== param1)
         {
            this._2103680635ruleTArea = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ruleTArea",_loc2_,param1));
         }
      }
      
      private function _ReturnRewardPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.RETURN_REWARD_PANEL[0];
         _loc1_ = Language.RETURN_REWARD_PANEL[1];
         _loc1_ = Language.RETURN_REWARD_PANEL[2];
         _loc1_ = Language.RETURN_REWARD_PANEL[3];
         _loc1_ = Language.RETURN_REWARD_PANEL[5];
         _loc1_ = Language.RETURN_REWARD_PANEL[6];
         _loc1_ = Language.RETURN_REWARD_PANEL[7];
         _loc1_ = Language.RETURN_REWARD_PANEL[9];
         _loc1_ = Language.RETURN_REWARD_PANEL[4];
         _loc1_ = Language.RETURN_REWARD_PANEL[18];
         _loc1_ = Language.RETURN_REWARD_PANEL[15];
         _loc1_ = Language.RETURN_REWARD_PANEL[16];
         _loc1_ = Language.RETURN_REWARD_PANEL[13];
         _loc1_ = Language.RETURN_REWARD_PANEL[8];
         _loc1_ = Language.RETURN_REWARD_PANEL[10];
         _loc1_ = Language.RETURN_REWARD_PANEL[11];
         _loc1_ = Language.RETURN_REWARD_PANEL[12];
         _loc1_ = Language.RETURN_REWARD_PANEL[13];
         _loc1_ = Language.RETURN_REWARD_PANEL[14];
         _loc1_ = Language.RETURN_REWARD_PANEL[15];
         _loc1_ = Language.RETURN_REWARD_PANEL[16];
         _loc1_ = Language.RETURN_REWARD_PANEL[13];
         _loc1_ = Language.RETURN_REWARD_PANEL[17];
      }
      
      [Bindable(event="propertyChange")]
      public function get navBtn1() : BasicGlowButton
      {
         return this._1729241368navBtn1;
      }
      
      public function set rGetRewardBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2065539191rGetRewardBtn;
         if(_loc2_ !== param1)
         {
            this._2065539191rGetRewardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rGetRewardBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteSubmitBtn() : BasicGlowButton
      {
         return this._1700887067inviteSubmitBtn;
      }
      
      public function onGetReturnReward(param1:int, param2:String) : void
      {
         if(param1 > 0)
         {
            if(param2 == "returner")
            {
               rGetRewardBtn.enabled = false;
               rGetRewardBtn.removeEventListener(MouseEvent.CLICK,onGetReturnReward);
               rRRewardLabel.text = (Language.RETURN_REWARD_PANEL[16] as String).replace("{num}",0);
               rRemainReward = 0;
            }
            else
            {
               iGetRewardBtn.enabled = false;
               iGetRewardBtn.removeEventListener(MouseEvent.CLICK,onGetReturnReward);
               iRemainRewardLabel.text = (Language.RETURN_REWARD_PANEL[16] as String).replace("{num}",0);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get navBtn0() : BasicGlowButton
      {
         return this._1729241367navBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get iGetGiftBtn() : BasicGlowButton
      {
         return this._938592225iGetGiftBtn;
      }
      
      public function set iRemainRewardLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._104320400iRemainRewardLabel;
         if(_loc2_ !== param1)
         {
            this._104320400iRemainRewardLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iRemainRewardLabel",_loc2_,param1));
         }
      }
      
      public function set rGetGiftBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._68714728rGetGiftBtn;
         if(_loc2_ !== param1)
         {
            this._68714728rGetGiftBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rGetGiftBtn",_loc2_,param1));
         }
      }
      
      public function set rPayLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1525340606rPayLabel;
         if(_loc2_ !== param1)
         {
            this._1525340606rPayLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rPayLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteLabel1() : RoundedLabel
      {
         return this._69226534inviteLabel1;
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteLabel2() : RoundedLabel
      {
         return this._69226535inviteLabel2;
      }
      
      public function set inviteReward(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._245317528inviteReward;
         if(_loc2_ !== param1)
         {
            this._245317528inviteReward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteReward",_loc2_,param1));
         }
      }
      
      public function set iNumLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1648562839iNumLabel;
         if(_loc2_ !== param1)
         {
            this._1648562839iNumLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iNumLabel",_loc2_,param1));
         }
      }
      
      private function _ReturnRewardPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ReturnRewardPanel_BasicTitleCanvas1.text = param1;
         },"_ReturnRewardPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            navBtn0.label = param1;
         },"navBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            navBtn1.label = param1;
         },"navBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            deadlineLabel.text = param1;
         },"deadlineLabel.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            inviteLabel1.text = param1;
         },"inviteLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            inviteLabel2.text = param1;
         },"inviteLabel2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            inviteSubmitBtn.label = param1;
         },"inviteSubmitBtn.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            inviteInfo.htmlText = param1;
         },"inviteInfo.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rGetGiftBtn.label = param1;
         },"rGetGiftBtn.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rPayLabel.text = param1;
         },"rPayLabel.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rRewardLabel.text = param1;
         },"rRewardLabel.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rRRewardLabel.text = param1;
         },"rRRewardLabel.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rGetRewardBtn.label = param1;
         },"rGetRewardBtn.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ruleTArea.htmlText = param1;
         },"ruleTArea.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iNumLabel.text = param1;
         },"iNumLabel.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iGetGiftLabel.text = param1;
         },"iGetGiftLabel.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iRemainGiftLabel.text = param1;
         },"iRemainGiftLabel.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iGetGiftBtn.label = param1;
         },"iGetGiftBtn.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iPayLabel.text = param1;
         },"iPayLabel.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iRewardLabel.text = param1;
         },"iRewardLabel.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iRemainRewardLabel.text = param1;
         },"iRemainRewardLabel.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iGetRewardBtn.label = param1;
         },"iGetRewardBtn.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RETURN_REWARD_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            inviteRuleTArea.htmlText = param1;
         },"inviteRuleTArea.htmlText");
         result[22] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get rRewardLabel() : RoundedLabel
      {
         return this._83865907rRewardLabel;
      }
      
      public function set inviteSubmitBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1700887067inviteSubmitBtn;
         if(_loc2_ !== param1)
         {
            this._1700887067inviteSubmitBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteSubmitBtn",_loc2_,param1));
         }
      }
      
      public function set navBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1729241368navBtn1;
         if(_loc2_ !== param1)
         {
            this._1729241368navBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"navBtn1",_loc2_,param1));
         }
      }
      
      public function set iGetGiftBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._938592225iGetGiftBtn;
         if(_loc2_ !== param1)
         {
            this._938592225iGetGiftBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iGetGiftBtn",_loc2_,param1));
         }
      }
      
      public function set navBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1729241367navBtn0;
         if(_loc2_ !== param1)
         {
            this._1729241367navBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"navBtn0",_loc2_,param1));
         }
      }
      
      public function set inviteLabel1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._69226534inviteLabel1;
         if(_loc2_ !== param1)
         {
            this._69226534inviteLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteLabel1",_loc2_,param1));
         }
      }
      
      public function set inviteLabel2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._69226535inviteLabel2;
         if(_loc2_ !== param1)
         {
            this._69226535inviteLabel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteLabel2",_loc2_,param1));
         }
      }
      
      private function submitInviter(param1:Event) : void
      {
         iServerId = inviteServerInput.selectedItem.serverId;
         iName = inviteNameInput.text;
         var _loc2_:Core = Core.getInstance();
         _loc2_.remote.call("submitInviter",null,iServerId,iName);
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteInfo() : TextArea
      {
         return this._1197759319inviteInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get hrule() : HRule
      {
         return this._99558244hrule;
      }
      
      public function set iPayLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._612561589iPayLabel;
         if(_loc2_ !== param1)
         {
            this._612561589iPayLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iPayLabel",_loc2_,param1));
         }
      }
      
      public function set rRewardLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._83865907rRewardLabel;
         if(_loc2_ !== param1)
         {
            this._83865907rRewardLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rRewardLabel",_loc2_,param1));
         }
      }
      
      public function initConfig(param1:Object) : void
      {
         var _loc2_:Date = null;
         var _loc3_:DateFormatter = null;
         var _loc4_:String = null;
         var _loc5_:Date = null;
         var _loc6_:String = null;
         var _loc7_:Core = null;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         if(param1)
         {
            _config = param1;
            _loc2_ = new Date(param1.end);
            _loc3_ = new DateFormatter();
            _loc3_.formatString = "YYYY-MM-DD JJ:NN:SS";
            _loc4_ = _loc3_.format(_loc2_);
            deadlineLabel.text = (Language.RETURN_REWARD_PANEL[3] as String).replace("{time}",_loc4_);
            _loc5_ = new Date(param1.lastLoginTime);
            _loc6_ = Language.RETURN_REWARD_PANEL[8] as String;
            _loc6_ = _loc6_.replace("{year}",_loc5_.getFullYear());
            _loc6_ = _loc6_.replace("{month}",_loc5_.getMonth() + 1);
            _loc6_ = _loc6_.replace("{date}",_loc5_.getDate());
            _loc6_ = _loc6_.replace("{perPay}",param1.rPerPay);
            _loc6_ = _loc6_.replace("{perReward}",param1.rPerReward);
            _loc7_ = Core.getInstance();
            _loc8_ = _loc7_.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,param1.rItemId);
            if(_loc8_)
            {
               _loc6_ = _loc6_.replace("{item}",_loc8_.name);
               returnReward.type = GamePredef.TBL_ITEM_TEMPLATE;
               returnReward.giid = param1.rItemId;
               returnReward.slotData = _loc8_;
            }
            ruleTArea.htmlText = _loc6_;
            maxInvite = param1.maxInvite;
            _loc9_ = Language.RETURN_REWARD_PANEL[17] as String;
            _loc9_ = _loc9_.replace("{max}",maxInvite);
            _loc9_ = _loc9_.replace("{perPay}",param1.iPerPay);
            _loc9_ = _loc9_.replace("{perReward}",param1.iPerReward);
            _loc8_ = _loc7_.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,param1.iItemId);
            if(_loc8_)
            {
               _loc9_ = _loc9_.replace("{item}",_loc8_.name);
               inviteReward.type = GamePredef.TBL_ITEM_TEMPLATE;
               inviteReward.giid = param1.iItemId;
               inviteReward.slotData = _loc8_;
            }
            inviteRuleTArea.htmlText = _loc9_;
         }
      }
      
      private function changeView(param1:Number) : void
      {
         viewStack.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            this["navBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["navBtn" + param1].selected = true;
      }
      
      private function getReturnGift(param1:Event) : void
      {
         var _loc2_:Core = Core.getInstance();
         if(param1.target == rGetGiftBtn)
         {
            _loc2_.remote.call("getReturnGift",null,"returner");
         }
         else if(param1.target == iGetGiftBtn)
         {
            _loc2_.remote.call("getReturnGift",null,"inviter");
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get deadlineLabel() : RoundedLabel
      {
         return this._1619367044deadlineLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteServerInput() : ComboBox
      {
         return this._1659057022inviteServerInput;
      }
      
      [Bindable(event="propertyChange")]
      public function get returnReward() : ItemSlot
      {
         return this._785110143returnReward;
      }
      
      public function __navBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get ruleTArea() : TextArea
      {
         return this._2103680635ruleTArea;
      }
      
      [Bindable(event="propertyChange")]
      public function get rGetRewardBtn() : BasicGlowButton
      {
         return this._2065539191rGetRewardBtn;
      }
      
      public function set rRRewardLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1159981765rRRewardLabel;
         if(_loc2_ !== param1)
         {
            this._1159981765rRRewardLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rRRewardLabel",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ReturnRewardPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ReturnRewardPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ReturnRewardPanelWatcherSetupUtil");
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
      public function get iNumLabel() : RoundedLabel
      {
         return this._1648562839iNumLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteReward() : ItemSlot
      {
         return this._245317528inviteReward;
      }
      
      public function set inviteInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._1197759319inviteInfo;
         if(_loc2_ !== param1)
         {
            this._1197759319inviteInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iPayLabel() : RoundedLabel
      {
         return this._612561589iPayLabel;
      }
      
      public function set iRewardLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1077878564iRewardLabel;
         if(_loc2_ !== param1)
         {
            this._1077878564iRewardLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iRewardLabel",_loc2_,param1));
         }
      }
      
      public function onSubmitInviter(param1:int) : void
      {
         var _loc2_:Core = null;
         if(param1 == 0)
         {
            inviteLabel1.visible = false;
            inviteLabel2.visible = false;
            inviteNameInput.visible = false;
            inviteServerInput.visible = false;
            inviteSubmitBtn.visible = false;
            inviteSubmitBtn.removeEventListener(MouseEvent.CLICK,submitInviter);
            inviteInfo.visible = true;
            inviteInfo.htmlText = (Language.RETURN_REWARD_PANEL[9] as String).replace("{server}",iServerId).replace("{name}",iName);
            rGetGiftBtn.label = Language.RETURN_REWARD_PANEL[4];
            rGetGiftBtn.enabled = true;
            rGetGiftBtn.addEventListener(MouseEvent.CLICK,getReturnGift);
            if(rRemainReward > 0)
            {
               rGetRewardBtn.enabled = true;
               rGetRewardBtn.addEventListener(MouseEvent.CLICK,getReturnReward);
            }
         }
         else
         {
            _loc2_ = Core.getInstance();
            _loc2_.sysMsg(Language.RETURN_REWARD_PANEL[21 + param1]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iRemainRewardLabel() : RoundedLabel
      {
         return this._104320400iRemainRewardLabel;
      }
      
      public function initWithData(param1:Object) : void
      {
      }
      
      public function __navBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get rPayLabel() : RoundedLabel
      {
         return this._1525340606rPayLabel;
      }
      
      public function set viewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1584105757viewStack;
         if(_loc2_ !== param1)
         {
            this._1584105757viewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewStack",_loc2_,param1));
         }
      }
      
      public function set hrule(param1:HRule) : void
      {
         var _loc2_:Object = this._99558244hrule;
         if(_loc2_ !== param1)
         {
            this._99558244hrule = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hrule",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rRRewardLabel() : RoundedLabel
      {
         return this._1159981765rRRewardLabel;
      }
      
      public function onGetReturnGift(param1:int, param2:String) : void
      {
         if(param1 > 0)
         {
            if(param2 == "returner")
            {
               rGetGiftBtn.label = Language.RETURN_REWARD_PANEL[19];
               rGetGiftBtn.enabled = false;
               rGetGiftBtn.removeEventListener(MouseEvent.CLICK,onGetReturnGift);
            }
            else
            {
               iGetGiftBtn.enabled = false;
               iGetGiftBtn.removeEventListener(MouseEvent.CLICK,onGetReturnGift);
               iRemainGiftLabel.text = (Language.RETURN_REWARD_PANEL[12] as String).replace("{num}",0);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iRewardLabel() : RoundedLabel
      {
         return this._1077878564iRewardLabel;
      }
      
      public function set iRemainGiftLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2089651473iRemainGiftLabel;
         if(_loc2_ !== param1)
         {
            this._2089651473iRemainGiftLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iRemainGiftLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteRuleTArea() : TextArea
      {
         return this._751424388inviteRuleTArea;
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      public function onGetReturnRewardInfo(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ArrayCollection = null;
         var _loc4_:int = 0;
         var _loc5_:Core = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(param1.type == "returner")
         {
            if(param1.isReturner)
            {
               _loc5_ = Core.getInstance();
               if(Boolean(param1.gift == 0) && Boolean(param1.iServerId) && _loc5_.player.level >= 50)
               {
                  rGetGiftBtn.label = Language.RETURN_REWARD_PANEL[4];
                  rGetGiftBtn.enabled = true;
                  rGetGiftBtn.addEventListener(MouseEvent.CLICK,getReturnGift);
               }
               else if(param1.gift == 1)
               {
                  rGetGiftBtn.label = Language.RETURN_REWARD_PANEL[19];
                  rGetGiftBtn.enabled = false;
               }
               else
               {
                  rGetGiftBtn.label = Language.RETURN_REWARD_PANEL[4];
                  rGetGiftBtn.enabled = false;
               }
               rPayLabel.text = (Language.RETURN_REWARD_PANEL[18] as String).replace("{num}",param1.pay);
               _loc6_ = int(param1.pay / _config.rPerPay) * _config.rPerReward;
               rRewardLabel.text = (Language.RETURN_REWARD_PANEL[15] as String).replace("{num}",_loc6_);
               rRemainReward = _loc6_ - param1.gold;
               rRRewardLabel.text = (Language.RETURN_REWARD_PANEL[16] as String).replace("{num}",rRemainReward);
               rPayLabel.visible = true;
               rRRewardLabel.visible = true;
               rGetRewardBtn.visible = true;
               if(Boolean(rRemainReward > 0) && Boolean(param1.iServerId) && _loc5_.player.level >= 50)
               {
                  rGetRewardBtn.enabled = true;
                  rGetRewardBtn.addEventListener(MouseEvent.CLICK,getReturnReward);
               }
               else
               {
                  rGetRewardBtn.enabled = false;
               }
               if(param1.iServerId)
               {
                  inviteLabel1.visible = false;
                  inviteLabel2.visible = false;
                  inviteNameInput.visible = false;
                  inviteServerInput.visible = false;
                  inviteSubmitBtn.visible = false;
                  inviteInfo.visible = true;
                  inviteInfo.htmlText = (Language.RETURN_REWARD_PANEL[9] as String).replace("{server}",param1.iServerId).replace("{name}",param1.iName);
               }
               else
               {
                  inviteLabel1.visible = true;
                  inviteLabel2.visible = true;
                  inviteNameInput.visible = true;
                  inviteServerInput.visible = true;
                  inviteSubmitBtn.visible = true;
                  inviteInfo.visible = false;
                  if(_loc5_.player.level >= 50)
                  {
                     inviteSubmitBtn.enabled = true;
                     inviteSubmitBtn.addEventListener(MouseEvent.CLICK,submitInviter);
                  }
                  else
                  {
                     inviteSubmitBtn.enabled = false;
                  }
               }
            }
            else if(param1.isReturner == false)
            {
               rPayLabel.visible = false;
               rRRewardLabel.visible = false;
               rGetRewardBtn.visible = false;
               rRewardLabel.text = Language.RETURN_REWARD_PANEL[20];
               rGetGiftBtn.label = Language.RETURN_REWARD_PANEL[4];
               rGetGiftBtn.enabled = false;
               inviteLabel1.visible = true;
               inviteLabel2.visible = true;
               inviteNameInput.visible = true;
               inviteServerInput.visible = true;
               inviteSubmitBtn.visible = true;
               inviteInfo.visible = false;
               inviteSubmitBtn.enabled = false;
            }
            _loc2_ = int(param1.serverList.length);
            _loc3_ = new ArrayCollection();
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc7_ = int(param1.serverList[_loc4_]);
               _loc3_.addItem({
                  "label":_loc7_ + Language.RETURN_REWARD_PANEL[21],
                  "serverId":_loc7_
               });
               _loc4_++;
            }
            inviteServerInput.dataProvider = _loc3_;
         }
         else if(param1.type == "inviter")
         {
            iNumLabel.text = (Language.RETURN_REWARD_PANEL[10] as String).replace("{num}",param1.num).replace("{max}",maxInvite);
            iGetGiftLabel.text = (Language.RETURN_REWARD_PANEL[11] as String).replace("{num}",param1.num);
            iRemainGiftLabel.text = (Language.RETURN_REWARD_PANEL[12] as String).replace("{num}",param1.num - param1.gift);
            if(param1.num - param1.gift > 0)
            {
               iGetGiftBtn.enabled = true;
               iGetGiftBtn.addEventListener(MouseEvent.CLICK,getReturnGift);
            }
            else
            {
               iGetGiftBtn.enabled = false;
            }
            iPayLabel.text = (Language.RETURN_REWARD_PANEL[14] as String).replace("{num}",param1.pay);
            _loc8_ = int(param1.pay / _config.iPerPay) * _config.iPerReward;
            iRewardLabel.text = (Language.RETURN_REWARD_PANEL[15] as String).replace("{num}",_loc8_);
            iRemainRewardLabel.text = (Language.RETURN_REWARD_PANEL[16] as String).replace("{num}",_loc8_ - param1.gold);
            if(_loc8_ - param1.gold > 0)
            {
               iGetRewardBtn.enabled = true;
               iGetRewardBtn.addEventListener(MouseEvent.CLICK,getReturnReward);
            }
            else
            {
               iGetRewardBtn.enabled = false;
            }
         }
      }
      
      public function set iGetGiftLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._35335177iGetGiftLabel;
         if(_loc2_ !== param1)
         {
            this._35335177iGetGiftLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iGetGiftLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iRemainGiftLabel() : RoundedLabel
      {
         return this._2089651473iRemainGiftLabel;
      }
      
      private function getReturnReward(param1:Event) : void
      {
         var _loc2_:Core = Core.getInstance();
         if(param1.target == rGetRewardBtn)
         {
            _loc2_.remote.call("getReturnReward",null,"returner");
         }
         else if(param1.target == iGetRewardBtn)
         {
            _loc2_.remote.call("getReturnReward",null,"inviter");
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iGetGiftLabel() : RoundedLabel
      {
         return this._35335177iGetGiftLabel;
      }
      
      public function set deadlineLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1619367044deadlineLabel;
         if(_loc2_ !== param1)
         {
            this._1619367044deadlineLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deadlineLabel",_loc2_,param1));
         }
      }
      
      public function set inviteNameInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1729325322inviteNameInput;
         if(_loc2_ !== param1)
         {
            this._1729325322inviteNameInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteNameInput",_loc2_,param1));
         }
      }
      
      public function set inviteServerInput(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1659057022inviteServerInput;
         if(_loc2_ !== param1)
         {
            this._1659057022inviteServerInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteServerInput",_loc2_,param1));
         }
      }
      
      override public function show() : void
      {
         super.show();
         var _loc1_:Core = Core.getInstance();
         _loc1_.remote.call("getReturnRewardInfo",null);
      }
      
      public function set returnReward(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._785110143returnReward;
         if(_loc2_ !== param1)
         {
            this._785110143returnReward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"returnReward",_loc2_,param1));
         }
      }
      
      public function set inviteRuleTArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._751424388inviteRuleTArea;
         if(_loc2_ !== param1)
         {
            this._751424388inviteRuleTArea = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteRuleTArea",_loc2_,param1));
         }
      }
   }
}

