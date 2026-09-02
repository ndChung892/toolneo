package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.MonopolyPlayerView;
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
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SummerGames extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var positions:Array = [[65,185,3],[110,160,3],[155,135,3],[200,110,3],[245,85,3],[290,60,1],[335,85,1],[380,110,1],[425,135,1],[470,160,7],[425,185,7],[380,210,7],[335,235,7],[290,260,7],[245,285,5],[200,260,5],[155,235,5],[110,210,5]];
      
      mx_internal var _bindings:Array = [];
      
      private var step_num:int = 0;
      
      private var shaiziArr:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      public var _SummerGames_Image1:Image;
      
      public var _SummerGames_Label2:Label;
      
      private var _3034519btns:Canvas;
      
      private var _985752863player:MonopolyPlayerView;
      
      private var _2116189043itemNum:int = 0;
      
      private var _1927556941summerScoreTxt:Label;
      
      public var _SummerGames_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _132684933rankAwardOpen:Boolean = false;
      
      private var moving:Boolean = false;
      
      private var recordArr:Array = [];
      
      public var _SummerGames_BasicGlowButton2:BasicGlowButton;
      
      public var _SummerGames_BasicGlowButton3:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SummerGames_BasicGlowButton1:BasicGlowButton;
      
      private var _1819703622shaiziNum:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var load:Loader;
      
      private var _3343801main:Canvas;
      
      private var _993538143recordTxt:TextArea;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SummerGames_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "y":38,
                        "width":680,
                        "height":448,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"main",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":3,
                                 "width":530,
                                 "height":320,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SummerGames_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"shaiziNum",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":480,
                                          "y":265,
                                          "width":45,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MonopolyPlayerView,
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
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":538,
                                 "y":3,
                                 "width":130,
                                 "height":320,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SummerGames_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "10";
                                       this.textAlign = "center";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"summerScoreTxt",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "22";
                                       this.textAlign = "center";
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.strokeColor = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":40,
                                          "width":106,
                                          "height":1
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"recordTxt",
                                    "stylesFactory":function():void
                                    {
                                       this.leading = 0;
                                       this.fontSize = 12;
                                       this.borderThickness = 0;
                                       this.backgroundAlpha = 0;
                                       this.color = 65535;
                                       this.left = "5";
                                       this.right = "5";
                                       this.top = "45";
                                       this.bottom = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "wordWrap":true,
                                          "selectable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"btns",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":325,
                                 "width":660,
                                 "height":118,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_SummerGames_BasicGlowButton1",
                                    "events":{"click":"___SummerGames_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":300,
                                          "y":12,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_SummerGames_BasicGlowButton2",
                                    "events":{"click":"___SummerGames_BasicGlowButton2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":430,
                                          "y":12,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_SummerGames_BasicGlowButton3",
                                    "events":{"click":"___SummerGames_BasicGlowButton3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":560,
                                          "y":12,
                                          "styleName":"BtnStdRed"
                                       };
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
      
      private var load_state:int = 0;
      
      private var _core:Core = Core.getInstance();
      
      public function SummerGames()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___SummerGames_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SummerGames._watcherSetupUtil = param1;
      }
      
      public function ___SummerGames_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         getHorseRankAward();
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
      
      public function getWastelandRankAward() : void
      {
         _core.remote.call("wastelandGetRankAward",null);
      }
      
      private function gameHorseRace(param1:MouseEvent) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_HORSE_RACE);
         if(_loc2_)
         {
            _loc2_.showPanel();
         }
      }
      
      private function shaiziComplete(param1:Event) : void
      {
         player.startMove(step_num);
      }
      
      public function showPanel() : void
      {
         if(Number(_core.lineInfo.id) != 2)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[14]);
            return;
         }
         initView();
         visible = true;
      }
      
      private function set itemNum(param1:int) : void
      {
         var _loc2_:Object = this._2116189043itemNum;
         if(_loc2_ !== param1)
         {
            this._2116189043itemNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankAwardOpen() : Boolean
      {
         return this._132684933rankAwardOpen;
      }
      
      private function refreshRecord() : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         recordTxt.htmlText = "";
         if(!recordArr || recordArr.length == 0)
         {
            return;
         }
         recordArr.reverse();
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < recordArr.length)
         {
            _loc3_ = recordArr[_loc2_];
            _loc4_ = int(_loc3_["type"]);
            _loc5_ = int(_loc3_["data"]);
            if(_loc4_ == 1)
            {
               _loc1_ += Language.SUMMER_GAME_PANEL[33] + _loc5_ + Language.SUMMER_GAME_PANEL[34] + "\r\n";
            }
            else if(_loc4_ == 2)
            {
               _loc6_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc5_];
               _loc7_ = int(_loc3_["num"]);
               _loc8_ = int(_loc3_["q"]);
               _loc8_ = Math.ceil(_loc8_ / 5);
               if(_loc6_.color >= 0)
               {
                  _loc8_ = _loc6_.color * 5;
               }
               _loc9_ = GamePredef.MSG_ITEM_COLOR[_loc8_];
               if(_loc6_.kind == GamePredef.ITEM_KIND_MATERIAL)
               {
                  _loc1_ += Language.SUMMER_GAME_PANEL[37] + "<font color=\'" + _loc9_ + "\'>" + _loc6_.name + "[" + GamePredef.POSTFIX_MATERIAL_NAME[_loc8_] + "]" + "</font>" + "*" + _loc7_ + "\r\n";
               }
               else
               {
                  _loc1_ += Language.SUMMER_GAME_PANEL[37] + "<font color=\'" + _loc9_ + "\'>" + _loc6_.name + "</font>" + "*" + _loc7_ + "\r\n";
               }
            }
            else if(_loc4_ == 3)
            {
               _loc1_ += Language.SUMMER_GAME_PANEL[35] + _loc5_ + Language.SUMMER_GAME_PANEL[36] + "\r\n";
            }
            else if(_loc4_ == 4)
            {
            }
            _loc2_++;
         }
         recordTxt.htmlText = _loc1_;
      }
      
      private function init() : void
      {
         player.addEventListener("move_end",playerMpveEnd);
      }
      
      private function gameThreeDiabetes(param1:MouseEvent) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_DIABETES);
         if(_loc2_)
         {
            _loc2_.showPanel();
         }
      }
      
      public function onItemNum(param1:Object) : void
      {
         if(!param1 || !initialized)
         {
            return;
         }
         itemNum = param1["itemNum"];
         var _loc2_:Boolean = Boolean(param1["close"]);
         if(_loc2_)
         {
            visible = false;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SummerGames = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SummerGames_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SummerGamesWatcherSetupUtil");
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
      
      public function getDiabetesRankAward() : void
      {
         _core.remote.call("diabetesGetRankAward",null);
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
      
      public function set summerScoreTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1927556941summerScoreTxt;
         if(_loc2_ !== param1)
         {
            this._1927556941summerScoreTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"summerScoreTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btns() : Canvas
      {
         return this._3034519btns;
      }
      
      public function set shaiziNum(param1:Label) : void
      {
         var _loc2_:Object = this._1819703622shaiziNum;
         if(_loc2_ !== param1)
         {
            this._1819703622shaiziNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shaiziNum",_loc2_,param1));
         }
      }
      
      public function onRecordRefresh(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         recordArr = param1 as Array;
         refreshRecord();
      }
      
      private function onGo(param1:Object) : void
      {
         if(!param1)
         {
            moving = false;
            return;
         }
         if(!param1["flag"])
         {
            visible = false;
            return;
         }
         step_num = param1["num"];
         itemNum = int(param1["itemNum"]);
         trace(" 移动至 :" + step_num);
         shaiziE(step_num);
      }
      
      public function ___SummerGames_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set btns(param1:Canvas) : void
      {
         var _loc2_:Object = this._3034519btns;
         if(_loc2_ !== param1)
         {
            this._3034519btns = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btns",_loc2_,param1));
         }
      }
      
      private function getMonopolyRes() : void
      {
         if(load_state != 0)
         {
            _core.remote.call("summerGameMonopoly",null);
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
      
      public function set recordTxt(param1:TextArea) : void
      {
         var _loc2_:Object = this._993538143recordTxt;
         if(_loc2_ !== param1)
         {
            this._993538143recordTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recordTxt",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc2_:UIComponent = new UIComponent();
         var _loc3_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("game1") as Class;
         var _loc4_:MovieClip = new _loc3_();
         _loc2_ = new UIComponent();
         _loc2_.addChild(_loc4_);
         _loc4_.addEventListener(MouseEvent.CLICK,gameHorseRace);
         _loc2_.x = 270;
         _loc2_.y = 3;
         btns.addChildAt(_loc2_,0);
         var _loc5_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("game2") as Class;
         var _loc6_:MovieClip = new _loc5_();
         _loc2_ = new UIComponent();
         _loc2_.addChild(_loc6_);
         _loc6_.addEventListener(MouseEvent.CLICK,gameWasteland);
         _loc2_.x = 400;
         _loc2_.y = 3;
         btns.addChildAt(_loc2_,0);
         var _loc7_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("game3") as Class;
         var _loc8_:MovieClip = new _loc7_();
         _loc2_ = new UIComponent();
         _loc2_.addChild(_loc8_);
         _loc8_.addEventListener(MouseEvent.CLICK,gameThreeDiabetes);
         _loc2_.x = 530;
         _loc2_.y = 3;
         btns.addChildAt(_loc2_,0);
         var _loc9_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("info") as Class;
         var _loc10_:MovieClip = new _loc9_();
         _loc2_ = new UIComponent();
         _loc2_.addChild(_loc10_);
         _loc2_.x = 25;
         _loc2_.y = 35;
         btns.addChild(_loc2_);
         var _loc11_:int = 0;
         while(_loc11_ < 6)
         {
            _loc12_ = load.contentLoaderInfo.applicationDomain.getDefinition("shaizi" + (_loc11_ + 1)) as Class;
            _loc13_ = new _loc12_();
            _loc2_ = new UIComponent();
            _loc2_.x = 22;
            _loc2_.y = -111;
            _loc13_.visible = _loc11_ == 0;
            _loc13_.gotoAndStop(_loc13_.totalFrames);
            _loc13_.addEventListener("complete",shaiziComplete);
            _loc2_.addEventListener(MouseEvent.CLICK,go);
            shaiziArr.push(_loc13_);
            _loc2_.addChild(_loc13_);
            main.addChildAt(_loc2_,1);
            _loc11_++;
         }
         load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         init();
         _core.remote.call("summerGameMonopoly",null);
      }
      
      public function onGetData(param1:Object) : void
      {
         if(!param1 || !param1.flag)
         {
            rankAwardOpen = param1["rankAwardOpen"];
            return;
         }
         trace(" start :" + param1["data"]["index"]);
         rankAwardOpen = param1["rankAwardOpen"];
         player.refresh(param1["data"]["index"]);
         recordArr = param1["data"]["record"];
         itemNum = int(param1["itemNum"]);
         refreshRecord();
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" summerGames load res Error ");
      }
      
      private function playerMpveEnd(param1:Event) : void
      {
         moving = false;
      }
      
      public function ___SummerGames_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         getWastelandRankAward();
      }
      
      private function gameWasteland(param1:MouseEvent) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_WASTELAND);
         if(_loc2_)
         {
            _loc2_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get summerScoreTxt() : Label
      {
         return this._1927556941summerScoreTxt;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         getMonopolyRes();
      }
      
      public function boxAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:int = int(param1["score"]);
         var _loc3_:Boolean = Boolean(param1["isStart"]);
         var _loc4_:int = int(param1["item"]);
         var _loc5_:int = int(param1["go"]);
         if(_loc5_ > 0)
         {
            trace(" 继续前进 :" + _loc5_);
            player.startMove(_loc5_);
         }
         recordArr = param1["record"];
         refreshRecord();
      }
      
      private function _SummerGames_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SummerGames_BasicTitleCanvas1.text = param1;
         },"_SummerGames_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000477);
         },function(param1:Object):void
         {
            _SummerGames_Image1.source = param1;
         },"_SummerGames_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = itemNum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            shaiziNum.text = param1;
         },"shaiziNum.text");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            shaiziNum.filters = param1;
         },"shaiziNum.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SummerGames_Label2.text = param1;
         },"_SummerGames_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _SummerGames_Label2.filters = param1;
         },"_SummerGames_Label2.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.summerGameScore2015;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            summerScoreTxt.text = param1;
         },"summerScoreTxt.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            summerScoreTxt.filters = param1;
         },"summerScoreTxt.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            recordTxt.filters = param1;
         },"recordTxt.filters");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rankAwardOpen;
         },function(param1:Boolean):void
         {
            _SummerGames_BasicGlowButton1.visible = param1;
         },"_SummerGames_BasicGlowButton1.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SummerGames_BasicGlowButton1.label = param1;
         },"_SummerGames_BasicGlowButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rankAwardOpen;
         },function(param1:Boolean):void
         {
            _SummerGames_BasicGlowButton2.visible = param1;
         },"_SummerGames_BasicGlowButton2.visible");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SummerGames_BasicGlowButton2.label = param1;
         },"_SummerGames_BasicGlowButton2.label");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rankAwardOpen;
         },function(param1:Boolean):void
         {
            _SummerGames_BasicGlowButton3.visible = param1;
         },"_SummerGames_BasicGlowButton3.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SummerGames_BasicGlowButton3.label = param1;
         },"_SummerGames_BasicGlowButton3.label");
         result[14] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get shaiziNum() : Label
      {
         return this._1819703622shaiziNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get player() : MonopolyPlayerView
      {
         return this._985752863player;
      }
      
      public function getHorseRankAward() : void
      {
         _core.remote.call("horseRaceGetRankAward",null);
      }
      
      public function set player(param1:MonopolyPlayerView) : void
      {
         var _loc2_:Object = this._985752863player;
         if(_loc2_ !== param1)
         {
            this._985752863player = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"player",_loc2_,param1));
         }
      }
      
      private function _SummerGames_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SUMMER_GAME_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220000477);
         _loc1_ = itemNum;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.SUMMER_GAME_PANEL[32];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = _core.player.summerGameScore2015;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = rankAwardOpen;
         _loc1_ = Language.SUMMER_GAME_PANEL[68];
         _loc1_ = rankAwardOpen;
         _loc1_ = Language.SUMMER_GAME_PANEL[68];
         _loc1_ = rankAwardOpen;
         _loc1_ = Language.SUMMER_GAME_PANEL[68];
      }
      
      private function go(param1:MouseEvent) : void
      {
         if(!(param1.target is SimpleButton))
         {
            return;
         }
         if(moving)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[67]);
            return;
         }
         moving = true;
         _core.remote.call("monopolyGo",new Responder(onGo));
      }
      
      [Bindable(event="propertyChange")]
      private function get itemNum() : int
      {
         return this._2116189043itemNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get recordTxt() : TextArea
      {
         return this._993538143recordTxt;
      }
      
      public function ___SummerGames_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         getDiabetesRankAward();
      }
      
      public function set rankAwardOpen(param1:Boolean) : void
      {
         var _loc2_:Object = this._132684933rankAwardOpen;
         if(_loc2_ !== param1)
         {
            this._132684933rankAwardOpen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankAwardOpen",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get main() : Canvas
      {
         return this._3343801main;
      }
   }
}

