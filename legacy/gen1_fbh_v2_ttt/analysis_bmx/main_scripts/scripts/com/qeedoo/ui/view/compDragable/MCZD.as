package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MCZD extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _979805919promp1:RoundedLabel;
      
      private var _903685453mczdbg2:Image;
      
      private var _1880500467todayRank:DataGrid;
      
      private var _912227987allRank:DataGrid;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1528145178mytimes:RoundedLabel;
      
      private var _874994789fightBox:Canvas;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _logStrArr:ArrayQueue = new ArrayQueue(100);
      
      public var _MCZD_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _898461337todayMyRank:RoundedLabel;
      
      private var _117012vs1:ViewStack;
      
      private var _core:Core = Core.getInstance();
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var mcdzBasicPrice:* = 45;
      
      public var _MCZD_RoundedLabel4:RoundedLabel;
      
      public var elite:* = false;
      
      private var _1194484237mczdAllRank:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      private var gameName:* = ["","热身赛","精英赛"];
      
      private var regionName:* = ["A组","B组","C组","D组","E组","F组"];
      
      private var _874994644fightBtn:BasicDelayButton;
      
      private var myPtimes:* = 0;
      
      private var _599588615allMyRank:RoundedLabel;
      
      private var _979805918promp2:RoundedLabel;
      
      private var _341476866logList:LinkTextArea;
      
      private var _582333572introtxt:IntroText;
      
      private var _mczdDataStorage:* = {};
      
      private var _259649619mczdTodayRank:ArrayCollection = new ArrayCollection();
      
      private var img1:*;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _66732960myregion:RoundedLabel;
      
      private var _1079227515mczdbg:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":730,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MCZD_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "percentHeight":100,
                        "percentWidth":100,
                        "x":1,
                        "y":32,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"mczdbg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":0,
                                 "x":0,
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "visible":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "stylesFactory":function():void
                           {
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":16,
                                 "width":80,
                                 "selected":true,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "stylesFactory":function():void
                           {
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":97,
                                 "width":80,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"vs1",
                           "stylesFactory":function():void
                           {
                              this.top = "29";
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":206,
                                 "height":253,
                                 "selectedIndex":0,
                                 "creationPolicy":"all",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "mouseEnabled":false,
                                          "width":206,
                                          "height":253,
                                          "x":0,
                                          "y":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"todayRank",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                                this.top = "5";
                                                this.bottom = "31";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "width":200,
                                                   "x":8,
                                                   "columns":[_MCZD_DataGridColumn1_c(),_MCZD_DataGridColumn2_c(),_MCZD_DataGridColumn3_c()]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"todayMyRank",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.bottom = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"width":131};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "events":{"click":"___MCZD_BasicGlowButton3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.bottom = "9";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":"查看奖励",
                                                   "width":61,
                                                   "styleName":"BtnNormalBlue"
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
                                          "styleName":"CanvasBorder",
                                          "mouseEnabled":false,
                                          "width":206,
                                          "height":253,
                                          "x":0,
                                          "y":0,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"allRank",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                                this.top = "5";
                                                this.bottom = "31";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "width":200,
                                                   "x":8,
                                                   "columns":[_MCZD_DataGridColumn4_c(),_MCZD_DataGridColumn5_c(),_MCZD_DataGridColumn6_c()]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"allMyRank",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.bottom = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"width":131};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "events":{"click":"___MCZD_BasicGlowButton4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.bottom = "9";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":"查看奖励",
                                                   "width":61,
                                                   "styleName":"BtnNormalBlue"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"introtxt",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mouseEnabled":false,
                                 "width":495,
                                 "height":160
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "mouseEnabled":false,
                                 "width":206,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "height":168,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":LinkTextArea,
                                    "id":"logList",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0.3;
                                       this.backgroundColor = 0;
                                       this.borderStyle = "none";
                                       this.color = 16774324;
                                       this.left = "5";
                                       this.top = "5";
                                       this.right = "5";
                                       this.bottom = "5";
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
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"fightBox",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "mouseEnabled":false,
                                 "height":280,
                                 "width":495,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"mczdbg2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "x":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "visible":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"myregion",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.fontSize = 13;
                                       this.top = "13";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_MCZD_RoundedLabel4",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.fontSize = 13;
                                       this.top = "42";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"mytimes",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "78";
                                       this.fontSize = 13;
                                       this.top = "42";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "events":{"click":"___MCZD_BasicGlowButton5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":140,
                                          "y":40,
                                          "label":"增加今日挑战次数",
                                          "styleName":"BtnNormalBlue",
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "events":{"click":"___MCZD_BasicGlowButton6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":72,
                                          "label":"宠物配置",
                                          "width":61,
                                          "styleName":"BtnNormalBlue",
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"fightBtn",
                                    "events":{"click":"__fightBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "width":142,
                                          "height":141,
                                          "styleName":"MCZDFightBtn"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"promp1",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.fontSize = 13;
                                       this.bottom = "27";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":24};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"promp2",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.fontSize = 13;
                                       this.bottom = "7";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":24};
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
      
      public function MCZD()
      {
         super();
         mx_internal::_document = this;
         this.width = 730;
         this.height = 500;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___MCZD_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MCZD._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get allMyRank() : RoundedLabel
      {
         return this._599588615allMyRank;
      }
      
      public function set logList(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._341476866logList;
         if(_loc2_ !== param1)
         {
            this._341476866logList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logList",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set introtxt(param1:IntroText) : void
      {
         var _loc2_:Object = this._582333572introtxt;
         if(_loc2_ !== param1)
         {
            this._582333572introtxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introtxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logList() : LinkTextArea
      {
         return this._341476866logList;
      }
      
      public function set allMyRank(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._599588615allMyRank;
         if(_loc2_ !== param1)
         {
            this._599588615allMyRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allMyRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get todayRank() : DataGrid
      {
         return this._1880500467todayRank;
      }
      
      public function ___MCZD_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         showTodayRank();
      }
      
      private function _MCZD_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "区服ID";
         _loc1_.dataField = "sn";
         _loc1_.width = 130;
         return _loc1_;
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      private function _MCZD_DataGridColumn6_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "积分";
         _loc1_.dataField = "s";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      public function set mczdbg(param1:Image) : void
      {
         var _loc2_:Object = this._1079227515mczdbg;
         if(_loc2_ !== param1)
         {
            this._1079227515mczdbg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mczdbg",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get mczdAllRank() : ArrayCollection
      {
         return this._1194484237mczdAllRank;
      }
      
      private function addMCZDLog(param1:*, param2:*) : void
      {
         var _loc3_:String = "";
         if(param1.iswin == GamePredef.BATTLE_WIN)
         {
            _loc3_ += Language.MCZDPETFIGHT_PANEL_U[66].toString().replace("{gname}",param1.gname);
         }
         else if(param1.iswin == GamePredef.BATTLE_LOSE)
         {
            _loc3_ += Language.MCZDPETFIGHT_PANEL_U[67].toString().replace("{gname}",param1.gname);
         }
         _loc3_ += Language.MCZDPETFIGHT_PANEL_U[11].toString().replace("{bid}",param2);
         _logStrArr.push(_loc3_ + "\n");
         logList.htmlText = _logStrArr.join();
      }
      
      public function onAddMoreTime(param1:Object) : void
      {
         if(!param1 || param1.cid != _core.cid)
         {
            return;
         }
         myPtimes = (param1.myPurchaseTimes - param1.myPurchaseTimes % 5) / 5 + 1;
         var _loc2_:* = mytimes.text;
         var _loc3_:* = _loc2_.split("/");
         if(Boolean(_loc3_) && Boolean(int(_loc3_[0]) >= 0) && int(_loc3_[1]) >= 0)
         {
            mytimes.text = Language.MCZDPETFIGHT_PANEL_U[39].replace("{remain}",_loc3_[0]).replace("{all}",int(_loc3_[1]) + 1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get promp1() : RoundedLabel
      {
         return this._979805919promp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mytimes() : RoundedLabel
      {
         return this._1528145178mytimes;
      }
      
      public function onMCZDFightResult(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1 || param1.cid != _core.cid)
         {
            return;
         }
         if(param1.iswin == -1)
         {
         }
         if(param1.list)
         {
            _loc2_ = _core.view.getUI(ViewManager.POP_MCZD_BATTLE_REPORT);
            _loc2_.showResult(param1);
            _core.remote.call("getMCZDData",null);
         }
      }
      
      protected function readyToFight() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("startFightMCZD",null,null);
            }
         };
         Alert.show(Language.MCZDPETFIGHT_PANEL_U[57].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set mytimes(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1528145178mytimes;
         if(_loc2_ !== param1)
         {
            this._1528145178mytimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mytimes",_loc2_,param1));
         }
      }
      
      public function set fightBox(param1:Canvas) : void
      {
         var _loc2_:Object = this._874994789fightBox;
         if(_loc2_ !== param1)
         {
            this._874994789fightBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightBox",_loc2_,param1));
         }
      }
      
      public function set vs1(param1:ViewStack) : void
      {
         var _loc2_:Object = this._117012vs1;
         if(_loc2_ !== param1)
         {
            this._117012vs1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs1",_loc2_,param1));
         }
      }
      
      public function set todayMyRank(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._898461337todayMyRank;
         if(_loc2_ !== param1)
         {
            this._898461337todayMyRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayMyRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fightBtn() : BasicDelayButton
      {
         return this._874994644fightBtn;
      }
      
      public function set todayRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1880500467todayRank;
         if(_loc2_ !== param1)
         {
            this._1880500467todayRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayRank",_loc2_,param1));
         }
      }
      
      public function set myregion(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._66732960myregion;
         if(_loc2_ !== param1)
         {
            this._66732960myregion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myregion",_loc2_,param1));
         }
      }
      
      private function tabBtnClick(param1:int) : void
      {
         if(param1 == 0 || param1 == 1)
         {
            vs1.selectedIndex = param1;
            tabBtn0.selected = false;
            tabBtn1.selected = false;
            this["tabBtn" + param1].selected = true;
         }
      }
      
      public function set promp1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._979805919promp1;
         if(_loc2_ !== param1)
         {
            this._979805919promp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"promp1",_loc2_,param1));
         }
      }
      
      private function set mczdAllRank(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1194484237mczdAllRank;
         if(_loc2_ !== param1)
         {
            this._1194484237mczdAllRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mczdAllRank",_loc2_,param1));
         }
      }
      
      public function set promp2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._979805918promp2;
         if(_loc2_ !== param1)
         {
            this._979805918promp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"promp2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mczdbg2() : Image
      {
         return this._903685453mczdbg2;
      }
      
      private function _MCZD_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "▼";
         _loc1_.dataField = "r";
         _loc1_.width = 20;
         _loc1_.setStyle("fontSize",9);
         return _loc1_;
      }
      
      public function ___MCZD_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         showAllRank();
      }
      
      private function _MCZD_DataGridColumn5_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "区服ID";
         _loc1_.dataField = "sn";
         _loc1_.width = 130;
         return _loc1_;
      }
      
      public function set fightBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._874994644fightBtn;
         if(_loc2_ !== param1)
         {
            this._874994644fightBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vs1() : ViewStack
      {
         return this._117012vs1;
      }
      
      [Bindable(event="propertyChange")]
      public function get promp2() : RoundedLabel
      {
         return this._979805918promp2;
      }
      
      private function set mczdTodayRank(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._259649619mczdTodayRank;
         if(_loc2_ !== param1)
         {
            this._259649619mczdTodayRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mczdTodayRank",_loc2_,param1));
         }
      }
      
      private function playLoading(param1:*) : void
      {
         if(!initialized)
         {
            return;
         }
         img1.visible = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get allRank() : DataGrid
      {
         return this._912227987allRank;
      }
      
      private function _MCZD_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZD_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZD_BasicTitleCanvas1.text = param1;
         },"_MCZD_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220010001);
         },function(param1:Object):void
         {
            mczdbg.source = param1;
         },"mczdbg.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return mczdTodayRank;
         },function(param1:Object):void
         {
            todayRank.dataProvider = param1;
         },"todayRank.dataProvider");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            todayMyRank.text = param1;
         },"todayMyRank.text");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return mczdAllRank;
         },function(param1:Object):void
         {
            allRank.dataProvider = param1;
         },"allRank.dataProvider");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            allMyRank.text = param1;
         },"allMyRank.text");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220010002);
         },function(param1:Object):void
         {
            mczdbg2.source = param1;
         },"mczdbg2.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myregion.text = param1;
         },"myregion.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZD_RoundedLabel4.text = param1;
         },"_MCZD_RoundedLabel4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mytimes.text = param1;
         },"mytimes.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            promp1.text = param1;
         },"promp1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            promp2.text = param1;
         },"promp2.text");
         result[13] = binding;
         return result;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      protected function config_clickHandler(param1:MouseEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc2_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:* = _core.player.petList;
         for(_loc3_ in _loc6_)
         {
            _loc2_ = true;
         }
         if(_loc2_)
         {
            _loc4_ = _core.view.getUI(ViewManager.PANEL_MCZD_PETFIGHT_CONF);
            _loc4_.visible = !_loc4_.visible;
            _loc4_.petCrossConf = {"t":false};
         }
         else
         {
            Alert.show(Language.XLS_PANEL[3]);
         }
      }
      
      public function onMCZDGetData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         if(!param1)
         {
            visible = false;
            return;
         }
         if(Boolean(param1.start) && Boolean(param1.end))
         {
            introtxt.text = Language.MCZDPETFIGHT_PANEL_U[42].replace("{start}",param1.start).replace("{end}",param1.end);
         }
         if(Boolean(param1.mczdTodayRank) && param1.flag.myregion >= 0)
         {
            mczdTodayRank = new ArrayCollection();
            for each(_loc2_ in param1.mczdTodayRank[param1.flag.myregion])
            {
               mczdTodayRank.addItem(_loc2_);
            }
         }
         if(Boolean(param1.mczdAllRank) && param1.flag.myregion >= 0)
         {
            mczdAllRank = new ArrayCollection();
            for each(_loc2_ in param1.mczdAllRank[param1.flag.myregion])
            {
               mczdAllRank.addItem(_loc2_);
            }
         }
         if(param1.todayMyRank > 0)
         {
            todayMyRank.text = Language.MCZDPETFIGHT_PANEL_U[36].replace("{rank}",param1.todayMyRank);
         }
         else
         {
            todayMyRank.text = Language.MCZDPETFIGHT_PANEL_U[43];
         }
         if(param1.allMyRank > 0)
         {
            allMyRank.text = Language.MCZDPETFIGHT_PANEL_U[37].replace("{rank}",param1.allMyRank);
         }
         else
         {
            allMyRank.text = Language.MCZDPETFIGHT_PANEL_U[43];
         }
         myregion.text = Language.MCZDPETFIGHT_PANEL_U[38].replace("{region}",regionName[int(param1.flag.myregion)]).replace("{type}",gameName[int(param1.flag.type)]).replace("{todaypnt}",param1.flag.todaypnt).replace("{allpnt}",param1.flag.allpnt);
         if(param1.flag.mytimes >= 0 && param1.flag.alltimes >= 0 && param1.flag.myPurchaseTimes >= 0 && param1.flag.totaltimes >= 0)
         {
            _loc3_ = param1.flag.mytimes;
            _loc4_ = param1.flag.alltimes + param1.flag.myPurchaseTimes;
            mytimes.text = Language.MCZDPETFIGHT_PANEL_U[39].replace("{remain}",_loc3_).replace("{all}",_loc4_);
            myPtimes = (param1.flag.myPurchaseTimes - param1.flag.myPurchaseTimes % 5) / 5 + 1;
            _loc5_ = param1.flag.totaltimes;
            _loc6_ = 0;
            _loc7_ = 0;
            if(_loc5_ > 10)
            {
               _loc6_ = (_loc5_ - 10 - (_loc5_ - 10) % 5) / 5;
            }
            else
            {
               _loc6_ = 0;
            }
            if(_loc5_ >= 110)
            {
               promp2.text = Language.MCZDPETFIGHT_PANEL_U[49];
               promp1.text = Language.MCZDPETFIGHT_PANEL_U[40].replace("{remain}",_loc5_).replace("{prop1}",20).replace("{prop2}",20).replace("{prop3}",20);
            }
            else
            {
               _loc7_ = (_loc6_ + 1) * 5 + 10;
               promp1.text = Language.MCZDPETFIGHT_PANEL_U[40].replace("{remain}",_loc5_).replace("{prop1}",_loc6_).replace("{prop2}",_loc6_).replace("{prop3}",_loc6_);
               promp2.text = Language.MCZDPETFIGHT_PANEL_U[41].replace("{remain}",_loc7_).replace("{prop1}",_loc6_ + 1).replace("{prop2}",_loc6_ + 1).replace("{prop3}",_loc6_ + 1);
            }
         }
         if(param1.log)
         {
            _logStrArr.clear();
            _loc8_ = param1.log;
            if((Boolean(_loc8_)) && _loc8_.length > 0)
            {
               _loc2_ = _loc8_.length - 1;
               while(_loc2_ >= 0)
               {
                  addMCZDLog(_loc8_[_loc2_],_loc2_);
                  _loc2_--;
               }
            }
         }
         else
         {
            _logStrArr.clear();
         }
         _mczdDataStorage = param1;
         elite = param1.flag.type == 2 ? true : false;
      }
      
      private function addMoreTime() : void
      {
         var _loc1_:String = Language.MCZDPETFIGHT_PANEL_U[50].replace("{gold}",mcdzBasicPrice * myPtimes);
         Alert.show(_loc1_,Language.MCZDPETFIGHT_PANEL_U[51],Alert.YES | Alert.NO,null,_addMoreTime);
      }
      
      [Bindable(event="propertyChange")]
      public function get introtxt() : IntroText
      {
         return this._582333572introtxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mczdbg() : Image
      {
         return this._1079227515mczdbg;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MCZD = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MCZD_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MCZDWatcherSetupUtil");
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
      
      public function ___MCZD_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         addMoreTime();
      }
      
      private function _MCZD_DataGridColumn4_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "▼";
         _loc1_.dataField = "r";
         _loc1_.width = 20;
         _loc1_.setStyle("fontSize",9);
         return _loc1_;
      }
      
      public function __fightBtn_click(param1:MouseEvent) : void
      {
         readyToFight();
      }
      
      [Bindable(event="propertyChange")]
      public function get todayMyRank() : RoundedLabel
      {
         return this._898461337todayMyRank;
      }
      
      public function set mczdbg2(param1:Image) : void
      {
         var _loc2_:Object = this._903685453mczdbg2;
         if(_loc2_ !== param1)
         {
            this._903685453mczdbg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mczdbg2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myregion() : RoundedLabel
      {
         return this._66732960myregion;
      }
      
      private function showTodayRank() : void
      {
         var _loc1_:Object = null;
         if(_mczdDataStorage)
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_MCZD_ALL_RANK);
            _loc1_.visible = !_loc1_.visible;
            _loc1_.setRankData(1,_mczdDataStorage.mczdTodayRank);
         }
      }
      
      public function ___MCZD_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      private function get mczdTodayRank() : ArrayCollection
      {
         return this._259649619mczdTodayRank;
      }
      
      private function showAllRank() : void
      {
         var _loc1_:Object = null;
         if(_mczdDataStorage)
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_MCZD_ALL_RANK);
            _loc1_.visible = !_loc1_.visible;
            _loc1_.setRankData(2,_mczdDataStorage.mczdAllRank);
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      private function _MCZD_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MCZD_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220010001);
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[34];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[35];
         _loc1_ = mczdTodayRank;
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[36];
         _loc1_ = mczdAllRank;
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[37];
         _loc1_ = ResManager.getIconUrl(4130220010002);
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[38];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[76];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[39];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[40];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[41];
      }
      
      [Bindable(event="propertyChange")]
      public function get fightBox() : Canvas
      {
         return this._874994789fightBox;
      }
      
      private function _addMoreTime(param1:CloseEvent) : void
      {
         var getDelPass:Function = null;
         var inputPanel:* = undefined;
         var event:CloseEvent = param1;
         if(event.detail == Alert.YES)
         {
            if(!_core.delPass)
            {
               getDelPass = function(param1:String):void
               {
                  var _loc2_:String = null;
                  if(param1)
                  {
                     _loc2_ = MD5.hash(param1);
                     _core.remote.call("MCZDAddMoreTime",null,_loc2_);
                  }
               };
               inputPanel = _core.view.getUI(ViewManager.PANEL_INPUT);
               if(inputPanel)
               {
                  inputPanel.showInput(Language.DELETE_BY_PASS[0],Language.PORTRAITCANVAS_U[0],getDelPass);
               }
            }
            else
            {
               _core.remote.call("MCZDAddMoreTime",null);
            }
         }
      }
      
      public function onStartFightMCZD(param1:Object) : void
      {
         if(param1.r == 0)
         {
            Alert.show(Language.MCZDPETFIGHT_PANEL_U[55]);
         }
         else if(param1.r != 1)
         {
            if(param1.r == 2)
            {
               Alert.show(Language.MCZDPETFIGHT_PANEL_U[54]);
            }
            else if(param1.r == 3)
            {
               Alert.show(Language.MCZDPETFIGHT_PANEL_U[65]);
            }
            else if(param1.r == -1)
            {
               Alert.show(Language.MCZDPETFIGHT_PANEL_U[68]);
            }
         }
      }
      
      private function _MCZD_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "积分";
         _loc1_.dataField = "s";
         _loc1_.width = 50;
         return _loc1_;
      }
      
      public function ___MCZD_BasicGlowButton6_click(param1:MouseEvent) : void
      {
         config_clickHandler(param1);
      }
      
      public function onMCZDLogPanel(param1:*) : void
      {
         var _loc3_:Object = null;
         var _loc2_:* = _mczdDataStorage.log[param1];
         if(_loc2_)
         {
            _loc3_ = _core.view.getUI(ViewManager.POP_MCZD_BATTLE_REPORT);
            _loc2_.cpt = _loc2_.gname;
            _loc3_.showResult(_loc2_);
         }
      }
      
      public function set allRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._912227987allRank;
         if(_loc2_ !== param1)
         {
            this._912227987allRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allRank",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("getMCZDData",null);
      }
      
      protected function creationCompleteHandler(param1:FlexEvent) : void
      {
         img1 = new UIComponent();
         img1.mouseEnabled = false;
         img1.mouseChildren = false;
         var _loc2_:DisplayObject = new (ResManager.MCZDMATCHING as Class)();
         img1.addChild(_loc2_);
         img1.x = 260;
         img1.y = 130;
         img1.visible = false;
         fightBox.addChild(img1);
      }
   }
}

