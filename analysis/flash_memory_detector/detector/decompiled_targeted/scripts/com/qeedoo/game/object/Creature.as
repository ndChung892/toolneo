package com.qeedoo.game.object
{
   import com.qeedoo.game.config.Debug;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.MouseManager;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class Creature implements ICreature, IEventDispatcher
   {
      
      public static const EVENT_BAHAVIOR_END:String = "EVENT_BAHAVIOR_END";
      
      public var element:int;
      
      public var iconCode:Number;
      
      public var brightCode:int;
      
      public var aptEnergy:int;
      
      public var id:Number;
      
      public var currentMp:Number;
      
      public var hp:int;
      
      public var wingResCode:Number;
      
      public var moveRoute:Array;
      
      public var withCloud:int;
      
      public var normalView:Object;
      
      public var flyerResCode:Number;
      
      public var type:int;
      
      public var hpMax:int;
      
      public var decoBottomCode:Number;
      
      public var decoFootCode:Number;
      
      public var leagueIcon:int = -1;
      
      public var mountResCode:Number;
      
      private var _oldTime:int = 0;
      
      public var sp:int;
      
      public var aptAgility:int;
      
      public var currentHp:Number;
      
      private var _3446917posY:Number;
      
      public var decoBottomCodeOnMount:Number;
      
      public var dressResCode:Number;
      
      public var bossFlag:Number;
      
      public var battleView:Object;
      
      private var _core:Core;
      
      private var _flyingState:int = GamePredef.FLYING_STATE_ON_GROUND;
      
      public var level:int;
      
      public var aptStrength:int;
      
      public var aptStamina:int;
      
      public var name:String;
      
      public var dir:int;
      
      public var decoLightMaskCode:Number;
      
      public var qLevel:int;
      
      public var catchable:int;
      
      public var isSelf:Boolean;
      
      private var _mountState:int = GamePredef.MOUNT_STATE_OFF;
      
      public var posDir:int;
      
      public var aptIntelligence:int;
      
      public var mp:int;
      
      public var view:Object;
      
      public var growBase:int;
      
      protected var _inBattle:Boolean;
      
      public var resCode:Number;
      
      public var classId:int;
      
      public var currentSp:Number;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var mpMax:int;
      
      public var spMax:int;
      
      public var gender:int;
      
      public var decoHeadCode:Number;
      
      public var flyerFrontResCode:Number;
      
      public var fairy:Object;
      
      public var property:Object;
      
      private var _3446916posX:Number;
      
      public var doubleFly:Boolean;
      
      public var npcFlag:Boolean;
      
      public var colorCode:int;
      
      public var battleId:int;
      
      public var decoLightCode:Number;
      
      public var life:int;
      
      public function Creature()
      {
         super();
         type = GamePredef.TBL_CREATURE;
         isSelf = false;
         _core = Core.getInstance();
         Debug.refObj(this);
      }
      
      public function set posY(param1:Number) : void
      {
         var _loc2_:Object = this._3446917posY;
         if(_loc2_ !== param1)
         {
            this._3446917posY = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posY",_loc2_,param1));
         }
      }
      
      public function set mountState(param1:int) : void
      {
         _mountState = param1;
      }
      
      public function walkTo(param1:int, param2:int) : void
      {
         moveRoute = [[param1,param2]];
         walk();
      }
      
      public function onBeginWeddingFly() : void
      {
         flyingState = GamePredef.FLYING_STATE_TAKING_OFF;
         this.view.doubleFly = true;
         doubleFly = true;
         if(this is Player)
         {
            _core.view.getUI(ViewManager.STAGE_MAIN_CONTAINER).drawClouds();
         }
         this.view.playFlying(true,this is Player,_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR || _core.player.flyingState == GamePredef.FLYING_STATE_PRE_LANDING);
         _core.view.switchLayer(this,true);
         this.view.behaviorForFlying(AbstractGameRes.BH_BREATH_SLOW);
         if(this is Charactor)
         {
            if(Charactor(this).isLeader)
            {
               if(!this.view.weddingFlyer)
               {
                  this.view.createWeddingFlyer();
               }
               this.view.weddingFlyer.host = this.view;
               this.view.weddingFlyerOn();
            }
            else
            {
               this.view.flyerGuest = this.view;
            }
         }
      }
      
      public function set posX(param1:Number) : void
      {
         var _loc2_:Object = this._3446916posX;
         if(_loc2_ !== param1)
         {
            this._3446916posX = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posX",_loc2_,param1));
         }
      }
      
      public function stopFlying() : void
      {
         var _loc1_:Player = null;
         var _loc2_:int = 0;
         if(flyingState != GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            return;
         }
         if(this is Player)
         {
            _loc1_ = Player(this);
            if(_loc1_.inGroup && !_loc1_.isLeader && !_loc1_.groupAfk)
            {
               _loc2_ = new Date().time;
               if(_loc2_ - _oldTime > 30000 || _oldTime == 0)
               {
                  _oldTime = _loc2_;
                  _core.remote.fixFlyState();
               }
               _core.sysMidNote(Language.NPCVIEW_S[0]);
               return;
            }
            if(_loc1_.taskSweep)
            {
               _core.sysMidNote(Language.TASKSWEEPPANEL_U[23]);
               return;
            }
            flyingState = GamePredef.FLYING_STATE_PRE_LANDING;
            this.view.landToSafeArea();
         }
      }
      
      public function onBeginFlying() : void
      {
         flyingState = GamePredef.FLYING_STATE_TAKING_OFF;
         if(this is Player)
         {
            _core.view.getUI(ViewManager.STAGE_MAIN_CONTAINER).drawClouds();
         }
         this.view.playFlying(true,this is Player,_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR || _core.player.flyingState == GamePredef.FLYING_STATE_PRE_LANDING);
         _core.view.switchLayer(this,true);
         if(_mountState != GamePredef.MOUNT_STATE_OFF)
         {
            _mountState = GamePredef.MOUNT_STATE_OFF;
         }
         this.view.behaviorForFlying(AbstractGameRes.BH_BREATH_SLOW);
         this.view.flyerOn();
      }
      
      public function get inBattle() : Boolean
      {
         return _inBattle;
      }
      
      public function chatGM(param1:String, param2:Number, param3:String) : void
      {
         _core.remote.chatGM(param1,param2,param3);
      }
      
      public function getQuestionList(param1:int) : void
      {
         _core.remote.getQuestionList(param1);
      }
      
      public function get flyingState() : int
      {
         return _flyingState;
      }
      
      public function stopMounting() : void
      {
         var _loc1_:Player = null;
         if(this is Player)
         {
            _loc1_ = Player(this);
            if(_loc1_.taskSweep)
            {
               _core.sysMidNote(Language.TASKSWEEPPANEL_U[34]);
               return;
            }
            _core.remote.stopMounting();
         }
      }
      
      public function p2pWisper(param1:String, param2:Number, param3:Number) : void
      {
         _core.remote.p2pWisper(param1,param2,param3);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:Object = null;
         for(_loc2_ in param1)
         {
            if(hasOwnProperty(_loc2_))
            {
               this[_loc2_] = param1[_loc2_];
            }
         }
         if(param1.isFlying)
         {
            flyingState = GamePredef.FLYING_STATE_IN_THE_AIR;
         }
         if(!param1.doubleFly)
         {
            doubleFly = false;
         }
      }
      
      public function submitQuestion(param1:Object) : void
      {
         _core.remote.submitQuestion(param1);
      }
      
      public function get mountState() : int
      {
         return _mountState;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function onStopFlying() : void
      {
         flyingState = GamePredef.FLYING_STATE_LANDING;
         doubleFly = false;
         if(this is Player)
         {
            _core.view.getUI(ViewManager.STAGE_MAIN_CONTAINER).clearClouds();
         }
         this.view.playFlying(false,this is Player,_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR || _core.player.flyingState == GamePredef.FLYING_STATE_PRE_LANDING);
      }
      
      public function set inBattle(param1:Boolean) : void
      {
         _inBattle = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get posY() : Number
      {
         return this._3446917posY;
      }
      
      public function beginFlying() : void
      {
         var _loc1_:Player = null;
         var _loc2_:int = 0;
         if(flyingState != GamePredef.FLYING_STATE_ON_GROUND)
         {
            return;
         }
         if(this is Player)
         {
            _loc1_ = Player(this);
            if(_loc1_.inGroup && !_loc1_.isLeader && !_loc1_.groupAfk)
            {
               _loc2_ = new Date().time;
               if(_loc2_ - _oldTime > 30000 || _oldTime == 0)
               {
                  _oldTime = _loc2_;
                  _core.remote.fixFlyState();
               }
               _core.sysMidNote(Language.NPCVIEW_S[0]);
               return;
            }
            if(_loc1_.taskSweep)
            {
               _core.sysMidNote(Language.TASKSWEEPPANEL_U[23]);
               return;
            }
            _core.remote.beginFlying();
         }
      }
      
      public function closeTo(param1:int, param2:int) : void
      {
         var _loc3_:Array = null;
         _loc3_ = _core.move.getCloseToRoute(view.posX,view.posY,param1,param2,view.hitTestLayer);
         moveRoute = _loc3_;
         walk();
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      public function wisper(param1:String, param2:String) : void
      {
         if(_core.player.checkChatTime())
         {
            _core.remote.wisper(id,type,param2,param1);
         }
         else
         {
            _core.sysMidNote(GamePredef.CHAT_TOOFAST);
         }
      }
      
      public function set flyingState(param1:int) : void
      {
         _flyingState = param1;
         if(this is Player)
         {
            _core.view.getUI(ViewManager.MAIN_MINIMAP).changeFlyingButton();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get posX() : Number
      {
         return this._3446916posX;
      }
      
      public function battleRouteTo(param1:int, param2:int) : void
      {
         var _loc3_:Array = null;
         _loc3_ = _core.move.getBattleRoute(view.posX,view.posY,param1,param2);
         moveRoute = _loc3_;
         walk();
      }
      
      public function walk() : void
      {
         if(!(Boolean(GamePredef.GLOBAL_SETTING.ac) && Boolean(view.isWalking) && MouseManager.mouseDownFlag))
         {
            view.behavior(AbstractGameRes.BH_RUN_NORMAL);
            view.walk(null);
         }
      }
      
      public function say(param1:String, param2:int) : void
      {
         if(_core.player.checkChatTime())
         {
            _core.remote.say(id,type,param2,param1);
         }
         else
         {
            _core.sysMidNote(GamePredef.CHAT_TOOFAST);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function beginMounting(param1:int) : void
      {
         var _loc2_:Player = null;
         if(this is Player)
         {
            _loc2_ = Player(this);
            if(_loc2_.taskSweep)
            {
               _core.sysMidNote(Language.TASKSWEEPPANEL_U[34]);
               return;
            }
            _core.remote.call("beginMounting",null,param1);
         }
      }
   }
}

