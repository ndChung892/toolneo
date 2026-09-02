package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
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
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MQDTPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _332375386moneyNum:int = 0;
      
      public var _MQDTPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var ansTimer:Timer;
      
      private var answerData:Object;
      
      private var _core:Core = Core.getInstance();
      
      private var _1263205542lb_process:BasicTxtButton;
      
      private var leader_cid:int;
      
      private var _110364486times:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var _321971910answerTitle:IntroText;
      
      private var _qObj:Object = {};
      
      private var firstTimeFlag:Boolean = true;
      
      private var _3526471sela:LinkButton;
      
      private var _315724349isfinish:BasicTxtButton;
      
      private var _3526474seld:LinkButton;
      
      private var _3526473selc:LinkButton;
      
      private var _3526472selb:LinkButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":295,
               "height":376,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MQDTPanel_BasicTitleCanvas1"
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
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"lb_process",
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
                        "height":19,
                        "label":"0/10"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"lb_status",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":40,
                        "y":300,
                        "width":105,
                        "height":19,
                        "label":""
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"isfinish",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":320,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"completeBtn",
                  "events":{"click":"__completeBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":30000,
                        "styleName":"BtnStdGreen",
                        "x":8,
                        "y":340,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _402398819completeBtn:BasicDelayButton;
      
      private var _1118843173lb_status:BasicTxtButton;
      
      public function MQDTPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 295;
         this.height = 376;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MQDTPanel._watcherSetupUtil = param1;
      }
      
      public function updateMQDTQuestion(param1:Object) : void
      {
         leader_cid = param1.leader_cid;
         var _loc2_:* = param1.qList[param1.process[_core.cid]];
         _qObj = GameData.d[GamePredef.TBL_ANSWER][_loc2_];
         if(_qObj)
         {
            answerTitle.text = _qObj.t;
            sela.label = _qObj.a;
            selb.label = _qObj.b;
            selc.label = _qObj.c;
            seld.label = _qObj.d;
            answerTitle.visible = true;
            sela.visible = true;
            selb.visible = true;
            selc.visible = true;
            seld.visible = true;
         }
      }
      
      public function __selc_click(param1:MouseEvent) : void
      {
         answerMQDT("C");
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
      
      public function set selc(param1:LinkButton) : void
      {
         var _loc2_:Object = this._3526473selc;
         if(_loc2_ !== param1)
         {
            this._3526473selc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selc",_loc2_,param1));
         }
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
      
      private function _MQDTPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANSWERPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MQDTPanel_BasicTitleCanvas1.text = param1;
         },"_MQDTPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MQDT_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            isfinish.label = param1;
         },"isfinish.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MQDT_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            completeBtn.label = param1;
         },"completeBtn.label");
         result[2] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MQDTPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MQDTPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MQDTPanelWatcherSetupUtil");
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
      
      public function set seld(param1:LinkButton) : void
      {
         var _loc2_:Object = this._3526474seld;
         if(_loc2_ !== param1)
         {
            this._3526474seld = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seld",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_process() : BasicTxtButton
      {
         return this._1263205542lb_process;
      }
      
      private function viewClear() : void
      {
         answerTitle.visible = false;
         sela.visible = false;
         selb.visible = false;
         selc.visible = false;
         seld.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get moneyNum() : int
      {
         return this._332375386moneyNum;
      }
      
      private function onAnswerMQDT(param1:Object) : void
      {
         var _loc2_:* = param1.process[_core.cid];
         if(_loc2_ >= 10)
         {
            viewClear();
            if(leader_cid == _core.cid)
            {
               completeBtn.visible = true;
            }
            else
            {
               hide();
               Alert.show(Language.MQDT_PANEL[0]);
            }
         }
         lb_process.label = _loc2_ + "/10 ";
         var _loc3_:* = param1.isCorrect;
         if(_loc3_)
         {
            lb_status.label = Language.MQDT_PANEL[1];
         }
         else
         {
            lb_status.label = Language.MQDT_PANEL[2];
         }
         updateMQDTQuestion(param1);
      }
      
      public function __selb_click(param1:MouseEvent) : void
      {
         answerMQDT("B");
      }
      
      private function complete() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               hide();
               _core.remote.call("completeMQDT",null,leader_cid);
            }
         };
         Alert.show(Language.MQDT_PANEL[3],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function __seld_click(param1:MouseEvent) : void
      {
         answerMQDT("D");
      }
      
      [Bindable(event="propertyChange")]
      public function get isfinish() : BasicTxtButton
      {
         return this._315724349isfinish;
      }
      
      public function __answerTitle_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set lb_status(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1118843173lb_status;
         if(_loc2_ !== param1)
         {
            this._1118843173lb_status = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_status",_loc2_,param1));
         }
      }
      
      public function set completeBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._402398819completeBtn;
         if(_loc2_ !== param1)
         {
            this._402398819completeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"completeBtn",_loc2_,param1));
         }
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
      public function get answerTitle() : IntroText
      {
         return this._321971910answerTitle;
      }
      
      public function __completeBtn_click(param1:MouseEvent) : void
      {
         complete();
      }
      
      [Bindable(event="propertyChange")]
      private function get times() : int
      {
         return this._110364486times;
      }
      
      [Bindable(event="propertyChange")]
      public function get selc() : LinkButton
      {
         return this._3526473selc;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
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
      
      [Bindable(event="propertyChange")]
      public function get seld() : LinkButton
      {
         return this._3526474seld;
      }
      
      public function set lb_process(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1263205542lb_process;
         if(_loc2_ !== param1)
         {
            this._1263205542lb_process = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_process",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_status() : BasicTxtButton
      {
         return this._1118843173lb_status;
      }
      
      [Bindable(event="propertyChange")]
      public function get completeBtn() : BasicDelayButton
      {
         return this._402398819completeBtn;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
      }
      
      private function _MQDTPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANSWERPANEL_U[1];
         _loc1_ = Language.MQDT_PANEL[4];
         _loc1_ = Language.MQDT_PANEL[5];
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
      
      public function __sela_click(param1:MouseEvent) : void
      {
         answerMQDT("A");
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
      
      public function resetPanel() : void
      {
         lb_process.label = "0/10";
         lb_status.label = "";
         completeBtn.visible = false;
      }
      
      private function answerMQDT(param1:String) : void
      {
         _core.remote.call("answerMQDT",new Responder(onAnswerMQDT),leader_cid,_core.cid,param1);
      }
      
      public function set isfinish(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._315724349isfinish;
         if(_loc2_ !== param1)
         {
            this._315724349isfinish = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isfinish",_loc2_,param1));
         }
      }
   }
}

