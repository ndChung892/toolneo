package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.MyButton;
   import com.qeedoo.ui.view.comp.Property;
   import com.qeedoo.ui.view.comp.XCDSDiabetesBox;
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
   import mx.binding.utils.ChangeWatcher;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class XiaochudasaiPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var rects:Array = [];
      
      private static const EFFECT_BM_WIDTH:Number = 550;
      
      private static const EFFECT_BM_HEIGHT:Number = 550;
      
      private static const XCDS_DIABETES_LINE_NUM:int = 9;
      
      private static const XCDS_STAR_LEV1:int = 800;
      
      private static const XCDS_STAR_LEV2:int = 1100;
      
      private static const XCDS_STAR_LEV3:int = 1380;
      
      private var diabetes:Boolean = false;
      
      public var _XiaochudasaiPanel_Label3:Label;
      
      public var _XiaochudasaiPanel_Label4:Label;
      
      public var _XiaochudasaiPanel_Label5:Label;
      
      public var _XiaochudasaiPanel_Label6:Label;
      
      public var _XiaochudasaiPanel_Label7:Label;
      
      public var _XiaochudasaiPanel_Label8:Label;
      
      private var _109757473star3:MyButton;
      
      private var _675946490xcdsRank:ArrayCollection = new ArrayCollection();
      
      private var _613866340xcdsRoundTody:Label;
      
      private var _1739702565highestScoreAllRound:Label;
      
      private var _812013276container1Mask:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _519060726xcdsPoint:Label;
      
      public var _XiaochudasaiPanel_Image1:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var _watcher:ChangeWatcher;
      
      private var _11282169xcdsProgress:Property;
      
      private var stepData:Object;
      
      private var _549570497canMove:Boolean = true;
      
      private var _106433028panel:Canvas;
      
      private var effect_arr:Array;
      
      private var _653011671rankSlot3:ItemSlot;
      
      private var wData:Object;
      
      private var _109757471star1:MyButton;
      
      public var _XiaochudasaiPanel_BasicDelayButton1:BasicDelayButton;
      
      public var _XiaochudasaiPanel_BasicDelayButton4:BasicDelayButton;
      
      public var _XiaochudasaiPanel_BasicDelayButton2:BasicDelayButton;
      
      public var XCDSAwardConfig:Array = [6637,6638,6639,6640,6641,6642];
      
      private var _321863295refreshBtn:BasicDelayButton;
      
      private var _653011673rankSlot1:ItemSlot;
      
      private var _360515433awardLable:Label;
      
      private var hasLoadRank:* = false;
      
      private var _653011669rankSlot5:ItemSlot;
      
      private var load:Loader;
      
      public var effects:Array = [];
      
      public var _XiaochudasaiPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var steps:Array;
      
      private var _115312txt:IntroText;
      
      private var moveBox1:XCDSDiabetesBox;
      
      private var moveBox2:XCDSDiabetesBox;
      
      private var needToEndThisRound:* = false;
      
      private var _1256566702newRoundBtn:BasicDelayButton;
      
      private var moveHandlers:Array = [];
      
      private var _109757472star2:MyButton;
      
      private var _485512578scoreTxt:Label;
      
      private var _1578405093startRoundBtnCenter:BasicGlowButton;
      
      private var _145245136container1:UIComponent;
      
      private var _653011670rankSlot4:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _1975768049leftNumTxt:Label;
      
      private var boxes:Dictionary;
      
      private var effect_bm:Bitmap;
      
      private var _653011668rankSlot6:ItemSlot;
      
      private var _653011672rankSlot2:ItemSlot;
      
      private var _18543865timeLable:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _2146689831endThisRoundBtn:BasicDelayButton;
      
      private var moveNum:int = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":839,
               "height":634,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_XiaochudasaiPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "height":600,
                        "width":836,
                        "x":1,
                        "y":32,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "8";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "mouseEnabled":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "width":334,
                                 "height":480,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "10";
                                       this.left = "10";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":129,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"timeLable",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "2";
                                                this.left = "5";
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Thời gian:1986-8-13 ~ 1986-8-19"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"awardLable",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "24";
                                                this.left = "5";
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Thời gian xếp hạng: "};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rankSlot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rankSlot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":58,
                                                   "y":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rankSlot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":111,
                                                   "y":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rankSlot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":161,
                                                   "y":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rankSlot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":213,
                                                   "y":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"rankSlot6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":266,
                                                   "y":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_XiaochudasaiPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.bottom = "22";
                                                this.left = "2";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Top1"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_XiaochudasaiPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.left = "53";
                                                this.bottom = "22";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Top2"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_XiaochudasaiPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.left = "107";
                                                this.bottom = "22";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Top3"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_XiaochudasaiPanel_Label6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.left = "157";
                                                this.bottom = "22";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Top4-5"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_XiaochudasaiPanel_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.left = "204";
                                                this.bottom = "22";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Top6-10"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_XiaochudasaiPanel_Label8",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                                this.left = "257";
                                                this.bottom = "22";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"Top11-20"};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"serverRank",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                       this.top = "121";
                                       this.bottom = "30";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "columnWidth":180,
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "percentWidth":100,
                                          "x":8,
                                          "columns":[_XiaochudasaiPanel_DataGridColumn1_c(),_XiaochudasaiPanel_DataGridColumn2_c(),_XiaochudasaiPanel_DataGridColumn3_c()]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_XiaochudasaiPanel_BasicDelayButton1",
                                    "events":{"click":"___XiaochudasaiPanel_BasicDelayButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "7";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":5000,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_XiaochudasaiPanel_BasicDelayButton2",
                                    "events":{"click":"___XiaochudasaiPanel_BasicDelayButton2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "7";
                                       this.right = "100";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":10000,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"txt",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "496";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mouseEnabled":false,
                                 "width":334,
                                 "height":97
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"panel",
                           "stylesFactory":function():void
                           {
                              this.top = "8";
                              this.left = "350";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "height":585,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_XiaochudasaiPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"highestScoreAllRound",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "9";
                                       this.left = "15";
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"xcdsPoint",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "32";
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                       this.right = "10";
                                       this.textAlign = "right";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"xcdsRoundTody",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "32";
                                       this.left = "15";
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Property,
                                    "id":"xcdsProgress",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "15";
                                       this.top = "64";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":13,
                                          "styleName":"ProgressExp",
                                          "color":16777215,
                                          "m":100,
                                          "v":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"star1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":28,
                                          "height":28,
                                          "y":56,
                                          "toolTip":"800 đạt 1 sao"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"star2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":28,
                                          "height":28,
                                          "x":340,
                                          "y":56,
                                          "toolTip":"1100 đạt 2 sao"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"star3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":28,
                                          "height":28,
                                          "x":450,
                                          "y":56,
                                          "toolTip":"1380 đạt 3 sao"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":UIComponent,
                                    "id":"container1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "width":450,
                                          "height":450,
                                          "x":16,
                                          "y":98
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"leftNumTxt",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "8";
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                       this.textAlign = "left";
                                       this.left = "162";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "events":{"click":"___XiaochudasaiPanel_BasicDelayButton3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.top = "7";
                                       this.right = "191.05";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"BtnAdd"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"scoreTxt",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "32";
                                       this.left = "162";
                                       this.color = 65535;
                                       this.fontWeight = "bold";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_XiaochudasaiPanel_BasicDelayButton4",
                                    "events":{"click":"___XiaochudasaiPanel_BasicDelayButton4_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "10";
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"BtnStdRed"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"newRoundBtn",
                                    "events":{"click":"__newRoundBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "96";
                                       this.top = "558";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":1000,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"endThisRoundBtn",
                                    "events":{"click":"__endThisRoundBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "97";
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":1000,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"refreshBtn",
                                    "events":{"click":"__refreshBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "23";
                                       this.top = "558";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":1000,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"container1Mask",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0.5;
                                       this.backgroundColor = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "width":450,
                                          "height":450,
                                          "x":13,
                                          "y":95,
                                          "visible":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"startRoundBtnCenter",
                                             "events":{"click":"__startRoundBtnCenter_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"BtnStdRed"};
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
      
      private var load_state:int = 0;
      
      private var _1825991153serverRank:DataGrid;
      
      public function XiaochudasaiPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 839;
         this.height = 634;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         XiaochudasaiPanel._watcherSetupUtil = param1;
      }
      
      private function allRefresh() : void
      {
         if(!canMove)
         {
            return;
         }
         if(Boolean(wData) && wData.state == 2)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[7]);
            return;
         }
         var _loc1_:String = Language.SUMMER_GAME_PANEL[10];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,askRefresh);
      }
      
      [Bindable(event="propertyChange")]
      public function get panel() : Canvas
      {
         return this._106433028panel;
      }
      
      public function set xcdsProgress(param1:Property) : void
      {
         var _loc2_:Object = this._11282169xcdsProgress;
         if(_loc2_ !== param1)
         {
            this._11282169xcdsProgress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xcdsProgress",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star1() : MyButton
      {
         return this._109757471star1;
      }
      
      public function set panel(param1:Canvas) : void
      {
         var _loc2_:Object = this._106433028panel;
         if(_loc2_ !== param1)
         {
            this._106433028panel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panel",_loc2_,param1));
         }
      }
      
      private function askRefresh(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("XCDSRefresh",new Responder(onRefresh));
         }
      }
      
      private function set xcdsRank(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._675946490xcdsRank;
         if(_loc2_ !== param1)
         {
            this._675946490xcdsRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xcdsRank",_loc2_,param1));
         }
      }
      
      public function set serverRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1825991153serverRank;
         if(_loc2_ !== param1)
         {
            this._1825991153serverRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverRank",_loc2_,param1));
         }
      }
      
      private function onBuy(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(int(param1["num"]) > 0)
         {
            wData.leftNum = param1["num"];
            leftNumTxt.text = Language.XCDS_PANEL[12].replace("{step}",int(wData.leftNum));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star2() : MyButton
      {
         return this._109757472star2;
      }
      
      [Bindable(event="propertyChange")]
      public function get star3() : MyButton
      {
         return this._109757473star3;
      }
      
      private function dropDown() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:XCDSDiabetesBox = null;
         var _loc7_:EnterFrameMove = null;
         var _loc1_:int = 0;
         while(_loc1_ < XCDS_DIABETES_LINE_NUM)
         {
            _loc2_ = 17 * XCDS_DIABETES_LINE_NUM + _loc1_;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < XCDS_DIABETES_LINE_NUM * 2)
            {
               _loc5_ = _loc2_ - _loc4_ * XCDS_DIABETES_LINE_NUM;
               _loc6_ = boxes[_loc5_];
               if(!_loc6_)
               {
                  _loc3_++;
               }
               else if(_loc3_ > 0)
               {
                  ++moveNum;
                  _loc7_ = new EnterFrameMove();
                  _loc7_.target = _loc6_;
                  _loc7_.stepLength = 25;
                  _loc7_.xBy = 0;
                  _loc7_.yBy = 50 * _loc3_;
                  boxes[_loc5_] = null;
                  boxes[_loc5_ + _loc3_ * XCDS_DIABETES_LINE_NUM] = _loc6_;
                  _loc6_.setIndex(_loc5_ + _loc3_ * XCDS_DIABETES_LINE_NUM);
                  _loc7_.addEventListener(EnterFrameMove.EFFECT_END,stepMoveEnd);
                  _loc7_.play(true);
                  moveHandlers.push(_loc7_);
               }
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverRank() : DataGrid
      {
         return this._1825991153serverRank;
      }
      
      public function set star1(param1:MyButton) : void
      {
         var _loc2_:Object = this._109757471star1;
         if(_loc2_ !== param1)
         {
            this._109757471star1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star1",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc2_:Array = ["yellow","blue","green","zi","red","bomb","num2"];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc8_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc2_[_loc3_]) as Class;
            _loc9_ = new _loc8_();
            _loc10_ = new BitmapData(_loc9_.width,_loc9_.height,true,16777215);
            _loc10_.draw(_loc9_);
            rects[_loc3_] = _loc10_;
            _loc3_++;
         }
         var _loc4_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("bomb_eff") as Class;
         var _loc5_:MovieClip = new _loc4_();
         var _loc6_:Matrix = new Matrix();
         var _loc7_:int = 1;
         while(_loc7_ <= _loc5_.totalFrames)
         {
            _loc5_.gotoAndStop(_loc7_);
            if(_loc5_.width * _loc5_.height > 0)
            {
               _loc11_ = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
               _loc6_.tx = 200;
               _loc6_.ty = 200;
               _loc11_.draw(_loc5_,_loc6_);
               effects[_loc7_ - 1] = _loc11_;
            }
            _loc7_++;
         }
         load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         init();
         _core.remote.call("getXCDSData",null);
         if(!hasLoadRank)
         {
            getRank();
            hasLoadRank = true;
         }
      }
      
      public function set star2(param1:MyButton) : void
      {
         var _loc2_:Object = this._109757472star2;
         if(_loc2_ !== param1)
         {
            this._109757472star2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star2",_loc2_,param1));
         }
      }
      
      private function checkDiabete(param1:int) : Boolean
      {
         var _loc4_:Object = null;
         var _loc2_:Object = wData["data"][param1];
         var _loc3_:int = 1;
         _loc4_ = wData["data"][param1 - XCDS_DIABETES_LINE_NUM];
         while(Boolean(_loc4_) && _loc4_.type == _loc2_.type)
         {
            _loc3_++;
            if(_loc4_.index - XCDS_DIABETES_LINE_NUM < 81)
            {
               break;
            }
            _loc4_ = wData["data"][_loc4_.index - XCDS_DIABETES_LINE_NUM];
         }
         _loc4_ = wData["data"][param1 + XCDS_DIABETES_LINE_NUM];
         while(Boolean(_loc4_) && _loc4_.type == _loc2_.type)
         {
            _loc3_++;
            _loc4_ = wData["data"][_loc4_.index + XCDS_DIABETES_LINE_NUM];
         }
         if(_loc3_ >= 3)
         {
            return true;
         }
         _loc3_ = 1;
         _loc4_ = wData["data"][param1 - 1];
         while(Boolean(_loc4_) && Boolean(_loc4_.type == _loc2_.type) && (_loc4_.index + 1) % XCDS_DIABETES_LINE_NUM != 0)
         {
            _loc3_++;
            _loc4_ = wData["data"][_loc4_.index - 1];
         }
         _loc4_ = wData["data"][param1 + 1];
         while(Boolean(_loc4_) && Boolean(_loc4_.type == _loc2_.type) && _loc4_.index % XCDS_DIABETES_LINE_NUM != 0)
         {
            _loc3_++;
            _loc4_ = wData["data"][_loc4_.index + 1];
         }
         if(_loc3_ >= 3)
         {
            return true;
         }
         return false;
      }
      
      private function clean() : void
      {
         var _loc1_:XCDSDiabetesBox = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!boxes)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < XCDS_DIABETES_LINE_NUM)
         {
            _loc3_ = 0;
            while(_loc3_ < XCDS_DIABETES_LINE_NUM)
            {
               _loc4_ = _loc2_ * XCDS_DIABETES_LINE_NUM + _loc3_;
               _loc1_ = boxes[_loc4_];
               if(_loc1_)
               {
                  _loc1_.x = 50 * _loc3_;
                  _loc1_.y = 50 * _loc2_ - 450;
                  _loc1_.setParam(false,1);
                  _loc1_.setType(-1);
               }
               else
               {
                  _loc1_ = new XCDSDiabetesBox();
                  _loc1_.setIndex(_loc4_);
                  boxes[_loc4_] = _loc1_;
                  _loc1_.x = 50 * _loc3_;
                  _loc1_.y = 50 * _loc2_ - 450;
                  container1.addChild(_loc1_);
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get xcdsRank() : ArrayCollection
      {
         return this._675946490xcdsRank;
      }
      
      public function ___XiaochudasaiPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         getRank();
      }
      
      private function startNewRound() : void
      {
         var _loc1_:String = Language.XCDS_PANEL[7];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,_startNewRound);
      }
      
      private function checkPosition() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:XCDSDiabetesBox = null;
         var _loc1_:int = 0;
         while(_loc1_ < XCDS_DIABETES_LINE_NUM * 2)
         {
            _loc2_ = 0;
            while(_loc2_ < XCDS_DIABETES_LINE_NUM)
            {
               _loc3_ = _loc1_ * XCDS_DIABETES_LINE_NUM + _loc2_;
               _loc4_ = boxes[_loc3_];
               if(_loc4_)
               {
                  _loc4_.x = 50 * _loc2_;
                  _loc4_.y = 50 * _loc1_ - 450;
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function set rankSlot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._653011671rankSlot3;
         if(_loc2_ !== param1)
         {
            this._653011671rankSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankSlot3",_loc2_,param1));
         }
      }
      
      public function set rankSlot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._653011670rankSlot4;
         if(_loc2_ !== param1)
         {
            this._653011670rankSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankSlot4",_loc2_,param1));
         }
      }
      
      public function set endThisRoundBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2146689831endThisRoundBtn;
         if(_loc2_ !== param1)
         {
            this._2146689831endThisRoundBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endThisRoundBtn",_loc2_,param1));
         }
      }
      
      public function set rankSlot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._653011669rankSlot5;
         if(_loc2_ !== param1)
         {
            this._653011669rankSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankSlot5",_loc2_,param1));
         }
      }
      
      public function set rankSlot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._653011672rankSlot2;
         if(_loc2_ !== param1)
         {
            this._653011672rankSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankSlot2",_loc2_,param1));
         }
      }
      
      private function _startNewRound(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("XCDSStartNewRound",null);
         }
      }
      
      public function set star3(param1:MyButton) : void
      {
         var _loc2_:Object = this._109757473star3;
         if(_loc2_ !== param1)
         {
            this._109757473star3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star3",_loc2_,param1));
         }
      }
      
      public function set rankSlot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._653011673rankSlot1;
         if(_loc2_ !== param1)
         {
            this._653011673rankSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankSlot1",_loc2_,param1));
         }
      }
      
      public function set rankSlot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._653011668rankSlot6;
         if(_loc2_ !== param1)
         {
            this._653011668rankSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankSlot6",_loc2_,param1));
         }
      }
      
      private function onEndThisRound(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(Boolean(param1["point"]) && param1["point"] >= 0)
         {
            xcdsPoint.text = Language.XCDS_PANEL[8].replace("{point}",param1["point"]);
         }
         if(param1["flag"])
         {
            highestScoreAllRound.text = Language.XCDS_PANEL[9].replace("{highestScore}",param1["flag"].hs);
         }
         container1Mask.visible = true;
         needToEndThisRound = false;
      }
      
      private function getDiabetesRes() : void
      {
         if(load_state != 0)
         {
            _core.remote.call("getXCDSData",null);
            getRank();
            hasLoadRank = true;
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130000467)));
            load_state = 1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      private function effectHandler(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:BitmapData = null;
         if(effect_arr.length == 0)
         {
            removeEventListener(Event.ENTER_FRAME,effectHandler);
            return;
         }
         effect_bm.bitmapData.fillRect(new Rectangle(0,0,EFFECT_BM_WIDTH,EFFECT_BM_HEIGHT),16777215);
         var _loc2_:Matrix = new Matrix();
         var _loc3_:* = 0;
         while(_loc3_ < effect_arr.length)
         {
            if(effects.length == 0)
            {
               break;
            }
            _loc4_ = effect_arr[_loc3_];
            if(_loc4_.counter >= effects.length)
            {
               effect_arr.splice(_loc3_,1);
               _loc3_--;
            }
            else
            {
               _loc5_ = effects[_loc4_.counter++];
               _loc2_.tx = _loc4_._x - 125;
               _loc2_.ty = _loc4_._y - 125;
               effect_bm.bitmapData.draw(_loc5_,_loc2_);
            }
            _loc3_++;
         }
      }
      
      private function _XiaochudasaiPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.XCDS_PANEL[0];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = xcdsRank;
         _loc1_ = Language.XCDS_PANEL[3];
         _loc1_ = Language.XCDS_PANEL[11];
         _loc1_ = ResManager.getIconUrl(4130220003332);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.XCDS_PANEL[6];
         _loc1_ = canMove;
         _loc1_ = Language.XCDS_PANEL[4];
         _loc1_ = canMove;
         _loc1_ = Language.XCDS_PANEL[15];
         _loc1_ = canMove;
         _loc1_ = Language.SUMMER_GAME_PANEL[11];
         _loc1_ = canMove;
         _loc1_ = Language.XCDS_PANEL[4];
      }
      
      [Bindable(event="propertyChange")]
      public function get scoreTxt() : Label
      {
         return this._485512578scoreTxt;
      }
      
      private function buy() : void
      {
         var _loc1_:String = Language.XCDS_PANEL[14];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,askBuy);
      }
      
      private function _XiaochudasaiPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiaochudasaiPanel_BasicTitleCanvas1.text = param1;
         },"_XiaochudasaiPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            timeLable.filters = param1;
         },"timeLable.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            awardLable.filters = param1;
         },"awardLable.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiaochudasaiPanel_Label3.filters = param1;
         },"_XiaochudasaiPanel_Label3.filters");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiaochudasaiPanel_Label4.filters = param1;
         },"_XiaochudasaiPanel_Label4.filters");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiaochudasaiPanel_Label5.filters = param1;
         },"_XiaochudasaiPanel_Label5.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiaochudasaiPanel_Label6.filters = param1;
         },"_XiaochudasaiPanel_Label6.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiaochudasaiPanel_Label7.filters = param1;
         },"_XiaochudasaiPanel_Label7.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiaochudasaiPanel_Label8.filters = param1;
         },"_XiaochudasaiPanel_Label8.filters");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return xcdsRank;
         },function(param1:Object):void
         {
            serverRank.dataProvider = param1;
         },"serverRank.dataProvider");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiaochudasaiPanel_BasicDelayButton1.label = param1;
         },"_XiaochudasaiPanel_BasicDelayButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiaochudasaiPanel_BasicDelayButton2.label = param1;
         },"_XiaochudasaiPanel_BasicDelayButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003332);
         },function(param1:Object):void
         {
            _XiaochudasaiPanel_Image1.source = param1;
         },"_XiaochudasaiPanel_Image1.source");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            highestScoreAllRound.filters = param1;
         },"highestScoreAllRound.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            xcdsPoint.filters = param1;
         },"xcdsPoint.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            xcdsRoundTody.filters = param1;
         },"xcdsRoundTody.filters");
         result[15] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            star1.skin = param1;
         },"star1.skin");
         result[16] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            star2.skin = param1;
         },"star2.skin");
         result[17] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            star3.skin = param1;
         },"star3.skin");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            leftNumTxt.filters = param1;
         },"leftNumTxt.filters");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            scoreTxt.filters = param1;
         },"scoreTxt.filters");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiaochudasaiPanel_BasicDelayButton4.label = param1;
         },"_XiaochudasaiPanel_BasicDelayButton4.label");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canMove;
         },function(param1:Boolean):void
         {
            newRoundBtn.enabled = param1;
         },"newRoundBtn.enabled");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            newRoundBtn.label = param1;
         },"newRoundBtn.label");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canMove;
         },function(param1:Boolean):void
         {
            endThisRoundBtn.enabled = param1;
         },"endThisRoundBtn.enabled");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            endThisRoundBtn.label = param1;
         },"endThisRoundBtn.label");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canMove;
         },function(param1:Boolean):void
         {
            refreshBtn.enabled = param1;
         },"refreshBtn.enabled");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshBtn.label = param1;
         },"refreshBtn.label");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canMove;
         },function(param1:Boolean):void
         {
            startRoundBtnCenter.enabled = param1;
         },"startRoundBtnCenter.enabled");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XCDS_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            startRoundBtnCenter.label = param1;
         },"startRoundBtnCenter.label");
         result[29] = binding;
         return result;
      }
      
      public function __endThisRoundBtn_click(param1:MouseEvent) : void
      {
         endThisRound();
      }
      
      private function moveEndHandler(param1:Event) : void
      {
         var _loc2_:Array = wData["data"];
         diabetes = checkDiabete(moveBox1.index) || checkDiabete(moveBox2.index);
         if(diabetes)
         {
            canMove = false;
            Core.getInstance().remote.call("XCDSMoveBox",null,moveBox1.index,moveBox2.index);
            checkPosition();
            moveBox1 = null;
            moveBox2 = null;
            return;
         }
         swapBoxes(moveEndHandler2);
      }
      
      public function onXCDSRoundEnd(param1:*) : void
      {
         if(param1)
         {
            needToEndThisRound = true;
         }
      }
      
      private function getAward() : void
      {
         _core.remote.call("XCDSGetAward",null);
      }
      
      private function getRank() : void
      {
         _core.remote.call("XCDSGetRank",null);
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" diabetes load res Error ");
      }
      
      public function onSetBox(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = Boolean(param1["flag"]);
         if(_loc2_)
         {
            steps = param1["steps"];
            showStep();
         }
         else
         {
            this.visible = false;
         }
      }
      
      public function set awardLable(param1:Label) : void
      {
         var _loc2_:Object = this._360515433awardLable;
         if(_loc2_ !== param1)
         {
            this._360515433awardLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardLable",_loc2_,param1));
         }
      }
      
      private function _endThisRound(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("xcdsEndThisRound",new Responder(onEndThisRound));
         }
      }
      
      public function ___XiaochudasaiPanel_BasicDelayButton4_click(param1:MouseEvent) : void
      {
         openXCDSShop();
      }
      
      public function set xcdsRoundTody(param1:Label) : void
      {
         var _loc2_:Object = this._613866340xcdsRoundTody;
         if(_loc2_ !== param1)
         {
            this._613866340xcdsRoundTody = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xcdsRoundTody",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get highestScoreAllRound() : Label
      {
         return this._1739702565highestScoreAllRound;
      }
      
      [Bindable(event="propertyChange")]
      public function get container1Mask() : Canvas
      {
         return this._812013276container1Mask;
      }
      
      private function stepMoveEnd(param1:Event) : void
      {
         --moveNum;
         if(moveNum > 0)
         {
            return;
         }
         moveHandlers.length = 0;
         refreshQueue();
         checkPosition();
         showStep();
      }
      
      private function setProgressBar(param1:Number) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(param1 < 0)
         {
            xcdsProgress.v = _loc3_;
            return;
         }
         if(param1 >= XCDS_STAR_LEV3)
         {
            _loc3_ = 100;
            _loc2_ = 3;
         }
         else if(param1 >= XCDS_STAR_LEV2)
         {
            _loc3_ = Math.round(param1 / XCDS_STAR_LEV3 * 100);
            _loc2_ = 2;
         }
         else if(param1 >= XCDS_STAR_LEV1)
         {
            _loc3_ = Math.round(param1 / XCDS_STAR_LEV3 * 100);
            _loc2_ = 1;
         }
         else
         {
            _loc3_ = Math.round(param1 / XCDS_STAR_LEV3 * 100);
            _loc2_ = 0;
         }
         var _loc4_:* = 1;
         while(_loc4_ <= 3)
         {
            if(_loc4_ <= _loc2_)
            {
               this["star" + _loc4_].enabled = true;
            }
            else
            {
               this["star" + _loc4_].enabled = false;
            }
            _loc4_++;
         }
         xcdsProgress.v = _loc3_;
      }
      
      public function set txt(param1:IntroText) : void
      {
         var _loc2_:Object = this._115312txt;
         if(_loc2_ !== param1)
         {
            this._115312txt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt",_loc2_,param1));
         }
      }
      
      private function endThisRound() : void
      {
         var _loc1_:String = Language.XCDS_PANEL[16];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,_endThisRound);
      }
      
      private function refreshQueue() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:XCDSDiabetesBox = null;
         var _loc5_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < 9)
         {
            _loc2_ = 0;
            while(_loc2_ < 9)
            {
               _loc3_ = _loc1_ * 9 + _loc2_;
               _loc4_ = boxes[_loc3_];
               if(!_loc4_)
               {
                  _loc4_ = new XCDSDiabetesBox();
                  _loc5_ = stepData[_loc3_];
                  _loc4_.setIndex(_loc3_);
                  _loc4_.setParam(_loc5_.bomb,_loc5_.num);
                  _loc4_.setType(_loc5_.type);
                  boxes[_loc3_] = _loc4_;
                  _loc4_.x = 50 * _loc2_;
                  _loc4_.y = 50 * _loc1_ - 450;
                  container1.addChild(_loc4_);
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLable() : Label
      {
         return this._18543865timeLable;
      }
      
      [Bindable(event="propertyChange")]
      public function get startRoundBtnCenter() : BasicGlowButton
      {
         return this._1578405093startRoundBtnCenter;
      }
      
      public function set scoreTxt(param1:Label) : void
      {
         var _loc2_:Object = this._485512578scoreTxt;
         if(_loc2_ !== param1)
         {
            this._485512578scoreTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scoreTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xcdsPoint() : Label
      {
         return this._519060726xcdsPoint;
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
         setTimeout(setHasLoadRank,5000);
      }
      
      public function set refreshBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._321863295refreshBtn;
         if(_loc2_ !== param1)
         {
            this._321863295refreshBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshBtn",_loc2_,param1));
         }
      }
      
      public function ___XiaochudasaiPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get xcdsProgress() : Property
      {
         return this._11282169xcdsProgress;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:XCDSDiabetesBox = null;
         txt.htmlText = Language.XCDS_PANEL[5];
         boxes = new Dictionary();
         _loc1_ = 0;
         while(_loc1_ < XCDS_DIABETES_LINE_NUM * 2)
         {
            _loc5_ = 0;
            while(_loc5_ < XCDS_DIABETES_LINE_NUM)
            {
               _loc6_ = _loc1_ * XCDS_DIABETES_LINE_NUM + _loc5_;
               _loc7_ = new XCDSDiabetesBox();
               _loc7_.setIndex(_loc6_);
               _loc7_.setParam(false,1);
               _loc7_.setType(-1);
               _loc7_.x = 50 * _loc5_;
               _loc7_.y = 50 * _loc1_ - 450;
               boxes[_loc6_] = _loc7_;
               container1.addChild(_loc7_);
               _loc5_++;
            }
            _loc1_++;
         }
         var _loc2_:Sprite = new Sprite();
         _loc2_.graphics.beginFill(16777215,1);
         _loc2_.graphics.drawRect(0,0,450,450);
         _loc2_.graphics.endFill();
         var _loc3_:UIComponent = new UIComponent();
         _loc3_.x = container1.x;
         _loc3_.y = container1.y;
         _loc3_.addChild(_loc2_);
         panel.addChild(_loc3_);
         container1.mask = _loc2_;
         effect_bm = new Bitmap(new BitmapData(EFFECT_BM_WIDTH,EFFECT_BM_HEIGHT,true,16777215));
         effect_bm.x = container1.x - 50;
         effect_bm.y = container1.y - 50;
         var _loc4_:UIComponent = new UIComponent();
         _loc4_.addChild(effect_bm);
         _loc4_.mouseChildren = false;
         _loc4_.mouseEnabled = false;
         panel.addChild(_loc4_);
      }
      
      private function openXCDSShop() : void
      {
         _core.remote.call("XCDSOpenShop",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get rankSlot2() : ItemSlot
      {
         return this._653011672rankSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankSlot3() : ItemSlot
      {
         return this._653011671rankSlot3;
      }
      
      private function setHasLoadRank() : void
      {
         hasLoadRank = false;
      }
      
      public function checkDiabetes(param1:int, param2:int) : void
      {
         if(!canMove)
         {
            return;
         }
         if(Boolean(wData) && int(wData.leftNum) == 0)
         {
            _core.sysMidNote(Language.XCDS_PANEL[17]);
            return;
         }
         if(moveBox1 != null || moveBox2 != null)
         {
            return;
         }
         moveBox1 = boxes[param1];
         moveBox2 = boxes[param2];
         swapBoxes(moveEndHandler);
      }
      
      [Bindable(event="propertyChange")]
      public function get endThisRoundBtn() : BasicDelayButton
      {
         return this._2146689831endThisRoundBtn;
      }
      
      public function __refreshBtn_click(param1:MouseEvent) : void
      {
         allRefresh();
      }
      
      [Bindable(event="propertyChange")]
      public function get rankSlot1() : ItemSlot
      {
         return this._653011673rankSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankSlot4() : ItemSlot
      {
         return this._653011670rankSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankSlot5() : ItemSlot
      {
         return this._653011669rankSlot5;
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:EnterFrameMove = null;
         if(!param1 || !param1["flag"])
         {
            return;
         }
         var _loc2_:Object = param1["flag"];
         if(!param1["data"])
         {
            container1Mask.visible = true;
            leftNumTxt.text = Language.XCDS_PANEL[12].replace("{step}","N/A");
            scoreTxt.text = Language.XCDS_PANEL[13].replace("{score}","N/A");
         }
         else
         {
            container1Mask.visible = false;
            needToEndThisRound = false;
            clean();
            _loc3_ = 0;
            while(_loc3_ < moveHandlers.length)
            {
               _loc4_ = moveHandlers[_loc3_];
               if(_loc4_)
               {
                  _loc4_.stop();
                  _loc4_.destroy();
               }
               _loc3_++;
            }
            moveHandlers.length = 0;
            wData = param1["data"];
            leftNumTxt.text = Language.XCDS_PANEL[12].replace("{step}",int(wData.leftNum));
            scoreTxt.text = Language.XCDS_PANEL[13].replace("{score}",(Math.floor(int(wData.score) * 10) / 10).toString());
            setProgressBar(wData.score);
            canMove = true;
            refreshLand(wData["data"]);
            checkPosition();
         }
         xcdsRoundTody.text = Language.XCDS_PANEL[10].replace("{round}",_loc2_.r);
         highestScoreAllRound.text = Language.XCDS_PANEL[9].replace("{highestScore}",_loc2_.hs);
         xcdsPoint.text = Language.XCDS_PANEL[8].replace("{point}",param1["point"]);
         timeLable.text = Language.XCDS_PANEL[1].replace("{actTime}",param1["activeTime"]);
         awardLable.text = Language.XCDS_PANEL[2].replace("{awradTime}",param1["awardTime"]);
      }
      
      private function askBuy(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("xcdsDiabetesBuy",new Responder(onBuy));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankSlot6() : ItemSlot
      {
         return this._653011668rankSlot6;
      }
      
      public function set newRoundBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1256566702newRoundBtn;
         if(_loc2_ !== param1)
         {
            this._1256566702newRoundBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newRoundBtn",_loc2_,param1));
         }
      }
      
      private function showStep() : void
      {
         var _loc4_:int = 0;
         var _loc5_:XCDSDiabetesBox = null;
         if(!steps || steps.length == 0)
         {
            canMove = true;
            wData["data"] = stepData;
            wData.leftNum = int(wData.leftNum) - 1;
            leftNumTxt.text = Language.XCDS_PANEL[12].replace("{step}",int(wData.leftNum));
            if(needToEndThisRound)
            {
               container1Mask.visible = true;
               _core.remote.call("xcdsEndThisRound",new Responder(onEndThisRound));
            }
            return;
         }
         var _loc1_:Object = steps.shift();
         stepData = _loc1_["data"];
         wData.score = _loc1_["score"];
         setProgressBar(wData.score);
         scoreTxt.text = Language.XCDS_PANEL[13].replace("{score}",(Math.floor(int(wData.score) * 10) / 10).toString());
         effect_arr = [];
         if(!hasEventListener(Event.ENTER_FRAME))
         {
            addEventListener(Event.ENTER_FRAME,effectHandler);
         }
         var _loc2_:Array = _loc1_["remove"];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = int(_loc2_[_loc3_]);
            _loc5_ = boxes[_loc4_];
            if(_loc5_)
            {
               boxes[_loc4_] = null;
               _loc5_.destroy();
               effect_arr.push({
                  "_x":_loc5_.x,
                  "_y":_loc5_.y,
                  "counter":0
               });
            }
            _loc3_++;
         }
         dropDown();
      }
      
      private function _XiaochudasaiPanel_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Điểm cao nhất";
         _loc1_.dataField = "s";
         _loc1_.width = 100;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get xcdsRoundTody() : Label
      {
         return this._613866340xcdsRoundTody;
      }
      
      private function refreshLand(param1:Array) : void
      {
         var _loc3_:XCDSDiabetesBox = null;
         var _loc4_:Object = null;
         if(!param1)
         {
            return;
         }
         clean();
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = boxes[_loc2_];
            if(param1[_loc2_])
            {
               _loc4_ = param1[_loc2_];
               if(_loc3_)
               {
                  _loc3_.setParam(_loc4_.bomb,_loc4_.num);
                  _loc3_.setType(_loc4_.type);
                  _loc3_.setIndex(_loc2_);
               }
            }
            else if(_loc3_)
            {
               _loc3_.setParam(false,1);
               _loc3_.setType(-1);
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardLable() : Label
      {
         return this._360515433awardLable;
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshBtn() : BasicDelayButton
      {
         return this._321863295refreshBtn;
      }
      
      private function set canMove(param1:Boolean) : void
      {
         var _loc2_:Object = this._549570497canMove;
         if(_loc2_ !== param1)
         {
            this._549570497canMove = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canMove",_loc2_,param1));
         }
      }
      
      public function ___XiaochudasaiPanel_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:XiaochudasaiPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _XiaochudasaiPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_XiaochudasaiPanelWatcherSetupUtil");
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
      
      private function moveEndHandler2(param1:Event) : void
      {
         moveBox1 = null;
         moveBox2 = null;
         checkPosition();
      }
      
      public function onGetAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!param1["flag"])
         {
            this.visible = false;
            return;
         }
         if(wData)
         {
            wData.state = 2;
         }
      }
      
      public function set container1(param1:UIComponent) : void
      {
         var _loc2_:Object = this._145245136container1;
         if(_loc2_ !== param1)
         {
            this._145245136container1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container1",_loc2_,param1));
         }
      }
      
      private function _XiaochudasaiPanel_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Server";
         _loc1_.dataField = "sn";
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get newRoundBtn() : BasicDelayButton
      {
         return this._1256566702newRoundBtn;
      }
      
      public function set highestScoreAllRound(param1:Label) : void
      {
         var _loc2_:Object = this._1739702565highestScoreAllRound;
         if(_loc2_ !== param1)
         {
            this._1739702565highestScoreAllRound = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highestScoreAllRound",_loc2_,param1));
         }
      }
      
      public function set container1Mask(param1:Canvas) : void
      {
         var _loc2_:Object = this._812013276container1Mask;
         if(_loc2_ !== param1)
         {
            this._812013276container1Mask = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container1Mask",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get canMove() : Boolean
      {
         return this._549570497canMove;
      }
      
      public function onGetRank(param1:Object) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:Sort = null;
         if(param1)
         {
            _loc2_ = new ArrayCollection();
            for(_loc3_ in param1)
            {
               _loc2_.addItem(param1[_loc3_]);
            }
            _loc4_ = new Sort();
            _loc4_.fields = [new SortField("r")];
            _loc2_.sort = _loc4_;
            _loc2_.refresh();
            xcdsRank = _loc2_;
         }
      }
      
      public function __startRoundBtnCenter_click(param1:MouseEvent) : void
      {
         startNewRound();
      }
      
      public function set startRoundBtnCenter(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1578405093startRoundBtnCenter;
         if(_loc2_ !== param1)
         {
            this._1578405093startRoundBtnCenter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startRoundBtnCenter",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         var _loc2_:ItemSlot = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         var _loc1_:* = 1;
         while(_loc1_ < 7)
         {
            _loc2_ = this["rankSlot" + _loc1_] as ItemSlot;
            _loc2_.clean();
            _loc2_.type = GamePredef.TBL_ITEM_TEMPLATE;
            _loc2_.giid = XCDSAwardConfig[_loc1_ - 1];
            _loc1_++;
         }
         getDiabetesRes();
         if(_watcher)
         {
            _watcher.unwatch();
            _watcher = null;
         }
         _watcher = ChangeWatcher.watch(_core.player,"xcds2403p",updateCurrency);
         this.updateCurrency();
      }
      
      public function __newRoundBtn_click(param1:MouseEvent) : void
      {
         startNewRound();
      }
      
      [Bindable(event="propertyChange")]
      public function get container1() : UIComponent
      {
         return this._145245136container1;
      }
      
      public function set leftNumTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1975768049leftNumTxt;
         if(_loc2_ !== param1)
         {
            this._1975768049leftNumTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftNumTxt",_loc2_,param1));
         }
      }
      
      private function swapBoxes(param1:Function) : void
      {
         var _loc2_:Object = boxes[moveBox1.index];
         var _loc3_:int = moveBox1.index;
         var _loc4_:int = moveBox2.index;
         boxes[moveBox1.index] = boxes[moveBox2.index];
         boxes[moveBox2.index] = _loc2_;
         var _loc5_:int = moveBox1.index;
         moveBox1.index = moveBox2.index;
         moveBox2.index = _loc5_;
         var _loc6_:Object = wData["data"][moveBox1.index];
         wData["data"][moveBox1.index] = wData["data"][moveBox2.index];
         wData["data"][moveBox2.index] = _loc6_;
         var _loc7_:int = int(wData["data"][moveBox1.index].index);
         wData["data"][moveBox1.index].index = wData["data"][moveBox2.index].index;
         wData["data"][moveBox2.index].index = _loc7_;
         var _loc8_:EnterFrameMove = new EnterFrameMove();
         _loc8_.target = moveBox1;
         _loc8_.stepLength = 25;
         _loc8_.xBy = moveBox2.x - moveBox1.x;
         _loc8_.yBy = moveBox2.y - moveBox1.y;
         _loc8_.addEventListener(EnterFrameMove.EFFECT_END,param1);
         _loc8_.play(true);
         var _loc9_:EnterFrameMove = new EnterFrameMove();
         _loc9_.target = moveBox2;
         _loc9_.stepLength = 25;
         _loc9_.xBy = moveBox1.x - moveBox2.x;
         _loc9_.yBy = moveBox1.y - moveBox2.y;
         _loc9_.play(true);
      }
      
      private function _XiaochudasaiPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "XH";
         _loc1_.dataField = "r";
         _loc1_.width = 20;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftNumTxt() : Label
      {
         return this._1975768049leftNumTxt;
      }
      
      public function set timeLable(param1:Label) : void
      {
         var _loc2_:Object = this._18543865timeLable;
         if(_loc2_ !== param1)
         {
            this._18543865timeLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLable",_loc2_,param1));
         }
      }
      
      private function updateCurrency(param1:Event = null) : void
      {
         xcdsPoint.text = Language.XCDS_PANEL[8].replace("{point}",_core.player.hasOwnProperty("xcds2403p") ? _core.player["xcds2403p"] : 0);
      }
      
      public function set xcdsPoint(param1:Label) : void
      {
         var _loc2_:Object = this._519060726xcdsPoint;
         if(_loc2_ !== param1)
         {
            this._519060726xcdsPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xcdsPoint",_loc2_,param1));
         }
      }
      
      private function onRefresh(param1:Object) : void
      {
         if(!param1 || !param1["data"])
         {
            return;
         }
         wData = param1["data"];
         leftNumTxt.text = Language.XCDS_PANEL[12].replace("{step}",int(wData.leftNum));
         scoreTxt.text = Language.XCDS_PANEL[13].replace("{score}",(Math.floor(int(wData.score) * 10) / 10).toString());
         setProgressBar(wData.score);
         refreshLand(wData["data"]);
         checkPosition();
         if(needToEndThisRound)
         {
            container1Mask.visible = true;
            _core.remote.call("xcdsEndThisRound",new Responder(onEndThisRound));
         }
      }
   }
}

