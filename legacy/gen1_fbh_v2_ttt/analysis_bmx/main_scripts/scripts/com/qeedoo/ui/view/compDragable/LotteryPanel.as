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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LotteryPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1087607829slot1_10:LotteryItemSlot;
      
      private var _2113294106slot1_2:LotteryItemSlot;
      
      private var _1185932956normalRemainCount:RoundedLabel;
      
      private var _3773vs:ViewStack;
      
      private var _2113293145slot2_2:LotteryItemSlot;
      
      private var _177071555linkVip:LinkTextArea;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2113294104slot1_4:LotteryItemSlot;
      
      private var _695530881linkNormal:LinkTextArea;
      
      private var isDeleay1:Boolean = false;
      
      private var _core:Core = Core.getInstance();
      
      private var _2113293143slot2_4:LotteryItemSlot;
      
      private var _click:Number = 0;
      
      public var highestAwardArrNormal:Array = new Array();
      
      private var lotteryAward:Object = new Object();
      
      private var runNum1:int = 3;
      
      private var runNum2:int = 3;
      
      private var _2113294102slot1_6:LotteryItemSlot;
      
      private var _2113294099slot1_9:LotteryItemSlot;
      
      private var _2113293139slot2_8:LotteryItemSlot;
      
      private var _1087578037slot2_11:LotteryItemSlot;
      
      private var _2113293141slot2_6:LotteryItemSlot;
      
      public var _LotteryPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _arr1:Array = new Array();
      
      private var _arr2:Array = new Array();
      
      private var _277229570idTabCanvas0:BasicGlowButton;
      
      private var rungroup:int = 0;
      
      private var _2113294100slot1_8:LotteryItemSlot;
      
      private var ITEM_TYPE:Number = 29;
      
      private var _783159742lotteryButtonVip:Button;
      
      private var _2113294107slot1_1:LotteryItemSlot;
      
      private var _935514565chanceCount:int = 0;
      
      private var _1087607828slot1_11:LotteryItemSlot;
      
      private var _783179834lotteryButtonAll:DelayButton;
      
      private var _2113293146slot2_1:LotteryItemSlot;
      
      private var _1332272550vipRemainCount:RoundedLabel;
      
      private var TICKET_ID:Number = 3736;
      
      private var _277229568idTabCanvas2:BasicGlowButton;
      
      private var _1255688139normalTile:RoundCanvas;
      
      private var isDeleay:Boolean = false;
      
      private var _2113294105slot1_3:LotteryItemSlot;
      
      private var doCount:int = 0;
      
      private var timer:Timer;
      
      private var isStart:Boolean = false;
      
      private var _2113293144slot2_3:LotteryItemSlot;
      
      private var _1422638188vipLottery:Canvas;
      
      public var _LotteryPanel_RoundedLabel2:RoundedLabel;
      
      public var _LotteryPanel_RoundedLabel3:RoundedLabel;
      
      public var _LotteryPanel_RoundedLabel5:RoundedLabel;
      
      public var _LotteryPanel_RoundedLabel6:RoundedLabel;
      
      public var highestAwardArrVIP:Array = new Array();
      
      private var _2113294103slot1_5:LotteryItemSlot;
      
      private var currentPix1:int = -1;
      
      mx_internal var _watchers:Array = [];
      
      private var index1:Number = 0;
      
      private var index2:Number = 0;
      
      private var _2113293142slot2_5:LotteryItemSlot;
      
      private var _1072846686lotteryButtonNormal:Button;
      
      private var _277229569idTabCanvas1:BasicGlowButton;
      
      private var currentPix2:int = -1;
      
      private var timer1:Timer;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2113294101slot1_7:LotteryItemSlot;
      
      private var _463353963vipTile:RoundCanvas;
      
      private var _2113294108slot1_0:LotteryItemSlot;
      
      private var isStart1:Boolean = false;
      
      private var rungroup1:int = 0;
      
      private var _1087578038slot2_10:LotteryItemSlot;
      
      private var _1665552286normalLottery:Canvas;
      
      private var _2113293138slot2_9:LotteryItemSlot;
      
      private var _2113293140slot2_7:LotteryItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":530,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_LotteryPanel_BasicTitleCanvas1"
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
                                    "id":"idTabCanvas0",
                                    "events":{"click":"__idTabCanvas0_click"},
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
                                    "id":"idTabCanvas1",
                                    "events":{"click":"__idTabCanvas1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "styleName":"HorizontalTab"
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
                                 "id":"normalLottery",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":690,
                                       "height":465,
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
                                                   "id":"normalTile",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "10";
                                                      this.top = "10";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "width":430,
                                                         "percentHeight":100,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_0"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_1"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_2"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_3"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_4"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_5"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_6"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_7"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_8"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_9"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_10"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot1_11"
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Button,
                                                   "id":"lotteryButtonNormal",
                                                   "events":{"click":"__lotteryButtonNormal_click"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"BtnLottery",
                                                         "x":160,
                                                         "y":145
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RoundedLabel,
                                                   "id":"normalRemainCount",
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
                                          "id":"_LotteryPanel_RoundedLabel2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                             this.horizontalCenter = "-152";
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
                                                   "id":"_LotteryPanel_RoundedLabel3",
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
                                                   "id":"linkNormal",
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
                                 "id":"vipLottery",
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
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_10"
                                                         }),new UIComponentDescriptor({
                                                            "type":LotteryItemSlot,
                                                            "id":"slot2_11"
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Button,
                                                   "id":"lotteryButtonVip",
                                                   "events":{"click":"__lotteryButtonVip_click"},
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
                                                   "id":"lotteryButtonAll",
                                                   "events":{"click":"__lotteryButtonAll_click"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":360,
                                                         "y":400,
                                                         "clickDelay":3000,
                                                         "styleName":"CrystalYellowButton"
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":RoundedLabel,
                                                   "id":"vipRemainCount",
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
                                          "id":"_LotteryPanel_RoundedLabel5",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                             this.horizontalCenter = "-110";
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
                                                   "id":"_LotteryPanel_RoundedLabel6",
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
                              })]};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _2113293147slot2_0:LotteryItemSlot;
      
      public function LotteryPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 530;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___LotteryPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LotteryPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas2() : BasicGlowButton
      {
         return this._277229568idTabCanvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas0() : BasicGlowButton
      {
         return this._277229570idTabCanvas0;
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
      
      public function set slot1_5(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294103slot1_5;
         if(_loc2_ !== param1)
         {
            this._2113294103slot1_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_5",_loc2_,param1));
         }
      }
      
      protected function start1(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         if(!param1)
         {
            lotteryButtonNormal.enabled = true;
            return;
         }
         var _loc2_:Number = Number(param1.val);
         chanceCount = param1.ticketnum;
         normalRemainCount.text = Language.LOTTERYPANEL_U[8] + chanceCount;
         for(_loc3_ in _arr1)
         {
            if(ToolKit.isEqual(_arr1[_loc3_],_loc2_))
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_ >= 0)
         {
            _loc4_ = 0;
            while(_loc4_ < 12)
            {
               this["slot1_" + _loc4_].change(false);
               _loc4_++;
            }
            isDeleay = false;
            rungroup = 0;
            ++doCount;
            currentPix1 = _loc2_;
            runNum1 = Math.round(Math.random() * 2) + 2;
            if(Boolean(timer) && timer.running)
            {
               timer.removeEventListener(TimerEvent.TIMER,onTimer1);
               timer.stop();
               timer = null;
            }
            timer = new Timer(100);
            timer.addEventListener(TimerEvent.TIMER,onTimer1);
            timer.start();
         }
      }
      
      protected function start2(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         if(!param1)
         {
            lotteryButtonVip.enabled = true;
            return;
         }
         var _loc2_:Number = Number(param1.val);
         chanceCount = param1.ticketnum;
         vipRemainCount.text = Language.LOTTERYPANEL_U[8] + chanceCount;
         for(_loc3_ in _arr2)
         {
            if(ToolKit.isEqual(_arr2[_loc3_],_loc2_))
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_ >= 0)
         {
            _loc4_ = 0;
            while(_loc4_ < 12)
            {
               this["slot2_" + _loc4_].change(false);
               _loc4_++;
            }
            isDeleay1 = false;
            rungroup1 = 0;
            ++doCount;
            currentPix2 = _loc2_;
            runNum2 = Math.round(Math.random() * 2) + 2;
            if(Boolean(timer1) && timer1.running)
            {
               timer1.removeEventListener(TimerEvent.TIMER,onTimer2);
               timer1.stop();
               timer1 = null;
            }
            timer1 = new Timer(100);
            timer1.addEventListener(TimerEvent.TIMER,onTimer2);
            timer1.start();
         }
      }
      
      protected function start3(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:int = 0;
         while(_loc2_ < 12)
         {
            this["slot2_" + _loc2_].change(false);
            _loc2_++;
         }
         if(!param1)
         {
            lotteryButtonAll.enabled = true;
            return;
         }
         var _loc3_:Number = Number(param1.val);
         chanceCount = param1.ticketnum;
         vipRemainCount.text = Language.LOTTERYPANEL_U[8] + chanceCount;
         normalRemainCount.text = Language.LOTTERYPANEL_U[8] + chanceCount;
         lotteryButtonAll.enabled = true;
         for(_loc4_ in _arr2)
         {
            if(ToolKit.isEqual(_arr2[_loc4_],_loc3_))
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         this["slot2_" + _loc3_].change(true);
      }
      
      public function set slot1_9(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294099slot1_9;
         if(_loc2_ !== param1)
         {
            this._2113294099slot1_9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get normalTile() : RoundCanvas
      {
         return this._1255688139normalTile;
      }
      
      [Bindable(event="propertyChange")]
      private function get chanceCount() : int
      {
         return this._935514565chanceCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get lotteryButtonVip() : Button
      {
         return this._783159742lotteryButtonVip;
      }
      
      protected function onTimer1(param1:TimerEvent) : void
      {
         if(index1 < 0)
         {
            index1 = 11;
            ++rungroup;
         }
         isStart = true;
         if(isDeleay)
         {
            timer.delay += 50;
         }
         else if(rungroup > runNum1 && currentPix1 == index1)
         {
            isDeleay = true;
         }
         this["slot1_" + index1].change(true);
         if(timer.delay > 400)
         {
            if(index1 == currentPix1)
            {
               if(Boolean(timer) && timer.running)
               {
                  timer.stop();
                  timer.removeEventListener(TimerEvent.TIMER,onTimer1);
                  timer = null;
               }
               lotteryButtonNormal.enabled = true;
               this["slot1_" + (index1 + 1) % 12].change(false);
               this["slot1_" + index1].change(true);
               _core.remote.call("lotteryResultBoast",null,1);
               isStart = false;
               lotteryButtonNormal.enabled = true;
               index1 = 0;
               isStart = false;
               isDeleay = false;
               rungroup = 0;
               doCount = 0;
               currentPix1 = -1;
               return;
            }
         }
         this["slot1_" + (index1 + 1) % 12].change(false);
         if(isStart)
         {
            this["slot1_" + index1].change(true);
         }
         --index1;
      }
      
      protected function onTimer2(param1:TimerEvent) : void
      {
         if(index2 < 0)
         {
            index2 = 11;
            ++rungroup1;
         }
         isStart1 = true;
         if(isDeleay1)
         {
            timer1.delay += 50;
         }
         else if(rungroup1 > runNum2 && currentPix2 == index2)
         {
            isDeleay1 = true;
         }
         this["slot2_" + index2].change(true);
         if(timer1.delay > 400)
         {
            if(index2 == currentPix2)
            {
               if(Boolean(timer1) && timer1.running)
               {
                  timer1.stop();
                  timer1.removeEventListener(TimerEvent.TIMER,onTimer2);
                  timer1 = null;
               }
               this["slot2_" + (index2 + 1) % 12].change(false);
               this["slot2_" + index2].change(true);
               _core.remote.call("lotteryResultBoast",null,2);
               isStart1 = false;
               lotteryButtonVip.enabled = true;
               index2 = 0;
               isStart1 = false;
               isDeleay1 = false;
               rungroup1 = 0;
               doCount = 0;
               currentPix2 = -1;
               return;
            }
         }
         this["slot2_" + (index2 + 1) % 12].change(false);
         if(isStart1)
         {
            this["slot2_" + index2].change(true);
         }
         --index2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_10() : LotteryItemSlot
      {
         return this._1087578038slot2_10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_11() : LotteryItemSlot
      {
         return this._1087578037slot2_11;
      }
      
      [Bindable(event="propertyChange")]
      public function get normalLottery() : Canvas
      {
         return this._1665552286normalLottery;
      }
      
      public function onVipClick() : void
      {
         var _loc1_:* = undefined;
         if(!_core.player.pmLevel || ToolKit.isSmallOrEqual(_core.player.pmLevel,0))
         {
            _core.sysMidNote(Language.LOTTERYPANEL_U[6]);
            return;
         }
         if(ToolKit.isSmallOrEqual(ToolKit.minus(new Date().time,_click),1500))
         {
            return;
         }
         _click = new Date().time;
         chanceCount = _core.getItemNum(ITEM_TYPE,TICKET_ID).num;
         if(chanceCount >= 10)
         {
            lotteryButtonVip.enabled = false;
            _loc1_ = {
               "type":1,
               "num":chanceCount
            };
            _core.remote.call("lotteryByClient",new Responder(start2),_loc1_);
         }
         else
         {
            lotteryButtonVip.enabled = true;
            _core.sysMidNote(Language.LOTTERYPANEL_U[1]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vipTile() : RoundCanvas
      {
         return this._463353963vipTile;
      }
      
      public function __idTabCanvas2_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_LOTTERY_BAG);
      }
      
      public function set normalTile(param1:RoundCanvas) : void
      {
         var _loc2_:Object = this._1255688139normalTile;
         if(_loc2_ !== param1)
         {
            this._1255688139normalTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalTile",_loc2_,param1));
         }
      }
      
      private function set chanceCount(param1:int) : void
      {
         var _loc2_:Object = this._935514565chanceCount;
         if(_loc2_ !== param1)
         {
            this._935514565chanceCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chanceCount",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vipLottery() : Canvas
      {
         return this._1422638188vipLottery;
      }
      
      public function cleanTimer(param1:Number) : void
      {
      }
      
      public function set lotteryButtonVip(param1:Button) : void
      {
         var _loc2_:Object = this._783159742lotteryButtonVip;
         if(_loc2_ !== param1)
         {
            this._783159742lotteryButtonVip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lotteryButtonVip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get normalRemainCount() : RoundedLabel
      {
         return this._1185932956normalRemainCount;
      }
      
      public function set slot2_11(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._1087578037slot2_11;
         if(_loc2_ !== param1)
         {
            this._1087578037slot2_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lotteryButtonNormal() : Button
      {
         return this._1072846686lotteryButtonNormal;
      }
      
      public function set slot2_10(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._1087578038slot2_10;
         if(_loc2_ !== param1)
         {
            this._1087578038slot2_10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_10",_loc2_,param1));
         }
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
      public function get slot2_2() : LotteryItemSlot
      {
         return this._2113293145slot2_2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_3() : LotteryItemSlot
      {
         return this._2113293144slot2_3;
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
      public function get slot2_9() : LotteryItemSlot
      {
         return this._2113293138slot2_9;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2_5() : LotteryItemSlot
      {
         return this._2113293142slot2_5;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      public function set normalLottery(param1:Canvas) : void
      {
         var _loc2_:Object = this._1665552286normalLottery;
         if(_loc2_ !== param1)
         {
            this._1665552286normalLottery = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalLottery",_loc2_,param1));
         }
      }
      
      private function toShowPanel(param1:Event) : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,toShowPanel);
         _core.remote.call("getLotteryData",new Responder(onGetLotteryData),null);
         showPanel();
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
      
      public function set vipLottery(param1:Canvas) : void
      {
         var _loc2_:Object = this._1422638188vipLottery;
         if(_loc2_ !== param1)
         {
            this._1422638188vipLottery = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipLottery",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_0() : LotteryItemSlot
      {
         return this._2113294108slot1_0;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_1() : LotteryItemSlot
      {
         return this._2113294107slot1_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_3() : LotteryItemSlot
      {
         return this._2113294105slot1_3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_5() : LotteryItemSlot
      {
         return this._2113294103slot1_5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_7() : LotteryItemSlot
      {
         return this._2113294101slot1_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_8() : LotteryItemSlot
      {
         return this._2113294100slot1_8;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_4() : LotteryItemSlot
      {
         return this._2113294104slot1_4;
      }
      
      public function ___LotteryPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_9() : LotteryItemSlot
      {
         return this._2113294099slot1_9;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_2() : LotteryItemSlot
      {
         return this._2113294106slot1_2;
      }
      
      public function set linkNormal(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._695530881linkNormal;
         if(_loc2_ !== param1)
         {
            this._695530881linkNormal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkNormal",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         _core.remote.call("getLotteryData",new Responder(onGetLotteryData),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_6() : LotteryItemSlot
      {
         return this._2113294102slot1_6;
      }
      
      public function onGetLotteryData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:Number = NaN;
         if(param1)
         {
            this.visible = true;
            chanceCount = param1.chanceCount;
            normalRemainCount.text = Language.LOTTERYPANEL_U[8] + chanceCount;
            vipRemainCount.text = Language.LOTTERYPANEL_U[8] + chanceCount;
            lotteryAward = new Object();
            lotteryAward = param1.lotteryAward;
            highestAwardArrVIP = new Array();
            highestAwardArrVIP = param1.highestAwardArrLotteryVip;
            highestAwardArrNormal = new Array();
            highestAwardArrNormal = param1.highestAwardArrLotteryNormal;
            _loc2_ = 1;
            while(_loc2_ <= 2)
            {
               if(_loc2_ == 1)
               {
                  _arr1 = new Array();
               }
               else
               {
                  _arr2 = new Array();
               }
               _loc5_ = 0;
               while(_loc5_ < 12)
               {
                  _loc6_ = _core.data.gameData[GamePredef.TBL_PLAN][lotteryAward[_loc2_ - 1][_loc5_]];
                  if(_loc6_)
                  {
                     if(_loc2_ == 1)
                     {
                        _arr1.push(lotteryAward[_loc2_ - 1][_loc5_]);
                     }
                     else
                     {
                        _arr2.push(lotteryAward[_loc2_ - 1][_loc5_]);
                     }
                     this["slot" + _loc2_ + "_" + _loc5_]["awardSlot"].type = _loc6_.ti;
                     this["slot" + _loc2_ + "_" + _loc5_]["awardSlot"].giid = _loc6_.ii;
                     this["slot" + _loc2_ + "_" + _loc5_]["awardSlot"].stackNum = _loc6_.n;
                     this["slot" + _loc2_ + "_" + _loc5_]["awardSlot"].slotData = _loc6_;
                     _loc7_ = _core.data.getGameData(_loc6_.ti,_loc6_.ii);
                     if(_loc7_)
                     {
                        if(_loc7_.color)
                        {
                           this["slot" + _loc2_ + "_" + _loc5_]["awardSlot"].setStyleName(_loc7_.color);
                        }
                        else if(_loc6_.ti == GamePredef.TBL_CREATURE)
                        {
                           this["slot" + _loc2_ + "_" + _loc5_]["awardSlot"].setStyleName(_core.basic.colorByGrowRate(_loc6_.q));
                        }
                     }
                  }
                  _loc5_++;
               }
               _loc2_++;
            }
            if(linkNormal)
            {
               linkNormal.htmlText = "";
            }
            if(linkVip)
            {
               linkVip.htmlText = "";
            }
            _loc3_ = highestAwardArrVIP ? highestAwardArrVIP.length : 0;
            if(ToolKit.isBigThan(_loc3_,0))
            {
               _loc8_ = ToolKit.minus(_loc3_,1);
               while(_loc8_ >= 0)
               {
                  _loc9_ = highestAwardArrVIP[_loc8_];
                  superLotteryShow(_loc9_,2);
                  _loc8_--;
               }
            }
            _loc4_ = highestAwardArrNormal ? highestAwardArrNormal.length : 0;
            if(ToolKit.isBigThan(_loc4_,0))
            {
               _loc10_ = ToolKit.minus(_loc4_,1);
               while(_loc10_ >= 0)
               {
                  _loc9_ = highestAwardArrNormal[_loc10_];
                  superLotteryShow(_loc9_,1);
                  _loc10_--;
               }
            }
         }
      }
      
      public function __lotteryButtonVip_click(param1:MouseEvent) : void
      {
         onVipClick();
      }
      
      public function __idTabCanvas1_click(param1:MouseEvent) : void
      {
         setTab(1);
      }
      
      public function set normalRemainCount(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1185932956normalRemainCount;
         if(_loc2_ !== param1)
         {
            this._1185932956normalRemainCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalRemainCount",_loc2_,param1));
         }
      }
      
      private function _LotteryPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LotteryPanel_BasicTitleCanvas1.text = param1;
         },"_LotteryPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas0.label = param1;
         },"idTabCanvas0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas1.label = param1;
         },"idTabCanvas1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas2.label = param1;
         },"idTabCanvas2.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(3130090000055));
         },function(param1:Object):void
         {
            normalTile.setStyle("backgroundImage",param1);
         },"normalTile.backgroundImage");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[8] + chanceCount;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            normalRemainCount.text = param1;
         },"normalRemainCount.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LotteryPanel_RoundedLabel2.text = param1;
         },"_LotteryPanel_RoundedLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LotteryPanel_RoundedLabel3.text = param1;
         },"_LotteryPanel_RoundedLabel3.text");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(3130090000055));
         },function(param1:Object):void
         {
            vipTile.setStyle("backgroundImage",param1);
         },"vipTile.backgroundImage");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lotteryButtonAll.filters = param1;
         },"lotteryButtonAll.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lotteryButtonAll.label = param1;
         },"lotteryButtonAll.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[8] + chanceCount;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vipRemainCount.text = param1;
         },"vipRemainCount.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOTTERYPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LotteryPanel_RoundedLabel5.text = param1;
         },"_LotteryPanel_RoundedLabel5.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LotteryPanel_RoundedLabel6.text = param1;
         },"_LotteryPanel_RoundedLabel6.text");
         result[13] = binding;
         return result;
      }
      
      public function set lotteryButtonNormal(param1:Button) : void
      {
         var _loc2_:Object = this._1072846686lotteryButtonNormal;
         if(_loc2_ !== param1)
         {
            this._1072846686lotteryButtonNormal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lotteryButtonNormal",_loc2_,param1));
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
      
      public function set vipRemainCount(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1332272550vipRemainCount;
         if(_loc2_ !== param1)
         {
            this._1332272550vipRemainCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipRemainCount",_loc2_,param1));
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
      
      public function set slot2_5(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293142slot2_5;
         if(_loc2_ !== param1)
         {
            this._2113293142slot2_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_5",_loc2_,param1));
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
      
      public function set slot2_7(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113293140slot2_7;
         if(_loc2_ !== param1)
         {
            this._2113293140slot2_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2_7",_loc2_,param1));
         }
      }
      
      public function superLotteryShow(param1:Object, param2:int) : void
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
         if(Boolean(param1.p) && param1.p > 10)
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
            _loc3_ = Language.NOTICE_INFO[70];
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
            if(param2 == 1)
            {
               if(linkNormal)
               {
                  linkNormal.htmlText += _loc5_;
               }
            }
            else if(param2 == 2)
            {
               if(linkVip)
               {
                  linkVip.htmlText += _loc5_;
               }
            }
         }
      }
      
      public function onAllClick() : void
      {
         var _loc1_:* = undefined;
         if(!_core.player.pmLevel || ToolKit.isSmallOrEqual(_core.player.pmLevel,0))
         {
            _core.sysMidNote(Language.LOTTERYPANEL_U[6]);
            return;
         }
         if(ToolKit.isSmallOrEqual(ToolKit.minus(new Date().time,_click),1500))
         {
            return;
         }
         _click = new Date().time;
         if(Boolean(timer1) && timer1.running)
         {
            _core.sysMidNote(Language.LOTTERYPANEL_U[7]);
            return;
         }
         chanceCount = _core.getItemNum(ITEM_TYPE,TICKET_ID).num;
         if(chanceCount >= 10)
         {
            _loc1_ = {
               "type":2,
               "num":chanceCount
            };
            _core.remote.call("lotteryByClient",new Responder(start3),_loc1_);
         }
         else
         {
            _core.sysMidNote(Language.LOTTERYPANEL_U[1]);
         }
         lotteryButtonAll.enabled = false;
      }
      
      public function superLotteryMidSay(param1:Object) : void
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
         _loc2_ = Language.LOTTERYPANEL_U[2];
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
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      private function _LotteryPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.LOTTERYPANEL_U[0];
         _loc1_ = Language.LOTTERYPANEL_U[0];
         _loc1_ = Language.LOTTERYPANEL_U[3];
         _loc1_ = Language.LOTTERYPANEL_U[4];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(3130090000055));
         _loc1_ = Language.LOTTERYPANEL_U[8] + chanceCount;
         _loc1_ = Language.LOTTERYPANEL_U[9];
         _loc1_ = Language.VIPSHOPPANEL_U[3];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(3130090000055));
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.LOTTERYPANEL_U[5];
         _loc1_ = Language.LOTTERYPANEL_U[8] + chanceCount;
         _loc1_ = Language.LOTTERYPANEL_U[10];
         _loc1_ = Language.VIPSHOPPANEL_U[3];
      }
      
      [Bindable(event="propertyChange")]
      public function get linkNormal() : LinkTextArea
      {
         return this._695530881linkNormal;
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
      
      public function onNormalClick() : void
      {
         var _loc1_:* = undefined;
         if(ToolKit.isSmallOrEqual(ToolKit.minus(new Date().time,_click),1500))
         {
            return;
         }
         _click = new Date().time;
         chanceCount = _core.getItemNum(ITEM_TYPE,TICKET_ID).num;
         if(chanceCount > 0)
         {
            lotteryButtonNormal.enabled = false;
            _loc1_ = {
               "type":0,
               "num":chanceCount
            };
            _core.remote.call("lotteryByClient",new Responder(start1),_loc1_);
         }
         else
         {
            _core.sysMidNote(Language.LOTTERYPANEL_U[1]);
            lotteryButtonNormal.enabled = true;
         }
      }
      
      public function superLotterySystemSay(param1:Object) : void
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
            _loc2_ = Language.NOTICE_INFO[70].toString().replace("※","");
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LotteryPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LotteryPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_LotteryPanelWatcherSetupUtil");
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
      
      public function showLotteryBlueMsg(param1:String) : void
      {
         if(linkNormal != null)
         {
            linkNormal.htmlText = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vipRemainCount() : RoundedLabel
      {
         return this._1332272550vipRemainCount;
      }
      
      public function __lotteryButtonAll_click(param1:MouseEvent) : void
      {
         onAllClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get linkVip() : LinkTextArea
      {
         return this._177071555linkVip;
      }
      
      [Bindable(event="propertyChange")]
      public function get lotteryButtonAll() : DelayButton
      {
         return this._783179834lotteryButtonAll;
      }
      
      public function set slot1_0(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294108slot1_0;
         if(_loc2_ !== param1)
         {
            this._2113294108slot1_0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_0",_loc2_,param1));
         }
      }
      
      public function set slot1_1(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294107slot1_1;
         if(_loc2_ !== param1)
         {
            this._2113294107slot1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_1",_loc2_,param1));
         }
      }
      
      public function __lotteryButtonNormal_click(param1:MouseEvent) : void
      {
         onNormalClick();
      }
      
      public function set slot1_3(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294105slot1_3;
         if(_loc2_ !== param1)
         {
            this._2113294105slot1_3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_3",_loc2_,param1));
         }
      }
      
      public function set lotteryButtonAll(param1:DelayButton) : void
      {
         var _loc2_:Object = this._783179834lotteryButtonAll;
         if(_loc2_ !== param1)
         {
            this._783179834lotteryButtonAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lotteryButtonAll",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
      }
      
      public function set slot1_4(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294104slot1_4;
         if(_loc2_ !== param1)
         {
            this._2113294104slot1_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_4",_loc2_,param1));
         }
      }
      
      public function setTab(param1:int) : void
      {
         chanceCount = _core.getItemNum(ITEM_TYPE,TICKET_ID).num;
         cleanTimer(param1);
         vs.selectedIndex = param1;
         var _loc2_:int = 2;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["idTabCanvas" + _loc3_].selected = false;
            _loc3_++;
         }
         this["idTabCanvas" + param1].selected = true;
         if(param1 == 0)
         {
            vs.selectedChild = normalLottery;
         }
         else if(param1 == 1)
         {
            vs.selectedChild = vipLottery;
         }
      }
      
      public function set slot1_2(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294106slot1_2;
         if(_loc2_ !== param1)
         {
            this._2113294106slot1_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_2",_loc2_,param1));
         }
      }
      
      public function set slot1_11(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._1087607828slot1_11;
         if(_loc2_ !== param1)
         {
            this._1087607828slot1_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_11",_loc2_,param1));
         }
      }
      
      public function set slot1_6(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294102slot1_6;
         if(_loc2_ !== param1)
         {
            this._2113294102slot1_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_6",_loc2_,param1));
         }
      }
      
      public function set slot1_10(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._1087607829slot1_10;
         if(_loc2_ !== param1)
         {
            this._1087607829slot1_10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_10",_loc2_,param1));
         }
      }
      
      public function __idTabCanvas0_click(param1:MouseEvent) : void
      {
         setTab(0);
      }
      
      public function set slot1_7(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294101slot1_7;
         if(_loc2_ !== param1)
         {
            this._2113294101slot1_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_7",_loc2_,param1));
         }
      }
      
      public function set slot1_8(param1:LotteryItemSlot) : void
      {
         var _loc2_:Object = this._2113294100slot1_8;
         if(_loc2_ !== param1)
         {
            this._2113294100slot1_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1_8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_10() : LotteryItemSlot
      {
         return this._1087607829slot1_10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1_11() : LotteryItemSlot
      {
         return this._1087607828slot1_11;
      }
      
      public function set idTabCanvas0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229570idTabCanvas0;
         if(_loc2_ !== param1)
         {
            this._277229570idTabCanvas0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas0",_loc2_,param1));
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

