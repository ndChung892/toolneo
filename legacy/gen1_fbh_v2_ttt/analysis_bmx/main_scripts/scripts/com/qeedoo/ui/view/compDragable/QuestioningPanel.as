package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.MultiLineButton;
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
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Menu;
   import mx.controls.RadioButton;
   import mx.controls.TextArea;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class QuestioningPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const ANIMATION_QUESTION_RIGHT:Class = QuestioningPanel_ANIMATION_QUESTION_RIGHT;
      
      private static const ANIMATION_QUESTION_WRONG:Class = QuestioningPanel_ANIMATION_QUESTION_WRONG;
      
      private static const ICON_QUESTION_XLY:Class = QuestioningPanel_ICON_QUESTION_XLY;
      
      private static const ICON_QUESTION_FDJ:Class = QuestioningPanel_ICON_QUESTION_FDJ;
      
      private static const ICON_QUESTION_XYX:Class = QuestioningPanel_ICON_QUESTION_XYX;
      
      private var question_writing_time:Number = 15000;
      
      private var _3694972xyx3:Image;
      
      private var tempHeight:Array = [];
      
      private var _qNum:Number = -1;
      
      private var _3526474seld:RadioButton;
      
      private var _3682508xly1:Image;
      
      private var setTime:Timer = null;
      
      private var xyxRemainTime:int = 3;
      
      private var _1024893362questionerArr:Array = [];
      
      private var _selectedAnswer:RadioButton;
      
      private var question_reading_time:Number = 10000;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var time_for_start:int = 120;
      
      private var _core:Core;
      
      private var _3138117fdj1:Image;
      
      private var time_for_read:int = 10;
      
      private var answerHeight:Array = [15,50,85,120];
      
      private var _3694971xyx2:Image;
      
      private var _172500916questionGrid:DataGrid;
      
      private var _curAns:String = "A";
      
      private var _1693501890answerCvs:Canvas;
      
      private var _1378835600btnFDJ:MultiLineButton;
      
      public var _QuestioningPanel_DataGridColumn1:DataGridColumn;
      
      private var _3526473selc:RadioButton;
      
      public var _QuestioningPanel_DataGridColumn2:DataGridColumn;
      
      public var _QuestioningPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _QuestioningPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _QuestioningPanel_BasicTxtButton7:BasicTxtButton;
      
      private var serverArgs:Object = {};
      
      private var _869812602remainNum:BasicTxtButton;
      
      private var _3682510xly3:Image;
      
      private var _1378817637btnXYX:MultiLineButton;
      
      private var _1378818039btnXLY:MultiLineButton;
      
      private var _172294920questionNote:TextArea;
      
      private var _3694970xyx1:Image;
      
      private var _3434543qCvs:Canvas;
      
      private var _849909678totalPnt:BasicTxtButton;
      
      private var _1322604301eTitle:BasicTitleCanvas;
      
      private var _3526472selb:RadioButton;
      
      private var _3449856qStr:IntroText;
      
      private var xlyRemainTime:int = 3;
      
      private var _317444454answerAnimation:Image;
      
      private var canUseItem:Boolean = false;
      
      private var _1194520270remainSecs:BasicTxtButton;
      
      private var _720230806totalOrder:BasicTxtButton;
      
      private var _2076492010timerTip:BasicTxtButton;
      
      private var _3138119fdj3:Image;
      
      public var _QuestioningPanel_BasicGlowButton1:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _qObj:Object = {};
      
      private var temp2Height:Array = [];
      
      private var _3526471sela:RadioButton;
      
      public var hideAble:* = false;
      
      private var rightOrWrong:int = 0;
      
      private var _3682509xly2:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var totalQuestionNum:int = 30;
      
      private var fdjRemainTime:int = 3;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":650,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"eTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"qCvs",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":35,
                        "width":640,
                        "height":450,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "width":470,
                                 "height":120,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"qStr",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 16;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"answerAnimation",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":400,
                                 "y":110,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"answerCvs",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":130,
                                 "width":470,
                                 "height":315,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"sela",
                                    "events":{"click":"__sela_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":15,
                                          "visible":false,
                                          "width":280,
                                          "height":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"selb",
                                    "events":{"click":"__selb_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":50,
                                          "visible":false,
                                          "width":280,
                                          "height":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"selc",
                                    "events":{"click":"__selc_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":85,
                                          "visible":false,
                                          "width":280,
                                          "height":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"seld",
                                    "events":{"click":"__seld_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":120,
                                          "visible":false,
                                          "width":280,
                                          "height":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"timerTip",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":29,
                                          "y":170,
                                          "height":35,
                                          "width":120
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"remainSecs",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":154,
                                          "y":170,
                                          "height":35,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_QuestioningPanel_BasicTxtButton3",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":170,
                                          "height":35,
                                          "width":120
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"remainNum",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":383,
                                          "y":170,
                                          "height":35,
                                          "width":55
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":205,
                                          "width":460,
                                          "height":105,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":HBox,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":460,
                                                   "height":105,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":MultiLineButton,
                                                      "id":"btnXLY",
                                                      "events":{"click":"__btnXLY_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":148,
                                                            "height":100,
                                                            "styleName":"BtnQuestItem"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MultiLineButton,
                                                      "id":"btnFDJ",
                                                      "events":{"click":"__btnFDJ_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":148,
                                                            "height":100,
                                                            "styleName":"BtnQuestItem"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MultiLineButton,
                                                      "id":"btnXYX",
                                                      "events":{"click":"__btnXYX_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":148,
                                                            "height":100,
                                                            "styleName":"BtnQuestItem"
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"xly1",
                                             "events":{"click":"__xly1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"xly2",
                                             "events":{"click":"__xly2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":65,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"xly3",
                                             "events":{"click":"__xly3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fdj1",
                                             "events":{"click":"__fdj1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":180,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fdj2",
                                             "events":{"click":"__fdj2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fdj3",
                                             "events":{"click":"__fdj3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":250,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"xyx1",
                                             "events":{"click":"__xyx1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":340,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"xyx2",
                                             "events":{"click":"__xyx2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":375,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"xyx3",
                                             "events":{"click":"__xyx3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":410,
                                                   "y":5
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"questionNote",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.textAlign = "left";
                                       this.color = 16774324;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":306,
                                          "y":21,
                                          "height":125,
                                          "width":154
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
                                 "x":480,
                                 "y":5,
                                 "width":155,
                                 "height":450,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"questionGrid",
                                    "events":{"itemDoubleClick":"__questionGrid_itemDoubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "height":259,
                                          "draggableColumns":false,
                                          "columns":[_QuestioningPanel_DataGridColumn1_i(),_QuestioningPanel_DataGridColumn2_i()]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_QuestioningPanel_BasicTxtButton5",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":352,
                                          "width":102
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"totalPnt",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":115,
                                          "y":352,
                                          "label":"0",
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_QuestioningPanel_BasicTxtButton7",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":380,
                                          "width":102
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"totalOrder",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":115,
                                          "y":380,
                                          "label":"30",
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_QuestioningPanel_BasicGlowButton1",
                                    "events":{"click":"___QuestioningPanel_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":87,
                                          "y":408,
                                          "width":60,
                                          "styleName":"BtnStdRed"
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
      
      private var _3138118fdj2:Image;
      
      private var time_for_write:int = 15;
      
      public function QuestioningPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 650;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___QuestioningPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         QuestioningPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get qStr() : IntroText
      {
         return this._3449856qStr;
      }
      
      public function showQuestion(param1:Object) : void
      {
         if(!initialized)
         {
            serverArgs = param1;
            addEventListener(FlexEvent.CREATION_COMPLETE,showQuestionLater);
            return;
         }
         if(setTime)
         {
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onWriteTime);
            setTime.removeEventListener(TimerEvent.TIMER,onReadTime);
            setTime.removeEventListener(TimerEvent.TIMER,onWaitingTime);
            setTime = null;
         }
         time_for_read = Math.ceil(question_reading_time / 1000);
         setTime = new Timer(1000,time_for_read);
         setTime.addEventListener(TimerEvent.TIMER,onReadTime);
         setTime.start();
         time_for_write = Math.ceil(question_writing_time / 1000);
         timerTip.label = Language.QUESTIONING_PANEL_U[31];
         remainSecs.text = Language.QUESTIONING_PANEL_U[8].replace("{sec}",time_for_read);
         remainSecs.setStyle("color","#FFFFFF");
         if(!qCvs.visible)
         {
            qCvs.visible = true;
         }
         if(_selectedAnswer)
         {
            _selectedAnswer.selected = false;
         }
         _qNum = param1.qnum - -1;
         remainNum.text = (totalQuestionNum - _qNum).toString();
         rightOrWrong = 0;
         if(ToolKit.isBigThan(_qNum,0))
         {
            _qObj = _core.data.gameData[GamePredef.TBL_ANSWER][param1.qid];
            if(_qObj)
            {
               qStr.text = _qNum + "." + _qObj.t;
               sela.label = _qObj.a ? "A." + _qObj.a : "";
               selb.label = _qObj.b ? "B." + _qObj.b : "";
               selc.label = _qObj.c ? "C." + _qObj.c : "";
               seld.label = _qObj.d ? "D." + _qObj.d : "";
               sela.y = getHeight(1);
               selb.y = getHeight(2);
               selc.y = getHeight(3);
               seld.y = getHeight(4);
               sela.visible = _qObj.a ? true : false;
               selb.visible = _qObj.b ? true : false;
               selc.visible = _qObj.c ? true : false;
               seld.visible = _qObj.d ? true : false;
            }
         }
         canUseItem = true;
      }
      
      public function set qStr(param1:IntroText) : void
      {
         var _loc2_:Object = this._3449856qStr;
         if(_loc2_ !== param1)
         {
            this._3449856qStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qStr",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnXLY() : MultiLineButton
      {
         return this._1378818039btnXLY;
      }
      
      public function set btnXLY(param1:MultiLineButton) : void
      {
         var _loc2_:Object = this._1378818039btnXLY;
         if(_loc2_ !== param1)
         {
            this._1378818039btnXLY = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnXLY",_loc2_,param1));
         }
      }
      
      private function getHeight(param1:int) : int
      {
         var _loc2_:* = undefined;
         if(temp2Height.length == 0)
         {
            for(_loc2_ in answerHeight)
            {
               tempHeight[_loc2_] = answerHeight[_loc2_];
            }
            temp2Height = randomArray(tempHeight);
         }
         return temp2Height.pop();
      }
      
      public function set timerTip(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._2076492010timerTip;
         if(_loc2_ !== param1)
         {
            this._2076492010timerTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerTip",_loc2_,param1));
         }
      }
      
      private function onWriteTime(param1:TimerEvent) : void
      {
         --time_for_write;
         if(time_for_write <= 3)
         {
            remainSecs.setStyle("color","#FF0000");
         }
         else if(time_for_write <= 8)
         {
            remainSecs.setStyle("color","#00FF00");
         }
         if(time_for_write == 0)
         {
            canUseItem = false;
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onWriteTime);
            setTime = null;
         }
         remainSecs.label = String(Language.QUESTIONING_PANEL_U[8]).replace("{sec}",time_for_write);
      }
      
      public function __fdj2_click(param1:MouseEvent) : void
      {
         btnFDJ.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function __xly1_click(param1:MouseEvent) : void
      {
         btnXLY.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function addQuestionNote(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         questionNote.text += "\r" + param1;
         var _loc2_:Array = questionNote.text.split("\r");
         if(_loc2_.length - 1 > 4)
         {
            _loc3_ = 0;
            while(_loc3_ <= _loc2_.length - 1 - 4)
            {
               _loc4_ = questionNote.text;
               _loc5_ = _loc4_.slice(0,_loc4_.indexOf("\r") + 1);
               questionNote.text = _loc4_.replace(_loc5_,"");
               _loc3_++;
            }
         }
      }
      
      public function __seld_click(param1:MouseEvent) : void
      {
         selAnswer(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get qCvs() : Canvas
      {
         return this._3434543qCvs;
      }
      
      [Bindable(event="propertyChange")]
      public function get fdj1() : Image
      {
         return this._3138117fdj1;
      }
      
      [Bindable(event="propertyChange")]
      public function get fdj2() : Image
      {
         return this._3138118fdj2;
      }
      
      [Bindable(event="propertyChange")]
      public function get fdj3() : Image
      {
         return this._3138119fdj3;
      }
      
      private function showQuestionLater(param1:FlexEvent) : void
      {
         showQuestion(serverArgs);
         removeEventListener(FlexEvent.CREATION_COMPLETE,showQuestionLater);
      }
      
      [Bindable(event="propertyChange")]
      public function get questionGrid() : DataGrid
      {
         return this._172500916questionGrid;
      }
      
      [Bindable(event="propertyChange")]
      private function get questionerArr() : Array
      {
         return this._1024893362questionerArr;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalPnt() : BasicTxtButton
      {
         return this._849909678totalPnt;
      }
      
      public function set qCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._3434543qCvs;
         if(_loc2_ !== param1)
         {
            this._3434543qCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qCvs",_loc2_,param1));
         }
      }
      
      private function hideAnimation() : void
      {
         answerAnimation.source = "";
         answerAnimation.visible = false;
      }
      
      public function __xyx1_click(param1:MouseEvent) : void
      {
         btnXYX.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      [Bindable(event="propertyChange")]
      public function get totalOrder() : BasicTxtButton
      {
         return this._720230806totalOrder;
      }
      
      public function __sela_click(param1:MouseEvent) : void
      {
         selAnswer(param1);
      }
      
      public function onSubApp(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1.apply)
         {
            Alert.show(Language.QUESTIONING_PANEL_U[33],"",Alert.YES,null,null);
            return;
         }
         if(param1.f)
         {
            addQuestionNote(Language.QUESTIONING_PANEL_U[16]);
            if(Boolean(param1.rtime) && Boolean(param1.wtime))
            {
               question_reading_time = param1.rtime;
               question_writing_time = param1.wtime;
               time_for_read = Math.ceil(question_reading_time / 1000);
               time_for_write = Math.ceil(question_writing_time / 1000);
            }
            totalQuestionNum = param1.qnum;
            questionerArr = new Array();
            qCvs.visible = true;
            _loc2_ = 1;
            while(_loc2_ <= 3)
            {
               this["xly" + _loc2_].visible = true;
               this["fdj" + _loc2_].visible = true;
               this["xyx" + _loc2_].visible = true;
               _loc2_++;
            }
            this.btnFDJ.enabled = true;
            this.btnXLY.enabled = true;
            this.btnXYX.enabled = true;
            if(param1.sec)
            {
               if(ToolKit.isBigThan(param1.sec,0))
               {
                  addQuestionNote(String(Language.QUESTIONING_PANEL_U[29]).replace("{sec}",param1.sec));
                  timerTip.text = Language.QUESTIONING_PANEL_U[32];
                  remainSecs.text = Language.QUESTIONING_PANEL_U[8].replace("{sec}",param1.sec);
                  time_for_start = Number(param1.sec);
                  if(setTime)
                  {
                     setTime.stop();
                     setTime.removeEventListener(TimerEvent.TIMER,onWriteTime);
                     setTime.removeEventListener(TimerEvent.TIMER,onReadTime);
                     setTime.removeEventListener(TimerEvent.TIMER,onWaitingTime);
                     setTime = null;
                  }
                  setTime = new Timer(1000);
                  setTime.addEventListener(TimerEvent.TIMER,onWaitingTime);
                  setTime.start();
               }
            }
         }
         else
         {
            addQuestionNote(Language.QUESTIONING_PANEL_U[17]);
            setTimeout(closePanel,2000);
         }
      }
      
      private function onReadTime(param1:TimerEvent) : void
      {
         --time_for_read;
         if(time_for_read == 0)
         {
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onReadTime);
            setTime = null;
            timerTip.label = Language.QUESTIONING_PANEL_U[7];
            remainSecs.label = String(Language.QUESTIONING_PANEL_U[8]).replace("{sec}",time_for_write);
            remainSecs.setStyle("color","#FFFFFF");
            setTime = new Timer(1000,time_for_write);
            setTime.addEventListener(TimerEvent.TIMER,onWriteTime);
            setTime.start();
            return;
         }
         remainSecs.label = String(Language.QUESTIONING_PANEL_U[8]).replace("{sec}",time_for_read);
      }
      
      public function set fdj1(param1:Image) : void
      {
         var _loc2_:Object = this._3138117fdj1;
         if(_loc2_ !== param1)
         {
            this._3138117fdj1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fdj1",_loc2_,param1));
         }
      }
      
      public function set fdj3(param1:Image) : void
      {
         var _loc2_:Object = this._3138119fdj3;
         if(_loc2_ !== param1)
         {
            this._3138119fdj3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fdj3",_loc2_,param1));
         }
      }
      
      public function set selb(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3526472selb;
         if(_loc2_ !== param1)
         {
            this._3526472selb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selb",_loc2_,param1));
         }
      }
      
      public function set selc(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3526473selc;
         if(_loc2_ !== param1)
         {
            this._3526473selc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selc",_loc2_,param1));
         }
      }
      
      public function set fdj2(param1:Image) : void
      {
         var _loc2_:Object = this._3138118fdj2;
         if(_loc2_ !== param1)
         {
            this._3138118fdj2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fdj2",_loc2_,param1));
         }
      }
      
      public function set sela(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3526471sela;
         if(_loc2_ !== param1)
         {
            this._3526471sela = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sela",_loc2_,param1));
         }
      }
      
      public function set questionGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._172500916questionGrid;
         if(_loc2_ !== param1)
         {
            this._172500916questionGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questionGrid",_loc2_,param1));
         }
      }
      
      private function set questionerArr(param1:Array) : void
      {
         var _loc2_:Object = this._1024893362questionerArr;
         if(_loc2_ !== param1)
         {
            this._1024893362questionerArr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questionerArr",_loc2_,param1));
         }
      }
      
      public function set seld(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3526474seld;
         if(_loc2_ !== param1)
         {
            this._3526474seld = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seld",_loc2_,param1));
         }
      }
      
      public function set totalPnt(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._849909678totalPnt;
         if(_loc2_ !== param1)
         {
            this._849909678totalPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPnt",_loc2_,param1));
         }
      }
      
      private function viewClear() : void
      {
         qStr.text = "";
         sela.visible = false;
         selb.visible = false;
         selc.visible = false;
         seld.visible = false;
         remainSecs.text = "";
         remainNum.text = "";
         totalPnt.text = "0";
         totalOrder.text = "0";
         if(setTime)
         {
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onWriteTime);
            setTime.removeEventListener(TimerEvent.TIMER,onReadTime);
            setTime.removeEventListener(TimerEvent.TIMER,onWaitingTime);
            setTime = null;
         }
      }
      
      public function onQuestionRank(param1:Object) : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         if(rightOrWrong == 1)
         {
            addQuestionNote(Language.QUESTIONING_PANEL_U[11]);
            showAnimation(true);
         }
         else if(rightOrWrong == -1)
         {
            addQuestionNote(Language.QUESTIONING_PANEL_U[12]);
            showAnimation(false);
         }
         rightOrWrong = 0;
         var _loc2_:Array = param1.rank;
         var _loc3_:Object = param1.self;
         if(_loc3_)
         {
            totalOrder.text = _loc3_.order ? (_loc3_.order - -1).toString() : "0";
            totalPnt.text = _loc3_.pnt ? _loc3_.pnt : "0";
         }
         if(_loc2_)
         {
            for(_loc4_ in _loc2_)
            {
               _loc5_ = Number(GamePredef.MAP_ID_BY_CLASS[_loc2_[_loc4_].cl]);
               _loc2_[_loc4_].cl = _core.data.gameData[GamePredef.TBL_MAP][_loc5_].name;
            }
            questionerArr = _loc2_;
         }
      }
      
      public function __xly3_click(param1:MouseEvent) : void
      {
         btnXLY.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      private function selAnswer(param1:Event) : void
      {
         if(!ToolKit.isEqual(rightOrWrong,0))
         {
            _selectedAnswer.selected = true;
            return;
         }
         switch(param1.currentTarget.id)
         {
            case "sela":
               _curAns = "A";
               break;
            case "selb":
               _curAns = "B";
               break;
            case "selc":
               _curAns = "C";
               break;
            case "seld":
               _curAns = "D";
         }
         if(time_for_read == 0 && time_for_write > 0)
         {
            _selectedAnswer = RadioButton(param1.currentTarget);
            _core.remote.call("subAnswer",new Responder(onSubAnswer),_curAns);
         }
         else
         {
            param1.currentTarget.selected = false;
            if(time_for_read > 0)
            {
               addQuestionNote(Language.QUESTIONING_PANEL_U[9]);
            }
            else if(time_for_write <= 0)
            {
               addQuestionNote(Language.QUESTIONING_PANEL_U[10]);
            }
         }
      }
      
      private function checkDropEvent() : void
      {
         var func:Function = function(param1:CloseEvent):*
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("dropQuestion",null,null);
            }
         };
         Alert.show(Language.QUESTIONING_PANEL_U[21],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set answerAnimation(param1:Image) : void
      {
         var _loc2_:Object = this._317444454answerAnimation;
         if(_loc2_ !== param1)
         {
            this._317444454answerAnimation = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"answerAnimation",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xly2() : Image
      {
         return this._3682509xly2;
      }
      
      [Bindable(event="propertyChange")]
      public function get remainSecs() : BasicTxtButton
      {
         return this._1194520270remainSecs;
      }
      
      [Bindable(event="propertyChange")]
      public function get xly1() : Image
      {
         return this._3682508xly1;
      }
      
      public function set totalOrder(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._720230806totalOrder;
         if(_loc2_ !== param1)
         {
            this._720230806totalOrder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalOrder",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xly3() : Image
      {
         return this._3682510xly3;
      }
      
      public function set btnFDJ(param1:MultiLineButton) : void
      {
         var _loc2_:Object = this._1378835600btnFDJ;
         if(_loc2_ !== param1)
         {
            this._1378835600btnFDJ = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFDJ",_loc2_,param1));
         }
      }
      
      public function __xyx3_click(param1:MouseEvent) : void
      {
         btnXYX.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      private function closePanel() : void
      {
         this.visible = false;
      }
      
      public function __fdj1_click(param1:MouseEvent) : void
      {
         btnFDJ.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function __selc_click(param1:MouseEvent) : void
      {
         selAnswer(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get eTitle() : BasicTitleCanvas
      {
         return this._1322604301eTitle;
      }
      
      public function set xyx2(param1:Image) : void
      {
         var _loc2_:Object = this._3694971xyx2;
         if(_loc2_ !== param1)
         {
            this._3694971xyx2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xyx2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get questionNote() : TextArea
      {
         return this._172294920questionNote;
      }
      
      private function useXLY() : void
      {
         var _loc1_:Number = NaN;
         if(questionGrid.selectedItem)
         {
            _loc1_ = Number(questionGrid.selectedItem.cid);
            _core.remote.call("useXLY",new Responder(onUseXLY),_loc1_);
         }
         else
         {
            addQuestionNote(Language.QUESTIONING_PANEL_U[26]);
         }
      }
      
      public function onSubAnswer(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               rightOrWrong = 1;
               break;
            case -1:
               rightOrWrong = -1;
               break;
            case 4:
               addQuestionNote(Language.QUESTIONING_PANEL_U[13]);
               break;
            case 3:
               addQuestionNote(Language.QUESTIONING_PANEL_U[14]);
               break;
            case 2:
               addQuestionNote(Language.QUESTIONING_PANEL_U[15]);
         }
      }
      
      public function ___QuestioningPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         checkDropEvent();
      }
      
      private function showAnimation(param1:Boolean) : void
      {
         if(param1)
         {
            answerAnimation.source = ANIMATION_QUESTION_RIGHT;
         }
         else
         {
            answerAnimation.source = ANIMATION_QUESTION_WRONG;
         }
         answerAnimation.visible = true;
         setTimeout(hideAnimation,2000);
      }
      
      public function set remainNum(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._869812602remainNum;
         if(_loc2_ !== param1)
         {
            this._869812602remainNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remainNum",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         _core = Core.getInstance();
      }
      
      public function __questionGrid_itemDoubleClick(param1:ListEvent) : void
      {
         gridClick(param1);
      }
      
      public function set xyx3(param1:Image) : void
      {
         var _loc2_:Object = this._3694972xyx3;
         if(_loc2_ !== param1)
         {
            this._3694972xyx3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xyx3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerTip() : BasicTxtButton
      {
         return this._2076492010timerTip;
      }
      
      public function set xyx1(param1:Image) : void
      {
         var _loc2_:Object = this._3694970xyx1;
         if(_loc2_ !== param1)
         {
            this._3694970xyx1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xyx1",_loc2_,param1));
         }
      }
      
      public function onUseFDJ(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(param1)
         {
            if(param1.f)
            {
               if(this["sel" + String(param1.d).toLowerCase()])
               {
                  addQuestionNote(Language.QUESTIONING_PANEL_U[18] + param1.d);
                  this["sel" + String(param1.d).toLowerCase()].visible = false;
               }
               _loc2_ = 3;
               _loc3_ = int(param1.num);
               while(_loc3_ > 0)
               {
                  this["fdj" + _loc2_].visible = false;
                  _loc2_--;
                  _loc3_--;
               }
               if(param1.num == 3)
               {
                  btnFDJ.enabled = false;
               }
            }
         }
      }
      
      public function ___QuestioningPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _QuestioningPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.QUESTIONING_PANEL_U[0];
         _loc1_ = Language.QUESTIONING_PANEL_U[28];
         _loc1_ = Language.QUESTIONING_PANEL_U[22];
         _loc1_ = Language.QUESTIONING_PANEL_U[23];
         _loc1_ = Language.QUESTIONING_PANEL_U[24];
         _loc1_ = ICON_QUESTION_XLY;
         _loc1_ = ICON_QUESTION_XLY;
         _loc1_ = ICON_QUESTION_XLY;
         _loc1_ = ICON_QUESTION_FDJ;
         _loc1_ = ICON_QUESTION_FDJ;
         _loc1_ = ICON_QUESTION_FDJ;
         _loc1_ = ICON_QUESTION_XYX;
         _loc1_ = ICON_QUESTION_XYX;
         _loc1_ = ICON_QUESTION_XYX;
         _loc1_ = questionerArr;
         _loc1_ = Language.QUESTIONING_PANEL_U[1];
         _loc1_ = Language.QUESTIONING_PANEL_U[3];
         _loc1_ = Language.QUESTIONING_PANEL_U[4];
         _loc1_ = Language.QUESTIONING_PANEL_U[5];
         _loc1_ = Language.QUESTIONING_PANEL_U[25];
      }
      
      public function set btnXYX(param1:MultiLineButton) : void
      {
         var _loc2_:Object = this._1378817637btnXYX;
         if(_loc2_ !== param1)
         {
            this._1378817637btnXYX = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnXYX",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sela() : RadioButton
      {
         return this._3526471sela;
      }
      
      [Bindable(event="propertyChange")]
      public function get selb() : RadioButton
      {
         return this._3526472selb;
      }
      
      [Bindable(event="propertyChange")]
      public function get selc() : RadioButton
      {
         return this._3526473selc;
      }
      
      public function onUseXYX(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(param1)
         {
            if(param1.f)
            {
               addQuestionNote(Language.QUESTIONING_PANEL_U[19]);
               _loc2_ = 3;
               _loc3_ = int(param1.num);
               while(_loc3_ > 0)
               {
                  this["xyx" + _loc2_].visible = false;
                  _loc2_--;
                  _loc3_--;
               }
               if(param1.num == 3)
               {
                  btnXYX.enabled = false;
               }
            }
         }
      }
      
      private function onWaitingTime(param1:TimerEvent) : void
      {
         --time_for_start;
         if(time_for_start == 0)
         {
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onWaitingTime);
            setTime = null;
         }
         remainSecs.label = String(Language.QUESTIONING_PANEL_U[8]).replace("{sec}",time_for_start);
      }
      
      internal function randomArray(param1:*) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:* = param1.length;
         var _loc3_:* = new Array();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = Math.floor(Math.random() * param1.length);
            _loc3_.push(param1[_loc5_]);
            param1.splice(_loc5_,1);
            _loc5_++;
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function specialItem(param1:Event) : void
      {
         if(canUseItem)
         {
            switch(param1.currentTarget.id)
            {
               case "btnXLY":
                  useXLY();
                  break;
               case "btnFDJ":
                  _core.remote.call("useFDJ",new Responder(onUseFDJ),null);
                  break;
               case "btnXYX":
                  _core.remote.call("useXYX",new Responder(onUseXYX),null);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get answerAnimation() : Image
      {
         return this._317444454answerAnimation;
      }
      
      public function __fdj3_click(param1:MouseEvent) : void
      {
         btnFDJ.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function __xly2_click(param1:MouseEvent) : void
      {
         btnXLY.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      [Bindable(event="propertyChange")]
      public function get remainNum() : BasicTxtButton
      {
         return this._869812602remainNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get xyx2() : Image
      {
         return this._3694971xyx2;
      }
      
      [Bindable(event="propertyChange")]
      public function get xyx3() : Image
      {
         return this._3694972xyx3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFDJ() : MultiLineButton
      {
         return this._1378835600btnFDJ;
      }
      
      [Bindable(event="propertyChange")]
      public function get xyx1() : Image
      {
         return this._3694970xyx1;
      }
      
      [Bindable(event="propertyChange")]
      public function get seld() : RadioButton
      {
         return this._3526474seld;
      }
      
      public function set answerCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._1693501890answerCvs;
         if(_loc2_ !== param1)
         {
            this._1693501890answerCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"answerCvs",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:QuestioningPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _QuestioningPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_QuestioningPanelWatcherSetupUtil");
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
      
      public function set xly2(param1:Image) : void
      {
         var _loc2_:Object = this._3682509xly2;
         if(_loc2_ !== param1)
         {
            this._3682509xly2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xly2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnXYX() : MultiLineButton
      {
         return this._1378817637btnXYX;
      }
      
      public function set xly1(param1:Image) : void
      {
         var _loc2_:Object = this._3682508xly1;
         if(_loc2_ !== param1)
         {
            this._3682508xly1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xly1",_loc2_,param1));
         }
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(param1.label == GamePredef.MENU_WISPER)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(param1.item.name);
         }
         else if(param1.label == GamePredef.MENU_P2PWISPER)
         {
            ChatPanelUtil.createChatPanel(param1.item.id);
         }
         else if(param1.label == GamePredef.MENU_INFO)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(param1.item.id);
         }
         else if(param1.label == GamePredef.MENU_ADDF)
         {
            _core.addFriend(param1.item.name);
         }
         else if(param1.label == GamePredef.MENU_ADDB)
         {
            _core.addBlack(param1.item.name);
         }
      }
      
      public function __xyx2_click(param1:MouseEvent) : void
      {
         btnXYX.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function set remainSecs(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1194520270remainSecs;
         if(_loc2_ !== param1)
         {
            this._1194520270remainSecs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remainSecs",_loc2_,param1));
         }
      }
      
      private function _QuestioningPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _QuestioningPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "pnt";
         BindingManager.executeBindings(this,"_QuestioningPanel_DataGridColumn2",_QuestioningPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function __selb_click(param1:MouseEvent) : void
      {
         selAnswer(param1);
      }
      
      public function __btnXLY_click(param1:MouseEvent) : void
      {
         specialItem(param1);
      }
      
      public function set xly3(param1:Image) : void
      {
         var _loc2_:Object = this._3682510xly3;
         if(_loc2_ !== param1)
         {
            this._3682510xly3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xly3",_loc2_,param1));
         }
      }
      
      public function onUseXLY(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(param1)
         {
            if(param1.f)
            {
               addQuestionNote(Language.QUESTIONING_PANEL_U[20] + param1.a);
               if(this["sel" + String(param1.a).toLowerCase()])
               {
                  _selectedAnswer = this["sel" + String(param1.a).toLowerCase()];
                  _selectedAnswer.selected = true;
               }
               _loc2_ = 3;
               _loc3_ = int(param1.num);
               while(_loc3_ > 0)
               {
                  this["xly" + _loc2_].visible = false;
                  _loc2_--;
                  _loc3_--;
               }
               if(param1.num == 3)
               {
                  btnXLY.enabled = false;
               }
               onSubAnswer(param1.aR);
            }
         }
      }
      
      private function subApp() : void
      {
         _core.remote.call("subQuestionApply",new Responder(onSubApp),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get answerCvs() : Canvas
      {
         return this._1693501890answerCvs;
      }
      
      public function __btnXYX_click(param1:MouseEvent) : void
      {
         specialItem(param1);
      }
      
      public function onQuestionFinish() : void
      {
         qStr.text = Language.QUESTIONING_PANEL_U[30];
      }
      
      public function __btnFDJ_click(param1:MouseEvent) : void
      {
         specialItem(param1);
      }
      
      private function _QuestioningPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _QuestioningPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "cName";
         BindingManager.executeBindings(this,"_QuestioningPanel_DataGridColumn1",_QuestioningPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function gridClick(param1:ListEvent) : void
      {
         var _loc2_:Object = param1.itemRenderer.data;
         var _loc3_:Number = Number(_loc2_.cid);
         var _loc4_:String = _loc2_.cName;
         var _loc5_:Array = [{
            "label":GamePredef.MENU_WISPER,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_P2PWISPER,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_INFO,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_ADDF,
            "id":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_ADDB,
            "id":_loc3_,
            "name":_loc4_
         }];
         var _loc6_:Menu = CustomMenu.createMenu(null,_loc5_);
         _loc6_.show(stage.mouseX + 25,stage.mouseY > 390 ? 390 : stage.mouseY);
         _loc6_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function viewClick() : void
      {
         var initFunc:Function = null;
         initFunc = function(param1:FlexEvent):void
         {
            viewClear();
            qCvs.visible = true;
            subApp();
         };
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               show();
               if(!initialized)
               {
                  addEventListener(FlexEvent.CREATION_COMPLETE,initFunc);
                  return;
               }
               initFunc(null);
            }
         };
         Alert.show(Language.QUESTIONING_PANEL_U[6],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set eTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1322604301eTitle;
         if(_loc2_ !== param1)
         {
            this._1322604301eTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eTitle",_loc2_,param1));
         }
      }
      
      public function set questionNote(param1:TextArea) : void
      {
         var _loc2_:Object = this._172294920questionNote;
         if(_loc2_ !== param1)
         {
            this._172294920questionNote = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questionNote",_loc2_,param1));
         }
      }
      
      private function _QuestioningPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eTitle.text = param1;
         },"eTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestioningPanel_BasicTxtButton3.label = param1;
         },"_QuestioningPanel_BasicTxtButton3.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnXLY.label = param1;
         },"btnXLY.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFDJ.label = param1;
         },"btnFDJ.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnXYX.label = param1;
         },"btnXYX.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_XLY;
         },function(param1:Object):void
         {
            xly1.source = param1;
         },"xly1.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_XLY;
         },function(param1:Object):void
         {
            xly2.source = param1;
         },"xly2.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_XLY;
         },function(param1:Object):void
         {
            xly3.source = param1;
         },"xly3.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_FDJ;
         },function(param1:Object):void
         {
            fdj1.source = param1;
         },"fdj1.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_FDJ;
         },function(param1:Object):void
         {
            fdj2.source = param1;
         },"fdj2.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_FDJ;
         },function(param1:Object):void
         {
            fdj3.source = param1;
         },"fdj3.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_XYX;
         },function(param1:Object):void
         {
            xyx1.source = param1;
         },"xyx1.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_XYX;
         },function(param1:Object):void
         {
            xyx2.source = param1;
         },"xyx2.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ICON_QUESTION_XYX;
         },function(param1:Object):void
         {
            xyx3.source = param1;
         },"xyx3.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return questionerArr;
         },function(param1:Object):void
         {
            questionGrid.dataProvider = param1;
         },"questionGrid.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestioningPanel_DataGridColumn1.headerText = param1;
         },"_QuestioningPanel_DataGridColumn1.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestioningPanel_DataGridColumn2.headerText = param1;
         },"_QuestioningPanel_DataGridColumn2.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestioningPanel_BasicTxtButton5.label = param1;
         },"_QuestioningPanel_BasicTxtButton5.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestioningPanel_BasicTxtButton7.label = param1;
         },"_QuestioningPanel_BasicTxtButton7.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTIONING_PANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestioningPanel_BasicGlowButton1.label = param1;
         },"_QuestioningPanel_BasicGlowButton1.label");
         result[19] = binding;
         return result;
      }
   }
}

