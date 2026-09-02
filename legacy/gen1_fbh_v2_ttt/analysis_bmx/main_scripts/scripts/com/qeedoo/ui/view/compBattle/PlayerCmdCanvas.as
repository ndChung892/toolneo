package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.Key;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PlayerCmdCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _escapeConfirm:Alert;
      
      private var _1595507859wrapper:VBox;
      
      private var _1767350363btnPosition:BasicGlowButton;
      
      public var isEscapeThisRound:Boolean = false;
      
      private var _1378824925btnPet:BasicGlowButton;
      
      private var _355403348btnDefence:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _2082019775btnCatch:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _205905807btnItem:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _2097083733btnSkill:BasicGlowButton;
      
      private var _205668907btnAuto:BasicGlowButton;
      
      private var _191477245btnEscape:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var needToShow:Boolean = true;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _78390212btnAttack:BasicGlowButton;
      
      public var _PlayerCmdCanvas_BasicTitleLabel1:BasicTitleLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":83,
               "height":267,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"wrapper",
                  "stylesFactory":function():void
                  {
                     this.left = "5";
                     this.right = "5";
                     this.top = "27";
                     this.verticalGap = 3;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnAttack",
                        "events":{"click":"__btnAttack_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnDefence",
                        "events":{"click":"__btnDefence_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnSkill",
                        "events":{"click":"__btnSkill_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnCatch",
                        "events":{"click":"__btnCatch_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                           this.textAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnPet",
                        "events":{"click":"__btnPet_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnPosition",
                        "events":{"click":"__btnPosition_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnItem",
                        "events":{"click":"__btnItem_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnEscape",
                        "events":{"click":"__btnEscape_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"btnAuto",
                        "events":{"click":"__btnAuto_click"},
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":73,
                              "styleName":"CrystalBlueButton"
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":0,
                        "width":45,
                        "height":22,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTitleLabel,
                           "id":"_PlayerCmdCanvas_BasicTitleLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 8375228;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":2};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function PlayerCmdCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 83;
         this.height = 267;
         this.styleName = "CanvasBattleCommand";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PlayerCmdCanvas._watcherSetupUtil = param1;
      }
      
      public function set btnEscape(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._191477245btnEscape;
         if(_loc2_ !== param1)
         {
            this._191477245btnEscape = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnEscape",_loc2_,param1));
         }
      }
      
      private function _PlayerCmdCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAttack.label = param1;
         },"btnAttack.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnDefence.label = param1;
         },"btnDefence.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnSkill.label = param1;
         },"btnSkill.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnCatch.label = param1;
         },"btnCatch.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPet.label = param1;
         },"btnPet.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPosition.label = param1;
         },"btnPosition.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnItem.label = param1;
         },"btnItem.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnEscape.label = param1;
         },"btnEscape.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAuto.label = param1;
         },"btnAuto.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PLAYERCMDCANVAS_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PlayerCmdCanvas_BasicTitleLabel1.text = param1;
         },"_PlayerCmdCanvas_BasicTitleLabel1.text");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT5];
         },function(param1:Array):void
         {
            _PlayerCmdCanvas_BasicTitleLabel1.filters = param1;
         },"_PlayerCmdCanvas_BasicTitleLabel1.filters");
         result[10] = binding;
         return result;
      }
      
      private function btnClick(param1:Event) : void
      {
         var _loc2_:BasicGlowButton = BasicGlowButton(param1.currentTarget);
         doCmd(_loc2_.id);
         dispatchEvent(new Event(DragableCanvas.EVENT_CLOSE));
         if(_loc2_.id == "btnAttack")
         {
            _core.view.showSelect();
         }
      }
      
      public function __btnAuto_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      public function __btnPosition_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PlayerCmdCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PlayerCmdCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_PlayerCmdCanvasWatcherSetupUtil");
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
      public function get btnItem() : BasicGlowButton
      {
         return this._205905807btnItem;
      }
      
      public function set btnAttack(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._78390212btnAttack;
         if(_loc2_ !== param1)
         {
            this._78390212btnAttack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAttack",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wrapper() : VBox
      {
         return this._1595507859wrapper;
      }
      
      public function set btnItem(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._205905807btnItem;
         if(_loc2_ !== param1)
         {
            this._205905807btnItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnItem",_loc2_,param1));
         }
      }
      
      public function set btnDefence(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._355403348btnDefence;
         if(_loc2_ !== param1)
         {
            this._355403348btnDefence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnDefence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnEscape() : BasicGlowButton
      {
         return this._191477245btnEscape;
      }
      
      public function set wrapper(param1:VBox) : void
      {
         var _loc2_:Object = this._1595507859wrapper;
         if(_loc2_ !== param1)
         {
            this._1595507859wrapper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wrapper",_loc2_,param1));
         }
      }
      
      public function doCmd(param1:String) : void
      {
         var _loc3_:AutoBattleCanvas = null;
         _core.view.hide(ViewManager.PANEL_SKILLMANAGER);
         _core.view.hide(ViewManager.PANEL_BAG);
         unSelectAll();
         var _loc2_:Object = _core.view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
         if(_loc2_)
         {
            _loc2_.hide();
         }
         switch(param1)
         {
            case "btnSkill":
               _core.cmdState = GamePredef.ST_BATTLE_SKILL;
               _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).battleShow();
               break;
            case "btnDefence":
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_DEFENCE,-1);
               break;
            case "btnItem":
               _core.cmdState = GamePredef.ST_BATTLE_ITEM;
               _core.view.getUI(ViewManager.PANEL_BAG).showItem();
               break;
            case "btnPet":
               _core.cmdState = GamePredef.ST_BATTLE_PET;
               _core.view.getUI(ViewManager.PANEL_BAG).showPet();
               break;
            case "btnAttack":
               _core.cmdState = GamePredef.ST_BATTLE_ATTACK;
               break;
            case "btnEscape":
               isEscapeThisRound = true;
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_ESCAPE,0);
               break;
            case "btnPosition":
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_POSITION,0);
               break;
            case "btnCatch":
               _core.cmdState = GamePredef.ST_BATTLE_CATCH;
               _core.view.showSelect();
               break;
            case "btnAuto":
               _core.view.getUI(ViewManager.STAGE_BATTLE).startAuto();
               _loc3_ = AutoBattleCanvas(_core.view.getUI(ViewManager.PANEL_BATTLEAUTO));
               if(_loc3_.auto && _loc3_.num > 0)
               {
                  if(_core.view.getUI(ViewManager.MAIN_LONGBUFF).containBuff(GamePredef.MEET_BATTLE_ON_STILL_BID))
                  {
                     trace("no need to minus view.num");
                     _loc3_.num = _loc3_.maxNum;
                  }
                  else
                  {
                     --_loc3_.num;
                  }
               }
               _core.battle.battleAuto();
               _core.view.getUI(ViewManager.MAIN_AUTOBATTLE_SET).changeStyle(false);
         }
      }
      
      public function set btnSkill(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2097083733btnSkill;
         if(_loc2_ !== param1)
         {
            this._2097083733btnSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnSkill",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAuto() : BasicGlowButton
      {
         return this._205668907btnAuto;
      }
      
      public function set btnCatch(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2082019775btnCatch;
         if(_loc2_ !== param1)
         {
            this._2082019775btnCatch = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnCatch",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPet() : BasicGlowButton
      {
         return this._1378824925btnPet;
      }
      
      public function __btnDefence_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnCatch() : BasicGlowButton
      {
         return this._2082019775btnCatch;
      }
      
      private function onEscape(param1:Event) : void
      {
         var msgString:String;
         var func:Function;
         var btn:BasicGlowButton = null;
         var evt:Event = param1;
         if(isEscapeThisRound)
         {
            return;
         }
         this.visible = false;
         btn = BasicGlowButton(evt.currentTarget);
         func = function(param1:CloseEvent):void
         {
            removeEscapeConfirm(_escapeConfirm);
            if(Alert.YES == param1.detail)
            {
               doCmd(btn.id);
            }
            if(Alert.NO == param1.detail)
            {
               show();
            }
         };
         msgString = Language.PLAYERCMDCANVAS_U[10];
         _escapeConfirm = Alert.show(msgString,"",Alert.YES | Alert.NO,this,func);
         stage.addEventListener(GameEvent.BATTLE_ROUND_TIME_OUT,onRoundTimeout);
         Key.setListenerEnabled(stage,false);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAttack() : BasicGlowButton
      {
         return this._78390212btnAttack;
      }
      
      private function _PlayerCmdCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PLAYERCMDCANVAS_U[5];
         _loc1_ = Language.PLAYERCMDCANVAS_U[1];
         _loc1_ = Language.PLAYERCMDCANVAS_U[0];
         _loc1_ = Language.PLAYERCMDCANVAS_U[8];
         _loc1_ = Language.PLAYERCMDCANVAS_U[3];
         _loc1_ = Language.PLAYERCMDCANVAS_U[7];
         _loc1_ = Language.PLAYERCMDCANVAS_U[2];
         _loc1_ = Language.PLAYERCMDCANVAS_U[6];
         _loc1_ = Language.PLAYERCMDCANVAS_U[4];
         _loc1_ = Language.PLAYERCMDCANVAS_U[9];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT5];
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPosition() : BasicGlowButton
      {
         return this._1767350363btnPosition;
      }
      
      public function __btnPet_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      public function set btnPet(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1378824925btnPet;
         if(_loc2_ !== param1)
         {
            this._1378824925btnPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPet",_loc2_,param1));
         }
      }
      
      public function defence() : void
      {
         doCmd("btnDefence");
      }
      
      public function set btnPosition(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1767350363btnPosition;
         if(_loc2_ !== param1)
         {
            this._1767350363btnPosition = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPosition",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnDefence() : BasicGlowButton
      {
         return this._355403348btnDefence;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnSkill() : BasicGlowButton
      {
         return this._2097083733btnSkill;
      }
      
      private function removeEscapeConfirm(param1:Alert) : void
      {
         if(param1)
         {
            stage.removeEventListener(GameEvent.BATTLE_ROUND_TIME_OUT,onRoundTimeout);
            Key.setListenerEnabled(stage,true);
            PopUpManager.removePopUp(param1);
            param1 = null;
         }
      }
      
      public function set btnAuto(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._205668907btnAuto;
         if(_loc2_ !== param1)
         {
            this._205668907btnAuto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAuto",_loc2_,param1));
         }
      }
      
      public function __btnEscape_click(param1:MouseEvent) : void
      {
         onEscape(param1);
      }
      
      public function __btnCatch_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!needToShow && param1)
         {
            super.visible = false;
         }
         else
         {
            super.visible = param1;
         }
      }
      
      public function __btnAttack_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      private function onRoundTimeout(param1:GameEvent) : void
      {
         removeEscapeConfirm(_escapeConfirm);
      }
      
      private function unSelectAll() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in wrapper.getChildren())
         {
            if(_loc1_ is BasicGlowButton)
            {
               _loc1_.selected = false;
            }
         }
      }
      
      public function __btnItem_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      override public function show() : void
      {
         var _loc1_:AutoBattleCanvas = AutoBattleCanvas(_core.view.getUI(ViewManager.PANEL_BATTLEAUTO));
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_WB_BATTLEAUTO);
         if(_loc1_.auto && _loc1_.num > 0)
         {
            if(Boolean(_core.view.getUI(ViewManager.MAIN_LONGBUFF).containBuff(GamePredef.MEET_BATTLE_ON_STILL_BID)) || Boolean(_loc2_) && Boolean(_loc2_.getWbAuto()))
            {
               trace("no need to minus view.num");
               _loc1_.num = _loc1_.maxNum;
            }
            else
            {
               --_loc1_.num;
            }
            _core.battle.battleAuto();
         }
         else
         {
            _core.cmdState = GamePredef.ST_BATTLE_ATTACK;
            unSelectAll();
            btnAttack.selected = true;
            visible = true;
         }
      }
      
      public function __btnSkill_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
   }
}

