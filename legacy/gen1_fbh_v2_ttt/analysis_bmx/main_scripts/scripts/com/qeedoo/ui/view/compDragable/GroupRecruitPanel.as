package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.DataGrid;
   import mx.controls.List;
   import mx.controls.Menu;
   import mx.controls.NumericStepper;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Glow;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupRecruitPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _GroupRecruitPanel_DataGridColumn2:DataGridColumn;
      
      public var _GroupRecruitPanel_DataGridColumn5:DataGridColumn;
      
      private var _2070514658ns_hour:NumericStepper;
      
      private var _739732038ns_maxLevel:NumericStepper;
      
      mx_internal var _bindings:Array = [];
      
      public var _GroupRecruitPanel_RoundedLabel1:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel2:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel3:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel4:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel5:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel6:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel7:RoundedLabel;
      
      public var _GroupRecruitPanel_RoundedLabel8:RoundedLabel;
      
      private var _3322014list:List;
      
      public var _GroupRecruitPanel_DelayButton1:DelayButton;
      
      private var roomList:ArrayCollection;
      
      public var _GroupRecruitPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _77872101searchResult:ArrayCollection = new ArrayCollection();
      
      private var _1945694071xmlWill:XML;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private const PAGE_MAX_ROOM_NUM:int = 10;
      
      private var _1972467768pageRoomList:ArrayCollection = new ArrayCollection();
      
      private var _1057325618ns_minute:NumericStepper;
      
      public var _GroupRecruitPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _207684226glowEffect:Glow;
      
      private var myGroupData:Object;
      
      private var _3494058rbtn:CheckBox;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _1265282384btn_myGroup:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private const MAX_BOOK_INTERVAL:Number = 7200000;
      
      private var willList:Array;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _createdFlag:* = false;
      
      private const MIN_INTERVAL_TO_SERVER:int = 60000;
      
      private var _firstFlag:* = true;
      
      private var _3203dg:DataGrid;
      
      private var lastSelectItemName:String;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var timeFlag:Number = 0;
      
      private var _1779038604ns_minLevel:NumericStepper;
      
      private var _94442652cb_fb:ComboBox;
      
      private var willTypeList:Array;
      
      public var _GroupRecruitPanel_DataGridColumn1:DataGridColumn;
      
      public var _GroupRecruitPanel_DataGridColumn3:DataGridColumn;
      
      public var _GroupRecruitPanel_DataGridColumn4:DataGridColumn;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GroupRecruitPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.left = "10";
                     this.bottom = "45";
                     this.right = "490";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.horizontalCenter = "0";
                              this.top = "5";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":100};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":40,
                                 "width":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"cb_fb",
                           "events":{"change":"__cb_fb_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":60,
                                 "width":128,
                                 "labelField":"name"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"rbtn",
                           "events":{"click":"__rbtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":65,
                                 "y":38
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":List,
                           "id":"list",
                           "events":{"click":"__list_click"},
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.top = "90";
                              this.bottom = "115";
                              this.left = "10";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CSSBorder",
                                 "horizontalScrollPolicy":"off",
                                 "itemRenderer":_GroupRecruitPanel_ClassFactory1_c()
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel3",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.bottom = "40";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":153};
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_hour",
                           "stylesFactory":function():void
                           {
                              this.bottom = "15";
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "minimum":0,
                                 "maximum":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_minute",
                           "stylesFactory":function():void
                           {
                              this.bottom = "15";
                              this.left = "105";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "minimum":0,
                                 "maximum":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.bottom = "15";
                              this.left = "70";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":20};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.bottom = "15";
                              this.left = "161";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":20};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel6",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":236
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel7",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":77,
                                 "y":258,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_maxLevel",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":105,
                                 "y":256,
                                 "maximum":150,
                                 "stepSize":1,
                                 "value":150,
                                 "width":58
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_minLevel",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":256,
                                 "maximum":150,
                                 "stepSize":1,
                                 "value":30,
                                 "width":59
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "45";
                     this.right = "10";
                     this.left = "218";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitPanel_RoundedLabel8",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.horizontalCenter = "0";
                              this.top = "5";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":100};
                           }
                        }),new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"dg",
                           "events":{"itemDoubleClick":"__dg_itemDoubleClick"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.left = "10";
                              this.top = "41";
                              this.bottom = "30";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "doubleClickEnabled":true,
                                 "columns":[_GroupRecruitPanel_DataGridColumn1_i(),_GroupRecruitPanel_DataGridColumn2_i(),_GroupRecruitPanel_DataGridColumn3_i(),_GroupRecruitPanel_DataGridColumn4_i(),_GroupRecruitPanel_DataGridColumn5_i(),_GroupRecruitPanel_DataGridColumn6_c()]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.bottom = "5";
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_GroupRecruitPanel_DelayButton1",
                           "events":{"click":"___GroupRecruitPanel_DelayButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "5";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":60000,
                                 "styleName":"BtnStdRed2",
                                 "width":50
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitPanel_BasicGlowButton1",
                  "events":{"click":"___GroupRecruitPanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed2",
                        "width":50,
                        "x":76
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn_myGroup",
                  "events":{"click":"__btn_myGroup_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.bottom = "15";
                     this.right = "18";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed2",
                        "width":65
                     };
                  }
               })]
            };
         }
      });
      
      public function GroupRecruitPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 430;
         this.styleName = "StandardContent";
         _GroupRecruitPanel_Glow1_i();
         _GroupRecruitPanel_XML1_i();
         this.addEventListener("creationComplete",___GroupRecruitPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupRecruitPanel._watcherSetupUtil = param1;
      }
      
      public function updateGroupData(param1:Object, param2:Object) : void
      {
         if(Boolean(myGroupData) && Boolean(myGroupData.f))
         {
            myGroupData.d.applyList = param2;
            myGroupData.d.members = param1;
         }
      }
      
      public function setFirstFlag(param1:Boolean) : void
      {
         _firstFlag = param1;
      }
      
      public function set glowEffect(param1:Glow) : void
      {
         var _loc2_:Object = this._207684226glowEffect;
         if(_loc2_ !== param1)
         {
            this._207684226glowEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glowEffect",_loc2_,param1));
         }
      }
      
      public function set dg(param1:DataGrid) : void
      {
         var _loc2_:Object = this._3203dg;
         if(_loc2_ !== param1)
         {
            this._3203dg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg",_loc2_,param1));
         }
      }
      
      public function __btn_myGroup_click(param1:MouseEvent) : void
      {
         getMyGroup();
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         var _loc2_:XML = null;
         var _loc3_:Object = null;
         willList = [];
         willTypeList = [];
         var _loc1_:XML = new XML(xmlWill);
         for each(_loc2_ in _loc1_.WILL)
         {
            _loc3_ = new Object();
            _loc3_.name = _loc2_.@Name.toString();
            _loc3_.id = parseInt(_loc2_.@id.toString());
            _loc3_.type = parseInt(_loc2_.@type.toString());
            _loc3_.typeName = _loc2_.@typeName.toString();
            _loc3_.level = parseInt(_loc2_.@Level.toString());
            willList[_loc3_.id] = _loc3_;
            willTypeList[_loc3_.type] = {
               "data":_loc3_.type,
               "name":_loc3_.typeName
            };
         }
         cb_fb.dataProvider = willTypeList;
         setDefultData();
         cb_fb.selectedIndex = 0;
         _core.remote.getRoomList();
      }
      
      public function ___GroupRecruitPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_hour() : NumericStepper
      {
         return this._2070514658ns_hour;
      }
      
      private function _GroupRecruitPanel_XML1_i() : XML
      {
         var _loc1_:XML = <WillList><WILL type="1" typeName="副本" id="1" Name="迷幻树洞(简单)" Level="50"></WILL><WILL type="1" typeName="副本" id="2" Name="大漠宝库(简单)" Level="60"></WILL><WILL type="1" typeName="副本" id="3" Name="绿野秘境(简单)" Level="80"></WILL><WILL type="1" typeName="副本" id="4" Name="烈焰深渊(简单)" Level="90"></WILL><WILL type="1" typeName="副本" id="5" Name="烈焰深渊(普通)" Level="90"></WILL><WILL type="1" typeName="副本" id="6" Name="烈焰深渊(困难)" Level="90"></WILL><WILL type="1" typeName="副本" id="7" Name="重返狼穴(简单)" Level="100"></WILL><WILL type="1" typeName="副本" id="8" Name="重返狼穴(普通)" Level="100"></WILL><WILL type="1" typeName="副本" id="9" Name="重返狼穴(困难)" Level="100"></WILL><WILL type="1" typeName="副本" id="10" Name="吸血鬼乐园(简单)" Level="120"></WILL><WILL type="1" typeName="副本" id="11" Name="吸血鬼乐园(普通)" Level="120"></WILL><WILL type="1" typeName="副本" id="12" Name="吸血鬼乐园(困难)" Level="120"></WILL><WILL type="2" typeName="活动" id="13" Name="无忧保卫战" Level="30"></WILL><WILL type="2" typeName="活动" id="14" Name="恶灵现世" Level="50"></WILL><WILL type="3" typeName="日常" id="15" Name="悬赏任务" Level="10"></WILL><WILL type="3" typeName="日常" id="16" Name="除魔任务" Level="50"></WILL><WILL type="3" typeName="日常" id="17" Name="神修任务" Level="50"></WILL></WillList>;
         xmlWill = _loc1_;
         return _loc1_;
      }
      
      private function clickRadioBtn(param1:Event) : void
      {
         if(rbtn.selected)
         {
            cb_fb.enabled = false;
            list.enabled = false;
            ns_minLevel.value = 30;
         }
         else
         {
            cb_fb.enabled = true;
            list.enabled = true;
         }
      }
      
      public function refreshGroupList() : void
      {
         _core.remote.getRoomList();
      }
      
      public function setAcceptBtnEnable(param1:Boolean) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in roomList)
         {
            roomList.getItemAt(_loc2_).st = !param1;
         }
         initPageSelector();
      }
      
      private function _GroupRecruitPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_BasicTitleCanvas1.text = param1;
         },"_GroupRecruitPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel1.text = param1;
         },"_GroupRecruitPanel_RoundedLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel2.text = param1;
         },"_GroupRecruitPanel_RoundedLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rbtn.label = param1;
         },"rbtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel3.text = param1;
         },"_GroupRecruitPanel_RoundedLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel4.text = param1;
         },"_GroupRecruitPanel_RoundedLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel5.text = param1;
         },"_GroupRecruitPanel_RoundedLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel6.text = param1;
         },"_GroupRecruitPanel_RoundedLabel6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel7.text = param1;
         },"_GroupRecruitPanel_RoundedLabel7.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_RoundedLabel8.text = param1;
         },"_GroupRecruitPanel_RoundedLabel8.text");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return pageRoomList;
         },function(param1:Object):void
         {
            dg.dataProvider = param1;
         },"dg.dataProvider");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_DataGridColumn1.headerText = param1;
         },"_GroupRecruitPanel_DataGridColumn1.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_DataGridColumn2.headerText = param1;
         },"_GroupRecruitPanel_DataGridColumn2.headerText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_DataGridColumn3.headerText = param1;
         },"_GroupRecruitPanel_DataGridColumn3.headerText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_DataGridColumn4.headerText = param1;
         },"_GroupRecruitPanel_DataGridColumn4.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_DataGridColumn5.headerText = param1;
         },"_GroupRecruitPanel_DataGridColumn5.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_DelayButton1.label = param1;
         },"_GroupRecruitPanel_DelayButton1.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitPanel_BasicGlowButton1.label = param1;
         },"_GroupRecruitPanel_BasicGlowButton1.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_myGroup.label = param1;
         },"btn_myGroup.label");
         result[18] = binding;
         return result;
      }
      
      private function initPageSelector2() : void
      {
         var _loc1_:int = 0;
         if(searchResult.length >= PAGE_MAX_ROOM_NUM)
         {
            _loc1_ = PAGE_MAX_ROOM_NUM;
         }
         else
         {
            _loc1_ = searchResult.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            pageRoomList.addItem(searchResult.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = onPageChanged2;
         pageSelector.onPageCleared = clearPage2;
         pageSelector.initPageSeletor(searchResult.length,PAGE_MAX_ROOM_NUM);
      }
      
      private function _GroupRecruitPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "range";
         _loc1_.width = 80;
         BindingManager.executeBindings(this,"_GroupRecruitPanel_DataGridColumn2",_GroupRecruitPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function clearPage2() : void
      {
         pageRoomList.removeAll();
      }
      
      public function onGetRoomList(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Date = null;
         if(!willList)
         {
            callLater(onGetRoomList,[param1]);
         }
         else
         {
            roomList = new ArrayCollection();
            for each(_loc2_ in param1.d)
            {
               _loc2_.st = param1.st;
               _loc2_.range = _loc2_.minLevel + "--" + _loc2_.maxLevel;
               _loc2_.fb = willList[_loc2_.fid] && willList[_loc2_.fid].name;
               _loc3_ = _loc2_.time + TimeUtil.timeOSOffSet;
               _loc4_ = new Date();
               _loc4_.setTime(_loc3_);
               _loc2_.date = TimeUtil.dateFormatter.format(_loc4_);
               roomList.addItem(_loc2_);
            }
            initPageSelector();
         }
      }
      
      public function set cb_fb(param1:ComboBox) : void
      {
         var _loc2_:Object = this._94442652cb_fb;
         if(_loc2_ !== param1)
         {
            this._94442652cb_fb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb_fb",_loc2_,param1));
         }
      }
      
      public function set ns_minLevel(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1779038604ns_minLevel;
         if(_loc2_ !== param1)
         {
            this._1779038604ns_minLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_minLevel",_loc2_,param1));
         }
      }
      
      public function set list(param1:List) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
         }
      }
      
      public function getCreatedFlag() : Boolean
      {
         return _createdFlag;
      }
      
      public function set xmlWill(param1:XML) : void
      {
         var _loc2_:Object = this._1945694071xmlWill;
         if(_loc2_ !== param1)
         {
            this._1945694071xmlWill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xmlWill",_loc2_,param1));
         }
      }
      
      public function set ns_hour(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._2070514658ns_hour;
         if(_loc2_ !== param1)
         {
            this._2070514658ns_hour = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_hour",_loc2_,param1));
         }
      }
      
      private function onPageChanged2(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            pageRoomList.addItem(searchResult.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         _firstFlag = true;
         _createdFlag = false;
         timeFlag = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_myGroup() : BasicGlowButton
      {
         return this._1265282384btn_myGroup;
      }
      
      private function _GroupRecruitPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[0];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[1];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[3];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_S[24];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[33];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[16];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[17];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[2];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[14];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[0];
         _loc1_ = pageRoomList;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[5];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[2];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[3];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[4];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[6];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[28];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[12];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[8];
      }
      
      public function ___GroupRecruitPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         searchGroup();
      }
      
      private function clickList(param1:MouseEvent) : void
      {
         if(param1.target.hasOwnProperty("text"))
         {
            if(param1.target.text == lastSelectItemName)
            {
               list.selectedIndex = -1;
               lastSelectItemName = "";
            }
            else
            {
               lastSelectItemName = param1.target.text;
            }
         }
      }
      
      public function __dg_itemDoubleClick(param1:ListEvent) : void
      {
         dgItemClick(param1);
      }
      
      public function set rbtn(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3494058rbtn;
         if(_loc2_ !== param1)
         {
            this._3494058rbtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rbtn",_loc2_,param1));
         }
      }
      
      private function _GroupRecruitPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "leaderName";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_GroupRecruitPanel_DataGridColumn1",_GroupRecruitPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function onSetRoomConfig(param1:Object) : void
      {
         if(param1.time)
         {
            myGroupData.d.time = param1.time;
         }
         if(param1.fid)
         {
            myGroupData.d.fid = param1.fid;
         }
      }
      
      private function _GroupRecruitPanel_DataGridColumn6_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.itemRenderer = _GroupRecruitPanel_ClassFactory2_c();
         return _loc1_;
      }
      
      private function setDefultData() : void
      {
         var _loc3_:* = undefined;
         var _loc1_:int = 0;
         var _loc2_:Array = [];
         for(_loc3_ in willList)
         {
            if(willList[_loc3_].type == _loc1_)
            {
               _loc2_.push(willList[_loc3_]);
            }
         }
         list.dataProvider = _loc2_;
         rbtn.selected = true;
         cb_fb.enabled = false;
         list.enabled = false;
      }
      
      private function _GroupRecruitPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GroupRecruitPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _GroupRecruitPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "memberNum";
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_GroupRecruitPanel_DataGridColumn5",_GroupRecruitPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function set ns_maxLevel(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._739732038ns_maxLevel;
         if(_loc2_ !== param1)
         {
            this._739732038ns_maxLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_maxLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get glowEffect() : Glow
      {
         return this._207684226glowEffect;
      }
      
      private function clearPage() : void
      {
         pageRoomList.removeAll();
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      public function getFirstFlag() : Boolean
      {
         return _firstFlag;
      }
      
      public function __list_click(param1:MouseEvent) : void
      {
         clickList(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get xmlWill() : XML
      {
         return this._1945694071xmlWill;
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minLevel() : NumericStepper
      {
         return this._1779038604ns_minLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get dg() : DataGrid
      {
         return this._3203dg;
      }
      
      public function __cb_fb_change(param1:ListEvent) : void
      {
         changeWillType(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupRecruitPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupRecruitPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GroupRecruitPanelWatcherSetupUtil");
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
      public function get list() : List
      {
         return this._3322014list;
      }
      
      private function changeListItem(param1:Event) : void
      {
         ns_minLevel.value = list.selectedItem.level;
      }
      
      public function __rbtn_click(param1:MouseEvent) : void
      {
         clickRadioBtn(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cb_fb() : ComboBox
      {
         return this._94442652cb_fb;
      }
      
      private function _GroupRecruitPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "date";
         _loc1_.width = 85;
         BindingManager.executeBindings(this,"_GroupRecruitPanel_DataGridColumn4",_GroupRecruitPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function set btn_myGroup(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1265282384btn_myGroup;
         if(_loc2_ !== param1)
         {
            this._1265282384btn_myGroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_myGroup",_loc2_,param1));
         }
      }
      
      public function set ns_minute(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1057325618ns_minute;
         if(_loc2_ !== param1)
         {
            this._1057325618ns_minute = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_minute",_loc2_,param1));
         }
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(param1.index == 0)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(dg.selectedItem.leaderName);
         }
         else if(param1.index == 1)
         {
            ChatPanelUtil.createChatPanel(dg.selectedItem.cid);
         }
         else if(param1.index == 2)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(dg.selectedItem.cid);
         }
      }
      
      private function _GroupRecruitPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GroupRecruitPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function searchGroup() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         if(ns_maxLevel.value < ns_minLevel.value)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[6]);
            return;
         }
         var _loc1_:Object = new Object();
         _loc1_.minLevel = ns_minLevel.value;
         _loc1_.maxLevel = ns_maxLevel.value;
         if(rbtn.selected)
         {
            _loc1_.allWill = true;
         }
         else
         {
            _loc1_.allWill = false;
            cb_fb.selectedItem && (_loc1_.type = cb_fb.selectedItem.data);
            list.selectedItem && (_loc1_.fid = list.selectedItem.id);
         }
         var _loc2_:Date = new Date();
         _loc2_.setHours(ns_hour.value,ns_minute.value);
         _loc1_.time = _loc2_.getTime() + 60 * 1000;
         if(_loc1_.time < new Date().getTime())
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[28]);
            return;
         }
         searchResult.removeAll();
         for(_loc3_ in roomList)
         {
            _loc4_ = roomList[_loc3_];
            if(!(_loc1_.minLevel > _loc4_.maxLevel || _loc1_.maxLevel < _loc4_.minLevel))
            {
               if(_loc4_.time <= _loc1_.time)
               {
                  if(_loc1_.allWill)
                  {
                     searchResult.addItem(_loc4_);
                  }
                  else if(_loc1_.fid)
                  {
                     if(_loc4_.fid == _loc1_.fid)
                     {
                        searchResult.addItem(_loc4_);
                     }
                  }
                  else if(_loc4_.type == _loc1_.type)
                  {
                     searchResult.addItem(_loc4_);
                  }
               }
            }
         }
         initPageSelector2();
      }
      
      public function setCreatedFlag(param1:Boolean) : void
      {
         _createdFlag = param1;
      }
      
      public function setMyGroupData(param1:Object) : void
      {
         myGroupData = param1;
      }
      
      private function _GroupRecruitPanel_Glow1_i() : Glow
      {
         var _loc1_:Glow = new Glow();
         glowEffect = _loc1_;
         _loc1_.repeatCount = 10000;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 1;
         _loc1_.blurXFrom = 0;
         _loc1_.blurXTo = 10;
         _loc1_.blurYFrom = 0;
         _loc1_.blurYTo = 10;
         _loc1_.color = 16135947;
         return _loc1_;
      }
      
      private function initPageSelector() : void
      {
         var _loc1_:int = 0;
         if(roomList.length >= PAGE_MAX_ROOM_NUM)
         {
            _loc1_ = PAGE_MAX_ROOM_NUM;
         }
         else
         {
            _loc1_ = roomList.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            pageRoomList.addItem(roomList.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(roomList.length,PAGE_MAX_ROOM_NUM);
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_maxLevel() : NumericStepper
      {
         return this._739732038ns_maxLevel;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            pageRoomList.addItem(roomList.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageRoomList() : ArrayCollection
      {
         return this._1972467768pageRoomList;
      }
      
      private function set searchResult(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._77872101searchResult;
         if(_loc2_ !== param1)
         {
            this._77872101searchResult = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchResult",_loc2_,param1));
         }
      }
      
      public function playGlowEffect() : void
      {
         if(!glowEffect.isPlaying)
         {
            glowEffect.play([btn_myGroup]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minute() : NumericStepper
      {
         return this._1057325618ns_minute;
      }
      
      private function set pageRoomList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1972467768pageRoomList;
         if(_loc2_ !== param1)
         {
            this._1972467768pageRoomList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRoomList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rbtn() : CheckBox
      {
         return this._3494058rbtn;
      }
      
      private function _GroupRecruitPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "fb";
         _loc1_.width = 85;
         BindingManager.executeBindings(this,"_GroupRecruitPanel_DataGridColumn3",_GroupRecruitPanel_DataGridColumn3);
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Date = null;
         super.visible = param1;
         if(param1)
         {
            _loc2_ = new Date();
            _loc2_.setTime(_loc2_.getTime() + MAX_BOOK_INTERVAL);
            ns_hour.value = _loc2_.getHours();
            ns_minute.value = _loc2_.getMinutes();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get searchResult() : ArrayCollection
      {
         return this._77872101searchResult;
      }
      
      public function checkInterval() : Boolean
      {
         var _loc1_:Date = null;
         var _loc2_:Number = NaN;
         if(!_firstFlag)
         {
            _loc1_ = new Date();
            _loc2_ = _loc1_.getTime() - timeFlag;
            if(_loc2_ > MIN_INTERVAL_TO_SERVER)
            {
               trace("间隔大于60秒,向服务端请求数据");
               timeFlag = _loc1_.getTime();
               _firstFlag = true;
            }
         }
         return _firstFlag;
      }
      
      private function dgItemClick(param1:ListEvent) : void
      {
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO}]);
      }
      
      public function changeWillType(param1:Event) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:int = int(param1.target.selectedItem.data);
         var _loc3_:Array = [];
         for(_loc4_ in willList)
         {
            if(willList[_loc4_].type == _loc2_)
            {
               _loc3_.push(willList[_loc4_]);
            }
         }
         list.dataProvider = _loc3_;
      }
      
      public function getMyGroup() : void
      {
         var _loc1_:Object = null;
         if(checkInterval())
         {
            _core.remote.getMyRoom();
            _firstFlag = false;
         }
         else
         {
            if(!_createdFlag)
            {
               _core.view.changeVisible(ViewManager.PANEL_GROUP_RECRUIT_NEW);
               _loc1_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_NEW);
               _loc1_.setDataProvider(willTypeList,willList);
            }
            else
            {
               _loc1_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
               _loc1_.show();
               _loc1_.initMyRoom(myGroupData,willTypeList,willList);
               if(glowEffect.isPlaying)
               {
                  _loc1_.showChatLog();
               }
            }
            if(glowEffect.isPlaying)
            {
               glowEffect.end();
               btn_myGroup.filters = [];
            }
         }
      }
      
      public function ___GroupRecruitPanel_DelayButton1_click(param1:MouseEvent) : void
      {
         refreshGroupList();
      }
   }
}

