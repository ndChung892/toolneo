package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.Loader10;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.ScrollText;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WbAutoBattleCanva extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var WB_BOSS_HP:Number = 800000000;
      
      public var WB_STRONG_COST:* = [{
         "gold":2,
         "money":250000,
         "r":"100%"
      },{
         "gold":2,
         "money":250000,
         "r":"85%"
      },{
         "gold":2,
         "money":250000,
         "r":"65%"
      },{
         "gold":2,
         "money":250000,
         "r":"45%"
      },{
         "gold":2,
         "money":250000,
         "r":"25%"
      }];
      
      private var lastTimeNum:Number;
      
      private var _core:Core = Core.getInstance();
      
      private var _1662853568elemUIC:UIComponent;
      
      mx_internal var _bindings:Array = [];
      
      public var WB_LONGBUFF_STRONG:* = [2435,2436,2437,2437,2438];
      
      private var mc:MovieClip;
      
      private var _scrollText2:ScrollText;
      
      public var initFlag:Boolean = false;
      
      mx_internal var _watchers:Array = [];
      
      private var _543550324strongBtn1:Button;
      
      private var hpNow:Number = 800000000;
      
      public var WB_STRONG_LEVEL:* = [20,40,60,80,100];
      
      private var wbTimer:Timer;
      
      private var _1775826383lastTimeLabel:Label;
      
      private var _795540710wbAuto:CheckBox;
      
      private var timer:Timer = new Timer(500);
      
      private var _151488461onlineNum:Label;
      
      private var bloodLost:Number = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _729448801bossHpLabel:Label;
      
      private var _543550323strongBtn2:Button;
      
      private var hpBer:Number = 800000000;
      
      public var buffLevel:int = 0;
      
      public var bossCurrentHp:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":150,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"elemUIC",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":20,
                        "width":300,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"wbAuto",
                  "events":{"change":"__wbAuto_change"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":0,
                        "visible":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lastTimeLabel",
                  "stylesFactory":function():void
                  {
                     this.color = 1961723;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "y":0,
                        "percentWidth":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"bossHpLabel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "y":20,
                        "percentWidth":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"onlineNum",
                  "stylesFactory":function():void
                  {
                     this.color = 1961723;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":300,
                        "y":0,
                        "percentWidth":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"strongBtn1",
                  "events":{"click":"__strongBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":140,
                        "y":50,
                        "styleName":"BtnWbGold",
                        "height":50,
                        "width":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"strongBtn2",
                  "events":{"click":"__strongBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":50,
                        "styleName":"BtnWbMoney",
                        "height":50,
                        "width":50
                     };
                  }
               })]
            };
         }
      });
      
      private var element:Class = WbAutoBattleCanva_element;
      
      public function WbAutoBattleCanva()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 150;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WbAutoBattleCanva._watcherSetupUtil = param1;
      }
      
      public function set elemUIC(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1662853568elemUIC;
         if(_loc2_ !== param1)
         {
            this._1662853568elemUIC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elemUIC",_loc2_,param1));
         }
      }
      
      public function set onlineNum(param1:Label) : void
      {
         var _loc2_:Object = this._151488461onlineNum;
         if(_loc2_ !== param1)
         {
            this._151488461onlineNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onlineNum",_loc2_,param1));
         }
      }
      
      public function updateWbStrongLabel(param1:int) : void
      {
         if(param1 == 5)
         {
            strongBtn1.enabled = false;
            strongBtn2.enabled = false;
            strongBtn1.toolTip = Language.WBQUTOBATTLECANVA_U[3];
            strongBtn2.toolTip = Language.WBQUTOBATTLECANVA_U[3];
         }
         else
         {
            buffLevel = param1;
            strongBtn1.toolTip = Language.WBQUTOBATTLECANVA_U[7].replace("{type}","Vàng").replace("{num}",WB_STRONG_COST[param1].gold).replace("{add}",WB_STRONG_LEVEL[param1]);
            strongBtn2.toolTip = Language.WBQUTOBATTLECANVA_U[7].replace("{type}","Bạc").replace("{num}",WB_STRONG_COST[param1].money).replace("{add}",WB_STRONG_LEVEL[param1]) + Language.WBQUTOBATTLECANVA_U[8].replace("{r}",WB_STRONG_COST[param1].r);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get strongBtn1() : Button
      {
         return this._543550324strongBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get strongBtn2() : Button
      {
         return this._543550323strongBtn2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WbAutoBattleCanva = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WbAutoBattleCanva_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_WbAutoBattleCanvaWatcherSetupUtil");
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
      
      public function __wbAuto_change(param1:Event) : void
      {
         clickAutoBattle();
      }
      
      private function _WbAutoBattleCanva_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WBQUTOBATTLECANVA_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            wbAuto.label = param1;
         },"wbAuto.label");
         result[0] = binding;
         return result;
      }
      
      public function updateWbOnlineNum(param1:int) : void
      {
         onlineNum.text = Language.WBQUTOBATTLECANVA_U[10] + param1;
      }
      
      private function removeTimer() : void
      {
         if(wbTimer)
         {
            wbTimer.removeEventListener(TimerEvent.TIMER,timerRepeat);
            wbTimer.stop();
         }
      }
      
      public function changeBossHp(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 < hpBer)
         {
            hpNow = param1;
         }
         var _loc2_:Number = Math.round(param1);
         bossHpLabel.text = _loc2_ + "/" + WB_BOSS_HP;
         var _loc3_:int = Math.round((WB_BOSS_HP - _loc2_) * 94 / WB_BOSS_HP) + 6;
         if(!mc)
         {
            mc = new (element as Class)();
            elemUIC.addChild(mc);
         }
         mc.gotoAndStop(_loc3_);
      }
      
      public function set strongBtn1(param1:Button) : void
      {
         var _loc2_:Object = this._543550324strongBtn1;
         if(_loc2_ !== param1)
         {
            this._543550324strongBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strongBtn1",_loc2_,param1));
         }
      }
      
      public function getWbAuto() : Boolean
      {
         return wbAuto.selected;
      }
      
      public function set strongBtn2(param1:Button) : void
      {
         var _loc2_:Object = this._543550323strongBtn2;
         if(_loc2_ !== param1)
         {
            this._543550323strongBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strongBtn2",_loc2_,param1));
         }
      }
      
      public function strongBattle(param1:int) : void
      {
         var tf:IUITextField;
         var _alert:Alert = null;
         var type:int = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("wbStrongBattle",null,type);
            }
         };
         var msg:String = "";
         var htmlMsg:String = "";
         if(type == 1)
         {
            htmlMsg = Language.WBQUTOBATTLECANVA_U[2].replace("{gold}",WB_STRONG_COST[buffLevel].gold);
         }
         else
         {
            htmlMsg = Language.WBQUTOBATTLECANVA_U[5].replace("{money}",WB_STRONG_COST[buffLevel].money);
         }
         msg = htmlMsg.replace(/<font(.*?)>/g,"");
         msg = msg.replace(/<\/font>/g,"");
         msg = msg.replace(/<b>/g,"");
         msg = msg.replace(/<\/b>/g,"");
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlMsg;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastTimeLabel() : Label
      {
         return this._1775826383lastTimeLabel;
      }
      
      public function set wbAuto(param1:CheckBox) : void
      {
         var _loc2_:Object = this._795540710wbAuto;
         if(_loc2_ !== param1)
         {
            this._795540710wbAuto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wbAuto",_loc2_,param1));
         }
      }
      
      private function _WbAutoBattleCanva_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WBQUTOBATTLECANVA_U[0];
      }
      
      public function __strongBtn2_click(param1:MouseEvent) : void
      {
         strongBattle(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get bossHpLabel() : Label
      {
         return this._729448801bossHpLabel;
      }
      
      private function timerRepeat(param1:TimerEvent) : void
      {
         var _loc3_:Date = null;
         var _loc2_:String = "";
         if(ToolKit.isBigThan(lastTimeNum,0))
         {
            lastTimeNum = int(lastTimeNum);
            --lastTimeNum;
            if(lastTimeNum < 0)
            {
               removeTimer();
            }
            if(lastTimeNum >= 86400)
            {
               _loc2_ = Language.QUESTCANVAS_S[9].toString();
               lastTimeLabel.text = _loc2_.replace("{day}",int(lastTimeNum / 86400));
            }
            else
            {
               _loc3_ = new Date(2000,1,1,0,0,0,0);
               _loc3_.setTime(_loc3_.getTime() + Number(lastTimeNum * 1000));
               _loc2_ = Language.QUESTCANVAS_S[11].toString();
               _loc2_ = _loc2_.replace("{hour}",_loc3_.getHours());
               _loc2_ = _loc2_.replace("{minute}",_loc3_.getMinutes());
               lastTimeLabel.text = _loc2_.replace("{second}",_loc3_.getSeconds());
            }
         }
      }
      
      private function showBloodLost(param1:Event) : void
      {
         if(hpBer == 0)
         {
            if(timer.running)
            {
               timer.stop();
               timer.removeEventListener(TimerEvent.TIMER,showBloodLost);
            }
            return;
         }
         bloodLost = hpBer - hpNow;
         if(bloodLost > 0)
         {
            _scrollText2.show(Math.round(bloodLost).toString(),16711680,32,2,40);
            hpBer = hpNow;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get elemUIC() : UIComponent
      {
         return this._1662853568elemUIC;
      }
      
      [Bindable(event="propertyChange")]
      public function get onlineNum() : Label
      {
         return this._151488461onlineNum;
      }
      
      public function initView(param1:Number, param2:Boolean, param3:Number, param4:Number, param5:int, param6:int) : void
      {
         var _loc8_:Loader10 = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         WB_BOSS_HP = param4;
         wbAuto.selected = param2;
         clickAutoBattle();
         if(param3 < 0)
         {
            param3 = 0;
         }
         param3 = Math.round(param3);
         bossHpLabel.text = param3 + "/" + WB_BOSS_HP;
         hpBer = param3;
         hpNow = param3;
         var _loc7_:int = Math.round((WB_BOSS_HP - param3) * 94 / WB_BOSS_HP) + 6;
         if(!mc)
         {
            mc = new (element as Class)();
            elemUIC.addChild(mc);
         }
         mc.gotoAndStop(_loc7_);
         if(!_scrollText2)
         {
            _scrollText2 = new ScrollText();
            elemUIC.addChild(_scrollText2);
            _scrollText2.x = 440;
            _scrollText2.y = -60;
            bloodLost = 0;
         }
         if(timer.running)
         {
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,showBloodLost);
         }
         timer.addEventListener(TimerEvent.TIMER,showBloodLost);
         timer.start();
         removeTimer();
         if(param1 > 0)
         {
            lastTimeNum = param1;
            wbTimer = new Timer(1000,int(param1));
            wbTimer.addEventListener(TimerEvent.TIMER,timerRepeat);
            wbTimer.start();
            lastTimeLabel.visible = true;
            lastTimeLabel.includeInLayout = true;
            this.visible = true;
            if(param5 == 5)
            {
               strongBtn1.enabled = false;
               strongBtn2.enabled = false;
               strongBtn1.toolTip = Language.WBQUTOBATTLECANVA_U[3];
               strongBtn2.toolTip = Language.WBQUTOBATTLECANVA_U[3];
            }
            else
            {
               buffLevel = param5;
               strongBtn1.toolTip = Language.WBQUTOBATTLECANVA_U[7].replace("{type}","Vàng").replace("{num}",WB_STRONG_COST[param5].gold).replace("{add}",WB_STRONG_LEVEL[param5]);
               strongBtn2.toolTip = Language.WBQUTOBATTLECANVA_U[7].replace("{type}","Bạc").replace("{num}",WB_STRONG_COST[param5].money).replace("{add}",WB_STRONG_LEVEL[param5]) + Language.WBQUTOBATTLECANVA_U[8].replace("{r}",WB_STRONG_COST[param5].r);
            }
            buffLevel = param5;
            onlineNum.text = Language.WBQUTOBATTLECANVA_U[10] + param6;
            this.visible = true;
            if(!initFlag)
            {
               _loc8_ = new Loader10();
               _loc9_ = ResManager.getResUrlNoHash(2060100100028);
               _loc10_ = ResManager.hash(_loc9_ + "_NEW.swf");
               _loc8_.load(new URLRequest(_loc10_));
               initFlag = true;
            }
         }
         else
         {
            this.visible = false;
         }
      }
      
      public function set bossHpLabel(param1:Label) : void
      {
         var _loc2_:Object = this._729448801bossHpLabel;
         if(_loc2_ !== param1)
         {
            this._729448801bossHpLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossHpLabel",_loc2_,param1));
         }
      }
      
      public function set lastTimeLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1775826383lastTimeLabel;
         if(_loc2_ !== param1)
         {
            this._1775826383lastTimeLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastTimeLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wbAuto() : CheckBox
      {
         return this._795540710wbAuto;
      }
      
      public function clickAutoBattle() : void
      {
         if(wbAuto.selected)
         {
            _core.remote.call("wbAutoBattle",null,_core.player.id,true);
         }
         else
         {
            _core.remote.call("wbAutoBattle",null,_core.player.id,false);
         }
      }
      
      public function __strongBtn1_click(param1:MouseEvent) : void
      {
         strongBattle(1);
      }
   }
}

