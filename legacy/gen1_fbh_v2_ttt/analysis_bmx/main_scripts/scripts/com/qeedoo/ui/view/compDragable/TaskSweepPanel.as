package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TaskSweepPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _97823bt1:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _1094713483reqTime:Label;
      
      private var _3552645task:BasicTitleCanvas;
      
      private var everyBattleTime:Number = 180000;
      
      private var taskConfig:Object;
      
      private var totalTime:Number;
      
      private var _finishFlag:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _timer:Timer = new Timer(1000);
      
      private var _344437713bagLeft:Label;
      
      private var _401559445numStepper:NumericStepper;
      
      private var _3560141time:Label;
      
      private var _319812849_taskName:String = Language.TASKSWEEPPANEL_U[0];
      
      private var _100361836intro:IntroText;
      
      public var sweepFlag:Boolean = false;
      
      private var _core:Core = Core.getInstance();
      
      private var _sweepAlert:Alert;
      
      private var _1254200744useSweepItem:CheckBox;
      
      private var _info:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _97822bt0:Button;
      
      private var _time:Number = 0;
      
      public var _taskCombox1:Array = new Array({
         "label":"N.vụ Tu Hành",
         "data":51
      },{
         "label":"NV Thần Tu",
         "data":52
      });
      
      public var _taskCombox2:Array = new Array({
         "label":"Bạch Dương",
         "data":101
      },{
         "label":"Kim Ngưu",
         "data":102
      },{
         "label":"Song Tử",
         "data":103
      },{
         "label":"Cự Giải",
         "data":104
      },{
         "label":"Sư Tử",
         "data":105
      },{
         "label":"Xử Nữ",
         "data":106
      },{
         "label":"Thiên Bình",
         "data":107
      },{
         "label":"Hổ Cáp",
         "data":108
      },{
         "label":"Nhân Mã",
         "data":109
      },{
         "label":"Ma Kết",
         "data":110
      },{
         "label":"Bảo Bình",
         "data":111
      },{
         "label":"Song Ngư",
         "data":112
      });
      
      public var _taskType:Number = 1;
      
      private var _775306441battleCount:Label;
      
      private var _run:String = ".";
      
      private var _1159596620taskNameInfor:ComboBox;
      
      private var _1595506734_taskCombox:Array = new Array({
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
         "label":"Liệt Diễm Thâm Uyên",
         "data":5
      },{
         "label":"Liệt Diễm Thâm Uyên",
         "data":6
      },{
         "label":"Trở Về Lang Huyệt",
         "data":7
      },{
         "label":"Trở Về Lang Huyệt",
         "data":8
      },{
         "label":"Trở Về Lang Huyệt",
         "data":9
      },{
         "label":"Quỷ Hút Máu",
         "data":10
      },{
         "label":"Quỷ Hút Máu (Thường)",
         "data":11
      },{
         "label":"Quỷ Hút Máu (Khó)",
         "data":12
      });
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _haveBattle:int = 0;
      
      private var _410330704taskName:Label;
      
      private var _warMapMax:uint = 1;
      
      private var _91052262_left:String = "59:59";
      
      private var _2087634463bagLeft0:Label;
      
      private var _selected:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":346,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"task",
                  "events":{"creationComplete":"__task_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":39,
                        "width":459,
                        "height":285,
                        "styleName":"txtArea",
                        "creationPolicy":"all",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"reqTime",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"battleCount",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"taskName",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":132
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"bt0",
                           "events":{"click":"__bt0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":287,
                                 "y":247,
                                 "width":66,
                                 "height":28,
                                 "enabled":true,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"time",
                           "stylesFactory":function():void
                           {
                              this.fontFamily = "Arial";
                              this.fontSize = 50;
                              this.color = 3934994;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":281.5,
                                 "y":35,
                                 "width":187.5,
                                 "height":57
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"taskNameInfor",
                           "events":{"close":"__taskNameInfor_close"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":323,
                                 "labelField":"label",
                                 "width":117,
                                 "editable":false,
                                 "y":129,
                                 "rowCount":7,
                                 "enabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"intro",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "width":242,
                                 "height":265
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"bagLeft",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":196
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"bagLeft0",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":164
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"bt1",
                           "events":{"click":"__bt1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":356,
                                 "y":247,
                                 "height":28,
                                 "enabled":true,
                                 "styleName":"BtnStdRed",
                                 "visible":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"useSweepItem",
                           "events":{"click":"__useSweepItem_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":222
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"numStepper",
                           "events":{"change":"__numStepper_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":45,
                                 "x":345,
                                 "y":98,
                                 "value":1,
                                 "minimum":1,
                                 "visible":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function TaskSweepPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 346;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___TaskSweepPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TaskSweepPanel._watcherSetupUtil = param1;
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
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         if(!_finishFlag)
         {
            _core.remote.call("getTaskBattleTime",new Responder(onGetTaskBattleTime),null);
         }
         if(param1)
         {
            _info = "";
            _haveBattle = 0;
            intro.htmlText = Language.TASKSWEEPPANEL_U[21];
            if(param1.taskId)
            {
               _taskType = getTaskType(param1.taskId);
            }
            else if(param1.taskType)
            {
               _taskType = param1.taskType;
            }
            else if(param1.id)
            {
               _taskType = getTaskType(param1.id);
            }
            if(Boolean(_timer) && _timer.running)
            {
               _timer.removeEventListener(TimerEvent.TIMER,minusTime);
               _timer.stop();
            }
            this.taskConfig = param1;
            _loc2_ = Math.floor(param1.battleCount * (param1.time / 60000));
            totalTime = param1.battleCount * param1.time / 1000;
            if(Boolean(param1.st) && param1.st != 0)
            {
               this.taskNameInfor.enabled = false;
               totalTime = Math.round((param1.battleCount * param1.time - param1.st) / 1000);
               if(totalTime < 0)
               {
                  totalTime = 2;
               }
               _haveBattle = Math.floor(param1.st / param1.time);
               if(totalTime == 2)
               {
                  _haveBattle = int(param1.battleCount) - int(1);
               }
               if(_haveBattle > 0)
               {
                  introContent1();
               }
            }
            else
            {
               this.taskNameInfor.enabled = true;
               if(Boolean(_taskType) && _taskType == 3)
               {
                  this.taskNameInfor.enabled = false;
               }
            }
            _loc2_ = Math.floor(totalTime / 60);
            _loc3_ = 0;
            _loc4_ = "00";
            _loc5_ = 0;
            if(_loc2_ >= 60)
            {
               _loc3_ = Math.floor(_loc2_ / 60);
               _loc2_ %= 60;
               _loc5_ = Math.abs(totalTime % 60);
            }
            else if(_loc2_ >= 0)
            {
               _loc5_ = Math.abs(totalTime % 60);
            }
            if(_loc5_)
            {
               if(_loc5_ >= 10)
               {
                  _loc4_ = String(_loc5_);
               }
               else if(_loc5_ >= 0)
               {
                  _loc4_ = "0" + String(_loc5_);
               }
            }
            if(_loc3_ == 0)
            {
               this.time.setStyle("fontSize","50");
               this.time.x = 281.5;
               if(_loc2_ <= 9)
               {
                  _left = "0" + _loc2_ + ":" + _loc4_;
               }
               else
               {
                  _left = _loc2_ + ":" + _loc4_;
               }
            }
            else
            {
               this.time.setStyle("fontSize","47");
               this.time.x = 270.5;
               if(_loc2_ <= 9)
               {
                  _left = _loc3_ + ":0" + _loc2_ + ":" + _loc4_;
               }
               else
               {
                  _left = _loc3_ + ":" + _loc2_ + ":" + _loc4_;
               }
            }
            if(getTaskType(param1.taskId) == 1 || getTaskType(param1.id) == 1)
            {
               this.reqTime.text = Language.TASKSWEEPPANEL_U[1];
               this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/" + this.taskConfig.battleCount;
               this.taskName.text = Language.TASKSWEEPPANEL_U[3] + ": ";
               this.taskNameInfor.text = this.taskConfig.taskName;
               this.bagLeft.text = Language.TASKSWEEPPANEL_U[4];
               this.bagLeft0.text = Language.TASKSWEEPPANEL_U[24] + ": " + this.taskConfig.needBagNum;
               this.bt0.label = Language.TASKSWEEPPANEL_U[5];
               if(this.task)
               {
                  this.task.text = Language.TASKSWEEPPANEL_U[0].toString();
                  _taskName = Language.TASKSWEEPPANEL_U[0].toString();
               }
               this.useSweepItem.visible = true;
               this.numStepper.visible = false;
            }
            else if(getTaskType(param1.taskId) == 2 || getTaskType(param1.id) == 2)
            {
               if(param1.id == 51)
               {
                  intro.htmlText = Language.TASKSWEEPPANEL_U[32];
               }
               else if(param1.id == 52)
               {
                  intro.htmlText = Language.TASKSWEEPPANEL_U[55];
               }
               this.reqTime.text = Language.TASKSWEEPPANEL_U[1];
               this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/" + this.taskConfig.battleCount;
               this.taskName.text = Language.TASKSWEEPPANEL_U[3].toString().replace(Language.TASKSWEEPPANEL_U[35],Language.TASKSWEEPPANEL_U[36]) + ": ";
               this.taskNameInfor.text = this.taskConfig.taskName;
               this.bagLeft.text = Language.TASKSWEEPPANEL_U[4];
               this.bagLeft0.text = Language.TASKSWEEPPANEL_U[24] + Language.TASKSWEEPPANEL_U[38];
               this.bt0.label = Language.TASKSWEEPPANEL_U[5];
               if(this.task)
               {
                  this.task.text = Language.TASKSWEEPPANEL_U[0].toString().replace(Language.TASKSWEEPPANEL_U[35],Language.TASKSWEEPPANEL_U[36]);
                  _taskName = Language.TASKSWEEPPANEL_U[0].toString().replace(Language.TASKSWEEPPANEL_U[35],Language.TASKSWEEPPANEL_U[36]);
               }
               this.useSweepItem.visible = false;
               this.numStepper.visible = false;
            }
            else if(getTaskType(param1.taskId) == 3 || getTaskType(param1.id) == 3)
            {
               intro.htmlText = Language.TASKSWEEPPANEL_U[33];
               this.reqTime.text = Language.TASKSWEEPPANEL_U[1];
               this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/";
               this.taskName.text = Language.TASKSWEEPPANEL_U[3].toString().replace(Language.TASKSWEEPPANEL_U[35],Language.TASKSWEEPPANEL_U[37]) + ": ";
               this.taskNameInfor.text = this.taskConfig.taskName;
               this.bagLeft.text = Language.TASKSWEEPPANEL_U[4];
               this.bagLeft0.text = Language.TASKSWEEPPANEL_U[24] + ": " + this.taskConfig.needBagNum;
               this.bt0.label = Language.TASKSWEEPPANEL_U[5];
               if(this.task)
               {
                  this.task.text = Language.TASKSWEEPPANEL_U[0].toString().replace(Language.TASKSWEEPPANEL_U[35],Language.TASKSWEEPPANEL_U[37]);
                  _taskName = Language.TASKSWEEPPANEL_U[0].toString().replace(Language.TASKSWEEPPANEL_U[35],Language.TASKSWEEPPANEL_U[37]);
               }
               this.useSweepItem.visible = false;
               if(param1.smax)
               {
                  _warMapMax = param1.smax;
                  this.numStepper.maximum = Number(param1.smax - param1.snum);
               }
               else
               {
                  this.numStepper.maximum = 5;
               }
               this.numStepper.value = 1;
               if(Boolean(param1.st) && param1.st != 0)
               {
                  this.numStepper.visible = false;
               }
               else
               {
                  this.numStepper.visible = true;
               }
            }
            this.bt0.enabled = true;
            this.bt1.enabled = true;
            this.visible = true;
            if(Boolean(param1.st) && param1.st != 0)
            {
               if(Boolean(param1.typeflag) && param1.typeflag == 2)
               {
                  return;
               }
               if(param1.id)
               {
                  param1.taskId = param1.id;
               }
               onTaskSweepSure(param1);
            }
         }
         else
         {
            this.taskConfig = {};
            this.reqTime.text = Language.TASKSWEEPPANEL_U[1];
            this.battleCount.text = Language.TASKSWEEPPANEL_U[2];
            this.taskName.text = Language.TASKSWEEPPANEL_U[3];
            this.bagLeft.text = Language.TASKSWEEPPANEL_U[4];
            this.bt0.label = Language.TASKSWEEPPANEL_U[5];
            this.bt0.enabled = false;
            this.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _taskName() : String
      {
         return this._319812849_taskName;
      }
      
      public function init() : void
      {
         this.task.closeFunc = closePanel;
      }
      
      public function set reqTime(param1:Label) : void
      {
         var _loc2_:Object = this._1094713483reqTime;
         if(_loc2_ !== param1)
         {
            this._1094713483reqTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bt1() : Button
      {
         return this._97823bt1;
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
      
      public function __numStepper_change(param1:NumericStepperEvent) : void
      {
         changeValue();
      }
      
      [Bindable(event="propertyChange")]
      public function get bt0() : Button
      {
         return this._97822bt0;
      }
      
      public function closeSure() : void
      {
         this.taskNameInfor.close();
         this.task.parentDocument.hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get _taskCombox() : Array
      {
         return this._1595506734_taskCombox;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagLeft() : Label
      {
         return this._344437713bagLeft;
      }
      
      private function closeHandler(param1:Event) : void
      {
         taskConfig = GamePredef.TASK[Number(ComboBox(param1.target).selectedItem.data)];
         taskConfig.st = 0;
         taskConfig.canSelect = true;
         initTaskSweepPanel(taskConfig);
      }
      
      private function chageSelected() : void
      {
         _selected = this.useSweepItem.selected;
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
      public function get battleCount() : Label
      {
         return this._775306441battleCount;
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
      
      public function __bt0_click(param1:MouseEvent) : void
      {
         turnSweep(1);
      }
      
      public function ___TaskSweepPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         beginInit();
      }
      
      public function onEndBattle(param1:Object) : void
      {
         var _loc2_:Charactor = null;
         if(param1)
         {
            if(param1.flag)
            {
               sweepFlag = false;
               if(Boolean(_timer) && _timer.running)
               {
                  _timer.removeEventListener(TimerEvent.TIMER,minusTime);
                  _timer.stop();
               }
               if(param1.type == 3)
               {
                  _info = "";
                  _haveBattle = taskConfig.battleCount;
                  introContent1();
               }
               if(param1.type == 4)
               {
                  _info = "";
                  _haveBattle = taskConfig.battleCount;
                  introContent1();
               }
               param1.succ = 1;
               showResult(param1);
               this.bt0.enabled = true;
               this.bt1.enabled = true;
               if(getTaskType(param1.taskId) == 1)
               {
                  this.taskNameInfor.enabled = true;
               }
               else
               {
                  this.taskNameInfor.enabled = false;
               }
               this.bt0.label = Language.TASKSWEEPPANEL_U[5];
               this.visible = true;
               _loc2_ = _core.getCharactor(_core.cid);
               if(_loc2_)
               {
                  _loc2_.taskSweep = false;
               }
               if(getTaskType(param1.id) == 3 || getTaskType(param1.taskId) == 3)
               {
                  this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/";
                  this.numStepper.visible = true;
               }
               if(getTaskType(param1.id) == 2)
               {
                  _core.remote.call("getLoopQuestStartTime",null,null);
               }
            }
            else
            {
               totalTime = param1.leftTime;
            }
         }
      }
      
      private function beginInit() : void
      {
         var _loc2_:* = undefined;
         var _loc1_:Array = new Array();
         if(GamePredef.TASK)
         {
            for(_loc2_ in GamePredef.TASK)
            {
               if(Boolean(GamePredef.TASK[_loc2_]) && Boolean(GamePredef.TASK[_loc2_].taskName) && Boolean(GamePredef.TASK[_loc2_].id) && ToolKit.isSmallOrEqual(GamePredef.TASK[_loc2_].id,50))
               {
                  _loc1_.push({
                     "label":GamePredef.TASK[_loc2_].taskName,
                     "data":GamePredef.TASK[_loc2_].id
                  });
               }
            }
         }
         if(Boolean(_loc1_) && _loc1_.length > _taskCombox.length)
         {
            _taskCombox = _loc1_;
            if(this.taskNameInfor)
            {
               this.taskNameInfor.dataProvider = _taskCombox;
            }
         }
      }
      
      public function set _taskCombox(param1:Array) : void
      {
         var _loc2_:Object = this._1595506734_taskCombox;
         if(_loc2_ !== param1)
         {
            this._1595506734_taskCombox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_taskCombox",_loc2_,param1));
         }
      }
      
      public function set bagLeft(param1:Label) : void
      {
         var _loc2_:Object = this._344437713bagLeft;
         if(_loc2_ !== param1)
         {
            this._344437713bagLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagLeft",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get useSweepItem() : CheckBox
      {
         return this._1254200744useSweepItem;
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
               _info = _info.replace("&#13;<font color=\'#00EEEE\'>Ngân phiếu nhận:<font color=\'#FFFFFF\'>{moneyBind}</font></font>","");
            }
            _info += "&#13;----------------";
            _loc2_++;
         }
         intro.htmlText = _info;
         this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/" + taskConfig.battleCount;
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
      
      public function set taskNameInfor(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1159596620taskNameInfor;
         if(_loc2_ !== param1)
         {
            this._1159596620taskNameInfor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskNameInfor",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numStepper() : NumericStepper
      {
         return this._401559445numStepper;
      }
      
      public function minusTime(param1:Event) : void
      {
         if(Boolean(totalTime) && totalTime >= 0)
         {
            --totalTime;
            if(_run == "...")
            {
               _run = "";
            }
            _run += ".";
            _secToTime(totalTime);
            if((taskConfig.battleCount * (taskConfig.time / 1000) - totalTime) % (taskConfig.time / 1000) == 0 && taskConfig.battleCount * (taskConfig.time / 1000) != totalTime)
            {
               _haveBattle = (taskConfig.battleCount * (taskConfig.time / 1000) - totalTime) / (taskConfig.time / 1000);
               introContent();
               _run = ".";
            }
            if(totalTime == 0)
            {
               _core.remote.call("taskSweepEnd",null,taskConfig.id,taskConfig.taskIndex);
               return;
            }
            doTask();
         }
         else if(Boolean(_timer) && _timer.running)
         {
            _timer.removeEventListener(TimerEvent.TIMER,minusTime);
            _timer.stop();
         }
      }
      
      private function introContent() : void
      {
         var _loc1_:Charactor = _core.getCharactor(_core.cid);
         var _loc2_:Number = 0;
         if(Boolean(GamePredef.EXP_SWEEP[taskConfig.id]) && Boolean(GamePredef.EXP_SWEEP[taskConfig.id][_haveBattle]))
         {
            _loc2_ = Math.round(GamePredef.BASIC_GET_EXP[_loc1_.level] * GamePredef.EXP_SWEEP[taskConfig.id][_haveBattle]);
         }
         else if(Boolean(taskConfig.id) && Boolean(getTaskType(taskConfig.id) == 3) && Boolean(taskConfig.exp))
         {
            _loc2_ = Math.round(taskConfig.exp);
         }
         var _loc3_:Number = 0;
         if(Boolean(GamePredef.MONEY_SWEEP[taskConfig.id]) && Boolean(GamePredef.MONEY_SWEEP[taskConfig.id][_haveBattle]))
         {
            _loc3_ = Math.round(GamePredef.BASIC_GET_MONEY[_loc1_.level] * GamePredef.MONEY_SWEEP[taskConfig.id][_haveBattle]);
         }
         if(Boolean(_info) && Boolean(_loc2_) && _loc2_ != 0)
         {
            _info = _info + "&#13;" + Language.TASKSWEEPPANEL_U[18].toString().replace("{num}",_haveBattle).replace("{exp}",_loc2_);
         }
         else
         {
            _info = Language.TASKSWEEPPANEL_U[18].toString().replace("{num}",_haveBattle).replace("{exp}",_loc2_);
         }
         if(Boolean(_info) && Boolean(_loc3_) && _loc3_ != 0)
         {
            _info = _info.replace("{moneyBind}",_loc3_);
         }
         else
         {
            _info = _info.replace("&#13;<font color=\'#00EEEE\'>Ngân phiếu nhận:<font color=\'#FFFFFF\'>{moneyBind}</font></font>","");
         }
         _info += "&#13;----------------";
         intro.htmlText = _info;
         this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/" + taskConfig.battleCount;
      }
      
      public function set battleCount(param1:Label) : void
      {
         var _loc2_:Object = this._775306441battleCount;
         if(_loc2_ !== param1)
         {
            this._775306441battleCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleCount",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get intro() : IntroText
      {
         return this._100361836intro;
      }
      
      private function turnSweep(param1:Number) : void
      {
         var handler:Function = null;
         var str:String = null;
         var type:Number = param1;
         if(Boolean(taskConfig) && Boolean(taskConfig.taskName) && Boolean(taskConfig.id))
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(!sweepFlag)
                  {
                     _core.remote.call("taskSweepSure",new Responder(onTaskSweepSure),taskConfig.id,_selected,taskConfig.battleCount,taskConfig.taskIndex);
                  }
                  else
                  {
                     _core.remote.call("taskSweepCancel",null,taskConfig.id);
                     if(type == 2)
                     {
                        closeSure();
                     }
                  }
               }
               if(param1.detail == Alert.NO)
               {
               }
            };
            if(_sweepAlert)
            {
               PopUpManager.removePopUp(_sweepAlert);
               _sweepAlert = null;
            }
            if(!sweepFlag)
            {
               str = Language.TASKSWEEPPANEL_U[6];
               str = str.replace("{money}",taskConfig.money).replace("{taskName}",taskConfig.taskName);
               if(Boolean(getTaskType(taskConfig.id)) && getTaskType(taskConfig.id) == 3)
               {
                  str = Language.TASKSWEEPPANEL_U[31];
                  str = str.replace("{taskName}",taskConfig.taskName);
               }
            }
            else
            {
               str = Language.TASKSWEEPPANEL_U[7];
               str = str.replace("{taskName}",taskConfig.taskName);
            }
            _sweepAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         }
      }
      
      public function showResult(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:* = undefined;
         if(param1)
         {
            if(!taskConfig)
            {
               taskConfig = GamePredef.TASK[param1.taskId];
               if(param1.st)
               {
                  taskConfig.st = param1.st;
               }
               else
               {
                  taskConfig.st = 0;
               }
               if(Boolean(param1.type) && param1.type == 2)
               {
                  taskConfig.typeflag = 2;
                  if(param1.num)
                  {
                     taskConfig.num = param1.num;
                  }
               }
               initTaskSweepPanel(taskConfig);
               if(Boolean(param1.type) && param1.type == 1)
               {
                  _left = "00:00";
               }
            }
            if(param1.succ)
            {
               if(param1.succ == 1)
               {
                  _info = _info + "&#13;" + Language.TASKSWEEPPANEL_U[19].toString().replace("{taskName}",taskConfig.taskName);
               }
               else
               {
                  _info = _info + "&#13;" + Language.TASKSWEEPPANEL_U[20].toString().replace("{taskName}",taskConfig.taskName);
               }
            }
            if(param1.expAdd)
            {
               _loc2_ = Language.TASKSWEEPPANEL_U[13];
               _loc2_ = _loc2_.replace("{expAdd}",Math.round(param1.expAdd));
               _info = _info + "&#13;" + _loc2_;
            }
            if(param1.moneyAdd)
            {
               _loc3_ = Language.TASKSWEEPPANEL_U[14];
               _loc3_ = _loc3_.replace("{moneyAdd}",Math.round(param1.moneyAdd));
               _info = _info + "&#13;" + _loc3_;
            }
            if(param1.act)
            {
               _loc4_ = Language.TASKSWEEPPANEL_U[15];
               _loc4_ = _loc4_.replace("{num}",param1.act);
               _info = _info + "&#13;" + _loc4_;
            }
            if(param1.act1)
            {
               _loc4_ = Language.TASKSWEEPPANEL_U[15];
               _loc4_ = _loc4_.replace("{num}",param1.act1);
               _info = _info + "&#13;" + _loc4_;
            }
            if(param1.eItem)
            {
               if(param1.eItem)
               {
                  for(_loc5_ in param1.eItem)
                  {
                     if(param1.eItem[_loc5_])
                     {
                        getItemInfo(param1.eItem[_loc5_]);
                     }
                  }
               }
            }
            if(Boolean(param1.type) && (param1.type == 1 || param1.type == 3))
            {
               if(param1.item1)
               {
                  for(_loc5_ in param1.item1)
                  {
                     if(param1.item1[_loc5_])
                     {
                        getItemInfo(param1.item1[_loc5_]);
                     }
                  }
               }
               if(param1.item2)
               {
                  for(_loc5_ in param1.item2)
                  {
                     if(param1.item2[_loc5_])
                     {
                        getItemInfo(param1.item2[_loc5_]);
                     }
                  }
               }
               if(param1.item3)
               {
                  getItemInfo(param1.item3);
               }
               if(param1.medal)
               {
                  getMedalInfo(param1.medal);
               }
            }
         }
         intro.htmlText = _info;
         _info = "";
         _haveBattle = 0;
      }
      
      public function onTaskSweepSure(param1:Object) : void
      {
         var _loc2_:Charactor = null;
         if(Boolean(param1) && Boolean(param1.taskId))
         {
            if(Boolean(param1.taskId) && Boolean(getTaskType(param1.taskId) == 2) || Boolean(param1.id) && Boolean(getTaskType(param1.id) == 2))
            {
               _core.remote.call("getLoopQuestStartTime",null,null);
            }
            this.numStepper.visible = false;
            if(Boolean(param1.st) && Boolean(param1.st == 0) || !param1.st)
            {
               totalTime = this.taskConfig.battleCount * this.taskConfig.time / 1000;
               this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": 0/" + this.taskConfig.battleCount;
            }
            if(Boolean(_timer) && _timer.running)
            {
               _timer.removeEventListener(TimerEvent.TIMER,minusTime);
               _timer.stop();
            }
            _timer.addEventListener(TimerEvent.TIMER,minusTime);
            _timer.start();
            sweepFlag = true;
            this.bt0.enabled = true;
            this.bt1.enabled = true;
            if(Boolean(param1.id) && Boolean(param1.taskName))
            {
               replaceIndex(param1.id,param1.taskName,getTaskType(param1.taskId));
            }
            this.taskNameInfor.enabled = false;
            this.bt0.label = Language.TASKSWEEPPANEL_U[8];
            _loc2_ = _core.getCharactor(_core.cid);
            if(_loc2_)
            {
               _loc2_.taskSweep = true;
            }
         }
      }
      
      public function replaceIndex(param1:int, param2:String, param3:int) : void
      {
         var _loc5_:* = undefined;
         var _loc4_:Array = new Array();
         if(param3 == 1)
         {
            _loc5_ = 0;
            while(_loc5_ < _taskCombox.length)
            {
               if(Boolean(_taskCombox[_loc5_]) && Boolean(_taskCombox[_loc5_].data) && _taskCombox[_loc5_].data == param1)
               {
                  _loc4_.push(_taskCombox[_loc5_]);
               }
               _loc5_++;
            }
            _loc5_ = 0;
            while(_loc5_ < _taskCombox.length)
            {
               if(Boolean(_taskCombox[_loc5_]) && Boolean(_taskCombox[_loc5_].data) && _taskCombox[_loc5_].data != param1)
               {
                  _loc4_.push(_taskCombox[_loc5_]);
               }
               _loc5_++;
            }
            if(_loc4_.length == _taskCombox.length)
            {
               _taskCombox = _loc4_;
               this.taskNameInfor.dataProvider = _taskCombox;
            }
         }
         else if(param3 == 2)
         {
            _loc5_ = 0;
            while(_loc5_ < _taskCombox1.length)
            {
               if(Boolean(_taskCombox1[_loc5_]) && Boolean(_taskCombox1[_loc5_].data) && _taskCombox1[_loc5_].data == param1)
               {
                  _loc4_.push(_taskCombox1[_loc5_]);
               }
               _loc5_++;
            }
            _loc5_ = 0;
            while(_loc5_ < _taskCombox1.length)
            {
               if(Boolean(_taskCombox1[_loc5_]) && Boolean(_taskCombox1[_loc5_].data) && _taskCombox1[_loc5_].data != param1)
               {
                  _loc4_.push(_taskCombox1[_loc5_]);
               }
               _loc5_++;
            }
            if(_loc4_.length == _taskCombox1.length)
            {
               _taskCombox1 = _loc4_;
               this.taskNameInfor.dataProvider = _taskCombox1;
            }
         }
         else if(param3 == 3)
         {
            _loc5_ = 0;
            while(_loc5_ < _taskCombox2.length)
            {
               if(Boolean(_taskCombox2[_loc5_]) && Boolean(_taskCombox2[_loc5_].data) && _taskCombox2[_loc5_].data == param1)
               {
                  _loc4_.push(_taskCombox2[_loc5_]);
               }
               _loc5_++;
            }
            _loc5_ = 0;
            while(_loc5_ < _taskCombox2.length)
            {
               if(Boolean(_taskCombox2[_loc5_]) && Boolean(_taskCombox2[_loc5_].data) && _taskCombox2[_loc5_].data != param1)
               {
                  _loc4_.push(_taskCombox2[_loc5_]);
               }
               _loc5_++;
            }
            if(_loc4_.length == _taskCombox2.length)
            {
               _taskCombox2 = _loc4_;
               this.taskNameInfor.dataProvider = _taskCombox2;
            }
         }
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
         var target:TaskSweepPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TaskSweepPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TaskSweepPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get reqTime() : Label
      {
         return this._1094713483reqTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get task() : BasicTitleCanvas
      {
         return this._3552645task;
      }
      
      public function __bt1_click(param1:MouseEvent) : void
      {
         turnSweepRight("");
      }
      
      private function changeValue() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(Boolean(this.numStepper.value) && this.numStepper.value > 0)
         {
            this.taskConfig.battleCount = Number(this.numStepper.value);
            _loc1_ = Math.floor(taskConfig.battleCount * (taskConfig.time / 60000));
            totalTime = taskConfig.battleCount * taskConfig.time / 1000;
            if(Boolean(taskConfig.st) && taskConfig.st != 0)
            {
               totalTime = Math.round((taskConfig.battleCount * taskConfig.time - taskConfig.st) / 1000);
               if(totalTime < 0)
               {
                  totalTime = 2;
               }
               _haveBattle = Math.floor(taskConfig.st / taskConfig.time);
               if(totalTime == 2)
               {
                  _haveBattle = int(taskConfig.battleCount) - int(1);
               }
               if(_haveBattle > 0)
               {
               }
            }
            _loc1_ = Math.floor(totalTime / 60);
            _loc2_ = 0;
            _loc3_ = "00";
            _loc4_ = 0;
            if(_loc1_ >= 60)
            {
               _loc2_ = Math.floor(_loc1_ / 60);
               _loc1_ %= 60;
               _loc4_ = Math.abs(totalTime % 60);
            }
            else if(_loc1_ >= 0)
            {
               _loc4_ = Math.abs(totalTime % 60);
            }
            if(_loc4_)
            {
               if(_loc4_ >= 10)
               {
                  _loc3_ = String(_loc4_);
               }
               else if(_loc4_ >= 0)
               {
                  _loc3_ = "0" + String(_loc4_);
               }
            }
            if(_loc2_ == 0)
            {
               this.time.setStyle("fontSize","50");
               this.time.x = 281.5;
               if(_loc1_ <= 9)
               {
                  _left = "0" + _loc1_ + ":" + _loc3_;
               }
               else
               {
                  _left = _loc1_ + ":" + _loc3_;
               }
            }
            else
            {
               this.time.setStyle("fontSize","47");
               this.time.x = 270.5;
               if(_loc1_ <= 9)
               {
                  _left = _loc2_ + ":0" + _loc1_ + ":" + _loc3_;
               }
               else
               {
                  _left = _loc2_ + ":" + _loc1_ + ":" + _loc3_;
               }
            }
         }
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
      
      private function _TaskSweepPanel_bindingsSetup() : Array
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
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            reqTime.filters = param1;
         },"reqTime.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            battleCount.filters = param1;
         },"battleCount.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            taskName.filters = param1;
         },"taskName.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt0.label = param1;
         },"bt0.label");
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
            bagLeft.filters = param1;
         },"bagLeft.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            bagLeft0.filters = param1;
         },"bagLeft0.filters");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt1.label = param1;
         },"bt1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useSweepItem.label = param1;
         },"useSweepItem.label");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            useSweepItem.filters = param1;
         },"useSweepItem.filters");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TASKSWEEPPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useSweepItem.toolTip = param1;
         },"useSweepItem.toolTip");
         result[11] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskName() : Label
      {
         return this._410330704taskName;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskNameInfor() : ComboBox
      {
         return this._1159596620taskNameInfor;
      }
      
      public function clickTaskSweep(param1:Number) : void
      {
         if(param1 == 1)
         {
            _core.remote.call("initTaskSweepPanelByClient",null,1616,0,1,param1);
         }
      }
      
      public function __useSweepItem_click(param1:MouseEvent) : void
      {
         chageSelected();
      }
      
      public function set bagLeft0(param1:Label) : void
      {
         var _loc2_:Object = this._2087634463bagLeft0;
         if(_loc2_ !== param1)
         {
            this._2087634463bagLeft0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagLeft0",_loc2_,param1));
         }
      }
      
      public function set useSweepItem(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1254200744useSweepItem;
         if(_loc2_ !== param1)
         {
            this._1254200744useSweepItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useSweepItem",_loc2_,param1));
         }
      }
      
      public function __taskNameInfor_close(param1:DropdownEvent) : void
      {
         closeHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : Label
      {
         return this._3560141time;
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
      
      public function set numStepper(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._401559445numStepper;
         if(_loc2_ !== param1)
         {
            this._401559445numStepper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numStepper",_loc2_,param1));
         }
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
      
      public function __task_creationComplete(param1:FlexEvent) : void
      {
         init();
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
      
      private function onGetTaskBattleTime(param1:Object) : void
      {
         _finishFlag = true;
      }
      
      public function onTaskSweepCancel(param1:Object) : void
      {
         sweepFlag = false;
         if(Boolean(_timer) && _timer.running)
         {
            _timer.removeEventListener(TimerEvent.TIMER,minusTime);
            _timer.stop();
         }
         param1.succ = 2;
         showResult(param1);
         this.bt0.enabled = true;
         this.bt0.label = Language.TASKSWEEPPANEL_U[5];
         this.bt1.enabled = true;
         if(getTaskType(param1.taskId) == 1)
         {
            this.taskNameInfor.enabled = true;
         }
         else
         {
            this.taskNameInfor.enabled = false;
         }
         this.visible = true;
         var _loc2_:Charactor = _core.getCharactor(_core.cid);
         if(getTaskType(param1.id) == 3 || getTaskType(param1.taskId) == 3)
         {
            this.battleCount.text = Language.TASKSWEEPPANEL_U[2] + ": " + _haveBattle + "/";
            this.numStepper.visible = true;
         }
         if(_loc2_)
         {
            _loc2_.taskSweep = false;
         }
      }
      
      private function _TaskSweepPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _taskName;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TASKSWEEPPANEL_U[5];
         _loc1_ = _left;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TASKSWEEPPANEL_U[25];
         _loc1_ = Language.TASKSWEEPPANEL_U[27];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TASKSWEEPPANEL_U[28];
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
      
      [Bindable(event="propertyChange")]
      private function get _left() : String
      {
         return this._91052262_left;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagLeft0() : Label
      {
         return this._2087634463bagLeft0;
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
   }
}

