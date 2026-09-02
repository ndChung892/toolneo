package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DogFightCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _206155944btnRank:BasicGlowButton;
      
      private var nextRoundLast:uint = 0;
      
      private var _1569466002scorePanel:VBox;
      
      mx_internal var _watchers:Array = [];
      
      public var _DogFightCanvas_RemoveChild1:RemoveChild;
      
      public var _DogFightCanvas_RemoveChild2:RemoveChild;
      
      public var _DogFightCanvas_RemoveChild3:RemoveChild;
      
      public var _DogFightCanvas_RemoveChild4:RemoveChild;
      
      public var _DogFightCanvas_RemoveChild5:RemoveChild;
      
      public var _DogFightCanvas_RemoveChild6:RemoveChild;
      
      private var _750681980blueScoreLabel:Label;
      
      private var _1021996787redScoreLabel:Label;
      
      private var timer:Timer = new Timer(1000);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1565760386scoreLabel:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":180,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"scorePanel",
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnRank",
                        "events":{"click":"__btnRank_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"BtnStdRed",
                              "width":60,
                              "height":20
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"timeLabel",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                           this.fontWeight = "bold";
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"redScoreLabel",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                           this.fontWeight = "bold";
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"blueScoreLabel",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                           this.fontWeight = "bold";
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"scoreLabel",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                           this.fontWeight = "bold";
                        }
                     })]};
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      private var _18543655timeLabel:Label;
      
      public function DogFightCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 180;
         this.height = 100;
         this.states = [_DogFightCanvas_State1_c(),_DogFightCanvas_State2_c(),_DogFightCanvas_State3_c()];
         this.addEventListener("creationComplete",___DogFightCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DogFightCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get scoreLabel() : Label
      {
         return this._1565760386scoreLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get blueScoreLabel() : Label
      {
         return this._750681980blueScoreLabel;
      }
      
      public function set scoreLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1565760386scoreLabel;
         if(_loc2_ !== param1)
         {
            this._1565760386scoreLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scoreLabel",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DogFightCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DogFightCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_DogFightCanvasWatcherSetupUtil");
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
      public function get scorePanel() : VBox
      {
         return this._1569466002scorePanel;
      }
      
      private function _DogFightCanvas_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _DogFightCanvas_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_DogFightCanvas_RemoveChild2",_DogFightCanvas_RemoveChild2);
         return _loc1_;
      }
      
      public function setSocreVisible(param1:Boolean) : void
      {
         if(param1 && _core.player.state != GamePredef.ST_BATTLE || !param1)
         {
            this.visible = param1;
         }
      }
      
      public function resetRank() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CROSS_BATTLE_RANK);
         if(_loc1_)
         {
            _loc1_.resetRank();
         }
      }
      
      private function _DogFightCanvas_RemoveChild6_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _DogFightCanvas_RemoveChild6 = _loc1_;
         BindingManager.executeBindings(this,"_DogFightCanvas_RemoveChild6",_DogFightCanvas_RemoveChild6);
         return _loc1_;
      }
      
      public function setNextRroundTime(param1:Number) : void
      {
         if(Math.floor(param1 / 1000) <= 1)
         {
            timeLabel.text = Language.DOG_FIGHT_U[0].replace("{time}",0);
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
            return;
         }
         nextRoundLast = Math.floor(param1 / 1000) - 1;
         var _loc2_:String = Language.DOG_FIGHT_U[0];
         if(this.currentState == "dongXuanDefence")
         {
            _loc2_ = Language.DOG_FIGHT_U[6];
         }
         timeLabel.text = _loc2_.replace("{time}",nextRoundLast);
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
      }
      
      private function init() : void
      {
         currentState = "dogFight";
      }
      
      private function _DogFightCanvas_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _DogFightCanvas_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_DogFightCanvas_RemoveChild4",_DogFightCanvas_RemoveChild4);
         return _loc1_;
      }
      
      public function set scorePanel(param1:VBox) : void
      {
         var _loc2_:Object = this._1569466002scorePanel;
         if(_loc2_ !== param1)
         {
            this._1569466002scorePanel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scorePanel",_loc2_,param1));
         }
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         if(nextRoundLast <= 0)
         {
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
            timer.stop();
         }
         else
         {
            updateTime(--nextRoundLast);
         }
      }
      
      private function _DogFightCanvas_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "dogFight";
         _loc1_.overrides = [_DogFightCanvas_RemoveChild1_i(),_DogFightCanvas_RemoveChild2_i(),_DogFightCanvas_RemoveChild3_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRank() : BasicGlowButton
      {
         return this._206155944btnRank;
      }
      
      private function _DogFightCanvas_State3_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "dongXuanDefence";
         _loc1_.overrides = [_DogFightCanvas_RemoveChild6_i()];
         return _loc1_;
      }
      
      public function updateTime(param1:int) : void
      {
         var _loc2_:String = Language.DOG_FIGHT_U[0];
         if(this.currentState == "dongXuanDefence")
         {
            _loc2_ = Language.DOG_FIGHT_U[6];
         }
         timeLabel.text = _loc2_.replace("{time}",param1);
      }
      
      public function ___DogFightCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _DogFightCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return btnRank;
         },function(param1:DisplayObject):void
         {
            _DogFightCanvas_RemoveChild1.target = param1;
         },"_DogFightCanvas_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return redScoreLabel;
         },function(param1:DisplayObject):void
         {
            _DogFightCanvas_RemoveChild2.target = param1;
         },"_DogFightCanvas_RemoveChild2.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return blueScoreLabel;
         },function(param1:DisplayObject):void
         {
            _DogFightCanvas_RemoveChild3.target = param1;
         },"_DogFightCanvas_RemoveChild3.target");
         result[2] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return redScoreLabel;
         },function(param1:DisplayObject):void
         {
            _DogFightCanvas_RemoveChild4.target = param1;
         },"_DogFightCanvas_RemoveChild4.target");
         result[3] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return blueScoreLabel;
         },function(param1:DisplayObject):void
         {
            _DogFightCanvas_RemoveChild5.target = param1;
         },"_DogFightCanvas_RemoveChild5.target");
         result[4] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnRank;
         },function(param1:DisplayObject):void
         {
            _DogFightCanvas_RemoveChild6.target = param1;
         },"_DogFightCanvas_RemoveChild6.target");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOG_FIGHT_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnRank.label = param1;
         },"btnRank.label");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            timeLabel.filters = param1;
         },"timeLabel.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            redScoreLabel.filters = param1;
         },"redScoreLabel.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            blueScoreLabel.filters = param1;
         },"blueScoreLabel.filters");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            scoreLabel.filters = param1;
         },"scoreLabel.filters");
         result[10] = binding;
         return result;
      }
      
      public function checkAndSetVisible() : void
      {
         if(currentState == "crossBattleDF" && !_core.battleServer.inBattleServer)
         {
            trace("检查自身是否应该可见");
            this.visible = false;
         }
      }
      
      public function showRank() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CROSS_BATTLE_RANK);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      public function set timeLabel(param1:Label) : void
      {
         var _loc2_:Object = this._18543655timeLabel;
         if(_loc2_ !== param1)
         {
            this._18543655timeLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLabel",_loc2_,param1));
         }
      }
      
      public function setState(param1:int = 0) : void
      {
         trace("设置状态------------------------");
         if(0 == param1)
         {
            currentState = "dogFight";
         }
         else if(1 == param1)
         {
            currentState = "crossBattleDF";
         }
         else if(2 == param1)
         {
            currentState = "dongXuanDefence";
         }
      }
      
      public function updateScore(param1:uint) : void
      {
         if(this.currentState != "dongXuanDefence")
         {
            scoreLabel.text = Language.DOG_FIGHT_U[1].replace("{score}",param1);
         }
         else
         {
            scoreLabel.text = Language.DOG_FIGHT_U[3].replace("{score}",param1);
         }
      }
      
      public function __btnRank_click(param1:MouseEvent) : void
      {
         showRank();
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLabel() : Label
      {
         return this._18543655timeLabel;
      }
      
      private function _DogFightCanvas_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _DogFightCanvas_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_DogFightCanvas_RemoveChild1",_DogFightCanvas_RemoveChild1);
         return _loc1_;
      }
      
      private function _DogFightCanvas_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _DogFightCanvas_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_DogFightCanvas_RemoveChild3",_DogFightCanvas_RemoveChild3);
         return _loc1_;
      }
      
      public function updateDongXuanScore(param1:Object) : void
      {
         if(this.currentState == "dongXuanDefence")
         {
            if(param1.redS != null)
            {
               redScoreLabel.text = Language.DOG_FIGHT_U[4].replace("{score}",param1.redS);
            }
            if(param1.blueS != null)
            {
               blueScoreLabel.text = Language.DOG_FIGHT_U[5].replace("{score}",param1.blueS);
            }
         }
      }
      
      public function set btnRank(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._206155944btnRank;
         if(_loc2_ !== param1)
         {
            this._206155944btnRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnRank",_loc2_,param1));
         }
      }
      
      public function set redScoreLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1021996787redScoreLabel;
         if(_loc2_ !== param1)
         {
            this._1021996787redScoreLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"redScoreLabel",_loc2_,param1));
         }
      }
      
      private function _DogFightCanvas_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "crossBattleDF";
         _loc1_.overrides = [_DogFightCanvas_RemoveChild4_i(),_DogFightCanvas_RemoveChild5_i()];
         return _loc1_;
      }
      
      private function _DogFightCanvas_RemoveChild5_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _DogFightCanvas_RemoveChild5 = _loc1_;
         BindingManager.executeBindings(this,"_DogFightCanvas_RemoveChild5",_DogFightCanvas_RemoveChild5);
         return _loc1_;
      }
      
      private function _DogFightCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = btnRank;
         _loc1_ = redScoreLabel;
         _loc1_ = blueScoreLabel;
         _loc1_ = redScoreLabel;
         _loc1_ = blueScoreLabel;
         _loc1_ = btnRank;
         _loc1_ = Language.DOG_FIGHT_U[2];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      public function set blueScoreLabel(param1:Label) : void
      {
         var _loc2_:Object = this._750681980blueScoreLabel;
         if(_loc2_ !== param1)
         {
            this._750681980blueScoreLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueScoreLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get redScoreLabel() : Label
      {
         return this._1021996787redScoreLabel;
      }
   }
}

