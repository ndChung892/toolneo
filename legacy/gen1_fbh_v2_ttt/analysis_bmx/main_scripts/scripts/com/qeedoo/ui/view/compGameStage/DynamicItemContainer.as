package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Pet;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.SimpleConainer;
   import flash.display.DisplayObject;
   
   public class DynamicItemContainer extends SimpleConainer
   {
      
      public function DynamicItemContainer()
      {
         super();
      }
      
      public function addC(param1:Charactor) : DisplayObject
      {
         var _loc2_:CharactorView = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         if(param1.id == Core.getInstance().cid)
         {
            _loc2_ = new PlayerView();
            addChild(_loc2_);
         }
         else
         {
            _loc2_ = new CharactorView();
            _loc2_.container = this;
         }
         _loc3_ = param1.decoInfo;
         if(_loc3_)
         {
            for(_loc4_ in _loc3_)
            {
               switch(Number(_loc3_[_loc4_]["position"]))
               {
                  case 1:
                     _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_[_loc4_]["did"]];
                     _loc6_ = Number(_loc3_[_loc4_]["showLvl"]);
                     param1.decoHeadCode = _loc5_ ? Number(_loc5_["resCode" + (2 * _loc6_ - 1)]) : 0;
                     break;
                  case 2:
                     _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_[_loc4_]["did"]];
                     _loc6_ = Number(_loc3_[_loc4_]["showLvl"]);
                     param1.decoLightCode = _loc5_ ? Number(_loc5_["resCode" + (2 * _loc6_ - 1)]) : 0;
                     param1.decoLightMaskCode = _loc5_ ? Number(_loc5_["resCode" + 2 * _loc6_]) : 0;
                     break;
                  case 3:
                     _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_[_loc4_]["did"]];
                     _loc6_ = Number(_loc3_[_loc4_]["showLvl"]);
                     param1.decoFootCode = _loc5_ ? Number(_loc5_["resCode" + (2 * _loc6_ - 1)]) : 0;
                     break;
                  case 4:
                     _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_[_loc4_]["did"]];
                     _loc6_ = Number(_loc3_[_loc4_]["showLvl"]);
                     param1.decoBottomCode = _loc5_ ? Number(_loc5_["resCode" + (2 * _loc6_ - 1)]) : 0;
                     param1.decoBottomCodeOnMount = _loc5_ ? Number(_loc5_["resCode" + 2 * _loc6_]) : 0;
               }
            }
         }
         _loc2_.gameObject = param1;
         if(isNaN(param1.dressResCode) || param1.dressResCode <= 0)
         {
            _loc2_.colorCode = param1.colorCode;
         }
         else if(_loc2_.isDefaultRes() || _loc2_.isRebirthRes())
         {
            _loc2_.colorCode = 0;
            _loc2_.setRes(param1.dressResCode);
         }
         else
         {
            _loc2_.setRes(param1.resCode);
         }
         param1.normalView = _loc2_;
         _loc2_.setLeagueFlag(param1["leagueIcon"]);
         return _loc2_;
      }
      
      public function sortNeighbour(param1:int) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         if(numChildren < 2)
         {
            return;
         }
         if(param1 == 0)
         {
            _loc2_ = [getChildAt(0),getChildAt(1)];
            _loc3_ = _loc2_.sortOn("yBase",Array.NUMERIC);
            setChildIndex(_loc3_[0],0);
            setChildIndex(_loc3_[1],1);
            return;
         }
         if(param1 == numChildren - 1)
         {
            _loc2_ = [getChildAt(param1 - 1),getChildAt(param1)];
            _loc3_ = _loc2_.sortOn("yBase",Array.NUMERIC);
            setChildIndex(_loc3_[0],param1 - 1);
            setChildIndex(_loc3_[1],param1);
         }
         else
         {
            _loc2_ = [getChildAt(param1 - 1),getChildAt(param1),getChildAt(param1 + 1)];
            _loc3_ = _loc2_.sortOn("yBase",Array.NUMERIC);
            setChildIndex(_loc3_[0],param1 - 1);
            setChildIndex(_loc3_[1],param1);
            setChildIndex(_loc3_[2],param1 + 1);
         }
      }
      
      private function setPetPos(param1:Pet) : Pet
      {
         var _loc3_:Charactor = null;
         var _loc4_:int = 0;
         var _loc2_:Core = Core.getInstance();
         if(param1.leaderId > 0)
         {
            _loc3_ = _loc2_.getCharactor(param1.leaderId);
            if(_loc3_)
            {
               param1.posX = _loc3_.posX;
               param1.posY = _loc3_.posY;
            }
         }
         else
         {
            _loc4_ = _loc2_.getCharactor(param1.cid).dir;
            if(_loc4_ == 0)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX;
               param1.posY = _loc2_.getCharactor(param1.cid).posY - GamePredef.GROUP_PET_FOLLOW_DISTANCE + 1;
            }
            else if(_loc4_ == 1)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX - GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
               param1.posY = _loc2_.getCharactor(param1.cid).posY - GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
            }
            else if(_loc4_ == 2)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX - GamePredef.GROUP_PET_FOLLOW_DISTANCE + 1;
               param1.posY = _loc2_.getCharactor(param1.cid).posY;
            }
            else if(_loc4_ == 3)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX - GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
               param1.posY = _loc2_.getCharactor(param1.cid).posY + GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
            }
            else if(_loc4_ == 4)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX;
               param1.posY = _loc2_.getCharactor(param1.cid).posY + GamePredef.GROUP_PET_FOLLOW_DISTANCE + 1;
            }
            else if(_loc4_ == 5)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX + GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
               param1.posY = _loc2_.getCharactor(param1.cid).posY + GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
            }
            else if(_loc4_ == 6)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX + GamePredef.GROUP_PET_FOLLOW_DISTANCE + 1;
               param1.posY = _loc2_.getCharactor(param1.cid).posY;
            }
            else if(_loc4_ == 7)
            {
               param1.posX = _loc2_.getCharactor(param1.cid).posX + GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
               param1.posY = _loc2_.getCharactor(param1.cid).posY - GamePredef.GROUP_PET_FOLLOW_DISTANCE / 1.4;
            }
         }
         return param1;
      }
      
      public function sortChildren() : void
      {
         var _loc3_:* = undefined;
         var _loc1_:Array = getChildren();
         var _loc2_:Array = _loc1_.sortOn("yBase",Array.NUMERIC);
         for(_loc3_ in _loc2_)
         {
            setChildIndex(_loc2_[_loc3_],_loc3_);
         }
      }
      
      public function addP(param1:Pet) : DisplayObject
      {
         var _loc2_:Core = Core.getInstance();
         setPetPos(param1);
         var _loc3_:PetView = new PetView();
         _loc3_.gameObject = param1;
         var _loc4_:CharactorView = CharactorView(_loc2_.view.getC(param1.cid));
         _loc3_.faceToTarget(_loc4_);
         _loc3_.startFollow(_loc4_);
         addChild(_loc3_);
         _loc3_.container = this;
         param1.normalView = _loc3_;
         return _loc3_;
      }
   }
}

