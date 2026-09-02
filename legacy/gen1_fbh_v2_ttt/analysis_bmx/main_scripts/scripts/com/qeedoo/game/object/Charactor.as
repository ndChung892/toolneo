package com.qeedoo.game.object
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import mx.events.PropertyChangeEvent;
   
   public class Charactor extends Creature
   {
      
      public var stQuest:int;
      
      public var actT:int;
      
      public var stTrade:int;
      
      public var pmLevel:Number;
      
      protected var _posMapId:Number;
      
      public var actTN:String;
      
      private var _state:int;
      
      public var stItem:int;
      
      public var broT:String;
      
      private var _1318998296_taskSweep:Boolean = false;
      
      private var _1916889178inGroup:Boolean;
      
      protected var _exprb:Number;
      
      private var _432720173isLeader:Boolean;
      
      public var ee:int;
      
      public var ef:int;
      
      public var cts:String;
      
      public var en:int;
      
      protected var _expRe:Number = 0;
      
      private var _actionState:int;
      
      public var gmLevel:Number;
      
      private var _groupAfk:Boolean = false;
      
      public var prsUseId:Number;
      
      public var star:int;
      
      public var stBehavior:int;
      
      public var vipT:int;
      
      public var wp:Number;
      
      protected var _exp:Number;
      
      public var levelRe:uint = 0;
      
      public var honor:Number;
      
      public var ct:String;
      
      public var t:int;
      
      public var stBattle:int;
      
      public var decoInfo:Object;
      
      public var chival:Number;
      
      protected var _core:Core;
      
      public function Charactor()
      {
         super();
         type = GamePredef.TBL_CHARACTOR;
         isSelf = false;
         inGroup = false;
         isLeader = false;
         _core = Core.getInstance();
         _state = GamePredef.ST_NORMAL;
         _actionState = GamePredef.ST_NORMAL;
      }
      
      public function set actionState(param1:int) : void
      {
         _actionState = param1;
      }
      
      public function get actionState() : int
      {
         return _actionState;
      }
      
      override public function closeTo(param1:int, param2:int) : void
      {
         var _loc3_:Array = null;
         var _loc4_:* = null;
         if(flyingState != GamePredef.FLYING_STATE_TAKING_OFF && flyingState != GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            _loc4_ = view.hitTestLayer;
         }
         _loc3_ = _core.move.getCloseToRoute(view.posX,view.posY,param1,param2,_loc4_);
         moveRoute = _loc3_;
      }
      
      private function set _506332647groupAfk(param1:Boolean) : void
      {
         _groupAfk = param1;
      }
      
      private function set _100893exp(param1:Number) : void
      {
         _exp = param1;
         level = _core.basic.expToLevel(_exp);
      }
      
      public function get exp() : Number
      {
         return _exp;
      }
      
      public function set isLeader(param1:Boolean) : void
      {
         var _loc2_:Object = this._432720173isLeader;
         if(_loc2_ !== param1)
         {
            this._432720173isLeader = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLeader",_loc2_,param1));
         }
      }
      
      public function set inGroup(param1:Boolean) : void
      {
         var _loc2_:Object = this._1916889178inGroup;
         if(_loc2_ !== param1)
         {
            this._1916889178inGroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inGroup",_loc2_,param1));
         }
      }
      
      public function get expRe() : Number
      {
         return _expRe;
      }
      
      public function get posMapId() : int
      {
         return _posMapId;
      }
      
      [Bindable(event="propertyChange")]
      public function set exp(param1:Number) : void
      {
         var _loc2_:Object = this.exp;
         if(_loc2_ !== param1)
         {
            this._100893exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",_loc2_,param1));
         }
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set posMapId(param1:int) : void
      {
         _posMapId = param1;
      }
      
      public function set taskSweep(param1:Boolean) : void
      {
         _taskSweep = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get className() : String
      {
         return _core.getClassName(classId);
      }
      
      [Bindable(event="propertyChange")]
      public function set groupAfk(param1:Boolean) : void
      {
         var _loc2_:Object = this.groupAfk;
         if(_loc2_ !== param1)
         {
            this._506332647groupAfk = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupAfk",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inGroup() : Boolean
      {
         return this._1916889178inGroup;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(Boolean(param1.expRe) && param1.expRe > 0)
         {
            this.levelRe = _core.basic.expReToLevelRe(param1.expRe);
         }
         decoInfo = param1.hasOwnProperty("decoInfo") ? param1.decoInfo : null;
         prsUseId = param1.hasOwnProperty("prsUseId") ? Number(param1.prsUseId) : 0;
      }
      
      public function routeTo(param1:int, param2:int) : void
      {
         var _loc3_:Array = null;
         var _loc4_:* = null;
         if(flyingState != GamePredef.FLYING_STATE_TAKING_OFF && flyingState != GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            _loc4_ = view.hitTestLayer;
         }
         _loc3_ = _core.move.getRoute(view.posX,view.posY,param1,param2,_loc4_);
         moveRoute = _loc3_;
      }
      
      public function set _taskSweep(param1:Boolean) : void
      {
         var _loc2_:Object = this._1318998296_taskSweep;
         if(_loc2_ !== param1)
         {
            this._1318998296_taskSweep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_taskSweep",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set expRe(param1:Number) : void
      {
         var _loc2_:Object = this.expRe;
         if(_loc2_ !== param1)
         {
            this._96960816expRe = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expRe",_loc2_,param1));
         }
      }
      
      public function get groupAfk() : Boolean
      {
         return _groupAfk;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLeader() : Boolean
      {
         return this._432720173isLeader;
      }
      
      private function set _96960816expRe(param1:Number) : void
      {
         _expRe = param1;
         levelRe = _core.basic.expReToLevelRe(_expRe);
      }
      
      public function get taskSweep() : Boolean
      {
         return _taskSweep;
      }
      
      [Bindable(event="propertyChange")]
      public function get _taskSweep() : Boolean
      {
         return this._1318998296_taskSweep;
      }
   }
}

