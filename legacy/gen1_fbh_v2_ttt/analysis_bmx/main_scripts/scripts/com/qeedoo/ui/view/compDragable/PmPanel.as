package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.Currency;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PmPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2068466327pmImage5:Image;
      
      private var _2068466325pmImage3:Image;
      
      private var _2068466326pmImage4:Image;
      
      private var _1469055782vipInfo1:Canvas;
      
      private var _2068466330pmImage8:Image;
      
      private var _2068466331pmImage9:Image;
      
      private var _1177514720itemText:RoundedLabel;
      
      private var pm1Pic:Class = PmPanel_pm1Pic;
      
      private var _levelUpExp:Array = [0,15000,45000,105000,205000,355000,555000,805000,1105000];
      
      private var _2068466324pmImage2:Image;
      
      private var _617073764tMonthCard:Canvas;
      
      private var _1649072453monthImage:Image;
      
      private var btnDict:Dictionary = new Dictionary();
      
      private var _98536402gold2:Currency;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1943535025tMonthImage:Image;
      
      public var _PmPanel_RoundedLabel2:RoundedLabel;
      
      public var _PmPanel_RoundedLabel3:RoundedLabel;
      
      private var _462873678vipDesc:Label;
      
      public var _PmPanel_Label1:Label;
      
      private var _1754012778hYearImage:Image;
      
      private var _1191676748selfHead:Image;
      
      private var pm2Pic:Class = PmPanel_pm2Pic;
      
      private var _463030891vipInfo:Canvas;
      
      private var processFlagObj:Object;
      
      private var _core:Core = Core.getInstance();
      
      internal var _alert:Alert;
      
      private var _upExp:Number = 0;
      
      private var _levelGold:Object = {
         1:688,
         2:1688,
         3:2888
      };
      
      public var _PmPanel_Button1:Button;
      
      public var _PmPanel_Button2:Button;
      
      public var _PmPanel_Button3:Button;
      
      public var _PmPanel_Button4:Button;
      
      private var VIP_TEMP_LEVEL_DESC:String = "vip";
      
      private var _98536401gold1:Currency;
      
      mx_internal var _watchers:Array = [];
      
      private var _472412811hYearCard:Canvas;
      
      public var pmLevelProcessMp:Class = PmPanel_pmLevelProcessMp;
      
      private var _1300311632monthCard:Canvas;
      
      private var _nExp:Number = 0;
      
      private var _time:Number = 0;
      
      private var _566144145pmExpProcess:UIComponent;
      
      private var VIP_TEMP_VALUE_DESC:String = "value";
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var pm3Pic:Class = PmPanel_pm3Pic;
      
      private var _98536403gold3:Currency;
      
      public var panelDataFlush:Boolean = false;
      
      private var _matrix:Array = [new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0])];
      
      mx_internal var _bindings:Array = [];
      
      public var pmLevelProcess:MovieClip;
      
      private var _2068466323pmImage1:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":340,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":39,
                        "width":480,
                        "height":285,
                        "styleName":"txtArea",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"pmExpProcess",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":84,
                                 "y":51,
                                 "width":380,
                                 "height":18,
                                 "visible":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PmPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":51,
                                 "width":50,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":75.5,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":120,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":167,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":212,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":260,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":305,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":352,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":399,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"pmImage9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":445,
                                 "y":28,
                                 "width":26,
                                 "height":22
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"selfHead",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "useHandCursor":true,
                        "buttonMode":true,
                        "width":49,
                        "x":24,
                        "height":47,
                        "y":52
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"vipDesc",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.fontFamily = "宋体";
                     this.fontWeight = "bold";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":91,
                        "y":45,
                        "width":282,
                        "height":23
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"hYearCard",
                  "events":{"click":"__hYearCard_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":22,
                        "y":107,
                        "width":150,
                        "height":66,
                        "useHandCursor":true,
                        "styleName":"CanvasShopSlot",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"hYearImage",
                           "stylesFactory":function():void
                           {
                              this.left = "18";
                              this.top = "18";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "height":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"itemText",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":66,
                                 "y":10,
                                 "width":83,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"gold3",
                           "events":{"creationComplete":"__gold3_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":true,
                                 "x":66,
                                 "y":25,
                                 "value":2888,
                                 "type":1,
                                 "width":82,
                                 "height":16
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_PmPanel_Button1",
                           "events":{"click":"___PmPanel_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":85,
                                 "y":40,
                                 "height":20,
                                 "width":57,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"vipInfo1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":175,
                        "width":460,
                        "height":140,
                        "styleName":"txtArea",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"vipInfo",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "width":436,
                                 "height":119,
                                 "horizontalScrollPolicy":"off"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PmPanel_Button2",
                  "events":{"click":"___PmPanel_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":381,
                        "y":45,
                        "height":25,
                        "width":84,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"tMonthCard",
                  "events":{"click":"__tMonthCard_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":173,
                        "y":107,
                        "width":150,
                        "height":66,
                        "useHandCursor":true,
                        "styleName":"CanvasShopSlot",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"tMonthImage",
                           "stylesFactory":function():void
                           {
                              this.left = "18";
                              this.top = "18";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "height":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_PmPanel_RoundedLabel2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":66,
                                 "y":10,
                                 "width":83,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"gold2",
                           "events":{"creationComplete":"__gold2_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":true,
                                 "x":66,
                                 "y":25,
                                 "value":1688,
                                 "type":1,
                                 "width":82,
                                 "height":16
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_PmPanel_Button3",
                           "events":{"click":"___PmPanel_Button3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":85,
                                 "y":40,
                                 "height":20,
                                 "width":57,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"monthCard",
                  "events":{"click":"__monthCard_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":324,
                        "y":107,
                        "width":150,
                        "height":66,
                        "useHandCursor":true,
                        "styleName":"CanvasShopSlot",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"monthImage",
                           "stylesFactory":function():void
                           {
                              this.left = "18";
                              this.top = "18";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "height":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"gold1",
                           "events":{"creationComplete":"__gold1_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":true,
                                 "x":66,
                                 "y":25,
                                 "value":688,
                                 "type":1,
                                 "width":82,
                                 "height":16
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_PmPanel_RoundedLabel3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":66,
                                 "y":10,
                                 "width":83,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_PmPanel_Button4",
                           "events":{"click":"___PmPanel_Button4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":85,
                                 "y":40,
                                 "height":20,
                                 "width":57,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1368895518_lastTime:String = "";
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _2068466328pmImage6:Image;
      
      private var _pmType:Number = -1;
      
      private var _2068466329pmImage7:Image;
      
      public function PmPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 340;
         this.styleName = "StandardContent";
         this.x = 92.5;
         this.y = 76;
         this.addEventListener("creationComplete",___PmPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PmPanel._watcherSetupUtil = param1;
      }
      
      public function lightPMPic(param1:Number) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         for(_loc2_ in _levelUpExp)
         {
            _loc3_ = Number(_loc2_) + 1;
            if(Boolean(param1) && Boolean(param1 != 0) && ToolKit.isSmallOrEqual(_loc3_,param1))
            {
               this["pmImage" + _loc3_].filters = [];
            }
            else
            {
               this["pmImage" + _loc3_].filters = _matrix;
            }
         }
      }
      
      public function __gold3_creationComplete(param1:FlexEvent) : void
      {
         changeFontSize(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get monthImage() : Image
      {
         return this._1649072453monthImage;
      }
      
      public function initPmLevelUpDate(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(param1) && ToolKit.isBigOrEqual(param1,0))
         {
            showInfoByLevel(param1);
         }
         else
         {
            showInfoByLevel(1);
         }
         lightPMPic(param1);
         if(Boolean(param1) && ToolKit.isBigOrEqual(param1,0))
         {
            _loc2_ = Number(param1) + 10;
            this.vipDesc.htmlText = Language.PM_PANEL[10].toString().replace("{name}",_core.player.name).replace("{pm}",Language.PM_PANEL[_loc2_].toString());
         }
         else
         {
            this.vipDesc.htmlText = Language.PM_PANEL[9].toString().replace("{name}",_core.player.name);
         }
      }
      
      public function set pmImage1(param1:Image) : void
      {
         var _loc2_:Object = this._2068466323pmImage1;
         if(_loc2_ !== param1)
         {
            this._2068466323pmImage1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage1",_loc2_,param1));
         }
      }
      
      public function __tMonthCard_click(param1:MouseEvent) : void
      {
         showVipFunc(2);
      }
      
      private function init() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Number = NaN;
         if(!pmLevelProcess)
         {
            pmLevelProcess = new (pmLevelProcessMp as Class)();
            pmExpProcess.addChild(pmLevelProcess);
         }
         pmLevelProcess.gotoAndStop(0);
         for(_loc1_ in _levelUpExp)
         {
            _loc2_ = Number(_loc1_) + 1;
            this["pmImage" + _loc2_].filters = _matrix;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vipInfo1() : Canvas
      {
         return this._1469055782vipInfo1;
      }
      
      public function set pmImage2(param1:Image) : void
      {
         var _loc2_:Object = this._2068466324pmImage2;
         if(_loc2_ !== param1)
         {
            this._2068466324pmImage2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage2",_loc2_,param1));
         }
      }
      
      public function set pmImage6(param1:Image) : void
      {
         var _loc2_:Object = this._2068466328pmImage6;
         if(_loc2_ !== param1)
         {
            this._2068466328pmImage6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage6",_loc2_,param1));
         }
      }
      
      public function flushProcesFlag(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         if(param1)
         {
            if(btnDict[param1.index])
            {
               if(!processFlagObj)
               {
                  processFlagObj = new Object();
               }
               processFlagObj[param1.index] = {
                  "day":param1.day,
                  "type":param1.type,
                  "time":param1.time
               };
               _loc2_ = GameData.d[GamePredef.TBL_PM_RIGHT];
               _loc3_ = "";
               for(_loc4_ in _loc2_)
               {
                  if(Boolean(_loc2_[_loc4_]) && Number(_loc2_[_loc4_].id) == Number(param1.index))
                  {
                     _loc3_ = _loc2_[_loc4_]["countConfig"];
                     break;
                  }
               }
               if(!_loc3_ || _loc3_ == "")
               {
                  return;
               }
               _loc5_ = null;
               if(_loc3_)
               {
                  _loc5_ = _loc3_.split("|");
               }
               if(_loc5_)
               {
                  if(Number(processFlagObj[param1.index]["type"]) == 1)
                  {
                     if(Number(_loc5_[2]) <= Number(processFlagObj[param1.index]["time"]))
                     {
                        btnDict[param1.index].removeEventListener(MouseEvent.CLICK,doPmOperation);
                        btnDict[param1.index].htmlText = Language.PM_PANEL[8];
                        btnDict[param1.index].buttonMode = false;
                        btnDict[param1.index].useHandCursor = false;
                        btnDict[param1.index].mouseChildren = false;
                     }
                     else
                     {
                        _loc6_ = processFlagObj[param1.index]["time"] + "/" + _loc5_[2];
                        btnDict[param1.index].htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc6_);
                     }
                  }
                  else if(Number(processFlagObj[param1.index]["type"]) != 4)
                  {
                     if(Number(_loc5_[2]) <= Number(processFlagObj[param1.index]["time"]))
                     {
                        btnDict[param1.index].removeEventListener(MouseEvent.CLICK,doPmOperation);
                        btnDict[param1.index].htmlText = Language.PM_PANEL[8];
                        btnDict[param1.index].buttonMode = false;
                        btnDict[param1.index].useHandCursor = false;
                        btnDict[param1.index].mouseChildren = false;
                     }
                     else
                     {
                        _loc6_ = processFlagObj[param1.index]["time"] + "/" + _loc5_[2];
                        btnDict[param1.index].htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc6_);
                     }
                  }
               }
            }
         }
      }
      
      public function set pmImage5(param1:Image) : void
      {
         var _loc2_:Object = this._2068466327pmImage5;
         if(_loc2_ !== param1)
         {
            this._2068466327pmImage5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage5",_loc2_,param1));
         }
      }
      
      public function ___PmPanel_Button2_click(param1:MouseEvent) : void
      {
         showPmInfo();
      }
      
      public function set pmImage9(param1:Image) : void
      {
         var _loc2_:Object = this._2068466331pmImage9;
         if(_loc2_ !== param1)
         {
            this._2068466331pmImage9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage9",_loc2_,param1));
         }
      }
      
      private function onClickNpc(param1:Boolean) : *
      {
         if(param1)
         {
         }
      }
      
      public function set pmImage7(param1:Image) : void
      {
         var _loc2_:Object = this._2068466329pmImage7;
         if(_loc2_ !== param1)
         {
            this._2068466329pmImage7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage7",_loc2_,param1));
         }
      }
      
      public function set pmImage3(param1:Image) : void
      {
         var _loc2_:Object = this._2068466325pmImage3;
         if(_loc2_ !== param1)
         {
            this._2068466325pmImage3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage3",_loc2_,param1));
         }
      }
      
      public function set pmImage8(param1:Image) : void
      {
         var _loc2_:Object = this._2068466330pmImage8;
         if(_loc2_ !== param1)
         {
            this._2068466330pmImage8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage8",_loc2_,param1));
         }
      }
      
      public function buyPm(param1:Number) : void
      {
         var str:*;
         var name:*;
         var tf:IUITextField;
         var day:*;
         var handler:Function = null;
         var level:Number = param1;
         if(!level || level < 1 || level > 3)
         {
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyPm",new Responder(onBuyPm),level);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         name = "";
         day = "";
         switch(level)
         {
            case 1:
               name = Language.PM_PANEL[11].toString().replace(Language.PM_INFO_PANEL[4].toString(),Language.PM_PANEL[5].toString());
               day = 30;
               break;
            case 2:
               name = Language.PM_PANEL[12].toString().replace(Language.PM_INFO_PANEL[5].toString(),Language.PM_PANEL[4].toString());
               day = 90;
               break;
            case 3:
               name = Language.PM_PANEL[13].toString().replace(Language.PM_INFO_PANEL[6].toString(),Language.PM_PANEL[3].toString());
               day = 180;
         }
         str = "";
         if(Boolean(_pmType) && ToolKit.isBigThan(_pmType,0))
         {
            if(Boolean(_core.player.pmLevel) && ToolKit.isBigThan(_core.player.pmLevel,0))
            {
               if(ToolKit.isBigThan(level,_pmType))
               {
                  str = Language.PM_PANEL[35];
               }
               else
               {
                  if(!ToolKit.isEqual(level,_pmType))
                  {
                     _core.sysMidNote(Language.PM_PANEL[31]);
                     return;
                  }
                  str = Language.PM_PANEL[30];
               }
            }
         }
         else
         {
            str = Language.PM_PANEL[34].toString().replace("{gold}",_levelGold[level]).replace("{name}",name).replace("{day}",day);
         }
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      private function _PmPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _nExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmExpProcess.toolTip = param1;
         },"pmExpProcess.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _nExp > 0 ? true : false;
         },function(param1:Boolean):void
         {
            _PmPanel_Label1.visible = param1;
         },"_PmPanel_Label1.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _nExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_Label1.toolTip = param1;
         },"_PmPanel_Label1.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN1;
         },function(param1:Object):void
         {
            pmImage1.source = param1;
         },"pmImage1.source");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage1.toolTip = param1;
         },"pmImage1.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN2;
         },function(param1:Object):void
         {
            pmImage2.source = param1;
         },"pmImage2.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage2.toolTip = param1;
         },"pmImage2.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN3;
         },function(param1:Object):void
         {
            pmImage3.source = param1;
         },"pmImage3.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage3.toolTip = param1;
         },"pmImage3.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN4;
         },function(param1:Object):void
         {
            pmImage4.source = param1;
         },"pmImage4.source");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage4.toolTip = param1;
         },"pmImage4.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN5;
         },function(param1:Object):void
         {
            pmImage5.source = param1;
         },"pmImage5.source");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage5.toolTip = param1;
         },"pmImage5.toolTip");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN6;
         },function(param1:Object):void
         {
            pmImage6.source = param1;
         },"pmImage6.source");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage6.toolTip = param1;
         },"pmImage6.toolTip");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN7;
         },function(param1:Object):void
         {
            pmImage7.source = param1;
         },"pmImage7.source");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage7.toolTip = param1;
         },"pmImage7.toolTip");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN8;
         },function(param1:Object):void
         {
            pmImage8.source = param1;
         },"pmImage8.source");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage8.toolTip = param1;
         },"pmImage8.toolTip");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PM_ZUAN9;
         },function(param1:Object):void
         {
            pmImage9.source = param1;
         },"pmImage9.source");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _levelUpExp[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pmImage9.toolTip = param1;
         },"pmImage9.toolTip");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return pm3Pic;
         },function(param1:Object):void
         {
            hYearImage.source = param1;
         },"hYearImage.source");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itemText.text = param1;
         },"itemText.text");
         result[23] = binding;
         binding = new Binding(this,function():uint
         {
            return GamePredef.CODE_ITEM_COLOR[2];
         },function(param1:uint):void
         {
            itemText.setStyle("color",param1);
         },"itemText.color");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_Button1.label = param1;
         },"_PmPanel_Button1.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_Button2.label = param1;
         },"_PmPanel_Button2.label");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return pm2Pic;
         },function(param1:Object):void
         {
            tMonthImage.source = param1;
         },"tMonthImage.source");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_RoundedLabel2.text = param1;
         },"_PmPanel_RoundedLabel2.text");
         result[28] = binding;
         binding = new Binding(this,function():uint
         {
            return GamePredef.CODE_ITEM_COLOR[1];
         },function(param1:uint):void
         {
            _PmPanel_RoundedLabel2.setStyle("color",param1);
         },"_PmPanel_RoundedLabel2.color");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_Button3.label = param1;
         },"_PmPanel_Button3.label");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return pm1Pic;
         },function(param1:Object):void
         {
            monthImage.source = param1;
         },"monthImage.source");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_RoundedLabel3.text = param1;
         },"_PmPanel_RoundedLabel3.text");
         result[32] = binding;
         binding = new Binding(this,function():uint
         {
            return GamePredef.CODE_ITEM_COLOR[0];
         },function(param1:uint):void
         {
            _PmPanel_RoundedLabel3.setStyle("color",param1);
         },"_PmPanel_RoundedLabel3.color");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmPanel_Button4.label = param1;
         },"_PmPanel_Button4.label");
         result[34] = binding;
         return result;
      }
      
      public function set vipInfo(param1:Canvas) : void
      {
         var _loc2_:Object = this._463030891vipInfo;
         if(_loc2_ !== param1)
         {
            this._463030891vipInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfHead() : Image
      {
         return this._1191676748selfHead;
      }
      
      [Bindable(event="propertyChange")]
      public function get tMonthImage() : Image
      {
         return this._1943535025tMonthImage;
      }
      
      public function set tMonthCard(param1:Canvas) : void
      {
         var _loc2_:Object = this._617073764tMonthCard;
         if(_loc2_ !== param1)
         {
            this._617073764tMonthCard = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tMonthCard",_loc2_,param1));
         }
      }
      
      public function set vipInfo1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1469055782vipInfo1;
         if(_loc2_ !== param1)
         {
            this._1469055782vipInfo1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipInfo1",_loc2_,param1));
         }
      }
      
      public function __monthCard_click(param1:MouseEvent) : void
      {
         showVipFunc(1);
      }
      
      private function StringReplaceAll(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      internal function doPmOperation(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(!_core.player.pmLevel)
         {
            return;
         }
         if(Number(param1.currentTarget.name) == 18)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_JEWEL_EXCHANGE);
            if(_loc2_)
            {
               _loc2_.visible = true;
            }
            return;
         }
         if(Number(param1.currentTarget.name) == 25)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_STAR_EXCHANGE);
            if(_loc2_)
            {
               _loc2_.open();
            }
            return;
         }
         if(param1.currentTarget.name == 24)
         {
            processFlagObj.findback = false;
            btnDict[24].htmlText = Language.PM_PANEL[8];
            btnDict[24].removeEventListener(MouseEvent.CLICK,doPmOperation);
            btnDict[24].buttonMode = false;
            btnDict[24].useHandCursor = false;
            btnDict[24].mouseChildren = false;
         }
         _core.remote.call("doPmOperation",null,param1.currentTarget.name);
      }
      
      public function set monthCard(param1:Canvas) : void
      {
         var _loc2_:Object = this._1300311632monthCard;
         if(_loc2_ !== param1)
         {
            this._1300311632monthCard = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monthCard",_loc2_,param1));
         }
      }
      
      public function __hYearCard_click(param1:MouseEvent) : void
      {
         showVipFunc(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get vipDesc() : Label
      {
         return this._462873678vipDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      [Bindable(event="propertyChange")]
      public function get vipInfo() : Canvas
      {
         return this._463030891vipInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get pmExpProcess() : UIComponent
      {
         return this._566144145pmExpProcess;
      }
      
      public function set hYearImage(param1:Image) : void
      {
         var _loc2_:Object = this._1754012778hYearImage;
         if(_loc2_ !== param1)
         {
            this._1754012778hYearImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hYearImage",_loc2_,param1));
         }
      }
      
      public function ___PmPanel_Button3_click(param1:MouseEvent) : void
      {
         buyPm(2);
      }
      
      public function set monthImage(param1:Image) : void
      {
         var _loc2_:Object = this._1649072453monthImage;
         if(_loc2_ !== param1)
         {
            this._1649072453monthImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monthImage",_loc2_,param1));
         }
      }
      
      public function set pmImage4(param1:Image) : void
      {
         var _loc2_:Object = this._2068466326pmImage4;
         if(_loc2_ !== param1)
         {
            this._2068466326pmImage4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImage4",_loc2_,param1));
         }
      }
      
      public function onBuyPm(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Date = null;
         var _loc4_:Number = NaN;
         if(param1)
         {
            monthCard.buttonMode = false;
            tMonthCard.buttonMode = false;
            hYearCard.buttonMode = false;
            _core.player.pmLevel = param1.level;
            _nExp = param1.data.pmExp;
            this.pmExpProcess.toolTip = _nExp.toString();
            _pmType = param1.data.activeType;
            _loc2_ = Number(1000 * 60 * 60 * 24 * param1.data.keepDay) + Number(param1.data.activeTime);
            _loc3_ = new Date(_loc2_);
            _loc3_.setTime(_loc3_.getTime() + _loc3_.getTimezoneOffset() * 60 * 1000 - _core.serverTimeOffSet);
            _lastTime = _loc3_.fullYear + "/" + (_loc3_.month + 1) + "/" + _loc3_.date + " " + _loc3_.hours + ":" + _loc3_.minutes + ":" + _loc3_.seconds;
            _loc4_ = Number(param1.level) + 10;
            this.vipDesc.htmlText = Language.PM_PANEL[10].toString().replace("{name}",_core.player.name).replace("{pm}",Language.PM_PANEL[_loc4_].toString());
            setExpProcess(_nExp,_core.player.pmLevel);
            lightPMPic(_core.player.pmLevel);
            showInfoByLevel(param1.level);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hYearCard() : Canvas
      {
         return this._472412811hYearCard;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PmPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PmPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PmPanelWatcherSetupUtil");
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
      
      public function ___PmPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage1() : Image
      {
         return this._2068466323pmImage1;
      }
      
      private function setExpProcess(param1:Number, param2:Number) : *
      {
         var _loc4_:Boolean = false;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!pmLevelProcess)
         {
            pmLevelProcess = new (pmLevelProcessMp as Class)();
            pmExpProcess.addChild(pmLevelProcess);
         }
         var _loc3_:Number = 0;
         if(!param1 || Number(param1) == 0)
         {
            _loc3_ = 0;
         }
         else
         {
            _loc4_ = true;
            _loc5_ = 0;
            while(_loc5_ <= _levelUpExp.length)
            {
               if(Boolean(param1 >= _levelUpExp[_loc5_]) && Boolean(_levelUpExp[_loc5_ + 1]) && param1 < _levelUpExp[_loc5_ + 1])
               {
                  _loc6_ = Number(_levelUpExp[_loc5_ + 1]) - Number(_levelUpExp[_loc5_]);
                  _loc7_ = 1;
                  while(_loc7_ <= 9)
                  {
                     _loc8_ = param1 - Number(_levelUpExp[_loc5_]);
                     if(_loc8_ >= _loc6_ * _loc7_ / 10)
                     {
                        _loc3_ = _loc7_ * 0.83 + _loc5_ * 7.5;
                        _loc4_ = false;
                     }
                     if(_loc8_ <= _loc6_ / 10)
                     {
                        _loc3_ = _loc5_ * 7.5;
                        _loc4_ = false;
                     }
                     _loc7_++;
                  }
                  break;
               }
               _loc5_++;
            }
            if(_loc4_)
            {
               _loc3_ = 60;
            }
         }
         pmLevelProcess.gotoAndStop(Math.ceil(_loc3_));
         if(!param2 || param2 == 0)
         {
            pmLevelProcess.filters = _matrix;
         }
         else
         {
            pmLevelProcess.filters = [];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage7() : Image
      {
         return this._2068466329pmImage7;
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage3() : Image
      {
         return this._2068466325pmImage3;
      }
      
      public function initPanelData(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            selfHead.source = param1.resUrl;
         }
         else
         {
            _loc2_ = _core.view.getUI(ViewManager.MAIN_SELF);
            if(Boolean(_loc2_) && Boolean(_loc2_.iconCode) && _loc2_.iconCode != "")
            {
               selfHead.source = ResManager.getIconUrl(_loc2_.iconCode);
            }
         }
         _core.remote.call("initPmData",new Responder(onInitPmData));
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage8() : Image
      {
         return this._2068466330pmImage8;
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage2() : Image
      {
         return this._2068466324pmImage2;
      }
      
      public function set gold2(param1:Currency) : void
      {
         var _loc2_:Object = this._98536402gold2;
         if(_loc2_ !== param1)
         {
            this._98536402gold2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hYearImage() : Image
      {
         return this._1754012778hYearImage;
      }
      
      public function set gold3(param1:Currency) : void
      {
         var _loc2_:Object = this._98536403gold3;
         if(_loc2_ !== param1)
         {
            this._98536403gold3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage6() : Image
      {
         return this._2068466328pmImage6;
      }
      
      private function showInfoByLevel(param1:Number) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Array = null;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:Canvas = null;
         var _loc8_:Label = null;
         var _loc9_:String = null;
         var _loc10_:Label = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:Date = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         this.vipInfo.removeAllChildren();
         for(_loc2_ in this.btnDict)
         {
            delete this.btnDict[_loc2_];
         }
         _loc3_ = GameData.d[GamePredef.TBL_PM_RIGHT];
         _loc3_.sortOn("sortIndex",Array.NUMERIC);
         _loc4_ = 28;
         _loc5_ = new Label();
         this.vipInfo.addChild(_loc5_);
         _loc5_.x = 5;
         _loc5_.width = 350;
         _loc5_.height = 27;
         _loc5_.setStyle("color","#FFFFFF");
         _loc5_.setStyle("fontSize","14");
         _loc5_.setStyle("fontFamily","宋体");
         if(Boolean(_core.player.pmLevel) && _core.player.pmLevel != 0)
         {
            _loc5_.htmlText = Language.PM_PANEL[32].toString().replace("{time}",_lastTime);
         }
         else
         {
            _loc6_ = 10 + param1;
            _loc5_.htmlText = Language.PM_PANEL[33].toString().replace("{pm}",Language.PM_PANEL[_loc6_].toString());
         }
         _loc6_ = 0;
         for(_loc2_ in _loc3_)
         {
            if(Boolean(_loc3_[_loc2_][VIP_TEMP_LEVEL_DESC + param1]) && _loc3_[_loc2_][VIP_TEMP_LEVEL_DESC + param1] != 0)
            {
               _loc7_ = new Canvas();
               _loc6_++;
               _loc7_.height = 20;
               _loc7_.setStyle("horizontalScrollPolicy","off");
               _loc7_.setStyle("verticalScrollPolicy","off");
               _loc7_.width = 470;
               _loc7_.y = _loc4_;
               _loc4_ = Number(_loc4_) + 20;
               _loc7_.x = 15;
               _loc8_ = new Label();
               _loc8_.htmlText = _loc6_ + ": " + _loc3_[_loc2_]["desc"];
               if(_loc3_[_loc2_][VIP_TEMP_VALUE_DESC + param1])
               {
                  _loc9_ = _loc6_ + ": " + _loc3_[_loc2_]["desc"].toString();
                  _loc8_.htmlText = StringReplaceAll(_loc9_,"{num}",_loc3_[_loc2_][VIP_TEMP_VALUE_DESC + param1]);
               }
               _loc8_.styleName = "BoxLabel";
               _loc7_.addChild(_loc8_);
               _loc8_.width = 320;
               _loc8_.x = 5;
               if(Boolean(_loc3_[_loc2_]["type"]) && Number(_loc3_[_loc2_]["type"]) != 3)
               {
                  _loc10_ = new Label();
                  _loc7_.addChild(_loc10_);
                  btnDict[_loc3_[_loc2_].id] = _loc10_;
                  _loc10_.width = 60;
                  _loc10_.x = 320;
                  _loc10_.buttonMode = true;
                  _loc10_.useHandCursor = true;
                  _loc10_.mouseChildren = false;
                  _loc10_.name = _loc3_[_loc2_].id;
                  _loc10_.styleName = "BoxLabel";
                  if(Boolean(_core.player.pmLevel) && Boolean(_core.player.pmLevel != 0) && _core.player.pmLevel == param1)
                  {
                     _loc11_ = _loc3_[_loc2_]["countConfig"];
                     _loc12_ = null;
                     if(_loc11_)
                     {
                        _loc12_ = _loc11_.split("|");
                     }
                     switch(Number(_loc3_[_loc2_]["type"]))
                     {
                        case 1:
                           _loc10_.htmlText = Language.PM_PANEL[6];
                           _loc10_.addEventListener(MouseEvent.CLICK,doPmOperation);
                           break;
                        case 2:
                           if(_loc12_)
                           {
                              _loc13_ = "(0/" + _loc12_[2] + ")";
                              if(Boolean(processFlagObj) && Boolean(processFlagObj[_loc3_[_loc2_].id]))
                              {
                                 _loc13_ = "(" + processFlagObj[_loc3_[_loc2_].id]["time"] + "/" + _loc12_[2] + ")";
                              }
                              _loc10_.htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc13_);
                              _loc10_.addEventListener(MouseEvent.CLICK,doPmOperation);
                              if(Boolean(_loc12_) && Boolean(processFlagObj) && Boolean(processFlagObj[_loc3_[_loc2_].id]))
                              {
                                 _loc14_ = new Date(_time);
                                 _loc14_.setTime(_loc14_.getTime() + _loc14_.getTimezoneOffset() * 60 * 1000 - _core.serverTimeOffSet);
                                 if(Number(processFlagObj[_loc3_[_loc2_].id]["type"]) == 1)
                                 {
                                    _loc15_ = _loc14_.month + "|" + _loc14_.date + "|" + _loc14_.day;
                                    if(processFlagObj[_loc3_[_loc2_].id]["day"] == _loc15_ && Number(processFlagObj[_loc3_[_loc2_].id]["time"]) >= Number(_loc12_[2]))
                                    {
                                       _loc10_.removeEventListener(MouseEvent.CLICK,doPmOperation);
                                       _loc10_.htmlText = Language.PM_PANEL[8];
                                       _loc10_.buttonMode = false;
                                       _loc10_.useHandCursor = false;
                                       _loc10_.mouseChildren = false;
                                    }
                                    else if(processFlagObj[_loc3_[_loc2_].id]["day"] != _loc15_)
                                    {
                                       _loc13_ = "(0/" + _loc12_[2] + ")";
                                       _loc10_.htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc13_);
                                    }
                                 }
                                 else if(processFlagObj[_loc3_[_loc2_].id]["type"] == 2)
                                 {
                                    if(ToolKit.isEqual(_loc12_[1],7))
                                    {
                                       _loc15_ = TimeUtil.getThisMonDay(_time);
                                       if(processFlagObj[_loc3_[_loc2_].id]["day"] == _loc15_ && Number(processFlagObj[_loc3_[_loc2_].id]["time"]) >= Number(_loc12_[2]))
                                       {
                                          _loc10_.removeEventListener(MouseEvent.CLICK,doPmOperation);
                                          _loc10_.htmlText = Language.PM_PANEL[8];
                                          _loc10_.buttonMode = false;
                                          _loc10_.useHandCursor = false;
                                          _loc10_.mouseChildren = false;
                                       }
                                       else if(processFlagObj[_loc3_[_loc2_].id]["day"] != _loc15_)
                                       {
                                          _loc13_ = "(0/" + _loc12_[2] + ")";
                                          _loc10_.htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc13_);
                                       }
                                    }
                                    else if(ToolKit.isEqual(_loc12_[1],30))
                                    {
                                       _loc15_ = String(_loc14_.month);
                                       if(processFlagObj[_loc3_[_loc2_].id]["day"] == _loc15_ && Number(processFlagObj[_loc3_[_loc2_].id]["time"]) >= Number(_loc12_[2]))
                                       {
                                          _loc10_.removeEventListener(MouseEvent.CLICK,doPmOperation);
                                          _loc10_.htmlText = Language.PM_PANEL[8];
                                          _loc10_.buttonMode = false;
                                          _loc10_.useHandCursor = false;
                                          _loc10_.mouseChildren = false;
                                       }
                                       else if(processFlagObj[_loc3_[_loc2_].id]["day"] != _loc15_)
                                       {
                                          _loc13_ = "(0/" + _loc12_[2] + ")";
                                          _loc10_.htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc13_);
                                       }
                                    }
                                    else
                                    {
                                       _loc16_ = (Number(_loc14_.getTime()) - Number(processFlagObj[_loc3_[_loc2_].id]["day"])) / (24 * 60 * 60 * 1000);
                                       if(_loc16_ < _loc12_[1] && Number(processFlagObj[_loc3_[_loc2_].id]["time"]) >= Number(_loc12_[2]))
                                       {
                                          _loc10_.removeEventListener(MouseEvent.CLICK,doPmOperation);
                                          _loc10_.buttonMode = false;
                                          _loc10_.useHandCursor = false;
                                          _loc10_.mouseChildren = false;
                                          _loc10_.htmlText = Language.PM_PANEL[8];
                                       }
                                       else if(_loc16_ >= _loc12_[1])
                                       {
                                          _loc13_ = "(0/" + _loc12_[2] + ")";
                                          _loc10_.htmlText = Language.PM_PANEL[7].toString().replace("{num}",_loc13_);
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        case 4:
                           if(!processFlagObj.findback)
                           {
                              _loc10_.buttonMode = false;
                              _loc10_.useHandCursor = false;
                              _loc10_.mouseChildren = false;
                           }
                     }
                  }
                  _loc10_.setStyle("textDecoration","underline");
               }
               this.vipInfo.addChild(_loc7_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get monthCard() : Canvas
      {
         return this._1300311632monthCard;
      }
      
      public function set gold1(param1:Currency) : void
      {
         var _loc2_:Object = this._98536401gold1;
         if(_loc2_ !== param1)
         {
            this._98536401gold1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold1",_loc2_,param1));
         }
      }
      
      private function onInitPmData(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Date = null;
         panelDataFlush = true;
         if(Boolean(param1) && Boolean(param1.data))
         {
            processFlagObj = new Object();
            if(param1.data.pmExp)
            {
               _nExp = param1.data.pmExp;
               this.pmExpProcess.toolTip = _nExp.toString();
            }
            else
            {
               _nExp = 0;
            }
            monthCard.buttonMode = false;
            tMonthCard.buttonMode = false;
            hYearCard.buttonMode = false;
            if(!_nExp || Number(_nExp) == 0)
            {
               monthCard.buttonMode = true;
               tMonthCard.buttonMode = true;
               hYearCard.buttonMode = true;
            }
            _time = param1.date;
            _pmType = param1.data.activeType;
            if(!param1.flag || param1.flag == 0)
            {
               _core.player.pmLevel = 0;
               this.vipDesc.htmlText = Language.PM_PANEL[9].toString().replace("{name}",_core.player.name);
               _lastTime = "";
               showInfoByLevel(1);
            }
            else
            {
               _core.player.pmLevel = param1.flag;
               _loc2_ = Number(_core.player.pmLevel) + 10;
               this.vipDesc.htmlText = Language.PM_PANEL[10].toString().replace("{name}",_core.player.name).replace("{pm}",Language.PM_PANEL[_loc2_].toString());
               processFlagObj = param1.processFlag;
               processFlagObj.findback = param1.findback;
               _loc3_ = Number(1000 * 60 * 60 * 24 * param1.data.keepDay) + Number(param1.data.activeTime);
               _loc4_ = new Date(_loc3_);
               _loc4_.setTime(_loc4_.getTime() + _loc4_.getTimezoneOffset() * 60 * 1000 - _core.serverTimeOffSet);
               _lastTime = _loc4_.fullYear + "/" + (_loc4_.month + 1) + "/" + _loc4_.date + " " + _loc4_.hours + ":" + _loc4_.minutes + ":" + _loc4_.seconds;
               showInfoByLevel(_core.player.pmLevel);
            }
            setExpProcess(_nExp,_core.player.pmLevel);
            lightPMPic(_core.player.pmLevel);
            this.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage4() : Image
      {
         return this._2068466326pmImage4;
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage5() : Image
      {
         return this._2068466327pmImage5;
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImage9() : Image
      {
         return this._2068466331pmImage9;
      }
      
      [Bindable(event="propertyChange")]
      public function get tMonthCard() : Canvas
      {
         return this._617073764tMonthCard;
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function ___PmPanel_Button4_click(param1:MouseEvent) : void
      {
         buyPm(1);
      }
      
      internal function showVipFunc(param1:Number) : void
      {
         if(_core.player.pmLevel)
         {
            return;
         }
         monthCard.filters = [];
         hYearCard.filters = [];
         tMonthCard.filters = [];
         switch(param1)
         {
            case 1:
               monthCard.filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
               break;
            case 2:
               tMonthCard.filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
               break;
            case 3:
               hYearCard.filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         }
         showInfoByLevel(param1);
      }
      
      public function set selfHead(param1:Image) : void
      {
         var _loc2_:Object = this._1191676748selfHead;
         if(_loc2_ !== param1)
         {
            this._1191676748selfHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfHead",_loc2_,param1));
         }
      }
      
      private function changeFontSize(param1:Number) : void
      {
         this["gold" + param1].currencyInput.setStyle("fontSize",11);
      }
      
      public function set vipDesc(param1:Label) : void
      {
         var _loc2_:Object = this._462873678vipDesc;
         if(_loc2_ !== param1)
         {
            this._462873678vipDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipDesc",_loc2_,param1));
         }
      }
      
      private function showPmInfo() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PM_INFO);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      public function set tMonthImage(param1:Image) : void
      {
         var _loc2_:Object = this._1943535025tMonthImage;
         if(_loc2_ !== param1)
         {
            this._1943535025tMonthImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tMonthImage",_loc2_,param1));
         }
      }
      
      public function __gold1_creationComplete(param1:FlexEvent) : void
      {
         changeFontSize(1);
      }
      
      public function set itemText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1177514720itemText;
         if(_loc2_ !== param1)
         {
            this._1177514720itemText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gold1() : Currency
      {
         return this._98536401gold1;
      }
      
      [Bindable(event="propertyChange")]
      public function get gold3() : Currency
      {
         return this._98536403gold3;
      }
      
      private function _PmPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PM_PANEL[0];
         _loc1_ = _nExp;
         _loc1_ = _nExp > 0 ? true : false;
         _loc1_ = _nExp;
         _loc1_ = ResManager.PM_ZUAN1;
         _loc1_ = _levelUpExp[0];
         _loc1_ = ResManager.PM_ZUAN2;
         _loc1_ = _levelUpExp[1];
         _loc1_ = ResManager.PM_ZUAN3;
         _loc1_ = _levelUpExp[2];
         _loc1_ = ResManager.PM_ZUAN4;
         _loc1_ = _levelUpExp[3];
         _loc1_ = ResManager.PM_ZUAN5;
         _loc1_ = _levelUpExp[4];
         _loc1_ = ResManager.PM_ZUAN6;
         _loc1_ = _levelUpExp[5];
         _loc1_ = ResManager.PM_ZUAN7;
         _loc1_ = _levelUpExp[6];
         _loc1_ = ResManager.PM_ZUAN8;
         _loc1_ = _levelUpExp[7];
         _loc1_ = ResManager.PM_ZUAN9;
         _loc1_ = _levelUpExp[8];
         _loc1_ = pm3Pic;
         _loc1_ = Language.PM_PANEL[3];
         _loc1_ = GamePredef.CODE_ITEM_COLOR[2];
         _loc1_ = Language.PM_PANEL[1];
         _loc1_ = Language.PM_PANEL[2];
         _loc1_ = pm2Pic;
         _loc1_ = Language.PM_PANEL[4];
         _loc1_ = GamePredef.CODE_ITEM_COLOR[1];
         _loc1_ = Language.PM_PANEL[1];
         _loc1_ = pm1Pic;
         _loc1_ = Language.PM_PANEL[5];
         _loc1_ = GamePredef.CODE_ITEM_COLOR[0];
         _loc1_ = Language.PM_PANEL[1];
      }
      
      [Bindable(event="propertyChange")]
      public function get gold2() : Currency
      {
         return this._98536402gold2;
      }
      
      public function addOrMinusPmExp(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            if(!_core.player || !panelDataFlush)
            {
               return;
            }
            if(!_core.player.pmLevel)
            {
               _core.player.pmLevel = 0;
            }
            if(!param1.pmLevel)
            {
               _core.player.pmLevel = 0;
            }
            else if(!ToolKit.isEqual(_core.player.pmLevel,param1.pmLevel))
            {
               _core.player.pmLevel = param1.pmLevel;
               showInfoByLevel(_core.player.pmLevel);
            }
            _loc2_ = Number(_core.player.pmLevel) + 10;
            _nExp = param1.nExp;
            this.pmExpProcess.toolTip = _nExp.toString();
            setExpProcess(_nExp,_core.player.pmLevel);
         }
      }
      
      private function set _lastTime(param1:String) : void
      {
         var _loc2_:Object = this._1368895518_lastTime;
         if(_loc2_ !== param1)
         {
            this._1368895518_lastTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_lastTime",_loc2_,param1));
         }
      }
      
      public function set pmExpProcess(param1:UIComponent) : void
      {
         var _loc2_:Object = this._566144145pmExpProcess;
         if(_loc2_ !== param1)
         {
            this._566144145pmExpProcess = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmExpProcess",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _lastTime() : String
      {
         return this._1368895518_lastTime;
      }
      
      public function __gold2_creationComplete(param1:FlexEvent) : void
      {
         changeFontSize(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText() : RoundedLabel
      {
         return this._1177514720itemText;
      }
      
      public function ___PmPanel_Button1_click(param1:MouseEvent) : void
      {
         buyPm(3);
      }
      
      public function set hYearCard(param1:Canvas) : void
      {
         var _loc2_:Object = this._472412811hYearCard;
         if(_loc2_ !== param1)
         {
            this._472412811hYearCard = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hYearCard",_loc2_,param1));
         }
      }
   }
}

