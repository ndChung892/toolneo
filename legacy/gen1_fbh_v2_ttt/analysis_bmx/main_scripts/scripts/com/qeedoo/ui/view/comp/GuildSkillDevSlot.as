package com.qeedoo.ui.view.comp
{
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildSkillDevSlot extends Canvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _gid:Number;
      
      mx_internal var _bindings:Array = [];
      
      private var _2147321034skillVO:SkillSlotVO = new SkillSlotVO();
      
      private var _1426038344btnDevSkill:BasicGlowButton;
      
      private var _471817573btnReqSkillLabel:String = "";
      
      private var _3034453btn1:Button;
      
      private var _94068091btn10:Button;
      
      private var _3034455btn3:Button;
      
      private var _3034457btn5:Button;
      
      private var _987030448levelBtnCanvas:HBox;
      
      private var _3034459btn7:Button;
      
      private var learn:int;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3034460btn8:Button;
      
      private var _skill:Object = null;
      
      private var _1110417475label1:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _data:Object;
      
      private var _3034454btn2:Button;
      
      mx_internal var _watchers:Array = [];
      
      private var _3034456btn4:Button;
      
      private var _3034458btn6:Button;
      
      private var _1464792627btnReqSkillStyleName:String = "";
      
      private var _3034461btn9:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1991153647skillSlot:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":340,
               "height":41,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"skillSlot",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "y":5,
                        "x":6.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"label1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
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
                        "width":213,
                        "height":26.5,
                        "x":110,
                        "y":10.5,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn1",
                           "events":{
                              "rollOver":"__btn1_rollOver",
                              "rollOut":"__btn1_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel1",
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn2",
                           "events":{
                              "rollOver":"__btn2_rollOver",
                              "rollOut":"__btn2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel2",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn3",
                           "events":{
                              "rollOver":"__btn3_rollOver",
                              "rollOut":"__btn3_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel3",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn4",
                           "events":{
                              "rollOver":"__btn4_rollOver",
                              "rollOut":"__btn4_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel4",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn5",
                           "events":{
                              "rollOver":"__btn5_rollOver",
                              "rollOut":"__btn5_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel5",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn6",
                           "events":{
                              "rollOver":"__btn6_rollOver",
                              "rollOut":"__btn6_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel6",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn7",
                           "events":{
                              "rollOver":"__btn7_rollOver",
                              "rollOut":"__btn7_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel7",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn8",
                           "events":{
                              "rollOver":"__btn8_rollOver",
                              "rollOut":"__btn8_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel8",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn9",
                           "events":{
                              "rollOver":"__btn9_rollOver",
                              "rollOut":"__btn9_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel9",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn10",
                           "events":{
                              "rollOver":"__btn10_rollOver",
                              "rollOut":"__btn10_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSkillLevel10",
                                 "enabled":false,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btnDevSkill",
                           "events":{
                              "click":"__btnDevSkill_click",
                              "rollOver":"__btnDevSkill_rollOver",
                              "rollOut":"__btnDevSkill_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnSquGreen",
                                 "height":26,
                                 "width":33
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function GuildSkillDevSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 340;
         this.height = 41;
         this.styleName = "SkillUseBar";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildSkillDevSlot._watcherSetupUtil = param1;
      }
      
      public function __btn3_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set giid(param1:Number) : void
      {
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
         var _loc3_:Object = _core.getSkillData(param1,param2);
         var _loc4_:TipSkill = TipSkill(_core.view.getUI(ViewManager.TOOLTIP_SKILL));
         var _loc5_:Object = {};
         _loc5_.temp = _loc3_;
         _loc4_.object = _loc5_;
         _loc4_.show();
      }
      
      public function __btn10_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function __btn4_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _GuildSkillDevSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = skillVO.slotData;
         _loc1_ = skillVO.type;
         _loc1_ = skillVO.giid;
         _loc1_ = skillVO.name;
         _loc1_ = Language.GUILDSKILLDEVSLOT_U[1];
      }
      
      private function _GuildSkillDevSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return skillVO.slotData;
         },function(param1:Object):void
         {
            skillSlot.slotData = param1;
         },"skillSlot.slotData");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return skillVO.type;
         },function(param1:int):void
         {
            skillSlot.type = param1;
         },"skillSlot.type");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return skillVO.giid;
         },function(param1:Number):void
         {
            skillSlot.giid = param1;
         },"skillSlot.giid");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = skillVO.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label1.text = param1;
         },"label1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDSKILLDEVSLOT_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnDevSkill.label = param1;
         },"btnDevSkill.label");
         result[4] = binding;
         return result;
      }
      
      public function set giids(param1:Object) : void
      {
         var _loc2_:Object = null;
         learn = param1.learn;
         if(_core.data.hasData(skillVO.type,param1.id))
         {
            _loc2_ = _core.data.getGameData(skillVO.type,param1.id);
            slotData = _loc2_;
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + skillVO.type + "_" + param1.id,dataLoaded);
            _core.data.getGameData(skillVO.type,param1.id);
         }
         skillVO.giid = param1.id;
      }
      
      public function __btnDevSkill_rollOut(param1:MouseEvent) : void
      {
         hideTipForDemand();
      }
      
      public function __btn5_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function get type() : int
      {
         return skillVO.type;
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
            _loc2_.enabled = false;
            _loc2_.toolTip = "";
            _loc1_++;
         }
      }
      
      private function enableBtnReqSkill(param1:int) : void
      {
      }
      
      public function reset() : void
      {
         skillSlot.reset();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : Button
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : Button
      {
         return this._3034455btn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5() : Button
      {
         return this._3034457btn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6() : Button
      {
         return this._3034458btn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7() : Button
      {
         return this._3034459btn7;
      }
      
      public function __btn6_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
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
      
      public function __btnDevSkill_click(param1:MouseEvent) : void
      {
         developSkill();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn8() : Button
      {
         return this._3034460btn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : Button
      {
         return this._3034454btn2;
      }
      
      public function get slotType() : int
      {
         return skillSlot.slotType;
      }
      
      private function enableDevBtn() : void
      {
         if(ToolKit.isEqual(skillVO.level,10))
         {
            btnDevSkill.enabled = false;
         }
      }
      
      public function __btn7_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set btnDevSkill(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1426038344btnDevSkill;
         if(_loc2_ !== param1)
         {
            this._1426038344btnDevSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnDevSkill",_loc2_,param1));
         }
      }
      
      public function set stackMax(param1:int) : void
      {
      }
      
      private function getToLearnSkillId() : String
      {
         var _loc4_:* = undefined;
         if(ToolKit.isEqual(skillVO.level,10))
         {
            return null;
         }
         var _loc1_:Number = 0;
         if(learn != -1)
         {
            _loc1_ = Number(skillVO.level);
         }
         var _loc2_:String = GameData.d[GamePredef.TBL_SKILL][skillVO.giid].codeName;
         var _loc3_:Object = DataManager.getInstance().gameDataIndex[GamePredef.TBL_SKILL][_loc2_];
         for(_loc4_ in _loc3_)
         {
            if(_loc1_ + 1 == Number(_loc3_[_loc4_].level))
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : Button
      {
         return this._3034456btn4;
      }
      
      private function hideTipForDemand() : void
      {
         var _loc1_:TipDevSkill = TipDevSkill(_core.view.getUI(ViewManager.TOOLTIP_DEVSKILL));
         _loc1_.hide();
      }
      
      private function dataLoaded(param1:GameDataEvent) : void
      {
         if(param1.data.data)
         {
            param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
            giid = param1.data.index;
         }
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
      
      [Bindable(event="propertyChange")]
      public function get btn10() : Button
      {
         return this._94068091btn10;
      }
      
      public function set type(param1:int) : void
      {
         skillVO.type = param1;
      }
      
      public function set gid(param1:Number) : void
      {
         this._gid = param1;
      }
      
      public function __btn1_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function __btn4_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function __btn5_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function get giid() : Number
      {
         return skillVO.giid;
      }
      
      public function __btn7_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function restore() : void
      {
         skillSlot.restore();
      }
      
      public function __btn2_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildSkillDevSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildSkillDevSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_GuildSkillDevSlotWatcherSetupUtil");
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
      private function get btnReqSkillLabel() : String
      {
         return this._471817573btnReqSkillLabel;
      }
      
      public function __btn6_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function __btn8_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function __btn9_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      public function __btn3_rollOut(param1:MouseEvent) : void
      {
         hideTip();
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
      
      public function get selected() : Boolean
      {
         return alpha == 0.5;
      }
      
      public function __btn8_rollOut(param1:MouseEvent) : void
      {
         hideTip();
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
            enableDevBtn();
         }
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
      
      public function __btnDevSkill_rollOver(param1:MouseEvent) : void
      {
         showTipForDemand();
      }
      
      public function set btn1(param1:Button) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set index(param1:int) : void
      {
         skillVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn9() : Button
      {
         return this._3034461btn9;
      }
      
      public function set btn5(param1:Button) : void
      {
         var _loc2_:Object = this._3034457btn5;
         if(_loc2_ !== param1)
         {
            this._3034457btn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:Button) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      private function showTipForDemand() : void
      {
         var _loc1_:int = getMaxLevelSkill();
         var _loc2_:Object = null;
         _loc2_ = _core.getSkillData(skillVO.giid,_loc1_ + 1);
         var _loc3_:TipDevSkill = TipDevSkill(_core.view.getUI(ViewManager.TOOLTIP_DEVSKILL));
         var _loc4_:Object = {};
         _loc4_.temp = _loc1_;
         _loc4_.skill = _loc2_;
         _loc3_.object = _loc4_;
         _loc3_.show();
      }
      
      public function set btn4(param1:Button) : void
      {
         var _loc2_:Object = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      public function __btn9_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function __btn1_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set stackNum(param1:int) : void
      {
      }
      
      public function set btn7(param1:Button) : void
      {
         var _loc2_:Object = this._3034459btn7;
         if(_loc2_ !== param1)
         {
            this._3034459btn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7",_loc2_,param1));
         }
      }
      
      public function set btn8(param1:Button) : void
      {
         var _loc2_:Object = this._3034460btn8;
         if(_loc2_ !== param1)
         {
            this._3034460btn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn8",_loc2_,param1));
         }
      }
      
      public function set btn9(param1:Button) : void
      {
         var _loc2_:Object = this._3034461btn9;
         if(_loc2_ !== param1)
         {
            this._3034461btn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn9",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:Button) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnDevSkill() : BasicGlowButton
      {
         return this._1426038344btnDevSkill;
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
      
      private function set skillVO(param1:SkillSlotVO) : void
      {
         var _loc2_:Object = this._2147321034skillVO;
         if(_loc2_ !== param1)
         {
            this._2147321034skillVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillVO",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      private function get btnReqSkillStyleName() : String
      {
         return this._1464792627btnReqSkillStyleName;
      }
      
      public function initView() : void
      {
      }
      
      public function set btn6(param1:Button) : void
      {
         var _loc2_:Object = this._3034458btn6;
         if(_loc2_ !== param1)
         {
            this._3034458btn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6",_loc2_,param1));
         }
      }
      
      public function __btn2_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtnCanvas() : HBox
      {
         return this._987030448levelBtnCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get label1() : RoundedLabel
      {
         return this._1110417475label1;
      }
      
      private function enableBtn(param1:int) : void
      {
         var _loc2_:Button = Button(this["btn" + param1]);
         if(this.learn == -1)
         {
            _loc2_.enabled = false;
         }
         else
         {
            _loc2_.enabled = true;
         }
      }
      
      public function get stackNum() : int
      {
         return 0;
      }
      
      public function __btn10_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot() : ItemSlot
      {
         return this._1991153647skillSlot;
      }
      
      private function developSkill() : void
      {
         var _loc1_:* = getToLearnSkillId();
         if(_loc1_ == null)
         {
            Alert.show(Language.GUILDSKILLDEVSLOT_U[0]);
            return;
         }
         Core.getInstance().remote.call("developSkill",null,{
            "gid":_gid,
            "sid":_loc1_
         });
      }
      
      private function hideTip() : void
      {
         var _loc1_:TipSkill = TipSkill(_core.view.getUI(ViewManager.TOOLTIP_SKILL));
         _loc1_.hide();
      }
      
      private function getMaxLevelSkill() : int
      {
         var _loc3_:Button = null;
         var _loc1_:int = 0;
         var _loc2_:int = 1;
         while(_loc2_ <= 10)
         {
            _loc3_ = Button(this["btn" + _loc2_]);
            if(_loc3_.enabled)
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
      
      public function set btn10(param1:Button) : void
      {
         var _loc2_:Object = this._94068091btn10;
         if(_loc2_ !== param1)
         {
            this._94068091btn10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn10",_loc2_,param1));
         }
      }
   }
}

