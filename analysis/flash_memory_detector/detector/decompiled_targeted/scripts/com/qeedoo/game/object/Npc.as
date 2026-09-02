package com.qeedoo.game.object
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   
   public dynamic class Npc extends Charactor
   {
      
      public var dotaData:Object;
      
      public var miniMap:int = 1;
      
      public var nid:Number;
      
      public var hulaData:Object;
      
      public var layer:int;
      
      public var funcInfo:String;
      
      private var _busy:Boolean = false;
      
      public var lv:int;
      
      public var subType:String;
      
      public var onServiceText:String;
      
      public var tripleNpc:Object;
      
      public var shopId:int;
      
      public var rf:Number;
      
      public var npcType:int;
      
      public var v:int = 1;
      
      public var fd:int = -1;
      
      public var mirror:int;
      
      public function Npc()
      {
         super();
         type = GamePredef.TBL_NPC;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         npcType = param1.type;
         type = GamePredef.TBL_NPC;
      }
      
      override public function get state() : int
      {
         if(view)
         {
            return view.state;
         }
         return 0;
      }
      
      public function set busy(param1:Boolean) : void
      {
         this._busy = param1;
         if(param1)
         {
            if(this.npcType == GamePredef.NPC_TYPE_WALK)
            {
               this.state = GamePredef.ST_BATTLE;
            }
         }
         else if(this.npcType == GamePredef.NPC_TYPE_WALK)
         {
            this.state = GamePredef.ST_NORMAL;
         }
      }
      
      public function get busy() : Boolean
      {
         return _busy;
      }
      
      override public function set state(param1:int) : void
      {
         var _loc2_:Core = null;
         if(view)
         {
            view.state = param1;
            _loc2_ = Core.getInstance();
            _loc2_.view.getUI(ViewManager.PANEL_MAP).refreshNpc(id);
         }
      }
   }
}

