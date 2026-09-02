package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.logic.Battle;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicMultiLineButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.Currency;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.SkillUseSlot;
   import com.qeedoo.ui.view.compBattle.PlayerCmdCanvas;
   import com.qeedoo.ui.view.compGameStage.BattleCreatureView;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.DragSource;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillManager extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1596220961skillSlot0:SkillUseSlot;
      
      private var _1554141554tabBtn5:BasicMultiLineButton;
      
      private var _1596220965skillSlot4:SkillUseSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _3582325vBox:VBox;
      
      private var _selectedSlot:SkillUseSlot;
      
      private var _skillList2:Array;
      
      private var _skillList3:Array;
      
      private var _skillList4:Array;
      
      private var _skillList5:Array;
      
      private var _skillList6:Array;
      
      private var _skillList7:Array;
      
      private var _1554141553tabBtn6:BasicMultiLineButton;
      
      private var _skillList1:Array;
      
      private var _1596220964skillSlot3:SkillUseSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicMultiLineButton;
      
      public var _SkillManager_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1952114124expSkill:Currency;
      
      private var _1554141558tabBtn1:BasicMultiLineButton;
      
      private var tabBtnNum:int = 7;
      
      private var _1596220963skillSlot2:SkillUseSlot;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _2106311967tileItem:Canvas;
      
      private var ITEM_COUNT_PER_PAGE:int = 5;
      
      public var _SkillManager_Canvas2:Canvas;
      
      private var _1554141557tabBtn2:BasicMultiLineButton;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _607339634pageSelector:PageSelector;
      
      mx_internal var _watchers:Array = [];
      
      private var _sList:Object;
      
      private var _disableFlag:Boolean = false;
      
      private var _laterTimer:Timer;
      
      private var _1554141556tabBtn3:BasicMultiLineButton;
      
      private var _1596220962skillSlot1:SkillUseSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _skillPageNo1:int = 0;
      
      private var _skillPageNo2:int = 0;
      
      private var _skillPageNo3:int = 0;
      
      private var _skillPageNo4:int = 0;
      
      private var _skillPageNo5:int = 0;
      
      private var _skillPageNo6:int = 0;
      
      private var _skillPageNo7:int = 0;
      
      private var _1554141555tabBtn4:BasicMultiLineButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":372,
               "height":358,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SkillManager_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"tileItem",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "horizontalScrollPolicy":"off",
                        "y":40,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SkillManager_Canvas2",
                           "events":{"mouseDown":"___SkillManager_Canvas2_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.left = "30";
                              this.right = "10";
                              this.borderColor = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":290,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vBox",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "5";
                                       this.paddingLeft = 5;
                                       this.paddingTop = 5;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":250,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SkillUseSlot,
                                             "id":"skillSlot0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"skillType":"character"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SkillUseSlot,
                                             "id":"skillSlot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"skillType":"character"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SkillUseSlot,
                                             "id":"skillSlot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"skillType":"character"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SkillUseSlot,
                                             "id":"skillSlot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"skillType":"character"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SkillUseSlot,
                                             "id":"skillSlot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"skillType":"character"};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelector",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":255};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"expSkill",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":52,
                                 "y":293,
                                 "width":112
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "selected":true,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":50,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":90,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":130,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn4",
                           "events":{"click":"__tabBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":170,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn5",
                           "events":{"click":"__tabBtn5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":210,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn6",
                           "events":{"click":"__tabBtn6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":250,
                                 "styleName":"VerticalTab",
                                 "height":40,
                                 "width":20
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var selectedTabIndex:int = 0;
      
      public function SkillManager()
      {
         super();
         mx_internal::_document = this;
         this.width = 372;
         this.height = 358;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillManager._watcherSetupUtil = param1;
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      private function useSkill(param1:SkillUseSlot, param2:MouseEvent) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc3_:Object = param1.slotData;
         if(!_loc3_)
         {
            return;
         }
         if(param2.target.hasOwnProperty("id"))
         {
            _loc4_ = param2.target.id;
            _loc5_ = int(_loc4_.substr(3));
            _loc3_ = skillGetLevel(_loc3_.id,_loc5_);
         }
         if(_core.state == GamePredef.ST_CORE_BATTLE && _core.cmdState == GamePredef.ST_BATTLE_SKILL && BattleCreatureView.cmdMode)
         {
            if(_core.checkSkillRequire(_loc3_,true))
            {
               _core.skill = _loc3_;
               if(_loc3_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PLAYER)
               {
                  _core.battle.battleCmd(_core.player.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
                  _core.skill = null;
                  _core.skillLevel = -1;
               }
               else if(_loc3_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PET)
               {
                  _loc6_ = _core.battle.battleGetPlayerPet(_core.view.getUI(ViewManager.STAGE_BATTLE).cList);
                  if(null == _loc6_)
                  {
                     _core.sysMidNote(Language.SKILLMANAGER_U[6]);
                     return;
                  }
                  _core.battle.battleCmd(_loc6_.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
                  _core.skill = null;
                  _core.skillLevel = -1;
               }
               else
               {
                  _core.view.showSelect();
               }
            }
         }
         else
         {
            drag(param1,param2);
         }
      }
      
      public function set tabBtn2(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function autoClick(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         if(param1)
         {
            _loc2_ = int(GameData.d[GamePredef.TBL_SKILL][param1.id].useEnv);
            if(_loc2_ >= 0)
            {
               tabBtnClick(_loc2_);
            }
            _loc3_ = true;
            _loc4_ = 5;
            while(Boolean(_loc3_) && Boolean(_loc4_--))
            {
               _loc5_ = 0;
               while(_loc5_ < 5)
               {
                  if(Boolean(this["skillSlot" + _loc5_]) && Boolean(this["skillSlot" + _loc5_].slotData) && this["skillSlot" + _loc5_].slotData.name == param1.name)
                  {
                     _loc3_ = false;
                     break;
                  }
                  _loc5_++;
               }
               if(_loc5_ == 5)
               {
                  setTimeout(delayClick,200);
                  ++pageSelector.pageNo;
               }
            }
         }
      }
      
      public function set tabBtn1(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function set tabBtn6(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141553tabBtn6;
         if(_loc2_ !== param1)
         {
            this._1554141553tabBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot1() : SkillUseSlot
      {
         return this._1596220962skillSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot2() : SkillUseSlot
      {
         return this._1596220963skillSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot3() : SkillUseSlot
      {
         return this._1596220964skillSlot3;
      }
      
      public function set tabBtn4(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      private function drag(param1:SkillUseSlot, param2:MouseEvent, param3:int = 0) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:* = undefined;
         var _loc4_:Image = Image(param1.skillSlot.itemIcon);
         var _loc5_:DragSource = new DragSource();
         _loc5_.addData(_loc4_,"image");
         if(param1.skillSlot.type == GamePredef.TBL_SKILL)
         {
            if(param2.target is Button)
            {
               _loc8_ = Number(Button(param2.target).id.substr(3,Button(param2.target).id.length));
               if(_loc8_ > 0 && _loc8_ < 10)
               {
                  _loc9_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_core.data.gameData[GamePredef.TBL_SKILL][param1.skillSlot.slotData.id].codeName];
                  for each(_loc10_ in _loc9_)
                  {
                     if(_loc10_.level == _loc8_)
                     {
                        param1.skillSlot.giid = _loc10_.id;
                        break;
                     }
                  }
               }
            }
         }
         _loc5_.addData(param1.skillSlot,"slot");
         _loc5_.addData(param3,"level");
         var _loc6_:Image = new Image();
         _loc6_.source = _loc4_.source;
         _loc6_.height = _loc4_.height;
         _loc6_.width = _loc4_.width;
         _loc6_.x = _loc4_.x;
         _loc6_.y = _loc4_.y;
         var _loc7_:int = 0;
         if(param3 > 0)
         {
            _loc7_ = -78 - param3 * 16;
         }
         DragManager.doDrag(_loc4_,_loc5_,param2,_loc6_,_loc7_,0,0.5);
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot0() : SkillUseSlot
      {
         return this._1596220961skillSlot0;
      }
      
      public function set tabBtn3(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      private function _SkillManager_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SKILLMANAGER_U[4];
         _loc1_ = Language.SKILLMANAGER_U[0];
         _loc1_ = Currency.TYPE_POINT;
         _loc1_ = _core.player.expSkill;
         _loc1_ = Language.SKILLMANAGER_U[0];
         _loc1_ = Language.SKILLMANAGER_U[1];
         _loc1_ = Language.SKILLMANAGER_U[2];
         _loc1_ = Language.SKILLMANAGER_U[5];
         _loc1_ = Language.SKILLMANAGER_U[3];
         _loc1_ = Language.SKILLMANAGER_U[7];
         _loc1_ = Language.SKILLMANAGER_U[8];
      }
      
      public function set tabBtn5(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141554tabBtn5;
         if(_loc2_ !== param1)
         {
            this._1554141554tabBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn5",_loc2_,param1));
         }
      }
      
      private function skillGetLevel(param1:int, param2:int) : Object
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc3_:Object = GameData.d[GamePredef.TBL_SKILL][param1];
         if(param2 > 0)
         {
            _loc4_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_loc3_.codeName];
            for each(_loc5_ in _loc4_)
            {
               if(Number(_loc5_.level) == Number(param2))
               {
                  _loc3_ = _loc5_;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      private function tabBtnClick(param1:int) : void
      {
         selectedTabIndex = param1;
         pageSelector.initPageSeletor(this["_skillList" + (param1 + 1)].length,ITEM_COUNT_PER_PAGE);
         var _loc2_:int = 0;
         while(_loc2_ < tabBtnNum)
         {
            this["tabBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["tabBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get expSkill() : Currency
      {
         return this._1952114124expSkill;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot4() : SkillUseSlot
      {
         return this._1596220965skillSlot4;
      }
      
      override public function hide() : void
      {
         var _loc1_:PlayerCmdCanvas = null;
         super.hide();
         if(_core.state == GamePredef.ST_CORE_BATTLE)
         {
            _loc1_ = PlayerCmdCanvas(_core.view.getUI(ViewManager.MAIN_BATTLE_PLAYER));
            _loc1_.doCmd("btnAttack");
         }
      }
      
      public function set skillSlot2(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._1596220963skillSlot2;
         if(_loc2_ !== param1)
         {
            this._1596220963skillSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot2",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
         clearSlots();
      }
      
      public function set skillSlot1(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._1596220962skillSlot1;
         if(_loc2_ !== param1)
         {
            this._1596220962skillSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot1",_loc2_,param1));
         }
      }
      
      public function enableUI() : void
      {
         if(initialized)
         {
            if(this._disableFlag)
            {
               this._disableFlag = false;
            }
         }
         else
         {
            this._disableFlag = false;
         }
      }
      
      public function set tabBtn0(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set skillSlot4(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._1596220965skillSlot4;
         if(_loc2_ !== param1)
         {
            this._1596220965skillSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot4",_loc2_,param1));
         }
      }
      
      public function set skillSlot0(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._1596220961skillSlot0;
         if(_loc2_ !== param1)
         {
            this._1596220961skillSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot0",_loc2_,param1));
         }
      }
      
      public function set skillSlot3(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._1596220964skillSlot3;
         if(_loc2_ !== param1)
         {
            this._1596220964skillSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot3",_loc2_,param1));
         }
      }
      
      public function set expSkill(param1:Currency) : void
      {
         var _loc2_:Object = this._1952114124expSkill;
         if(_loc2_ !== param1)
         {
            this._1952114124expSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expSkill",_loc2_,param1));
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get vBox() : VBox
      {
         return this._3582325vBox;
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4);
      }
      
      private function _SkillManager_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillManager_BasicTitleCanvas1.text = param1;
         },"_SkillManager_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillManager_Canvas2.label = param1;
         },"_SkillManager_Canvas2.label");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_POINT;
         },function(param1:uint):void
         {
            expSkill.type = param1;
         },"expSkill.type");
         result[2] = binding;
         binding = new Binding(this,function():Number
         {
            return _core.player.expSkill;
         },function(param1:Number):void
         {
            expSkill.value = param1;
         },"expSkill.value");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn5.label = param1;
         },"tabBtn5.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLMANAGER_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn6.label = param1;
         },"tabBtn6.label");
         result[10] = binding;
         return result;
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            this["skillSlot" + _loc1_].removeEventListener(MouseEvent.CLICK,clickSkill);
            this["skillSlot" + _loc1_].removeEventListener(GameDataEvent.SKILL_LEVEL_CLICKED,skillLevelClicked);
            this["skillSlot" + _loc1_].currentState = "";
            this["skillSlot" + _loc1_].clean();
            this["skillSlot" + _loc1_].visible = false;
            if(selectedTabIndex == 2)
            {
               this["skillSlot" + _loc1_].learnAble = false;
            }
            else if(selectedTabIndex == 3)
            {
               this["skillSlot" + _loc1_].learnAble = true;
            }
            else if(selectedTabIndex == 5)
            {
               this["skillSlot" + _loc1_].maxLevel = 3;
            }
            _loc1_++;
         }
      }
      
      public function disableUI() : void
      {
         var _loc1_:int = 0;
         if(initialized)
         {
            if(!this._disableFlag)
            {
               this._disableFlag = true;
            }
            else
            {
               _loc1_ = 0;
               while(_loc1_ < 5)
               {
                  this["skillSlot" + _loc1_].btnReqSkill.enabled = false;
                  _loc1_++;
               }
            }
         }
         else
         {
            this._disableFlag = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicMultiLineButton
      {
         return this._1554141557tabBtn2;
      }
      
      public function updateMWeaponSkillList(param1:Object = null, param2:Boolean = true) : void
      {
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(param1)
         {
            trace("初始化时未获得实例数据，再次刷新神器技能面板");
         }
         tileItem.visible = false;
         _skillList6 = [];
         var _loc3_:* = {};
         for each(_loc4_ in _core.player.skillList)
         {
            _loc6_ = int(GameData.d[GamePredef.TBL_SKILL][_loc4_.sid].useEnv);
            switch(_loc6_)
            {
               case 5:
                  _loc3_[GameData.d[GamePredef.TBL_SKILL][_loc4_.sid].name] = true;
                  _skillList6.push({
                     "id":_loc4_.sid,
                     "position":_loc4_.position,
                     "temp":1,
                     "creKind":GameData.d[GamePredef.TBL_SKILL][_loc4_.sid].creKind,
                     "kind":_loc4_.kind,
                     "sort":(Number(_loc4_.kind) == 2 ? 10 : Number(_loc4_.kind))
                  });
            }
         }
         for(_loc5_ in GamePredef.MW_MAIN_POSITION)
         {
            _loc7_ = _core.data.getSlot({"sid":_loc5_});
            if(_loc7_)
            {
               _loc8_ = _core.getTemplateData(_loc7_.type,_loc7_.itemId);
               _loc9_ = _core.data.getData(_loc7_.type,_loc7_.itemId);
               _loc10_ = _loc8_.artifactSkill;
               _loc11_ = (_loc10_) && _loc10_.toString().split("|");
               _loc12_ = _loc11_[0];
               _loc13_ = _core.getTemplateData(GamePredef.TBL_SKILL,_loc12_);
               if(_loc13_)
               {
                  param1 = {
                     "id":_loc13_.id,
                     "position":_loc5_ + "-1",
                     "temp":-1,
                     "creKind":_loc13_.creKind,
                     "kind":_loc13_.kind,
                     "sort":(Number(_loc13_.kind) == 2 ? 10 : Number(_loc13_.kind))
                  };
                  if(!_loc3_[_loc13_.name] && _loc9_.endureLeft > 0 && param2)
                  {
                     _skillList6.push(param1);
                  }
               }
            }
         }
         _skillList6.sortOn("sort",Array.NUMERIC);
         if(selectedTabIndex == 5)
         {
            pageSelector.initPageSeletor(_skillList6.length,ITEM_COUNT_PER_PAGE);
            pageSelector.pageNo = _skillPageNo6;
         }
         tileItem.visible = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillManager = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillManager_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SkillManagerWatcherSetupUtil");
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
      public function get tabBtn1() : BasicMultiLineButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicMultiLineButton
      {
         return this._1554141556tabBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicMultiLineButton
      {
         return this._1554141555tabBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicMultiLineButton
      {
         return this._1554141559tabBtn0;
      }
      
      public function ___SkillManager_Canvas2_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function clickSkill(param1:MouseEvent) : void
      {
         var _loc2_:SkillUseSlot = SkillUseSlot(param1.currentTarget);
         if(param1.target == _loc2_.btnReqSkill)
         {
            return;
         }
         useSkill(_loc2_,param1);
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      public function __tabBtn5_click(param1:MouseEvent) : void
      {
         tabBtnClick(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn5() : BasicMultiLineButton
      {
         return this._1554141554tabBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn6() : BasicMultiLineButton
      {
         return this._1554141553tabBtn6;
      }
      
      private function delayClick() : void
      {
         ++pageSelector.pageNo;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         this["_skillPageNo" + (selectedTabIndex + 1)] = pageSelector.pageNo;
         drawPage(selectedTabIndex,param1,param2);
      }
      
      override public function update() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:* = undefined;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:* = undefined;
         var _loc14_:int = 0;
         var _loc15_:Object = null;
         var _loc16_:String = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:String = null;
         var _loc20_:* = undefined;
         var _loc21_:* = undefined;
         var _loc22_:* = undefined;
         var _loc23_:* = undefined;
         var _loc24_:* = undefined;
         var _loc25_:* = undefined;
         var _loc26_:* = undefined;
         var _loc27_:* = undefined;
         tileItem.visible = false;
         clearSlots();
         var _loc1_:Object = {};
         var _loc2_:Object = _core.player.awakenPointDict;
         for each(_loc3_ in _core.player.skillList)
         {
            _loc15_ = GameData.d[GamePredef.TBL_SKILL][_loc3_.sid];
            _loc16_ = _loc15_.codeName;
            if(Boolean(_loc2_) && Boolean(_loc2_[_loc16_]))
            {
               _loc18_ = int(_loc2_[_loc16_]);
               if(int(_loc15_["exSid" + _loc18_]) > 0)
               {
                  _loc19_ = _loc15_["exSid" + _loc18_];
                  if(_core.data.hasData(GamePredef.TBL_SKILL,Number(_loc19_)))
                  {
                     _loc15_ = GameData.d[GamePredef.TBL_SKILL][_loc19_];
                  }
               }
            }
            _loc17_ = int(_loc15_.useEnv);
            switch(_loc17_)
            {
               case 0:
                  _skillList1.push({
                     "id":_loc15_.id,
                     "temp":1,
                     "creKind":_loc15_.creKind
                  });
                  break;
               case 1:
                  _skillList2.push({
                     "id":_loc15_.id,
                     "temp":1,
                     "creKind":_loc15_.creKind
                  });
                  break;
               case 2:
                  _skillList3.push(_loc15_.id);
                  break;
               case 3:
                  _skillList4.push({
                     "id":_loc15_.id,
                     "temp":1,
                     "creKind":_loc15_.creKind
                  });
                  break;
               case 4:
                  _skillList5.push({
                     "id":_loc15_.id,
                     "temp":1,
                     "creKind":_loc15_.creKind
                  });
                  break;
               case 5:
                  _loc1_[_loc15_.name] = true;
                  _skillList6.push({
                     "id":_loc15_.id,
                     "position":_loc3_.position,
                     "temp":1,
                     "creKind":_loc15_.creKind,
                     "kind":_loc3_.kind,
                     "sort":(Number(_loc3_.kind) == 2 ? 10 : Number(_loc3_.kind))
                  });
                  break;
               case 6:
                  _skillList7.push({
                     "id":_loc15_.id,
                     "temp":1,
                     "creKind":_loc15_.creKind
                  });
            }
         }
         _loc4_ = "|" + _core.player.classId + "|";
         _loc5_ = _core.data.gameDataIndex2[GamePredef.TBL_SKILL][_loc4_];
         _loc6_ = [];
         _loc7_ = [];
         _loc8_ = [];
         _loc9_ = [];
         for each(_loc10_ in _loc5_)
         {
            if(_loc10_.reqLevel > _core.player.level)
            {
               continue;
            }
            if(_loc10_.reqCL == 10 && !_core.player.expRe)
            {
               continue;
            }
            if(_loc10_.level != 1)
            {
               continue;
            }
            if(Boolean(_loc2_) && Boolean(_loc2_[_loc10_.codeName]))
            {
               _loc18_ = int(_loc2_[_loc10_.codeName]);
               if(int(_loc10_["exSid" + _loc18_]) > 0)
               {
                  _loc19_ = _loc10_["exSid" + _loc18_];
                  _loc10_ = GameData.d[GamePredef.TBL_SKILL][_loc19_];
               }
            }
            switch(int(_loc10_.useEnv))
            {
               case 0:
                  _loc6_.push({
                     "learchSkill":Number(_loc10_.reqLevel),
                     "id":_loc10_.id,
                     "temp":-1,
                     "creKind":_loc10_.creKind
                  });
                  break;
               case 1:
                  _loc7_.push({
                     "learchSkill":Number(_loc10_.reqLevel),
                     "id":_loc10_.id,
                     "temp":-1,
                     "creKind":_loc10_.creKind
                  });
                  break;
               case 3:
                  _loc8_.push({
                     "learchSkill":Number(_loc10_.reqLevel),
                     "id":_loc10_.id,
                     "temp":-1,
                     "creKind":_loc10_.creKind
                  });
            }
         }
         _loc11_ = _core.data.gameDataIndex3[GamePredef.TBL_SKILL]["3"];
         for each(_loc10_ in _loc11_)
         {
            if(_loc10_.reqLevel <= _core.player.level)
            {
               if(_loc10_.level == 1)
               {
                  _loc8_.push({
                     "learchSkill":Number(_loc10_.reqLevel),
                     "id":_loc10_.id,
                     "temp":-1,
                     "creKind":_loc10_.creKind,
                     "orderNum":GamePredef.TRAINING_SKILL_ORDER[_loc10_.codeName]
                  });
               }
            }
         }
         _loc12_ = _core.data.gameDataIndex3[GamePredef.TBL_SKILL]["4"];
         for each(_loc10_ in _loc12_)
         {
            if(_loc10_.reqLevel <= _core.player.level)
            {
               if(_loc10_.level == 1)
               {
                  _loc9_.push({
                     "learchSkill":Number(_loc10_.reqLevel),
                     "id":_loc10_.id,
                     "temp":-1,
                     "creKind":_loc10_.creKind,
                     "nameLength":_loc10_.name.length
                  });
               }
            }
         }
         for(_loc13_ in GamePredef.MW_MAIN_POSITION)
         {
            _loc20_ = _core.data.getSlot({"sid":_loc13_});
            if(_loc20_)
            {
               _loc21_ = _core.getTemplateData(_loc20_.type,_loc20_.itemId);
               _loc22_ = _core.data.getData(_loc20_.type,_loc20_.itemId);
               if(_loc21_ == null)
               {
                  _core.remote.call("gdc",new Responder(updateMWeaponSkillList),_loc20_.type,_loc20_.itemId);
               }
               else
               {
                  _loc23_ = _loc21_.artifactSkill;
                  _loc24_ = (_loc23_) && _loc23_.toString().split("|");
                  _loc25_ = _loc24_[0];
                  _loc26_ = _core.getTemplateData(GamePredef.TBL_SKILL,_loc25_);
                  if(_loc26_)
                  {
                     _loc27_ = {
                        "id":_loc26_.id,
                        "position":_loc13_ + "-1",
                        "temp":-1,
                        "creKind":_loc26_.creKind,
                        "kind":_loc26_.kind,
                        "sort":(Number(_loc26_.kind) == 2 ? 10 : Number(_loc26_.kind))
                     };
                     if(!_loc1_[_loc26_.name] && _loc22_.endureLeft > 0)
                     {
                        _skillList6.push(_loc27_);
                     }
                  }
               }
            }
         }
         _loc6_.sortOn("learchSkill",Array.NUMERIC | Array.DESCENDING);
         _loc7_.sortOn("learchSkill",Array.NUMERIC | Array.DESCENDING);
         _loc8_.sortOn("orderNum",Array.NUMERIC | Array.DESCENDING);
         _loc9_.sortOn(["nameLength","learchSkill"],[Array.NUMERIC | Array.DESCENDING,Array.NUMERIC | Array.DESCENDING]);
         _skillList6.sortOn("sort",Array.NUMERIC);
         skillListProcess(_loc6_,_skillList1);
         skillListProcess(_loc7_,_skillList2);
         skillListProcess(_loc8_,_skillList4);
         skillListProcess(_loc9_,_skillList5);
         _skillList1 = _loc6_.reverse();
         _skillList2 = _loc7_.reverse();
         _skillList4 = _loc8_.reverse();
         _skillList5 = _loc9_.reverse();
         _loc14_ = 1;
         while(_loc14_ <= 7)
         {
            this["_skillPageNo" + _loc14_] = 0;
            _loc14_++;
         }
         pageSelector.initPageSeletor(this["_skillList" + (selectedTabIndex + 1)].length,ITEM_COUNT_PER_PAGE);
         pageSelector.pageNo = this["_skillPageNo" + (selectedTabIndex + 1)];
         tileItem.visible = true;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         update();
      }
      
      private function skillListProcess(param1:Array, param2:Array) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = 0;
            while(_loc4_ < param2.length)
            {
               if(_core.data.gameData[GamePredef.TBL_SKILL][param2[_loc4_].id].name == _core.data.gameData[GamePredef.TBL_SKILL][param1[_loc3_].id].name)
               {
                  param1[_loc3_] = param2[_loc4_];
                  break;
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tileItem() : Canvas
      {
         return this._2106311967tileItem;
      }
      
      private function clearSlots() : void
      {
         _skillList1 = [];
         _skillList2 = [];
         _skillList3 = [];
         _skillList4 = [];
         _skillList5 = [];
         _skillList6 = [];
         _skillList7 = [];
      }
      
      public function set vBox(param1:VBox) : void
      {
         var _loc2_:Object = this._3582325vBox;
         if(_loc2_ !== param1)
         {
            this._3582325vBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vBox",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
      }
      
      public function battleShow() : void
      {
         show();
      }
      
      public function set tileItem(param1:Canvas) : void
      {
         var _loc2_:Object = this._2106311967tileItem;
         if(_loc2_ !== param1)
         {
            this._2106311967tileItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileItem",_loc2_,param1));
         }
      }
      
      private function skillLevelClicked(param1:GameDataEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(_core.state == GamePredef.ST_CORE_BATTLE && _core.cmdState == GamePredef.ST_BATTLE_SKILL)
         {
            _loc2_ = int(param1.data.level);
            _loc3_ = param1.data.skill;
            _loc4_ = _core.getSkillData(_loc3_.id,_loc2_);
            if(_core.checkSkillRequire(_loc4_,true))
            {
               _core.skill = _loc4_;
               _core.skillLevel = _loc2_;
               visible = false;
            }
         }
         else
         {
            drag(param1.data.slot,param1.data.event,param1.data.level);
         }
      }
      
      private function drawPage(param1:int, param2:int, param3:int) : void
      {
         var _loc6_:SkillUseSlot = null;
         var _loc4_:String = param1 == 2 ? "giid" : "giids";
         var _loc5_:int = 0;
         while(_loc5_ < param3)
         {
            _loc6_ = this["skillSlot" + _loc5_];
            _loc6_[_loc4_] = this["_skillList" + (param1 + 1)][_loc5_ + param2];
            _loc6_.visible = true;
            if(param1 == 0 || param1 == 2 || param1 == 5 && _loc6_.isDragAble)
            {
               _loc6_.addEventListener(MouseEvent.CLICK,clickSkill);
               _loc6_.addEventListener(GameDataEvent.SKILL_LEVEL_CLICKED,skillLevelClicked);
            }
            _loc5_++;
         }
         if(_disableFlag)
         {
            disableUI();
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      public function __tabBtn6_click(param1:MouseEvent) : void
      {
         tabBtnClick(6);
      }
   }
}

