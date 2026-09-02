package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.controls.Alert;
   import mx.controls.NumericStepper;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExchangePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1348181207cvtDou:TextInput;
      
      private var _3178592gold:NumericStepper;
      
      public var _ExchangePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _ExchangePanel_IntroText1:IntroText;
      
      mx_internal var _watchers:Array;
      
      private var _364633395awardPoint:Number = 0;
      
      public var _ExchangePanel_BasicTxtButton1:BasicTxtButton;
      
      public var _ExchangePanel_BasicGlowButton1:BasicGlowButton;
      
      public var _ExchangePanel_BasicGlowButton2:BasicGlowButton;
      
      public var _ExchangePanel_BasicGlowButton3:BasicGlowButton;
      
      public var _ExchangePanel_BasicTxtButton6:BasicTxtButton;
      
      public var _ExchangePanel_BasicTxtButton2:BasicTxtButton;
      
      public var _ExchangePanel_BasicTxtButton3:BasicTxtButton;
      
      public var _ExchangePanel_BasicTxtButton4:BasicTxtButton;
      
      public var _ExchangePanel_BasicTxtButton5:BasicTxtButton;
      
      private var _663605632goldrenren:BoxLabel;
      
      private const str:String;
      
      private var _719391572totalPoint:BoxLabel;
      
      private var _106845584point:Number = 0;
      
      public var _ExchangePanel_BoxLabel2:BoxLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _2035869885goldBind:NumericStepper;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      public function ExchangePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":300,
                  "height":310,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"_ExchangePanel_BasicTitleCanvas1"
                  }),new UIComponentDescriptor({
                     "type":IntroText,
                     "id":"_ExchangePanel_IntroText1",
                     "stylesFactory":function():void
                     {
                        this.left = "15";
                        this.right = "15";
                        this.top = "40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"height":110};
                     }
                  }),new UIComponentDescriptor({
                     "type":BoxLabel,
                     "id":"totalPoint",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":113.15,
                           "y":163.5,
                           "width":102.05
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_ExchangePanel_BasicGlowButton1",
                     "events":{"click":"___ExchangePanel_BasicGlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":233.15,
                           "y":158,
                           "styleName":"BtnStdRed",
                           "width":50
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_ExchangePanel_BasicGlowButton2",
                     "events":{"click":"___ExchangePanel_BasicGlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":233.75,
                           "y":192,
                           "styleName":"BtnStdGreen",
                           "width":50
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":NumericStepper,
                     "id":"gold",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":113.15,
                           "y":195.5,
                           "minimum":0,
                           "stepSize":1,
                           "width":102.05
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BoxLabel,
                     "id":"_ExchangePanel_BoxLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":113.15,
                           "y":231.5,
                           "width":102.05
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":NumericStepper,
                     "id":"goldBind",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":113.15,
                           "y":263.5,
                           "minimum":0,
                           "stepSize":1,
                           "width":102.05
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_ExchangePanel_BasicGlowButton3",
                     "events":{"click":"___ExchangePanel_BasicGlowButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":233.75,
                           "y":261,
                           "styleName":"BtnStdGreen",
                           "width":50
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ExchangePanel_BasicTxtButton1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":163.5,
                           "width":70,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ExchangePanel_BasicTxtButton2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":197.5,
                           "width":70,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ExchangePanel_BasicTxtButton3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":231.5,
                           "width":70,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ExchangePanel_BasicTxtButton4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":265.5,
                           "width":70,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"cvtDou",
                     "events":{"change":"__cvtDou_change"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":112.95,
                           "y":190,
                           "width":32.5,
                           "restrict":"0-9"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BoxLabel,
                     "id":"goldrenren",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":165,
                           "y":192,
                           "text":"0",
                           "width":37
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ExchangePanel_BasicTxtButton5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":145,
                           "y":192,
                           "width":23,
                           "height":18,
                           "label":"="
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ExchangePanel_BasicTxtButton6",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":203.75,
                           "y":193,
                           "width":23,
                           "height":18
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         str = Language.EXCHANGEPANEL_S[0];
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 11908533;
         };
         this.width = 300;
         this.height = 310;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExchangePanel._watcherSetupUtil = param1;
      }
      
      public function set goldBind(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._2035869885goldBind;
         if(_loc2_ !== param1)
         {
            this._2035869885goldBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBind",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goldrenren() : BoxLabel
      {
         return this._663605632goldrenren;
      }
      
      public function onGetAwardPoint(param1:Object) : void
      {
         awardPoint = Number(param1);
      }
      
      public function ___ExchangePanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         getGoldBind();
      }
      
      public function set goldrenren(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._663605632goldrenren;
         if(_loc2_ !== param1)
         {
            this._663605632goldrenren = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldrenren",_loc2_,param1));
         }
      }
      
      public function oExS(param1:Object) : void
      {
         point -= Number(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExchangePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExchangePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ExchangePanelWatcherSetupUtil");
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
      
      public function ___ExchangePanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         _core.deal();
      }
      
      public function onGetAccountEmailByGuid(param1:String) : void
      {
         if(!param1)
         {
         }
         var _loc2_:int = param1.length;
         var _loc3_:int = param1.indexOf("@gs");
         if(_loc3_ > _loc2_ - 4)
         {
            _core.isGOSU = true;
            return;
         }
         _core.isGOSU = false;
      }
      
      public function __cvtDou_change(param1:Event) : void
      {
         douInputed(param1);
      }
      
      private function set point(param1:Number) : void
      {
         var _loc2_:Object = this._106845584point;
         if(_loc2_ !== param1)
         {
            this._106845584point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"point",_loc2_,param1));
         }
      }
      
      private function submit(param1:CloseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.detail == Alert.YES)
         {
            if(!_core.player.enoughBag(2) || !_core.player.enoughPetSlot(1))
            {
               Alert.show(Language.EXCHANGEPANEL_S[4],"",Alert.OK);
               return;
            }
            _loc2_ = int(_core.view.getUI(ViewManager.PANEL_GAMEINTRO).itemShowStyle);
            if(_core.by_session == "renren")
            {
               _core.remote.gg(Number(goldrenren.text),_loc2_);
            }
            else
            {
               _core.remote.gg(gold.value,_loc2_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get point() : Number
      {
         return this._106845584point;
      }
      
      private function _ExchangePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicTitleCanvas1.text = param1;
         },"_ExchangePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.by_session != "renren" ? str : Language.EXCHANGEPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_IntroText1.htmlText = param1;
         },"_ExchangePanel_IntroText1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = point;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            totalPoint.text = param1;
         },"totalPoint.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicGlowButton1.label = param1;
         },"_ExchangePanel_BasicGlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicGlowButton2.label = param1;
         },"_ExchangePanel_BasicGlowButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():Number
         {
            return point;
         },function(param1:Number):void
         {
            gold.maximum = param1;
         },"gold.maximum");
         result[5] = binding;
         binding = new Binding(this,function():Number
         {
            return point;
         },function(param1:Number):void
         {
            gold.value = param1;
         },"gold.value");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.by_session != "renren";
         },function(param1:Boolean):void
         {
            gold.visible = param1;
         },"gold.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = awardPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BoxLabel2.text = param1;
         },"_ExchangePanel_BoxLabel2.text");
         result[8] = binding;
         binding = new Binding(this,function():Number
         {
            return int(awardPoint / 10);
         },function(param1:Number):void
         {
            goldBind.maximum = param1;
         },"goldBind.maximum");
         result[9] = binding;
         binding = new Binding(this,function():Number
         {
            return int(awardPoint / 10);
         },function(param1:Number):void
         {
            goldBind.value = param1;
         },"goldBind.value");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicGlowButton3.label = param1;
         },"_ExchangePanel_BasicGlowButton3.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.by_session != "renren" ? Language.EXCHANGEPANEL_U[3] : Language.EXCHANGEPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicTxtButton1.label = param1;
         },"_ExchangePanel_BasicTxtButton1.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.by_session != "renren" ? Language.EXCHANGEPANEL_U[4] : Language.EXCHANGEPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicTxtButton2.label = param1;
         },"_ExchangePanel_BasicTxtButton2.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicTxtButton3.label = param1;
         },"_ExchangePanel_BasicTxtButton3.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicTxtButton4.label = param1;
         },"_ExchangePanel_BasicTxtButton4.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.by_session == "renren";
         },function(param1:Boolean):void
         {
            cvtDou.visible = param1;
         },"cvtDou.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.by_session == "renren";
         },function(param1:Boolean):void
         {
            goldrenren.visible = param1;
         },"goldrenren.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.by_session == "renren";
         },function(param1:Boolean):void
         {
            _ExchangePanel_BasicTxtButton5.visible = param1;
         },"_ExchangePanel_BasicTxtButton5.visible");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXCHANGEPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExchangePanel_BasicTxtButton6.label = param1;
         },"_ExchangePanel_BasicTxtButton6.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.by_session == "renren";
         },function(param1:Boolean):void
         {
            _ExchangePanel_BasicTxtButton6.visible = param1;
         },"_ExchangePanel_BasicTxtButton6.visible");
         result[20] = binding;
         return result;
      }
      
      private function exchangeAwardPointToGoldBind(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.exchangeAwardToGoldBind(goldBind.value);
         }
      }
      
      private function _ExchangePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.EXCHANGEPANEL_U[2];
         _loc1_ = _core.by_session != "renren" ? str : Language.EXCHANGEPANEL_S[10];
         _loc1_ = point;
         _loc1_ = Language.EXCHANGEPANEL_U[0];
         _loc1_ = Language.EXCHANGEPANEL_U[1];
         _loc1_ = point;
         _loc1_ = point;
         _loc1_ = _core.by_session != "renren";
         _loc1_ = awardPoint;
         _loc1_ = int(awardPoint / 10);
         _loc1_ = int(awardPoint / 10);
         _loc1_ = Language.EXCHANGEPANEL_U[1];
         _loc1_ = _core.by_session != "renren" ? Language.EXCHANGEPANEL_U[3] : Language.EXCHANGEPANEL_U[8];
         _loc1_ = _core.by_session != "renren" ? Language.EXCHANGEPANEL_U[4] : Language.EXCHANGEPANEL_U[9];
         _loc1_ = Language.EXCHANGEPANEL_U[5];
         _loc1_ = Language.EXCHANGEPANEL_U[6];
         _loc1_ = _core.by_session == "renren";
         _loc1_ = _core.by_session == "renren";
         _loc1_ = _core.by_session == "renren";
         _loc1_ = Language.EXCHANGEPANEL_U[7];
         _loc1_ = _core.by_session == "renren";
      }
      
      private function getGoldBind() : void
      {
         var _loc1_:Number = goldBind.value;
         var _loc2_:Number = awardPoint / 10;
         if(_loc1_ <= 0)
         {
            return;
         }
         if(_loc1_ > _loc2_)
         {
            Alert.show(Language.EXCHANGEPANEL_S[5] + _loc2_ + Language.EXCHANGEPANEL_S[6],"",Alert.OK);
         }
         else
         {
            Alert.show(Language.EXCHANGEPANEL_S[7] + _loc1_ * 10 + Language.EXCHANGEPANEL_S[8] + _loc1_ + Language.EXCHANGEPANEL_S[9],"",Alert.YES | Alert.NO,null,exchangeAwardPointToGoldBind);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBind() : NumericStepper
      {
         return this._2035869885goldBind;
      }
      
      private function douInputed(param1:Event) : *
      {
         var _loc2_:TextInput = param1.target as TextInput;
         var _loc3_:Number = Number(_loc2_.text);
         var _loc4_:Number = Number(totalPoint.text);
         if(_loc3_ >= _loc4_)
         {
            _loc2_.text = _loc4_.toString();
            _loc3_ = _loc4_;
         }
         if(_loc3_ < 0)
         {
            _loc2_.text = "0";
            _loc3_ = 0;
         }
         _loc3_ *= 10;
         goldrenren.text = _loc3_.toString();
      }
      
      [Bindable(event="propertyChange")]
      public function get cvtDou() : TextInput
      {
         return this._1348181207cvtDou;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalPoint() : BoxLabel
      {
         return this._719391572totalPoint;
      }
      
      public function set gold(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._3178592gold;
         if(_loc2_ !== param1)
         {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",_loc2_,param1));
         }
      }
      
      public function ___ExchangePanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         getGold();
      }
      
      [Bindable(event="propertyChange")]
      private function get awardPoint() : Number
      {
         return this._364633395awardPoint;
      }
      
      public function set totalPoint(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._719391572totalPoint;
         if(_loc2_ !== param1)
         {
            this._719391572totalPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPoint",_loc2_,param1));
         }
      }
      
      public function set cvtDou(param1:TextInput) : void
      {
         var _loc2_:Object = this._1348181207cvtDou;
         if(_loc2_ !== param1)
         {
            this._1348181207cvtDou = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvtDou",_loc2_,param1));
         }
      }
      
      private function getGold() : void
      {
         var _loc1_:Number = NaN;
         var _loc6_:String = null;
         var _loc2_:Number = 1;
         var _loc3_:Number = new Date(2025,10,27,0,0).getTime();
         var _loc4_:Number = new Date(2025,10,28,23,59).getTime();
         var _loc5_:Number = new Date().getTime();
         if(_loc3_ < _loc5_ && _loc4_ > _loc5_)
         {
            _loc2_ = 1.2;
         }
         if(_core.by_session == "renren")
         {
            _loc1_ = Number(goldrenren.text);
         }
         else
         {
            _loc1_ = gold.value;
         }
         if(_loc1_ > 0)
         {
            if(_core.by_session == "renren")
            {
               _loc6_ = Language.EXCHANGEPANEL_S[11] + _loc1_ + Language.EXCHANGEPANEL_S[12] + _loc1_ + Language.EXCHANGEPANEL_S[13];
            }
            else
            {
               _loc6_ = Language.EXCHANGEPANEL_S[1] + _loc1_ + Language.EXCHANGEPANEL_S[2] + Math.floor(_loc1_ * _loc2_ * 10) + Language.EXCHANGEPANEL_S[3];
            }
            Alert.show(_loc6_,"",Alert.YES | Alert.NO,null,submit);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gold() : NumericStepper
      {
         return this._3178592gold;
      }
      
      public function op(param1:Object) : void
      {
         point = Number(param1);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            _core.remote.gp();
         }
      }
      
      private function set awardPoint(param1:Number) : void
      {
         var _loc2_:Object = this._364633395awardPoint;
         if(_loc2_ !== param1)
         {
            this._364633395awardPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardPoint",_loc2_,param1));
         }
      }
      
      public function onExAwardPointToGoldBind(param1:Object) : void
      {
         awardPoint -= Number(param1);
      }
   }
}

