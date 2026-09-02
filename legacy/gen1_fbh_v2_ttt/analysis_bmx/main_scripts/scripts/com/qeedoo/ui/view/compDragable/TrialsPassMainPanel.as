package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.TrialsFloorCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TrialsPassMainPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _101081fa4:ItemSlot;
      
      private var _1281570377faward:BasicDelayButton;
      
      private var _kt:Object = new Object();
      
      private var _1254502066gaBtn0:BasicDelayButton;
      
      private var _101078fa1:ItemSlot;
      
      private var _helpAlert:Alert;
      
      private var _2047892671trialsBtn02:TrialsFloorCanvas;
      
      private var _m:Number = 5;
      
      private var _59498092lfLable:Label;
      
      private var _2047892668trialsBtn05:TrialsFloorCanvas;
      
      private var _ut:String = "0|0|0";
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TrialsPassMainPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _nf:Number = 0;
      
      private var _101082fa5:ItemSlot;
      
      private var _1712711974floorInfo:TextArea;
      
      private var _101079fa2:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      public var _TrialsPassMainPanel_Label2:Label;
      
      public var _TrialsPassMainPanel_Label3:Label;
      
      private var _2047892672trialsBtn01:TrialsFloorCanvas;
      
      private var _firstAwardArr:Array = [[{
         "tid":29,
         "iid":4725,
         "n":1
      },{
         "tid":29,
         "iid":4591,
         "n":1
      },{
         "tid":29,
         "iid":4674,
         "n":4
      },{
         "tid":29,
         "iid":4735,
         "n":1
      }],[{
         "tid":29,
         "iid":4726,
         "n":1
      },{
         "tid":29,
         "iid":4591,
         "n":2
      },{
         "tid":29,
         "iid":4674,
         "n":5
      },{
         "tid":29,
         "iid":4736,
         "n":1
      }],[{
         "tid":29,
         "iid":4727,
         "n":1
      },{
         "tid":29,
         "iid":4592,
         "n":1
      },{
         "tid":29,
         "iid":4674,
         "n":8
      },{
         "tid":29,
         "iid":4737,
         "n":1
      }],[{
         "tid":29,
         "iid":4728,
         "n":1
      },{
         "tid":29,
         "iid":4592,
         "n":1
      },{
         "tid":29,
         "iid":4674,
         "n":9
      },{
         "tid":29,
         "iid":4738,
         "n":1
      }],[{
         "tid":29,
         "iid":4729,
         "n":1
      },{
         "tid":29,
         "iid":4592,
         "n":2
      },{
         "tid":29,
         "iid":4674,
         "n":10
      },{
         "tid":29,
         "iid":4739,
         "n":1
      }]];
      
      mx_internal var _watchers:Array = [];
      
      private var _2047892669trialsBtn04:TrialsFloorCanvas;
      
      private var _101080fa3:ItemSlot;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _loadCid:Number = 0;
      
      private var _updataForeachKey:Object = {
         "kt":1,
         "a":1,
         "sc":1
      };
      
      public var _TrialsPassMainPanel_LinkButton2:LinkButton;
      
      private var _updataFunc:Object = {
         1:"onTrialsTimeUpdate",
         2:"onTrialsTimeUpdate",
         6:"onTrialsFirstAwardStateUpdate",
         7:"onTrialsAwardStateUpdate",
         8:"onTrialsScordUpdate"
      };
      
      public var _TrialsPassMainPanel_LinkButton1:LinkButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _lastHitFloor:Number = 1;
      
      private var _at:String = "0|0|0";
      
      private var _2047892670trialsBtn03:TrialsFloorCanvas;
      
      private var _updataKey:Array = ["t","m","n","nf","ut","kt","a","at","sc"];
      
      private var _a:Object = new Object();
      
      private var _sc:Object = new Object();
      
      mx_internal var _bindings:Array = [];
      
      private var _t:Number = 0;
      
      private var _n:Number = 0;
      
      public var _TrialsPassMainPanel_Image1:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":620,
               "height":420,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TrialsPassMainPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "63";
                     this.left = "13";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":593,
                        "height":343,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_TrialsPassMainPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":593,
                                 "height":343,
                                 "x":0,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"faward",
                           "events":{"click":"__faward_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":3000,
                                 "x":446,
                                 "y":221,
                                 "height":21,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TrialsFloorCanvas,
                           "id":"trialsBtn01",
                           "events":{"click":"__trialsBtn01_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":163,
                                 "height":75,
                                 "x":12,
                                 "y":17,
                                 "visible":true,
                                 "findex":1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TrialsFloorCanvas,
                           "id":"trialsBtn02",
                           "events":{"click":"__trialsBtn02_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":163,
                                 "height":75,
                                 "x":193.95,
                                 "y":64,
                                 "visible":true,
                                 "findex":2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TrialsFloorCanvas,
                           "id":"trialsBtn03",
                           "events":{"click":"__trialsBtn03_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":163,
                                 "height":75,
                                 "x":27.95,
                                 "y":121,
                                 "visible":true,
                                 "findex":3
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TrialsFloorCanvas,
                           "id":"trialsBtn04",
                           "events":{"click":"__trialsBtn04_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":163,
                                 "height":75,
                                 "x":195.95,
                                 "y":176,
                                 "visible":true,
                                 "findex":4
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TrialsFloorCanvas,
                           "id":"trialsBtn05",
                           "events":{"click":"__trialsBtn05_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":163,
                                 "height":75,
                                 "x":12,
                                 "y":222,
                                 "visible":true,
                                 "findex":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___TrialsPassMainPanel_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":326.95,
                                 "y":17,
                                 "width":35,
                                 "height":35,
                                 "styleName":"trialsBtnAward"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"fa1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":388,
                                 "y":179,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"fa2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":428,
                                 "y":179,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"fa3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":466,
                                 "y":179,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"fa4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":505,
                                 "y":179,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"fa5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":544,
                                 "y":179,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"gaBtn0",
                           "events":{"click":"__gaBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":3000,
                                 "width":104,
                                 "height":40,
                                 "x":437.95,
                                 "y":290,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lfLable",
                           "stylesFactory":function():void
                           {
                              this.color = 16187149;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":392,
                                 "y":268,
                                 "width":195
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_TrialsPassMainPanel_Label2",
                           "stylesFactory":function():void
                           {
                              this.color = 16187149;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":395,
                                 "y":20,
                                 "width":195
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_TrialsPassMainPanel_Label3",
                           "stylesFactory":function():void
                           {
                              this.color = 16187149;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":395,
                                 "y":143,
                                 "width":195
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"floorInfo",
                           "stylesFactory":function():void
                           {
                              this.borderThickness = 0;
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":388,
                                 "y":42,
                                 "width":195,
                                 "height":95,
                                 "wordWrap":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_TrialsPassMainPanel_LinkButton1",
                           "events":{"click":"___TrialsPassMainPanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.textDecoration = "underline";
                              this.color = 16776960;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":270.95,
                                 "y":314,
                                 "height":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_TrialsPassMainPanel_LinkButton2",
                           "events":{"click":"___TrialsPassMainPanel_LinkButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.textDecoration = "underline";
                              this.color = 16776960;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":270.95,
                                 "y":284,
                                 "height":17
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.top = "43";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "percentWidth":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "labelPlacement":"bottom",
                                 "width":77
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function TrialsPassMainPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 620;
         this.height = 420;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TrialsPassMainPanel._watcherSetupUtil = param1;
      }
      
      public function onUpdateTrialsCharData(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         if(initialized && Boolean(param1))
         {
            _loc2_ = 0;
            while(_loc2_ < _updataKey.length)
            {
               if(param1[_updataKey[_loc2_]])
               {
                  if(!_updataForeachKey[_updataKey[_loc2_]])
                  {
                     this["_" + _updataKey[_loc2_]] = param1[_updataKey[_loc2_]];
                  }
                  else
                  {
                     for(_loc3_ in param1[_updataKey[_loc2_]])
                     {
                        this["_" + _updataKey[_loc2_]][_loc3_] = param1[_updataKey[_loc2_]][_loc3_];
                     }
                  }
                  if(_updataFunc[_loc2_])
                  {
                     this[_updataFunc[_loc2_]]();
                  }
               }
               _loc2_++;
            }
         }
      }
      
      private function trialsAssister() : void
      {
         _core.remote.call("trialsTimerAward",new Responder(onTrialsTimerAward));
      }
      
      private function trialsCharDataInit(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(param1)
         {
            _m = param1.m;
            _n = param1.n;
            lfLable.text = Language.TRIALS_MAIN_PANEL[3].replace("{num}",Number(ToolKit.minus(_m,_n)));
            _t = param1.t;
            _kt = param1.kt;
            _a = param1.a;
            _at = param1.at;
            _nf = param1.nf;
            _sc = param1.sc;
            if(!_kt[_lastHitFloor])
            {
               _lastHitFloor = 1;
            }
            _loc2_ = 1;
            while(_loc2_ <= 5)
            {
               _loc3_ = _sc[_loc2_] ? Number(_sc[_loc2_]) : 1;
               this["trialsBtn0" + _loc2_].scord = _loc3_;
               this["trialsBtn0" + _loc2_].fiterBtn = false;
               if(_loc2_ != 1 && !_kt[_loc2_] && !_kt[ToolKit.minus(_loc2_,1)])
               {
                  this["trialsBtn0" + _loc2_].fiterBtn = true;
               }
               this["trialsBtn0" + _loc2_].setStarLev(_loc3_);
               _loc2_++;
            }
            gaBtn0.enabled = true;
            if(Boolean(this["trialsBtn0" + _lastHitFloor]) && Boolean(this["trialsBtn0" + _lastHitFloor].fiterBtn))
            {
               gaBtn0.enabled = false;
            }
         }
      }
      
      private function onTrialsAwardStateUpdate() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_TRIALS_AWARD);
         if(Boolean(_loc1_) && Boolean(_loc1_.visible))
         {
            trialsAwardPanelVisible();
         }
      }
      
      public function onTrialsTimerAward(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(initialized)
         {
            _loc2_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
            if(Boolean(_loc2_) && Boolean(param1))
            {
               if(ToolKit.isBigThan(param1.num,1000))
               {
                  _loc2_.setTrialsInfoVisible(param1.num,param1.life,true);
                  return;
               }
            }
            _loc2_.setTrialsInfoVisible(0,-1,false);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get floorInfo() : TextArea
      {
         return this._1712711974floorInfo;
      }
      
      public function ___TrialsPassMainPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         trialsInfo();
      }
      
      private function trialsAwardPanelVisible() : void
      {
         var _loc1_:Number = new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet;
         var _loc2_:String = TimeUtil.getThisMonDay(_loc1_);
         var _loc3_:Number = 0;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 1;
         while(_loc6_ <= 5)
         {
            if(Boolean(_kt[_loc6_]) && _kt[_loc6_] == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            if(!_loc4_ && _at == _loc2_)
            {
               _loc4_ = true;
            }
            if(!_loc4_)
            {
               _loc5_ = true;
            }
            _loc6_++;
         }
         var _loc7_:* = _core.view.getUI(ViewManager.PANEL_TRIALS_AWARD);
         if(_loc7_)
         {
            _loc7_.trialsAwardPanelVisible(_loc3_,_loc4_,_loc5_);
         }
      }
      
      public function __trialsBtn02_click(param1:MouseEvent) : void
      {
         trialsSelect(2);
      }
      
      public function __gaBtn0_click(param1:MouseEvent) : void
      {
         trialsStart();
      }
      
      [Bindable(event="propertyChange")]
      public function get trialsBtn01() : TrialsFloorCanvas
      {
         return this._2047892672trialsBtn01;
      }
      
      [Bindable(event="propertyChange")]
      public function get trialsBtn02() : TrialsFloorCanvas
      {
         return this._2047892671trialsBtn02;
      }
      
      [Bindable(event="propertyChange")]
      public function get trialsBtn03() : TrialsFloorCanvas
      {
         return this._2047892670trialsBtn03;
      }
      
      [Bindable(event="propertyChange")]
      public function get trialsBtn04() : TrialsFloorCanvas
      {
         return this._2047892669trialsBtn04;
      }
      
      private function trialsStart() : void
      {
         if(_lastHitFloor != 1 && !_kt[ToolKit.minus(_lastHitFloor,1)])
         {
            _core.sysMsg(Language.TRIALS_MAIN_PANEL[4]);
            return;
         }
         _core.remote.call("trialsStart",null,_lastHitFloor);
      }
      
      [Bindable(event="propertyChange")]
      public function get trialsBtn05() : TrialsFloorCanvas
      {
         return this._2047892668trialsBtn05;
      }
      
      private function onTrialsScordUpdate() : void
      {
         var _loc1_:* = undefined;
         if(this["trialsBtn0" + _nf])
         {
            if(_kt[_nf])
            {
               this["trialsBtn0" + _nf].fiterBtn = false;
               if(_nf == _lastHitFloor)
               {
                  gaBtn0.enabled = true;
               }
            }
            else
            {
               this["trialsBtn0" + _nf].fiterBtn = true;
            }
            this["trialsBtn0" + _nf].setStarLev(_sc[_nf]);
            if(_nf == _lastHitFloor)
            {
               faward.label = Language.TRIALS_MAIN_PANEL[6];
               if(Boolean(_kt[_lastHitFloor]) && !_a[_lastHitFloor])
               {
                  faward.enabled = true;
               }
               else
               {
                  faward.enabled = false;
                  if(_a[_lastHitFloor])
                  {
                     faward.label = Language.TRIALS_MAIN_PANEL[9];
                  }
               }
            }
            _loc1_ = _core.view.getUI(ViewManager.PANEL_TRIALS_AWARD);
            if(Boolean(_loc1_) && Boolean(_loc1_.visible))
            {
               trialsAwardPanelVisible();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn0() : BasicDelayButton
      {
         return this._1254502066gaBtn0;
      }
      
      public function set bangBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324756bangBtn0;
         if(_loc2_ !== param1)
         {
            this._1863324756bangBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn0",_loc2_,param1));
         }
      }
      
      public function __trialsBtn03_click(param1:MouseEvent) : void
      {
         trialsSelect(3);
      }
      
      private function trialsFirstAwardGet() : void
      {
         _core.remote.call("trialsFirstKillAwardTake",null,_lastHitFloor);
      }
      
      public function ___TrialsPassMainPanel_LinkButton2_click(param1:MouseEvent) : void
      {
         trialsAssister();
      }
      
      private function onTrialsFirstAwardStateUpdate() : void
      {
         if(_nf == _lastHitFloor)
         {
            if(_a[_nf])
            {
               faward.enabled = false;
               faward.label = Language.TRIALS_MAIN_PANEL[9];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lfLable() : Label
      {
         return this._59498092lfLable;
      }
      
      private function trialsSelect(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc5_:* = undefined;
         _loc2_ = 1;
         while(_loc2_ <= 5)
         {
            this["trialsBtn0" + _loc2_].cancelSelectFloor();
            _loc2_++;
         }
         this["trialsBtn0" + param1].selectFloor();
         _lastHitFloor = param1;
         var _loc3_:Number = ToolKit.add(param1,14);
         floorInfo.text = Language.TRIALS_MAIN_PANEL[_loc3_];
         var _loc4_:Array = _firstAwardArr[ToolKit.minus(_lastHitFloor,1)];
         _loc2_ = 0;
         while(_loc2_ < _loc4_.length)
         {
            _loc5_ = _core.data.gameData[_loc4_[_loc2_].tid][_loc4_[_loc2_].iid];
            this["fa" + ToolKit.add(_loc2_,1)].slotData = _loc5_;
            this["fa" + ToolKit.add(_loc2_,1)].type = _loc4_[_loc2_].tid;
            this["fa" + ToolKit.add(_loc2_,1)].giid = _loc4_[_loc2_].iid;
            this["fa" + ToolKit.add(_loc2_,1)].stackNum = _loc4_[_loc2_].n;
            _loc2_++;
         }
         faward.label = Language.TRIALS_MAIN_PANEL[6];
         if(Boolean(_lastHitFloor == 1) || Boolean(_kt[_lastHitFloor]) || Boolean(_kt[ToolKit.minus(_lastHitFloor,1)]))
         {
            gaBtn0.enabled = true;
         }
         else
         {
            gaBtn0.enabled = false;
         }
         if(Boolean(_kt[_lastHitFloor]) && !_a[_lastHitFloor])
         {
            faward.enabled = true;
         }
         else
         {
            faward.enabled = false;
            if(_a[_lastHitFloor])
            {
               faward.label = Language.TRIALS_MAIN_PANEL[9];
            }
         }
      }
      
      private function trialsInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.TRIALS_MAIN_PANEL[20].toString();
         _helpAlert = Alert.show(_loc1_,Language.TRIALS_MAIN_PANEL[20].toString(),Alert.YES,null,null);
      }
      
      public function set faward(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1281570377faward;
         if(_loc2_ !== param1)
         {
            this._1281570377faward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"faward",_loc2_,param1));
         }
      }
      
      public function set trialsBtn02(param1:TrialsFloorCanvas) : void
      {
         var _loc2_:Object = this._2047892671trialsBtn02;
         if(_loc2_ !== param1)
         {
            this._2047892671trialsBtn02 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialsBtn02",_loc2_,param1));
         }
      }
      
      public function set trialsBtn03(param1:TrialsFloorCanvas) : void
      {
         var _loc2_:Object = this._2047892670trialsBtn03;
         if(_loc2_ !== param1)
         {
            this._2047892670trialsBtn03 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialsBtn03",_loc2_,param1));
         }
      }
      
      public function set trialsBtn04(param1:TrialsFloorCanvas) : void
      {
         var _loc2_:Object = this._2047892669trialsBtn04;
         if(_loc2_ !== param1)
         {
            this._2047892669trialsBtn04 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialsBtn04",_loc2_,param1));
         }
      }
      
      public function ___TrialsPassMainPanel_Button1_click(param1:MouseEvent) : void
      {
         trialsAwardPanelVisible();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TrialsPassMainPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TrialsPassMainPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TrialsPassMainPanelWatcherSetupUtil");
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
      
      private function _TrialsPassMainPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TRIALS_MAIN_PANEL[0];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000388"));
         _loc1_ = Language.TRIALS_MAIN_PANEL[6];
         _loc1_ = Language.TRIALS_MAIN_PANEL[10];
         _loc1_ = Language.TRIALS_MAIN_PANEL[1];
         _loc1_ = Language.TRIALS_MAIN_PANEL[2];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.ASTROLOGIC_PANEL_U[38];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.TRIALS_MAIN_PANEL[12];
         _loc1_ = Language.TRIALS_MAIN_PANEL[7];
      }
      
      public function trialsPanelInit() : *
      {
         initView();
         visible = true;
      }
      
      public function set trialsBtn05(param1:TrialsFloorCanvas) : void
      {
         var _loc2_:Object = this._2047892668trialsBtn05;
         if(_loc2_ !== param1)
         {
            this._2047892668trialsBtn05 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialsBtn05",_loc2_,param1));
         }
      }
      
      public function set trialsBtn01(param1:TrialsFloorCanvas) : void
      {
         var _loc2_:Object = this._2047892672trialsBtn01;
         if(_loc2_ !== param1)
         {
            this._2047892672trialsBtn01 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialsBtn01",_loc2_,param1));
         }
      }
      
      public function __trialsBtn04_click(param1:MouseEvent) : void
      {
         trialsSelect(4);
      }
      
      public function set fa3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._101080fa3;
         if(_loc2_ !== param1)
         {
            this._101080fa3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fa3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      public function set fa5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._101082fa5;
         if(_loc2_ !== param1)
         {
            this._101082fa5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fa5",_loc2_,param1));
         }
      }
      
      public function set fa2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._101079fa2;
         if(_loc2_ !== param1)
         {
            this._101079fa2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fa2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get faward() : BasicDelayButton
      {
         return this._1281570377faward;
      }
      
      private function onTrialsPanelInit(param1:Object) : void
      {
         if(param1)
         {
            trialsCharDataInit(param1);
            trialsSelect(_lastHitFloor);
         }
      }
      
      public function set fa1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._101078fa1;
         if(_loc2_ !== param1)
         {
            this._101078fa1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fa1",_loc2_,param1));
         }
      }
      
      public function set gaBtn0(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1254502066gaBtn0;
         if(_loc2_ !== param1)
         {
            this._1254502066gaBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn0",_loc2_,param1));
         }
      }
      
      public function set fa4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._101081fa4;
         if(_loc2_ !== param1)
         {
            this._101081fa4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fa4",_loc2_,param1));
         }
      }
      
      public function set floorInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._1712711974floorInfo;
         if(_loc2_ !== param1)
         {
            this._1712711974floorInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"floorInfo",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("trialsPanelInit",new Responder(onTrialsPanelInit));
      }
      
      [Bindable(event="propertyChange")]
      public function get fa1() : ItemSlot
      {
         return this._101078fa1;
      }
      
      [Bindable(event="propertyChange")]
      public function get fa2() : ItemSlot
      {
         return this._101079fa2;
      }
      
      [Bindable(event="propertyChange")]
      public function get fa3() : ItemSlot
      {
         return this._101080fa3;
      }
      
      [Bindable(event="propertyChange")]
      public function get fa4() : ItemSlot
      {
         return this._101081fa4;
      }
      
      private function _TrialsPassMainPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassMainPanel_BasicTitleCanvas1.text = param1;
         },"_TrialsPassMainPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000388"));
         },function(param1:Object):void
         {
            _TrialsPassMainPanel_Image1.source = param1;
         },"_TrialsPassMainPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            faward.label = param1;
         },"faward.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn0.label = param1;
         },"gaBtn0.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassMainPanel_Label2.text = param1;
         },"_TrialsPassMainPanel_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassMainPanel_Label3.text = param1;
         },"_TrialsPassMainPanel_Label3.text");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _TrialsPassMainPanel_LinkButton1.setStyle("overSkin",param1);
         },"_TrialsPassMainPanel_LinkButton1.overSkin");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _TrialsPassMainPanel_LinkButton1.setStyle("upSkin",param1);
         },"_TrialsPassMainPanel_LinkButton1.upSkin");
         result[7] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _TrialsPassMainPanel_LinkButton1.setStyle("downSkin",param1);
         },"_TrialsPassMainPanel_LinkButton1.downSkin");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ASTROLOGIC_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassMainPanel_LinkButton1.label = param1;
         },"_TrialsPassMainPanel_LinkButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _TrialsPassMainPanel_LinkButton2.setStyle("overSkin",param1);
         },"_TrialsPassMainPanel_LinkButton2.overSkin");
         result[10] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _TrialsPassMainPanel_LinkButton2.setStyle("upSkin",param1);
         },"_TrialsPassMainPanel_LinkButton2.upSkin");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _TrialsPassMainPanel_LinkButton2.setStyle("downSkin",param1);
         },"_TrialsPassMainPanel_LinkButton2.downSkin");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassMainPanel_LinkButton2.label = param1;
         },"_TrialsPassMainPanel_LinkButton2.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_MAIN_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[14] = binding;
         return result;
      }
      
      public function set lfLable(param1:Label) : void
      {
         var _loc2_:Object = this._59498092lfLable;
         if(_loc2_ !== param1)
         {
            this._59498092lfLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lfLable",_loc2_,param1));
         }
      }
      
      public function __faward_click(param1:MouseEvent) : void
      {
         trialsFirstAwardGet();
      }
      
      [Bindable(event="propertyChange")]
      public function get fa5() : ItemSlot
      {
         return this._101082fa5;
      }
      
      public function __trialsBtn01_click(param1:MouseEvent) : void
      {
         trialsSelect(1);
      }
      
      public function __trialsBtn05_click(param1:MouseEvent) : void
      {
         trialsSelect(5);
      }
      
      private function onTrialsTimeUpdate() : void
      {
         lfLable.text = Language.TRIALS_MAIN_PANEL[3].replace("{num}",Number(ToolKit.minus(_m,_n)));
      }
   }
}

