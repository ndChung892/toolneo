package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.LotteryItemSlot;
   import com.qeedoo.ui.view.comp.RoundCanvas;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Button;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LuckDrawPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _935514565chanceCount:int = 0;
      
      private var _1628325440activityDesc:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":530,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_LuckDrawPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "x":0,
                        "y":0,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 0;
                              this.left = "45";
                              this.top = "40";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HTabWrapper",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"idTabCanvas1",
                                    "events":{"click":"__idTabCanvas1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "styleName":"HorizontalTab",
                                          "selected":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"idTabCanvas2",
                                    "events":{"click":"__idTabCanvas2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"idTabCanvas3",
                                    "events":{"click":"__idTabCanvas3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"vs",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.left = "10";
                              this.right = "10";
                              this.top = "65";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"onceLuckDraw",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":465,
                                       "width":690,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "stylesFactory":function():void
                                          {
                                             this.left = "5";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":450,
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":RoundCanvas,
                                                   "id":"vipTile",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "width":430,
                                                         "percentHeight":100,
                                                         "y":10,
                                                         "x":10,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_0"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_1"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_2"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_3"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_4"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_5"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_6"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_7"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_8"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_9"
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Button,
                                                   "id":"luckDrawButtonOnce",
                                                   "events":{"click":"__luckDrawButtonOnce_click"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"BtnLottery",
                                                         "x":160,
                                                         "y":145
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":DelayButton,
                                                   "id":"luckDrawButtonAll",
                                                   "events":{"click":"__luckDrawButtonAll_click"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":380,
                                                         "y":410,
                                                         "clickDelay":3000,
                                                         "styleName":"CrystalYellowButton"
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RoundedLabel,
                                                   "id":"onceRemainCount",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.top = "8";
                                                      this.color = 16777215;
                                                      this.horizontalCenter = "0";
                                                      this.fontSize = 14;
                                                      this.textAlign = "center";
                                                      this.fontStyle = "normal";
                                                      this.fontWeight = "bold";
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"_LuckDrawPanel_RoundedLabel2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                             this.horizontalCenter = "0";
                                             this.fontSize = 14;
                                             this.textAlign = "center";
                                             this.fontStyle = "normal";
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":280,
                                                "y":390
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "stylesFactory":function():void
                                          {
                                             this.right = "5";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":200,
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":RoundedLabel,
                                                   "id":"_LuckDrawPanel_RoundedLabel3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.top = "8";
                                                      this.color = 16777215;
                                                      this.horizontalCenter = "0";
                                                      this.fontSize = 14;
                                                      this.textAlign = "center";
                                                      this.fontStyle = "normal";
                                                      this.fontWeight = "bold";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":LinkTextArea,
                                                   "id":"linkVip",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.backgroundAlpha = 0.3;
                                                      this.backgroundColor = 0;
                                                      this.borderStyle = "none";
                                                      this.color = 16774324;
                                                      this.bottom = "5";
                                                      this.left = "2";
                                                      this.right = "2";
                                                      this.top = "30";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "editable":false,
                                                         "enabled":true,
                                                         "selectable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"activityDesc",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":465,
                                       "width":690,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "stylesFactory":function():void
                                          {
                                             this.left = "5";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":670,
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Text,
                                                   "id":"_LuckDrawPanel_Text1",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "10";
                                                      this.fontSize = 14;
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"height":400};
                                                   }
                                                })]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _LuckDrawPanel_RoundedLabel2:RoundedLabel;
      
      private var _2113293147slot2_0:LotteryItemSlot;
      
      private var _88560074onceLuckDraw:Canvas;
      
      private var _3773vs:ViewStack;
      
      private var _2113293146slot2_1:LotteryItemSlot;
      
      private var TICKET_ID:Number = 3736;
      
      private var _277229568idTabCanvas2:BasicGlowButton;
      
      private var isDeleay:Boolean = false;
      
      private var _2113293145slot2_2:LotteryItemSlot;
      
      private var doCount:int = 0;
      
      private var timer:Timer;
      
      private var _177071555linkVip:LinkTextArea;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var isStart:Boolean = false;
      
      public var _LuckDrawPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2113293144slot2_3:LotteryItemSlot;
      
      private var currentPix:int = -1;
      
      private var _slotNum:Number = 10;
      
      private var _core:Core = Core.getInstance();
      
      private var _2113293143slot2_4:LotteryItemSlot;
      
      public var highestAwardArr:Array = new Array();
      
      private var _click:Number = 0;
      
      private var _1256808642onceRemainCount:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _arr:Array = new Array();
      
      private var _2113293142slot2_5:LotteryItemSlot;
      
      private var _277229567idTabCanvas3:BasicGlowButton;
      
      private var _277229569idTabCanvas1:BasicGlowButton;
      
      private var _2113293139slot2_8:LotteryItemSlot;
      
      private var _2002514760luckDrawButtonOnce:Button;
      
      private var _2113293141slot2_6:LotteryItemSlot;
      
      private var luckDrawAward:Object = new Object();
      
      private var index:Number = 0;
      
      private var _463353963vipTile:RoundCanvas;
      
      public var _LuckDrawPanel_Text1:Text;
      
      private var _2142793722luckDrawButtonAll:DelayButton;
      
      private var rungroup:int = 0;
      
      private var _2113293138slot2_9:LotteryItemSlot;
      
      private var ITEM_TYPE:Number = 29;
      
      private var _2113293140slot2_7:LotteryItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _1772274670allCount:int = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var runNum:int = 3;
      
      public var _LuckDrawPanel_RoundedLabel3:RoundedLabel;
      
      public function LuckDrawPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 530;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___LuckDrawPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LuckDrawPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas2() : BasicGlowButton
      {
         return this._277229568idTabCanvas2;
      }
      
      public function set idTabCanvas3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229567idTabCanvas3;
         if(_loc2_ !== param1)
         {
            this._277229567idTabCanvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas3",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         _core.remote.call("getLuckDrawData",new Responder(onGetLuckDrawData),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get luckDrawButtonAll() : DelayButton
      {
         return this._2142793722luckDrawButtonAll;
      }
      
      public function set idTabCanvas2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229568idTabCanvas2;
         if(_loc2_ !== param1)
         {
            this._277229568idTabCanvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas2",_loc2_,param1));
         }
      }
      
      protected function start3(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:int = 0;
         while(_loc2_ < _slotNum)
         {
            this["slot2_" + _loc2_].change(false);
            _loc2_++;
         }
         if(!param1)
         {
            luckDrawButtonAll.enabled = true;
            return;
         }
         var _loc3_:Number = Number(param1.val);
         chanceCount = param1.ticketnum;
         onceRemainCount.text = Language.LUCKDRAWPANEL_U[8] + chanceCount;
         allCount = param1.allNum;
         luckDrawButtonAll.toolTip = Language.LUCKDRAWPANEL_U[13].toString().replace("{num}",param1.allNum);
         luckDrawButtonAll.enabled = true;
         for(_loc4_ in _arr)
         {
            if(ToolKit.isEqual(_arr[_loc4_],_loc3_))
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         this["slot2_" + _loc3_].change(true);
      }
      
      public function set luckDrawButtonAll(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2142793722luckDrawButtonAll;
         if(_loc2_ !== param1)
         {
            this._2142793722luckDrawButtonAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"luckDrawButtonAll",_loc2_,param1));
         }
      }
      
      protected function start2(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         if(!param1)
         {
            luckDrawButtonOnce.enabled = true;
            return;
         }
         var _loc2_:Number = Number(param1.val);
         chanceCount = param1.ticketnum;
         onceRemainCount.text = Language.LUCKDRAWPANEL_U[8] + chanceCount;
         allCount = param1.allNum;
         luckDrawButtonAll.toolTip = Language.LUCKDRAWPANEL_U[13].toString().replace("{num}",param1.allNum);
         for(_loc3_ in _arr)
         {
            if(ToolKit.isEqual(_arr[_loc3_],_loc2_))
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_ >= 0)
         {
            _loc4_ = 0;
            while(_loc4_ < _slotNum)
            {
               this["slot2_" + _loc4_].change(false);
               _loc4_++;
            }
            isDeleay = false;
            rungroup = 0;
            ++doCount;
            currentPix = _loc2_;
            runNum = Math.round(Math.random() * 2) + 2;
            if(Boolean(timer) && timer.running)
            {
               timer.removeEventListener(TimerEvent.TIMER,onTimer2);
               timer.stop();
               timer = null;
            }
            timer = new Timer(100);
            timer.addEventListener(TimerEvent.TIMER,onTimer2);
            timer.start();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas3() : BasicGlowButton
      {
         return this._277229567idTabCanvas3;
      }
      
      [Bindable(event="propertyChange")]
      public function get allCount() : int
      {
         return this._1772274670allCount;
      }
      
      public function __luckDrawButtonAll_click(param1:MouseEvent) : void
      {
         onAllClick();
      }
      
      public function __idTabCanvas1_click(param1:MouseEvent) : void
      {
         setTab(1);
      }
      
      private function _LuckDrawPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.LUCKDRAWPANEL_U[0];
         _loc1_ = Language.LUCKDRAWPANEL_U[3];
         _loc1_ = Language.LUCKDRAWPANEL_U[4];
         _loc1_ = Language.LUCKDRAWPANEL_U[11];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(3130090000055));
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.LUCKDRAWPANEL_U[5];
         _loc1_ = Language.LUCKDRAWPANEL_U[13];
         _loc1_ = Language.LUCKDRAWPANEL_U[8] + chanceCount;
         _loc1_ = Language.LUCKDRAWPANEL_U[10];
         _loc1_ = Language.VIPSHOPPANEL_U[3];
         _loc1_ = Language.LUCKDRAWPANEL_U[12];
      }
      
      [Bindable(event="propertyChange")]
      public function get onceLuckDraw() : Canvas
      {
         return this._88560074onceLuckDraw;
      }
      
      [Bindable(event="propertyChange")]
      public function get chanceCount() : int
      {
         return this._935514565chanceCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get activityDesc() : Canvas
      {
         return this._1628325440activityDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get luckDrawButtonOnce() : Button
      {
         return this._2002514760luckDrawButtonOnce;
      }
      
      protected function onTimer2(param1:TimerEvent) : void
      {
         if(index < 0)
         {
            index = _slotNum - 1;
            ++rungroup;
         }
         isStart = true;
         if(isDeleay)
         {
            timer.delay += 50;
         }
         else if(rungroup > runNum && currentPix == index)
         {
            isDeleay = true;
         }
         this["slot2_" + index].change(true);
         if(timer.delay > 400)
         {
            if(index == currentPix)
            {
               if(Boolean(timer) && timer.running)
               {
                  timer.stop();
                  timer.removeEventListener(TimerEvent.TIMER,onTimer2);
                  timer = null;
               }
               this["slot2_" + (index + 1) % _slotNum].change(false);
               this["slot2_" + index].change(true);
               _core.remote.call("luckDrawResultBoast",null,2);
               isStart = false;
               luckDrawButtonOnce.enabled = true;
               index = 0;
               isStart = false;
               isDeleay = false;
               rungroup = 0;
               doCount = 0;
               currentPix = -1;
               return;
            }
         }
         this["slot2_" + (index + 1) % _slotNum].change(false);
         if(isStart)
         {
            this["slot2_" + index].change(true);
         }
         --index;
      }
      
      public function superLuckDrawShow(param1:Object, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:String = "";
         if(Boolean(param1.p) && Boolean(param1.p > 10) && param1.type != 3)
         {
            _loc4_ = _core.data.getGameData(param1.ti,param1.ii);
            if(!_loc4_)
            {
               return;
            }
            if(!_loc4_.color || _loc4_.color < 0)
            {
               _loc4_.color = 0;
            }
            _loc3_ = Language.NOTICE_INFO[73];
            if(!_loc3_)
            {
               return;
            }
            _loc3_ = _loc3_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.name + "|0|0|0]"));
            if(param1.ti == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               if(!param1.cl)
               {
                  if(_loc4_.color > 0)
                  {
                     param1.cl = _loc4_.color;
                  }
                  else
                  {
                     param1.cl = 0;
                  }
               }
               _loc6_ = _core.data.gameData[param1.ti][param1.ii];
               if(_loc6_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
               {
                  _loc7_ = Number(param1.q) * 10 + 6;
                  _loc3_ = _loc3_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc4_.name + "|" + param1.cl + "|" + 0 + "|" + _loc7_ + "]"));
               }
               else
               {
                  _loc3_ = _loc3_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc4_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
               }
            }
            else if(param1.ti == GamePredef.TBL_ITEM_TEMPLATE)
            {
               if(!param1.cl)
               {
                  if(_loc4_.color > 0)
                  {
                     param1.cl = _loc4_.color;
                  }
                  else
                  {
                     param1.cl = 0;
                  }
               }
               _loc3_ = _loc3_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + param1.ii + "|" + _loc4_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
            }
            else if(param1.ti == GamePredef.TBL_CREATURE)
            {
               _loc8_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(param1.q)] + "\'>[" + _loc4_.name + "]</font>";
               _loc3_ = _loc3_.replace("{item}",_loc8_);
            }
            _loc3_ = _loc3_.replace("{num}",param1.n);
            _loc5_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[6] + "\'>" + TextUtil.decode(_loc3_) + "</font><br/>";
            if(param2 != 1)
            {
               if(param2 == 2)
               {
                  if(linkVip)
                  {
                     linkVip.htmlText += _loc5_;
                  }
               }
            }
         }
      }
      
      public function set slot2_3(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293144slot2_3;
         if(_loc2_ !== param1)
         {
            this._2113293144slot2_3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_3",_loc2_,param1));
         }
      }
      
      public function set slot2_0(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293147slot2_0;
         if(_loc2_ !== param1)
         {
            this._2113293147slot2_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_0",_loc2_,param1));
         }
      }
      
      public function set slot2_4(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293143slot2_4;
         if(_loc2_ !== param1)
         {
            this._2113293143slot2_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_4",_loc2_,param1));
         }
      }
      
      public function set slot2_1(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293146slot2_1;
         if(_loc2_ !== param1)
         {
            this._2113293146slot2_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_1",_loc2_,param1));
         }
      }
      
      public function set slot2_5(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293142slot2_5;
         if(_loc2_ !== param1)
         {
            this._2113293142slot2_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_5",_loc2_,param1));
         }
      }
      
      public function set slot2_2(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293145slot2_2;
         if(_loc2_ !== param1)
         {
            this._2113293145slot2_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_2",_loc2_,param1));
         }
      }
      
      public function set slot2_6(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293141slot2_6;
         if(_loc2_ !== param1)
         {
            this._2113293141slot2_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_6",_loc2_,param1));
         }
      }
      
      public function set slot2_8(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293139slot2_8;
         if(_loc2_ !== param1)
         {
            this._2113293139slot2_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_8",_loc2_,param1));
         }
      }
      
      public function set slot2_7(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293140slot2_7;
         if(_loc2_ !== param1)
         {
            this._2113293140slot2_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_7",_loc2_,param1));
         }
      }
      
      public function onAllClick() : void
      {
         var _loc1_:* = undefined;
         if(ToolKit.isSmallOrEqual(ToolKit.minus(new Date().time,_click),1500))
         {
            return;
         }
         _click = new Date().time;
         if(Boolean(timer) && timer.running)
         {
            _core.sysMidNote(Language.LUCKDRAWPANEL_U[7]);
            return;
         }
         if(chanceCount >= _slotNum)
         {
            _loc1_ = {
               "type":2,
               "num":chanceCount
            };
            _core.remote.call("luckDrawByClient",new Responder(start3),_loc1_);
         }
         else
         {
            _core.sysMidNote(Language.LUCKDRAWPANEL_U[1]);
         }
         luckDrawButtonAll.enabled = false;
      }
      
      public function onOnceClick() : void
      {
         var _loc1_:* = undefined;
         if(ToolKit.isSmallOrEqual(ToolKit.minus(new Date().time,_click),1500))
         {
            return;
         }
         _click = new Date().time;
         if(chanceCount >= _slotNum)
         {
            luckDrawButtonOnce.enabled = false;
            _loc1_ = {
               "type":1,
               "num":chanceCount
            };
            _core.remote.call("luckDrawByClient",new Responder(start2),_loc1_);
         }
         else
         {
            luckDrawButtonOnce.enabled = true;
            _core.sysMidNote(Language.LUCKDRAWPANEL_U[1]);
         }
      }
      
      public function set slot2_9(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293138slot2_9;
         if(_loc2_ !== param1)
         {
            this._2113293138slot2_9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_9",_loc2_,param1));
         }
      }
      
      public function set onceLuckDraw(param1:Canvas) : void
      {
         var _loc2_:Object = this._88560074onceLuckDraw;
         if(_loc2_ !== param1)
         {
            this._88560074onceLuckDraw = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onceLuckDraw",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vipTile() : RoundCanvas
      {
         return this._463353963vipTile;
      }
      
      public function onGetLuckDrawData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:Object = null;
         if(param1)
         {
            this.visible = true;
            chanceCount = param1.chanceCount;
            onceRemainCount.text = Language.LUCKDRAWPANEL_U[8] + chanceCount;
            allCount = param1.allNum;
            luckDrawButtonAll.toolTip = Language.LUCKDRAWPANEL_U[13].toString().replace("{num}",param1.allNum);
            luckDrawAward = new Object();
            luckDrawAward = param1.luckDrawAward;
            highestAwardArr = new Array();
            highestAwardArr = param1.highestAwardArrLuckDraw;
            _loc2_ = 2;
            while(_loc2_ <= 2)
            {
               _arr = new Array();
               _loc4_ = 0;
               while(_loc4_ < 10)
               {
                  _loc5_ = _core.data.gameData[GamePredef.TBL_PLAN][luckDrawAward[_loc2_ - 1][_loc4_]];
                  if(_loc5_)
                  {
                     _arr.push(luckDrawAward[_loc2_ - 1][_loc4_]);
                     this["slot" + _loc2_ + "_" + _loc4_]["awardSlot"].type = _loc5_.ti;
                     this["slot" + _loc2_ + "_" + _loc4_]["awardSlot"].giid = _loc5_.ii;
                     this["slot" + _loc2_ + "_" + _loc4_]["awardSlot"].stackNum = _loc5_.n;
                     this["slot" + _loc2_ + "_" + _loc4_]["awardSlot"].slotData = _loc5_;
                     _loc6_ = _core.data.getGameData(_loc5_.ti,_loc5_.ii);
                     if(_loc6_)
                     {
                        if(_loc6_.color)
                        {
                           this["slot" + _loc2_ + "_" + _loc4_]["awardSlot"].setStyleName(_loc6_.color);
                        }
                        else if(_loc5_.ti == GamePredef.TBL_CREATURE)
                        {
                           this["slot" + _loc2_ + "_" + _loc4_]["awardSlot"].setStyleName(_core.basic.colorByGrowRate(_loc5_.q));
                        }
                     }
                  }
                  _loc4_++;
               }
               _loc2_++;
            }
            if(linkVip)
            {
               linkVip.htmlText = "";
            }
            _loc3_ = highestAwardArr ? highestAwardArr.length : 0;
            if(ToolKit.isBigThan(_loc3_,0))
            {
               _loc7_ = ToolKit.minus(_loc3_,1);
               while(_loc7_ >= 0)
               {
                  _loc8_ = highestAwardArr[_loc7_];
                  superLuckDrawShow(_loc8_,2);
                  _loc7_--;
               }
            }
         }
      }
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      public function set chanceCount(param1:int) : void
      {
         var _loc2_:Object = this._935514565chanceCount;
         if(_loc2_ !== param1)
         {
            this._935514565chanceCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chanceCount",_loc2_,param1));
         }
      }
      
      public function __idTabCanvas2_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_LUCK_DRAW_BAG);
      }
      
      public function set linkVip(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._177071555linkVip;
         if(_loc2_ !== param1)
         {
            this._177071555linkVip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkVip",_loc2_,param1));
         }
      }
      
      public function set activityDesc(param1:Canvas) : void
      {
         var _loc2_:Object = this._1628325440activityDesc;
         if(_loc2_ !== param1)
         {
            this._1628325440activityDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activityDesc",_loc2_,param1));
         }
      }
      
      public function set onceRemainCount(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1256808642onceRemainCount;
         if(_loc2_ !== param1)
         {
            this._1256808642onceRemainCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onceRemainCount",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LuckDrawPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LuckDrawPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_LuckDrawPanelWatcherSetupUtil");
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
      public function get slot2_0() : LotteryItemSlot
      {
         return this._2113293147slot2_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_1() : LotteryItemSlot
      {
         return this._2113293146slot2_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_4() : LotteryItemSlot
      {
         return this._2113293143slot2_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_6() : LotteryItemSlot
      {
         return this._2113293141slot2_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_7() : LotteryItemSlot
      {
         return this._2113293140slot2_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_8() : LotteryItemSlot
      {
         return this._2113293139slot2_8;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_2() : LotteryItemSlot
      {
         return this._2113293145slot2_2;
      }
      
      public function set luckDrawButtonOnce(param1:Button) : void
      {
         var _loc2_:Object = this._2002514760luckDrawButtonOnce;
         if(_loc2_ !== param1)
         {
            this._2002514760luckDrawButtonOnce = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"luckDrawButtonOnce",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_9() : LotteryItemSlot
      {
         return this._2113293138slot2_9;
      }
      
      public function __idTabCanvas3_click(param1:MouseEvent) : void
      {
         setTab(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      [Bindable(event="propertyChange")]
      public function get linkVip() : LinkTextArea
      {
         return this._177071555linkVip;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_3() : LotteryItemSlot
      {
         return this._2113293144slot2_3;
      }
      
      private function toShowPanel(param1:Event) : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,toShowPanel);
         _core.remote.call("getLuckDrawData",new Responder(onGetLuckDrawData),null);
         showPanel();
      }
      
      [Bindable(event="propertyChange")]
      public function get onceRemainCount() : RoundedLabel
      {
         return this._1256808642onceRemainCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_5() : LotteryItemSlot
      {
         return this._2113293142slot2_5;
      }
      
      public function setTab(param1:int) : void
      {
         vs.selectedIndex = param1;
         var _loc2_:int = 3;
         var _loc3_:int = 1;
         while(_loc3_ <= _loc2_)
         {
            this["idTabCanvas" + _loc3_].selected = false;
            _loc3_++;
         }
         this["idTabCanvas" + param1].selected = true;
         if(param1 == 1)
         {
            vs.selectedChild = onceLuckDraw;
         }
         if(param1 == 3)
         {
            vs.selectedChild = activityDesc;
         }
      }
      
      public function set vipTile(param1:RoundCanvas) : void
      {
         var _loc2_:Object = this._463353963vipTile;
         if(_loc2_ !== param1)
         {
            this._463353963vipTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipTile",_loc2_,param1));
         }
      }
      
      public function __luckDrawButtonOnce_click(param1:MouseEvent) : void
      {
         onOnceClick();
      }
      
      private function _LuckDrawPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LuckDrawPanel_BasicTitleCanvas1.text = param1;
         },"_LuckDrawPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas1.label = param1;
         },"idTabCanvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas2.label = param1;
         },"idTabCanvas2.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas3.label = param1;
         },"idTabCanvas3.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(3130090000055));
         },function(param1:Object):void
         {
            vipTile.setStyle("backgroundImage",param1);
         },"vipTile.backgroundImage");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            luckDrawButtonAll.filters = param1;
         },"luckDrawButtonAll.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            luckDrawButtonAll.label = param1;
         },"luckDrawButtonAll.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            luckDrawButtonAll.toolTip = param1;
         },"luckDrawButtonAll.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[8] + chanceCount;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            onceRemainCount.text = param1;
         },"onceRemainCount.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LuckDrawPanel_RoundedLabel2.text = param1;
         },"_LuckDrawPanel_RoundedLabel2.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LuckDrawPanel_RoundedLabel3.text = param1;
         },"_LuckDrawPanel_RoundedLabel3.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LUCKDRAWPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LuckDrawPanel_Text1.text = param1;
         },"_LuckDrawPanel_Text1.text");
         result[11] = binding;
         return result;
      }
      
      public function superLuckDrawMidSay(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(!param1)
         {
            return;
         }
         _loc2_ = "";
         _loc3_ = _core.data.getGameData(param1.ti,param1.ii);
         if(!_loc3_)
         {
            return;
         }
         if(!_loc3_.color || _loc3_.color < 0)
         {
            _loc3_.color = 0;
         }
         _loc2_ = Language.LUCKDRAWPANEL_U[2];
         if(!_loc2_)
         {
            return;
         }
         _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.name + "|0|0|0]"));
         if(param1.ti == GamePredef.TBL_EQUIPT_TEMPLATE)
         {
            if(!param1.cl)
            {
               if(_loc3_.color > 0)
               {
                  param1.cl = _loc3_.color;
               }
               else
               {
                  param1.cl = 0;
               }
            }
            _loc5_ = _core.data.gameData[param1.ti][param1.ii];
            if(_loc5_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
            {
               _loc6_ = Number(param1.q) * 10 + 6;
               _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + _loc6_ + "]"));
            }
            else
            {
               _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
            }
         }
         else if(param1.ti == GamePredef.TBL_ITEM_TEMPLATE)
         {
            if(!param1.cl)
            {
               if(_loc3_.color > 0)
               {
                  param1.cl = _loc3_.color;
               }
               else
               {
                  param1.cl = 0;
               }
            }
            _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
         }
         else if(param1.ti == GamePredef.TBL_CREATURE)
         {
            _loc7_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(param1.q)] + "\'>[" + _loc3_.name + "]</font>";
            _loc2_ = _loc2_.replace("{item}",_loc7_);
         }
         _loc2_ = _loc2_.replace("{num}",param1.n);
         _loc4_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[6] + "\'>" + TextUtil.decode(_loc2_) + "</font><br/>";
         _core.sysMidNote(_loc4_);
      }
      
      public function set allCount(param1:int) : void
      {
         var _loc2_:Object = this._1772274670allCount;
         if(_loc2_ !== param1)
         {
            this._1772274670allCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allCount",_loc2_,param1));
         }
      }
      
      public function ___LuckDrawPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      override public function initView() : void
      {
      }
      
      public function superLuckDrawSystemSay(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:String = "";
         if(Boolean(param1.p) && param1.p > 10)
         {
            _loc3_ = _core.data.getGameData(param1.ti,param1.ii);
            if(!_loc3_)
            {
               return;
            }
            if(!_loc3_.color || _loc3_.color < 0)
            {
               _loc3_.color = 0;
            }
            _loc2_ = Language.NOTICE_INFO[73].toString().replace("※","");
            if(!_loc2_)
            {
               return;
            }
            _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.name + "|0|0|0]"));
            if(param1.ti == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               if(!param1.cl)
               {
                  if(_loc3_.color > 0)
                  {
                     param1.cl = _loc3_.color;
                  }
                  else
                  {
                     param1.cl = 0;
                  }
               }
               _loc5_ = _core.data.gameData[param1.ti][param1.ii];
               if(_loc5_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
               {
                  _loc6_ = Number(param1.q) * 10 + 6;
                  _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + _loc6_ + "]"));
               }
               else
               {
                  _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
               }
            }
            else if(param1.ti == GamePredef.TBL_ITEM_TEMPLATE)
            {
               if(!param1.cl)
               {
                  if(_loc3_.color > 0)
                  {
                     param1.cl = _loc3_.color;
                  }
                  else
                  {
                     param1.cl = 0;
                  }
               }
               _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
            }
            else if(param1.ti == GamePredef.TBL_CREATURE)
            {
               _loc7_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(param1.q)] + "\'>[" + _loc3_.name + "]</font>";
               _loc2_ = _loc2_.replace("{item}",_loc7_);
            }
            _loc2_ = _loc2_.replace("{num}",param1.n);
            _loc4_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[6] + "\'>" + TextUtil.decode(_loc2_) + "</font>";
            _core.sysMsg(_loc4_);
         }
      }
      
      public function set idTabCanvas1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229569idTabCanvas1;
         if(_loc2_ !== param1)
         {
            this._277229569idTabCanvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas1() : BasicGlowButton
      {
         return this._277229569idTabCanvas1;
      }
   }
}

