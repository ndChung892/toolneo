package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.DelayButton;
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
   import mx.controls.DataGrid;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BloodyBattleInfoPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const totolNum:int = 56;
      
      private var _1479413766lastCreNum:Label;
      
      private var _255818474rankList:DataGrid;
      
      private var _state:int;
      
      mx_internal var _watchers:Array = [];
      
      public var _BloodyBattleInfoPanel_Button1:Button;
      
      private var _1535831509openTiShi:Button;
      
      private var _1459413373lastTime:Label;
      
      private var _1702613338selfScore:Label;
      
      private var _763223204rankCanvas:Canvas;
      
      private var _timer:Timer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1945394728infoLbl:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _lastTime:int;
      
      private var _2072063257closeTiShi:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":360,
               "height":389,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"rankCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":300,
                        "height":378,
                        "styleName":"StandardContent",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "x":50,
                        "y":2,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":276,
                                 "height":234,
                                 "styleName":"CanvasBorder",
                                 "x":13,
                                 "y":35,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"rankList",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "width":374,
                                          "height":274,
                                          "x":9,
                                          "y":7,
                                          "columns":[_BloodyBattleInfoPanel_DataGridColumn1_c(),_BloodyBattleInfoPanel_DataGridColumn2_c(),_BloodyBattleInfoPanel_DataGridColumn3_c()]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lastCreNum",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.bottom = "60";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":12};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"infoLbl",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                              this.bottom = "40";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":13};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lastTime",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.bottom = "20";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":13};
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "events":{"click":"___BloodyBattleInfoPanel_DelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdGreen",
                                 "label":"卡号自救",
                                 "y":341,
                                 "x":214
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "text":"个人积分：",
                                 "y":277
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"selfScore",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":70,
                                 "y":277,
                                 "text":"0"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_BloodyBattleInfoPanel_Button1",
                           "events":{"click":"___BloodyBattleInfoPanel_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":317,
                                 "x":214,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"openTiShi",
                  "events":{"click":"__openTiShi_click"},
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "-7";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"EquipBagLeft",
                        "x":346,
                        "width":11,
                        "height":131,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"closeTiShi",
                  "events":{"click":"__closeTiShi_click"},
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "-8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"EquipBagRight",
                        "x":42,
                        "width":11,
                        "height":131,
                        "visible":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___BloodyBattleInfoPanel_Button4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":2,
                        "x":-2,
                        "styleName":"BtnWbQuit",
                        "height":50,
                        "width":50
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function BloodyBattleInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 360;
         this.height = 389;
         this.clipContent = false;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BloodyBattleInfoPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastTime() : Label
      {
         return this._1459413373lastTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastCreNum() : Label
      {
         return this._1479413766lastCreNum;
      }
      
      public function ___BloodyBattleInfoPanel_Button1_click(param1:MouseEvent) : void
      {
         showBattle();
      }
      
      public function set lastTime(param1:Label) : void
      {
         var _loc2_:Object = this._1459413373lastTime;
         if(_loc2_ !== param1)
         {
            this._1459413373lastTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastTime",_loc2_,param1));
         }
      }
      
      public function set lastCreNum(param1:Label) : void
      {
         var _loc2_:Object = this._1479413766lastCreNum;
         if(_loc2_ !== param1)
         {
            this._1479413766lastCreNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastCreNum",_loc2_,param1));
         }
      }
      
      private function showBattle() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_BATTLESET);
         _core.view.getUI(ViewManager.PANEL_BATTLESET).updateView();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BloodyBattleInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BloodyBattleInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_BloodyBattleInfoPanelWatcherSetupUtil");
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
      
      public function __closeTiShi_click(param1:MouseEvent) : void
      {
         openCloseCanvas(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get selfScore() : Label
      {
         return this._1702613338selfScore;
      }
      
      public function set openTiShi(param1:Button) : void
      {
         var _loc2_:Object = this._1535831509openTiShi;
         if(_loc2_ !== param1)
         {
            this._1535831509openTiShi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openTiShi",_loc2_,param1));
         }
      }
      
      public function updateBloodyBattlePanel(param1:Object) : void
      {
         if(!initialized)
         {
            return;
         }
         _core.remote.call("getBBPersonalScore",new Responder(onGetPersonalScore),_core.cid);
         var _loc2_:int = int(param1["state"]);
         _state = _loc2_;
         var _loc3_:Number = Number(param1["curHp"]);
         var _loc4_:Array = param1["rank"];
         rankList.dataProvider = _loc4_;
         _lastTime = int(param1["lastTime"]);
         var _loc5_:int = int(param1["lastCreNum"]);
         if(_loc2_ == 3 || _loc2_ == 4)
         {
            lastCreNum.text = "剩余怪物数量：" + _loc5_ + "/" + totolNum;
         }
         else if(_loc2_ == 5)
         {
            lastCreNum.text = "BOSS剩余血量：" + Math.ceil(_loc3_);
         }
         else if(_loc2_ == 2)
         {
            lastCreNum.text = "";
         }
         if(_loc2_ == 3 || _loc2_ == 4)
         {
            infoLbl.text = "(击杀所有怪物可以进入下一阶段)";
         }
         else if(_loc2_ == 5)
         {
            infoLbl.text = "(最后一击的玩家可获得额外奖励)";
         }
         else if(_loc2_ == 2)
         {
            infoLbl.text = "目前为准备阶段，可自由组队";
         }
         updateActTimer();
      }
      
      public function updateActLastTime(param1:Event) : *
      {
         --_lastTime;
         var _loc2_:int = _lastTime / 3600;
         var _loc3_:int = _lastTime % 3600 / 60;
         var _loc4_:int = _lastTime % 3600 % 60;
         lastTime.text = "活动剩余时间：" + "0" + _loc2_ + ":";
         if(_loc3_ < 10)
         {
            lastTime.text = lastTime.text + "0" + _loc3_ + ":";
         }
         else
         {
            lastTime.text = lastTime.text + _loc3_ + ":";
         }
         if(_loc4_ < 10)
         {
            lastTime.text = lastTime.text + "0" + _loc4_;
         }
         else
         {
            lastTime.text += _loc4_;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLbl() : Label
      {
         return this._1945394728infoLbl;
      }
      
      private function _BloodyBattleInfoPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "排名";
         _loc1_.dataField = "rank";
         return _loc1_;
      }
      
      private function _BloodyBattleInfoPanel_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "积分";
         _loc1_.dataField = "score";
         return _loc1_;
      }
      
      private function leaveBB() : void
      {
         var func:Function = null;
         if(_core.player.isDead)
         {
            Alert.show("死亡状态无法退出");
            return;
         }
         if(_state != 2)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("bbLeaveScene",null);
               }
            };
            Alert.show("现在已经过了准备阶段，退出场景后无法返回，你确定要退出吗？","",Alert.YES | Alert.CANCEL,null,func);
         }
         else
         {
            _core.remote.call("bbLeaveScene",null);
         }
      }
      
      private function _BloodyBattleInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MINIMAPCANVAS_U[18];
      }
      
      public function updateActTimer() : *
      {
         var _loc1_:int = 0;
         if(!_timer)
         {
            _loc1_ = 1 * 1000;
            _timer = new Timer(_loc1_,0);
            _timer.addEventListener(TimerEvent.TIMER,updateActLastTime);
            _timer.start();
         }
      }
      
      public function __openTiShi_click(param1:MouseEvent) : void
      {
         openCloseCanvas(0);
      }
      
      public function set rankCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._763223204rankCanvas;
         if(_loc2_ !== param1)
         {
            this._763223204rankCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankCanvas",_loc2_,param1));
         }
      }
      
      public function openCloseCanvas(param1:int) : void
      {
         if(param1 == 0)
         {
            show();
            rankCanvas.visible = true;
            closeTiShi.visible = true;
            openTiShi.visible = false;
         }
         else if(param1 == 1)
         {
            rankCanvas.visible = false;
            closeTiShi.visible = false;
            openTiShi.visible = true;
         }
      }
      
      public function set closeTiShi(param1:Button) : void
      {
         var _loc2_:Object = this._2072063257closeTiShi;
         if(_loc2_ !== param1)
         {
            this._2072063257closeTiShi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeTiShi",_loc2_,param1));
         }
      }
      
      public function ___BloodyBattleInfoPanel_Button4_click(param1:MouseEvent) : void
      {
         leaveBB();
      }
      
      public function set rankList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._255818474rankList;
         if(_loc2_ !== param1)
         {
            this._255818474rankList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openTiShi() : Button
      {
         return this._1535831509openTiShi;
      }
      
      private function _BloodyBattleInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BloodyBattleInfoPanel_Button1.label = param1;
         },"_BloodyBattleInfoPanel_Button1.label");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankCanvas() : Canvas
      {
         return this._763223204rankCanvas;
      }
      
      public function set infoLbl(param1:Label) : void
      {
         var _loc2_:Object = this._1945394728infoLbl;
         if(_loc2_ !== param1)
         {
            this._1945394728infoLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLbl",_loc2_,param1));
         }
      }
      
      public function ___BloodyBattleInfoPanel_DelayButton1_click(param1:MouseEvent) : void
      {
         saveSelf();
      }
      
      [Bindable(event="propertyChange")]
      public function get closeTiShi() : Button
      {
         return this._2072063257closeTiShi;
      }
      
      private function saveSelf() : void
      {
         _core.remote.call("bbTransToSafe",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get rankList() : DataGrid
      {
         return this._255818474rankList;
      }
      
      public function set selfScore(param1:Label) : void
      {
         var _loc2_:Object = this._1702613338selfScore;
         if(_loc2_ !== param1)
         {
            this._1702613338selfScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfScore",_loc2_,param1));
         }
      }
      
      private function _BloodyBattleInfoPanel_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "姓名";
         _loc1_.width = 250;
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      private function onGetPersonalScore(param1:Number) : void
      {
         if(param1)
         {
            selfScore.text = String(param1);
         }
      }
      
      public function show() : void
      {
         visible = true;
         _core.remote.call("getBloodyBattleInfo",new Responder(updateBloodyBattlePanel));
      }
   }
}

