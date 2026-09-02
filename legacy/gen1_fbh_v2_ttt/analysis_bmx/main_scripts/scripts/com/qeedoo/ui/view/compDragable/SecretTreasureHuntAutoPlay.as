package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SecretTreasureHuntAutoPlay extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var timer:Timer;
      
      private var autoStr:String = "";
      
      private var _1491390272myLotto:LinkTextArea;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var AutoPlay:Boolean = false;
      
      public var _SecretTreasureHuntAutoPlay_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2077607820timeLeft:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _646331561autoNum:NumericStepper;
      
      private var _647821723AutoLabel:Label;
      
      private var _530498876twoCanvas:Canvas;
      
      private var _91052262_left:String = "02:00";
      
      private var strArr:Array = [];
      
      private var leftTime:Number = 120;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":260,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SecretTreasureHuntAutoPlay_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"oneCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":240,
                        "height":116,
                        "y":44,
                        "x":10,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "text":"Auto："
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"autoNum",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "right";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":70,
                                 "y":8,
                                 "minimum":1,
                                 "maximum":10000,
                                 "stepSize":1,
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":144,
                                 "y":10,
                                 "text":"Lần"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___SecretTreasureHuntAutoPlay_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":76.5,
                                 "y":84,
                                 "label":"Bắt đầu",
                                 "width":87,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"twoCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":240,
                        "height":116,
                        "y":44,
                        "x":10,
                        "styleName":"RoundedGradientBorder",
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.backgroundColor = 1190715;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":70,
                                 "y":50,
                                 "width":100,
                                 "height":27,
                                 "styleName":"RoundedGradientBorder"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"timeLeft",
                           "stylesFactory":function():void
                           {
                              this.fontFamily = "Arial";
                              this.textAlign = "center";
                              this.fontSize = 24;
                              this.color = 16737792;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":70,
                                 "y":47,
                                 "width":100,
                                 "height":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___SecretTreasureHuntAutoPlay_Button2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":28,
                                 "y":85,
                                 "label":"Dừng",
                                 "width":79,
                                 "styleName":"BtnStdGreen",
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___SecretTreasureHuntAutoPlay_BasicDelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":2000,
                                 "x":139,
                                 "y":85,
                                 "label":"Nhanh",
                                 "width":77,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"AutoLabel",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74.5,
                                 "y":10,
                                 "width":109
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
                        "width":240,
                        "height":212,
                        "y":168,
                        "x":10,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"myLotto",
                           "events":{"valueCommit":"__myLotto_valueCommit"},
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.top = "5";
                              this.right = "5";
                              this.bottom = "0";
                              this.color = 16766720;
                              this.fontSize = 14;
                              this.backgroundAlpha = 0;
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selectable":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"auto"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var loadCid:Number = 0;
      
      private var _1126312798oneCanvas:Canvas;
      
      private var _core:Core = Core.getInstance();
      
      public function SecretTreasureHuntAutoPlay()
      {
         super();
         mx_internal::_document = this;
         this.width = 260;
         this.height = 400;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretTreasureHuntAutoPlay._watcherSetupUtil = param1;
      }
      
      public function set myLotto(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1491390272myLotto;
         if(_loc2_ !== param1)
         {
            this._1491390272myLotto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLotto",_loc2_,param1));
         }
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
         if(loadCid == 0)
         {
            loadCid = _core.cid;
         }
         if(loadCid != _core.cid)
         {
            loadCid = _core.cid;
            oneCanvas.visible = true;
            twoCanvas.visible = false;
         }
      }
      
      private function refreshTimeTxt() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(leftTime >= 60)
         {
            _loc1_ = Math.floor(leftTime / 60);
            _loc2_ = leftTime % 60;
         }
         else if(leftTime > 0)
         {
            _loc1_ = 0;
            _loc2_ = leftTime;
         }
         else
         {
            _loc1_ = 0;
            _loc2_ = 0;
         }
         var _loc3_:String = "00";
         var _loc4_:String = "00";
         if(_loc1_ >= 0)
         {
            if(_loc1_ <= 9)
            {
               _loc3_ = "0" + _loc1_;
            }
            else
            {
               _loc3_ = String(_loc1_);
            }
         }
         if(_loc2_ >= 0)
         {
            if(_loc2_ <= 9)
            {
               _loc4_ = "0" + _loc2_;
            }
            else
            {
               _loc4_ = String(_loc2_);
            }
         }
         _left = _loc3_ + ":" + _loc4_;
      }
      
      private function stopAutoPlayFunc() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         oneCanvas.visible = true;
         twoCanvas.visible = false;
         strArr = [];
         _core.remote.call("stopAutoPlaySecretTreasureHunt",null);
      }
      
      public function set timeLeft(param1:Label) : void
      {
         var _loc2_:Object = this._2077607820timeLeft;
         if(_loc2_ !== param1)
         {
            this._2077607820timeLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLeft",_loc2_,param1));
         }
      }
      
      public function set _AutoPlay(param1:Boolean) : void
      {
         AutoPlay = param1;
         if(AutoPlay)
         {
            oneCanvas.visible = false;
            twoCanvas.visible = true;
         }
         else
         {
            oneCanvas.visible = true;
            twoCanvas.visible = false;
         }
      }
      
      public function set _autoStr(param1:String) : void
      {
         autoStr = param1;
         AutoLabel.htmlText = autoStr;
      }
      
      public function set twoCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._530498876twoCanvas;
         if(_loc2_ !== param1)
         {
            this._530498876twoCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"twoCanvas",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretTreasureHuntAutoPlay = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretTreasureHuntAutoPlay_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SecretTreasureHuntAutoPlayWatcherSetupUtil");
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
      
      private function lijiFinishFunc() : void
      {
         _core.remote.call("getSecretTreasureHuntLiJiGold",null);
      }
      
      public function ___SecretTreasureHuntAutoPlay_Button1_click(param1:MouseEvent) : void
      {
         autoPlayFunc();
      }
      
      public function set _strShow(param1:String) : void
      {
         if(strArr.length >= 25)
         {
            strArr.splice(0,1);
         }
         strArr.push(param1);
         refreshText();
      }
      
      public function set _leftTime(param1:Number) : void
      {
         leftTime = param1;
         refreshTime();
      }
      
      private function refreshText() : void
      {
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < strArr.length)
         {
            _loc1_ += strArr[_loc2_];
            _loc2_++;
         }
         myLotto.htmlText = _loc1_;
      }
      
      public function __myLotto_valueCommit(param1:FlexEvent) : void
      {
         myLotto.verticalScrollPosition = myLotto.maxVerticalScrollPosition;
      }
      
      private function _SecretTreasureHuntAutoPlay_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SecretTreasureHuntAutoPlay_BasicTitleCanvas1.text = param1;
         },"_SecretTreasureHuntAutoPlay_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _left;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            timeLeft.text = param1;
         },"timeLeft.text");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            timeLeft.filters = param1;
         },"timeLeft.filters");
         result[2] = binding;
         return result;
      }
      
      public function set autoNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._646331561autoNum;
         if(_loc2_ !== param1)
         {
            this._646331561autoNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oneCanvas() : Canvas
      {
         return this._1126312798oneCanvas;
      }
      
      public function set oneCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1126312798oneCanvas;
         if(_loc2_ !== param1)
         {
            this._1126312798oneCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myLotto() : LinkTextArea
      {
         return this._1491390272myLotto;
      }
      
      [Bindable(event="propertyChange")]
      public function get twoCanvas() : Canvas
      {
         return this._530498876twoCanvas;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         if(leftTime <= 0)
         {
            completeByTime();
            if(timer)
            {
               timer.stop();
            }
            return;
         }
         --leftTime;
         refreshTimeTxt();
      }
      
      private function refreshTime() : void
      {
         if(!timer)
         {
            timer = new Timer(1000);
         }
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
         if(!timer.running)
         {
            timer.start();
         }
         refreshTimeTxt();
      }
      
      public function onLijiFinishFunc(param1:Number) : void
      {
         var func:Function;
         var tempStr:String;
         var goldNum:Number = param1;
         var view:Object = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(view)
         {
            if(view.getMoving())
            {
               return;
            }
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("AutoPlaySecretTreasureHuntLiJi",null);
            }
         };
         tempStr = "Xác nhận dùng" + goldNum + " vàng để hoàn thành nhanh?";
         Alert.show(tempStr,"",Alert.YES | Alert.NO,null,func);
      }
      
      private function set _left(param1:String) : void
      {
         var _loc2_:Object = this._91052262_left;
         if(_loc2_ !== param1)
         {
            this._91052262_left = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_left",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoNum() : NumericStepper
      {
         return this._646331561autoNum;
      }
      
      public function set AutoLabel(param1:Label) : void
      {
         var _loc2_:Object = this._647821723AutoLabel;
         if(_loc2_ !== param1)
         {
            this._647821723AutoLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AutoLabel",_loc2_,param1));
         }
      }
      
      private function completeByTime() : void
      {
         _core.remote.call("autoSecretTeasureHuntComplete",null);
      }
      
      public function ___SecretTreasureHuntAutoPlay_Button2_click(param1:MouseEvent) : void
      {
         stopAutoPlayFunc();
      }
      
      private function _SecretTreasureHuntAutoPlay_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SEC_TREA_HUNT[0];
         _loc1_ = _left;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get AutoLabel() : Label
      {
         return this._647821723AutoLabel;
      }
      
      [Bindable(event="propertyChange")]
      private function get _left() : String
      {
         return this._91052262_left;
      }
      
      private function autoPlayFunc() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc1_)
         {
            if(!_loc1_.getCanplay())
            {
               _core.sysMidNote("Phải ở trạng thái bình thường mới bắt đầu tầm bảo");
               return;
            }
         }
         if(autoNum.value <= 0)
         {
            return;
         }
         if(autoNum.value - Math.floor(autoNum.value) != 0)
         {
            return;
         }
         _loc1_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         var _loc2_:int = int(_loc1_.getPTSZNum());
         if(autoNum.value > _loc2_)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[15]);
            return;
         }
         _loc1_.setAllAutoNum(autoNum.value);
         AutoLabel.htmlText = "Đang tự động tầm bảo " + autoNum.value + "/" + autoNum.value;
         oneCanvas.visible = false;
         twoCanvas.visible = true;
         leftTime = 120;
         strArr = [];
         refreshText();
         refreshTime();
         _core.remote.call("autoPlaySecretTreasureHunt",null,autoNum.value);
      }
      
      public function ___SecretTreasureHuntAutoPlay_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         lijiFinishFunc();
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLeft() : Label
      {
         return this._2077607820timeLeft;
      }
   }
}

