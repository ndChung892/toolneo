package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomColumn;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.LinkTextInput;
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
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.Menu;
   import mx.controls.NumericStepper;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupRecruitDetailPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2070514658ns_hour:NumericStepper;
      
      private var leaderId:int;
      
      private var _1786660989acceptButtonEnable:Boolean;
      
      public var dataFlag:Boolean = false;
      
      private var _3642rl:RoundedLabel;
      
      private var _648591011dg_members:DataGrid;
      
      private var tempCid:int;
      
      private var minLevel:int;
      
      private var _2075901652applyList:ArrayCollection;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _GroupRecruitDetailPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _351125616dg_applyList:DataGrid;
      
      public var _GroupRecruitDetailPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _GroupRecruitDetailPanel_BasicGlowButton2:BasicGlowButton;
      
      public var _GroupRecruitDetailPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _GroupRecruitDetailPanel_Button1:Button;
      
      public var _GroupRecruitDetailPanel_Button3:Button;
      
      private var _1058056547textInput:LinkTextInput;
      
      public var _GroupRecruitDetailPanel_Button2:Button;
      
      private var _core:Core = Core.getInstance();
      
      private var tempName:String;
      
      public var _GroupRecruitDetailPanel_RoundedLabel1:RoundedLabel;
      
      public var _GroupRecruitDetailPanel_RoundedLabel3:RoundedLabel;
      
      public var _GroupRecruitDetailPanel_RoundedLabel4:RoundedLabel;
      
      public var _GroupRecruitDetailPanel_RoundedLabel5:RoundedLabel;
      
      public var _GroupRecruitDetailPanel_RoundedLabel6:RoundedLabel;
      
      public var _GroupRecruitDetailPanel_RoundedLabel7:RoundedLabel;
      
      public var _GroupRecruitDetailPanel_RoundedLabel8:RoundedLabel;
      
      private var _1057325618ns_minute:NumericStepper;
      
      private var _chatLog:ArrayQueue = new ArrayQueue(30);
      
      private var maxLevel:int;
      
      mx_internal var _watchers:Array = [];
      
      private var willList:Array;
      
      public var _GroupRecruitDetailPanel_DataGridColumn1:DataGridColumn;
      
      public var _GroupRecruitDetailPanel_DataGridColumn2:DataGridColumn;
      
      public var _GroupRecruitDetailPanel_DataGridColumn3:DataGridColumn;
      
      public var _GroupRecruitDetailPanel_DataGridColumn4:DataGridColumn;
      
      public var _GroupRecruitDetailPanel_DataGridColumn5:DataGridColumn;
      
      public var _GroupRecruitDetailPanel_DataGridColumn6:DataGridColumn;
      
      private var _432720173isLeader:Boolean;
      
      private var _1102666777linkTA:LinkTextArea;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GroupRecruitDetailPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "40";
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":205,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":43,
                                 "width":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl",
                           "stylesFactory":function():void
                           {
                              this.color = 1088804;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":69,
                                 "width":152
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_GroupRecruitDetailPanel_Button1",
                           "events":{"click":"___GroupRecruitDetailPanel_Button1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":41,
                                 "width":50,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":107,
                                 "width":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_GroupRecruitDetailPanel_Button2",
                           "events":{"click":"___GroupRecruitDetailPanel_Button2_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":105,
                                 "width":50,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_hour",
                           "stylesFactory":function():void
                           {
                              this.bottom = "183";
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "minimum":0,
                                 "maximum":23,
                                 "width":50,
                                 "enabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_minute",
                           "stylesFactory":function():void
                           {
                              this.bottom = "183";
                              this.left = "87";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "minimum":0,
                                 "maximum":59,
                                 "width":50,
                                 "enabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.bottom = "185";
                              this.left = "59";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":20,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.bottom = "184";
                              this.left = "138";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":20,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"dg_members",
                           "events":{"itemDoubleClick":"__dg_members_itemDoubleClick"},
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.bottom = "10";
                              this.top = "180";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "doubleClickEnabled":true,
                                 "columns":[_GroupRecruitDetailPanel_DataGridColumn1_i(),_GroupRecruitDetailPanel_DataGridColumn2_i(),_GroupRecruitDetailPanel_DataGridColumn3_i()]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel6",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                              this.horizontalCenter = "0";
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":70};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitDetailPanel_BasicGlowButton1",
                  "events":{"click":"___GroupRecruitDetailPanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "styleName":"BtnStdRed2",
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitDetailPanel_BasicGlowButton2",
                  "events":{"click":"___GroupRecruitDetailPanel_BasicGlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "styleName":"BtnStdRed2",
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "50";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":250,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel7",
                           "stylesFactory":function():void
                           {
                              this.top = "10";
                              this.color = 16777215;
                              this.horizontalCenter = "0";
                              this.fontSize = 14;
                              this.textAlign = "center";
                              this.fontStyle = "normal";
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"linkTA",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0.3;
                              this.backgroundColor = 0;
                              this.borderStyle = "none";
                              this.color = 16774324;
                              this.bottom = "25";
                              this.left = "0";
                              this.right = "0";
                              this.top = "40";
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
                        }),new UIComponentDescriptor({
                           "type":LinkTextInput,
                           "id":"textInput",
                           "events":{
                              "valueCommit":"__textInput_valueCommit",
                              "enter":"__textInput_enter"
                           },
                           "stylesFactory":function():void
                           {
                              this.bottom = "0";
                              this.right = "50";
                              this.left = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "maxChars":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_GroupRecruitDetailPanel_Button3",
                           "events":{"click":"___GroupRecruitDetailPanel_Button3_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "0";
                              this.bottom = "1";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "styleName":"BtnStdRed"
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
                     this.bottom = "50";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":205,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_GroupRecruitDetailPanel_RoundedLabel8",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                              this.horizontalCenter = "0";
                              this.top = "10";
                           }
                        }),new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"dg_applyList",
                           "events":{"itemDoubleClick":"__dg_applyList_itemDoubleClick"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.top = "40";
                              this.left = "10";
                              this.right = "10";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "doubleClickEnabled":true,
                                 "columns":[_GroupRecruitDetailPanel_DataGridColumn4_i(),_GroupRecruitDetailPanel_DataGridColumn5_i(),_GroupRecruitDetailPanel_DataGridColumn6_i(),_GroupRecruitDetailPanel_DataGridColumn7_c()]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitDetailPanel_BasicGlowButton3",
                  "events":{"click":"___GroupRecruitDetailPanel_BasicGlowButton3_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                     this.horizontalCenter = "92";
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
      
      private var willTypeList:Array;
      
      private var _948230163memList:ArrayCollection;
      
      public function GroupRecruitDetailPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 430;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___GroupRecruitDetailPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupRecruitDetailPanel._watcherSetupUtil = param1;
      }
      
      private function _GroupRecruitDetailPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[8];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[3];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[19];
         _loc1_ = isLeader;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[4];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[19];
         _loc1_ = isLeader;
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[16];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[17];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[20];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[21];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[22];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[17];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[26];
         _loc1_ = isLeader;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[27];
         _loc1_ = isLeader;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[23];
         _loc1_ = Language.CHATPANEL_U[1];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[18];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[20];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[21];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[22];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[24];
      }
      
      private function checkBtnEnabel() : void
      {
         if(Boolean(memList) && Boolean(isLeader) && memList.length < 5)
         {
            acceptButtonEnable = true;
         }
         else
         {
            acceptButtonEnable = false;
         }
      }
      
      private function init() : void
      {
         linkTA.addEventListener(FlexEvent.VALUE_COMMIT,onValueCommit);
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitDetailPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.width = 40;
         _loc1_.itemRenderer = _GroupRecruitDetailPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_GroupRecruitDetailPanel_DataGridColumn2",_GroupRecruitDetailPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function showChatLog() : void
      {
         if(!initialized)
         {
            callLater(showChatLog);
         }
         else
         {
            linkTA.htmlText = _chatLog.join();
         }
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitDetailPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "className";
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_GroupRecruitDetailPanel_DataGridColumn6",_GroupRecruitDetailPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function ___GroupRecruitDetailPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         leaveRoom();
      }
      
      public function onSomeoneApply(param1:Object) : void
      {
         if(applyList)
         {
            param1.className = GameData.d[GamePredef.TBL_CLASS][param1.classId].name;
            applyList.addItem(param1);
            updateGroupData();
         }
      }
      
      public function ___GroupRecruitDetailPanel_Button1_click(param1:MouseEvent) : void
      {
         setGroupRoom("will");
      }
      
      private function _GroupRecruitDetailPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomColumn;
         return _loc1_;
      }
      
      private function updateGroupData() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
         _loc1_.updateGroupData(memList,applyList);
      }
      
      public function onDeleteApply(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(applyList)
         {
            for(_loc2_ in applyList)
            {
               if(applyList.getItemAt(_loc2_).cid == param1.cid)
               {
                  applyList.removeItemAt(_loc2_);
                  break;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_hour() : NumericStepper
      {
         return this._2070514658ns_hour;
      }
      
      private function set memList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._948230163memList;
         if(_loc2_ !== param1)
         {
            this._948230163memList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"memList",_loc2_,param1));
         }
      }
      
      public function __dg_members_itemDoubleClick(param1:ListEvent) : void
      {
         dgItemClick(param1);
      }
      
      public function acceptRoomApply(param1:int) : void
      {
         _core.remote.acceptRoomApply(param1);
      }
      
      private function checkBlank() : void
      {
         if(Boolean(textInput) && Boolean(textInput.text) && textInput.text.length <= 0)
         {
            textInput.htmlText = "";
         }
      }
      
      public function onRoomSay(param1:Object) : void
      {
         var _loc2_:int = int(param1[0]);
         var _loc3_:String = param1[1];
         var _loc4_:String = param1[2];
         var _loc5_:String = "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + _loc2_ + "|" + _loc3_ + "|0|0|0]" + "<font color=\'#00ff00\'>[" + ToolKit.getTimeStrNow() + "]</font>" + TextUtil.encode(_loc4_) + "<br>";
         _chatLog.push(TextUtil.decode(_loc5_));
         if(initialized)
         {
            linkTA.htmlText = _chatLog.join();
         }
      }
      
      private function leaveRoom() : void
      {
         var func:Function = function(param1:CloseEvent):*
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.leaveRoom();
               clearChatLog();
            }
         };
         Alert.show(Language.GROUP_RECRUIT_PANEL_S[2],null,Alert.YES | Alert.NO,null,func);
      }
      
      public function __dg_applyList_itemDoubleClick(param1:ListEvent) : void
      {
         dgItemClick(param1);
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
      
      public function ___GroupRecruitDetailPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get memList() : ArrayCollection
      {
         return this._948230163memList;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl() : RoundedLabel
      {
         return this._3642rl;
      }
      
      public function onSystemRoomSay(param1:String) : void
      {
         param1 = "<font color=\'#ff0000\'>" + Language.GROUP_RECRUIT_PANEL_S[25] + param1 + "\n" + "</font>";
         _chatLog.push(param1);
         if(initialized)
         {
            linkTA.htmlText = _chatLog.join();
         }
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitDetailPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 50;
         _loc1_.itemRenderer = _GroupRecruitDetailPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_GroupRecruitDetailPanel_DataGridColumn1",_GroupRecruitDetailPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function onSetRoomHost(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         leaderId = param1;
         for(_loc3_ in memList)
         {
            memList[_loc3_].leaderId = param1;
            if(memList[_loc3_].cid == leaderId)
            {
               _loc2_ = memList[_loc3_].name;
            }
         }
         for(_loc4_ in applyList)
         {
            applyList[_loc4_].leaderId = param1;
         }
         if(initialized)
         {
            dg_members.dataProvider = memList;
            dg_applyList.dataProvider = applyList;
         }
         if(param1 == _core.player.id)
         {
            isLeader = true;
         }
         else
         {
            isLeader = false;
         }
         checkBtnEnabel();
         if(_loc2_)
         {
            _loc5_ = Language.GROUP_RECRUIT_PANEL_S[29].toString().replace("{name}",_loc2_);
            onSystemRoomSay(_loc5_);
            if(!visible)
            {
               _core.addWarn({"warnType":GamePredef.WARN_TYPE_GROUP_CHAT});
            }
         }
         if(param1 == _core.player.id)
         {
            _core.sysMidNote(Language.GROUP_RECRUIT_PANEL_S[32]);
         }
      }
      
      public function reset() : void
      {
         clearChatLog();
      }
      
      public function onAcceptRoomApply(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         var _loc4_:String = null;
         if(param1 == _core.player.id)
         {
            _loc2_ = _core.player.name;
         }
         for(_loc3_ in applyList)
         {
            if(applyList.getItemAt(_loc3_).cid == param1)
            {
               _loc2_ = applyList.getItemAt(_loc3_).name;
               memList.addItem(applyList.getItemAt(_loc3_));
               applyList.removeItemAt(_loc3_);
               break;
            }
         }
         checkBtnEnabel();
         updateGroupData();
         if(_loc2_)
         {
            _loc4_ = Language.GROUP_RECRUIT_PANEL_S[30].toString().replace("{name}",_loc2_);
            onSystemRoomSay(_loc4_);
            !visible && _core.addWarn({"warnType":GamePredef.WARN_TYPE_GROUP_CHAT});
         }
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitDetailPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.width = 48;
         BindingManager.executeBindings(this,"_GroupRecruitDetailPanel_DataGridColumn5",_GroupRecruitDetailPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function _GroupRecruitDetailPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomColumn;
         return _loc1_;
      }
      
      public function set textInput(param1:LinkTextInput) : void
      {
         var _loc2_:Object = this._1058056547textInput;
         if(_loc2_ !== param1)
         {
            this._1058056547textInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textInput",_loc2_,param1));
         }
      }
      
      private function kickRoomMember() : void
      {
         var msg:String;
         var func:Function;
         if(!dg_members.selectedItem)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[21]);
            return;
         }
         if(dg_members.selectedItem.cid == _core.player.id)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[22]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.kickRoomMember(dg_members.selectedItem.cid);
            }
         };
         msg = Language.GROUP_RECRUIT_PANEL_S[23].toString().replace("{name}",dg_members.selectedItem.name);
         Alert.show(msg,null,Alert.YES | Alert.NO,null,func);
      }
      
      public function ___GroupRecruitDetailPanel_Button2_click(param1:MouseEvent) : void
      {
         setGroupRoom("time");
      }
      
      public function onSetRoomConfig(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc4_:Date = null;
         if(param1.fid)
         {
            if(initialized)
            {
               rl.text = willList[param1.fid].name;
            }
            _loc2_ = Language.GROUP_RECRUIT_PANEL_S[26].toString().replace("{name}",willList[param1.fid].name);
         }
         if(param1.time)
         {
            _loc4_ = new Date();
            _loc4_.setTime(param1.time);
            if(initialized)
            {
               ns_hour.value = _loc4_.getHours();
               ns_minute.value = _loc4_.getMinutes();
            }
            _loc2_ = Language.GROUP_RECRUIT_PANEL_S[27].toString().replace("{hour}",_loc4_.getHours()).replace("{minute}",_loc4_.getMinutes());
         }
         _loc2_ && onSystemRoomSay(_loc2_);
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
         _loc3_.onSetRoomConfig(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get dg_members() : DataGrid
      {
         return this._648591011dg_members;
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      private function set applyList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._2075901652applyList;
         if(_loc2_ !== param1)
         {
            this._2075901652applyList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"applyList",_loc2_,param1));
         }
      }
      
      public function set rl(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3642rl;
         if(_loc2_ !== param1)
         {
            this._3642rl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl",_loc2_,param1));
         }
      }
      
      private function send() : void
      {
         var _loc1_:String = textInput.text;
         _core.remote.roomChat(_loc1_);
         textInput.htmlText = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButtonEnable() : Boolean
      {
         return this._1786660989acceptButtonEnable;
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitDetailPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 55;
         BindingManager.executeBindings(this,"_GroupRecruitDetailPanel_DataGridColumn4",_GroupRecruitDetailPanel_DataGridColumn4);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupRecruitDetailPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupRecruitDetailPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GroupRecruitDetailPanelWatcherSetupUtil");
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
      
      public function __textInput_valueCommit(param1:FlexEvent) : void
      {
         checkBlank();
      }
      
      private function _GroupRecruitDetailPanel_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GroupRecruitDetailPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dg_applyList() : DataGrid
      {
         return this._351125616dg_applyList;
      }
      
      public function ___GroupRecruitDetailPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         setRoomHost();
      }
      
      public function ___GroupRecruitDetailPanel_Button3_click(param1:MouseEvent) : void
      {
         send();
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(param1.index == 0)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(tempName);
         }
         else if(param1.index == 1)
         {
            ChatPanelUtil.createChatPanel(tempCid);
         }
         else if(param1.index == 2)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(tempCid);
         }
      }
      
      private function onValueCommit(param1:Event) : void
      {
         var _loc2_:LinkTextArea = param1.target as LinkTextArea;
         _loc2_.verticalScrollPosition = _loc2_.maxVerticalScrollPosition;
      }
      
      private function setRoomHost() : void
      {
         var msg:String;
         var func:Function;
         if(!dg_members.selectedItem)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[17]);
            return;
         }
         if(dg_members.selectedItem.cid == _core.player.id)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[18]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.setRoomHost(dg_members.selectedItem.cid);
            }
         };
         msg = Language.GROUP_RECRUIT_PANEL_S[16].toString().replace("{name}",dg_members.selectedItem.name);
         Alert.show(msg,null,Alert.YES | Alert.NO,null,func);
      }
      
      public function set isLeader(param1:Boolean) : void
      {
         var _loc2_:Object = this._432720173isLeader;
         if(_loc2_ !== param1)
         {
            this._432720173isLeader = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLeader",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get textInput() : LinkTextInput
      {
         return this._1058056547textInput;
      }
      
      private function setGroupRoom(param1:String) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_UPDATE);
         _loc2_.setState(param1);
         _loc2_.show();
         _loc2_.setWill(willTypeList,willList);
         _loc2_.setLevel(minLevel,maxLevel);
      }
      
      private function _GroupRecruitDetailPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_BasicTitleCanvas1.text = param1;
         },"_GroupRecruitDetailPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel1.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_Button1.label = param1;
         },"_GroupRecruitDetailPanel_Button1.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isLeader;
         },function(param1:Boolean):void
         {
            _GroupRecruitDetailPanel_Button1.enabled = param1;
         },"_GroupRecruitDetailPanel_Button1.enabled");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel3.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_Button2.label = param1;
         },"_GroupRecruitDetailPanel_Button2.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isLeader;
         },function(param1:Boolean):void
         {
            _GroupRecruitDetailPanel_Button2.enabled = param1;
         },"_GroupRecruitDetailPanel_Button2.enabled");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel4.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel4.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel5.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_DataGridColumn1.headerText = param1;
         },"_GroupRecruitDetailPanel_DataGridColumn1.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_DataGridColumn2.headerText = param1;
         },"_GroupRecruitDetailPanel_DataGridColumn2.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_DataGridColumn3.headerText = param1;
         },"_GroupRecruitDetailPanel_DataGridColumn3.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel6.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel6.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_BasicGlowButton1.label = param1;
         },"_GroupRecruitDetailPanel_BasicGlowButton1.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isLeader;
         },function(param1:Boolean):void
         {
            _GroupRecruitDetailPanel_BasicGlowButton1.enabled = param1;
         },"_GroupRecruitDetailPanel_BasicGlowButton1.enabled");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_BasicGlowButton2.label = param1;
         },"_GroupRecruitDetailPanel_BasicGlowButton2.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isLeader;
         },function(param1:Boolean):void
         {
            _GroupRecruitDetailPanel_BasicGlowButton2.enabled = param1;
         },"_GroupRecruitDetailPanel_BasicGlowButton2.enabled");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel7.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel7.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_Button3.label = param1;
         },"_GroupRecruitDetailPanel_Button3.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_RoundedLabel8.text = param1;
         },"_GroupRecruitDetailPanel_RoundedLabel8.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_DataGridColumn4.headerText = param1;
         },"_GroupRecruitDetailPanel_DataGridColumn4.headerText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_DataGridColumn5.headerText = param1;
         },"_GroupRecruitDetailPanel_DataGridColumn5.headerText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_DataGridColumn6.headerText = param1;
         },"_GroupRecruitDetailPanel_DataGridColumn6.headerText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_BasicGlowButton3.label = param1;
         },"_GroupRecruitDetailPanel_BasicGlowButton3.label");
         result[23] = binding;
         return result;
      }
      
      public function set dg_members(param1:DataGrid) : void
      {
         var _loc2_:Object = this._648591011dg_members;
         if(_loc2_ !== param1)
         {
            this._648591011dg_members = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg_members",_loc2_,param1));
         }
      }
      
      public function clearChatLog() : void
      {
         if(initialized)
         {
            linkTA.htmlText = "";
         }
         _chatLog.clear();
         dataFlag = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get applyList() : ArrayCollection
      {
         return this._2075901652applyList;
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn7_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 35;
         _loc1_.itemRenderer = _GroupRecruitDetailPanel_ClassFactory4_c();
         return _loc1_;
      }
      
      private function _GroupRecruitDetailPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupRecruitDetailPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "className";
         _loc1_.width = 60;
         _loc1_.itemRenderer = _GroupRecruitDetailPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_GroupRecruitDetailPanel_DataGridColumn3",_GroupRecruitDetailPanel_DataGridColumn3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLeader() : Boolean
      {
         return this._432720173isLeader;
      }
      
      public function __textInput_enter(param1:FlexEvent) : void
      {
         send();
      }
      
      public function initMyRoom(param1:Object, param2:Array, param3:Array) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc4_:Number = param1.d.time + TimeUtil.timeOSOffSet;
         minLevel = param1.d.minLevel;
         maxLevel = param1.d.maxLevel;
         willTypeList = param2;
         willList = param3;
         rl.text = willList[param1.d.fid].name;
         leaderId = param1.d.cid;
         var _loc5_:Date = new Date();
         _loc5_.setTime(_loc4_);
         ns_hour.value = _loc5_.getHours();
         ns_minute.value = _loc5_.getMinutes();
         memList = new ArrayCollection();
         applyList = new ArrayCollection();
         for each(_loc6_ in param1.d.members)
         {
            _loc6_.className = GameData.d[GamePredef.TBL_CLASS][_loc6_.classId].name;
            _loc6_.leaderId = leaderId;
            memList.addItem(_loc6_);
         }
         for each(_loc7_ in param1.d.applyList)
         {
            _loc7_.className = GameData.d[GamePredef.TBL_CLASS][_loc7_.classId].name;
            _loc7_.leaderId = leaderId;
            applyList.addItem(_loc7_);
         }
         dg_members.dataProvider = memList;
         dg_applyList.dataProvider = applyList;
         if(param1.d.cid == _core.player.id)
         {
            isLeader = true;
         }
         else
         {
            isLeader = false;
         }
         checkBtnEnabel();
         dataFlag = true;
      }
      
      public function ___GroupRecruitDetailPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         kickRoomMember();
      }
      
      private function _GroupRecruitDetailPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomColumn;
         return _loc1_;
      }
      
      public function set linkTA(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1102666777linkTA;
         if(_loc2_ !== param1)
         {
            this._1102666777linkTA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkTA",_loc2_,param1));
         }
      }
      
      public function onMemberLeave(param1:int) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in memList)
         {
            if(memList.getItemAt(_loc2_).cid == param1)
            {
               memList.removeItemAt(_loc2_);
               break;
            }
         }
         checkBtnEnabel();
         updateGroupData();
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minute() : NumericStepper
      {
         return this._1057325618ns_minute;
      }
      
      public function set dg_applyList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._351125616dg_applyList;
         if(_loc2_ !== param1)
         {
            this._351125616dg_applyList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg_applyList",_loc2_,param1));
         }
      }
      
      private function dgItemClick(param1:ListEvent) : void
      {
         tempCid = param1.itemRenderer.data.cid;
         tempName = param1.itemRenderer.data.name;
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO}]);
      }
      
      public function set acceptButtonEnable(param1:Boolean) : void
      {
         var _loc2_:Object = this._1786660989acceptButtonEnable;
         if(_loc2_ !== param1)
         {
            this._1786660989acceptButtonEnable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButtonEnable",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get linkTA() : LinkTextArea
      {
         return this._1102666777linkTA;
      }
   }
}

