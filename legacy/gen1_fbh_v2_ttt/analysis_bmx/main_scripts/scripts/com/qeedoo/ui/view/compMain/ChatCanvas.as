package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicShadowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ScrollEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ChatCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const HEIGHT_MAX:int = 500;
      
      private static const HEIGHT_MIN:int = 140;
      
      private static const HEIGHT_STEP:int = 20;
      
      private static const MAX_CHARACTER_NUM:int = 6000;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":440,
               "height":240,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"canvasOutputBack",
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                     this.top = "0";
                     this.left = "0";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasChatOutput",
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"headline",
                           "events":{"valueCommit":"__headline_valueCommit"},
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.borderStyle = "none";
                              this.left = "0";
                              this.right = "0";
                              this.top = "0";
                              this.color = 16774324;
                              this.textIndent = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mouseEnabled":false,
                                 "editable":false,
                                 "enabled":true,
                                 "selectable":false,
                                 "height":50,
                                 "verticalScrollPolicy":"off"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"allTextOutput",
                           "events":{"scroll":"__allTextOutput_scroll"},
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0.3;
                              this.backgroundColor = 0;
                              this.borderStyle = "none";
                              this.left = "0";
                              this.bottom = "20";
                              this.top = "50";
                              this.right = "0";
                              this.color = 16774324;
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
                           "type":BasicShadowButton,
                           "id":"btnAll",
                           "events":{"click":"__btnAll_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnWorld",
                           "events":{"click":"__btnWorld_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "35";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnScene",
                           "events":{"click":"__btnScene_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "70";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnGuild",
                           "events":{"click":"__btnGuild_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "105";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnTeam",
                           "events":{"click":"__btnTeam_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "140";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnWisper",
                           "events":{"click":"__btnWisper_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "175";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnPersonal",
                           "events":{"click":"__btnPersonal_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "210";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnSystem",
                           "events":{"click":"__btnSystem_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "245";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnEvent",
                           "events":{"click":"__btnEvent_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "280";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnRumour",
                           "events":{"click":"__btnRumour_click"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.left = "175";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":21,
                                 "styleName":"BtnChatChannel",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button1",
                           "events":{"mouseDown":"__button1_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.right = "66";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":18,
                                 "height":18,
                                 "styleName":"BtnChatClear"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button2",
                           "events":{"mouseDown":"__button2_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.right = "44";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":18,
                                 "height":18,
                                 "styleName":"BtnChatUp"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button3",
                           "events":{"mouseDown":"__button3_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.right = "22";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":18,
                                 "height":18,
                                 "styleName":"BtnChatDown"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button4",
                           "events":{"mouseDown":"__button4_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.cornerRadius = 5;
                              this.bottom = "0";
                              this.right = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":18,
                                 "height":18,
                                 "styleName":"BtnChatLock"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"channelListSettingCanvas",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                     this.bottom = "20";
                     this.left = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"StandardContent",
                        "height":130,
                        "width":120,
                        "mouseEnabled":false,
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTitleCanvas,
                           "id":"_ChatCanvas_BasicTitleCanvas1",
                           "propertiesFactory":function():Object
                           {
                              return {"horizontalScrollPolicy":"off"};
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c1",
                           "events":{"click":"__c1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c2",
                           "events":{"click":"__c2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c3",
                           "events":{"click":"__c3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":62,
                                 "y":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c4",
                           "events":{"click":"__c4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":62,
                                 "y":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c5",
                           "events":{"click":"__c5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":62,
                                 "y":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c6",
                           "events":{"click":"__c6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c7",
                           "events":{"click":"__c7_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":83
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c8",
                           "events":{"click":"__c8_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":62,
                                 "y":83
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"c9",
                           "events":{"click":"__c9_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":100,
                                 "visible":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _241352512button2:Button;
      
      private var textRumour:ArrayQueue = new ArrayQueue(20);
      
      private var _3125c8:CheckBox;
      
      private var _2073259271channelListSettingCanvas:Canvas;
      
      private var _1378839131btnAll:BasicShadowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var textWorld:ArrayQueue = new ArrayQueue(20);
      
      private var _3124c7:CheckBox;
      
      private var _2084478366btnEvent:BasicShadowButton;
      
      private var _core:Core = Core.getInstance();
      
      private var textPersonal:ArrayQueue = new ArrayQueue(40);
      
      private var textOutput:LinkTextArea;
      
      private var _598321067btnSystem:BasicShadowButton;
      
      private var _map:Object;
      
      private var _lastHeadlineTimestamp:Number = 0;
      
      private var _2086299383btnGuild:BasicShadowButton;
      
      private var _3123c6:CheckBox;
      
      private var systemTipTimer:Timer;
      
      private var textGuild:ArrayQueue = new ArrayQueue(20);
      
      private var _2096841616btnScene:BasicShadowButton;
      
      private var _3119c2:CheckBox;
      
      private var _2071991108btnPersonal:BasicShadowButton;
      
      private var _206218969btnTeam:BasicShadowButton;
      
      private var _3122c5:CheckBox;
      
      private var _241352513button3:Button;
      
      private var _3118c1:CheckBox;
      
      private var textWisper:ArrayQueue = new ArrayQueue(20);
      
      private var _241352511button1:Button;
      
      private var _3121c4:CheckBox;
      
      private var textTeam:ArrayQueue = new ArrayQueue(20);
      
      private var textAll:ArrayQueue = new ArrayQueue(20);
      
      private var _1025879296canvasOutputBack:SimpleCanvas;
      
      private var textScene:ArrayQueue = new ArrayQueue(20);
      
      private var textOutput2:LinkTextArea;
      
      private var _3120c3:CheckBox;
      
      private var textEvent:ArrayQueue = new ArrayQueue(20);
      
      private var _channelListSetting:Object = {};
      
      private var _1300329743allTextOutput:LinkTextArea;
      
      private var _scrollFlag:Boolean = true;
      
      private var _allMessageText:String = new String();
      
      mx_internal var _watchers:Array = [];
      
      private var _channelBtnChanged:Boolean;
      
      private var _2100905622btnWorld:BasicShadowButton;
      
      private var textSystem:ArrayQueue = new ArrayQueue(20);
      
      private var _lastPosition:uint = 0;
      
      private var _241352514button4:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _chosenChannelBtn:Button;
      
      private var _1115058732headline:LinkTextArea;
      
      public var _ChatCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _698057496btnWisper:BasicShadowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _565814782btnRumour:BasicShadowButton;
      
      private var _3126c9:CheckBox;
      
      public function ChatCanvas()
      {
         _map = {
            "All":textAll,
            "World":textWorld,
            "Scene":textScene,
            "Guild":textGuild,
            "Team":textTeam,
            "Wisper":textWisper,
            "Personal":textPersonal,
            "System":textSystem,
            "Event":textEvent,
            "Rumour":textRumour
         };
         super();
         mx_internal::_document = this;
         this.width = 440;
         this.height = 240;
         this.cacheAsBitmap = true;
         this.x = 3;
         this.y = 128;
         this.addEventListener("creationComplete",___ChatCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChatCanvas._watcherSetupUtil = param1;
      }
      
      public function set canvasOutputBack(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1025879296canvasOutputBack;
         if(_loc2_ !== param1)
         {
            this._1025879296canvasOutputBack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvasOutputBack",_loc2_,param1));
         }
      }
      
      private function clearAllChannels() : void
      {
         textAll.clear();
         textWorld.clear();
         textScene.clear();
         textGuild.clear();
         textTeam.clear();
         textWisper.clear();
         textPersonal.clear();
         textSystem.clear();
         textEvent.clear();
      }
      
      public function __button1_mouseDown(param1:MouseEvent) : void
      {
         clearChannel();
      }
      
      public function set channelListSettingCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._2073259271channelListSettingCanvas;
         if(_loc2_ !== param1)
         {
            this._2073259271channelListSettingCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"channelListSettingCanvas",_loc2_,param1));
         }
      }
      
      public function onCreateChatPanel(param1:Object) : void
      {
         ChatPanelUtil.createCP(param1);
      }
      
      public function __c1_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"World");
      }
      
      public function __btnSystem_click(param1:MouseEvent) : void
      {
         switchChannel("System");
         updateChannel();
      }
      
      public function __c9_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Rumour");
      }
      
      public function __btnGuild_click(param1:MouseEvent) : void
      {
         switchChannel("Guild");
         updateChannel();
      }
      
      public function set allTextOutput(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1300329743allTextOutput;
         if(_loc2_ !== param1)
         {
            this._1300329743allTextOutput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allTextOutput",_loc2_,param1));
         }
      }
      
      public function __btnRumour_click(param1:MouseEvent) : void
      {
         switchChannel("Rumour");
         updateChannel();
      }
      
      [Bindable(event="propertyChange")]
      public function get c1() : CheckBox
      {
         return this._3118c1;
      }
      
      [Bindable(event="propertyChange")]
      public function get c2() : CheckBox
      {
         return this._3119c2;
      }
      
      public function set btnWisper(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._698057496btnWisper;
         if(_loc2_ !== param1)
         {
            this._698057496btnWisper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnWisper",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c4() : CheckBox
      {
         return this._3121c4;
      }
      
      [Bindable(event="propertyChange")]
      public function get c5() : CheckBox
      {
         return this._3122c5;
      }
      
      [Bindable(event="propertyChange")]
      public function get c7() : CheckBox
      {
         return this._3124c7;
      }
      
      [Bindable(event="propertyChange")]
      public function get c3() : CheckBox
      {
         return this._3120c3;
      }
      
      [Bindable(event="propertyChange")]
      public function get c6() : CheckBox
      {
         return this._3123c6;
      }
      
      [Bindable(event="propertyChange")]
      public function get c8() : CheckBox
      {
         return this._3125c8;
      }
      
      [Bindable(event="propertyChange")]
      public function get c9() : CheckBox
      {
         return this._3126c9;
      }
      
      public function __button4_mouseDown(param1:MouseEvent) : void
      {
         switchScroll();
      }
      
      public function __btnAll_click(param1:MouseEvent) : void
      {
         clickBtnAll();
      }
      
      public function showSystemMsg(param1:String) : void
      {
         var _loc2_:String = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[6] + Language.CHATCANVAS_S[0] + TextUtil.decode(param1) + "</font><br/>";
         textSystem.push(_loc2_);
         getInterfaceData("System") && textAll.push(_loc2_);
         updateChannel();
      }
      
      private function switchSettingVisible() : void
      {
         channelListSettingCanvas.visible = !channelListSettingCanvas.visible;
      }
      
      public function __c6_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Personal");
      }
      
      public function set c2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3119c2;
         if(_loc2_ !== param1)
         {
            this._3119c2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c2",_loc2_,param1));
         }
      }
      
      public function ___ChatCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function onWisper(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(_core.isBlack(param1.sourceName))
         {
            return;
         }
         param1.channelId = -1;
         param1.type = GamePredef.MSG_TYPE_WISPER;
         var _loc2_:String = TextUtil.decodeChatMsg(param1) + "<br>";
         textWisper.push(_loc2_);
         getInterfaceData("Wisper") && textAll.push(_loc2_);
         updateChannel();
         if(param1.targetId != -1 && param1.sourceId == _core.player.id)
         {
            _core.view.getUI(ViewManager.PANEL_IM).addConnectionAC({
               "name":param1.targetName,
               "id":param1.targetId
            });
         }
      }
      
      public function set c1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3118c1;
         if(_loc2_ !== param1)
         {
            this._3118c1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c1",_loc2_,param1));
         }
      }
      
      public function set c5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3122c5;
         if(_loc2_ !== param1)
         {
            this._3122c5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c5",_loc2_,param1));
         }
      }
      
      public function set c6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3123c6;
         if(_loc2_ !== param1)
         {
            this._3123c6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c6",_loc2_,param1));
         }
      }
      
      public function set c3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3120c3;
         if(_loc2_ !== param1)
         {
            this._3120c3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c3",_loc2_,param1));
         }
      }
      
      public function set c4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3121c4;
         if(_loc2_ !== param1)
         {
            this._3121c4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c4",_loc2_,param1));
         }
      }
      
      public function set c7(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3124c7;
         if(_loc2_ !== param1)
         {
            this._3124c7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c7",_loc2_,param1));
         }
      }
      
      public function set c8(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3125c8;
         if(_loc2_ !== param1)
         {
            this._3125c8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c8",_loc2_,param1));
         }
      }
      
      public function __btnPersonal_click(param1:MouseEvent) : void
      {
         switchChannel("Personal");
         updateChannel();
      }
      
      public function __btnWorld_click(param1:MouseEvent) : void
      {
         switchChannel("World");
         updateChannel();
      }
      
      public function set button2(param1:Button) : void
      {
         var _loc2_:Object = this._241352512button2;
         if(_loc2_ !== param1)
         {
            this._241352512button2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button2",_loc2_,param1));
         }
      }
      
      public function set button3(param1:Button) : void
      {
         var _loc2_:Object = this._241352513button3;
         if(_loc2_ !== param1)
         {
            this._241352513button3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button3",_loc2_,param1));
         }
      }
      
      public function set button4(param1:Button) : void
      {
         var _loc2_:Object = this._241352514button4;
         if(_loc2_ !== param1)
         {
            this._241352514button4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button4",_loc2_,param1));
         }
      }
      
      public function set button1(param1:Button) : void
      {
         var _loc2_:Object = this._241352511button1;
         if(_loc2_ !== param1)
         {
            this._241352511button1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnWorld() : BasicShadowButton
      {
         return this._2100905622btnWorld;
      }
      
      public function __c3_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Guild");
      }
      
      public function showRedMsg(param1:String) : void
      {
         var _loc2_:String = null;
         if(Boolean(param1) && Boolean(param1) && param1.length > 1)
         {
            _loc2_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[8] + Language.CHATCANVAS_S[2] + TextUtil.decode(param1) + "</font><br/>";
            textEvent.push(_loc2_);
            getInterfaceData("Event") && textAll.push(_loc2_);
            updateChannel();
         }
      }
      
      private function initTextField() : void
      {
         textOutput = allTextOutput;
         textOutput2 = headline;
         allTextOutput.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         allTextOutput.addEventListener(FlexEvent.VALUE_COMMIT,onValueCommit);
         headline.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         var _loc1_:Object = new Object();
         _loc1_.fontWeight = "bold";
         headline.styleSheet.setStyle("div",_loc1_);
      }
      
      public function set c9(param1:CheckBox) : void
      {
         var _loc2_:Object = this._3126c9;
         if(_loc2_ !== param1)
         {
            this._3126c9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c9",_loc2_,param1));
         }
      }
      
      private function onValueCommit(param1:Event) : void
      {
         var _loc2_:LinkTextArea = param1.target as LinkTextArea;
         if(_scrollFlag)
         {
            if(_loc2_.text == null)
            {
               return;
            }
            maxScroll(_loc2_);
         }
         else
         {
            _loc2_.verticalScrollPosition = _lastPosition;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPersonal() : BasicShadowButton
      {
         return this._2071991108btnPersonal;
      }
      
      public function __btnTeam_click(param1:MouseEvent) : void
      {
         switchChannel("Team");
         updateChannel();
      }
      
      public function showHelpMsg(param1:String) : void
      {
         var _loc2_:String = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[9] + Language.CHATCANVAS_S[3] + TextUtil.decode(param1) + "</font><br/>";
         textSystem.push(_loc2_);
         getInterfaceData("System") && textAll.push(_loc2_);
         updateChannel();
      }
      
      public function update() : void
      {
      }
      
      private function getInterfaceData(param1:String) : Boolean
      {
         return Boolean(_channelListSetting[param1]) || _channelListSetting[param1] == undefined;
      }
      
      public function __button2_mouseDown(param1:MouseEvent) : void
      {
         expandOutputArea();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTeam() : BasicShadowButton
      {
         return this._206218969btnTeam;
      }
      
      public function __c8_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Event");
      }
      
      private function _ChatCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAll.label = param1;
         },"btnAll.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAll.toolTip = param1;
         },"btnAll.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnWorld.label = param1;
         },"btnWorld.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnScene.label = param1;
         },"btnScene.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnGuild.label = param1;
         },"btnGuild.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTeam.label = param1;
         },"btnTeam.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnWisper.label = param1;
         },"btnWisper.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPersonal.label = param1;
         },"btnPersonal.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnSystem.label = param1;
         },"btnSystem.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnEvent.label = param1;
         },"btnEvent.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnRumour.label = param1;
         },"btnRumour.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button1.toolTip = param1;
         },"button1.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button2.toolTip = param1;
         },"button2.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button3.toolTip = param1;
         },"button3.toolTip");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button4.toolTip = param1;
         },"button4.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVA_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatCanvas_BasicTitleCanvas1.text = param1;
         },"_ChatCanvas_BasicTitleCanvas1.text");
         result[15] = binding;
         binding = new Binding(this,function():Function
         {
            return switchSettingVisible;
         },function(param1:Function):void
         {
            _ChatCanvas_BasicTitleCanvas1.closeFunc = param1;
         },"_ChatCanvas_BasicTitleCanvas1.closeFunc");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c1.label = param1;
         },"c1.label");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("World");
         },function(param1:Boolean):void
         {
            c1.selected = param1;
         },"c1.selected");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c2.label = param1;
         },"c2.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Scene");
         },function(param1:Boolean):void
         {
            c2.selected = param1;
         },"c2.selected");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c3.label = param1;
         },"c3.label");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Guild");
         },function(param1:Boolean):void
         {
            c3.selected = param1;
         },"c3.selected");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c4.label = param1;
         },"c4.label");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Team");
         },function(param1:Boolean):void
         {
            c4.selected = param1;
         },"c4.selected");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c5.label = param1;
         },"c5.label");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Wisper");
         },function(param1:Boolean):void
         {
            c5.selected = param1;
         },"c5.selected");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c6.label = param1;
         },"c6.label");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Personal");
         },function(param1:Boolean):void
         {
            c6.selected = param1;
         },"c6.selected");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c7.label = param1;
         },"c7.label");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("System");
         },function(param1:Boolean):void
         {
            c7.selected = param1;
         },"c7.selected");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c8.label = param1;
         },"c8.label");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Event");
         },function(param1:Boolean):void
         {
            c8.selected = param1;
         },"c8.selected");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCANVAS_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c9.label = param1;
         },"c9.label");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getInterfaceData("Rumour");
         },function(param1:Boolean):void
         {
            c9.selected = param1;
         },"c9.selected");
         result[34] = binding;
         return result;
      }
      
      public function showGMChatMsg(param1:String, param2:String, param3:Number) : void
      {
         var _loc4_:* = ChatPanelUtil.gmPanelManagerObj[param2];
         if(ChatPanelUtil.gmChatData[param2] == undefined)
         {
            ChatPanelUtil.gmChatData[param2] = "";
         }
         ChatPanelUtil.gmChatData[param2] += "<font color=\'#ff0000\'>GM " + ToolKit.getTimeStrNow() + "</font><br>" + param1 + "<br>";
         if(_loc4_ != undefined)
         {
            _loc4_.showOutput();
            ChatPanelUtil.gmPanelStatusObj[param2] = "read";
         }
         else
         {
            ChatPanelUtil.gmPanelStatusObj[param2] = "unread";
            _core.addWarn({
               "warnType":GamePredef.WARN_TYPE_CHATGM,
               "gmName":param2
            });
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGuild() : BasicShadowButton
      {
         return this._2086299383btnGuild;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvasOutputBack() : SimpleCanvas
      {
         return this._1025879296canvasOutputBack;
      }
      
      [Bindable(event="propertyChange")]
      public function get channelListSettingCanvas() : Canvas
      {
         return this._2073259271channelListSettingCanvas;
      }
      
      public function showBlueMsg(param1:String) : void
      {
         var _loc2_:String = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[7] + Language.CHATCANVAS_S[1] + TextUtil.decode(param1) + "</font><br/>";
         textPersonal.push(_loc2_);
         getInterfaceData("Personal") && textAll.push(_loc2_);
         updateChannel();
      }
      
      public function onP2pWisper(param1:String, param2:Number, param3:String, param4:Boolean = true) : void
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(_core.isBlack(param3))
         {
            return;
         }
         var _loc5_:* = ChatPanelUtil.panelManagerObj[param2];
         if(ChatPanelUtil.chatData[param2] == undefined)
         {
            ChatPanelUtil.chatData[param2] = "";
         }
         ChatPanelUtil.chatData[param2] += TextUtil.decode(param1);
         if(_loc5_ != undefined)
         {
            _loc5_.showOutput();
            ChatPanelUtil.panelStatusObj[param2] = "read";
         }
         else
         {
            ChatPanelUtil.panelStatusObj[param2] = "unread";
            _core.addWarn({
               "warnType":GamePredef.WARN_TYPE_P2PWISPER,
               "speaker":param2,
               "speakerName":param3
            });
         }
         if(param4 && Boolean(_core.view.getUI(ViewManager.PANEL_CHATCONFIG).isAutoReply()))
         {
            return;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allTextOutput() : LinkTextArea
      {
         return this._1300329743allTextOutput;
      }
      
      public function init() : void
      {
         initTextField();
         setTimeout(systemTip,10000);
         allTextOutput.field.mouseEnabled = false;
         headline.field.mouseEnabled = false;
         clearAllChannels();
         switchChannel("All");
      }
      
      [Bindable(event="propertyChange")]
      public function get btnWisper() : BasicShadowButton
      {
         return this._698057496btnWisper;
      }
      
      public function __c5_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Wisper");
      }
      
      public function set btnScene(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._2096841616btnScene;
         if(_loc2_ !== param1)
         {
            this._2096841616btnScene = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnScene",_loc2_,param1));
         }
      }
      
      private function switchScroll() : void
      {
         _scrollFlag = !_scrollFlag;
         button4.selected = !_scrollFlag;
      }
      
      private function switchChannel(param1:String) : void
      {
         var _loc2_:Button = this["btn" + param1];
         if(_chosenChannelBtn == _loc2_)
         {
            _channelBtnChanged = false;
         }
         else
         {
            if(_chosenChannelBtn)
            {
               _chosenChannelBtn.selected = false;
               _chosenChannelBtn.setStyle("color","#39c0ff");
               _chosenChannelBtn.setStyle("textRollOverColor","#39c0ff");
            }
            _loc2_.selected = true;
            _loc2_.setStyle("color","#cc7171");
            _loc2_.setStyle("textRollOverColor","#cc7171");
            _chosenChannelBtn = _loc2_;
            _channelBtnChanged = true;
         }
      }
      
      public function set btnWorld(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._2100905622btnWorld;
         if(_loc2_ !== param1)
         {
            this._2100905622btnWorld = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnWorld",_loc2_,param1));
         }
      }
      
      private function reduceOutputArea() : void
      {
         if(height > HEIGHT_MIN)
         {
            height -= HEIGHT_STEP;
         }
      }
      
      public function set btnEvent(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._2084478366btnEvent;
         if(_loc2_ !== param1)
         {
            this._2084478366btnEvent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnEvent",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get button1() : Button
      {
         return this._241352511button1;
      }
      
      [Bindable(event="propertyChange")]
      public function get button2() : Button
      {
         return this._241352512button2;
      }
      
      [Bindable(event="propertyChange")]
      public function get button3() : Button
      {
         return this._241352513button3;
      }
      
      private function _ChatCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHATCANVAS_S[11];
         _loc1_ = Language.CHATCANVAS_S[20];
         _loc1_ = Language.CHATCANVAS_S[12];
         _loc1_ = Language.CHATCANVAS_S[13];
         _loc1_ = Language.CHATCANVAS_S[14];
         _loc1_ = Language.CHATCANVAS_S[15];
         _loc1_ = Language.CHATCANVAS_S[16];
         _loc1_ = Language.CHATCANVAS_S[17];
         _loc1_ = Language.CHATCANVAS_S[18];
         _loc1_ = Language.CHATCANVAS_S[19];
         _loc1_ = Language.CHATCANVAS_S[21];
         _loc1_ = Language.CHATCANVAS_S[5];
         _loc1_ = Language.CHATCANVAS_S[6];
         _loc1_ = Language.CHATCANVAS_S[7];
         _loc1_ = Language.CHATCANVAS_S[10];
         _loc1_ = Language.AUTOBATTLECANVA_S[0];
         _loc1_ = switchSettingVisible;
         _loc1_ = Language.CHATCANVAS_S[12];
         _loc1_ = getInterfaceData("World");
         _loc1_ = Language.CHATCANVAS_S[13];
         _loc1_ = getInterfaceData("Scene");
         _loc1_ = Language.CHATCANVAS_S[14];
         _loc1_ = getInterfaceData("Guild");
         _loc1_ = Language.CHATCANVAS_S[15];
         _loc1_ = getInterfaceData("Team");
         _loc1_ = Language.CHATCANVAS_S[16];
         _loc1_ = getInterfaceData("Wisper");
         _loc1_ = Language.CHATCANVAS_S[17];
         _loc1_ = getInterfaceData("Personal");
         _loc1_ = Language.CHATCANVAS_S[18];
         _loc1_ = getInterfaceData("System");
         _loc1_ = Language.CHATCANVAS_S[19];
         _loc1_ = getInterfaceData("Event");
         _loc1_ = Language.CHATCANVAS_S[21];
         _loc1_ = getInterfaceData("Rumour");
      }
      
      public function set btnAll(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._1378839131btnAll;
         if(_loc2_ !== param1)
         {
            this._1378839131btnAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAll",_loc2_,param1));
         }
      }
      
      private function clickBtnAll() : void
      {
         if(!btnAll.selected)
         {
            switchChannel("All");
            updateChannel();
         }
         else
         {
            switchSettingVisible();
         }
      }
      
      public function reset() : void
      {
         allTextOutput.htmlText = "";
         headline.htmlText = "";
         clearChannel();
         if(systemTipTimer)
         {
            systemTipTimer.removeEventListener(TimerEvent.TIMER,systemTipHandler);
            systemTipTimer.stop();
         }
      }
      
      private function maxScroll(param1:TextArea) : void
      {
         if(param1.verticalScrollPosition > param1.maxVerticalScrollPosition - 80)
         {
            param1.verticalScrollPosition = param1.maxVerticalScrollPosition;
            _lastPosition = param1.maxVerticalScrollPosition;
         }
         else
         {
            param1.verticalScrollPosition = _lastPosition;
         }
      }
      
      public function set btnSystem(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._598321067btnSystem;
         if(_loc2_ !== param1)
         {
            this._598321067btnSystem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnSystem",_loc2_,param1));
         }
      }
      
      public function onClearSay() : void
      {
         headline.htmlText = "";
      }
      
      public function __c2_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Scene");
      }
      
      public function checkPoint(param1:int, param2:int) : Boolean
      {
         return textOutput.checkPoint(param1,param2) || textOutput2.checkPoint(param1,param2);
      }
      
      private function expandOutputArea() : void
      {
         if(height < HEIGHT_MAX)
         {
            height += HEIGHT_STEP;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get button4() : Button
      {
         return this._241352514button4;
      }
      
      public function __btnEvent_click(param1:MouseEvent) : void
      {
         switchChannel("Event");
         updateChannel();
      }
      
      public function __button3_mouseDown(param1:MouseEvent) : void
      {
         reduceOutputArea();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChatCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChatCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_ChatCanvasWatcherSetupUtil");
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
      
      public function onSay(param1:Object) : void
      {
         var _loc7_:Object = null;
         var _loc8_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:* = "";
         if(param1.cname != null)
         {
            _loc2_ = param1.cname;
         }
         else
         {
            _loc2_ = param1.name;
         }
         if(_core.isBlack(_loc2_))
         {
            return;
         }
         var _loc3_:Object = {};
         _loc3_.channelId = param1.channelId;
         _loc3_.type = GamePredef.MSG_TYPE_NORMAL;
         _loc3_.targetId = NaN;
         _loc3_.text = param1.msg;
         _loc3_.sourceName = param1.name;
         _loc3_.sourceIdType = param1.type;
         _loc3_.sourceId = param1.id;
         if(!param1.pmLevel)
         {
            param1.pmLevel = 0;
         }
         _loc3_.pmLevel = param1.pmLevel;
         switch(param1.channelId)
         {
            case GamePredef.MSG_CHANNEL_LOCAL:
               _loc7_ = _core.getGameObject(param1.type,param1.id);
               if(_loc7_.view != null && !GamePredef.GLOBAL_SETTING.hc)
               {
                  _loc7_.view.onSay(param1.msg);
               }
         }
         var _loc4_:String = "";
         if(param1.name == "系统")
         {
            _loc4_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[param1.channelId] + "\'>" + GamePredef.PM_CHAT_FLAG[param1.pmLevel] + "<a href=\'event:L_C|" + param1.channelId + "\'>[" + GamePredef.MSG_CHANNEL[param1.channelId].label + "]</a>" + "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[3] + "\'>[" + param1.name + "]</font>:" + TextUtil.decode(param1.msg) + "</font><br/>";
         }
         else
         {
            _loc4_ = TextUtil.decodeChatMsg(_loc3_) + "<br/>";
         }
         var _loc5_:* = Number(param1.channelId) || 0;
         if(_loc5_ < 4 || _loc5_ == 9)
         {
            _loc5_ == 0 && (_loc8_ = "Scene") && textScene.push(_loc4_);
            _loc5_ == 1 && (_loc8_ = "World") && textWorld.push(_loc4_);
            _loc5_ == 2 && (_loc8_ = "Guild") && textGuild.push(_loc4_);
            _loc5_ == 3 && (_loc8_ = "Team") && textTeam.push(_loc4_);
            _loc5_ == 9 && (_loc8_ = "Rumour") && textRumour.push(_loc4_);
            getInterfaceData(_loc8_) && textAll.push(_loc4_);
            updateChannel();
         }
         else if(_loc5_ == GamePredef.MSG_CHANNEL_HEADLINE)
         {
            if(GamePredef.MSG_CHANNEL[4].selected)
            {
               headline.htmlText = "<br/><br/>" + _loc4_;
            }
            _lastHeadlineTimestamp = new Date().valueOf();
         }
         var _loc6_:* = new Date().valueOf();
         if(_loc6_ - _lastHeadlineTimestamp >= 1800000)
         {
            headline.htmlText = "";
         }
      }
      
      public function set btnPersonal(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._2071991108btnPersonal;
         if(_loc2_ !== param1)
         {
            this._2071991108btnPersonal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPersonal",_loc2_,param1));
         }
      }
      
      public function __c7_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"System");
      }
      
      [Bindable(event="propertyChange")]
      public function get btnEvent() : BasicShadowButton
      {
         return this._2084478366btnEvent;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnScene() : BasicShadowButton
      {
         return this._2096841616btnScene;
      }
      
      public function onFaultChatGM(param1:String, param2:String) : void
      {
         var _loc3_:* = ChatPanelUtil.gmPanelManagerObj[param2];
         if(ChatPanelUtil.gmChatData[param2] == undefined)
         {
            ChatPanelUtil.gmChatData[param2] = "";
         }
         ChatPanelUtil.gmChatData[param2] += "<font color=\'#ff0000\'>" + Language.CHATGMPANEL_U[4] + " " + param1 + "</font><br>";
         if(_loc3_ != undefined)
         {
            _loc3_.showOutput();
            ChatPanelUtil.gmPanelStatusObj[param2] = "read";
         }
         else
         {
            ChatPanelUtil.gmPanelStatusObj[param2] = "unread";
            _core.addWarn({
               "warnType":GamePredef.WARN_TYPE_CHATGM,
               "gmName":param2
            });
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAll() : BasicShadowButton
      {
         return this._1378839131btnAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnSystem() : BasicShadowButton
      {
         return this._598321067btnSystem;
      }
      
      public function set headline(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1115058732headline;
         if(_loc2_ !== param1)
         {
            this._1115058732headline = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headline",_loc2_,param1));
         }
      }
      
      public function set btnTeam(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._206218969btnTeam;
         if(_loc2_ !== param1)
         {
            this._206218969btnTeam = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTeam",_loc2_,param1));
         }
      }
      
      public function __btnWisper_click(param1:MouseEvent) : void
      {
         switchChannel("Wisper");
         updateChannel();
      }
      
      private function systemTipHandler(param1:TimerEvent) : void
      {
         if(_core.player.level <= 10)
         {
            showHelpMsg(GamePredef.SYSTEM_TIP[1][_core.basic.rand3(0,GamePredef.SYSTEM_TIP[1].length - 1)]);
         }
         else if(_core.player.level > 10 && _core.player.level <= 30)
         {
            showHelpMsg(GamePredef.SYSTEM_TIP[2][_core.basic.rand3(0,GamePredef.SYSTEM_TIP[2].length - 1)]);
         }
         else if(_core.player.level > 30)
         {
            showHelpMsg(GamePredef.SYSTEM_TIP[3][_core.basic.rand3(0,GamePredef.SYSTEM_TIP[3].length - 1)]);
         }
         else
         {
            systemTip();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headline() : LinkTextArea
      {
         return this._1115058732headline;
      }
      
      public function initView() : void
      {
      }
      
      public function __allTextOutput_scroll(param1:ScrollEvent) : void
      {
         if(allTextOutput.verticalScrollPosition != 0)
         {
            _lastPosition = allTextOutput.verticalScrollPosition;
         }
      }
      
      public function __c4_click(param1:MouseEvent) : void
      {
         updataInterface(param1,"Team");
      }
      
      public function showGMMsg(param1:String) : void
      {
         var _loc2_:String = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[0] + "\'><a href=\'event:GM\' >[GM]:</a>" + TextUtil.decode(param1) + "</font><br/>";
         textWisper.push(_loc2_);
         getInterfaceData("Wisper") && textAll.push(_loc2_);
         updateChannel();
      }
      
      public function set btnGuild(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._2086299383btnGuild;
         if(_loc2_ !== param1)
         {
            this._2086299383btnGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGuild",_loc2_,param1));
         }
      }
      
      private function updataInterface(param1:Event, param2:String) : void
      {
         var _loc3_:Boolean = (param1.target as CheckBox).selected;
         _channelListSetting[param2] = _loc3_;
      }
      
      public function clearChannel() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in _map)
         {
            if(this["btn" + _loc1_].selected)
            {
               ArrayQueue(_map[_loc1_]).clear();
               break;
            }
         }
         allTextOutput.htmlText = "";
         headline.htmlText = "";
         textOutput.htmlText = "";
      }
      
      public function __btnScene_click(param1:MouseEvent) : void
      {
         switchChannel("Scene");
         updateChannel();
      }
      
      public function updateChannel() : void
      {
         var _loc2_:* = undefined;
         var _loc1_:ArrayQueue = textAll;
         for(_loc2_ in _map)
         {
            if(this["btn" + _loc2_].selected)
            {
               _loc1_ = _map[_loc2_] as ArrayQueue;
               break;
            }
         }
         if(_channelBtnChanged || _loc1_.dataUpdated)
         {
            allTextOutput.htmlText = _loc1_.join();
         }
      }
      
      private function systemTip() : void
      {
         if(systemTipTimer)
         {
            systemTipTimer.removeEventListener(TimerEvent.TIMER,systemTipHandler);
            systemTipTimer.stop();
         }
         if(Boolean(_core) && Boolean(_core.player) && _core.player.level <= 30)
         {
            systemTipTimer = new Timer(300000);
            systemTipTimer.addEventListener(TimerEvent.TIMER,systemTipHandler);
            systemTipTimer.start();
         }
         else if(Boolean(_core) && Boolean(_core.player) && _core.player.level > 30)
         {
            systemTipTimer = new Timer(30 * 60 * 1000);
            systemTipTimer.addEventListener(TimerEvent.TIMER,systemTipHandler);
            systemTipTimer.start();
         }
         else
         {
            setTimeout(systemTip,30000);
         }
      }
      
      public function set btnRumour(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._565814782btnRumour;
         if(_loc2_ !== param1)
         {
            this._565814782btnRumour = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnRumour",_loc2_,param1));
         }
      }
      
      public function __headline_valueCommit(param1:FlexEvent) : void
      {
         headline.verticalScrollPosition = headline.maxVerticalScrollPosition;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRumour() : BasicShadowButton
      {
         return this._565814782btnRumour;
      }
   }
}

