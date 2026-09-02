package com.qeedoo.ui.view.compMain
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.PersonInfoVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.Property;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.compDragable.CharactorPanel;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PortraitCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var iconCode:String = "";
      
      private var _1184171033infoVO:PersonInfoVO;
      
      private var _104066928mpBar:Property;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var _109608054spBar:Property;
      
      public var _PortraitCanvas_RoundedLabel1:RoundedLabel;
      
      private var _116765vip:BasicGlowButton;
      
      private var _205996609btnLvUp:BasicGlowButton;
      
      private var _1959281015labelExp:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _99449323hpBar:Property;
      
      private var _382789291selfHeadPMFlag:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1191676748selfHead:Image;
      
      private var _99449908hpBtn:Button;
      
      public var _PortraitCanvas_Button3:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "propertiesFactory":function():Object
               {
                  return {
                     "width":192,
                     "height":57,
                     "styleName":"CanvasCharacterPortrait",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Property,
                        "id":"hpBar",
                        "events":{"click":"__hpBar_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":80,
                              "y":20,
                              "width":89,
                              "height":9,
                              "styleName":"ProgressHp"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Property,
                        "id":"mpBar",
                        "events":{"click":"__mpBar_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":80,
                              "y":30,
                              "width":89,
                              "height":9,
                              "styleName":"ProgressMp"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Property,
                        "id":"spBar",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":80,
                              "y":40,
                              "width":105,
                              "height":6,
                              "styleName":"ProgressSp"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Property,
                        "id":"expBar",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":80,
                              "y":47,
                              "width":105,
                              "height":6,
                              "styleName":"ProgressExp"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "id":"hpBtn",
                        "events":{"click":"__hpBtn_click"},
                        "stylesFactory":function():void
                        {
                           this.cornerRadius = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":175,
                              "y":19,
                              "visible":true,
                              "width":10,
                              "height":9
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "id":"mpBtn",
                        "events":{"click":"__mpBtn_click"},
                        "stylesFactory":function():void
                        {
                           this.cornerRadius = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":175,
                              "y":29,
                              "visible":true,
                              "width":10,
                              "height":9
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Image,
                        "id":"selfHead",
                        "events":{"click":"__selfHead_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "useHandCursor":true,
                              "buttonMode":true,
                              "width":49,
                              "x":5,
                              "height":47,
                              "y":5
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Image,
                        "id":"selfHeadPMFlag",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":27,
                              "x":5,
                              "height":24,
                              "y":1,
                              "visible":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"_PortraitCanvas_RoundedLabel1",
                        "events":{"click":"___PortraitCanvas_RoundedLabel1_click"},
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":86,
                              "x":84,
                              "y":3
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"labelExp",
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":62,
                              "y":1,
                              "width":22,
                              "text":"99"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "id":"_PortraitCanvas_Button3",
                        "events":{"click":"___PortraitCanvas_Button3_click"},
                        "stylesFactory":function():void
                        {
                           this.right = "4";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "y":3,
                              "label":"",
                              "styleName":"BtnUseItem"
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":BasicGlowButton,
               "id":"btnLvUp",
               "events":{"click":"__btnLvUp_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "x":198,
                     "y":0,
                     "styleName":"BtnLevelUp",
                     "width":46,
                     "height":22
                  };
               }
            }),new UIComponentDescriptor({
               "type":BasicGlowButton,
               "id":"vip",
               "events":{"click":"__vip_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "x":198,
                     "y":30,
                     "styleName":"BtnLevelUp",
                     "width":46,
                     "height":22,
                     "visible":true
                  };
               }
            })]};
         }
      });
      
      private var _1289197386expBar:Property;
      
      private var _104067513mpBtn:Button;
      
      private var _core:Core = Core.getInstance();
      
      public function PortraitCanvas()
      {
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PortraitCanvas._watcherSetupUtil = param1;
      }
      
      public function set btnLvUp(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._205996609btnLvUp;
         if(_loc2_ !== param1)
         {
            this._205996609btnLvUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLvUp",_loc2_,param1));
         }
      }
      
      public function updateCharHeadImg(param1:Number) : void
      {
         selfHead.source = ResManager.getIconUrl(param1);
      }
      
      private function recoverFullHpMp() : void
      {
         recoverFullHp(1,-1);
         recoverFullMp(1,-1);
      }
      
      public function set mpBtn(param1:Button) : void
      {
         var _loc2_:Object = this._104067513mpBtn;
         if(_loc2_ !== param1)
         {
            this._104067513mpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mpBtn",_loc2_,param1));
         }
      }
      
      public function __vip_click(param1:MouseEvent) : void
      {
         showPmPanel(infoVO);
      }
      
      private function changeLevelAddStyleName() : *
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
         (_loc1_ as CharactorPanel).setLevelUPStyleName();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PortraitCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PortraitCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_PortraitCanvasWatcherSetupUtil");
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
      
      private function changeAddStyleName() : *
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
         (_loc1_ as CharactorPanel).setAddStyleName();
      }
      
      public function disableUI() : void
      {
         this.hpBtn.enabled = false;
         this.mpBtn.enabled = false;
         this.btnLvUp.enabled = false;
      }
      
      public function updateView(param1:Object) : void
      {
         update();
      }
      
      public function __mpBar_click(param1:MouseEvent) : void
      {
         recoverFullMp(1,-1);
      }
      
      public function recoverFullMp(param1:*, param2:*) : void
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc3_:Object = {
            158:300,
            125:600,
            126:1000,
            127:2000,
            322:3000,
            370:5000,
            1974:7000
         };
         var _loc4_:Array = [];
         var _loc5_:int = GamePredef.SLOT_SID_BAG[0] + 1;
         while(_loc5_ <= GamePredef.SLOT_SID_BAG[7])
         {
            _loc6_ = _core.data.getSlot({"sid":_loc5_});
            if((Boolean(_loc6_)) && _loc6_.type == GamePredef.TBL_ITEM_INSTANCE)
            {
               _loc7_ = _core.data.getData(GamePredef.TBL_ITEM_INSTANCE,_loc6_.itemId);
               if(_loc3_[_loc7_.tid])
               {
                  _loc4_.push({
                     "sid":_loc6_.id,
                     "priority":_loc3_[_loc7_.tid] - _loc7_.binded
                  });
               }
            }
            _loc5_++;
         }
         _loc4_.sortOn("priority",Array.NUMERIC);
         _core.remote.call("fullMpRecoverByItem",null,param1,param2,_loc4_);
      }
      
      public function setLevelUpBtn() : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc1_:String = _core.player.expSkill.toString();
         if(_core.player.level >= GamePredef.MAX_LEVEL)
         {
            _loc2_ = "-";
         }
         else
         {
            _loc3_ = _core.basic.levelUpExp(_core.player.level);
            _loc2_ = Math.round(_loc3_).toString();
         }
         expBar.toolTip = Language.CHARACTORPANEL_S[34].toString().replace("{exp}",_loc1_).replace("{next}",_loc2_);
         btnLvUp.toolTip = Language.CHARACTORPANEL_S[34].toString().replace("{exp}",_loc1_).replace("{next}",_loc2_);
         if(infoVO.currentExp >= infoVO.maxExp && _core.player.level < GamePredef.MAX_LEVEL)
         {
            if(_core.player.level < 20)
            {
               levelUp();
            }
            else if(null == GamePredef.GLOBAL_SETTING["sjan"] || GamePredef.GLOBAL_SETTING["sjan"] == false)
            {
               btnLvUp.visible = true;
            }
            else
            {
               btnLvUp.visible = false;
            }
         }
         else
         {
            btnLvUp.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelExp() : RoundedLabel
      {
         return this._1959281015labelExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get spBar() : Property
      {
         return this._109608054spBar;
      }
      
      public function ___PortraitCanvas_Button3_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_ITEM);
      }
      
      public function ___PortraitCanvas_RoundedLabel1_click(param1:MouseEvent) : void
      {
         recoverFullHpMp();
      }
      
      public function set selfHead(param1:Image) : void
      {
         var _loc2_:Object = this._1191676748selfHead;
         if(_loc2_ !== param1)
         {
            this._1191676748selfHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfHead",_loc2_,param1));
         }
      }
      
      public function __mpBtn_click(param1:MouseEvent) : void
      {
         showBloodAdd(2);
      }
      
      private function _PortraitCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "HP: " + hpBar.value + "/" + hpBar.maximum;
         _loc1_ = "MP: " + mpBar.value + "/" + mpBar.maximum;
         _loc1_ = "SP: " + spBar.value + "/" + spBar.maximum;
         _loc1_ = _core.bloodBag[1] > 0 ? (_core.bloodBag[1] == _core.bagMax[1] ? "BtnHp2" : "BtnHp1") : "BtnHp0";
         _loc1_ = _core.bloodBag[2] > 0 ? (_core.bloodBag[2] == _core.bagMax[2] ? "BtnMp2" : "BtnMp1") : "BtnMp0";
         _loc1_ = infoVO.resUrl;
         _loc1_ = Language.PORTRAITCANVAS_S[4];
         _loc1_ = infoVO.charName;
         _loc1_ = infoVO.level;
         _loc1_ = Language.PORTRAITCANVAS_S[5];
         _loc1_ = Language.PORTRAITCANVAS_U[0];
         _loc1_ = Language.PORTRAITCANVAS_U[3];
      }
      
      public function set spBar(param1:Property) : void
      {
         var _loc2_:Object = this._109608054spBar;
         if(_loc2_ !== param1)
         {
            this._109608054spBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spBar",_loc2_,param1));
         }
      }
      
      private function doLevelUp(param1:String) : void
      {
         var _loc2_:Number = _core.player.expSkill;
         var _loc3_:Number = _core.basic.levelUpExp(_core.player.level);
         if(_loc2_ >= _loc3_)
         {
            _core.remote.call("lvUp",new Responder(onLevelUp),_core.player.level,param1);
         }
         else
         {
            btnLvUp.visible = false;
         }
      }
      
      public function __selfHead_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHARACTOR);
         changeAddStyleName();
      }
      
      [Bindable(event="propertyChange")]
      public function get expBar() : Property
      {
         return this._1289197386expBar;
      }
      
      public function __btnLvUp_click(param1:MouseEvent) : void
      {
         levelUp();
         changeLevelAddStyleName();
      }
      
      public function updatePlayerPmFlag(param1:Number) : void
      {
         this.selfHeadPMFlag.visible = false;
         if(Boolean(param1) && Number(param1) > 0)
         {
            if(ResManager["PM_ZUAN" + param1])
            {
               this.selfHeadPMFlag.source = ResManager["PM_ZUAN" + param1];
               this.selfHeadPMFlag.visible = true;
            }
         }
         else
         {
            this.selfHeadPMFlag.visible = false;
         }
      }
      
      private function mouseAction(param1:MouseEvent, param2:int) : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
         {
            _core.sysMidMsg(Language.MAZE_INFO_PANEL_U[13]);
            return;
         }
         _core.view.getUI(ViewManager.PANEL_BAG).visible = true;
         param1.stopImmediatePropagation();
         if(param2 == GamePredef.ACTION_REPAIR_NOWEAR)
         {
            if(param1.ctrlKey)
            {
               _core.remote.repairAll(1);
               return;
            }
         }
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[param2]);
         _core.view.mouseState = param2;
         _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_CHA;
      }
      
      private function levelUp() : void
      {
         var func:Function;
         var _levelUp:Function = null;
         if(_core.player.level >= GamePredef.MAX_LEVEL)
         {
            btnLvUp.visible = false;
            return;
         }
         _levelUp = function(param1:String):void
         {
            var _loc2_:String = null;
            if(param1)
            {
               _loc2_ = MD5.hash(param1);
               doLevelUp(_loc2_);
            }
         };
         func = function(param1:CloseEvent):void
         {
            if(Alert.YES == param1.detail)
            {
               if(_core.delPass)
               {
                  doLevelUp(_core.delPass);
               }
               else
               {
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.PORTRAITCANVAS_U[0],_levelUp);
               }
            }
         };
         if(_core.player.level >= 20)
         {
            Alert.show(Language.PORTRAITCANVAS_U[2],"",Alert.YES | Alert.NO,this,func);
         }
         else
         {
            doLevelUp(null);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLvUp() : BasicGlowButton
      {
         return this._205996609btnLvUp;
      }
      
      public function set selfHeadPMFlag(param1:Image) : void
      {
         var _loc2_:Object = this._382789291selfHeadPMFlag;
         if(_loc2_ !== param1)
         {
            this._382789291selfHeadPMFlag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfHeadPMFlag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hpBtn() : Button
      {
         return this._99449908hpBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get mpBtn() : Button
      {
         return this._104067513mpBtn;
      }
      
      public function update() : void
      {
         if(_core.player)
         {
            gameObj = _core.player;
         }
      }
      
      public function set gameObj(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         if(infoVO == null)
         {
            infoVO = new PersonInfoVO();
         }
         var _loc2_:int = int(param1.level);
         if(param1.isLeader)
         {
            infoVO.isLeader = true;
         }
         else
         {
            infoVO.isLeader = false;
         }
         infoVO.level = _loc2_;
         infoVO.charName = param1.name;
         infoVO.charClass = _core.getClassName(param1.classId);
         infoVO.currentExp = param1.expSkill;
         infoVO.currentHp = param1.currentHp;
         infoVO.currentMp = param1.currentMp;
         infoVO.currentSp = param1.currentSp;
         infoVO.maxExp = _core.basic.levelUpExp(_loc2_);
         if(param1.property)
         {
            infoVO.maxHp = param1.property.finalHp;
            infoVO.maxMp = param1.property.finalMp;
            infoVO.maxSp = param1.property.finalSp;
         }
         else
         {
            infoVO.maxHp = param1.currentHp;
            infoVO.maxMp = param1.currentMp;
            infoVO.maxSp = param1.currentSp;
         }
         infoVO.resUrl = ResManager.getIconUrl(param1.iconCode);
         iconCode = param1.iconCode;
         hpBar.setProgress(infoVO.currentHp,infoVO.maxHp);
         mpBar.setProgress(infoVO.currentMp,infoVO.maxMp);
         spBar.setProgress(infoVO.currentSp,infoVO.maxSp);
         expBar.setProgress(infoVO.currentExp > infoVO.maxExp ? infoVO.maxExp : infoVO.currentExp,infoVO.maxExp);
         this.selfHeadPMFlag.visible = false;
         if(Boolean(_core.player) && Boolean(_core.player.pmLevel) && Number(_core.player.pmLevel) > 0)
         {
            if(ResManager["PM_ZUAN" + _core.player.pmLevel])
            {
               this.selfHeadPMFlag.source = ResManager["PM_ZUAN" + _core.player.pmLevel];
               this.selfHeadPMFlag.visible = true;
            }
         }
         _loc3_ = _core.player.expSkill.toString();
         if(_core.player.level >= GamePredef.MAX_LEVEL)
         {
            _loc4_ = "-";
         }
         else
         {
            _loc5_ = _core.basic.levelUpExp(_core.player.level);
            _loc4_ = Math.round(_loc5_).toString();
         }
         expBar.toolTip = Language.CHARACTORPANEL_S[34].toString().replace("{exp}",_loc3_).replace("{next}",_loc4_);
         btnLvUp.toolTip = Language.CHARACTORPANEL_S[34].toString().replace("{exp}",_loc3_).replace("{next}",_loc4_);
         if(infoVO.currentExp >= infoVO.maxExp && _core.player.level < GamePredef.MAX_LEVEL)
         {
            if(_core.player.level < 20)
            {
               levelUp();
            }
            else if(null == GamePredef.GLOBAL_SETTING["sjan"] || GamePredef.GLOBAL_SETTING["sjan"] == false)
            {
               btnLvUp.visible = true;
            }
            else
            {
               btnLvUp.visible = false;
            }
         }
         else
         {
            btnLvUp.visible = false;
         }
      }
      
      public function set labelExp(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1959281015labelExp;
         if(_loc2_ !== param1)
         {
            this._1959281015labelExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelExp",_loc2_,param1));
         }
      }
      
      public function setHpMp() : void
      {
         if(!_core.bloodBag[1] || _core.bloodBag[1] <= 0)
         {
            hpBtn.toolTip = Language.PORTRAITCANVAS_S[0];
            hpBtn.styleName = "BtnHp0";
         }
         else
         {
            hpBtn.toolTip = Language.PORTRAITCANVAS_S[1] + _core.bloodBag[1] + "/10000000";
            if(_core.bloodBag[1] == _core.bagMax[1])
            {
               hpBtn.styleName = "BtnHp2";
            }
            else
            {
               hpBtn.styleName = "BtnHp1";
            }
         }
         if(!_core.bloodBag[2] || _core.bloodBag[2] <= 0)
         {
            mpBtn.toolTip = Language.PORTRAITCANVAS_S[2];
            mpBtn.styleName = "BtnMp0";
         }
         else
         {
            mpBtn.toolTip = Language.PORTRAITCANVAS_S[3] + _core.bloodBag[2] + "/10000000";
            if(_core.bloodBag[2] == _core.bagMax[2])
            {
               mpBtn.styleName = "BtnMp2";
            }
            else
            {
               mpBtn.styleName = "BtnMp1";
            }
         }
      }
      
      private function set infoVO(param1:PersonInfoVO) : void
      {
         var _loc2_:Object = this._1184171033infoVO;
         if(_loc2_ !== param1)
         {
            this._1184171033infoVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoVO",_loc2_,param1));
         }
      }
      
      private function _PortraitCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "HP: " + hpBar.value + "/" + hpBar.maximum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            hpBar.toolTip = param1;
         },"hpBar.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "MP: " + mpBar.value + "/" + mpBar.maximum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mpBar.toolTip = param1;
         },"mpBar.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "SP: " + spBar.value + "/" + spBar.maximum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            spBar.toolTip = param1;
         },"spBar.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return _core.bloodBag[1] > 0 ? (_core.bloodBag[1] == _core.bagMax[1] ? "BtnHp2" : "BtnHp1") : "BtnHp0";
         },function(param1:Object):void
         {
            hpBtn.styleName = param1;
         },"hpBtn.styleName");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return _core.bloodBag[2] > 0 ? (_core.bloodBag[2] == _core.bagMax[2] ? "BtnMp2" : "BtnMp1") : "BtnMp0";
         },function(param1:Object):void
         {
            mpBtn.styleName = param1;
         },"mpBtn.styleName");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return infoVO.resUrl;
         },function(param1:Object):void
         {
            selfHead.source = param1;
         },"selfHead.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PORTRAITCANVAS_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selfHead.toolTip = param1;
         },"selfHead.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVO.charName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PortraitCanvas_RoundedLabel1.text = param1;
         },"_PortraitCanvas_RoundedLabel1.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVO.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            labelExp.htmlText = param1;
         },"labelExp.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PORTRAITCANVAS_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PortraitCanvas_Button3.toolTip = param1;
         },"_PortraitCanvas_Button3.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PORTRAITCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLvUp.label = param1;
         },"btnLvUp.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PORTRAITCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vip.label = param1;
         },"vip.label");
         result[11] = binding;
         return result;
      }
      
      public function set vip(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._116765vip;
         if(_loc2_ !== param1)
         {
            this._116765vip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfHead() : Image
      {
         return this._1191676748selfHead;
      }
      
      public function set hpBar(param1:Property) : void
      {
         var _loc2_:Object = this._99449323hpBar;
         if(_loc2_ !== param1)
         {
            this._99449323hpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpBar",_loc2_,param1));
         }
      }
      
      public function enableUI() : void
      {
         this.hpBtn.enabled = true;
         this.mpBtn.enabled = true;
         this.btnLvUp.enabled = true;
      }
      
      public function showPmPanel(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_PM);
         if(_loc2_)
         {
            _loc2_.initPanelData(param1);
         }
      }
      
      public function __hpBar_click(param1:MouseEvent) : void
      {
         recoverFullHp(1,-1);
      }
      
      public function initView() : void
      {
         update();
      }
      
      public function __hpBtn_click(param1:MouseEvent) : void
      {
         showBloodAdd(1);
      }
      
      private function onLevelUp(param1:Boolean) : void
      {
         if(param1 && _core.player.level > 20)
         {
            _core.view.show(ViewManager.PANEL_CHARACTOR);
         }
         if(_core.view.getUI(ViewManager.PANEL_ACTIVE).visible)
         {
            _core.view.getUI(ViewManager.PANEL_ACTIVE).visible = false;
            _core.view.getUI(ViewManager.PANEL_ACTIVE).visible = true;
         }
         if(_core.view.getUI(ViewManager.PANEL_SKILLMANAGER).visible)
         {
            _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).update();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vip() : BasicGlowButton
      {
         return this._116765vip;
      }
      
      private function showBloodAdd(param1:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_BLOODADD).showPanel(param1);
      }
      
      public function set mpBar(param1:Property) : void
      {
         var _loc2_:Object = this._104066928mpBar;
         if(_loc2_ !== param1)
         {
            this._104066928mpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mpBar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hpBar() : Property
      {
         return this._99449323hpBar;
      }
      
      [Bindable(event="propertyChange")]
      private function get infoVO() : PersonInfoVO
      {
         return this._1184171033infoVO;
      }
      
      public function set hpBtn(param1:Button) : void
      {
         var _loc2_:Object = this._99449908hpBtn;
         if(_loc2_ !== param1)
         {
            this._99449908hpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mpBar() : Property
      {
         return this._104066928mpBar;
      }
      
      public function set expBar(param1:Property) : void
      {
         var _loc2_:Object = this._1289197386expBar;
         if(_loc2_ !== param1)
         {
            this._1289197386expBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfHeadPMFlag() : Image
      {
         return this._382789291selfHeadPMFlag;
      }
      
      public function recoverFullHp(param1:*, param2:*) : void
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
         {
            _core.sysMidMsg(Language.MAZE_INFO_PANEL_U[13]);
            return;
         }
         var _loc3_:Object = {
            1:300,
            4:600,
            2:600,
            110:1000,
            113:2000,
            321:3000,
            371:6000,
            1975:9000
         };
         var _loc4_:Array = [];
         var _loc5_:int = GamePredef.SLOT_SID_BAG[0] + 1;
         while(_loc5_ <= GamePredef.SLOT_SID_BAG[7])
         {
            _loc6_ = _core.data.getSlot({"sid":_loc5_});
            if((Boolean(_loc6_)) && _loc6_.type == GamePredef.TBL_ITEM_INSTANCE)
            {
               _loc7_ = _core.data.getData(GamePredef.TBL_ITEM_INSTANCE,_loc6_.itemId);
               if(_loc3_[_loc7_.tid])
               {
                  _loc4_.push({
                     "sid":_loc6_.id,
                     "priority":_loc3_[_loc7_.tid] - _loc7_.binded
                  });
               }
            }
            _loc5_++;
         }
         _loc4_.sortOn("priority",Array.NUMERIC);
         _core.remote.call("fullHpRecoverByItem",null,param1,param2,_loc4_);
      }
   }
}

