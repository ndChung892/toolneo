package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.AutoTaskBox;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.PageSelectorOnly;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AutoTaskPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3647t3:AutoTaskBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _3552645task:BasicTitleCanvas;
      
      private var _3650t6:AutoTaskBox;
      
      private var everyBattleTime:Number = 180000;
      
      private var taskConfig:Object;
      
      public var _taskCombox:Array = new Array({
         "label":"Mê Huyễn Động",
         "data":1
      },{
         "label":"Kho Báu Đại Mạc",
         "data":2
      },{
         "label":"Lục Tiên Cảnh",
         "data":3
      },{
         "label":"Liệt Diễm Thâm Uyên",
         "data":4
      },{
         "label":"Lang Huyệt Động",
         "data":7
      },{
         "label":"Quỷ Hút Máu",
         "data":10
      },{
         "label":"Thế Giới Số",
         "data":13
      },{
         "label":"PB Thám Hiểm",
         "data":16
      });
      
      private var totalTime:Number;
      
      private var _878428813tileContainer:ViewStack;
      
      private var _finishFlag:Boolean = false;
      
      private var _3646t2:AutoTaskBox;
      
      private var _timer:Timer = new Timer(1000);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _110363460tile2:Tile;
      
      public var _AutoTaskPanel_Label1:Label;
      
      private var _100361836intro:IntroText;
      
      private var _319812849_taskName:String = Language.TASKSWEEPPANEL_U[0];
      
      private var ct:Number = 0;
      
      public var _AutoTaskPanel_Label3:Label;
      
      public var sweepFlag:Boolean = false;
      
      private var _3645t1:AutoTaskBox;
      
      private var _core:Core = Core.getInstance();
      
      private var _sweepAlert:Alert;
      
      private var _3649t5:AutoTaskBox;
      
      private var _info:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _time:Number = 0;
      
      private var _110363459tile1:Tile;
      
      private var _2116189043itemNum:Label;
      
      private var _1307590523todayNum:Label;
      
      private var _3644t0:AutoTaskBox;
      
      private var _3648t4:AutoTaskBox;
      
      private var _run:String = ".";
      
      public var _taskType:Number = 1;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _haveBattle:int = 0;
      
      private var _3651t7:AutoTaskBox;
      
      private var _91052262_left:String = "59:59";
      
      private var _warMapMax:uint = 1;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":720,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"task"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.top = "39";
                     this.bottom = "30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":700,
                        "styleName":"txtArea",
                        "creationPolicy":"all",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"intro",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":245,
                                 "width":680,
                                 "height":132
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "percentWidth":100,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"tileContainer",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "percentWidth":100,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "selectedIndex":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"tile1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 4;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":10,
                                                   "width":682,
                                                   "height":202,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileBagItem",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t0"
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t1"
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t2"
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t3"
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t4"
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t5"
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"tile2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 4;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":10,
                                                   "width":682,
                                                   "height":202,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileBagItem",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t6"
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTaskBox,
                                                      "id":"t7"
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelectorOnly,
                                    "id":"pageSelector",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":218,
                                          "changeCall":updatePage
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_AutoTaskPanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":440,
                                          "y":218
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"todayNum",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":525,
                                          "y":218
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_AutoTaskPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":540,
                                          "y":218
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"itemNum",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":650,
                                          "y":218
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
      
      private var autoData:Object = {};
      
      private var _selected:Boolean = false;
      
      private var AUTO_TASK_ADD_ITEM:int = 3630;
      
      public function AutoTaskPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 720;
         this.height = 450;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___AutoTaskPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AutoTaskPanel._watcherSetupUtil = param1;
      }
      
      public function ___AutoTaskPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set task(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._3552645task;
         if(_loc2_ !== param1)
         {
            this._3552645task = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task",_loc2_,param1));
         }
      }
      
      public function initTaskSweepPanel(param1:Object) : void
      {
         if(_finishFlag)
         {
         }
         if(param1)
         {
            this.visible = false;
         }
      }
      
      public function set todayNum(param1:Label) : void
      {
         var _loc2_:Object = this._1307590523todayNum;
         if(_loc2_ !== param1)
         {
            this._1307590523todayNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _taskName() : String
      {
         return this._319812849_taskName;
      }
      
      public function init() : void
      {
         intro.htmlText = Language.TASKSWEEPPANEL_U[21];
         this.task.closeFunc = closePanel;
         updatePage();
      }
      
      public function onTaskSweepCancel(param1:Object) : void
      {
      }
      
      public function set pageSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      private function _secToTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(param1)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            _loc5_ = "00";
            _loc6_ = "00";
            _loc7_ = "00";
            if(param1 >= 3600)
            {
               _loc2_ = Math.floor(param1 / 3600);
               _loc3_ = Math.floor(param1 / 60) % 60;
               _loc4_ = param1 % 60;
            }
            else if(param1 >= 60)
            {
               _loc2_ = 0;
               _loc3_ = Math.floor(param1 / 60);
               _loc4_ = param1 % 60;
            }
            else if(param1 > 0)
            {
               _loc2_ = 0;
               _loc3_ = 0;
               _loc4_ = param1;
            }
            else
            {
               _loc2_ = 0;
               _loc3_ = 0;
               _loc4_ = 0;
            }
            if(_loc2_ > 0)
            {
               if(_loc2_ <= 9)
               {
                  _loc5_ = String(_loc2_);
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
            if(_loc4_ >= 0)
            {
               if(_loc4_ <= 9)
               {
                  _loc7_ = "0" + _loc4_;
               }
               else
               {
                  _loc7_ = String(_loc4_);
               }
            }
            if(_loc2_ == 0)
            {
               if(_loc4_ == 0 && _loc3_ == 0)
               {
                  _left = "00:00";
               }
               else
               {
                  _left = _loc6_ + ":" + _loc7_;
               }
            }
            else
            {
               _left = _loc5_ + ":" + _loc6_ + ":" + _loc7_;
            }
         }
         else
         {
            _left = "00:00";
         }
      }
      
      public function refreshData() : void
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < _taskCombox.length)
         {
            _loc2_ = _taskCombox[_loc1_];
            this["t" + _loc1_].clean();
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _taskCombox.length)
         {
            _loc2_ = _taskCombox[_loc1_];
            this["t" + _loc1_].setData(_loc2_,autoData,ct);
            _loc1_++;
         }
      }
      
      public function closeSure() : void
      {
         this.task.parentDocument.hide();
      }
      
      public function onGetAutoTaskData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:int = int(param1["todayNum"]);
         var _loc3_:int = int(param1["useNum"]);
         autoData = param1["data"];
         ct = param1["ct"];
         todayNum.text = (_loc2_ - _loc3_).toString();
         itemNum.text = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,AUTO_TASK_ADD_ITEM).num;
         refreshData();
         visible = true;
      }
      
      private function set _taskName(param1:String) : void
      {
         var _loc2_:Object = this._319812849_taskName;
         if(_loc2_ !== param1)
         {
            this._319812849_taskName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_taskName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t1() : AutoTaskBox
      {
         return this._3645t1;
      }
      
      [Bindable(event="propertyChange")]
      public function get t3() : AutoTaskBox
      {
         return this._3647t3;
      }
      
      private function _AutoTaskPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _taskName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            task.text = param1;
         },"task.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoTaskPanel_Label1.text = param1;
         },"_AutoTaskPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _AutoTaskPanel_Label1.filters = param1;
         },"_AutoTaskPanel_Label1.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            todayNum.filters = param1;
         },"todayNum.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoTaskPanel_Label3.text = param1;
         },"_AutoTaskPanel_Label3.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _AutoTaskPanel_Label3.filters = param1;
         },"_AutoTaskPanel_Label3.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            itemNum.filters = param1;
         },"itemNum.filters");
         result[6] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get t0() : AutoTaskBox
      {
         return this._3644t0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile2() : Tile
      {
         return this._110363460tile2;
      }
      
      [Bindable(event="propertyChange")]
      public function get t4() : AutoTaskBox
      {
         return this._3648t4;
      }
      
      [Bindable(event="propertyChange")]
      public function get t5() : AutoTaskBox
      {
         return this._3649t5;
      }
      
      [Bindable(event="propertyChange")]
      public function get t6() : AutoTaskBox
      {
         return this._3650t6;
      }
      
      [Bindable(event="propertyChange")]
      public function get t2() : AutoTaskBox
      {
         return this._3646t2;
      }
      
      [Bindable(event="propertyChange")]
      public function get t7() : AutoTaskBox
      {
         return this._3651t7;
      }
      
      public function onEndBattle(param1:Object) : void
      {
         if(!param1)
         {
         }
      }
      
      private function introContent1() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:Charactor = _core.getCharactor(_core.cid);
         var _loc2_:* = 1;
         while(_loc2_ <= _haveBattle)
         {
            _loc3_ = 0;
            if(Boolean(GamePredef.EXP_SWEEP[taskConfig.id]) && Boolean(GamePredef.EXP_SWEEP[taskConfig.id][_loc2_]))
            {
               _loc3_ = Math.round(GamePredef.BASIC_GET_EXP[_loc1_.level] * GamePredef.EXP_SWEEP[taskConfig.id][_loc2_]);
            }
            else if(Boolean(taskConfig.id) && Boolean(getTaskType(taskConfig.id) == 3) && Boolean(taskConfig.exp))
            {
               _loc3_ = Math.round(taskConfig.exp);
            }
            _loc4_ = 0;
            if(Boolean(GamePredef.MONEY_SWEEP[taskConfig.id]) && Boolean(GamePredef.MONEY_SWEEP[taskConfig.id][_loc2_]))
            {
               _loc4_ = Math.round(GamePredef.BASIC_GET_MONEY[_loc1_.level] * GamePredef.MONEY_SWEEP[taskConfig.id][_loc2_]);
            }
            if(Boolean(_info) && Boolean(_loc3_) && _loc3_ != 0)
            {
               _info = _info + "&#13;" + Language.TASKSWEEPPANEL_U[18].toString().replace("{num}",_loc2_).replace("{exp}",_loc3_);
            }
            else
            {
               _info = Language.TASKSWEEPPANEL_U[18].toString().replace("{num}",_loc2_).replace("{exp}",_loc3_);
            }
            if(Boolean(_info) && Boolean(_loc4_) && _loc4_ != 0)
            {
               _info = _info.replace("{moneyBind}",_loc4_);
            }
            else
            {
               _info = _info.replace("&#13;<font color=\'#00EEEE\'>获得银票:<font color=\'#FFFFFF\'>{moneyBind}</font></font>","");
            }
            _info += "&#13;----------------";
            _loc2_++;
         }
         intro.htmlText = _info;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile1() : Tile
      {
         return this._110363459tile1;
      }
      
      [Bindable(event="propertyChange")]
      public function get intro() : IntroText
      {
         return this._100361836intro;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemNum() : Label
      {
         return this._2116189043itemNum;
      }
      
      private function turnSweep(param1:Number) : void
      {
         var handler:Function;
         var obj:Object = null;
         var str:String = null;
         var c:AutoTaskBox = null;
         var tid:int = 0;
         var config:Object = null;
         var type:Number = param1;
         obj = {};
         var totalMoney:Number = 0;
         var num:int = 0;
         var i:int = 0;
         while(i < 6)
         {
            c = this["t" + i];
            tid = c.tid;
            config = GamePredef.TASK[tid];
            totalMoney += config["money"];
            num++;
            obj[num] = tid;
            i++;
         }
         if(num == 0)
         {
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               if(!sweepFlag)
               {
                  _core.remote.call("autoTaskSweepSure",new Responder(onTaskSweepSure),obj,_selected);
               }
               else
               {
                  _core.remote.call("autoTaskSweepCancel",null);
                  if(type == 2)
                  {
                     closeSure();
                  }
               }
            }
         };
         if(_sweepAlert)
         {
            PopUpManager.removePopUp(_sweepAlert);
            _sweepAlert = null;
         }
         if(!sweepFlag)
         {
            str = str.replace("{money}",totalMoney).replace("{num}",num);
         }
         _sweepAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      public function set t1(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3645t1;
         if(_loc2_ !== param1)
         {
            this._3645t1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1",_loc2_,param1));
         }
      }
      
      public function onTaskSweepSure(param1:Object) : void
      {
      }
      
      public function replaceIndex(param1:int, param2:String, param3:int) : void
      {
      }
      
      public function set t0(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3644t0;
         if(_loc2_ !== param1)
         {
            this._3644t0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t0",_loc2_,param1));
         }
      }
      
      public function set t5(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3649t5;
         if(_loc2_ !== param1)
         {
            this._3649t5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t5",_loc2_,param1));
         }
      }
      
      public function set t7(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3651t7;
         if(_loc2_ !== param1)
         {
            this._3651t7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      private function getMedalInfo(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(param1)
         {
            _loc2_ = GameData.d[GamePredef.TBL_MEDAL][param1];
            if(_loc2_)
            {
               _loc3_ = Language.TASKSWEEPPANEL_U[11];
               _loc4_ = Number(_loc2_.q);
               _loc5_ = getColorBy(_loc4_,_loc2_.ti);
               _loc6_ = "";
               if(ToolKit.isBigOrEqual(_loc5_,0))
               {
                  _loc7_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc5_] + "\'>" + _loc2_.name + _loc6_ + "</font>";
                  _loc3_ = _loc3_.replace("{itemName}",_loc7_).replace("{num}",1);
                  _info = _info + "&#13;" + _loc3_;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AutoTaskPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AutoTaskPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AutoTaskPanelWatcherSetupUtil");
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
      
      public function set tile1(param1:Tile) : void
      {
         var _loc2_:Object = this._110363459tile1;
         if(_loc2_ !== param1)
         {
            this._110363459tile1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile1",_loc2_,param1));
         }
      }
      
      public function onTaskSweepLeftTimeCheck(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(Boolean(param1) && Boolean(param1.gold))
         {
            if(sweepFlag)
            {
               _loc2_ = Language.TASKSWEEPPANEL_U[26];
               _loc2_ = _loc2_.replace("{gold}",param1.gold).replace("{taskName}",taskConfig.taskName);
               turnSweepRight(_loc2_);
            }
         }
      }
      
      public function set t6(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3650t6;
         if(_loc2_ !== param1)
         {
            this._3650t6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get task() : BasicTitleCanvas
      {
         return this._3552645task;
      }
      
      public function set t2(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3646t2;
         if(_loc2_ !== param1)
         {
            this._3646t2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2",_loc2_,param1));
         }
      }
      
      public function set t3(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3647t3;
         if(_loc2_ !== param1)
         {
            this._3647t3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t3",_loc2_,param1));
         }
      }
      
      public function set t4(param1:AutoTaskBox) : void
      {
         var _loc2_:Object = this._3648t4;
         if(_loc2_ !== param1)
         {
            this._3648t4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t4",_loc2_,param1));
         }
      }
      
      private function _AutoTaskPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _taskName;
         _loc1_ = Language.TASKSWEEPPANEL_U[47];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TASKSWEEPPANEL_U[48];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      private function doTask() : void
      {
         if(!_haveBattle)
         {
            _haveBattle = 0;
         }
         if(Boolean(_timer) && _timer.running)
         {
            if(_info == "")
            {
               intro.htmlText = _info + Language.TASKSWEEPPANEL_U[17].toString().replace("{num}",_haveBattle + 1) + "<font color=\'#FA5B05\'>" + _run + "</font>";
            }
            else
            {
               intro.htmlText = _info + "&#13;" + Language.TASKSWEEPPANEL_U[17].toString().replace("{num}",_haveBattle + 1) + "<font color=\'#FA5B05\'>" + _run + "</font>";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get todayNum() : Label
      {
         return this._1307590523todayNum;
      }
      
      public function set tile2(param1:Tile) : void
      {
         var _loc2_:Object = this._110363460tile2;
         if(_loc2_ !== param1)
         {
            this._110363460tile2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile2",_loc2_,param1));
         }
      }
      
      public function clickTaskSweep() : void
      {
         _core.remote.call("getAutoTaskData",new Responder(onGetAutoTaskData));
      }
      
      public function onStart(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:int = int(param1["todayNum"]);
         var _loc3_:int = int(param1["useNum"]);
         autoData = param1["data"];
         ct = param1["ct"];
         todayNum.text = (_loc2_ - _loc3_).toString();
         itemNum.text = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,AUTO_TASK_ADD_ITEM).num;
         refreshData();
      }
      
      [Bindable(event="propertyChange")]
      public function get tileContainer() : ViewStack
      {
         return this._878428813tileContainer;
      }
      
      public function getTaskType(param1:int) : int
      {
         var _loc2_:* = undefined;
         for(_loc2_ in GamePredef.TASK_CLASSIFICATION)
         {
            if(param1 >= GamePredef.TASK_CLASSIFICATION[_loc2_].b && param1 <= GamePredef.TASK_CLASSIFICATION[_loc2_].e)
            {
               return _loc2_;
            }
         }
         return 0;
      }
      
      private function getItemInfo(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(param1)
         {
            _loc2_ = GameData.d[GamePredef.TBL_PLAN][param1];
            if(_loc2_)
            {
               _loc3_ = Language.TASKSWEEPPANEL_U[11];
               _loc4_ = GameData.d[_loc2_.ti][_loc2_.ii];
               _loc5_ = Number(_loc2_.q);
               if(Boolean(_loc4_) && !ToolKit.isEqual(_loc4_.kind,GamePredef.ITEM_KIND_MATERIAL))
               {
                  _loc5_ = 0;
               }
               if(Boolean(_loc4_) && ToolKit.isBigOrEqual(_loc4_.color,0))
               {
                  _loc5_ = _loc4_.color * 5;
               }
               _loc6_ = int(_loc2_.q / 2);
               _loc7_ = "";
               if(ToolKit.isBigOrEqual(_loc6_,0))
               {
                  _loc8_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc6_] + "\'>" + _loc4_.name + _loc7_ + "</font>";
                  _loc3_ = _loc3_.replace("{itemName}",_loc8_).replace("{num}",_loc2_.n);
                  _info = _info + "&#13;" + _loc3_;
               }
            }
         }
      }
      
      public function set intro(param1:IntroText) : void
      {
         var _loc2_:Object = this._100361836intro;
         if(_loc2_ !== param1)
         {
            this._100361836intro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intro",_loc2_,param1));
         }
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
      
      private function getColorBy(param1:int, param2:int) : int
      {
         if(param2 == 28 || param2 == 29 || param2 == 18 || param2 == 19)
         {
            if(param1 > 15)
            {
               return 4;
            }
            if(param1 > 10)
            {
               return 3;
            }
            if(param1 > 5)
            {
               return 2;
            }
            if(param1 > 0)
            {
               return 1;
            }
            return 0;
         }
         return 0;
      }
      
      public function set itemNum(param1:Label) : void
      {
         var _loc2_:Object = this._2116189043itemNum;
         if(_loc2_ !== param1)
         {
            this._2116189043itemNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNum",_loc2_,param1));
         }
      }
      
      private function turnSweepRight(param1:String) : void
      {
         var time1:* = undefined;
         var handler:Function = null;
         var str:String = null;
         var tf:IUITextField = null;
         var gold:* = undefined;
         var str1:String = param1;
         if(sweepFlag && (!str1 || str1 == ""))
         {
            time1 = new Date().getTime();
            if(time1 - _time > 1000)
            {
               _core.remote.call("taskSweepLeftTimeCheck",new Responder(onTaskSweepLeftTimeCheck),null);
               _time = time1;
            }
            return;
         }
         if(Boolean(taskConfig) && Boolean(taskConfig.taskName) && Boolean(taskConfig.id))
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(!sweepFlag)
                  {
                     _core.remote.call("taskFinishByGold",null,taskConfig.id,2,taskConfig.battleCount,taskConfig.taskIndex,_selected);
                  }
                  else
                  {
                     _core.remote.call("taskFinishByGold",null,taskConfig.id,1,taskConfig.battleCount,taskConfig.taskIndex);
                  }
               }
            };
            if(_sweepAlert)
            {
               PopUpManager.removePopUp(_sweepAlert);
               _sweepAlert = null;
            }
            if(!sweepFlag)
            {
               str = Language.TASKSWEEPPANEL_U[26];
               str = str.replace("{gold}",taskConfig.gold).replace("{taskName}",taskConfig.taskName);
               if(Boolean(taskConfig) && Boolean(getTaskType(taskConfig.id)) && getTaskType(taskConfig.id) == 3)
               {
                  gold = Math.ceil(taskConfig.time * taskConfig.battleCount / 60000 * 0.5);
                  if(gold < 1)
                  {
                     gold = 1;
                  }
                  str = Language.TASKSWEEPPANEL_U[26].toString().replace("{gold}",gold).replace("{taskName}",taskConfig.taskName);
               }
            }
            else
            {
               str = str1;
            }
            _sweepAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            tf = _sweepAlert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = str;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
      }
      
      public function closePanel() : void
      {
         if(sweepFlag)
         {
            turnSweep(2);
         }
         else
         {
            closeSure();
         }
      }
      
      public function set tileContainer(param1:ViewStack) : void
      {
         var _loc2_:Object = this._878428813tileContainer;
         if(_loc2_ !== param1)
         {
            this._878428813tileContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileContainer",_loc2_,param1));
         }
      }
      
      private function updatePage() : void
      {
         pageSelector.totalPage = 2;
         tileContainer.selectedIndex = pageSelector.curPage - 1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _left() : String
      {
         return this._91052262_left;
      }
   }
}

