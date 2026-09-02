package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.ReplayListDetail;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.Menu;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FazendaLogPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3586r4:ReplayListDetail;
      
      private var _3034453btn1:BasicGlowButton;
      
      private var myMenu:Menu;
      
      private var _replayLists:Object = {};
      
      private var _3585r3:ReplayListDetail;
      
      private var _3589r7:ReplayListDetail;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _logStrArr:ArrayQueue = new ArrayQueue(30);
      
      private var _3584r2:ReplayListDetail;
      
      private var _114581tab:ViewStack;
      
      private var _3588r6:ReplayListDetail;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _3591r9:ReplayListDetail;
      
      private var _3034452btn0:BasicGlowButton;
      
      private var firstTimeFlag:Array = [true,true];
      
      private var _107332log:LinkTextArea;
      
      private var _3583r1:ReplayListDetail;
      
      private var _3587r5:ReplayListDetail;
      
      private var formatter:DateFormatter = new DateFormatter();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3590r8:ReplayListDetail;
      
      mx_internal var _bindings:Array = [];
      
      public var _FazendaLogPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3582r0:ReplayListDetail;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":350,
               "height":440,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FazendaLogPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":40,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn0",
                           "events":{"click":"__btn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn1",
                           "events":{"click":"__btn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"HorizontalTab"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tab",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":60,
                        "width":340,
                        "height":370,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":340,
                                 "height":370,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":LinkTextArea,
                                    "id":"log",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0.3;
                                       this.backgroundColor = 0;
                                       this.borderStyle = "none";
                                       this.color = 16774324;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":5,
                                          "width":330,
                                          "height":355,
                                          "mouseEnabled":false,
                                          "editable":false,
                                          "enabled":true,
                                          "selectable":false
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
                                 "x":0,
                                 "y":0,
                                 "width":340,
                                 "height":370,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":340,
                                          "height":370,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ReplayListDetail,
                                             "id":"r9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
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
               })]
            };
         }
      });
      
      public function FazendaLogPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 350;
         this.height = 440;
         this.addEventListener("creationComplete",___FazendaLogPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FazendaLogPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get r2() : ReplayListDetail
      {
         return this._3584r2;
      }
      
      public function onSaveReplay(param1:Object) : void
      {
         _replayLists[param1.id] = param1;
         onGetReplayList(_replayLists);
      }
      
      public function set r4(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3586r4;
         if(_loc2_ !== param1)
         {
            this._3586r4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r7() : ReplayListDetail
      {
         return this._3589r7;
      }
      
      public function set r5(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3587r5;
         if(_loc2_ !== param1)
         {
            this._3587r5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r5",_loc2_,param1));
         }
      }
      
      public function set r2(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3584r2;
         if(_loc2_ !== param1)
         {
            this._3584r2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r2",_loc2_,param1));
         }
      }
      
      public function set r6(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3588r6;
         if(_loc2_ !== param1)
         {
            this._3588r6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r6",_loc2_,param1));
         }
      }
      
      public function set r3(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3585r3;
         if(_loc2_ !== param1)
         {
            this._3585r3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r6() : ReplayListDetail
      {
         return this._3588r6;
      }
      
      public function set r8(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3590r8;
         if(_loc2_ !== param1)
         {
            this._3590r8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r8",_loc2_,param1));
         }
      }
      
      public function set r1(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3583r1;
         if(_loc2_ !== param1)
         {
            this._3583r1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r1",_loc2_,param1));
         }
      }
      
      public function set r9(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3591r9;
         if(_loc2_ !== param1)
         {
            this._3591r9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r9",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get r4() : ReplayListDetail
      {
         return this._3586r4;
      }
      
      [Bindable(event="propertyChange")]
      public function get r5() : ReplayListDetail
      {
         return this._3587r5;
      }
      
      public function set r0(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3582r0;
         if(_loc2_ !== param1)
         {
            this._3582r0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r8() : ReplayListDetail
      {
         return this._3590r8;
      }
      
      [Bindable(event="propertyChange")]
      public function get r9() : ReplayListDetail
      {
         return this._3591r9;
      }
      
      public function addOneLog(param1:Object) : void
      {
         if(!param1.logTime)
         {
            param1.logTime = new Date().getTime();
         }
         var _loc2_:String = logObjectToString(param1);
         _logStrArr.push(_loc2_);
         if(visible)
         {
            log.htmlText = _logStrArr.join();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r3() : ReplayListDetail
      {
         return this._3585r3;
      }
      
      [Bindable(event="propertyChange")]
      public function get r0() : ReplayListDetail
      {
         return this._3582r0;
      }
      
      public function set r7(param1:ReplayListDetail) : void
      {
         var _loc2_:Object = this._3589r7;
         if(_loc2_ !== param1)
         {
            this._3589r7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r7",_loc2_,param1));
         }
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      private function logObjectToString(param1:Object) : String
      {
         var _loc3_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc2_:String = formatter.format(new Date(param1.logTime));
         var _loc4_:String = "";
         var _loc5_:String = "";
         if(param1.result == GamePredef.BATTLE_WIN)
         {
            if(param1.guest)
            {
               _loc3_ = Number(param1.cid);
               _loc4_ = Language.PETFIGHT_PANEL_U[10];
            }
            else
            {
               _loc3_ = Number(param1.tid);
               _loc4_ = Language.PETFIGHT_PANEL_U[4];
            }
            _loc5_ = TextUtil.decode("[@PID|" + _loc3_ + "|" + param1.name + "|0|0|0]");
            _loc6_ = "";
            _loc7_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][param1.id];
            if(_loc7_)
            {
               _loc6_ = _loc7_.name;
            }
            _loc4_ = _loc4_.replace("{enemy}",_loc5_).replace("{num}",param1.num).replace("{item}",_loc6_);
         }
         else if(param1.result == GamePredef.BATTLE_LOSE)
         {
            if(param1.guest)
            {
               _loc3_ = Number(param1.cid);
               _loc4_ = Language.PETFIGHT_PANEL_U[12];
            }
            else
            {
               _loc3_ = Number(param1.tid);
               _loc4_ = Language.PETFIGHT_PANEL_U[6];
            }
            _loc5_ = TextUtil.decode("[@PID|" + _loc3_ + "|" + param1.name + "|0|0|0]");
            _loc4_ = _loc4_.replace("{enemy}",_loc5_);
         }
         else
         {
            if(param1.guest)
            {
               _loc3_ = Number(param1.cid);
               _loc4_ = Language.PETFIGHT_PANEL_U[20];
            }
            else
            {
               _loc3_ = Number(param1.tid);
               _loc4_ = Language.PETFIGHT_PANEL_U[19];
            }
            _loc5_ = TextUtil.decode("[@PID|" + _loc3_ + "|" + param1.name + "|0|0|0]");
            _loc4_ = _loc4_.replace("{enemy}",_loc5_);
         }
         if(!param1.noreplay && Boolean(param1.bid))
         {
            _loc4_ += "\n\t\t\t\t\t\t\t\t\t" + String(Language.PETFIGHT_PANEL_U[11]).replace("{bid}",param1.bid);
            _loc4_ = _loc4_ + String(Language.PETFIGHT_PANEL_U[16]).replace("{bid}",param1.bid);
         }
         return _loc2_ + ":" + _loc4_ + "\n";
      }
      
      public function onGetFarmLog(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         if(param1)
         {
            _loc2_ = [];
            _logStrArr.clear();
            for(_loc3_ in param1)
            {
               _loc2_.push(param1[_loc3_]);
            }
            _loc2_ = _loc2_.sortOn("logTime");
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc5_ = _loc2_[_loc4_];
               _loc6_ = logObjectToString(_loc5_);
               _logStrArr.push(_loc6_);
               _loc4_++;
            }
            log.htmlText = _logStrArr.join();
         }
      }
      
      private function menuHide(param1:MenuEvent) : void
      {
         var _loc2_:Menu = Menu(param1.currentTarget);
         _loc2_.removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
         _loc2_.removeEventListener(MenuEvent.MENU_HIDE,menuHide);
      }
      
      [Bindable(event="propertyChange")]
      public function get log() : LinkTextArea
      {
         return this._107332log;
      }
      
      public function reset() : void
      {
         firstTimeFlag = [true,true];
         if(log)
         {
            log.htmlText = "";
         }
         _logStrArr.clear();
         _replayLists = {};
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            if(this["r" + _loc1_])
            {
               this["r" + _loc1_].clear();
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn0() : BasicGlowButton
      {
         return this._3034452btn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : BasicGlowButton
      {
         return this._3034453btn1;
      }
      
      private function initTab(param1:int) : void
      {
         switch(param1)
         {
            case 0:
               if(firstTimeFlag[param1])
               {
                  formatter.formatString = "MM-DD JJ:NN";
                  firstTimeFlag[param1] = false;
                  _core.remote.call("getFarmLog",null);
               }
               else if(_logStrArr.dataUpdated)
               {
                  log.htmlText = _logStrArr.join();
               }
               break;
            case 1:
               if(firstTimeFlag[param1])
               {
                  firstTimeFlag[param1] = false;
                  _core.remote.call("getReplayList",null);
               }
         }
      }
      
      private function changeView(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ <= 1)
         {
            if(param1 == _loc2_)
            {
               this["btn" + _loc2_].selected = true;
            }
            else
            {
               this["btn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
         tab.selectedIndex = param1;
         initTab(param1);
      }
      
      private function outsideKey(param1:String, param2:String) : String
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:String = MD5.hash(param2);
         var _loc4_:* = 0;
         var _loc5_:String = "";
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            if(_loc4_ >= _loc3_.length)
            {
               _loc4_ = 0;
            }
            _loc7_ = Number("0x" + param1.charAt(_loc6_));
            _loc8_ = Number("0x" + _loc3_.charAt(_loc4_++));
            _loc5_ += (_loc7_ ^ _loc8_).toString(16);
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function onGetReplayList(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         if(!initialized)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = [];
            _replayLists = {};
            for(_loc3_ in param1)
            {
               if(param1[_loc3_])
               {
                  _loc2_.push(param1[_loc3_]);
                  _replayLists[_loc3_] = param1[_loc3_];
               }
            }
            _loc2_ = _loc2_.sortOn("timestamp");
            _loc4_ = 0;
            while(_loc4_ < 10)
            {
               if(_loc2_[_loc4_])
               {
                  this["r" + _loc4_].replay = _loc2_[_loc4_];
                  this["r" + _loc4_].visible = true;
               }
               else
               {
                  this["r" + _loc4_].visible = false;
               }
               _loc4_++;
            }
         }
      }
      
      public function set log(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._107332log;
         if(_loc2_ !== param1)
         {
            this._107332log = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"log",_loc2_,param1));
         }
      }
      
      public function ___FazendaLogPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FazendaLogPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FazendaLogPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FazendaLogPanelWatcherSetupUtil");
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
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      private function _FazendaLogPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDA_LOG_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FazendaLogPanel_BasicTitleCanvas1.text = param1;
         },"_FazendaLogPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDA_LOG_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn0.label = param1;
         },"btn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDA_LOG_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[2] = binding;
         return result;
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(param1.label == GamePredef.MENU_DEL_REPLAY)
         {
            _core.remote.call("delReplay",null,param1.item.id);
         }
         else if(param1.label == GamePredef.MENU_COPY_REPLAY)
         {
            _loc2_ = param1.item.id;
            _loc3_ = MD5.hash(Math.floor(Math.random() * 32000).toString());
            _loc4_ = 0;
            _loc5_ = "";
            _loc6_ = 0;
            while(_loc6_ < _loc2_.length)
            {
               if(_loc4_ >= _loc3_.length)
               {
                  _loc4_ = 0;
               }
               _loc5_ += _loc3_.charAt(_loc4_) + (Number("0x" + _loc2_.charAt(_loc6_)) ^ Number("0x" + _loc3_.charAt(_loc4_++))).toString(16);
               _loc6_++;
            }
            _loc5_ = outsideKey(_loc5_,"funcity");
            _loc7_ = GamePredef.BATTLE_REPLAY_URL;
            _loc7_ = _loc7_ + ("&id=" + _loc5_);
            System.setClipboard(_loc7_);
         }
      }
      
      public function set btn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034452btn0;
         if(_loc2_ !== param1)
         {
            this._3034452btn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn0",_loc2_,param1));
         }
      }
      
      public function set btn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function onDelReplay(param1:String) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in _replayLists)
         {
            if(_replayLists[_loc2_].battleId == param1)
            {
               delete _replayLists[_loc2_];
               this.onGetReplayList(_replayLists);
               break;
            }
         }
      }
      
      public function __btn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      private function _FazendaLogPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAZENDA_LOG_PANEL_U[0];
         _loc1_ = Language.FAZENDA_LOG_PANEL_U[1];
         _loc1_ = Language.FAZENDA_LOG_PANEL_U[2];
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = tab ? tab.selectedIndex : 0;
            initTab(_loc2_);
         }
         super.visible = param1;
      }
      
      public function moreAction(param1:String) : void
      {
         var _loc2_:Array = null;
         if(param1 != "")
         {
            _loc2_ = [{
               "label":GamePredef.MENU_DEL_REPLAY,
               "id":param1
            },{
               "label":GamePredef.MENU_COPY_REPLAY,
               "id":param1
            }];
            if(myMenu)
            {
               myMenu.hide();
            }
            myMenu = CustomMenu.createMenu(null,_loc2_);
            myMenu.show(stage.mouseX + 25,stage.mouseY > 390 ? 390 : stage.mouseY);
            myMenu.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
            myMenu.addEventListener(MenuEvent.MENU_HIDE,menuHide);
            return;
         }
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get r1() : ReplayListDetail
      {
         return this._3583r1;
      }
   }
}

