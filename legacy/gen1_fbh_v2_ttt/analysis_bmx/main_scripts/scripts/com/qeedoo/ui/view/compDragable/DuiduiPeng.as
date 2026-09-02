package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.DuiduipengCard;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DuiduiPeng extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      public var _DuiduiPeng_Image1:Image;
      
      private var _1910284839duiduipengMoveTimes:RoundedLabel;
      
      private var _553906331cardBox:Canvas;
      
      public var _DuiduiPeng_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var cardPointsX:Array = [16,92,168,244];
      
      private var cardPointsY:Array = [12,104,196,288];
      
      private var DUIDUI_TOTAL_TIME:int = 10;
      
      public var isFlippingOver:Boolean = false;
      
      private var inited:Boolean = false;
      
      mx_internal var _watchers:Array = [];
      
      private var panelOldCid:int = -1;
      
      private var _1324207164duiduipengScore:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _firstClickId:int = -1;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var isTimeZero:Boolean = false;
      
      public var _DuiduiPeng_IntroText1:IntroText;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":560,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_DuiduiPeng_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cardBox",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":320,
                        "height":380,
                        "x":15,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":200,
                        "height":190,
                        "x":345,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"duiduipengScore",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_DuiduiPeng_Image1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":90,
                                 "height":90,
                                 "y":33
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"duiduipengMoveTimes",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "-10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":135};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___DuiduiPeng_BasicDelayButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "68";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnAdd",
                                 "y":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"_DuiduiPeng_BasicDelayButton2",
                           "events":{"click":"___DuiduiPeng_BasicDelayButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":700,
                                 "styleName":"BtnStdGreen",
                                 "y":155
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"_DuiduiPeng_IntroText1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":200,
                        "height":180,
                        "x":345,
                        "y":237
                     };
                  }
               })]
            };
         }
      });
      
      public var _DuiduiPeng_BasicDelayButton2:BasicDelayButton;
      
      private var cardsArr:Array;
      
      public function DuiduiPeng()
      {
         super();
         mx_internal::_document = this;
         this.width = 560;
         this.height = 430;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DuiduiPeng._watcherSetupUtil = param1;
      }
      
      private function _setCards(param1:*) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         cardsArr = param1;
         for(_loc2_ in cardsArr)
         {
            _loc3_ = _loc2_ % 4;
            _loc4_ = Math.floor(_loc2_ / 4);
            _loc5_ = _loc2_;
            _loc6_ = cardBox.getChildByName(String(_loc5_));
            _loc6_ = DuiduipengCard(_loc6_);
            _loc6_.inited = false;
            _loc6_.initDuiduipengCard(_loc2_,cardsArr[_loc2_]);
         }
      }
      
      public function onCheckMatchDuiduipengGame(param1:Object) : void
      {
         if(Boolean(param1) && param1.flag == true)
         {
            if(param1.times < 1)
            {
               isTimeZero = true;
            }
         }
         if(Boolean(param1) && param1.flag == false)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[13]);
         }
         reverseCards(param1.notMatched);
         _firstClickId = -1;
      }
      
      private function buy() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyTimesDuiduipengGame",null,_core.cid);
            }
         };
         var str:String = Language.SUMMER_GAME_PANEL[73];
         var _alert:Alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set duiduipengScore(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1324207164duiduipengScore;
         if(_loc2_ !== param1)
         {
            this._1324207164duiduipengScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"duiduipengScore",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DuiduiPeng = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DuiduiPeng_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DuiduiPengWatcherSetupUtil");
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
      public function get cardBox() : Canvas
      {
         return this._553906331cardBox;
      }
      
      private function reverseCards(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(param1)
         {
            if(param1.id1 < 0 || param1.id1 > 15)
            {
               return;
            }
            _loc2_ = cardBox.getChildByName(String(param1.id1));
            if(_loc2_)
            {
               _loc2_ = DuiduipengCard(_loc2_);
            }
            else
            {
               _loc2_ = null;
            }
            _loc3_ = cardBox.getChildByName(String(param1.id2));
            if(_loc3_)
            {
               _loc3_ = DuiduipengCard(_loc3_);
            }
            else
            {
               _loc3_ = null;
            }
            _loc2_ && _loc2_.flipCard(false);
            _loc3_ && _loc3_.flipCard(false);
         }
         else
         {
            isFlippingOver = false;
         }
      }
      
      private function setCardsAvavilable(param1:Boolean) : void
      {
         var _loc4_:DuiduipengCard = null;
         var _loc2_:Array = cardBox.getChildren();
         var _loc3_:* = _loc2_.length;
         if(_loc3_ > 0)
         {
            for each(_loc4_ in _loc2_)
            {
               _loc4_.setDuiduiCardEnable(param1);
            }
         }
      }
      
      public function onbuyTimesDuiduipengGame(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            duiduipengMoveTimes.text = Language.SUMMER_GAME_PANEL[77].replace("{left}",param1.times).replace("{total}",DUIDUI_TOTAL_TIME);
            isTimeZero = false;
         }
      }
      
      public function ___DuiduiPeng_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      public function onDuiduipengGetData(param1:Object) : void
      {
         if(!param1.flag)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[7]);
            duiduipengMoveTimes.text = Language.SYSTEMSHOPPANEL_U[58];
            duiduipengScore.text = Language.SUMMER_GAME_PANEL[76] + String(param1.score);
            setCardsAvavilable(false);
            return;
         }
         duiduipengMoveTimes.text = Language.SUMMER_GAME_PANEL[77].replace("{left}",param1.times).replace("{total}",DUIDUI_TOTAL_TIME);
         duiduipengScore.text = Language.SUMMER_GAME_PANEL[76] + String(param1.score);
         if(!inited || (panelOldCid < 0 || _core.cid != panelOldCid))
         {
            _initCards(param1.data);
            inited = true;
            panelOldCid = _core.cid;
         }
         else
         {
            _setCards(param1.data);
         }
      }
      
      private function _initCards(param1:*) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:DuiduipengCard = null;
         var _loc7_:* = undefined;
         cardsArr = param1;
         for(_loc2_ in cardsArr)
         {
            _loc3_ = _loc2_ % 4;
            _loc4_ = Math.floor(_loc2_ / 4);
            _loc5_ = _loc2_;
            _loc6_ = new DuiduipengCard();
            _loc7_ = cardBox.getChildByName(String(_loc5_));
            _loc7_ = DuiduipengCard(_loc7_);
            if(_loc7_)
            {
               cardBox.removeChild(_loc7_);
               _loc7_ = null;
            }
            cardBox.addChild(_loc6_);
            _loc6_.x = cardPointsX[_loc3_];
            _loc6_.y = cardPointsY[_loc4_];
            _loc6_.name = _loc2_;
            _loc6_.initDuiduipengCard(_loc2_,cardsArr[_loc2_]);
         }
      }
      
      private function _DuiduiPeng_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DuiduiPeng_BasicTitleCanvas1.text = param1;
         },"_DuiduiPeng_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            duiduipengScore.text = param1;
         },"duiduipengScore.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001139);
         },function(param1:Object):void
         {
            _DuiduiPeng_Image1.source = param1;
         },"_DuiduiPeng_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[77];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            duiduipengMoveTimes.text = param1;
         },"duiduipengMoveTimes.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DuiduiPeng_BasicDelayButton2.label = param1;
         },"_DuiduiPeng_BasicDelayButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DuiduiPeng_IntroText1.htmlText = param1;
         },"_DuiduiPeng_IntroText1.htmlText");
         result[5] = binding;
         return result;
      }
      
      private function getAward() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getDuiduipengGameAward",null,_core.cid);
            }
         };
         var str:String = Language.SUMMER_GAME_PANEL[80];
         var _alert:Alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set cardBox(param1:Canvas) : void
      {
         var _loc2_:Object = this._553906331cardBox;
         if(_loc2_ !== param1)
         {
            this._553906331cardBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardBox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get duiduipengMoveTimes() : RoundedLabel
      {
         return this._1910284839duiduipengMoveTimes;
      }
      
      public function onGetDuiduipengGameAward(param1:Object) : void
      {
         if(Boolean(param1) && param1.score >= 0)
         {
            duiduipengScore.text = Language.SUMMER_GAME_PANEL[76] + String(param1.score);
         }
      }
      
      override public function initView() : void
      {
         _core.remote.call("getDuiduipengGameInfo",null);
         this.addEventListener("duiduipengCardClick",duiduipengCardClickHandler);
      }
      
      private function _DuiduiPeng_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SUMMER_GAME_PANEL[71];
         _loc1_ = Language.SUMMER_GAME_PANEL[76];
         _loc1_ = ResManager.getIconUrl(4130220001139);
         _loc1_ = Language.SUMMER_GAME_PANEL[77];
         _loc1_ = Language.SUMMER_GAME_PANEL[70];
         _loc1_ = Language.SUMMER_GAME_PANEL[72];
      }
      
      [Bindable(event="propertyChange")]
      public function get duiduipengScore() : RoundedLabel
      {
         return this._1324207164duiduipengScore;
      }
      
      public function set duiduipengMoveTimes(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1910284839duiduipengMoveTimes;
         if(_loc2_ !== param1)
         {
            this._1910284839duiduipengMoveTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"duiduipengMoveTimes",_loc2_,param1));
         }
      }
      
      private function duiduipengCardClickHandler(param1:GameDataEvent) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = int(param1.data);
         if(_firstClickId == _loc2_)
         {
            return;
         }
         if(_firstClickId >= 0 && _loc2_ >= 0)
         {
            _loc3_ = {};
            _loc3_.id1 = _firstClickId;
            _loc3_.id2 = _loc2_;
            _core.remote.call("checkMatchDuiduipengGame",null,_loc3_);
         }
         else
         {
            _firstClickId = _loc2_;
            isFlippingOver = false;
            _loc3_ = {};
            _loc3_.id1 = _firstClickId;
            _loc3_.id2 = -1;
            _core.remote.call("minusDuiduipengGame",null,_loc3_);
         }
      }
      
      public function ___DuiduiPeng_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      public function onMinusTimeDuiduipengGame(param1:Object) : void
      {
         if(Boolean(param1) && param1.flag == false)
         {
            duiduipengMoveTimes.text = Language.SUMMER_GAME_PANEL[77].replace("{left}",param1.times).replace("{total}",DUIDUI_TOTAL_TIME);
         }
      }
   }
}

