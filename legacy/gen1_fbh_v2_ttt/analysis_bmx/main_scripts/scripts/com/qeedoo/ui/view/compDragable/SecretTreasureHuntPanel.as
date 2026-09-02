package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.SecretTreasureHuntPlayerView;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SecretTreasureHuntPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const CALL_HELP_INTERVAL:Number = 60 * 1000;
      
      public var _SecretTreasureHuntPanel_Image1:Image;
      
      private var npcShowArr:Array = [];
      
      public var _SecretTreasureHuntPanel_Image4:Image;
      
      public var _SecretTreasureHuntPanel_Image5:Image;
      
      public var _SecretTreasureHuntPanel_Image6:Image;
      
      public var _SecretTreasureHuntPanel_Image8:Image;
      
      public var _SecretTreasureHuntPanel_Image3:Image;
      
      public var _SecretTreasureHuntPanel_Image7:Image;
      
      public var _SecretTreasureHuntPanel_Image9:Image;
      
      private var _1756909476friendList:DataGrid;
      
      private var loadcid:Number = 0;
      
      private var _502003329secretTreasureHuntAuto:Button;
      
      private var _808329852vsFlop:ViewStack;
      
      private var ax:* = 975;
      
      private var _1347466023XYshaiziNum:Label;
      
      private var _1045285837secretTreasureHuntXY:Button;
      
      private var moving:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var atNum:Number = 1;
      
      private var bx:* = -450;
      
      private var by:* = -211;
      
      private var ay:* = 544;
      
      private var _911423782allmain:Canvas;
      
      private var allAutoNum:Number = 0;
      
      private var _core:Core = Core.getInstance();
      
      private var _876648130XYSZNum:int = 0;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _759494043xjBuff:Label;
      
      private var strShowArr:Array = ["Chuyện gì cũng có thể xảy ra\n","Bạn đã mở Bảo rương nhỏ nhận: {name}\n","Bạn đã mở Bảo rương trung nhận：{name}\n","Bạn đã mở Bảo rương lớn nhận: {name}\n","Khi tầm bảo đã thuận lợi đánh bại kẻ địch!\n","Khi tầm bảo đã bị kẻ địch đánh cho 1 trận, phải trị thương trong 2 phút.\n","Bạn đã đạp trúng cơ quan, bị chuyển đến nơi khác.\n","Bạn nhận {num} Ngân Phiếu\n","Bạn đã giải được 1 câu đố, nhận {num} điểm.\n","Khi tầm bảo bạn đã nhận {num} exp.\n","Bạn đã đạp trúng cơ quan, bị chuyển về chỗ cũ.\n","Bạn không cẩn thận rơi xuống giếng, bất động trong 5 phút!\n"];
      
      private var isAutoPlay:Boolean = false;
      
      private var _540386746PTshaiziNum0:Label;
      
      private var _1125810486PTshaiziNum:Label;
      
      private var _2072063257closeTiShi:Button;
      
      private var load:Loader;
      
      private var _2128897502scoreRank:DataGrid;
      
      private var _1572459433tishiCanvas:Canvas;
      
      private var _1642576621speedRank:DataGrid;
      
      private var lastNum:Number = 50;
      
      public var CALL_HELP_DIC:Dictionary = new Dictionary();
      
      private var canPlay:Boolean = true;
      
      public var _SecretTreasureHuntPanel_DataGridColumn7:DataGridColumn;
      
      private var _1535831509openTiShi:Button;
      
      private var _985752863player:SecretTreasureHuntPlayerView;
      
      private var _470111259PTSZNum:int = 0;
      
      private var _1045286090secretTreasureHuntPT:Button;
      
      private var _540386747PTshaiziNum1:Label;
      
      private var hasAutoNum:Number = 0;
      
      private var checkNum:Object = {
         "pt":false,
         "xy":false
      };
      
      private var step_num:int = 0;
      
      private var shaiziArr:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var _1240338023goldJC:Button;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1458240628BuffIcon:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _3343801main:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":1500,
               "height":877,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"allmain",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "width":1500,
                        "height":877,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"main",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":1500,
                                 "height":877,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "height":877,
                                          "width":1500
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SecretTreasureHuntPlayerView,
                                    "id":"player",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":35
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"tishiCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"StandardContent",
                                 "x":23,
                                 "y":23,
                                 "width":300,
                                 "height":460,
                                 "visible":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn0",
                                    "events":{"click":"__bangBtn0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "selected":true,
                                          "labelPlacement":"bottom",
                                          "width":60,
                                          "x":10,
                                          "y":38
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn1",
                                    "events":{"click":"__bangBtn1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "width":60,
                                          "x":70,
                                          "y":38
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn2",
                                    "events":{"click":"__bangBtn2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "width":60,
                                          "x":130,
                                          "y":38
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "events":{"click":"___SecretTreasureHuntPanel_BasicDelayButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":300000,
                                          "label":"Làm mới XP",
                                          "styleName":"BtnStdGreen",
                                          "x":224,
                                          "y":34,
                                          "toolTip":"Làm mới cách 5p/lần"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"vsFlop",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":57,
                                          "width":276,
                                          "height":296,
                                          "creationPolicy":"all",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"RoundedGradientBorder",
                                                   "label":"Hornor",
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "x":0,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"scoreRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":8,
                                                            "y":8,
                                                            "columns":[_SecretTreasureHuntPanel_DataGridColumn1_c(),_SecretTreasureHuntPanel_DataGridColumn2_c(),_SecretTreasureHuntPanel_DataGridColumn3_c()]
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
                                                   "styleName":"RoundedGradientBorder",
                                                   "label":"Hornor",
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "x":0,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"speedRank",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":8,
                                                            "y":8,
                                                            "columns":[_SecretTreasureHuntPanel_DataGridColumn4_c(),_SecretTreasureHuntPanel_DataGridColumn5_c(),_SecretTreasureHuntPanel_DataGridColumn6_c()]
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
                                                   "styleName":"RoundedGradientBorder",
                                                   "label":"Hornor",
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "x":0,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"friendList",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "columnWidth":180,
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "x":8,
                                                            "y":8,
                                                            "columns":[_SecretTreasureHuntPanel_DataGridColumn7_i(),_SecretTreasureHuntPanel_DataGridColumn8_c()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"goldJC",
                                    "events":{"click":"__goldJC_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":120,
                                          "y":432,
                                          "styleName":"BtnStdGreen",
                                          "label":"Mở khóa vàng"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"xjBuff",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":70,
                                          "y":361,
                                          "width":216,
                                          "height":63
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"BuffIcon",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":361,
                                          "width":32,
                                          "height":32
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"openTiShi",
                           "events":{"click":"__openTiShi_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"EquipBagRight",
                                 "x":13,
                                 "y":178,
                                 "width":11,
                                 "height":131,
                                 "visible":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"closeTiShi",
                           "events":{"click":"__closeTiShi_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"EquipBagLeft",
                                 "x":13,
                                 "y":178,
                                 "width":11,
                                 "height":131,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"XYshaiziCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":325,
                                 "y":341,
                                 "width":421,
                                 "height":97,
                                 "visible":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":421,
                                          "height":97
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image4",
                                    "events":{"click":"___SecretTreasureHuntPanel_Image4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":16,
                                          "y":13,
                                          "width":52,
                                          "height":52
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image5",
                                    "events":{"click":"___SecretTreasureHuntPanel_Image5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":83,
                                          "y":13,
                                          "width":52,
                                          "height":52
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image6",
                                    "events":{"click":"___SecretTreasureHuntPanel_Image6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":150,
                                          "y":13,
                                          "width":52,
                                          "height":52
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image7",
                                    "events":{"click":"___SecretTreasureHuntPanel_Image7_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":217,
                                          "y":13,
                                          "width":52,
                                          "height":52
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image8",
                                    "events":{"click":"___SecretTreasureHuntPanel_Image8_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":284,
                                          "y":13,
                                          "width":52,
                                          "height":52
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretTreasureHuntPanel_Image9",
                                    "events":{"click":"___SecretTreasureHuntPanel_Image9_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":351,
                                          "y":13,
                                          "width":52,
                                          "height":52
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":290,
                                 "y":427,
                                 "width":508,
                                 "height":163,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"secretTreasureHuntPT",
                                    "events":{"click":"__secretTreasureHuntPT_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "styleName":"secretTreasureHuntPT",
                                          "width":123,
                                          "height":108
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"secretTreasureHuntXY",
                                    "events":{"click":"__secretTreasureHuntXY_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":10,
                                          "styleName":"secretTreasureHuntXY",
                                          "width":123,
                                          "height":108
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"secretTreasureHuntAuto",
                                    "events":{"click":"__secretTreasureHuntAuto_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":356,
                                          "y":10,
                                          "styleName":"secretTreasureHuntAuto",
                                          "width":123,
                                          "height":108
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"PTshaiziNum",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":126,
                                          "width":42,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"XYshaiziNum",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":254,
                                          "y":126,
                                          "width":36.5,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___SecretTreasureHuntPanel_Button7_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":115,
                                          "y":126,
                                          "styleName":"BtnAdd",
                                          "width":18,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___SecretTreasureHuntPanel_Button8_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":288,
                                          "y":126,
                                          "styleName":"BtnAdd",
                                          "width":18,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"PTshaiziNum0",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"Xí Ngầu：",
                                          "x":10,
                                          "y":126,
                                          "width":66,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"PTshaiziNum1",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"XN May Mắn：",
                                          "x":183,
                                          "y":126,
                                          "width":72,
                                          "height":20
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___SecretTreasureHuntPanel_Button9_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":850,
                                 "y":25,
                                 "styleName":"secretTreasureHuntExit",
                                 "height":53,
                                 "width":53
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
      
      private var _1929187547XYshaiziCanvas:Canvas;
      
      public function SecretTreasureHuntPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 1500;
         this.height = 877;
         this.movable = false;
         this.addEventListener("creationComplete",___SecretTreasureHuntPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretTreasureHuntPanel._watcherSetupUtil = param1;
      }
      
      public function onGetSTHScoreRank(param1:Object) : void
      {
         scoreRank.dataProvider = param1;
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn6_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Th.gian(giây)";
         _loc1_.dataField = "time";
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get PTSZNum() : int
      {
         return this._470111259PTSZNum;
      }
      
      public function getPTSZNum() : int
      {
         return PTSZNum;
      }
      
      public function __closeTiShi_click(param1:MouseEvent) : void
      {
         openCloseTiShiCanvas(0);
      }
      
      public function __secretTreasureHuntAuto_click(param1:MouseEvent) : void
      {
         guajiFunc();
      }
      
      public function set speedRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1642576621speedRank;
         if(_loc2_ !== param1)
         {
            this._1642576621speedRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speedRank",_loc2_,param1));
         }
      }
      
      public function ___SecretTreasureHuntPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         refreshSTHRank();
      }
      
      public function onSetSecTreaHuntPlayStop(param1:int, param2:int) : *
      {
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc3_:Number = 60;
         var _loc4_:String = "";
         switch(param1)
         {
            case 3:
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[0];
               }
               break;
            case 4:
               _loc5_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param2].name;
               _loc6_ = Number(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param2].color);
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[1].replace("{name}",_loc5_);
                  _loc4_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc6_] + "\'>" + _loc4_ + "</font>";
               }
               else
               {
                  _loc7_ = Language.SEC_TREA_HUNT[17] + _loc5_;
                  _core.sysMidNote(_loc7_);
               }
               break;
            case 5:
               _loc5_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param2].name;
               _loc6_ = Number(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param2].color);
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[2].replace("{name}",_loc5_);
                  _loc4_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc6_] + "\'>" + _loc4_ + "</font>";
               }
               else
               {
                  _loc7_ = Language.SEC_TREA_HUNT[17] + _loc5_;
                  _core.sysMidNote(_loc7_);
               }
               break;
            case 6:
               if(isAutoPlay)
               {
                  _loc6_ = Number(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param2].color);
                  _loc4_ = strShowArr[3].replace("{name}",GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param2].name);
                  _loc4_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc6_] + "\'>" + _loc4_ + "</font>";
                  initView();
               }
               else
               {
                  _loc8_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_END);
                  if(_loc8_)
                  {
                     _loc8_.itemNum = param2;
                     _loc8_.showPanel();
                  }
                  secretTreasureHuntPT.enabled = false;
                  secretTreasureHuntXY.enabled = false;
                  secretTreasureHuntAuto.enabled = false;
               }
               break;
            case 7:
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[4];
               }
               else
               {
                  showPanel();
                  if(param2 == 1)
                  {
                     _core.sysMidNote(strShowArr[4]);
                  }
                  if(param2 == 0)
                  {
                     _core.sysMidNote(strShowArr[5]);
                     onSetSecTreaHuntCanPlay(false,1);
                  }
               }
               break;
            case 9:
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[6];
               }
               else
               {
                  _core.sysMidNote(Language.SEC_TREA_HUNT[23]);
               }
               atNum = param2;
               player.refresh(param2);
               break;
            case 10:
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[7].replace("{num}",param2);
               }
               else
               {
                  _loc7_ = Language.SEC_TREA_HUNT[19].replace("{num}",param2);
                  _core.sysMidNote(_loc7_);
               }
               break;
            case 11:
               break;
            case 12:
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[9].replace("{num}",param2);
               }
               else
               {
                  _loc7_ = Language.SEC_TREA_HUNT[18].replace("{num}",param2);
                  _core.sysMidNote(_loc7_);
               }
               break;
            case 13:
               if(isAutoPlay)
               {
                  _loc4_ = strShowArr[10];
               }
               else
               {
                  _core.sysMidNote(Language.SEC_TREA_HUNT[24]);
               }
               atNum = param2;
               player.refresh(param2);
         }
         if(isAutoPlay)
         {
            _loc8_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
            if(_loc8_)
            {
               _loc8_._leftTime = 2 * 60;
               _loc8_._strShow = _loc4_;
               _loc8_._autoStr = "Đang tự động tầm bảo" + hasAutoNum + "/" + allAutoNum;
            }
         }
         moving = false;
      }
      
      public function ___SecretTreasureHuntPanel_Image5_click(param1:MouseEvent) : void
      {
         goXY(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get secretTreasureHuntXY() : Button
      {
         return this._1045285837secretTreasureHuntXY;
      }
      
      private function set PTSZNum(param1:int) : void
      {
         var _loc2_:Object = this._470111259PTSZNum;
         if(_loc2_ !== param1)
         {
            this._470111259PTSZNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PTSZNum",_loc2_,param1));
         }
      }
      
      private function _SecretTreasureHuntPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000630);
         _loc1_ = Language.SEC_TREA_HUNT[12];
         _loc1_ = Language.SEC_TREA_HUNT[13];
         _loc1_ = Language.SEC_TREA_HUNT[14];
         _loc1_ = Language.IMPANEL_S[59];
         _loc1_ = ResManager.getIconUrl(4130220000637);
         _loc1_ = ResManager.getIconUrl(4130220000631);
         _loc1_ = ResManager.getIconUrl(4130220000632);
         _loc1_ = ResManager.getIconUrl(4130220000633);
         _loc1_ = ResManager.getIconUrl(4130220000634);
         _loc1_ = ResManager.getIconUrl(4130220000635);
         _loc1_ = ResManager.getIconUrl(4130220000636);
         _loc1_ = PTSZNum;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = XYSZNum;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc2_:UIComponent = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         _loc2_ = new UIComponent();
         var _loc3_:int = 0;
         while(_loc3_ < 6)
         {
            _loc4_ = _loc3_ + 1;
            _loc5_ = "shaizi" + String(_loc4_);
            _loc6_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc5_) as Class;
            _loc7_ = new _loc6_();
            _loc7_.stop();
            _loc2_ = new UIComponent();
            _loc2_.x = 100;
            _loc2_.y = -111;
            _loc7_.visible = false;
            _loc7_.addEventListener("complete",shaiziComplete);
            shaiziArr.push(_loc7_);
            _loc2_.addChild(_loc7_);
            allmain.addChildAt(_loc2_,1);
            _loc3_++;
         }
         load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         init();
         _core.remote.call("getSecretTreasureHuntData",null);
      }
      
      private function closeCanvasFunc() : void
      {
         visible = false;
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function set XYshaiziCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1929187547XYshaiziCanvas;
         if(_loc2_ !== param1)
         {
            this._1929187547XYshaiziCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"XYshaiziCanvas",_loc2_,param1));
         }
      }
      
      public function __secretTreasureHuntXY_click(param1:MouseEvent) : void
      {
         showGoXY();
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      public function onSetSecTreaHuntAutoPlay(param1:Boolean) : void
      {
         isAutoPlay = param1;
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
         if(_loc2_)
         {
            _loc2_._AutoPlay = param1;
         }
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn5_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tên";
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get friendList() : DataGrid
      {
         return this._1756909476friendList;
      }
      
      [Bindable(event="propertyChange")]
      public function get xjBuff() : Label
      {
         return this._759494043xjBuff;
      }
      
      public function set secretTreasureHuntXY(param1:Button) : void
      {
         var _loc2_:Object = this._1045285837secretTreasureHuntXY;
         if(_loc2_ !== param1)
         {
            this._1045285837secretTreasureHuntXY = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretTreasureHuntXY",_loc2_,param1));
         }
      }
      
      private function onGoXY(param1:Object) : void
      {
         if(!param1 || param1["num"] <= 0 || param1["num"] > 6)
         {
            moving = false;
            return;
         }
         step_num = param1["num"];
         XYSZNum = XYSZNum - 1;
         atNum += param1["num"];
         shaiziE(step_num);
      }
      
      private function ifShowPanel(param1:Object) : void
      {
         if(!param1.openflag)
         {
            _core.sysMidNote("Sự kiện chưa mở");
            return;
         }
         if(Number(_core.lineInfo.id) != 0)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[32]);
            return;
         }
         if(!param1.group)
         {
            _core.sysMidNote("Trạng thái nhóm không thể vào");
            return;
         }
         initView();
         visible = true;
      }
      
      public function set PTshaiziNum(param1:Label) : void
      {
         var _loc2_:Object = this._1125810486PTshaiziNum;
         if(_loc2_ !== param1)
         {
            this._1125810486PTshaiziNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PTshaiziNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tishiCanvas() : Canvas
      {
         return this._1572459433tishiCanvas;
      }
      
      private function goldJiechu() : void
      {
         _core.remote.call("getTreaHuntJiechuGold",null);
      }
      
      public function set secretTreasureHuntPT(param1:Button) : void
      {
         var _loc2_:Object = this._1045286090secretTreasureHuntPT;
         if(_loc2_ !== param1)
         {
            this._1045286090secretTreasureHuntPT = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretTreasureHuntPT",_loc2_,param1));
         }
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
      }
      
      public function setAllAutoNum(param1:Number) : void
      {
         allAutoNum = param1;
         hasAutoNum = param1;
      }
      
      private function set XYSZNum(param1:int) : void
      {
         var _loc2_:Object = this._876648130XYSZNum;
         if(_loc2_ !== param1)
         {
            this._876648130XYSZNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"XYSZNum",_loc2_,param1));
         }
      }
      
      public function onGetFriendOnlList(param1:Object) : void
      {
         friendList.dataProvider = param1;
      }
      
      public function refreshSpeedRank() : void
      {
         _core.remote.call("getSTHSpeedRank",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get secretTreasureHuntAuto() : Button
      {
         return this._502003329secretTreasureHuntAuto;
      }
      
      private function showGoXY() : void
      {
         var _loc1_:String = null;
         var _loc2_:* = undefined;
         if(_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            _core.sysMidNote("Đang bay không thể lắc xí ngầu");
            return;
         }
         if(_core.player.taskSweep)
         {
            _core.sysMidNote("Đang tự động càn quét không thể lắc xí ngầu");
            return;
         }
         if(XYshaiziCanvas.visible == true)
         {
            XYshaiziCanvas.visible = false;
            return;
         }
         if(isAutoPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[16]);
            return;
         }
         if(!canPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[11]);
            return;
         }
         if(moving)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[67]);
            return;
         }
         if(XYSZNum <= 0)
         {
            if(checkNum.xy == false)
            {
               _loc1_ = "";
               _loc1_ += Language.SEC_TREA_HUNT[5];
               _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_ONE);
               if(_loc2_)
               {
                  _loc2_.typeNum = 2;
                  _loc2_.str = _loc1_;
                  _loc2_.showPanel();
               }
            }
            else
            {
               _core.remote.call("buySecTreaHuntSZ",null,2,1);
            }
         }
         else
         {
            XYshaiziCanvas.visible = true;
         }
      }
      
      public function ___SecretTreasureHuntPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function shaiziComplete(param1:Event) : void
      {
         player.startMove(step_num);
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn4_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Hạng";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      private function shaiziE(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         _loc2_ = shaiziArr[param1 - 1];
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < shaiziArr.length)
         {
            _loc2_ = shaiziArr[_loc3_];
            if(_loc3_ + 1 == param1)
            {
               _loc2_.visible = true;
               _loc2_.gotoAndPlay(1);
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc3_++;
         }
      }
      
      public function ___SecretTreasureHuntPanel_Button7_click(param1:MouseEvent) : void
      {
         buySZ(1);
      }
      
      public function ___SecretTreasureHuntPanel_Image7_click(param1:MouseEvent) : void
      {
         goXY(4);
      }
      
      public function set tishiCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1572459433tishiCanvas;
         if(_loc2_ !== param1)
         {
            this._1572459433tishiCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tishiCanvas",_loc2_,param1));
         }
      }
      
      public function set friendList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1756909476friendList;
         if(_loc2_ !== param1)
         {
            this._1756909476friendList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendList",_loc2_,param1));
         }
      }
      
      public function __openTiShi_click(param1:MouseEvent) : void
      {
         openCloseTiShiCanvas(1);
      }
      
      public function callHelp(param1:Object) : void
      {
         var _loc3_:Number = NaN;
         if(!CALL_HELP_DIC[_core.cid])
         {
            CALL_HELP_DIC[_core.cid] = {};
         }
         var _loc2_:Number = new Date().getTime();
         if(Boolean(CALL_HELP_DIC[_core.cid][param1.cid]) && _loc2_ - CALL_HELP_DIC[_core.cid][param1.cid] < CALL_HELP_INTERVAL)
         {
            _core.sysMidNote("Bạn đã cầu cứu bạn bè, vài giây sau hãy thử lại");
            return;
         }
         if(canPlay)
         {
            _core.sysMidNote("Không dính buff, không cần giải cứu");
            return;
         }
         if(Boolean(param1) && Boolean(param1.cid))
         {
            _loc3_ = Number(param1.cid);
            CALL_HELP_DIC[_core.cid][param1.cid] = _loc2_;
            _core.remote.call("STHForHelp",null,_loc3_,_core.cid);
         }
      }
      
      public function STHcancelTripResult() : void
      {
         Alert.show("Bạn đã được giải trừ buff");
         _core.remote.call("friendSecTreaHuntJiechu",null);
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Điểm";
         _loc1_.dataField = "score";
         return _loc1_;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" summerGames load res Error ");
      }
      
      public function set xjBuff(param1:Label) : void
      {
         var _loc2_:Object = this._759494043xjBuff;
         if(_loc2_ !== param1)
         {
            this._759494043xjBuff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xjBuff",_loc2_,param1));
         }
      }
      
      public function getCanplay() : Boolean
      {
         return canPlay;
      }
      
      [Bindable(event="propertyChange")]
      public function get allmain() : Canvas
      {
         return this._911423782allmain;
      }
      
      private function ifHadJingGuo(param1:Object, param2:int) : Boolean
      {
         var _loc3_:* = undefined;
         if(param2 == 49 || param2 == 57 || param2 == 90 || param2 == 14 || param2 == 34 || param2 == 64)
         {
            return true;
         }
         for(_loc3_ in param1["haveGo"])
         {
            if(param1["haveGo"][_loc3_] == param2)
            {
               return false;
            }
         }
         return true;
      }
      
      [Bindable(event="propertyChange")]
      public function get XYshaiziNum() : Label
      {
         return this._1347466023XYshaiziNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get player() : SecretTreasureHuntPlayerView
      {
         return this._985752863player;
      }
      
      public function setCanvasXY(param1:Number, param2:Number) : void
      {
         if(param1 < 525 && param2 < 333)
         {
            main.x = 0;
            main.y = 0;
         }
         else if(param1 < 525 && param2 > 333 && param2 < ay)
         {
            main.x = 0;
            main.y = 333 - param2;
         }
         else if(param1 < 525 && param2 > ay)
         {
            main.x = 0;
            main.y = by;
         }
         else if(param1 > 525 && param2 > 333 && param1 < ax && param2 < ay)
         {
            main.x = 525 - param1;
            main.y = 333 - param2;
         }
         else if(param2 < 333 && param1 > 525 && param1 < ax)
         {
            main.x = 525 - param1;
            main.y = 0;
         }
         else if(param2 > ay && param1 > 525 && param1 < ax)
         {
            main.x = 525 - param1;
            main.y = by;
         }
         else if(param1 > ax && param2 < 333)
         {
            main.x = bx;
            main.y = 0;
         }
         else if(param1 > ax && param2 > 333 && param2 < ay)
         {
            main.x = bx;
            main.y = 333 - param2;
         }
         else if(param1 > ax && param2 > ay)
         {
            main.x = bx;
            main.y = by;
         }
      }
      
      public function onSetSecTreaHuntSZnum(param1:Object) : void
      {
         PTSZNum = int(param1["pt"]);
         XYSZNum = int(param1["xy"]);
         lastNum = 50 - int(param1["all"]);
         if(param1["check"])
         {
            checkNum = param1["check"];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeTiShi() : Button
      {
         return this._2072063257closeTiShi;
      }
      
      private function go() : void
      {
         var _loc1_:String = null;
         var _loc2_:* = undefined;
         if(_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            _core.sysMidNote("Đang bay không thể lắc xí ngầu");
            return;
         }
         if(_core.player.taskSweep)
         {
            _core.sysMidNote("Đang tự động càn quét không thể lắc xí ngầu");
            return;
         }
         if(isAutoPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[16]);
            return;
         }
         if(!canPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[11]);
            return;
         }
         if(moving)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[7]);
            return;
         }
         if(PTSZNum <= 0)
         {
            if(checkNum.pt == false)
            {
               _loc1_ = "";
               _loc1_ += Language.SEC_TREA_HUNT[4];
               _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_ONE);
               if(_loc2_)
               {
                  _loc2_.typeNum = 1;
                  _loc2_.str = _loc1_;
                  _loc2_.showPanel();
               }
            }
            else
            {
               _core.remote.call("buySecTreaHuntSZ",null,1,1);
            }
         }
         else
         {
            moving = true;
            _core.remote.call("SecretTreasureHuntGo",new Responder(onGo));
         }
      }
      
      public function onSetSecTreaHuntCanPlay(param1:Boolean, param2:Number) : void
      {
         var _loc3_:Object = null;
         canPlay = param1;
         moving = false;
         if(canPlay)
         {
            goldJC.visible = false;
            xjBuff.visible = false;
            BuffIcon.visible = false;
            if(isAutoPlay)
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
               if(_loc3_)
               {
                  _loc3_._leftTime = 2 * 60;
               }
            }
         }
         else
         {
            if(param2 == 1)
            {
               xjBuff.htmlText = "Chiến bại, trị thương tại chỗ 2p, có thể dùng\nVàng để giải trừ các buff";
               BuffIcon.visible = false;
            }
            else
            {
               xjBuff.htmlText = "Trúng phải buff bất động trong 5 phút, có thể cầu cứu bạn bè giúp đỡ hoặc dùng vàng để giải trừ";
               if(param2 == 14)
               {
                  BuffIcon.source = ResManager.getIconUrl(4140200100506);
                  _core.sysMidNote(Language.SEC_TREA_HUNT[25]);
               }
               else if(param2 == 15)
               {
                  BuffIcon.source = ResManager.getIconUrl(4140200100507);
                  _core.sysMidNote(Language.SEC_TREA_HUNT[26]);
               }
               else if(param2 == 16)
               {
                  BuffIcon.source = ResManager.getIconUrl(4140200100508);
                  _core.sysMidNote(Language.SEC_TREA_HUNT[28]);
               }
               else if(param2 == 17)
               {
                  BuffIcon.source = ResManager.getIconUrl(4140200100509);
                  _core.sysMidNote(Language.SEC_TREA_HUNT[27]);
               }
               BuffIcon.visible = true;
            }
            goldJC.visible = true;
            xjBuff.visible = true;
            if(isAutoPlay && (param2 == 14 || param2 == 15 || param2 == 16 || param2 == 17))
            {
               _loc3_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
               if(_loc3_)
               {
                  _loc3_._leftTime = 7 * 60;
                  _loc3_._strShow = strShowArr[11];
                  _loc3_._autoStr = "Đang tự động tầm bảo" + hasAutoNum + "/" + allAutoNum;
               }
            }
         }
      }
      
      public function ___SecretTreasureHuntPanel_Image4_click(param1:MouseEvent) : void
      {
         goXY(1);
      }
      
      public function OnSTHForHelp(param1:Object, param2:Number) : *
      {
         var func:Function = null;
         var str:String = null;
         var name:Object = param1;
         var fromId:Number = param2;
         if(name)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("STHCancelTrip",null,fromId,true,_core.cid);
               }
               else
               {
                  _core.remote.call("STHCancelTrip",null,fromId,false,_core.cid);
               }
            };
            str = "{name} xin bạn giúp giải trừ buff";
            Alert.show(str.replace("{name}",name),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function onSecTreaHuntAutoPlay(param1:int) : void
      {
         PTSZNum = PTSZNum - 1;
         atNum += step_num;
         hasAutoNum = hasAutoNum - 1;
         player.startMove(param1);
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Tên";
         _loc1_.dataField = "name";
         return _loc1_;
      }
      
      public function showPanel() : void
      {
         if(loadcid == 0)
         {
            loadcid = _core.cid;
         }
         if(loadcid != _core.cid)
         {
            loadcid = _core.cid;
         }
         _core.remote.call("sthPlayIsInGroup",new Responder(ifShowPanel));
         secretTreasureHuntPT.enabled = true;
         secretTreasureHuntXY.enabled = true;
         secretTreasureHuntAuto.enabled = true;
      }
      
      public function set vsFlop(param1:ViewStack) : void
      {
         var _loc2_:Object = this._808329852vsFlop;
         if(_loc2_ !== param1)
         {
            this._808329852vsFlop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsFlop",_loc2_,param1));
         }
      }
      
      public function set secretTreasureHuntAuto(param1:Button) : void
      {
         var _loc2_:Object = this._502003329secretTreasureHuntAuto;
         if(_loc2_ !== param1)
         {
            this._502003329secretTreasureHuntAuto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretTreasureHuntAuto",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get speedRank() : DataGrid
      {
         return this._1642576621speedRank;
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      public function set BuffIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1458240628BuffIcon;
         if(_loc2_ !== param1)
         {
            this._1458240628BuffIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BuffIcon",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         player.addEventListener("move_end",playerMpveEnd);
      }
      
      private function onGo(param1:Object) : void
      {
         if(!param1 || param1["num"] <= 0 || param1["num"] > 6)
         {
            moving = false;
            return;
         }
         step_num = param1["num"];
         PTSZNum = PTSZNum - 1;
         atNum += step_num;
         shaiziE(step_num);
      }
      
      public function __secretTreasureHuntPT_click(param1:MouseEvent) : void
      {
         go();
      }
      
      public function set goldJC(param1:Button) : void
      {
         var _loc2_:Object = this._1240338023goldJC;
         if(_loc2_ !== param1)
         {
            this._1240338023goldJC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldJC",_loc2_,param1));
         }
      }
      
      public function ___SecretTreasureHuntPanel_Image9_click(param1:MouseEvent) : void
      {
         goXY(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get XYshaiziCanvas() : Canvas
      {
         return this._1929187547XYshaiziCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get PTshaiziNum() : Label
      {
         return this._1125810486PTshaiziNum;
      }
      
      public function ___SecretTreasureHuntPanel_Button9_click(param1:MouseEvent) : void
      {
         closeCanvasFunc();
      }
      
      [Bindable(event="propertyChange")]
      public function get secretTreasureHuntPT() : Button
      {
         return this._1045286090secretTreasureHuntPT;
      }
      
      [Bindable(event="propertyChange")]
      private function get XYSZNum() : int
      {
         return this._876648130XYSZNum;
      }
      
      public function onGetData(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc6_:CharactorShowCanvas = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Array = null;
         if(!param1 || !param2 || !param3)
         {
            return;
         }
         var _loc4_:int = 1;
         while(_loc4_ <= 103)
         {
            if(npcShowArr[_loc4_])
            {
               main.removeChild(npcShowArr[_loc4_]);
            }
            _loc4_++;
         }
         npcShowArr = new Array();
         var _loc5_:int = 1;
         while(_loc5_ <= 103)
         {
            _loc6_ = new CharactorShowCanvas();
            _loc7_ = GameData.d[GamePredef.TBL_MEVENT_MAP][_loc5_];
            _loc8_ = _loc7_.pos;
            _loc9_ = _loc7_.meventId;
            if(param1["nullGridMapData"][_loc5_])
            {
               _loc10_ = GameData.d[GamePredef.TBL_MEVENT_TYPE][param1["nullGridMapData"][_loc5_]];
            }
            else
            {
               _loc10_ = GameData.d[GamePredef.TBL_MEVENT_TYPE][_loc9_];
            }
            if(_loc10_.npcId > 0 && ifHadJingGuo(param1,_loc5_))
            {
               _loc11_ = GameData.d[GamePredef.TBL_NPC][_loc10_.npcId];
               _loc12_ = _loc8_.split(",");
               _loc6_.url = ResManager.getResUrl(_loc11_.resCode);
               _loc6_.x = _loc12_[0];
               _loc6_.y = _loc12_[1];
               _loc6_.toolTip = _loc10_.tip;
               _loc6_.visible = true;
               npcShowArr[_loc5_] = _loc6_;
               main.addChild(_loc6_);
            }
            _loc5_++;
         }
         player.refresh(param1["atGridNum"]);
         atNum = int(param1["atGridNum"]);
         PTSZNum = int(param1["ptSZnum"]);
         XYSZNum = int(param1["xySZnum"]);
         checkNum = param1["check"];
         lastNum = 50 - param1["allSZBuyNum"];
         isAutoPlay = param3.play;
         canPlay = param2.flag;
         if(canPlay)
         {
            goldJC.visible = false;
            xjBuff.visible = false;
            BuffIcon.visible = false;
         }
         else
         {
            onSetSecTreaHuntCanPlay(param2.flag,param2.type);
         }
      }
      
      public function __goldJC_click(param1:MouseEvent) : void
      {
         goldJiechu();
      }
      
      public function refreshScoreRank() : void
      {
         _core.remote.call("getSTHScoreRank",null);
      }
      
      public function getMoving() : Boolean
      {
         return moving;
      }
      
      public function onGetSTHSpeedRank(param1:Object) : void
      {
         speedRank.dataProvider = param1;
      }
      
      public function setMoving(param1:Boolean) : void
      {
         moving = param1;
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Hạng";
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         return _loc1_;
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
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      private function _SecretTreasureHuntPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000630);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image1.source = param1;
         },"_SecretTreasureHuntPanel_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SecretTreasureHuntPanel_DataGridColumn7.headerText = param1;
         },"_SecretTreasureHuntPanel_DataGridColumn7.headerText");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000637);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image3.source = param1;
         },"_SecretTreasureHuntPanel_Image3.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000631);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image4.source = param1;
         },"_SecretTreasureHuntPanel_Image4.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000632);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image5.source = param1;
         },"_SecretTreasureHuntPanel_Image5.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000633);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image6.source = param1;
         },"_SecretTreasureHuntPanel_Image6.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000634);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image7.source = param1;
         },"_SecretTreasureHuntPanel_Image7.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000635);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image8.source = param1;
         },"_SecretTreasureHuntPanel_Image8.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000636);
         },function(param1:Object):void
         {
            _SecretTreasureHuntPanel_Image9.source = param1;
         },"_SecretTreasureHuntPanel_Image9.source");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = PTSZNum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            PTshaiziNum.text = param1;
         },"PTshaiziNum.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            PTshaiziNum.filters = param1;
         },"PTshaiziNum.filters");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = XYSZNum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            XYshaiziNum.text = param1;
         },"XYshaiziNum.text");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            XYshaiziNum.filters = param1;
         },"XYshaiziNum.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            PTshaiziNum0.filters = param1;
         },"PTshaiziNum0.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            PTshaiziNum1.filters = param1;
         },"PTshaiziNum1.filters");
         result[17] = binding;
         return result;
      }
      
      private function buySZ(param1:Number) : void
      {
         if(!canPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[11]);
            return;
         }
         if(isAutoPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[16]);
            return;
         }
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_ALERT);
         if(_loc2_)
         {
            _loc2_.ALLSZNum = lastNum;
            _loc2_.typeNum = param1;
            _loc2_.showPanel();
         }
      }
      
      public function ___SecretTreasureHuntPanel_Image6_click(param1:MouseEvent) : void
      {
         goXY(3);
      }
      
      public function set main(param1:Canvas) : void
      {
         var _loc2_:Object = this._3343801main;
         if(_loc2_ !== param1)
         {
            this._3343801main = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"main",_loc2_,param1));
         }
      }
      
      public function set PTshaiziNum0(param1:Label) : void
      {
         var _loc2_:Object = this._540386746PTshaiziNum0;
         if(_loc2_ !== param1)
         {
            this._540386746PTshaiziNum0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PTshaiziNum0",_loc2_,param1));
         }
      }
      
      public function set PTshaiziNum1(param1:Label) : void
      {
         var _loc2_:Object = this._540386747PTshaiziNum1;
         if(_loc2_ !== param1)
         {
            this._540386747PTshaiziNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PTshaiziNum1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      private function openCloseTiShiCanvas(param1:int) : void
      {
         if(param1 == 0)
         {
            tishiCanvas.visible = false;
            closeTiShi.visible = false;
            openTiShi.visible = true;
         }
         else
         {
            tishiCanvas.visible = true;
            closeTiShi.visible = true;
            openTiShi.visible = false;
            _core.remote.call("getFriendOnlList",null);
         }
      }
      
      private function _SecretTreasureHuntPanel_DataGridColumn8_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Thao tác";
         _loc1_.width = 66;
         _loc1_.itemRenderer = _SecretTreasureHuntPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get BuffIcon() : Image
      {
         return this._1458240628BuffIcon;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretTreasureHuntPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretTreasureHuntPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SecretTreasureHuntPanelWatcherSetupUtil");
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
      
      private function guajiFunc() : void
      {
         if(!canPlay)
         {
            if(!isAutoPlay)
            {
               _core.sysMidNote(Language.SEC_TREA_HUNT[11]);
               return;
            }
         }
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
         if(_loc1_)
         {
            _loc1_.showPanel();
            _loc1_._AutoPlay = isAutoPlay;
         }
      }
      
      public function refreshSTHRank() : void
      {
         refreshScoreRank();
         refreshSpeedRank();
      }
      
      [Bindable(event="propertyChange")]
      public function get goldJC() : Button
      {
         return this._1240338023goldJC;
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeView(2);
      }
      
      public function set bangBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324754bangBtn2;
         if(_loc2_ !== param1)
         {
            this._1863324754bangBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn2",_loc2_,param1));
         }
      }
      
      public function onGoldJiechu(param1:Number) : void
      {
         var goldNum:Number = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               if(!canPlay)
               {
                  _core.remote.call("SecTreaHuntGoldJiechu",null);
               }
            }
         };
         var tempStr:String = "Dùng" + goldNum + "Vàng để giải trừ buff?";
         Alert.show(tempStr,"",Alert.YES | Alert.NO,null,func);
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
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      public function onSetSecTreaHuntIfCheck(param1:Object) : void
      {
         checkNum = param1;
      }
      
      public function set allmain(param1:Canvas) : void
      {
         var _loc2_:Object = this._911423782allmain;
         if(_loc2_ !== param1)
         {
            this._911423782allmain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allmain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get PTshaiziNum0() : Label
      {
         return this._540386746PTshaiziNum0;
      }
      
      [Bindable(event="propertyChange")]
      public function get PTshaiziNum1() : Label
      {
         return this._540386747PTshaiziNum1;
      }
      
      public function set scoreRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2128897502scoreRank;
         if(_loc2_ !== param1)
         {
            this._2128897502scoreRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scoreRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get main() : Canvas
      {
         return this._3343801main;
      }
      
      public function set XYshaiziNum(param1:Label) : void
      {
         var _loc2_:Object = this._1347466023XYshaiziNum;
         if(_loc2_ !== param1)
         {
            this._1347466023XYshaiziNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"XYshaiziNum",_loc2_,param1));
         }
      }
      
      public function set player(param1:SecretTreasureHuntPlayerView) : void
      {
         var _loc2_:Object = this._985752863player;
         if(_loc2_ !== param1)
         {
            this._985752863player = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"player",_loc2_,param1));
         }
      }
      
      private function playerMpveEnd(param1:Event) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < shaiziArr.length)
         {
            _loc3_ = shaiziArr[_loc2_];
            _loc3_.visible = false;
            _loc2_++;
         }
         if(Boolean(npcShowArr[atNum] && atNum != 49 && atNum != 57 && atNum != 90 && atNum != 14) && Boolean(atNum != 34) && atNum != 64)
         {
            main.removeChild(npcShowArr[atNum]);
            npcShowArr[atNum] = null;
         }
         _core.remote.call("afterSTHPlayerStop",null);
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
      
      private function _SecretTreasureHuntPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _SecretTreasureHuntPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 210;
         BindingManager.executeBindings(this,"_SecretTreasureHuntPanel_DataGridColumn7",_SecretTreasureHuntPanel_DataGridColumn7);
         return _loc1_;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         getSecretTreasureHuntRes();
      }
      
      private function _SecretTreasureHuntPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SecretTreasureHuntPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function getSecretTreasureHuntRes() : void
      {
         if(load_state != 0)
         {
            _core.remote.call("getSecretTreasureHuntData",null);
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130000468)));
            load_state = 1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openTiShi() : Button
      {
         return this._1535831509openTiShi;
      }
      
      [Bindable(event="propertyChange")]
      public function get scoreRank() : DataGrid
      {
         return this._2128897502scoreRank;
      }
      
      public function ___SecretTreasureHuntPanel_Button8_click(param1:MouseEvent) : void
      {
         buySZ(2);
      }
      
      private function goXY(param1:Number) : void
      {
         if(isAutoPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[16]);
            return;
         }
         if(!canPlay)
         {
            _core.sysMidNote(Language.SEC_TREA_HUNT[11]);
            return;
         }
         if(moving)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[67]);
            return;
         }
         XYshaiziCanvas.visible = false;
         if(param1 > 0 && param1 <= 6)
         {
            moving = true;
            _core.remote.call("SecretTreasureHuntGoXY",new Responder(onGoXY),param1);
         }
      }
      
      public function ___SecretTreasureHuntPanel_Image8_click(param1:MouseEvent) : void
      {
         goXY(5);
      }
   }
}

