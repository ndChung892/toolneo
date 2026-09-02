package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.utils.ArrayUtil;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicShadowButton;
   import com.qeedoo.ui.view.comp.EmotionCanvas;
   import com.qeedoo.ui.view.comp.LinkTextInput;
   import com.qeedoo.ui.view.comp.RendererChannel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.compDragable.CharactorPanel;
   import com.qeedoo.ui.view.compDragable.PetManagerPanel;
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
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.WipeDown;
   import mx.effects.WipeUp;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SystemBarCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const BRINK_DELAY:int = 500;
      
      private static const WORLD_DELAY:int = 5 * 60000;
      
      private static const RUMOUR_DELAY:int = 5 * 60000;
      
      private var _205715410btnChar:Button;
      
      private var _selectedBtn:Button;
      
      private var _1378838516btnBag:Button;
      
      private var _3240em:EmotionCanvas;
      
      private var _2092676Can4:Canvas;
      
      private var _1378839414btnAch:Button;
      
      private var _2095530982btnQuest:Button;
      
      private var _94068864btnIM:Button;
      
      private var _1058484855wipeDown:WipeDown;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _SystemBarCanvas_Button1:Button;
      
      private var _core:Core = Core.getInstance();
      
      public var _SystemBarCanvas_BasicGlowButton1:BasicGlowButton;
      
      private var _2086216067btnGroup:Button;
      
      private var _2097083733btnSkill:Button;
      
      private var _2086299383btnGuild:Button;
      
      private var _8943439mainChat:ChatCanvas;
      
      private var _450562297btnChannel:BasicShadowButton;
      
      private var isRumourFree:Boolean = true;
      
      private var _2082933021btnDaily:Button;
      
      private var filterNum:int = 0;
      
      private var _654601787inputTempArray:Array = new Array();
      
      private var _787692222wipeUp:WipeUp;
      
      private var inputIndex:Number = 0;
      
      private var brinkTimer:Timer;
      
      private var _vm:ViewManager = ViewManager.getInstance();
      
      private var _btnLabel:String = "";
      
      private var _912622042hidebtn:Button;
      
      private var _is_World_Free:Boolean = true;
      
      private var _1058056547textInput:LinkTextInput;
      
      private var _last_Time:Number = 0;
      
      private var _94069079btnPK:Button;
      
      private var _1378824925btnPet:Button;
      
      mx_internal var _watchers:Array = [];
      
      private var lastRumourTime:Number = 0;
      
      private var _2092680Can8:Canvas;
      
      private var _288475836sysBtnBar:SimpleCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _273901633channelList:List;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ChatCanvas,
                  "id":"mainChat",
                  "stylesFactory":function():void
                  {
                     this.bottom = "38";
                     this.left = "1";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":439};
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.left = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":440,
                        "height":38,
                        "styleName":"ChatBar",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SystemBarCanvas_Button1",
                           "events":{"click":"___SystemBarCanvas_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":24,
                                 "height":23,
                                 "styleName":"BtnChatUserEm",
                                 "x":408,
                                 "y":8
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkTextInput,
                           "id":"textInput",
                           "events":{
                              "valueCommit":"__textInput_valueCommit",
                              "enter":"__textInput_enter",
                              "keyDown":"__textInput_keyDown",
                              "rollOver":"__textInput_rollOver"
                           },
                           "stylesFactory":function():void
                           {
                              this.bottom = "9";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "width":296,
                                 "height":21,
                                 "maxChars":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicShadowButton,
                           "id":"btnChannel",
                           "events":{
                              "click":"__btnChannel_click",
                              "creationComplete":"__btnChannel_creationComplete"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnChatDQ",
                                 "x":8,
                                 "y":8,
                                 "width":45
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_SystemBarCanvas_BasicGlowButton1",
                           "events":{"click":"___SystemBarCanvas_BasicGlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":359,
                                 "width":45,
                                 "y":8,
                                 "styleName":"ChatButton",
                                 "height":22
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"channelList",
                  "events":{"itemClick":"__channelList_itemClick"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                     this.left = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"ListChannel",
                        "visible":false,
                        "width":51,
                        "height":105,
                        "itemRenderer":_SystemBarCanvas_ClassFactory1_c(),
                        "selectable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"sysBtnBar",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                     this.bottom = "-8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":462,
                        "height":56,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnDaily",
                           "events":{
                              "toolTipShown":"__btnDaily_toolTipShown",
                              "click":"__btnDaily_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":-46,
                                 "height":45,
                                 "width":40,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarRichang"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnAch",
                           "events":{
                              "toolTipShown":"__btnAch_toolTipShown",
                              "click":"__btnAch_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":-1,
                                 "height":45,
                                 "width":40,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarAch"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnPK",
                           "events":{
                              "toolTipShown":"__btnPK_toolTipShown",
                              "click":"__btnPK_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":45,
                                 "height":45,
                                 "width":40,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarPK"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnChar",
                           "events":{
                              "toolTipShown":"__btnChar_toolTipShown",
                              "click":"__btnChar_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":87,
                                 "width":40,
                                 "height":45,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarPlayer"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnBag",
                           "events":{
                              "toolTipShown":"__btnBag_toolTipShown",
                              "click":"__btnBag_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":132,
                                 "width":40,
                                 "height":45,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarBag"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnPet",
                           "events":{
                              "toolTipShown":"__btnPet_toolTipShown",
                              "click":"__btnPet_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":176,
                                 "width":40,
                                 "height":45,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarPet",
                                 "y":1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"Can4",
                           "events":{
                              "toolTipShown":"__Can4_toolTipShown",
                              "click":"__Can4_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":220,
                                 "y":0,
                                 "width":46,
                                 "height":51.5,
                                 "styleName":"BtnBarTeamBig",
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnGroup",
                           "events":{
                              "toolTipShown":"__btnGroup_toolTipShown",
                              "click":"__btnGroup_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":223,
                                 "y":0,
                                 "width":40,
                                 "height":44.8,
                                 "styleName":"BtnBarTeam",
                                 "buttonMode":true,
                                 "useHandCursor":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnSkill",
                           "events":{
                              "toolTipShown":"__btnSkill_toolTipShown",
                              "click":"__btnSkill_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":269,
                                 "width":40,
                                 "height":45,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarSkill"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnIM",
                           "events":{
                              "toolTipShown":"__btnIM_toolTipShown",
                              "click":"__btnIM_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":313,
                                 "width":40,
                                 "height":45,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarIm"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"Can8",
                           "events":{
                              "toolTipShown":"__Can8_toolTipShown",
                              "click":"__Can8_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":380,
                                 "y":23,
                                 "width":51,
                                 "height":59.6,
                                 "styleName":"BtnBarQuestBig",
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnQuest",
                           "events":{
                              "toolTipShown":"__btnQuest_toolTipShown",
                              "click":"__btnQuest_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":375,
                                 "y":23,
                                 "width":51,
                                 "height":59.6,
                                 "styleName":"BtnBarQuest",
                                 "buttonMode":true,
                                 "useHandCursor":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnGuild",
                           "events":{
                              "toolTipShown":"__btnGuild_toolTipShown",
                              "click":"__btnGuild_click"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":400,
                                 "width":40,
                                 "height":45,
                                 "buttonMode":true,
                                 "useHandCursor":true,
                                 "styleName":"BtnBarGuild"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"hidebtn",
                  "events":{"click":"__hidebtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "5";
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":12,
                        "height":36,
                        "styleName":"BtnHideButtons"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":EmotionCanvas,
                  "id":"em",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":244,
                        "y":-105,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      public function SystemBarCanvas()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.height = 50;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.cacheAsBitmap = false;
         _SystemBarCanvas_WipeDown1_i();
         _SystemBarCanvas_WipeUp1_i();
         this.addEventListener("creationComplete",___SystemBarCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SystemBarCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnBag() : Button
      {
         return this._1378838516btnBag;
      }
      
      public function set btnChannel(param1:BasicShadowButton) : void
      {
         var _loc2_:Object = this._450562297btnChannel;
         if(_loc2_ !== param1)
         {
            this._450562297btnChannel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnChannel",_loc2_,param1));
         }
      }
      
      public function openandhide() : void
      {
         if(sysBtnBar.visible)
         {
            _core.hidesysbar = true;
            sysBtnBar.visible = false;
            hidebtn.styleName = "BtnShowButtons";
         }
         else
         {
            _core.hidesysbar = false;
            sysBtnBar.visible = true;
            hidebtn.styleName = "BtnHideButtons";
         }
      }
      
      public function set btnBag(param1:Button) : void
      {
         var _loc2_:Object = this._1378838516btnBag;
         if(_loc2_ !== param1)
         {
            this._1378838516btnBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnBag",_loc2_,param1));
         }
      }
      
      public function __btnChar_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function __textInput_keyDown(param1:KeyboardEvent) : void
      {
         textInputKeydownHandler(param1);
      }
      
      public function __btnGuild_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_GUILD);
         stopBrink(param1);
      }
      
      public function __btnIM_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function __btnChannel_click(param1:MouseEvent) : void
      {
         channelList.visible = !channelList.visible;
      }
      
      public function selectLocalChannel() : void
      {
         btnChannel.styleName = "BtnChatDQ";
         btnChannel.label = Language.SYSTEMBARCANVAS_U[0];
         btnChannel.data = GamePredef.MSG_CHANNEL[0];
      }
      
      public function setStyleNormal() : void
      {
         Can8.visible = false;
         btnQuest.visible = true;
      }
      
      public function setTeamButtonNormal() : void
      {
         Can4.visible = false;
         btnGroup.visible = true;
      }
      
      public function __textInput_rollOver(param1:MouseEvent) : void
      {
         textInput.getFocus();
      }
      
      public function addLink(param1:String) : void
      {
         setTimeout(textInput.setFocus,5);
         textInput.htmlText += TextUtil.decode(param1);
         textInput.htmlText += "<font> </font>";
         setTimeout(textInput.setSelection,10,GamePredef.MSG_CHAT_INPUT_MAX,GamePredef.MSG_CHAT_INPUT_MAX);
      }
      
      private function setCharactorStyleName() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
         (_loc1_ as CharactorPanel).setAddStyleName();
      }
      
      private function setChannel(param1:Object) : void
      {
         switch(param1.index)
         {
            case 0:
               btnChannel.styleName = "BtnChatDQ";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[0];
               break;
            case 1:
               checkGlobal(_core.hasSpeakerNum() > 0);
               channelList.visible = false;
               return;
            case 2:
               btnChannel.styleName = "BtnChatGH";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[2];
               break;
            case 3:
               btnChannel.styleName = "BtnChatDW";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[3];
               break;
            case 9:
               checkRumour(_core.hasSpeakerNum() > 0);
               channelList.visible = false;
               return;
            case GamePredef.MSG_CHANNEL_HEADLINE:
               checkHeadline(_core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_HEADLINE_SPEAKER) > 0);
               channelList.visible = false;
               return;
         }
         btnChannel.label = btnChannel.label;
         btnChannel.data = param1;
         channelList.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get channelList() : List
      {
         return this._273901633channelList;
      }
      
      public function set btnDaily(param1:Button) : void
      {
         var _loc2_:Object = this._2082933021btnDaily;
         if(_loc2_ !== param1)
         {
            this._2082933021btnDaily = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnDaily",_loc2_,param1));
         }
      }
      
      public function set btnPet(param1:Button) : void
      {
         var _loc2_:Object = this._1378824925btnPet;
         if(_loc2_ !== param1)
         {
            this._1378824925btnPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPet",_loc2_,param1));
         }
      }
      
      public function __btnGroup_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      [Bindable(event="propertyChange")]
      private function get inputTempArray() : Array
      {
         return this._654601787inputTempArray;
      }
      
      private function sendEm(param1:GameEvent) : void
      {
         _core.player.say(param1.data,0);
      }
      
      public function __btnBag_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function selectChannel(param1:int) : void
      {
         setChannel(ArrayUtil.getElement(GamePredef.MSG_CHANNEL,"index",param1));
      }
      
      public function updateFreeTimeState() : void
      {
         var _loc1_:Number = getFreeTime();
         if(_loc1_ > WORLD_DELAY)
         {
            _is_World_Free = true;
         }
         else
         {
            _is_World_Free = false;
         }
      }
      
      private function set inputTempArray(param1:Array) : void
      {
         var _loc2_:Object = this._654601787inputTempArray;
         if(_loc2_ !== param1)
         {
            this._654601787inputTempArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputTempArray",_loc2_,param1));
         }
      }
      
      public function set channelList(param1:List) : void
      {
         var _loc2_:Object = this._273901633channelList;
         if(_loc2_ !== param1)
         {
            this._273901633channelList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"channelList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnIM() : Button
      {
         return this._94068864btnIM;
      }
      
      [Bindable(event="propertyChange")]
      public function get Can8() : Canvas
      {
         return this._2092680Can8;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAch() : Button
      {
         return this._1378839414btnAch;
      }
      
      [Bindable(event="propertyChange")]
      public function get Can4() : Canvas
      {
         return this._2092676Can4;
      }
      
      private function textInputKeydownHandler(param1:KeyboardEvent) : void
      {
         if(param1.ctrlKey && param1.keyCode == 38)
         {
            inputIndex += 1;
            if(inputIndex > inputTempArray.length - 1)
            {
               inputIndex = inputTempArray.length - 1;
            }
            textInput.htmlText = inputTempArray[inputIndex];
         }
         else if(param1.ctrlKey && param1.keyCode == 40)
         {
            inputIndex = inputIndex - 1;
            if(inputIndex < 0)
            {
               inputIndex = 0;
            }
            textInput.htmlText = inputTempArray[inputIndex];
         }
         else if(param1.keyCode == Keyboard.BACKSPACE)
         {
            if(!textInput.text || textInput.text.length <= 0)
            {
               textInput.htmlText = "";
            }
         }
      }
      
      public function set sysBtnBar(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._288475836sysBtnBar;
         if(_loc2_ !== param1)
         {
            this._288475836sysBtnBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sysBtnBar",_loc2_,param1));
         }
      }
      
      public function set wipeUp(param1:WipeUp) : void
      {
         var _loc2_:Object = this._787692222wipeUp;
         if(_loc2_ !== param1)
         {
            this._787692222wipeUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wipeUp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textInput() : LinkTextInput
      {
         return this._1058056547textInput;
      }
      
      public function __btnAch_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get em() : EmotionCanvas
      {
         return this._3240em;
      }
      
      public function __btnPet_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function setSysBtnBarState(param1:Boolean) : void
      {
         if(this.sysBtnBar)
         {
            this.sysBtnBar.visible = param1;
         }
      }
      
      public function set btnSkill(param1:Button) : void
      {
         var _loc2_:Object = this._2097083733btnSkill;
         if(_loc2_ !== param1)
         {
            this._2097083733btnSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnSkill",_loc2_,param1));
         }
      }
      
      private function stopBrink(param1:Event) : void
      {
         if(Boolean(_selectedBtn) && _selectedBtn == param1.currentTarget)
         {
            brinkTimer.stop();
            _selectedBtn.filters = [];
         }
      }
      
      public function ___SystemBarCanvas_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         send();
      }
      
      [Bindable(event="propertyChange")]
      public function get mainChat() : ChatCanvas
      {
         return this._8943439mainChat;
      }
      
      public function __btnPK_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function __btnPK_click(param1:MouseEvent) : void
      {
         selectTarget(param1,GamePredef.ACTION_PK);
      }
      
      public function set btnPK(param1:Button) : void
      {
         var _loc2_:Object = this._94069079btnPK;
         if(_loc2_ !== param1)
         {
            this._94069079btnPK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPK",_loc2_,param1));
         }
      }
      
      public function __btnQuest_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function update() : void
      {
      }
      
      private function checkGlobal(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         updateFreeTimeState();
         if(param1)
         {
            btnChannel.styleName = "BtnChatSJ";
            btnChannel.label = Language.SYSTEMBARCANVAS_U[1];
            btnChannel.data = GamePredef.MSG_CHANNEL[1];
            if(_is_World_Free)
            {
               _core.sysMidNote(Language.SYSTEMBARCANVAS_S[1]);
            }
            else
            {
               _core.sysMidNote(Language.SYSTEMBARCANVAS_S[15]);
            }
         }
         else
         {
            _loc2_ = true;
            if(_core.player.level < GamePredef.WORLD_SAY_LEVAL_FREE)
            {
               _loc3_ = Language.SYSTEMBARCANVAS_S[17].toString().replace("{level}",GamePredef.WORLD_SAY_LEVAL_FREE);
               _core.sysMidNote(_loc3_);
               _is_World_Free = false;
               _loc2_ = false;
            }
            if(_is_World_Free)
            {
               btnChannel.styleName = "BtnChatSJ";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[1];
               btnChannel.data = GamePredef.MSG_CHANNEL[1];
               _core.sysMidNote(Language.SYSTEMBARCANVAS_S[1]);
            }
            else
            {
               if(_loc2_)
               {
                  _core.sysMidNote(getFreeTimeString(1));
               }
               channelList.selectedIndex = 0;
               _loc4_ = _core.view.getUI(ViewManager.MAIN_CONSUMP);
               _loc4_.msg = Language.SYSTEMBARCANVAS_S[3];
               _loc4_.x = 200;
               _loc4_.y = 380;
               _loc4_.itemData = {
                  "id":719,
                  "type":29
               };
               _loc4_.shopNum = 1;
               _loc4_.numAble = true;
            }
         }
      }
      
      public function getFreeTime() : Number
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - _last_Time;
      }
      
      private function sendMsg() : void
      {
         var _loc2_:Object = null;
         if(btnChannel.styleName == "BtnChatSJ")
         {
            updateFreeTimeState();
            if(_core.hasSpeakerNum() < 1 && !_is_World_Free)
            {
               _core.sysMidNote(getFreeTimeString(1));
               btnChannel.styleName = "BtnChatDQ";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[0];
               btnChannel.data = GamePredef.MSG_CHANNEL[0];
               return;
            }
            _last_Time = new Date().valueOf();
         }
         else if(btnChannel.styleName == "BtnChatYY")
         {
            updateRumourFreeTimeState();
            if(_core.hasSpeakerNum() < 1 && !isRumourFree)
            {
               _core.sysMidNote(getFreeTimeString(9));
               btnChannel.styleName = "BtnChatDQ";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[0];
               btnChannel.data = GamePredef.MSG_CHANNEL[0];
               return;
            }
            lastRumourTime = new Date().valueOf();
         }
         var _loc1_:String = _core.replaceBadWord(textInput.htmlText);
         if(textInput.text != "")
         {
            _loc2_ = TextUtil.encodeChatMsg(btnChannel.data.index,_loc1_);
            _loc2_.sourceIdType = GamePredef.TBL_CHARACTOR;
            if(_loc2_.type == GamePredef.MSG_TYPE_WISPER)
            {
               _core.player.wisper(_loc2_.text,_loc2_.targetName);
               inputTempArrayPush(textInput.htmlText);
            }
            else if(_loc2_.type == GamePredef.MSG_TYPE_NORMAL)
            {
               _core.player.say(_loc2_.text,btnChannel.data.index);
               inputTempArrayPush(textInput.htmlText);
            }
         }
         callLater(clearInput);
      }
      
      public function __textInput_enter(param1:FlexEvent) : void
      {
         send();
      }
      
      private function addView() : void
      {
         _core.view.addUI(ViewManager.MAIN_CHAT,mainChat,true);
         _core.view.addUI(ViewManager.MAIN_SYS_BTN_BAR,sysBtnBar,true);
      }
      
      public function __Can4_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      private function brinkBtn(param1:TimerEvent) : void
      {
         if(_selectedBtn)
         {
            if(_selectedBtn.filters.length > 0)
            {
               _selectedBtn.filters = [];
            }
            else
            {
               _selectedBtn.filters = [GamePredef.FILTER_CHAR_SELECTED];
            }
         }
      }
      
      public function __btnDaily_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function __Can8_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_QUESTMANAGER);
         stopBrink(param1);
         setStyleNormal();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGuild() : Button
      {
         return this._2086299383btnGuild;
      }
      
      public function __btnChar_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_CHARACTOR);
         stopBrink(param1);
         setCharactorStyleName();
      }
      
      private function _SystemBarCanvas_WipeUp1_i() : WipeUp
      {
         var _loc1_:WipeUp = new WipeUp();
         wipeUp = _loc1_;
         _loc1_.duration = 300;
         return _loc1_;
      }
      
      public function set btnIM(param1:Button) : void
      {
         var _loc2_:Object = this._94068864btnIM;
         if(_loc2_ !== param1)
         {
            this._94068864btnIM = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnIM",_loc2_,param1));
         }
      }
      
      public function __hidebtn_click(param1:MouseEvent) : void
      {
         openandhide();
      }
      
      public function ___SystemBarCanvas_Button1_click(param1:MouseEvent) : void
      {
         em.changeVisible();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnChannel() : BasicShadowButton
      {
         return this._450562297btnChannel;
      }
      
      public function set Can4(param1:Canvas) : void
      {
         var _loc2_:Object = this._2092676Can4;
         if(_loc2_ !== param1)
         {
            this._2092676Can4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Can4",_loc2_,param1));
         }
      }
      
      private function checkHeadline(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            btnChannel.styleName = "BtnChatHeadline";
            btnChannel.label = Language.SYSTEMBARCANVAS_U[5];
            btnChannel.data = GamePredef.MSG_CHANNEL[4];
            _core.sysMidNote(Language.SYSTEMBARCANVAS_S[19]);
         }
         else
         {
            channelList.selectedIndex = 0;
            _loc2_ = _core.view.getUI(ViewManager.MAIN_CONSUMP);
            _loc2_.msg = Language.SYSTEMBARCANVAS_S[20];
            _loc2_.x = 200;
            _loc2_.y = 380;
            _loc2_.itemData = {
               "id":ItemConfig.ITEM_HEADLINE_SPEAKER,
               "type":GamePredef.TBL_ITEM_TEMPLATE
            };
            _loc2_.shopNum = 1;
            _loc2_.numAble = true;
         }
      }
      
      public function set btnGroup(param1:Button) : void
      {
         var _loc2_:Object = this._2086216067btnGroup;
         if(_loc2_ !== param1)
         {
            this._2086216067btnGroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGroup",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         textInput.maxChars = GamePredef.MSG_CHAT_INPUT_MAX;
         em.addEventListener(GameEvent.PLAYER_SEND_EMOTION,sendEm);
         brinkTimer = new Timer(BRINK_DELAY);
         brinkTimer.addEventListener(TimerEvent.TIMER,brinkBtn);
         addView();
      }
      
      public function set wipeDown(param1:WipeDown) : void
      {
         var _loc2_:Object = this._1058484855wipeDown;
         if(_loc2_ !== param1)
         {
            this._1058484855wipeDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wipeDown",_loc2_,param1));
         }
      }
      
      public function wisperChat(param1:String) : void
      {
         setTimeout(textInput.setFocus,5);
         textInput.text = "/w " + param1 + " ";
         setTimeout(textInput.setSelection,10,textInput.length,textInput.length);
      }
      
      public function set Can8(param1:Canvas) : void
      {
         var _loc2_:Object = this._2092680Can8;
         if(_loc2_ !== param1)
         {
            this._2092680Can8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Can8",_loc2_,param1));
         }
      }
      
      private function _SystemBarCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SYSTEMBARCANVAS_S[4];
         _loc1_ = Language.SYSTEMBARCANVAS_U[0];
         _loc1_ = Language.SYSTEMBARCANVAS_U[4];
         _loc1_ = wipeUp;
         _loc1_ = wipeDown;
         _loc1_ = GamePredef.MSG_CHANNEL;
         _loc1_ = Language.SYSTEMBARCANVAS_S[23];
         _loc1_ = Language.SYSTEMBARCANVAS_S[22];
         _loc1_ = Language.SYSTEMBARCANVAS_S[5];
         _loc1_ = Language.SYSTEMBARCANVAS_S[6];
         _loc1_ = Language.SYSTEMBARCANVAS_S[7];
         _loc1_ = Language.SYSTEMBARCANVAS_S[8];
         _loc1_ = Language.SYSTEMBARCANVAS_S[9];
         _loc1_ = Language.SYSTEMBARCANVAS_S[9];
         _loc1_ = Language.SYSTEMBARCANVAS_S[10];
         _loc1_ = Language.SYSTEMBARCANVAS_S[11];
         _loc1_ = Language.SYSTEMBARCANVAS_S[12];
         _loc1_ = Language.SYSTEMBARCANVAS_S[12];
         _loc1_ = Language.SYSTEMBARCANVAS_S[13];
      }
      
      [Bindable(event="propertyChange")]
      public function get btnDaily() : Button
      {
         return this._2082933021btnDaily;
      }
      
      private function setPetStyleName() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         (_loc1_ as PetManagerPanel).setAddStyleName();
      }
      
      public function set btnAch(param1:Button) : void
      {
         var _loc2_:Object = this._1378839414btnAch;
         if(_loc2_ !== param1)
         {
            this._1378839414btnAch = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAch",_loc2_,param1));
         }
      }
      
      public function setTaskButtonBig() : void
      {
         Can8.visible = true;
         btnQuest.visible = false;
      }
      
      public function __btnIM_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_IM);
         stopBrink(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPet() : Button
      {
         return this._1378824925btnPet;
      }
      
      private function checkBlank() : void
      {
         if(Boolean(textInput) && Boolean(textInput.text) && textInput.text.length <= 0)
         {
            textInput.htmlText = "";
         }
      }
      
      public function setInputFocus() : void
      {
         textInput.setFocus();
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
      
      private function _SystemBarCanvas_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererChannel;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sysBtnBar() : SimpleCanvas
      {
         return this._288475836sysBtnBar;
      }
      
      private function channelClickHandler(param1:ListEvent) : void
      {
         var _loc2_:Object = param1.itemRenderer.data;
         setChannel(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get wipeUp() : WipeUp
      {
         return this._787692222wipeUp;
      }
      
      public function __btnPet_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_PETMANAGER);
         stopBrink(param1);
         setPetStyleName();
      }
      
      private function _SystemBarCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemBarCanvas_Button1.toolTip = param1;
         },"_SystemBarCanvas_Button1.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnChannel.label = param1;
         },"btnChannel.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemBarCanvas_BasicGlowButton1.label = param1;
         },"_SystemBarCanvas_BasicGlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():*
         {
            return wipeUp;
         },function(param1:*):void
         {
            channelList.setStyle("showEffect",param1);
         },"channelList.showEffect");
         result[3] = binding;
         binding = new Binding(this,function():*
         {
            return wipeDown;
         },function(param1:*):void
         {
            channelList.setStyle("hideEffect",param1);
         },"channelList.hideEffect");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return GamePredef.MSG_CHANNEL;
         },function(param1:Object):void
         {
            channelList.dataProvider = param1;
         },"channelList.dataProvider");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnDaily.toolTip = param1;
         },"btnDaily.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAch.toolTip = param1;
         },"btnAch.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPK.toolTip = param1;
         },"btnPK.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnChar.toolTip = param1;
         },"btnChar.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnBag.toolTip = param1;
         },"btnBag.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPet.toolTip = param1;
         },"btnPet.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            Can4.toolTip = param1;
         },"Can4.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnGroup.toolTip = param1;
         },"btnGroup.toolTip");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnSkill.toolTip = param1;
         },"btnSkill.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnIM.toolTip = param1;
         },"btnIM.toolTip");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            Can8.toolTip = param1;
         },"Can8.toolTip");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnQuest.toolTip = param1;
         },"btnQuest.toolTip");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMBARCANVAS_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnGuild.toolTip = param1;
         },"btnGuild.toolTip");
         result[18] = binding;
         return result;
      }
      
      public function set em(param1:EmotionCanvas) : void
      {
         var _loc2_:Object = this._3240em;
         if(_loc2_ !== param1)
         {
            this._3240em = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"em",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnSkill() : Button
      {
         return this._2097083733btnSkill;
      }
      
      public function __btnGuild_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function setTeamButtonBig() : void
      {
         Can4.visible = true;
         btnGroup.visible = false;
      }
      
      public function set mainChat(param1:ChatCanvas) : void
      {
         var _loc2_:Object = this._8943439mainChat;
         if(_loc2_ !== param1)
         {
            this._8943439mainChat = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainChat",_loc2_,param1));
         }
      }
      
      public function __Can8_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function enableUI() : void
      {
         this.Can4.enabled = true;
         this.btnGroup.enabled = true;
         this.btnIM.enabled = true;
         this.btnGuild.enabled = true;
         this.btnQuest.enabled = true;
         this.btnChannel.enabled = true;
         this.btnPK.styleName = "BtnBarPK";
         this.btnPK.toolTip = Language.SYSTEMBARCANVAS_S[5];
      }
      
      private function clickGroupHandler(param1:Event) : void
      {
         _vm.changeVisible(ViewManager.PANEL_GROUP);
         stopBrink(param1);
         if(param1.currentTarget.id == "Can4")
         {
            _vm.getUI(ViewManager.PANEL_GROUP).setTab(1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPK() : Button
      {
         return this._94069079btnPK;
      }
      
      public function __btnAch_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_ACHIEVE);
         stopBrink(param1);
      }
      
      public function disableUI() : void
      {
         this.Can4.enabled = true;
         this.btnGroup.enabled = true;
         this.btnIM.enabled = false;
         this.btnGuild.enabled = false;
         setStyleNormal();
         this.btnQuest.enabled = false;
         selectChannel(0);
         this.btnChannel.enabled = false;
      }
      
      private function clearInput() : void
      {
         textInput.htmlText = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGroup() : Button
      {
         return this._2086216067btnGroup;
      }
      
      public function __btnBag_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_BAG);
         stopBrink(param1);
      }
      
      public function __textInput_valueCommit(param1:FlexEvent) : void
      {
         checkBlank();
      }
      
      private function send() : void
      {
         var handler:Function = null;
         if(null == textInput.text || textInput.text.length <= 0)
         {
            textInput.htmlText = "";
            return;
         }
         if(btnChannel.styleName == "BtnChatHeadline" && textInput.text.length >= 50)
         {
            _core.sysMidNote(Language.SYSTEMBARCANVAS_S[0]);
            return;
         }
         if(textInput.text.length >= 100)
         {
            _core.sysMidNote(Language.SYSTEMBARCANVAS_S[0]);
            return;
         }
         if(btnChannel.styleName == "BtnChatHeadline")
         {
            if(_core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_HEADLINE_SPEAKER) <= 0)
            {
               _core.sysMidNote(Language.CALLBACK_S[188]);
               return;
            }
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  sendMsg();
               }
            };
            Alert.show(Language.SYSTEMBARCANVAS_S[18],"",Alert.YES | Alert.NO,null,handler);
         }
         else
         {
            sendMsg();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wipeDown() : WipeDown
      {
         return this._1058484855wipeDown;
      }
      
      public function brink(param1:int) : void
      {
         _selectedBtn = this["btn" + param1];
         brinkTimer.start();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SystemBarCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SystemBarCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_SystemBarCanvasWatcherSetupUtil");
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
      
      private function btnTooltipShow(param1:ToolTipEvent) : void
      {
         param1.toolTip.y = GamePredef.APP_HEIGHT - 80;
      }
      
      private function checkRumour(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         updateRumourFreeTimeState();
         if(param1)
         {
            btnChannel.styleName = "BtnChatYY";
            btnChannel.label = Language.SYSTEMBARCANVAS_U[7];
            btnChannel.data = GamePredef.MSG_CHANNEL[4];
            if(isRumourFree)
            {
               _core.sysMidNote(Language.SYSTEMBARCANVAS_S[24]);
            }
            else
            {
               _core.sysMidNote(Language.SYSTEMBARCANVAS_S[26]);
            }
         }
         else
         {
            _loc2_ = false;
            if(_core.player.level < GamePredef.RUMOUR_SAY_LEVAL_FREE)
            {
               _loc3_ = Language.SYSTEMBARCANVAS_S[27].toString().replace("{level}",GamePredef.RUMOUR_SAY_LEVAL_FREE);
               _core.sysMidNote(_loc3_);
               isRumourFree = false;
               _loc2_ = true;
            }
            if(isRumourFree)
            {
               btnChannel.styleName = "BtnChatYY";
               btnChannel.label = Language.SYSTEMBARCANVAS_U[7];
               btnChannel.data = GamePredef.MSG_CHANNEL[4];
               _core.sysMidNote(Language.SYSTEMBARCANVAS_S[24]);
            }
            else
            {
               if(!_loc2_)
               {
                  _core.sysMidNote(getFreeTimeString(9));
               }
               channelList.selectedIndex = 0;
               _loc4_ = _core.view.getUI(ViewManager.MAIN_CONSUMP);
               _loc4_.msg = Language.SYSTEMBARCANVAS_S[28];
               _loc4_.x = 200;
               _loc4_.y = 380;
               _loc4_.itemData = {
                  "id":719,
                  "type":29
               };
               _loc4_.shopNum = 1;
               _loc4_.numAble = true;
               _loc4_.additionalData = {"channelIndex":9};
            }
         }
      }
      
      public function set btnChar(param1:Button) : void
      {
         var _loc2_:Object = this._205715410btnChar;
         if(_loc2_ !== param1)
         {
            this._205715410btnChar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnChar",_loc2_,param1));
         }
      }
      
      private function selectTarget(param1:Event, param2:int) : void
      {
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         if(_core.player.inGroup && !_core.player.isLeader)
         {
            if(!_core.player.groupAfk)
            {
               _core.sysMidNote(Language.NPCVIEW_S[0]);
            }
            return;
         }
         param1.stopImmediatePropagation();
         _core.view.showSelect();
         _core.view.actionState = param2;
      }
      
      public function __btnChannel_creationComplete(param1:FlexEvent) : void
      {
         btnChannel.data = new Object();
         btnChannel.data.index = 0;
      }
      
      public function __btnGroup_click(param1:MouseEvent) : void
      {
         clickGroupHandler(param1);
         stopBrink(param1);
      }
      
      public function set hidebtn(param1:Button) : void
      {
         var _loc2_:Object = this._912622042hidebtn;
         if(_loc2_ !== param1)
         {
            this._912622042hidebtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hidebtn",_loc2_,param1));
         }
      }
      
      public function __btnSkill_toolTipShown(param1:ToolTipEvent) : void
      {
         btnTooltipShow(param1);
      }
      
      public function __btnDaily_click(param1:MouseEvent) : void
      {
         _vm.show(ViewManager.DAILY_ACTIVITY);
      }
      
      public function getFreeTimeString(param1:int) : String
      {
         var _loc2_:Number = new Date().valueOf();
         var _loc3_:Number = 0;
         switch(param1)
         {
            case 1:
               _loc3_ = (WORLD_DELAY - (_loc2_ - _last_Time)) * 0.001;
               break;
            case 9:
               _loc3_ = (RUMOUR_DELAY - (_loc2_ - lastRumourTime)) * 0.001;
         }
         var _loc4_:int = int(_loc3_);
         var _loc5_:String = "";
         _loc5_ = Language.SYSTEMBARCANVAS_S[2];
         return _loc5_.replace("{delay}",_loc4_.toString());
      }
      
      public function updateRumourFreeTimeState() : void
      {
         var _loc1_:Number = new Date().valueOf();
         if(_loc1_ - lastRumourTime > RUMOUR_DELAY)
         {
            isRumourFree = true;
         }
         else
         {
            isRumourFree = false;
         }
      }
      
      public function __btnQuest_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_QUESTMANAGER);
         stopBrink(param1);
      }
      
      private function _SystemBarCanvas_WipeDown1_i() : WipeDown
      {
         var _loc1_:WipeDown = new WipeDown();
         wipeDown = _loc1_;
         _loc1_.duration = 300;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnChar() : Button
      {
         return this._205715410btnChar;
      }
      
      public function set btnQuest(param1:Button) : void
      {
         var _loc2_:Object = this._2095530982btnQuest;
         if(_loc2_ !== param1)
         {
            this._2095530982btnQuest = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnQuest",_loc2_,param1));
         }
      }
      
      public function initView() : void
      {
         channelList.dataProvider = GamePredef.MSG_CHANNEL;
      }
      
      public function __channelList_itemClick(param1:ListEvent) : void
      {
         channelClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get hidebtn() : Button
      {
         return this._912622042hidebtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnQuest() : Button
      {
         return this._2095530982btnQuest;
      }
      
      public function set btnGuild(param1:Button) : void
      {
         var _loc2_:Object = this._2086299383btnGuild;
         if(_loc2_ !== param1)
         {
            this._2086299383btnGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGuild",_loc2_,param1));
         }
      }
      
      public function ___SystemBarCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __Can4_click(param1:MouseEvent) : void
      {
         clickGroupHandler(param1);
         stopBrink(param1);
         setTeamButtonNormal();
      }
      
      private function inputTempArrayPush(param1:String) : void
      {
         if(inputTempArray.indexOf(param1) == -1)
         {
            if(inputTempArray.length < 10)
            {
               inputTempArray.push(param1);
            }
            else
            {
               inputTempArray.shift();
               inputTempArray.push(param1);
            }
            inputIndex = inputTempArray.length - 1;
         }
      }
      
      public function __btnSkill_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_SKILLMANAGER);
         stopBrink(param1);
      }
   }
}

