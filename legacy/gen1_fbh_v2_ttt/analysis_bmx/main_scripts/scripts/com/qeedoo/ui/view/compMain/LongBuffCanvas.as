package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.BuffVO;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LongBuffCanvas extends Tile implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var useMountDress:Number = 0;
      
      public var _LongBuffCanvas_Tile1:Tile;
      
      private var _core:Core;
      
      mx_internal var _watchers:Array;
      
      public var dressTimeObj:Object;
      
      private var _3646rp:Repeater;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _LongBuffCanvas_Image1:Array;
      
      private var updateMountTimer:Timer = null;
      
      private var RED_CODE_NAME:String = "BUFF102151";
      
      private var updateBuffTimer:Timer = null;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var voList:Object;
      
      private var _1378119755buffAC:ArrayCollection;
      
      public function LongBuffCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Tile,
            "id":"_LongBuffCanvas_Tile1",
            "propertiesFactory":function():Object
            {
               return {
                  "width":200,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Repeater,
                     "id":"rp",
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_LongBuffCanvas_Image1",
                           "events":{
                              "click":"___LongBuffCanvas_Image1_click",
                              "mouseOver":"___LongBuffCanvas_Image1_mouseOver"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":16,
                                 "height":16,
                                 "scaleContent":true
                              };
                           }
                        })]};
                     }
                  })]
               };
            }
         });
         voList = new Object();
         _core = Core.getInstance();
         dressTimeObj = new Object();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.verticalGap = 1;
            this.horizontalGap = 1;
         };
         this.width = 200;
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LongBuffCanvas._watcherSetupUtil = param1;
      }
      
      public function refreshBuffPerBattle() : void
      {
         var _loc1_:BuffVO = null;
         for each(_loc1_ in buffAC)
         {
            if(_loc1_.type == 1)
            {
               if(ToolKit.isSmallOrEqual(_loc1_.battleLeft,1))
               {
                  delBuff(_loc1_.id);
               }
               else
               {
                  --_loc1_.battleLeft;
               }
            }
         }
      }
      
      public function ___LongBuffCanvas_Image1_mouseOver(param1:MouseEvent) : void
      {
         timerRepeat(null);
      }
      
      public function set rp(param1:Repeater) : void
      {
         var _loc2_:Object = this._3646rp;
         if(_loc2_ !== param1)
         {
            this._3646rp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rp",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LongBuffCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LongBuffCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_LongBuffCanvasWatcherSetupUtil");
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
      
      public function delGlobalDoubleExpBuff() : void
      {
         var _loc1_:BuffVO = null;
         var _loc2_:int = 0;
         for each(_loc1_ in buffAC)
         {
            if(_loc1_.bid == GamePredef.GLOBAL_DOUBLE_EXP_BID)
            {
               _loc2_ = buffAC.getItemIndex(_loc1_);
               buffAC.removeItemAt(_loc2_);
            }
         }
      }
      
      private function setTimeInfo(param1:Number) : String
      {
         var _loc3_:Date = null;
         var _loc2_:String = "";
         if(param1 >= 86400)
         {
            _loc2_ = int(param1 / 86400) + Language.LONGBUFFCANVAS_S[5];
         }
         else
         {
            _loc3_ = new Date(2000,1,1,0,0,0,0);
            _loc3_.setTime(_loc3_.getTime() + Number(param1 * 1000));
            _loc2_ = _loc3_.getHours() + Language.LONGBUFFCANVAS_S[6] + _loc3_.getMinutes() + Language.LONGBUFFCANVAS_S[7] + _loc3_.getSeconds() + Language.LONGBUFFCANVAS_S[8];
         }
         return _loc2_;
      }
      
      public function initLongBuff(param1:Object) : void
      {
         var _loc2_:Object = null;
         ToolTipManager.enabled = true;
         if(buffAC)
         {
            buffAC.removeAll();
         }
         else
         {
            buffAC = new ArrayCollection();
         }
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               if(_loc2_)
               {
                  onAddLongBuff(_loc2_);
               }
            }
         }
         if(!updateBuffTimer)
         {
            updateBuffTimer = new Timer(GamePredef.LONG_BUFF_REFRESH_INTERVAL,0);
            updateBuffTimer.addEventListener(TimerEvent.TIMER,timerRepeat);
            updateBuffTimer.start();
         }
      }
      
      public function upLongBuff(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:BuffVO = voList[param1.id];
         if(_loc2_)
         {
            _loc3_ = buffAC.getItemIndex(_loc2_);
            if(_loc3_ >= 0)
            {
               buffAC.removeItemAt(_loc3_);
            }
         }
         if(param1.type == 10)
         {
            _loc4_ = GameData.d[GamePredef.TBL_BUFF][param1.bid];
            if(_loc4_)
            {
               for each(_loc5_ in voList)
               {
                  if(_loc5_.type == 10)
                  {
                     _loc6_ = GameData.d[GamePredef.TBL_BUFF][param1.bid];
                     if(_loc4_.codeName == _loc6_.codeName)
                     {
                        _loc3_ = buffAC.getItemIndex(_loc5_);
                        if(_loc3_ >= 0)
                        {
                           buffAC.removeItemAt(_loc3_);
                        }
                     }
                  }
               }
            }
         }
         onAddLongBuff(param1);
      }
      
      [Bindable(event="propertyChange")]
      private function get buffAC() : ArrayCollection
      {
         return this._1378119755buffAC;
      }
      
      private function doActionOnBuffDel(param1:BuffVO) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Object = _core.getTitleByBuffId(param1.bid);
         if(Boolean(_loc2_) && _core.checkTitleType(_loc2_.id,GamePredef.TITLE_KIND_ACTIVE))
         {
            _core.view.getC(_core.player.id).delActiveTitle(param1.bid);
            return;
         }
         switch(param1.bid)
         {
            case GamePredef.MEET_BATTLE_ON_STILL_BID:
               if(_core.player != null)
               {
                  _core.player.normalView.stopCheckBattleTimer();
               }
               break;
            case GamePredef.STAR_3_VIP:
            case GamePredef.STAR_4_VIP:
            case GamePredef.STAR_5_VIP:
            case GamePredef.STAR_6_VIP:
            case GamePredef.STAR_7_VIP:
            case GamePredef.BBS_1_VIP:
            case GamePredef.BBS_2_VIP:
            case GamePredef.BBS_3_VIP:
               _core.view.getC(_core.player.id).delVipTitle();
               break;
            case GamePredef.DOG_FIGHT_B1:
            case GamePredef.DOG_FIGHT_B2:
            case GamePredef.DOG_FIGHT_B3:
               _core.view.getC(_core.player.id).delActiveTitle(param1.bid);
         }
      }
      
      public function getNewDelay() : Number
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc1_:Number = Number.MAX_VALUE;
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ + _core.timeLag;
         if(dressTimeObj)
         {
            for(_loc4_ in dressTimeObj)
            {
               _loc5_ = Number(dressTimeObj[_loc4_]);
               if(_loc5_ > _loc3_)
               {
                  if(_loc5_ < _loc1_)
                  {
                     _loc1_ = _loc5_;
                  }
               }
            }
         }
         if(_loc1_ - _loc3_ > 60 * 60 * 1000)
         {
            return 60 * 60 * 1000;
         }
         return _loc1_ - _loc3_;
      }
      
      public function addGlobalDoubleExpBuff(param1:Object) : void
      {
         var _loc2_:BuffVO = null;
         var _loc4_:int = 0;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in buffAC)
         {
            if(_loc2_.bid == param1.bid)
            {
               _loc4_ = buffAC.getItemIndex(_loc2_);
               buffAC.removeItemAt(_loc4_);
            }
         }
         param1.data = _core.data.getGameData(GamePredef.TBL_BUFF,param1.bid);
         if(!param1.data)
         {
            delBuff(param1.id);
            return;
         }
         var _loc3_:BuffVO = new BuffVO();
         _loc3_.type = param1.type;
         _loc3_.id = param1.id;
         _loc3_.bid = param1.bid;
         _loc3_.source = ResManager.getIconUrl(param1.data.iconCode);
         _loc3_.buff = param1.data.buff;
         if(param1.desc)
         {
            _loc3_.toolTip = param1.data.name + "\n" + param1.desc + Language.LONGBUFFCANVAS_S[4];
         }
         else
         {
            _loc3_.toolTip = param1.data.name + "\n" + param1.data.description + Language.LONGBUFFCANVAS_S[4];
         }
         _loc3_.timeAll = param1.timeAll;
         _loc3_.addTime = param1.addTime;
         _loc3_.timeLeft = param1.timeLeft;
         _loc3_.timeLeftStr = setTimeInfo(_loc3_.timeLeft);
         _loc3_.ineffectiveTime = param1.timeLeft * 1000 + new Date().getTime();
         _loc3_.needTimer = true;
         voList[_loc3_.id] = _loc3_;
         buffAC.addItem(_loc3_);
      }
      
      [Bindable(event="propertyChange")]
      public function get rp() : Repeater
      {
         return this._3646rp;
      }
      
      private function timerRepeat(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:BuffVO = null;
         if(buffAC)
         {
            _loc2_ = new Date().getTime();
            _loc3_ = _loc2_ + _core.timeLag;
            for each(_loc4_ in buffAC)
            {
               if(Boolean(_loc4_) && _loc4_.needTimer)
               {
                  _loc4_.timeLeft = (_loc4_.ineffectiveTime - _loc3_) / 1000;
                  if(_loc4_.timeLeft < 1)
                  {
                     if(_loc4_.bid != GamePredef.GLOBAL_DOUBLE_EXP_BID)
                     {
                        _core.remote.delBuffClient(_loc4_.id);
                     }
                     doActionOnBuffDel(_loc4_);
                     delBuff(_loc4_.id);
                  }
                  else
                  {
                     _loc4_.timeLeftStr = setTimeInfo(_loc4_.timeLeft);
                  }
               }
            }
         }
      }
      
      public function updateRound() : void
      {
         var _loc1_:BuffVO = null;
         var _loc2_:int = 0;
         for each(_loc1_ in buffAC)
         {
            if(_loc1_.type == 1)
            {
               --_loc1_.battleLeft;
               if(_loc1_.battleLeft <= 0)
               {
                  _loc2_ = buffAC.getItemIndex(_loc1_);
                  buffAC.removeItemAt(_loc2_);
               }
            }
         }
      }
      
      public function clearBuff() : void
      {
         buffAC.removeAll();
      }
      
      private function doActionOnBuffAdd(param1:Object, param2:BuffVO) : void
      {
         if(param2 == null)
         {
            return;
         }
         switch(param2.bid)
         {
            case GamePredef.MEET_BATTLE_ON_STILL_BID:
               if(param1 != null)
               {
                  param1.startCheckBattleTimer();
               }
               return;
            default:
               return;
         }
      }
      
      public function onAddLongBuff(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         param1.data = _core.data.getGameData(GamePredef.TBL_BUFF,param1.bid);
         if(!param1.data)
         {
            delBuff(param1.id);
            return;
         }
         var _loc2_:BuffVO = new BuffVO();
         _loc2_.type = param1.type;
         _loc2_.buff = param1.data.buff;
         _loc2_.source = ResManager.getIconUrl(param1.data.iconCode);
         _loc2_.id = param1.id;
         _loc2_.bid = param1.bid;
         voList[_loc2_.id] = _loc2_;
         if(_loc2_.type == 10 || _loc2_.type == 3)
         {
            _loc2_.toolTip = param1.data.name + Language.LONGBUFFCANVAS_S[0] + param1.data.level + "\n" + param1.data.description + Language.LONGBUFFCANVAS_S[1];
            _loc2_.timeLeft = 0;
            _loc2_.timeLeftStr = "";
         }
         else
         {
            _loc2_.battleLeft = param1.battleLeft;
            _loc2_.timeAll = param1.timeAll;
            _loc2_.addTime = param1.addTime;
            _loc2_.timeLeft = param1.timeLeft;
            _loc2_.ineffectiveTime = param1.ineffectiveTime;
            if(param1.data.codeName != RED_CODE_NAME)
            {
               _loc2_.toolTip = param1.data.name + Language.LONGBUFFCANVAS_S[2] + param1.data.level + "\n" + param1.data.description + (_loc2_.type == 1 ? Language.LONGBUFFCANVAS_S[3] : Language.LONGBUFFCANVAS_S[4]);
               _loc2_.timeLeftStr = setTimeInfo(_loc2_.timeLeft);
            }
            else
            {
               _loc2_.toolTip = param1.data.name + "\n" + param1.data.description;
               _loc2_.timeLeftStr = "";
            }
            if(_loc2_.type == 2 && param1.data.codeName != RED_CODE_NAME)
            {
               _loc2_.needTimer = true;
            }
         }
         buffAC.addItem(_loc2_);
         if(_core.player != null)
         {
            doActionOnBuffAdd(_core.player.normalView,_loc2_);
         }
      }
      
      private function refreshMountDress(param1:TimerEvent) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ + _core.timeLag;
         if(dressTimeObj)
         {
            for(_loc4_ in dressTimeObj)
            {
               _loc5_ = Number(dressTimeObj[_loc4_]);
               if(_loc5_ > 1)
               {
                  if(_loc5_ < _loc3_)
                  {
                     if(Boolean(useMountDress) && useMountDress == _loc4_)
                     {
                        _core.player.stopMounting();
                        _loc7_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][useMountDress];
                     }
                     _loc6_ = _core.view.getUI(ViewManager.PANEL_MOUNT);
                     if(_loc6_)
                     {
                        _loc6_.updateMountDressList(2,_loc4_,_loc5_);
                     }
                  }
               }
            }
         }
         resetMountDressTimer();
      }
      
      public function initMountTimer(param1:Object) : void
      {
         dressTimeObj = param1.dressData;
         useMountDress = Number(param1.useDress);
         resetMountDressTimer();
      }
      
      public function triggerBuffRelatedAction(param1:Object) : void
      {
         var _loc2_:BuffVO = null;
         for each(_loc2_ in buffAC)
         {
            doActionOnBuffAdd(param1,_loc2_);
         }
      }
      
      public function containBuff(param1:Number) : Boolean
      {
         var _loc2_:BuffVO = null;
         for each(_loc2_ in buffAC)
         {
            if(_loc2_.bid == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function _LongBuffCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = buffAC;
         _loc1_ = rp.currentItem.id;
         _loc1_ = rp.currentItem.source;
         _loc1_ = rp.currentItem.toolTip + (rp.currentItem.type == 1 ? rp.currentItem.battleLeft : rp.currentItem.timeLeftStr);
      }
      
      public function isBuffOn(param1:Number) : Boolean
      {
         var _loc2_:* = undefined;
         for(_loc2_ in buffAC)
         {
            if(buffAC[_loc2_].bid == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function addMountDressTimer() : void
      {
         var _loc1_:* = undefined;
         if(!updateMountTimer && Boolean(dressTimeObj))
         {
            _loc1_ = getNewDelay();
            updateMountTimer = new Timer(_loc1_,0);
            updateMountTimer.addEventListener(TimerEvent.TIMER,refreshMountDress);
            updateMountTimer.start();
         }
      }
      
      private function set buffAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1378119755buffAC;
         if(_loc2_ !== param1)
         {
            this._1378119755buffAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffAC",_loc2_,param1));
         }
      }
      
      private function buffClick(param1:Event) : void
      {
         var func:Function;
         var voLocal:BuffVO = null;
         var id:Number = NaN;
         var vo:BuffVO = null;
         var event:Event = param1;
         voLocal = null;
         id = Number(event.currentTarget.name);
         if(id == 0)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.delBuffClient(id);
               delBuff(id);
               doActionOnBuffDel(voLocal);
            }
         };
         for each(vo in buffAC)
         {
            if(vo.id == id)
            {
               voLocal = vo;
            }
            if(vo.id == id && vo.buff == 0)
            {
               _core.sysMsg(Language.LONGBUFFCANVAS_S[10]);
               return;
            }
         }
         Alert.show(Language.LONGBUFFCANVAS_S[9],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function ___LongBuffCanvas_Image1_click(param1:MouseEvent) : void
      {
         buffClick(param1);
      }
      
      private function _LongBuffCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return buffAC;
         },function(param1:Object):void
         {
            rp.dataProvider = param1;
         },"rp.dataProvider");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = rp.mx_internal::getItemAt(param2[0]).id;
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _LongBuffCanvas_Image1[param2[0]].name = param1;
         },"_LongBuffCanvas_Image1.name");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return rp.mx_internal::getItemAt(param2[0]).source;
         },function(param1:Object, param2:Array):void
         {
            _LongBuffCanvas_Image1[param2[0]].source = param1;
         },"_LongBuffCanvas_Image1.source");
         result[2] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = rp.mx_internal::getItemAt(param2[0]).toolTip + (rp.mx_internal::getItemAt(param2[0]).type == 1 ? rp.mx_internal::getItemAt(param2[0]).battleLeft : rp.mx_internal::getItemAt(param2[0]).timeLeftStr);
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _LongBuffCanvas_Image1[param2[0]].toolTip = param1;
         },"_LongBuffCanvas_Image1.toolTip");
         result[3] = binding;
         return result;
      }
      
      public function delBuff(param1:Number) : void
      {
         var _loc2_:BuffVO = null;
         var _loc3_:int = 0;
         for each(_loc2_ in buffAC)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = buffAC.getItemIndex(_loc2_);
               buffAC.removeItemAt(_loc3_);
            }
         }
      }
      
      public function resetMountDressTimer() : void
      {
         var _loc1_:Number = NaN;
         if(!updateMountTimer)
         {
            addMountDressTimer();
         }
         else
         {
            _loc1_ = getNewDelay();
            updateMountTimer.delay = _loc1_;
         }
      }
   }
}

