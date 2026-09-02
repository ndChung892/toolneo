package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetCmdCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":83,
               "height":185,
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
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":4,
                        "width":65,
                        "height":22,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTitleLabel,
                           "id":"_PetCmdCanvas_BasicTitleLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 8375228;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":-2,
                                 "x":8,
                                 "width":65
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _355403348btnDefence:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public var _PetCmdCanvas_BasicTitleLabel1:BasicTitleLabel;
      
      private var _1767350363btnPosition:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _2097083733btnSkill:BasicGlowButton;
      
      public var _PetCmdCanvas_RemoveChild1:RemoveChild;
      
      private var _191477245btnEscape:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _78390212btnAttack:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _205905807btnItem:BasicGlowButton;
      
      private var _1595507859wrapper:VBox;
      
      public function PetCmdCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 83;
         this.height = 185;
         this.styleName = "CanvasBattleCommand";
         this.states = [_PetCmdCanvas_State1_c()];
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetCmdCanvas._watcherSetupUtil = param1;
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
      
      private function btnClick(param1:Event) : void
      {
         var _loc2_:BasicGlowButton = BasicGlowButton(param1.currentTarget);
         doCmd(_loc2_.id);
         if(_loc2_.id == "btnAttack")
         {
            _core.view.showSelect();
         }
         dispatchEvent(new Event(DragableCanvas.EVENT_CLOSE));
      }
      
      public function __btnPosition_click(param1:MouseEvent) : void
      {
         btnClick(param1);
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
      
      private function _PetCmdCanvas_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "noEscape";
         _loc1_.overrides = [_PetCmdCanvas_RemoveChild1_i(),_PetCmdCanvas_SetProperty1_c()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get wrapper() : VBox
      {
         return this._1595507859wrapper;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnItem() : BasicGlowButton
      {
         return this._205905807btnItem;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetCmdCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetCmdCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_PetCmdCanvasWatcherSetupUtil");
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
      
      public function set btnItem(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._205905807btnItem;
         if(_loc2_ !== param1)
         {
            this._205905807btnItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnItem",_loc2_,param1));
         }
      }
      
      private function _PetCmdCanvas_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetCmdCanvas_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_PetCmdCanvas_RemoveChild1",_PetCmdCanvas_RemoveChild1);
         return _loc1_;
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
         var _loc3_:Object = null;
         _core.view.hide(ViewManager.PANEL_PET);
         _core.view.hide(ViewManager.PANEL_BAG);
         unSelectAll();
         if(this[param1])
         {
            this[param1].selected = true;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
         if(_loc2_)
         {
            _loc2_.hide();
         }
         switch(param1)
         {
            case "btnSkill":
               _core.cmdState = GamePredef.ST_BATTLE_SKILL;
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PET);
               _loc3_.currentState = "skill";
               _loc3_.showPet(_core.battlePet);
               _loc3_.show();
               break;
            case "btnDefence":
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_DEFENCE,-1);
               break;
            case "btnItem":
               _core.cmdState = GamePredef.ST_BATTLE_ITEM;
               _core.view.getUI(ViewManager.PANEL_BAG).showItem();
               break;
            case "btnAttack":
               _core.cmdState = GamePredef.ST_BATTLE_ATTACK;
               break;
            case "btnEscape":
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_ESCAPE,0);
               break;
            case "btnPosition":
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_POSITION,0);
               break;
            case "btnAuto":
               _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_AUTO,0);
               break;
            default:
               _core.sysMidNote(Language.PERSONINFOCANVAS_S[0]);
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
      
      public function __btnDefence_click(param1:MouseEvent) : void
      {
         btnClick(param1);
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
      public function get btnAttack() : BasicGlowButton
      {
         return this._78390212btnAttack;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPosition() : BasicGlowButton
      {
         return this._1767350363btnPosition;
      }
      
      private function _PetCmdCanvas_SetProperty1_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 165;
         return _loc1_;
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
      
      private function _PetCmdCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return btnEscape;
         },function(param1:DisplayObject):void
         {
            _PetCmdCanvas_RemoveChild1.target = param1;
         },"_PetCmdCanvas_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAttack.label = param1;
         },"btnAttack.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnDefence.label = param1;
         },"btnDefence.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnSkill.label = param1;
         },"btnSkill.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnItem.label = param1;
         },"btnItem.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPosition.label = param1;
         },"btnPosition.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnEscape.label = param1;
         },"btnEscape.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCMDCANVAS_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetCmdCanvas_BasicTitleLabel1.text = param1;
         },"_PetCmdCanvas_BasicTitleLabel1.text");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT5];
         },function(param1:Array):void
         {
            _PetCmdCanvas_BasicTitleLabel1.filters = param1;
         },"_PetCmdCanvas_BasicTitleLabel1.filters");
         result[8] = binding;
         return result;
      }
      
      private function _PetCmdCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = btnEscape;
         _loc1_ = Language.PETCMDCANVAS_U[3];
         _loc1_ = Language.PETCMDCANVAS_U[2];
         _loc1_ = Language.PETCMDCANVAS_U[0];
         _loc1_ = Language.PETCMDCANVAS_U[1];
         _loc1_ = Language.PETCMDCANVAS_U[4];
         _loc1_ = Language.PETCMDCANVAS_U[6];
         _loc1_ = Language.PETCMDCANVAS_U[5];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT5];
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
      
      public function __btnAttack_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      public function __btnEscape_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      public function __btnItem_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
      
      override public function show() : void
      {
         var _loc1_:AutoBattleCanvas = AutoBattleCanvas(_core.view.getUI(ViewManager.PANEL_BATTLEAUTO));
         if(_loc1_.auto)
         {
            _core.battle.battlePetAuto();
         }
         else
         {
            _core.cmdState = GamePredef.ST_BATTLE_ATTACK;
            unSelectAll();
            btnAttack.selected = true;
            visible = true;
         }
         if(_core.player.currentHp <= 0)
         {
            currentState = "";
         }
         else
         {
            currentState = "noEscape";
         }
      }
      
      public function __btnSkill_click(param1:MouseEvent) : void
      {
         btnClick(param1);
      }
   }
}

