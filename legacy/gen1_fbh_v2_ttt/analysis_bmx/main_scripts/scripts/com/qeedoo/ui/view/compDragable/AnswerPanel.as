package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AnswerPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      private var answerData:Object;
      
      public var _AnswerPanel_BoxLabel2:BoxLabel;
      
      private var _110364486times:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      public var _AnswerPanel_BoxLabel1:BoxLabel;
      
      private var _3237038info:Label;
      
      public var _AnswerPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _AnswerPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _AnswerPanel_BasicTxtButton3:BasicTxtButton;
      
      private var firstTimeFlag:Boolean = true;
      
      private var _3526471sela:LinkButton;
      
      private var _321971910answerTitle:IntroText;
      
      private var _3526473selc:LinkButton;
      
      private var _3526474seld:LinkButton;
      
      private var _3526472selb:LinkButton;
      
      private var _2033767917refreshButton:BasicGlowButton;
      
      public var _AnswerPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _94627080check:CheckBox;
      
      private var _3560141time:Label;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":295,
               "height":376,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AnswerPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"answerTitle",
                  "events":{"mouseDown":"__answerTitle_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "height":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":140,
                        "height":125,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"sela",
                           "events":{"click":"__sela_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":14};
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"selb",
                           "events":{"click":"__selb_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":42};
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"selc",
                           "events":{"click":"__selc_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":70};
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"seld",
                           "events":{"click":"__seld_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":98};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"time",
                           "stylesFactory":function():void
                           {
                              this.color = 14363149;
                              this.fontSize = 20;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":11
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"_AnswerPanel_BoxLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":115,
                        "y":300,
                        "width":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"check",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":169,
                        "y":300,
                        "width":102.850006,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"info",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":275};
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"_AnswerPanel_BoxLabel2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":115,
                        "y":330,
                        "width":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_AnswerPanel_BasicTxtButton1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":300,
                        "width":105,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_AnswerPanel_BasicTxtButton2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":188,
                        "y":300,
                        "width":90,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_AnswerPanel_BasicTxtButton3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":330,
                        "width":105,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"refreshButton",
                  "events":{"click":"__refreshButton_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":188,
                        "styleName":"BtnStdRed",
                        "y":328,
                        "width":65
                     };
                  }
               })]
            };
         }
      });
      
      private var _332375386moneyNum:int = 0;
      
      private var ansTimer:Timer;
      
      public function AnswerPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 295;
         this.height = 376;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AnswerPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get answerTitle() : IntroText
      {
         return this._321971910answerTitle;
      }
      
      public function __selc_click(param1:MouseEvent) : void
      {
         selAnswer("C");
      }
      
      public function set selb(param1:LinkButton) : void
      {
         var _loc2_:Object = this._3526472selb;
         if(_loc2_ !== param1)
         {
            this._3526472selb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selb",_loc2_,param1));
         }
      }
      
      public function set refreshButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2033767917refreshButton;
         if(_loc2_ !== param1)
         {
            this._2033767917refreshButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshButton",_loc2_,param1));
         }
      }
      
      private function set times(param1:int) : void
      {
         var _loc2_:Object = this._110364486times;
         if(_loc2_ !== param1)
         {
            this._110364486times = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"times",_loc2_,param1));
         }
      }
      
      private function updateView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         viewClear();
         if(answerData)
         {
            info.text = Language.ANSWERPANEL_S[2];
            refreshButton.enabled = true;
            ansTimer = new Timer(1000,15);
            ansTimer.addEventListener(TimerEvent.TIMER,timeReduce);
            ansTimer.addEventListener(TimerEvent.TIMER_COMPLETE,timeOver);
            ansTimer.start();
            answerTitle.text = answerData.t;
            sela.label = answerData.a;
            selb.label = answerData.b;
            selc.label = answerData.c;
            seld.label = answerData.d;
            answerTitle.visible = true;
            sela.visible = true;
            selb.visible = true;
            selc.visible = true;
            seld.visible = true;
            time.text = "15";
            time.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : CheckBox
      {
         return this._94627080check;
      }
      
      private function timeReduce(param1:TimerEvent) : void
      {
         time.text = (15 - ansTimer.currentCount).toString();
      }
      
      public function onGetAnswer(param1:Object) : void
      {
         visible = true;
         if(param1)
         {
            if(param1.f == 1)
            {
               answerData = param1.d;
               times = param1.n;
               updateView();
            }
            else if(param1.f == 2)
            {
               answerData = null;
               times = param1.n;
               viewClear();
               info.text = Language.ANSWERPANEL_S[0];
               refreshButton.enabled = true;
            }
            else if(param1.f == 3)
            {
               answerData = null;
               times = param1.n;
               viewClear();
               info.text = Language.ANSWERPANEL_S[1];
               refreshButton.enabled = false;
            }
            if(times + 1 <= 20)
            {
               moneyNum = 0;
            }
            else
            {
               moneyNum = Math.round(GamePredef.BASIC_GET_MONEY[_core.player.level] * GamePredef.ANSWER_MONEY_NUM * Math.ceil((times + 1 - 20) / 10));
            }
         }
      }
      
      private function onSelAnswer(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               viewClear();
               info.text = Language.ANSWERPANEL_S[6];
               break;
            case 2:
               viewClear();
               info.text = Language.ANSWERPANEL_S[7];
               break;
            case 3:
               viewClear();
               info.text = Language.ANSWERPANEL_S[8];
               break;
            case 4:
               viewClear();
               info.text = Language.ANSWERPANEL_S[9];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshButton() : BasicGlowButton
      {
         return this._2033767917refreshButton;
      }
      
      public function set sela(param1:LinkButton) : void
      {
         var _loc2_:Object = this._3526471sela;
         if(_loc2_ !== param1)
         {
            this._3526471sela = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sela",_loc2_,param1));
         }
      }
      
      public function set seld(param1:LinkButton) : void
      {
         var _loc2_:Object = this._3526474seld;
         if(_loc2_ !== param1)
         {
            this._3526474seld = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seld",_loc2_,param1));
         }
      }
      
      public function set selc(param1:LinkButton) : void
      {
         var _loc2_:Object = this._3526473selc;
         if(_loc2_ !== param1)
         {
            this._3526473selc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get moneyNum() : int
      {
         return this._332375386moneyNum;
      }
      
      private function viewClear() : void
      {
         if(ansTimer)
         {
            ansTimer.stop();
            ansTimer.removeEventListener(TimerEvent.TIMER,timeReduce);
            ansTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,timeOver);
         }
         answerTitle.visible = false;
         sela.visible = false;
         selb.visible = false;
         selc.visible = false;
         seld.visible = false;
         time.visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AnswerPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AnswerPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AnswerPanelWatcherSetupUtil");
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
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      private function selAnswer(param1:String) : void
      {
         if(times <= GamePredef.MAX_ANSWER && Boolean(answerData))
         {
            _core.remote.call("selAnswer",new Responder(onSelAnswer),param1);
         }
      }
      
      public function __seld_click(param1:MouseEvent) : void
      {
         selAnswer("D");
      }
      
      public function set time(param1:Label) : void
      {
         var _loc2_:Object = this._3560141time;
         if(_loc2_ !== param1)
         {
            this._3560141time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",_loc2_,param1));
         }
      }
      
      public function set check(param1:CheckBox) : void
      {
         var _loc2_:Object = this._94627080check;
         if(_loc2_ !== param1)
         {
            this._94627080check = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
         }
      }
      
      private function set moneyNum(param1:int) : void
      {
         var _loc2_:Object = this._332375386moneyNum;
         if(_loc2_ !== param1)
         {
            this._332375386moneyNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyNum",_loc2_,param1));
         }
      }
      
      private function timeOver(param1:Event) : void
      {
         info.text = Language.ANSWERPANEL_S[10];
         viewClear();
         answerData = null;
         ansTimer.removeEventListener(TimerEvent.TIMER,timeReduce);
         ansTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,timeOver);
      }
      
      [Bindable(event="propertyChange")]
      private function get times() : int
      {
         return this._110364486times;
      }
      
      [Bindable(event="propertyChange")]
      public function get sela() : LinkButton
      {
         return this._3526471sela;
      }
      
      [Bindable(event="propertyChange")]
      public function get selb() : LinkButton
      {
         return this._3526472selb;
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : Label
      {
         return this._3560141time;
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get selc() : LinkButton
      {
         return this._3526473selc;
      }
      
      public function __selb_click(param1:MouseEvent) : void
      {
         selAnswer("B");
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         updateView();
      }
      
      public function __refreshButton_click(param1:MouseEvent) : void
      {
         refresh();
      }
      
      private function _AnswerPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANSWERPANEL_U[1];
         _loc1_ = moneyNum.toString();
         _loc1_ = times.toString();
         _loc1_ = Language.ANSWERPANEL_U[2];
         _loc1_ = Language.ANSWERPANEL_U[3];
         _loc1_ = Language.ANSWERPANEL_U[4];
         _loc1_ = Language.ANSWERPANEL_U[0];
      }
      
      public function __answerTitle_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function refresh() : void
      {
         var _loc1_:String = "";
         if(times >= GamePredef.MAX_ANSWER)
         {
            return;
         }
         if(_core.player.money >= moneyNum)
         {
            if(times >= GamePredef.FREE_ANSWER)
            {
               if(check.selected)
               {
                  _core.remote.getAnswerByMoney();
               }
               else
               {
                  _loc1_ = Language.ANSWERPANEL_S[3];
                  _loc1_ = _loc1_.replace("{moneyNum}",moneyNum);
                  Alert.show(_loc1_,"",3,this,getAnswerByMoney);
               }
            }
            else
            {
               _core.remote.getAnswer();
            }
         }
         else
         {
            _core.sysMsg(Language.ANSWERPANEL_S[5]);
         }
      }
      
      private function getAnswerByMoney(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.getAnswerByMoney();
         }
      }
      
      private function _AnswerPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANSWERPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnswerPanel_BasicTitleCanvas1.text = param1;
         },"_AnswerPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = moneyNum.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnswerPanel_BoxLabel1.text = param1;
         },"_AnswerPanel_BoxLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = times.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnswerPanel_BoxLabel2.text = param1;
         },"_AnswerPanel_BoxLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANSWERPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnswerPanel_BasicTxtButton1.label = param1;
         },"_AnswerPanel_BasicTxtButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANSWERPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnswerPanel_BasicTxtButton2.label = param1;
         },"_AnswerPanel_BasicTxtButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANSWERPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnswerPanel_BasicTxtButton3.label = param1;
         },"_AnswerPanel_BasicTxtButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANSWERPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshButton.label = param1;
         },"refreshButton.label");
         result[6] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get seld() : LinkButton
      {
         return this._3526474seld;
      }
      
      public function set info(param1:Label) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
         if(!param1)
         {
            viewClear();
         }
      }
      
      public function __sela_click(param1:MouseEvent) : void
      {
         selAnswer("A");
      }
      
      public function set answerTitle(param1:IntroText) : void
      {
         var _loc2_:Object = this._321971910answerTitle;
         if(_loc2_ !== param1)
         {
            this._321971910answerTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"answerTitle",_loc2_,param1));
         }
      }
   }
}

