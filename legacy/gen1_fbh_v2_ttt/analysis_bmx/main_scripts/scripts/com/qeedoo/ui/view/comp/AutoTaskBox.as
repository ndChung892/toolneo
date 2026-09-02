package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.BagPanel;
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
   import mx.controls.ComboBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AutoTaskBox extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var timer:Timer;
      
      private var _97823bt1:Button;
      
      public var _AutoTaskBox_Label1:Label;
      
      public var state:int = 0;
      
      private var registed:Boolean = false;
      
      public var tid:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var _97822bt0:Button;
      
      public var _AutoTaskBox_Label3:Label;
      
      public var _diffCombox:Array;
      
      private var _97825bt3:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3560141time:Label;
      
      private var _97824bt2:Button;
      
      private var _99457dif:ComboBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _91052262_left:String = "59:59";
      
      private var _410330704taskName:Label;
      
      private var leftTime:Number = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":222,
               "height":97,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_AutoTaskBox_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"taskName",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_AutoTaskBox_Label3",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":113,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ComboBox,
                  "id":"dif",
                  "events":{"close":"__dif_close"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "y":5,
                        "labelField":"label",
                        "width":65,
                        "editable":false,
                        "rowCount":7
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.backgroundColor = 1190715;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":55,
                        "y":33,
                        "width":100,
                        "height":27,
                        "styleName":"RoundedGradientBorder"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"time",
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
                        "x":55,
                        "y":30,
                        "width":100,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"bt0",
                  "events":{"click":"__bt0_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":66,
                        "height":28,
                        "enabled":true,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"bt1",
                  "events":{"click":"__bt1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-40";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":66,
                        "height":28,
                        "enabled":true,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"bt2",
                  "events":{"click":"__bt2_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "40";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":66,
                        "height":28,
                        "enabled":true,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"bt3",
                  "events":{"click":"__bt3_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":66,
                        "height":28,
                        "enabled":true,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function AutoTaskBox()
      {
         super();
         mx_internal::_document = this;
         this.width = 222;
         this.height = 97;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.styleName = "RoundedGradientBorder";
         this.addEventListener("creationComplete",___AutoTaskBox_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AutoTaskBox._watcherSetupUtil = param1;
      }
      
      private function _AutoTaskBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TASKSWEEPPANEL_U[39];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TASKSWEEPPANEL_U[40];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = _left;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TASKSWEEPPANEL_U[41];
         _loc1_ = Language.TASKSWEEPPANEL_U[42];
         _loc1_ = Language.TASKSWEEPPANEL_U[43];
         _loc1_ = Language.TASKSWEEPPANEL_U[51];
      }
      
      private function stopAuto2(param1:CloseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.detail == Alert.YES)
         {
            _loc2_ = getTid();
            _core.remote.call("autoTaskCancel",null,_loc2_);
         }
      }
      
      public function set dif(param1:ComboBox) : void
      {
         var _loc2_:Object = this._99457dif;
         if(_loc2_ !== param1)
         {
            this._99457dif = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dif",_loc2_,param1));
         }
      }
      
      public function ___AutoTaskBox_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __bt3_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function refreshTimeTxt() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(leftTime >= 3600)
         {
            _loc1_ = Math.floor(leftTime / 3600);
            _loc2_ = Math.floor(leftTime / 60) % 60;
            _loc3_ = leftTime % 60;
         }
         else if(leftTime >= 60)
         {
            _loc1_ = 0;
            _loc2_ = Math.floor(leftTime / 60);
            _loc3_ = leftTime % 60;
         }
         else if(leftTime > 0)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            _loc3_ = leftTime;
         }
         else
         {
            _loc1_ = 0;
            _loc2_ = 0;
            _loc3_ = 0;
         }
         var _loc4_:String = "00";
         var _loc5_:String = "00";
         var _loc6_:String = "00";
         if(_loc1_ > 0)
         {
            _loc4_ = String(_loc1_);
         }
         if(_loc2_ >= 0)
         {
            if(_loc2_ <= 9)
            {
               _loc5_ = "0" + _loc2_;
            }
            else
            {
               _loc5_ = String(_loc2_);
            }
         }
         if(_loc3_ >= 0)
         {
            if(_loc3_ <= 9)
            {
               _loc6_ = "0" + _loc3_;
            }
            else
            {
               _loc6_ = String(_loc3_);
            }
         }
         if(_loc1_ == 0)
         {
            if(_loc3_ == 0 && _loc2_ == 0)
            {
               _left = "00:00";
            }
            else
            {
               _left = _loc5_ + ":" + _loc6_;
            }
         }
         else
         {
            _left = _loc4_ + ":" + _loc5_ + ":" + _loc6_;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AutoTaskBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AutoTaskBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_AutoTaskBoxWatcherSetupUtil");
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
      public function get dif() : ComboBox
      {
         return this._99457dif;
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
      
      private function init() : void
      {
         _diffCombox = [{
            "label":Language.TASKSWEEPPANEL_U[44],
            "data":1
         },{
            "label":Language.TASKSWEEPPANEL_U[45],
            "data":2
         },{
            "label":Language.TASKSWEEPPANEL_U[46],
            "data":3
         }];
         this.dif.dataProvider = _diffCombox;
      }
      
      public function __bt1_click(param1:MouseEvent) : void
      {
         stopAuto();
      }
      
      private function startAuto2(param1:CloseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.detail == Alert.YES)
         {
            _loc2_ = getTid();
            _core.remote.call("autoTaskStart",null,_loc2_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bt0() : Button
      {
         return this._97822bt0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt1() : Button
      {
         return this._97823bt1;
      }
      
      private function getAward() : void
      {
         var _loc1_:int = getTid();
         _core.remote.call("autoTaskGetAward",null,_loc1_);
      }
      
      public function setData(param1:Object, param2:Object, param3:Number) : void
      {
         var _loc6_:int = 0;
         taskName.text = param1["label"];
         tid = param1["data"];
         dif.selectedIndex = 0;
         var _loc4_:int = 0;
         if(tid == 4 || tid == 7 || tid == 10 || tid == 13)
         {
            _loc4_ = 2;
         }
         var _loc5_:* = 0;
         _loc5_ = _loc4_;
         while(_loc5_ >= 0)
         {
            _loc6_ = tid + _loc5_;
            if(Boolean(param2["data"]) && int(param2["data"]["id"]) == _loc6_)
            {
               state = 1;
               bt1.visible = true;
               bt2.visible = true;
               dif.selectedIndex = _loc5_;
               break;
            }
            if(Boolean(param2["queue"]) && Boolean(param2["queue"][_loc6_]))
            {
               state = 2;
               bt1.visible = true;
               bt2.visible = true;
               dif.selectedIndex = _loc5_;
               break;
            }
            if(Boolean(param2["finish"]) && Boolean(param2["finish"][_loc6_]))
            {
               state = 3;
               bt3.visible = true;
               dif.selectedIndex = _loc5_;
               break;
            }
            state = 0;
            _loc5_--;
         }
         if(state == 0)
         {
            bt0.visible = true;
            dif.selectedIndex = 0;
         }
         refreshTime(param2,param3);
         if((tid == 4 || tid == 7 || tid == 10 || tid == 13) && state == 0)
         {
            dif.enabled = true;
         }
         else
         {
            dif.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bt2() : Button
      {
         return this._97824bt2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt3() : Button
      {
         return this._97825bt3;
      }
      
      private function startAuto() : void
      {
         var _loc1_:int = int(GamePredef.TASK[getTid()].money);
         var _loc2_:String = Language.TASKSWEEPPANEL_U[54].toString().replace("{num}",_loc1_);
         Alert.show(_loc2_,"",Alert.YES | Alert.NO,null,startAuto2);
      }
      
      private function closeHandler(param1:Event) : void
      {
         if(state != 0)
         {
            return;
         }
         refreshTime({},0);
      }
      
      private function _AutoTaskBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoTaskBox_Label1.text = param1;
         },"_AutoTaskBox_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _AutoTaskBox_Label1.filters = param1;
         },"_AutoTaskBox_Label1.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            taskName.filters = param1;
         },"taskName.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoTaskBox_Label3.text = param1;
         },"_AutoTaskBox_Label3.text");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _AutoTaskBox_Label3.filters = param1;
         },"_AutoTaskBox_Label3.filters");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _left;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            time.text = param1;
         },"time.text");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            time.filters = param1;
         },"time.filters");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt0.label = param1;
         },"bt0.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt1.label = param1;
         },"bt1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt2.label = param1;
         },"bt2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt3.label = param1;
         },"bt3.label");
         result[10] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskName() : Label
      {
         return this._410330704taskName;
      }
      
      public function set bt0(param1:Button) : void
      {
         var _loc2_:Object = this._97822bt0;
         if(_loc2_ !== param1)
         {
            this._97822bt0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt0",_loc2_,param1));
         }
      }
      
      public function set bt1(param1:Button) : void
      {
         var _loc2_:Object = this._97823bt1;
         if(_loc2_ !== param1)
         {
            this._97823bt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt1",_loc2_,param1));
         }
      }
      
      public function set bt3(param1:Button) : void
      {
         var _loc2_:Object = this._97825bt3;
         if(_loc2_ !== param1)
         {
            this._97825bt3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt3",_loc2_,param1));
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         if(state != 1)
         {
            return;
         }
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
      
      public function __bt0_click(param1:MouseEvent) : void
      {
         startAuto();
      }
      
      private function refreshTime(param1:Object, param2:Number) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc3_:Number = 0;
         if(state == 0)
         {
            _loc3_ = GamePredef.TASK[getTid()].time * GamePredef.TASK[getTid()].battleCount / 1000;
         }
         else if(state == 1)
         {
            _loc4_ = param1["data"];
            _loc5_ = Number(param1["data"]["st"]);
            _loc3_ = (GamePredef.TASK[getTid()].time * GamePredef.TASK[getTid()].battleCount - (param2 - _loc5_)) / 1000;
            leftTime = _loc3_;
            if(!timer)
            {
               timer = new Timer(1000);
            }
            if(!registed)
            {
               registed = true;
               timer.addEventListener(TimerEvent.TIMER,timerHandler);
            }
            if(!timer.running)
            {
               timer.start();
            }
         }
         else
         {
            if(state == 2)
            {
               _left = Language.TASKSWEEPPANEL_U[49];
               return;
            }
            if(state == 3)
            {
               _left = Language.TASKSWEEPPANEL_U[50];
               return;
            }
         }
         refreshTimeTxt();
      }
      
      public function clean() : void
      {
         taskName.text = "";
         dif.enabled = false;
         _left = "00:00";
         leftTime = 0;
         bt0.visible = false;
         bt1.visible = false;
         bt2.visible = false;
         bt3.visible = false;
         if(timer)
         {
            timer.stop();
         }
      }
      
      public function set bt2(param1:Button) : void
      {
         var _loc2_:Object = this._97824bt2;
         if(_loc2_ !== param1)
         {
            this._97824bt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt2",_loc2_,param1));
         }
      }
      
      public function __bt2_click(param1:MouseEvent) : void
      {
         completeNow();
      }
      
      private function stopAuto() : void
      {
         var _loc1_:String = Language.TASKSWEEPPANEL_U[52];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,stopAuto2);
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
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         var _loc2_:BagPanel = null;
         var _loc3_:Boolean = false;
         if(param1)
         {
            _loc2_ = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            _loc3_ = _loc2_.goldLockFlag;
            if(_loc3_ != false && Boolean(_loc2_))
            {
               _loc2_.goldLockFlag = false;
            }
         }
      }
      
      public function getTid() : int
      {
         return tid + dif.selectedIndex;
      }
      
      public function __dif_close(param1:DropdownEvent) : void
      {
         closeHandler(param1);
      }
      
      private function completeNow() : void
      {
         var _loc1_:int = getTid();
         _core.remote.call("autoTaskCompleteByGold",new Responder(completeNow2),_loc1_,true);
      }
      
      private function completeByTime() : void
      {
         var _loc1_:int = getTid();
         _core.remote.call("autoTaskComplete",null,_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : Label
      {
         return this._3560141time;
      }
      
      [Bindable(event="propertyChange")]
      private function get _left() : String
      {
         return this._91052262_left;
      }
      
      public function set taskName(param1:Label) : void
      {
         var _loc2_:Object = this._410330704taskName;
         if(_loc2_ !== param1)
         {
            this._410330704taskName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskName",_loc2_,param1));
         }
      }
      
      private function completeNow2(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = Language.TASKSWEEPPANEL_U[53].toString().replace("{num}",param1);
         Alert.show(_loc2_,"",Alert.YES | Alert.NO,null,completeNow3);
      }
      
      private function completeNow3(param1:CloseEvent) : void
      {
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var ttid:int = 0;
         var gfunc:Function = null;
         var event:CloseEvent = param1;
         if(event.detail == Alert.YES)
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            goldLockFlag = bagPanel.goldLockFlag;
            if(goldLockFlag || !bagPanel)
            {
               _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
               gfunc = function(param1:String):void
               {
                  _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
               return;
            }
            ttid = getTid();
            _core.remote.call("autoTaskCompleteByGold",null,ttid,false);
         }
      }
   }
}

