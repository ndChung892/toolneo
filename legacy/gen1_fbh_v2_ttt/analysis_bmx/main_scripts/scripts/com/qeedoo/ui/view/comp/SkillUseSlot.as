package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.SkillSlotVO;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.HBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillUseSlot extends Canvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SkillUseSlot_SetProperty2:SetProperty;
      
      public var _SkillUseSlot_SetProperty3:SetProperty;
      
      public var _SkillUseSlot_SetProperty4:SetProperty;
      
      public var _SkillUseSlot_SetProperty5:SetProperty;
      
      private var _1355324111btnReqSkill:BasicGlowButton;
      
      private var _2147321034skillVO:SkillSlotVO = new SkillSlotVO();
      
      private var _471817573btnReqSkillLabel:String = "";
      
      private var _987030448levelBtnCanvas:HBox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _skill:Object = null;
      
      private var _1110417475label1:RoundedLabel;
      
      private var btn1:Button = null;
      
      private var btn2:Button = null;
      
      private var btn3:Button = null;
      
      private var btn5:Button = null;
      
      private var btn6:Button = null;
      
      private var btn7:Button = null;
      
      private var btn8:Button = null;
      
      private var btn9:Button = null;
      
      private var btn4:Button = null;
      
      private var _core:Core = Core.getInstance();
      
      private var btn10:Button = null;
      
      public var _SkillUseSlot_RemoveChild1:RemoveChild;
      
      public var _SkillUseSlot_RemoveChild2:RemoveChild;
      
      private var learnBtn:Boolean = true;
      
      private var _data:Object;
      
      mx_internal var _watchers:Array = [];
      
      private var _skillType:String = "";
      
      private var _1464792627btnReqSkillStyleName:String = "";
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _maxLevel:uint = 10;
      
      private var _tempLearch:int = 0;
      
      private var _1991153647skillSlot:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":320,
               "height":41,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"skillSlot",
                  "events":{
                     "rollOver":"__skillSlot_rollOver",
                     "rollOut":"__skillSlot_rollOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "y":3,
                        "x":6.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"label1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":12,
                        "width":71.55,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"levelBtnCanvas",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":206.65,
                        "height":26.5,
                        "x":100.35,
                        "y":7.5,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btnReqSkill",
                           "events":{
                              "click":"__btnReqSkill_click",
                              "rollOver":"__btnReqSkill_rollOver",
                              "rollOut":"__btnReqSkill_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "enabled":false,
                                 "height":26,
                                 "width":27.5
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function SkillUseSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 320;
         this.height = 41;
         this.styleName = "SkillUseBar";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.states = [_SkillUseSlot_State1_c(),_SkillUseSlot_State2_c()];
         this.addEventListener("creationComplete",___SkillUseSlot_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillUseSlot._watcherSetupUtil = param1;
      }
      
      public function set maxLevel(param1:uint) : void
      {
         this._maxLevel = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 10)
         {
            setMyVisible(_loc2_);
            _loc2_++;
         }
         skillSlot.filters = [];
         if(_core.data.hasData(skillVO.type,param1))
         {
            _loc3_ = _core.data.getGameData(skillVO.type,param1);
            slotData = _loc3_;
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + skillVO.type + "_" + param1,dataLoaded);
            _core.data.getGameData(skillVO.type,param1);
         }
         skillVO.giid = param1;
      }
      
      private function levelClicked(param1:MouseEvent) : void
      {
         var _loc2_:Button = Button(param1.currentTarget);
         var _loc3_:int = Number(_loc2_.id.slice(3));
         var _loc4_:GameDataEvent = new GameDataEvent(GameDataEvent.SKILL_LEVEL_CLICKED);
         _loc4_.data = {
            "skill":skillVO.slotData,
            "level":_loc3_,
            "slot":this,
            "event":param1
         };
         dispatchEvent(_loc4_);
      }
      
      public function set skillSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1991153647skillSlot;
         if(_loc2_ !== param1)
         {
            this._1991153647skillSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot",_loc2_,param1));
         }
      }
      
      private function showSkillTooltip(param1:int, param2:int) : void
      {
         var _loc4_:TipSkill = null;
         var _loc5_:Object = null;
         var _loc3_:Object = _core.getSkillData(param1,param2);
         if(_loc3_)
         {
            _loc4_ = TipSkill(_core.view.getUI(ViewManager.TOOLTIP_SKILL));
            _loc5_ = {};
            _loc5_.temp = _loc3_;
            _loc4_.object = _loc5_;
            _loc4_.show();
         }
      }
      
      private function skillSlotRollOver() : void
      {
         if(_tempLearch == -1)
         {
            skillSlot.filters = [GamePredef.FILTER_SLOT_SKILL_01];
            return;
         }
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:Event = new Event(Slot.EVENT_SLOT_DCLICK);
         dispatchEvent(_loc2_);
      }
      
      public function __skillSlot_rollOver(param1:MouseEvent) : void
      {
         skillSlotRollOver();
      }
      
      private function enableLearnBtn() : void
      {
         var _loc6_:* = undefined;
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_GUILD).skillDevData;
         var _loc2_:int = 0;
         if(_tempLearch != -1)
         {
            _loc2_ = int(skillVO.level);
         }
         var _loc3_:* = GameData.d[GamePredef.TBL_SKILL][skillVO.giid].codeName;
         var _loc4_:* = DataManager.getInstance().gameDataIndex[GamePredef.TBL_SKILL][_loc3_];
         var _loc5_:Number = -1;
         for(_loc6_ in _loc4_)
         {
            if(_loc1_[_loc4_[_loc6_].id] != null)
            {
               _loc5_ = Number(_loc4_[_loc6_].id);
               break;
            }
         }
         if(_loc5_ == -1)
         {
            btnReqSkill.enabled = false;
            return;
         }
         if(ToolKit.isBigThan(GameData.d[GamePredef.TBL_SKILL][_loc5_].level,_loc2_))
         {
            btnReqSkill.enabled = true;
         }
         else
         {
            btnReqSkill.enabled = false;
         }
      }
      
      public function set giids(param1:Object) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 10)
         {
            setMyVisible(_loc2_);
            _loc2_++;
         }
         if(param1.creKind == ItemConfig.JUSTICE_SKILL_CREKIND)
         {
            this.currentState = "couple";
         }
         _tempLearch = param1.temp;
         if(_core.data.hasData(skillVO.type,param1.id))
         {
            slotData = _core.data.getGameData(skillVO.type,param1.id);
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + skillVO.type + "_" + param1.id,dataLoaded);
            _core.data.getGameData(skillVO.type,param1.id);
         }
         skillVO.giid = param1.id;
         if(param1.position !== undefined)
         {
            skillVO.position = param1.position;
         }
         if(param1.kind !== undefined)
         {
            skillVO.kind = param1.kind;
         }
      }
      
      private function _SkillUseSlot_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _SkillUseSlot_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_SkillUseSlot_RemoveChild1",_SkillUseSlot_RemoveChild1);
         return _loc1_;
      }
      
      private function _SkillUseSlot_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _SkillUseSlot_SetProperty2 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 150;
         BindingManager.executeBindings(this,"_SkillUseSlot_SetProperty2",_SkillUseSlot_SetProperty2);
         return _loc1_;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            alpha = 0.5;
         }
         else
         {
            alpha = 1;
         }
      }
      
      public function ___SkillUseSlot_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         generateControls();
      }
      
      public function __btnReqSkill_click(param1:MouseEvent) : void
      {
         learn();
      }
      
      public function get type() : int
      {
         return skillVO.type;
      }
      
      private function learn() : void
      {
         var msgString:String;
         var func:Function = null;
         btnReqSkill.enabled = false;
         msgString = "";
         if(_tempLearch == -1)
         {
            msgString = Language.SKILLUSESLOT_S[0].toString().replace("{skillName}",label1.text);
         }
         else
         {
            msgString = Language.SKILLUSESLOT_S[1].toString().replace("{skillName}",label1.text);
         }
         func = function(param1:CloseEvent):void
         {
            var _loc2_:Object = null;
            var _loc3_:Object = null;
            var _loc4_:Object = null;
            var _loc5_:Object = null;
            if(param1.detail == Alert.YES)
            {
               _loc2_ = _core.getSkillData(skillVO.giid,int(skillVO.level));
               if(!ToolKit.isEqual(_loc2_.useEnv,4) && !ToolKit.isEqual(_loc2_.useEnv,5) && !ToolKit.isEqual(_loc2_.useEnv,3))
               {
                  if(_tempLearch == -1)
                  {
                     _loc3_ = _core.skillBookBySkillName(label1.text);
                     _loc4_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,_loc3_.id);
                     _core.remote.useItem(GamePredef.MOUSE_TARGET_CHA,-1,_loc4_.slot.id);
                  }
                  else
                  {
                     _loc5_ = _core.getSkillData(skillVO.giid,int(skillVO.level) + 1);
                     _core.remote.call("skillLearnByClient",new Responder(onSkillLearnByClient),_loc5_.id,skillVO.position);
                  }
               }
               else if(ToolKit.isEqual(_loc2_.useEnv,4))
               {
                  if(_tempLearch == -1)
                  {
                     _core.remote.call("addGuildSkill",null,_loc2_.id);
                  }
                  else
                  {
                     _loc5_ = _core.getSkillData(skillVO.giid,int(skillVO.level) + 1);
                     _core.remote.call("improveGuildSkill",new Responder(onSkillLearnByClient),_loc5_.id);
                  }
               }
               else if(ToolKit.isEqual(_loc2_.useEnv,5))
               {
                  if(_tempLearch == -1)
                  {
                     _core.remote.call("addMagicWeaponSkill",null,_loc2_.id,skillVO.position);
                  }
                  else
                  {
                     _loc5_ = _core.getSkillData(skillVO.giid,int(skillVO.level) + 1);
                     _core.remote.call("skillLearnByClient",new Responder(onSkillLearnByClient),_loc5_.id,skillVO.position);
                  }
               }
               else if(ToolKit.isEqual(_loc2_.useEnv,3))
               {
                  if(_tempLearch == -1)
                  {
                     _core.remote.call("addTrainingSkill",null,_loc2_.id);
                  }
                  else
                  {
                     _loc5_ = _core.getSkillData(skillVO.giid,int(skillVO.level) + 1);
                     _core.remote.call("skillLearnByClient",new Responder(onSkillLearnByClient),_loc5_.id);
                  }
               }
            }
            else
            {
               btnReqSkill.enabled = true;
            }
         };
         Alert.show(msgString,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function __btnReqSkill_rollOver(param1:MouseEvent) : void
      {
         showTipForDemand();
      }
      
      public function clean() : void
      {
         var _loc2_:Button = null;
         skillVO.giid = -1;
         skillVO.slotData = null;
         skillSlot.clearIcon();
         skillVO.name = "";
         skillVO.level = "";
         levelBtnCanvas.visible = false;
         var _loc1_:int = 1;
         while(_loc1_ <= 10)
         {
            _loc2_ = Button(this["btn" + _loc1_]);
            if(_loc2_)
            {
               _loc2_.enabled = false;
               _loc2_.toolTip = "";
            }
            _loc1_++;
         }
         skillSlot.enabled = true;
         _tempLearch = 0;
         _skill = null;
         btnReqSkillStyleName = "";
         btnReqSkillLabel = "";
         learnBtn = true;
         if(btnReqSkill)
         {
            btnReqSkill.visible = true;
            btnReqSkill.enabled = false;
         }
         _maxLevel = 10;
         _data = null;
      }
      
      private function generateControls() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Button = null;
         var _loc1_:int = 3;
         if(_skillType == "character")
         {
            _loc1_ = 10;
         }
         _loc2_ = 1;
         while(_loc2_ <= _loc1_)
         {
            _loc3_ = new Button();
            _loc3_.id = "btn" + _loc2_;
            _loc3_.styleName = "BtnSkillLevel" + _loc2_;
            _loc3_.enabled = false;
            _loc3_.height = 26;
            _loc3_.addEventListener(MouseEvent.CLICK,levelClicked);
            _loc3_.addEventListener(MouseEvent.ROLL_OVER,showTip);
            _loc3_.addEventListener(MouseEvent.ROLL_OUT,hideTip);
            levelBtnCanvas.addChildAt(_loc3_,_loc2_ - 1);
            this["btn" + _loc2_] = _loc3_;
            setMyVisible(_loc2_);
            _loc2_++;
         }
         btn1.enabled = true;
         if(skillVO.level != "")
         {
            _loc2_ = 1;
            while(_loc2_ <= Number(skillVO.level))
            {
               enableBtn(_loc2_);
               _loc2_++;
            }
         }
      }
      
      private function enableBtnReqSkill(param1:int) : void
      {
         var _loc2_:int = param1;
         skillSlot.filters = [];
         btnReqSkill.enabled = false;
         if(_loc2_ == _maxLevel)
         {
            btnReqSkillStyleName = "BtnSquGreen";
            btnReqSkillLabel = Language.SKILLUSESLOT_U[0];
            return;
         }
         btnReqSkillStyleName = "BtnSquGreen";
         btnReqSkillLabel = Language.SKILLUSESLOT_U[1];
         if(_tempLearch == -1)
         {
            skillSlot.filters = [GamePredef.FILTER_SLOT_SKILL_01];
            btnReqSkillStyleName = "BtnSquGreen";
            btnReqSkillLabel = Language.SKILLUSESLOT_U[2];
            skillSlot.enabled = false;
            _loc2_ = 0;
         }
         var _loc3_:Object = _core.getSkillData(skillVO.giid,_loc2_ + 1);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Object = _core.skillBookBySkillName(_loc3_.name);
         if(_core.player.level >= Number(_loc3_.reqLevel) && _core.player.expSkill >= Number(_loc3_.expSkill) && (_core.player.money >= Number(_loc3_.price) || _core.player.moneyBind >= Number(_loc3_.price)) && (Boolean(_core.player.cl >= int(_loc3_.reqCL) && int(_loc3_.reqCL) != GamePredef.SKILL_REQUEST_CHAR_LEVEL) || Boolean(int(_loc3_.reqCL) == GamePredef.SKILL_REQUEST_CHAR_LEVEL && _core.player.expRe)))
         {
            if(ToolKit.isEqual(_loc3_.useEnv,4))
            {
               if(_core.player.guild != null)
               {
                  if(_core.view.getUI(ViewManager.PANEL_GUILD).skillDevData == null)
                  {
                     _core.view.getUI(ViewManager.PANEL_GUILD).getGuildPrivateSkillData(guildSkillDataResponser);
                     btnReqSkill.enabled = false;
                     return;
                  }
                  enableLearnBtn();
               }
            }
            if(_tempLearch == -1 && !ToolKit.isEqual(_loc3_.useEnv,5))
            {
               if(Boolean(_loc4_) && _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,_loc4_.id) <= 0)
               {
                  btnReqSkill.enabled = false;
               }
            }
            else
            {
               btnReqSkill.enabled = true;
            }
            if(ToolKit.isEqual(_loc3_.useEnv,3))
            {
               btnReqSkill.enabled = true;
            }
         }
      }
      
      private function dataLoaded(param1:GameDataEvent) : void
      {
         if(param1.data.data)
         {
            param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
            giid = param1.data.index;
         }
      }
      
      public function reset() : void
      {
         skillSlot.reset();
      }
      
      public function set levelBtnCanvas(param1:HBox) : void
      {
         var _loc2_:Object = this._987030448levelBtnCanvas;
         if(_loc2_ !== param1)
         {
            this._987030448levelBtnCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtnCanvas",_loc2_,param1));
         }
      }
      
      private function guildSkillDataResponser(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         _core.view.getUI(ViewManager.PANEL_GUILD).skillDevData = param1;
         enableLearnBtn();
      }
      
      private function onUseItem() : void
      {
         _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).update();
      }
      
      public function __btnReqSkill_rollOut(param1:MouseEvent) : void
      {
         hideTipForDemand();
      }
      
      public function set skillType(param1:String) : void
      {
         _skillType = param1;
      }
      
      private function _SkillUseSlot_SetProperty1_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "width";
         _loc1_.value = 160;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get btnReqSkillLabel() : String
      {
         return this._471817573btnReqSkillLabel;
      }
      
      private function showTip(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Object = param1.currentTarget;
         if(_loc2_.enabled)
         {
            _loc3_ = Number(_loc2_.id.slice(3));
            showSkillTooltip(skillVO.giid,_loc3_);
         }
      }
      
      public function set stackMax(param1:int) : void
      {
      }
      
      public function __skillSlot_rollOut(param1:MouseEvent) : void
      {
         skillSlotRollOut();
      }
      
      public function get slotType() : int
      {
         return skillSlot.slotType;
      }
      
      public function set type(param1:int) : void
      {
         skillVO.type = param1;
      }
      
      public function set learnAble(param1:Boolean) : void
      {
         learnBtn = param1;
         if(btnReqSkill)
         {
            btnReqSkill.visible = param1;
         }
      }
      
      public function get giid() : Number
      {
         return skillVO.giid;
      }
      
      public function get maxLevel() : uint
      {
         return _maxLevel;
      }
      
      public function set label1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1110417475label1;
         if(_loc2_ !== param1)
         {
            this._1110417475label1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label1",_loc2_,param1));
         }
      }
      
      private function _SkillUseSlot_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _SkillUseSlot_SetProperty5 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 37;
         BindingManager.executeBindings(this,"_SkillUseSlot_SetProperty5",_SkillUseSlot_SetProperty5);
         return _loc1_;
      }
      
      private function hideTipForDemand() : void
      {
         var _loc1_:TipReqSkill = TipReqSkill(_core.view.getUI(ViewManager.TOOLTIP_REQSKILL));
         _loc1_.hide();
      }
      
      public function restore() : void
      {
         skillSlot.restore();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillUseSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillUseSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_SkillUseSlotWatcherSetupUtil");
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
      
      private function set btnReqSkillStyleName(param1:String) : void
      {
         var _loc2_:Object = this._1464792627btnReqSkillStyleName;
         if(_loc2_ !== param1)
         {
            this._1464792627btnReqSkillStyleName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnReqSkillStyleName",_loc2_,param1));
         }
      }
      
      public function get selected() : Boolean
      {
         return alpha == 0.5;
      }
      
      public function set btnReqSkill(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1355324111btnReqSkill;
         if(_loc2_ !== param1)
         {
            this._1355324111btnReqSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnReqSkill",_loc2_,param1));
         }
      }
      
      public function set slotData(param1:Object) : void
      {
         var _loc2_:int = 0;
         _data = param1;
         if(param1)
         {
            skillVO.giid = param1.id;
            skillVO.slotData = param1;
            skillVO.name = param1.name;
            skillVO.level = param1.level;
            levelBtnCanvas.visible = true;
            _loc2_ = 1;
            while(_loc2_ <= param1.level)
            {
               enableBtn(_loc2_);
               _loc2_++;
            }
            if(_tempLearch != 0)
            {
               enableBtnReqSkill(param1.level);
            }
         }
      }
      
      private function skillSlotRollOut() : void
      {
         if(_tempLearch == -1)
         {
            skillSlot.filters = [GamePredef.FILTER_SLOT_SKILL_01];
            return;
         }
      }
      
      private function set skillVO(param1:SkillSlotVO) : void
      {
         var _loc2_:Object = this._2147321034skillVO;
         if(_loc2_ !== param1)
         {
            this._2147321034skillVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillVO",_loc2_,param1));
         }
      }
      
      public function set index(param1:int) : void
      {
         skillVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      private function _SkillUseSlot_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "couple";
         _loc1_.overrides = [_SkillUseSlot_RemoveChild2_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtnCanvas() : HBox
      {
         return this._987030448levelBtnCanvas;
      }
      
      public function set stackNum(param1:int) : void
      {
      }
      
      private function showTipForDemand() : void
      {
         var _loc3_:TipReqSkill = null;
         var _loc4_:Object = null;
         var _loc1_:int = getMaxLevelSkill();
         var _loc2_:Object = null;
         _loc2_ = _core.getSkillData(skillVO.giid,_loc1_ + 1);
         if(_loc2_)
         {
            _loc3_ = TipReqSkill(_core.view.getUI(ViewManager.TOOLTIP_REQSKILL));
            _loc4_ = {};
            _loc4_.temp = _loc1_;
            _loc4_.skill = _loc2_;
            _loc4_.position = skillVO.position;
            if(Boolean(_loc2_) && Boolean(GamePredef.LIFE_SKILL_PROP_MAP[_loc2_.type]))
            {
               _loc4_.dex = _core.player.property[GamePredef.LIFE_SKILL_PROP_MAP[_loc2_.type]] || 0;
            }
            _loc3_.object = _loc4_;
            _loc3_.show();
         }
      }
      
      private function _SkillUseSlot_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _SkillUseSlot_SetProperty4 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 99.35;
         BindingManager.executeBindings(this,"_SkillUseSlot_SetProperty4",_SkillUseSlot_SetProperty4);
         return _loc1_;
      }
      
      private function _SkillUseSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = btnReqSkill;
         _loc1_ = levelBtnCanvas;
         _loc1_ = skillSlot;
         _loc1_ = levelBtnCanvas;
         _loc1_ = label1;
         _loc1_ = btnReqSkill;
         _loc1_ = skillVO.slotData;
         _loc1_ = skillVO.type;
         _loc1_ = skillVO.giid;
         _loc1_ = skillVO.name;
         _loc1_ = btnReqSkillStyleName;
         _loc1_ = learnBtn;
         _loc1_ = btnReqSkillLabel;
      }
      
      public function get slotData() : Object
      {
         return _data;
      }
      
      public function update() : void
      {
         skillSlot.update();
      }
      
      [Bindable(event="propertyChange")]
      private function get skillVO() : SkillSlotVO
      {
         return this._2147321034skillVO;
      }
      
      public function get stackMax() : int
      {
         return 0;
      }
      
      [Bindable(event="propertyChange")]
      private function get btnReqSkillStyleName() : String
      {
         return this._1464792627btnReqSkillStyleName;
      }
      
      private function set btnReqSkillLabel(param1:String) : void
      {
         var _loc2_:Object = this._471817573btnReqSkillLabel;
         if(_loc2_ !== param1)
         {
            this._471817573btnReqSkillLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnReqSkillLabel",_loc2_,param1));
         }
      }
      
      public function get index() : int
      {
         return skillVO.index;
      }
      
      private function onSkillLearnByClient(param1:Boolean) : void
      {
         if(param1)
         {
            if(_core.view.getUI(ViewManager.PANEL_SKILLMANAGER).visible)
            {
               _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).update();
            }
         }
      }
      
      public function initView() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get btnReqSkill() : BasicGlowButton
      {
         return this._1355324111btnReqSkill;
      }
      
      private function enableBtn(param1:int) : void
      {
         var _loc2_:Button = Button(this["btn" + param1]);
         if(!_loc2_)
         {
            return;
         }
         if(_tempLearch == -1)
         {
            _loc2_.enabled = false;
            return;
         }
         _loc2_.enabled = true;
      }
      
      public function get stackNum() : int
      {
         return 0;
      }
      
      private function _SkillUseSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return btnReqSkill;
         },function(param1:DisplayObject):void
         {
            _SkillUseSlot_RemoveChild1.target = param1;
         },"_SkillUseSlot_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return levelBtnCanvas;
         },function(param1:Object):void
         {
            _SkillUseSlot_SetProperty2.target = param1;
         },"_SkillUseSlot_SetProperty2.target");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return skillSlot;
         },function(param1:Object):void
         {
            _SkillUseSlot_SetProperty3.target = param1;
         },"_SkillUseSlot_SetProperty3.target");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return levelBtnCanvas;
         },function(param1:Object):void
         {
            _SkillUseSlot_SetProperty4.target = param1;
         },"_SkillUseSlot_SetProperty4.target");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return label1;
         },function(param1:Object):void
         {
            _SkillUseSlot_SetProperty5.target = param1;
         },"_SkillUseSlot_SetProperty5.target");
         result[4] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnReqSkill;
         },function(param1:DisplayObject):void
         {
            _SkillUseSlot_RemoveChild2.target = param1;
         },"_SkillUseSlot_RemoveChild2.target");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return skillVO.slotData;
         },function(param1:Object):void
         {
            skillSlot.slotData = param1;
         },"skillSlot.slotData");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return skillVO.type;
         },function(param1:int):void
         {
            skillSlot.type = param1;
         },"skillSlot.type");
         result[7] = binding;
         binding = new Binding(this,function():Number
         {
            return skillVO.giid;
         },function(param1:Number):void
         {
            skillSlot.giid = param1;
         },"skillSlot.giid");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = skillVO.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label1.text = param1;
         },"label1.text");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return btnReqSkillStyleName;
         },function(param1:Object):void
         {
            btnReqSkill.styleName = param1;
         },"btnReqSkill.styleName");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return learnBtn;
         },function(param1:Boolean):void
         {
            btnReqSkill.visible = param1;
         },"btnReqSkill.visible");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = btnReqSkillLabel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnReqSkill.label = param1;
         },"btnReqSkill.label");
         result[12] = binding;
         return result;
      }
      
      private function setMyVisible(param1:uint) : void
      {
         if(this["btn" + param1])
         {
            this["btn" + param1].visible = param1 <= _maxLevel;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label1() : RoundedLabel
      {
         return this._1110417475label1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot() : ItemSlot
      {
         return this._1991153647skillSlot;
      }
      
      private function _SkillUseSlot_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _SkillUseSlot_SetProperty3 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_SkillUseSlot_SetProperty3",_SkillUseSlot_SetProperty3);
         return _loc1_;
      }
      
      private function _SkillUseSlot_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "pet";
         _loc1_.overrides = [_SkillUseSlot_RemoveChild1_i(),_SkillUseSlot_SetProperty1_c(),_SkillUseSlot_SetProperty2_i(),_SkillUseSlot_SetProperty3_i(),_SkillUseSlot_SetProperty4_i(),_SkillUseSlot_SetProperty5_i()];
         return _loc1_;
      }
      
      public function get isDragAble() : Boolean
      {
         return skillVO.kind == 1 || skillVO.kind == 3 || skillVO.kind == 4;
      }
      
      private function hideTip(param1:Event) : void
      {
         var _loc2_:TipSkill = TipSkill(_core.view.getUI(ViewManager.TOOLTIP_SKILL));
         _loc2_.hide();
      }
      
      private function getMaxLevelSkill() : int
      {
         var _loc3_:Button = null;
         var _loc1_:int = 0;
         var _loc2_:int = 1;
         while(_loc2_ <= 10)
         {
            _loc3_ = Button(this["btn" + _loc2_]);
            if(Boolean(_loc3_) && _loc3_.enabled)
            {
               if(_loc2_ >= _loc1_)
               {
                  _loc1_ = _loc2_;
               }
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function _SkillUseSlot_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _SkillUseSlot_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_SkillUseSlot_RemoveChild2",_SkillUseSlot_RemoveChild2);
         return _loc1_;
      }
   }
}

