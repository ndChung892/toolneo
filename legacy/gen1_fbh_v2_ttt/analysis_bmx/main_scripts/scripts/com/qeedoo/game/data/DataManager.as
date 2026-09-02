package com.qeedoo.game.data
{
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.EventDispatcher;
   import flash.net.Responder;
   import flash.utils.setTimeout;
   
   public class DataManager extends EventDispatcher
   {
      
      private static var _instance:DataManager;
      
      public var gameDataIndex3:Object = {};
      
      private var _bagIndexInited:Boolean;
      
      private var _gsInited:Boolean;
      
      private var _bagSlotIndex:Object;
      
      private var _tmpDict:Object;
      
      private var _sList:Object;
      
      public var gameData:Array;
      
      private var _sInited:Boolean;
      
      private var _gsList:Object;
      
      public var gameDataIndex:Object = {};
      
      public var gameDataIndex2:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      public function DataManager(param1:Single)
      {
         super();
         _sInited = false;
         _gsInited = false;
         _bagIndexInited = false;
         gameData = GameData.d;
         createDataIndex();
      }
      
      public static function getInstance() : DataManager
      {
         if(_instance == null)
         {
            _instance = new DataManager(new Single());
         }
         return _instance;
      }
      
      public function get sInited() : Boolean
      {
         return _sInited;
      }
      
      private function initBagSlotIndex() : void
      {
         _bagSlotIndex = {};
         _initBagSlotIndex();
      }
      
      public function set gsInited(param1:Boolean) : void
      {
         _gsInited = param1;
      }
      
      private function addSlotToUnhandled(param1:Number) : void
      {
         if(!_bagSlotIndex)
         {
            _bagSlotIndex = {};
         }
         if(!_bagSlotIndex["unH"])
         {
            _bagSlotIndex["unH"] = new Array();
         }
         _bagSlotIndex["unH"].push(param1);
      }
      
      private function onNewData(param1:Object) : void
      {
         if(param1)
         {
            addNewData(param1.type,param1.data);
         }
      }
      
      public function addBagSlotIndex(param1:Number, param2:Object) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_bagSlotIndex)
         {
            _bagSlotIndex = {};
         }
         if(!param2)
         {
            return;
         }
         if(Boolean(_sList) && Boolean(_sList[param1]))
         {
            _loc3_ = Number(_sList[param1].sid);
            _loc4_ = Number(_sList[param1].type);
            _sList[param1].tid = param2.id;
            if(!isBagSlot(_loc3_))
            {
               return;
            }
            if(!_bagSlotIndex[_loc4_])
            {
               _bagSlotIndex[_loc4_] = {};
            }
            if(_bagSlotIndex[_loc4_][param2.id] != null)
            {
               if(_bagSlotIndex[_loc4_][param2.id].indexOf(param1) < 0)
               {
                  _bagSlotIndex[_loc4_][param2.id].push(param1);
               }
            }
            else
            {
               _bagSlotIndex[_loc4_][param2.id] = [];
               _bagSlotIndex[_loc4_][param2.id].push(param1);
            }
         }
      }
      
      public function addNewData(param1:int, param2:*) : void
      {
         if(param2 == null)
         {
            return;
         }
         if(gameData == null)
         {
            gameData = [];
         }
         if(gameData[param1] == null)
         {
            gameData[param1] = [];
         }
         gameData[param1][param2.id] = param2;
         var _loc3_:GameDataEvent = new GameDataEvent(GameDataEvent.DATA_RECIEVED + "_" + param1 + "_" + param2.id);
         _loc3_.data = {
            "type":param1,
            "index":param2.id,
            "data":param2
         };
         dispatchEvent(_loc3_);
      }
      
      public function updateData(param1:int, param2:*) : void
      {
         gameData[param1][param2.id] = param2;
      }
      
      public function getDataPackage(param1:int, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:GameDataEvent = null;
         var _loc6_:Core = null;
         if(gameData[param1])
         {
            _loc3_ = gameData[param1][param2];
         }
         if(_loc3_)
         {
            if(param1 == GamePredef.TBL_PET)
            {
               _loc4_ = gameData[GamePredef.TBL_CREATURE][_loc3_.tid];
            }
            else
            {
               _loc4_ = gameData[param1 + 1][_loc3_.tid];
            }
         }
         if(Boolean(_loc3_) && Boolean(_loc4_))
         {
            _loc5_ = new GameDataEvent(GameDataEvent.DATA_PACKAGE_RECIEVED + "_" + param1 + "_" + param2);
            _loc5_.data = {
               "type":param1,
               "inst":_loc3_,
               "temp":_loc4_
            };
            dispatchEvent(_loc5_);
         }
         else
         {
            _loc6_ = Core.getInstance();
            _loc6_.remote.nc.call("getDataPackageClient",new Responder(onNewDataPackage),param1,param2);
         }
      }
      
      public function clearData(param1:int, param2:Number) : void
      {
         gameData[param1][param2] = null;
      }
      
      public function isBagSlot(param1:Number) : Boolean
      {
         if(param1 > GamePredef.SLOT_SID_BAG[0] && param1 <= GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum] || param1 > GamePredef.SLOT_SID_BAG[7] && param1 <= GamePredef.SLOT_SID_BAG[8] || param1 > GamePredef.SLOT_SID_BAG[8] && param1 <= GamePredef.SLOT_SID_BAG[9])
         {
            return true;
         }
         return false;
      }
      
      public function getData(param1:int, param2:Number) : Object
      {
         if(gameData)
         {
            if(gameData[param1])
            {
               if(gameData[param1][param2])
               {
                  return gameData[param1][param2];
               }
            }
         }
         return null;
      }
      
      public function get bagIdxInited() : Boolean
      {
         return _bagIndexInited;
      }
      
      public function delSlot(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:GameDataEvent = null;
         if(param1.id != undefined)
         {
            delBagSlotIndex(param1.id);
            delete _sList[param1.id];
            _loc2_ = true;
         }
         else if(param1.sid != undefined)
         {
            for(_loc3_ in sList)
            {
               if(sList[_loc3_].sid == param1.sid)
               {
                  delBagSlotIndex(Number(_loc3_));
                  delete sList[_loc3_];
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            _loc4_ = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
            _loc4_.data = {};
            dispatchEvent(_loc4_);
         }
      }
      
      public function get gsList() : Object
      {
         return _gsList;
      }
      
      public function extAddBagSlotIndex(param1:Object) : void
      {
         var _loc3_:GameDataEvent = null;
         var _loc2_:Object = _core.getTemplateData(param1.type,param1.itemId,false);
         if(_loc2_)
         {
            addBagSlotIndex(Number(param1.id),_loc2_);
            _loc3_ = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
            _loc3_.data = {};
            dispatchEvent(_loc3_);
         }
         else
         {
            addSlotToUnhandled(Number(param1.id));
            setTimeout(handleSlotIndexLater,200);
         }
      }
      
      public function getChaQuestFullData(param1:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc2_:Object = getQuestFullData(param1.qid);
         if(!_loc2_)
         {
            return null;
         }
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      public function get sList() : Object
      {
         return _sList;
      }
      
      public function initGuildSlotData(param1:Object) : void
      {
         _gsList = param1;
         _gsInited = true;
         Core.getInstance().view.getUI(ViewManager.PANEL_GUILDWAREHOUSE).updateView();
      }
      
      public function createIndex(param1:int, param2:Object) : void
      {
         if(param2)
         {
            if(!gameDataIndex[param1][param2[GamePredef.TBL_INDEX_ARRAY[param1]]])
            {
               gameDataIndex[param1][param2[GamePredef.TBL_INDEX_ARRAY[param1]]] = {};
            }
            gameDataIndex[param1][param2[GamePredef.TBL_INDEX_ARRAY[param1]]][param2.id] = param2;
         }
      }
      
      public function createDataIndex() : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc1_:int = 0;
         trace(">> Index start...");
         for(_loc2_ in gameData)
         {
            _loc3_ = Number(_loc2_);
            gameDataIndex[_loc2_] = {};
            gameDataIndex2[_loc2_] = {};
            gameDataIndex3[_loc2_] = {};
            for(_loc4_ in gameData[_loc3_])
            {
               _loc5_ = Number(_loc4_);
               if(GamePredef.TBL_INDEX_ARRAY[_loc3_] != null)
               {
                  createIndex(_loc3_,gameData[_loc3_][_loc5_]);
               }
               if(GamePredef.TBL_INDEX_ARRAY2[_loc3_] != null)
               {
                  createIndex2(_loc3_,gameData[_loc3_][_loc5_]);
               }
               if(GamePredef.TBL_INDEX_ARRAY3[_loc3_] != null)
               {
                  createIndex3(_loc3_,gameData[_loc3_][_loc5_]);
               }
            }
         }
         trace(">> Index finished.");
      }
      
      public function createIndex3(param1:int, param2:Object) : void
      {
         if(param2)
         {
            if(!gameDataIndex3[param1][param2[GamePredef.TBL_INDEX_ARRAY3[param1]]])
            {
               gameDataIndex3[param1][param2[GamePredef.TBL_INDEX_ARRAY3[param1]]] = {};
            }
            if(param1 == GamePredef.TBL_CHARACTOR)
            {
               if(param2[GamePredef.TBL_INDEX_ARRAY3[param1]] == -1)
               {
                  return;
               }
            }
            gameDataIndex3[param1][param2[GamePredef.TBL_INDEX_ARRAY3[param1]]][param2.id] = param2;
         }
      }
      
      public function addSlot(param1:Object) : void
      {
         if(_sList == null)
         {
            _sList = {};
         }
         _sList[param1.id] = param1;
         extAddBagSlotIndex(param1);
      }
      
      public function handleSlotIndexLater() : void
      {
         var _loc1_:* = 0;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:GameDataEvent = null;
         if(Boolean(_bagSlotIndex) && Boolean(_bagSlotIndex["unH"]))
         {
            _loc1_ = int(_bagSlotIndex["unH"].length);
            if(_loc1_ > 0)
            {
               for(_loc4_ in _bagSlotIndex["unH"])
               {
                  if(_bagSlotIndex["unH"][_loc4_] == -1)
                  {
                     _loc1_--;
                  }
                  else
                  {
                     _loc2_ = _sList[_bagSlotIndex["unH"][_loc4_]];
                     if(!_loc2_)
                     {
                        _bagSlotIndex["unH"][_loc4_] = -1;
                        _loc1_--;
                     }
                     else
                     {
                        _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId,false);
                        if(_loc3_)
                        {
                           addBagSlotIndex(Number(_loc2_.id),_loc3_);
                           _loc1_--;
                           _bagSlotIndex["unH"][_loc4_] = -1;
                        }
                     }
                  }
               }
            }
            if(_loc1_ > 0)
            {
               setTimeout(handleSlotIndexLater,2000);
            }
            else
            {
               _bagSlotIndex["unH"] = null;
               _core.productFlag = true;
               _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum();
               _core.view.getUI(ViewManager.PANEL_BATTLESET).setNum();
               _loc5_ = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
               _loc5_.data = {};
               dispatchEvent(_loc5_);
            }
         }
         else
         {
            _core.productFlag = true;
         }
      }
      
      public function getGameData(param1:int, param2:Number) : Object
      {
         var _loc3_:Core = null;
         if(param1 <= 0 || param2 <= 0)
         {
            return null;
         }
         if(param1 == GamePredef.TBL_QUEST)
         {
            return getQuestFullData(param2);
         }
         if(gameData == null)
         {
            gameData = [];
         }
         if(gameData[param1] == null)
         {
            gameData[param1] = [];
         }
         if(gameData[param1][param2] == null)
         {
            _loc3_ = Core.getInstance();
            if(Number(param2) > 0)
            {
               _loc3_.remote.call("gdc",new Responder(onNewData),param1,param2);
            }
            return null;
         }
         return gameData[param1][param2];
      }
      
      private function onNewDataPackage(param1:Object) : void
      {
         addNewData(param1.type,param1.inst);
         if(param1.type == GamePredef.TBL_PET)
         {
            addNewData(GamePredef.TBL_CREATURE,param1.temp);
         }
         else
         {
            addNewData(param1.type + 1,param1.temp);
         }
         var _loc2_:GameDataEvent = new GameDataEvent(GameDataEvent.DATA_PACKAGE_RECIEVED + "_" + param1.type + "_" + param1.index);
         _loc2_.data = param1;
         dispatchEvent(_loc2_);
      }
      
      public function delGuildSlot(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1.id != undefined)
         {
            delete _gsList[param1.id];
         }
         else if(param1.sid != undefined)
         {
            for(_loc2_ in gsList)
            {
               if(gsList[_loc2_].sid == param1.sid)
               {
                  delete gsList[_loc2_];
               }
            }
         }
      }
      
      public function addNewDataList(param1:int, param2:*) : void
      {
         if(param2 == null)
         {
            return;
         }
         if(gameData == null)
         {
            gameData = [];
         }
         gameData[param1] = param2;
         var _loc3_:GameDataEvent = new GameDataEvent(GameDataEvent.DATA_RECIEVED + "_" + param1);
         _loc3_.data = {
            "type":param1,
            "data":param2
         };
         dispatchEvent(_loc3_);
      }
      
      public function updateGuildSlot(param1:Object) : void
      {
         _gsList[param1.id] = param1;
      }
      
      public function get gsInited() : Boolean
      {
         return _gsInited;
      }
      
      public function createIndex2(param1:int, param2:Object) : void
      {
         if(param2)
         {
            if(!gameDataIndex2[param1][param2[GamePredef.TBL_INDEX_ARRAY2[param1]]])
            {
               gameDataIndex2[param1][param2[GamePredef.TBL_INDEX_ARRAY2[param1]]] = {};
            }
            gameDataIndex2[param1][param2[GamePredef.TBL_INDEX_ARRAY2[param1]]][param2.id] = param2;
         }
      }
      
      public function get bagSlotIndex() : Object
      {
         return _bagSlotIndex;
      }
      
      public function createAllIndex(param1:int, param2:Object) : void
      {
         createIndex(param1,param2);
         createIndex2(param1,param2);
         createIndex3(param1,param2);
      }
      
      public function reset() : void
      {
         _sInited = false;
         _gsInited = false;
         _bagIndexInited = false;
         _sList = null;
         _gsList = null;
         _bagSlotIndex = null;
      }
      
      private function onNewDataList(param1:Object) : void
      {
         if(param1)
         {
            addNewDataList(param1.type,param1.data);
         }
      }
      
      public function getQuestFullData(param1:int) : Object
      {
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         var _loc8_:Object = null;
         var _loc9_:* = undefined;
         var _loc10_:Object = null;
         var _loc11_:* = undefined;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:* = undefined;
         var _loc15_:Object = null;
         var _loc2_:Object = {};
         _loc2_.id = param1;
         _loc2_.data = gameData[GamePredef.TBL_QUEST][param1];
         if(!_loc2_.data)
         {
            return null;
         }
         var _loc3_:Object = gameData[GamePredef.TBL_NPC][_loc2_.data.finishNpc];
         var _loc4_:Object = gameData[GamePredef.TBL_NPC][_loc2_.data.startNpc];
         if(_loc3_)
         {
            _loc2_.fName = _loc3_.name;
            _loc2_.fMid = _loc3_.posMapId;
         }
         if(_loc4_)
         {
            _loc2_.sMid = _loc4_.posMapId;
            _loc2_.sName = _loc4_.name;
         }
         _loc2_.pre = getQuestPre(param1);
         var _loc5_:Object = gameDataIndex[GamePredef.TBL_QUEST_REQUIRE][param1];
         if(_loc5_)
         {
            for(_loc7_ in _loc5_)
            {
               if(_loc5_[_loc7_])
               {
                  if(!_loc6_)
                  {
                     _loc6_ = {};
                  }
                  _loc6_[_loc7_] = _loc5_[_loc7_];
                  if(_loc5_[_loc7_].kind == GamePredef.QUEST_REQUIRE_CREATUR)
                  {
                     _loc8_ = {};
                     for(_loc9_ in _loc5_[_loc7_])
                     {
                        _loc8_[_loc9_] = _loc5_[_loc7_][_loc9_];
                     }
                     _loc8_["creature"] = gameData[GamePredef.TBL_CREATURE][_loc5_[_loc7_].itemId];
                     _loc6_[_loc7_] = _loc8_;
                  }
                  else if(_loc5_[_loc7_].kind == GamePredef.QUEST_REQUIRE_ITEM)
                  {
                     _loc10_ = {};
                     for(_loc11_ in _loc5_[_loc7_])
                     {
                        _loc10_[_loc11_] = _loc5_[_loc7_][_loc11_];
                     }
                     _loc12_ = gameData[_loc5_[_loc7_].type][_loc5_[_loc7_].itemId];
                     if(_loc12_)
                     {
                        _loc10_["name"] = _loc12_.name;
                     }
                     else
                     {
                        _loc10_["name"] = "";
                     }
                     _loc6_[_loc7_] = _loc10_;
                  }
                  else if(_loc5_[_loc7_].kind == GamePredef.QUEST_REQUIRE_PET)
                  {
                     _loc13_ = {};
                     for(_loc14_ in _loc5_[_loc7_])
                     {
                        _loc13_[_loc14_] = _loc5_[_loc7_][_loc14_];
                     }
                     _loc15_ = gameData[GamePredef.TBL_CREATURE][_loc5_[_loc7_].itemId];
                     if(_loc15_)
                     {
                        _loc13_["name"] = _loc15_.name;
                     }
                     else
                     {
                        _loc13_["name"] = "";
                     }
                     _loc6_[_loc7_] = _loc13_;
                  }
               }
            }
         }
         _loc2_.require = _loc6_;
         _loc2_.award = gameDataIndex[GamePredef.TBL_QUEST_AWARD][param1];
         _loc2_.state = -1;
         return _loc2_;
      }
      
      public function delData(param1:int, param2:Number) : void
      {
         var _loc3_:* = gameData[param1][param2];
         gameData[param1][param2] = null;
         delete gameData[param1][param2];
      }
      
      public function getQuestPre(param1:Number) : Object
      {
         return gameDataIndex[GamePredef.TBL_QUEST_PRE][param1];
      }
      
      public function set tmpDict(param1:Object) : void
      {
         _tmpDict = param1;
      }
      
      public function _initBagSlotIndex() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         _bagIndexInited = true;
         var _loc1_:int = -1;
         var _loc2_:int = -1;
         for each(_loc4_ in _sList)
         {
            if(isBagSlot(Number(_loc4_.sid)))
            {
               _loc1_ = int(_loc4_.type);
               _loc2_ = int(_loc4_.itemId);
               _loc3_ = _core.getTemplateData(_loc1_,_loc2_,false);
               if(_loc3_)
               {
                  addBagSlotIndex(Number(_loc4_.id),_loc3_);
               }
               else
               {
                  addSlotToUnhandled(Number(_loc4_.id));
               }
            }
         }
         setTimeout(handleSlotIndexLater,3000);
      }
      
      public function getGuildSlot(param1:Object) : Object
      {
         var _loc2_:Object = null;
         if(param1.id != undefined)
         {
            if(_gsList == null)
            {
               return null;
            }
            return _gsList[param1.id];
         }
         if(param1.sid != undefined)
         {
            for each(_loc2_ in gsList)
            {
               if(_loc2_.sid == param1.sid)
               {
                  return _loc2_;
               }
            }
            return null;
         }
         return null;
      }
      
      public function updateSlot(param1:Object) : void
      {
         _sList[param1.id] = param1;
         extAddBagSlotIndex(param1);
      }
      
      public function hasData(param1:int, param2:Number) : Boolean
      {
         return gameData[param1] != null && gameData[param1][param2] != null;
      }
      
      public function get tmpDict() : Object
      {
         return _tmpDict;
      }
      
      public function addGuildSlot(param1:Object) : void
      {
         if(_gsList == null)
         {
            _gsList = {};
         }
         _gsList[param1.id] = param1;
      }
      
      public function clearDataType(param1:int) : void
      {
         gameData[param1] = null;
      }
      
      public function getSlot(param1:Object) : Object
      {
         var _loc2_:Object = null;
         if(param1.id != undefined)
         {
            return _sList[param1.id];
         }
         if(param1.sid != undefined)
         {
            for each(_loc2_ in sList)
            {
               if(_loc2_.sid == param1.sid)
               {
                  return _loc2_;
               }
            }
            return null;
         }
         return null;
      }
      
      public function delBagSlotIndex(param1:Number) : void
      {
         var _loc5_:GameDataEvent = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc2_:Number = Number(_sList[param1].type);
         var _loc3_:Number = Number(_sList[param1].itemId);
         var _loc4_:Object = _core.getTemplateData(_loc2_,_loc3_,false);
         if(_loc4_)
         {
            _loc6_ = Number(_loc4_.id);
            if(Boolean(_bagSlotIndex) && Boolean(_bagSlotIndex[_loc2_]) && Boolean(_bagSlotIndex[_loc2_][_loc6_]))
            {
               _loc7_ = int(_bagSlotIndex[_loc2_][_loc6_].indexOf(param1));
               if(_loc7_ >= 0)
               {
                  _bagSlotIndex[_loc2_][_loc6_].splice(_loc7_,1);
                  if(_bagSlotIndex[_loc2_][_loc6_].length <= 0)
                  {
                     delete _bagSlotIndex[_loc2_][_loc6_];
                  }
               }
            }
         }
         else
         {
            for(_loc8_ in _bagSlotIndex[_loc2_])
            {
               _loc7_ = int(_bagSlotIndex[_loc2_][_loc8_].indexOf(param1));
               if(_loc7_ >= 0)
               {
                  _bagSlotIndex[_loc2_][_loc8_].splice(_loc7_,1);
                  if(_bagSlotIndex[_loc2_][_loc8_].length <= 0)
                  {
                     delete _bagSlotIndex[_loc2_][_loc8_];
                  }
                  break;
               }
            }
         }
         _loc5_ = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc5_.data = {};
         dispatchEvent(_loc5_);
      }
      
      public function initSlotData(param1:Object) : void
      {
         _sList = param1;
         _sInited = true;
         if(!_bagIndexInited)
         {
            initBagSlotIndex();
         }
      }
      
      private function delDataIndex(param1:int, param2:*, param3:Array, param4:Array) : void
      {
         if(param3[param1] == null)
         {
            return;
         }
         var _loc5_:Number = Number(param4[param1][param2[param3[param1]]].indexOf(param2));
         param4[param1][param2[param3[param1]]][_loc5_] = null;
         delete param4[param1][param2[param3[param1]]][_loc5_];
      }
      
      public function getGameDataList(param1:int) : Array
      {
         var _loc2_:Core = null;
         if(gameData == null || gameData[param1] == null || gameData[param1].length == 0)
         {
            _loc2_ = Core.getInstance();
            _loc2_.remote.call("gdc",new Responder(onNewDataList),param1,-1);
            return null;
         }
         return gameData[param1];
      }
   }
}

class Single
{
   
   public function Single()
   {
      super();
   }
}
