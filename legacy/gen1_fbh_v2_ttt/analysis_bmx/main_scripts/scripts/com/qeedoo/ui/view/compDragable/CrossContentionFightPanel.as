package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionFightPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const PVP_NUM:int = 25;
      
      public static const PVE_NUM:int = 20;
      
      public static const CD_TIME:Number = 10 * 60 * 1000;
      
      public var _CrossContentionFightPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var _976080868pvpnum:RoundedLabel;
      
      public var areaId:int = 0;
      
      public var _CrossContentionFightPanel_RoundedLabel1:RoundedLabel;
      
      public var _CrossContentionFightPanel_RoundedLabel2:RoundedLabel;
      
      public var _CrossContentionFightPanel_RoundedLabel4:RoundedLabel;
      
      public var _CrossContentionFightPanel_RoundedLabel5:RoundedLabel;
      
      public var GOLD_NUM:int = 200;
      
      private var _976408569pvenum:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _helpAlert:Alert;
      
      public var GOLD_CD:int = 10;
      
      public var pvpCd:Number = 0;
      
      public var mapData:Object = new Object();
      
      public var mapId:int = 0;
      
      public var isBoss:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _CrossContentionFightPanel_DelayButton1:DelayButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var bossNid:int = 0;
      
      public var pveCd:Number = 0;
      
      public var pveNum:int = 20;
      
      public var _CrossContentionFightPanel_LinkButton1:LinkButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":275,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "7";
                     this.right = "7";
                     this.top = "39";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":181,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_CrossContentionFightPanel_RoundedLabel1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":4,
                                 "width":241
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_CrossContentionFightPanel_RoundedLabel2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":20,
                                 "y":44,
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"pvenum",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 32768;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "htmlText":"",
                                 "x":130,
                                 "y":44,
                                 "width":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_CrossContentionFightPanel_BasicGlowButton1",
                           "events":{"click":"___CrossContentionFightPanel_BasicGlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":44,
                                 "width":60,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_CrossContentionFightPanel_RoundedLabel4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":88,
                                 "width":241
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_CrossContentionFightPanel_RoundedLabel5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":20,
                                 "y":128,
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"pvpnum",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 32768;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "htmlText":"",
                                 "x":130,
                                 "y":128,
                                 "width":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_CrossContentionFightPanel_BasicGlowButton2",
                           "events":{"click":"___CrossContentionFightPanel_BasicGlowButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "7";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":128,
                                 "width":60,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"_CrossContentionFightPanel_DelayButton1",
                  "events":{"click":"___CrossContentionFightPanel_DelayButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "7";
                     this.left = "99";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":10000,
                        "width":60,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_CrossContentionFightPanel_LinkButton1",
                  "events":{"click":"___CrossContentionFightPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "7";
                     this.color = 16770560;
                     this.textDecoration = "underline";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":78};
                  }
               })]
            };
         }
      });
      
      public var pvpNum:int = 25;
      
      private var _core:Core = Core.getInstance();
      
      public var _CrossContentionFightPanel_BasicGlowButton1:BasicGlowButton;
      
      public function CrossContentionFightPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 275;
         this.height = 250;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionFightPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionFightPanel._watcherSetupUtil = param1;
      }
      
      private function buy(param1:Number, param2:Boolean) : void
      {
         var type:Number = param1;
         var isPVE:Boolean = param2;
         var now:Number = new Date().getDate();
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("minusMoneyForCrossContention",null,type,isPVE);
            }
         };
         if(type == -2)
         {
            if(isPVE)
            {
               if(pveCd < now)
               {
                  _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[63]);
               }
               else
               {
                  Alert.show(Language.CROSS_CONTENTION_PANEL_U[62].toString().replace("{gold}",GOLD_CD),"",Alert.YES | Alert.NO,null,func);
               }
            }
            else if(pvpCd < now)
            {
               _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[63]);
            }
            else
            {
               Alert.show(Language.CROSS_CONTENTION_PANEL_U[62].toString().replace("{gold}",GOLD_CD),"",Alert.YES | Alert.NO,null,func);
            }
         }
         else
         {
            Alert.show(Language.CROSS_CONTENTION_PANEL_U[61].toString().replace("{gold}",GOLD_NUM),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      private function _CrossContentionFightPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[118];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[50];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[52];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[54];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[51];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[52];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[54];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[49];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[46];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionFightPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionFightPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionFightPanelWatcherSetupUtil");
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
      
      public function showPanel() : void
      {
         _core.remote.call("getCrossContentionFlag",null);
      }
      
      public function ___CrossContentionFightPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         buy(-1,false);
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      public function onAddCrossContentionFlag(param1:Object) : void
      {
         onGetData(param1);
      }
      
      public function set pvenum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._976408569pvenum;
         if(_loc2_ !== param1)
         {
            this._976408569pvenum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvenum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pvpnum() : RoundedLabel
      {
         return this._976080868pvpnum;
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Date = null;
         pvpNum = PVP_NUM;
         pveNum = PVE_NUM;
         this.visible = true;
         this.pvenum.htmlText = String(PVE_NUM);
         this.pvpnum.htmlText = String(PVP_NUM);
         if(Boolean(param1) && Boolean(param1.PVP) && Boolean(param1.PVP.timenow) && Boolean(param1.PVP.timestr) && String(param1.PVP.timenow) == String(param1.PVP.timestr))
         {
            _loc2_ = int(param1.PVP.validnum);
            _loc3_ = 0;
            if(param1.PVP.fightnum != null)
            {
               _loc3_ = int(param1.PVP.fightnum);
            }
            this.pvpnum.htmlText = String(_loc2_ - _loc3_);
            _loc4_ = 0;
            if(Boolean(param1) && Boolean(param1.PVP) && Boolean(param1.PVP.cdnum))
            {
               _loc4_ = int(param1.PVP.cdnum);
            }
            if(_loc4_ == 0)
            {
               _loc5_ = Number(0);
               if(Boolean(param1) && Boolean(param1.PVP) && Boolean(param1.PVP.fighttime))
               {
                  _loc5_ = Number(param1.PVP.fighttime) + CD_TIME;
                  _loc6_ = new Date(_loc5_);
                  pvpCd = _loc6_.getTime();
                  if(pvpCd > new Date().getTime())
                  {
                  }
               }
            }
         }
         if(Boolean(param1) && Boolean(param1.PVE) && Boolean(param1.PVE.timenow) && Boolean(param1.PVE.timestr) && String(param1.PVE.timenow) == String(param1.PVE.timestr))
         {
            _loc2_ = int(param1.PVE.validnum);
            _loc3_ = 0;
            if(param1.PVE.fightnum != null)
            {
               _loc3_ = int(param1.PVE.fightnum);
            }
            this.pvenum.htmlText = String(_loc2_ - _loc3_);
            _loc4_ = 0;
            if(Boolean(param1) && Boolean(param1.PVE) && Boolean(param1.PVE.cdnum))
            {
               _loc4_ = int(param1.PVE.cdnum);
            }
            if(_loc4_ == 0)
            {
               _loc5_ = Number(0);
               if(Boolean(param1) && Boolean(param1.PVE) && Boolean(param1.PVE.fighttime))
               {
                  _loc5_ = Number(param1.PVE.fighttime) + CD_TIME;
                  _loc6_ = new Date(_loc5_);
                  pveCd = _loc6_.getTime();
                  if(pveCd > new Date().getTime())
                  {
                  }
               }
            }
         }
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_CONTENTION_PANEL_U[47].toString();
         _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[47].toString(),Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get pvenum() : RoundedLabel
      {
         return this._976408569pvenum;
      }
      
      public function ___CrossContentionFightPanel_DelayButton1_click(param1:MouseEvent) : void
      {
         startFight();
      }
      
      public function ___CrossContentionFightPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      private function startFight() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = isBoss;
         if(Boolean(mapData && mapData["mData"] && mapData["mData"][areaId]) && Boolean(mapData["mData"][areaId].state1 != null) && mapData["mData"][areaId].state1 == 1)
         {
            _loc1_ = false;
         }
         if(!_loc1_)
         {
            if(Number(mapData.original_server_id) == Number(mapData["mData"][areaId].osid))
            {
               _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[65]);
               return;
            }
         }
         if(_loc1_ && !_loc2_)
         {
            _loc3_ = Number(GamePredef.CROSS_CONTENTION_P_DATA[GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[mapId]][areaId].p].lvl);
            _loc4_ = Number(GamePredef.CROSS_CONTENTION_P_DATA[GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[mapId]][areaId].p].lvl2);
            if(CrossContentionTotalPanel.LEVLE_TYPE == 1)
            {
               if(_core.player.level < _loc3_ || _core.player.level > _loc4_)
               {
                  _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[64]);
                  return;
               }
            }
            else if(CrossContentionTotalPanel.LEVLE_TYPE == 2)
            {
               if(_core.player.level > _loc4_)
               {
                  _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[64]);
                  return;
               }
            }
            else if(CrossContentionTotalPanel.LEVLE_TYPE == 3)
            {
               if(_core.player.level < _loc3_)
               {
                  _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[64]);
                  return;
               }
            }
         }
         _core.remote.call("crossContentionFight",null,mapId,areaId,_loc1_,_loc2_);
      }
      
      public function ___CrossContentionFightPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set pvpnum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._976080868pvpnum;
         if(_loc2_ !== param1)
         {
            this._976080868pvpnum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvpnum",_loc2_,param1));
         }
      }
      
      public function ___CrossContentionFightPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         buy(-1,true);
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      private function _CrossContentionFightPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[118];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_RoundedLabel1.htmlText = param1;
         },"_CrossContentionFightPanel_RoundedLabel1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_RoundedLabel2.htmlText = param1;
         },"_CrossContentionFightPanel_RoundedLabel2.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_BasicGlowButton1.label = param1;
         },"_CrossContentionFightPanel_BasicGlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_RoundedLabel4.htmlText = param1;
         },"_CrossContentionFightPanel_RoundedLabel4.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_RoundedLabel5.htmlText = param1;
         },"_CrossContentionFightPanel_RoundedLabel5.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_BasicGlowButton2.label = param1;
         },"_CrossContentionFightPanel_BasicGlowButton2.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_DelayButton1.label = param1;
         },"_CrossContentionFightPanel_DelayButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFightPanel_LinkButton1.label = param1;
         },"_CrossContentionFightPanel_LinkButton1.label");
         result[8] = binding;
         return result;
      }
   }
}

