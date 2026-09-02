package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SudokuCard;
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
   
   public class Sudoku extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_Sudoku_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":285,
                        "height":285,
                        "x":14,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_Sudoku_Image1",
                           "stylesFactory":function():void
                           {
                              this.top = "1";
                              this.left = "1";
                              this.right = "1";
                              this.bottom = "1";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"_Sudoku_IntroText1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":285,
                        "height":155,
                        "x":14,
                        "y":330
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":380,
                        "height":445,
                        "x":302,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"sudokuMoveTimes",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "35";
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___Sudoku_BasicDelayButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.top = "34";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnAdd",
                                 "x":150
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"sudokuScore",
                           "stylesFactory":function():void
                           {
                              this.top = "35";
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":180};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"_Sudoku_BasicDelayButton2",
                           "events":{"click":"___Sudoku_BasicDelayButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.top = "32";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":700,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"cardBox",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":360,
                                 "styleName":"CanvasBorder",
                                 "mouseEnabled":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var SUDOKU_CLICK_RESTRICT_LIST:* = {
         0:{
            0:1,
            1:3
         },
         1:{
            0:0,
            1:2,
            2:4
         },
         2:{
            0:1,
            1:5
         },
         3:{
            0:0,
            1:4,
            2:6
         },
         4:{
            0:1,
            1:3,
            2:5,
            3:7
         },
         5:{
            0:2,
            1:4,
            2:8
         },
         6:{
            0:3,
            1:7
         },
         7:{
            0:4,
            1:6,
            2:8
         },
         8:{
            0:5,
            1:7
         }
      };
      
      private var _553906331cardBox:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _1328791778sudokuMoveTimes:RoundedLabel;
      
      private var inited:Boolean = false;
      
      private var SUDOKU_TOTAL_TIME:* = 30;
      
      private var cardArr:Array;
      
      private var panelOldCid:int = -1;
      
      public var _Sudoku_IntroText1:IntroText;
      
      public var _Sudoku_BasicDelayButton2:BasicDelayButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var monsterNum:int = 8;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _Sudoku_Image1:Image;
      
      private var cardPoint:Array = [10,125,240];
      
      public var _Sudoku_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1716315195sudokuScore:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      public function Sudoku()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 500;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Sudoku._watcherSetupUtil = param1;
      }
      
      private function _setCards(param1:Array, param2:int = -1) : void
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc3_:Boolean = false;
         cardArr = param1;
         var _loc4_:int = int(cardArr.length);
         var _loc5_:int = -1;
         var _loc6_:int = -1;
         if(param2 >= 0 && param2 < 9)
         {
            _loc3_ = true;
         }
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_)
         {
            _loc8_ = _loc7_ % 3;
            _loc9_ = Math.floor(_loc7_ / 3);
            _loc10_ = cardArr[_loc7_];
            if(_loc10_ == monsterNum)
            {
               _loc5_ = _loc7_;
            }
            if(_loc10_ == param2)
            {
               _loc6_ = _loc7_;
            }
            _loc11_ = cardBox.getChildByName(String(_loc10_));
            _loc11_ = SudokuCard(_loc11_);
            _loc11_.initSudokuCard(_loc7_,_loc10_);
            _loc11_.setTileEnable(false);
            _loc11_.x = cardPoint[_loc8_];
            _loc11_.y = cardPoint[_loc9_];
            if(_loc3_ && (_loc7_ == _loc6_ || _loc7_ == _loc5_))
            {
               _loc11_.visible = false;
            }
            _loc7_++;
         }
         if(param2 < 0)
         {
            _setTileEnable(_loc5_,cardArr);
         }
         else
         {
            _triggerTileMoveEffect(cardArr,_loc6_,_loc5_);
         }
      }
      
      private function moveCardEffectEndHandler(param1:Event) : void
      {
         var _loc2_:* = cardBox.getChildByName(String(monsterNum));
         _loc2_ = SudokuCard(_loc2_);
         var _loc3_:int = int(_loc2_.cardIndex);
         _setTileEnable(_loc3_,cardArr);
      }
      
      private function buy() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyTimesSudokuGame",null,_core.cid);
            }
         };
         var str:String = Language.SUMMER_GAME_PANEL[78];
         var _alert:Alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set sudokuScore(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1716315195sudokuScore;
         if(_loc2_ !== param1)
         {
            this._1716315195sudokuScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sudokuScore",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Sudoku = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Sudoku_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SudokuWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get sudokuMoveTimes() : RoundedLabel
      {
         return this._1328791778sudokuMoveTimes;
      }
      
      private function sudokuCardClickHandler(param1:GameDataEvent) : void
      {
         var _loc2_:int = int(param1.data);
         if(_loc2_ >= 0 && _loc2_ < 9)
         {
            setCardsAvavilable(false);
            _core.remote.call("moveTileSudokuGame",null,_loc2_);
         }
      }
      
      private function getAward() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getSudokuGameAward",null,_core.cid);
            }
         };
         var str:String = Language.SUMMER_GAME_PANEL[79];
         var _alert:Alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      private function setCardsAvavilable(param1:Boolean) : void
      {
         var _loc4_:SudokuCard = null;
         var _loc2_:Array = cardBox.getChildren();
         var _loc3_:* = _loc2_.length;
         if(_loc3_ > 0)
         {
            for each(_loc4_ in _loc2_)
            {
               _loc4_.clickAvailable = param1;
            }
         }
      }
      
      public function ___Sudoku_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      private function _initCards(param1:*) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = undefined;
         var _loc8_:SudokuCard = null;
         var _loc9_:* = undefined;
         cardArr = param1;
         var _loc2_:int = int(cardArr.length);
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = _loc4_ % 3;
            _loc6_ = Math.floor(_loc4_ / 3);
            _loc7_ = cardArr[_loc4_];
            if(_loc7_ == monsterNum)
            {
               _loc3_ = _loc4_;
            }
            _loc8_ = new SudokuCard();
            _loc9_ = cardBox.getChildByName(String(_loc7_));
            _loc9_ = SudokuCard(_loc9_);
            if(_loc9_)
            {
               cardBox.removeChild(_loc9_);
               _loc9_ = null;
            }
            cardBox.addChild(_loc8_);
            _loc8_.x = cardPoint[_loc5_];
            _loc8_.y = cardPoint[_loc6_];
            _loc8_.name = _loc7_;
            _loc8_.initSudokuCard(_loc4_,_loc7_);
            _loc8_.setTileEnable(false);
            _loc4_++;
         }
         _setTileEnable(_loc3_,cardArr);
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
      
      public function set sudokuMoveTimes(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1328791778sudokuMoveTimes;
         if(_loc2_ !== param1)
         {
            this._1328791778sudokuMoveTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sudokuMoveTimes",_loc2_,param1));
         }
      }
      
      public function onGetSudokuGameAward(param1:Object) : void
      {
         if(Boolean(param1) && param1.score >= 0)
         {
            sudokuScore.text = Language.SUMMER_GAME_PANEL[76] + String(param1.score);
         }
      }
      
      public function onbuyTimesSudokuGame(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            sudokuMoveTimes.text = Language.SUMMER_GAME_PANEL[74].replace("{left}",param1.times).replace("{total}",SUDOKU_TOTAL_TIME);
         }
      }
      
      public function onMoveCardSudokuGame(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(Boolean(param1) && param1.flag == true)
         {
            sudokuMoveTimes.text = Language.SUMMER_GAME_PANEL[74].replace("{left}",param1.times).replace("{total}",SUDOKU_TOTAL_TIME);
            _loc2_ = -1;
            if(param1.clickTileNum >= 0 && param1.clickTileNum < 9)
            {
               _loc2_ = int(param1.clickTileNum);
            }
            _setCards(param1.data,_loc2_);
         }
         if(Boolean(param1) && param1.flag == false)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[13]);
            sudokuMoveTimes.text = Language.SUMMER_GAME_PANEL[74].replace("{left}",0).replace("{total}",SUDOKU_TOTAL_TIME);
            _setCards(cardArr);
         }
      }
      
      private function _setTileEnable(param1:int, param2:Array) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(param1 >= 0 && param1 < 9)
         {
            _loc3_ = SUDOKU_CLICK_RESTRICT_LIST[param1];
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = param2[_loc4_];
               if(_loc5_ < 0)
               {
                  return;
               }
               _loc6_ = cardBox.getChildByName(String(_loc5_));
               _loc6_ = SudokuCard(_loc6_);
               _loc6_.setTileEnable(true);
            }
         }
      }
      
      override public function initView() : void
      {
         _core.remote.call("getSudokuGameInfo",null);
         this.addEventListener("sudokuCardClick",sudokuCardClickHandler);
      }
      
      [Bindable(event="propertyChange")]
      public function get sudokuScore() : RoundedLabel
      {
         return this._1716315195sudokuScore;
      }
      
      private function _triggerTileMoveEffect(param1:Array, param2:int, param3:int) : void
      {
         if(param1[param2] < 0 || param1[param2] > 8 || param1[param3] < 0 || param1[param3] > 8)
         {
            return;
         }
         var _loc4_:* = param1[param2];
         var _loc5_:* = cardBox.getChildByName(String(_loc4_));
         _loc5_ = SudokuCard(_loc5_);
         var _loc6_:* = cardBox.getChildByName(String(monsterNum));
         _loc6_ = SudokuCard(_loc6_);
         var _loc7_:int = int(_loc5_.x);
         var _loc8_:int = int(_loc5_.y);
         _loc5_.x = _loc6_.x;
         _loc5_.y = _loc6_.y;
         _loc6_.x = _loc7_;
         _loc6_.y = _loc8_;
         _loc5_.visible = _loc6_.visible = true;
         _loc5_.setCardImg(1);
         var _loc9_:EnterFrameMove = new EnterFrameMove();
         _loc9_.target = _loc5_;
         _loc9_.stepLength = 20;
         _loc9_.xBy = _loc6_.x - _loc5_.x;
         _loc9_.yBy = _loc6_.y - _loc5_.y;
         _loc9_.addEventListener(EnterFrameMove.EFFECT_END,moveCardEffectEndHandler);
         _loc9_.play(true);
         var _loc10_:EnterFrameMove = new EnterFrameMove();
         _loc10_.target = _loc6_;
         _loc10_.stepLength = 20;
         _loc10_.xBy = _loc5_.x - _loc6_.x;
         _loc10_.yBy = _loc5_.y - _loc6_.y;
         _loc10_.play(true);
      }
      
      public function onSudokuGetData(param1:*) : void
      {
         if(!param1.flag)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[7]);
            sudokuMoveTimes.text = Language.SUMMER_GAME_PANEL[74].replace("{left}",0).replace("{total}",SUDOKU_TOTAL_TIME);
            sudokuScore.text = Language.SUMMER_GAME_PANEL[76] + String(param1.score);
            return;
         }
         sudokuMoveTimes.text = Language.SUMMER_GAME_PANEL[74].replace("{left}",param1.times).replace("{total}",SUDOKU_TOTAL_TIME);
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
      
      public function ___Sudoku_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function _Sudoku_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[69];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Sudoku_BasicTitleCanvas1.text = param1;
         },"_Sudoku_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001129);
         },function(param1:Object):void
         {
            _Sudoku_Image1.source = param1;
         },"_Sudoku_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[75];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Sudoku_IntroText1.htmlText = param1;
         },"_Sudoku_IntroText1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sudokuMoveTimes.text = param1;
         },"sudokuMoveTimes.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sudokuScore.text = param1;
         },"sudokuScore.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Sudoku_BasicDelayButton2.label = param1;
         },"_Sudoku_BasicDelayButton2.label");
         result[5] = binding;
         return result;
      }
      
      private function _Sudoku_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SUMMER_GAME_PANEL[69];
         _loc1_ = ResManager.getIconUrl(4130220001129);
         _loc1_ = Language.SUMMER_GAME_PANEL[75];
         _loc1_ = Language.SUMMER_GAME_PANEL[74];
         _loc1_ = Language.SUMMER_GAME_PANEL[76];
         _loc1_ = Language.SUMMER_GAME_PANEL[70];
      }
   }
}

