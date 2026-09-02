package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.CustomMenuItemRenderer;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.PetSoulCanvas;
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
   import mx.controls.LinkButton;
   import mx.controls.Menu;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetSoulProductPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PetSoulProductPanel_Label10:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _389876312label_color:Label;
      
      private var count:int = 0;
      
      private var loader:MovieClip;
      
      private var _3034453btn1:BasicGlowButton;
      
      private var _1739836639soulChip:LinkButton;
      
      private var _3034455btn3:BasicGlowButton;
      
      private var _3034457btn5:BasicGlowButton;
      
      public var firstFlag:Boolean = true;
      
      public var blackImg:Sprite;
      
      private var soulDict:Dictionary = new Dictionary();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _PetSoulProductPanel_LinkButton2:LinkButton;
      
      public var _alert:Alert;
      
      private var menu:Menu;
      
      private var soulArr:Array = new Array();
      
      private var _896512616soulBg:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var _2022083798soulExp:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _3034454btn2:BasicGlowButton;
      
      private var _3034456btn4:BasicGlowButton;
      
      private var _3034458btn6:BasicGlowButton;
      
      public var _PetSoulProductPanel_Label6:Label;
      
      public var _PetSoulProductPanel_Label7:Label;
      
      public var _PetSoulProductPanel_Label9:Label;
      
      public var _PetSoulProductPanel_Label8:Label;
      
      private var _1234425131soulCanvas:Canvas;
      
      private var _1010174295optBtn:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var maxIndex:uint = 2;
      
      private var _2082343164btnClose:Button;
      
      private var _3360ii:Canvas;
      
      private var _1887424675soulPoint:Label;
      
      public var _PetSoulProductPanel_DelayButton2:DelayButton;
      
      public var _PetSoulProductPanel_DelayButton3:DelayButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "id":"ii",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "percentWidth":100,
                     "percentHeight":100,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"soulCanvas",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":0,
                              "y":0,
                              "width":900,
                              "height":570,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"soulBg",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":0,
                                       "y":0,
                                       "percentWidth":100,
                                       "percentHeight":100
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"soulExp",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16775802;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":30,
                                       "y":12,
                                       "text":""
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":LinkButton,
                                 "id":"soulChip",
                                 "events":{"click":"__soulChip_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16775802;
                                    this.textDecoration = "underline";
                                    this.fontSize = 12;
                                    this.fontWeight = "normal";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":170,
                                       "y":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Button,
                                 "events":{"click":"___PetSoulProductPanel_Button1_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "180";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":30,
                                       "width":48,
                                       "height":48,
                                       "styleName":"BtnCardAct"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"soulPoint",
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "150";
                                    this.color = 16775802;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":30,
                                       "text":""
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":LinkButton,
                                 "id":"_PetSoulProductPanel_LinkButton2",
                                 "events":{"click":"___PetSoulProductPanel_LinkButton2_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "30";
                                    this.color = 16775802;
                                    this.textDecoration = "underline";
                                    this.fontSize = 12;
                                    this.fontWeight = "normal";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"y":12};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "stylesFactory":function():void
                                 {
                                    this.right = "95";
                                    this.bottom = "190";
                                    this.color = 16775802;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"Phân giải nhanh"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"label_color",
                                 "stylesFactory":function():void
                                 {
                                    this.right = "65";
                                    this.bottom = "190";
                                    this.color = 65280;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"Lục"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "stylesFactory":function():void
                                 {
                                    this.right = "10";
                                    this.bottom = "190";
                                    this.color = 16775802;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"trở xuống"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"optBtn",
                                 "stylesFactory":function():void
                                 {
                                    this.right = "50";
                                    this.bottom = "190";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":16,
                                       "height":18,
                                       "styleName":"soulOperationBtn"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":DelayButton,
                                 "id":"_PetSoulProductPanel_DelayButton1",
                                 "events":{"click":"___PetSoulProductPanel_DelayButton1_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "250";
                                    this.bottom = "150";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "clickDelay":3000,
                                       "width":86,
                                       "height":30,
                                       "styleName":"soulKeyBtn"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":DelayButton,
                                 "id":"_PetSoulProductPanel_DelayButton2",
                                 "events":{"click":"___PetSoulProductPanel_DelayButton2_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "140";
                                    this.bottom = "150";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "clickDelay":3000,
                                       "width":86,
                                       "height":30,
                                       "styleName":"soulKeyBtn"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":DelayButton,
                                 "id":"_PetSoulProductPanel_DelayButton3",
                                 "events":{"click":"___PetSoulProductPanel_DelayButton3_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "30";
                                    this.bottom = "150";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "clickDelay":3000,
                                       "width":86,
                                       "height":30,
                                       "styleName":"soulKeyBtn"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"btn1",
                                 "events":{"click":"__btn1_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.left = "60";
                                    this.bottom = "31";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":90,
                                       "height":90,
                                       "styleName":"soulGreenBtn"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PetSoulProductPanel_Label6",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "60";
                                    this.bottom = "15";
                                    this.color = 16777215;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"btn2",
                                 "events":{"click":"__btn2_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.left = "198";
                                    this.bottom = "31";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":90,
                                       "height":90,
                                       "styleName":"soulBlueBtn",
                                       "enabled":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PetSoulProductPanel_Label7",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "198";
                                    this.bottom = "15";
                                    this.color = 16777215;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"btn3",
                                 "events":{"click":"__btn3_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.left = "335";
                                    this.bottom = "31";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":90,
                                       "height":90,
                                       "styleName":"soulPurpleBtn",
                                       "enabled":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PetSoulProductPanel_Label8",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "335";
                                    this.bottom = "15";
                                    this.color = 16777215;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"btn4",
                                 "events":{"click":"__btn4_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.left = "471";
                                    this.bottom = "31";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":90,
                                       "height":90,
                                       "styleName":"soulOrangeBtn",
                                       "enabled":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PetSoulProductPanel_Label9",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "471";
                                    this.bottom = "15";
                                    this.color = 16777215;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"btn5",
                                 "events":{"click":"__btn5_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "205";
                                    this.bottom = "31";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":90,
                                       "height":90,
                                       "styleName":"soulRedBtn",
                                       "enabled":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PetSoulProductPanel_Label10",
                                 "stylesFactory":function():void
                                 {
                                    this.right = "205";
                                    this.bottom = "15";
                                    this.color = 16777215;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"btn6",
                                 "events":{"click":"__btn6_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.left = "550";
                                    this.bottom = "113";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"styleName":"soulKeyBtn"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "events":{"click":"___PetSoulProductPanel_BasicGlowButton8_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "30";
                                    this.bottom = "30";
                                    this.paddingLeft = 1;
                                    this.paddingRight = 1;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":78,
                                       "height":78,
                                       "styleName":"soulBackBtn"
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "id":"btnClose",
                        "events":{
                           "mouseDown":"__btnClose_mouseDown",
                           "click":"__btnClose_click"
                        },
                        "stylesFactory":function():void
                        {
                           this.right = "12";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "y":9,
                              "styleName":"BtnPanelClose"
                           };
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public var _PetSoulProductPanel_DelayButton1:DelayButton;
      
      public function PetSoulProductPanel()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.addEventListener("creationComplete",___PetSoulProductPanel_Canvas1_creationComplete);
         this.addEventListener("show",___PetSoulProductPanel_Canvas1_show);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetSoulProductPanel._watcherSetupUtil = param1;
      }
      
      public function __btn5_click(param1:MouseEvent) : void
      {
         preySoul(false,5);
      }
      
      public function set btnClose(param1:Button) : void
      {
         var _loc2_:Object = this._2082343164btnClose;
         if(_loc2_ !== param1)
         {
            this._2082343164btnClose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClose",_loc2_,param1));
         }
      }
      
      public function __soulChip_click(param1:MouseEvent) : void
      {
         goToExchangePanel();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClose() : Button
      {
         return this._2082343164btnClose;
      }
      
      private function init() : void
      {
         waitForRes();
      }
      
      public function delTempSoul(param1:int) : void
      {
         if(!soulDict[param1])
         {
            return;
         }
         if(Boolean(soulDict[param1].canvas) && Boolean(soulDict[param1].canvas.soul))
         {
            soulDict[param1].canvas.soul.unShow();
         }
         this.removeChild(soulDict[param1].canvas);
         soulArr.splice(soulArr.indexOf(soulDict[param1]),1);
         delete soulDict[param1];
         var _loc2_:int = 0;
         while(_loc2_ < soulArr.length)
         {
            if(_loc2_ < 7)
            {
               soulArr[_loc2_].canvas.y = soulCanvas.y + 55;
               soulArr[_loc2_].canvas.x = soulCanvas.x + 70 + _loc2_ * 115;
            }
            else
            {
               soulArr[_loc2_].canvas.y = soulCanvas.y + 165;
               soulArr[_loc2_].canvas.x = soulCanvas.x + 70 + (_loc2_ - 7) * 115;
            }
            _loc2_++;
         }
         count = soulArr.length;
      }
      
      [Bindable(event="propertyChange")]
      public function get ii() : Canvas
      {
         return this._3360ii;
      }
      
      private function _PetSoulProductPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_SOUL_S[42];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.PET_SOUL_S[39];
         _loc1_ = Language.PET_SOUL_S[49];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.PET_SOUL_S[16];
         _loc1_ = Language.PET_SOUL_S[15];
         _loc1_ = Language.PET_SOUL_S[17];
         _loc1_ = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[0]);
         _loc1_ = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[1]);
         _loc1_ = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[2]);
         _loc1_ = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[3]);
         _loc1_ = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[4]);
         _loc1_ = Language.PET_SOUL_S[45];
         _loc1_ = Language.PET_SOUL_S[46].replace("{num}",GamePredef.SOUL_CRSTAL_COST[5]);
      }
      
      [Bindable(event="propertyChange")]
      public function get soulExp() : Label
      {
         return this._2022083798soulExp;
      }
      
      public function ___PetSoulProductPanel_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set soulBg(param1:Image) : void
      {
         var _loc2_:Object = this._896512616soulBg;
         if(_loc2_ !== param1)
         {
            this._896512616soulBg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulBg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get soulCanvas() : Canvas
      {
         return this._1234425131soulCanvas;
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         preySoul(false,2);
      }
      
      public function set ii(param1:Canvas) : void
      {
         var _loc2_:Object = this._3360ii;
         if(_loc2_ !== param1)
         {
            this._3360ii = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ii",_loc2_,param1));
         }
      }
      
      public function __btn6_click(param1:MouseEvent) : void
      {
         preySoul(false,5,true);
      }
      
      public function ___PetSoulProductPanel_BasicGlowButton8_click(param1:MouseEvent) : void
      {
         backToSoulBagPanel();
      }
      
      private function preySoul(param1:Boolean, param2:int, param3:Boolean = false) : void
      {
         var func:Function = null;
         var key:Boolean = param1;
         var index:int = param2;
         var moneyFlag:Boolean = param3;
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         if(_core.player.soulPnt < GamePredef.SOUL_CRSTAL_COST[index - 1] && !moneyFlag)
         {
            _alert = Alert.show(Language.PET_SOUL_S[22],"",Alert.YES,null,null);
            return;
         }
         if(key)
         {
            if(Boolean(_core.player.pmLevel) && _core.player.pmLevel > 0)
            {
               _core.remote.call("preySoul",null,index,key,moneyFlag);
            }
            else
            {
               _alert = Alert.show(Language.PET_SOUL_S[44],"",Alert.YES,null,null);
            }
         }
         else if(moneyFlag)
         {
            if(count >= 14)
            {
               _alert = Alert.show(Language.PET_SOUL_S[10],"",Alert.YES,null,null);
               return;
            }
            if(Boolean(_core.player.pmLevel) && _core.player.pmLevel > 0)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("preySoul",null,index,key,moneyFlag);
                  }
               };
               _alert = Alert.show(Language.PET_SOUL_S[47],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               _alert = Alert.show(Language.PET_SOUL_S[52],"",Alert.YES,null,null);
            }
         }
         else
         {
            _core.remote.call("preySoul",null,index,key,moneyFlag);
         }
      }
      
      public function set optBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1010174295optBtn;
         if(_loc2_ !== param1)
         {
            this._1010174295optBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optBtn",_loc2_,param1));
         }
      }
      
      public function __btnClose_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : BasicGlowButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : BasicGlowButton
      {
         return this._3034455btn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5() : BasicGlowButton
      {
         return this._3034457btn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6() : BasicGlowButton
      {
         return this._3034458btn6;
      }
      
      public function set soulExp(param1:Label) : void
      {
         var _loc2_:Object = this._2022083798soulExp;
         if(_loc2_ !== param1)
         {
            this._2022083798soulExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulExp",_loc2_,param1));
         }
      }
      
      public function ___PetSoulProductPanel_DelayButton1_click(param1:MouseEvent) : void
      {
         preySoul(true,1);
      }
      
      public function reset() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 14)
         {
            delTempSoul(_loc1_);
            _loc1_++;
         }
      }
      
      public function changeBtnState(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         var _loc2_:int = 2;
         while(_loc2_ <= 5)
         {
            this["btn" + _loc2_].enabled = false;
            _loc2_++;
         }
         this["btn" + param1].enabled = true;
         _core.player.crystalSid = param1;
      }
      
      public function changeSoulPanelInfo(param1:int, param2:int) : void
      {
         soulExp.text = Language.PET_SOUL_S[11] + param1;
         soulChip.label = Language.PET_SOUL_S[12] + param2;
      }
      
      public function __btnClose_click(param1:MouseEvent) : void
      {
         this.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : BasicGlowButton
      {
         return this._3034456btn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulPoint() : Label
      {
         return this._1887424675soulPoint;
      }
      
      private function transformAllExpInPanel() : void
      {
         var _loc1_:int = 1;
         if(label_color.text == "Lam")
         {
            _loc1_ = 3;
            if(Boolean(_core.player.pmLevel) && _core.player.pmLevel >= 5)
            {
               _core.remote.call("transformExpInPanel",null,_loc1_,true);
            }
            else
            {
               Alert.show(Language.PET_SOUL_S[56],"",Alert.YES,null,null);
            }
         }
         else
         {
            if(label_color.text == "Lục")
            {
               _loc1_ = 2;
            }
            if(Boolean(_core.player.pmLevel) && _core.player.pmLevel > 0)
            {
               _core.remote.call("transformExpInPanel",null,_loc1_,true);
            }
            else
            {
               Alert.show(Language.PET_SOUL_S[44],"",Alert.YES,null,null);
            }
         }
      }
      
      public function ___PetSoulProductPanel_Canvas1_show(param1:FlexEvent) : void
      {
         onShow();
      }
      
      public function onShow() : void
      {
         var _loc1_:* = undefined;
         if(!blackImg)
         {
            blackImg = new Image();
            blackImg.x = 0;
            blackImg.y = 0;
            blackImg.width = stage.stageWidth;
            blackImg.height = stage.stageHeight;
            blackImg.graphics.clear();
            blackImg.graphics.beginFill(0);
            blackImg.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
            ii.addChild(blackImg);
            ii.setChildIndex(blackImg,0);
         }
         if(stage.stageHeight > 570)
         {
            soulCanvas.x = 75;
            soulCanvas.y = 47;
         }
         else
         {
            soulCanvas.x = 0;
            soulCanvas.y = 0;
         }
         if(_core.player.soulTempBag)
         {
            for(_loc1_ in _core.player.soulTempBag)
            {
               if(_core.player.soulTempBag[_loc1_])
               {
                  addTempSoul(_loc1_,_core.player.soulTempBag[_loc1_]);
               }
            }
         }
         soulExp.text = Language.PET_SOUL_S[11] + _core.player.soulExp;
         soulChip.label = Language.PET_SOUL_S[12] + _core.player.soulChip;
         soulPoint.text = Language.PET_SOUL_S[13] + _core.player.soulPnt;
         if(_core.player.crystalSid)
         {
            this["btn" + _core.player.crystalSid].enabled = true;
         }
         optBtn.addEventListener(MouseEvent.CLICK,showOperation);
      }
      
      public function ___PetSoulProductPanel_LinkButton2_click(param1:MouseEvent) : void
      {
         showRule();
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         preySoul(false,3);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : BasicGlowButton
      {
         return this._3034454btn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get label_color() : Label
      {
         return this._389876312label_color;
      }
      
      public function changePointInfo(param1:int) : void
      {
         soulPoint.text = Language.PET_SOUL_S[13] + param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetSoulProductPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetSoulProductPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_PetSoulProductPanelWatcherSetupUtil");
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
      
      public function ___PetSoulProductPanel_Button1_click(param1:MouseEvent) : void
      {
         showCARDGAME();
      }
      
      public function showRule() : void
      {
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         _alert = Alert.show(Language.PET_SOUL_S[48],"",Alert.YES,null,null);
      }
      
      public function ___PetSoulProductPanel_DelayButton2_click(param1:MouseEvent) : void
      {
         putToAllSoulBag();
      }
      
      [Bindable(event="propertyChange")]
      public function get soulBg() : Image
      {
         return this._896512616soulBg;
      }
      
      public function addTempSoul(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         if(soulDict[param1])
         {
            return;
         }
         if(param2 < 0)
         {
            return;
         }
         var _loc3_:PetSoulCanvas = new PetSoulCanvas();
         _loc4_ = new Object();
         _loc4_.soulId = param2;
         _loc4_.index = param1;
         _loc3_.setData(_loc4_);
         if(count < 7)
         {
            _loc3_.y = soulCanvas.y + 55;
            _loc3_.x = soulCanvas.x + 70 + count * 115;
         }
         else
         {
            _loc3_.y = soulCanvas.y + 165;
            _loc3_.x = soulCanvas.x + 70 + (count - 7) * 115;
         }
         ++count;
         _loc4_ = new Object();
         _loc4_.canvas = _loc3_;
         soulDict[param1] = _loc4_;
         soulArr.push(_loc4_);
         this.addChild(_loc3_);
      }
      
      [Bindable(event="propertyChange")]
      public function get optBtn() : BasicGlowButton
      {
         return this._1010174295optBtn;
      }
      
      public function set btn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function set btn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      public function set label_color(param1:Label) : void
      {
         var _loc2_:Object = this._389876312label_color;
         if(_loc2_ !== param1)
         {
            this._389876312label_color = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label_color",_loc2_,param1));
         }
      }
      
      public function set btn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034458btn6;
         if(_loc2_ !== param1)
         {
            this._3034458btn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6",_loc2_,param1));
         }
      }
      
      private function putToAllSoulBag() : void
      {
         if(Boolean(_core.player.pmLevel) && _core.player.pmLevel > 0)
         {
            _core.remote.call("putSoulToBag",null,-1,true);
         }
         else
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.PET_SOUL_S[44],"",Alert.YES,null,null);
         }
      }
      
      public function __btn4_click(param1:MouseEvent) : void
      {
         preySoul(false,4);
      }
      
      public function set soulCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1234425131soulCanvas;
         if(_loc2_ !== param1)
         {
            this._1234425131soulCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulCanvas",_loc2_,param1));
         }
      }
      
      public function set btn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034457btn5;
         if(_loc2_ !== param1)
         {
            this._3034457btn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5",_loc2_,param1));
         }
      }
      
      public function set soulChip(param1:LinkButton) : void
      {
         var _loc2_:Object = this._1739836639soulChip;
         if(_loc2_ !== param1)
         {
            this._1739836639soulChip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulChip",_loc2_,param1));
         }
      }
      
      private function backToSoulBagPanel() : void
      {
         this.visible = false;
         _core.view.show(ViewManager.PANEL_PET_SOUL);
      }
      
      public function set soulPoint(param1:Label) : void
      {
         var _loc2_:Object = this._1887424675soulPoint;
         if(_loc2_ !== param1)
         {
            this._1887424675soulPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulPoint",_loc2_,param1));
         }
      }
      
      private function _PetSoulProductPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulChip.toolTip = param1;
         },"soulChip.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulChip.setStyle("overSkin",param1);
         },"soulChip.overSkin");
         result[1] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulChip.setStyle("upSkin",param1);
         },"soulChip.upSkin");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulChip.setStyle("downSkin",param1);
         },"soulChip.downSkin");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulPoint.toolTip = param1;
         },"soulPoint.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_LinkButton2.label = param1;
         },"_PetSoulProductPanel_LinkButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetSoulProductPanel_LinkButton2.setStyle("overSkin",param1);
         },"_PetSoulProductPanel_LinkButton2.overSkin");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetSoulProductPanel_LinkButton2.setStyle("upSkin",param1);
         },"_PetSoulProductPanel_LinkButton2.upSkin");
         result[7] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetSoulProductPanel_LinkButton2.setStyle("downSkin",param1);
         },"_PetSoulProductPanel_LinkButton2.downSkin");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_DelayButton1.label = param1;
         },"_PetSoulProductPanel_DelayButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_DelayButton2.label = param1;
         },"_PetSoulProductPanel_DelayButton2.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_DelayButton3.label = param1;
         },"_PetSoulProductPanel_DelayButton3.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[0]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_Label6.text = param1;
         },"_PetSoulProductPanel_Label6.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[1]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_Label7.text = param1;
         },"_PetSoulProductPanel_Label7.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[2]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_Label8.text = param1;
         },"_PetSoulProductPanel_Label8.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[3]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_Label9.text = param1;
         },"_PetSoulProductPanel_Label9.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[30].replace("{num}",GamePredef.SOUL_CRSTAL_COST[4]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulProductPanel_Label10.text = param1;
         },"_PetSoulProductPanel_Label10.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6.label = param1;
         },"btn6.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[46].replace("{num}",GamePredef.SOUL_CRSTAL_COST[5]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6.toolTip = param1;
         },"btn6.toolTip");
         result[18] = binding;
         return result;
      }
      
      public function goToExchangePanel() : void
      {
         _core.view.show(ViewManager.PANEL_SOUL_EXCHANGE);
      }
      
      [Bindable(event="propertyChange")]
      public function get soulChip() : LinkButton
      {
         return this._1739836639soulChip;
      }
      
      public function ___PetSoulProductPanel_DelayButton3_click(param1:MouseEvent) : void
      {
         transformAllExpInPanel();
      }
      
      private function menuHandler(param1:MenuEvent) : void
      {
         if(param1.item.label == "Trắng")
         {
            label_color.text = param1.item.label;
            label_color.setStyle("color",16777215);
         }
         else if(param1.item.label == "Lục")
         {
            label_color.text = param1.item.label;
            label_color.setStyle("color",65280);
         }
         else if(param1.item.label == "Lam")
         {
            if(!(Boolean(_core.player.pmLevel) && _core.player.pmLevel >= 5))
            {
               Alert.show(Language.PET_SOUL_S[56],"",Alert.YES,null,null);
               return;
            }
            label_color.text = param1.item.label;
            label_color.setStyle("color",6591981);
         }
      }
      
      private function waitForRes() : void
      {
         soulBg.source = ResManager.hash(GamePredef.PET_SOUL_BG);
      }
      
      public function showOperation(param1:MouseEvent) : void
      {
         var _loc2_:Array = [{
            "label":"Trắng",
            "textColor":"0xFFFFFF"
         },{
            "label":"Lục",
            "textColor":"0x00FF00"
         },{
            "label":"Lam",
            "textColor":"0x6495ED"
         }];
         menu = Menu.createMenu(this,_loc2_,false);
         menu.width = 60;
         menu.rowHeight = 20;
         menu.addEventListener(MenuEvent.ITEM_CLICK,menuHandler);
         menu.itemRenderer = new ClassFactory(CustomMenuItemRenderer);
         menu.show(param1.stageX,param1.stageY);
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         preySoul(false,1);
      }
      
      public function showCARDGAME() : void
      {
         this.visible = false;
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CARDGAME);
         if(_loc1_)
         {
            _loc1_.initPanel();
         }
      }
   }
}

