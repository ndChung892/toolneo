package com.qeedoo.game.logic
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.Alert1;
   import com.qeedoo.game.utils.LinkEncode;
   import com.qeedoo.game.view.ViewManager;
   import flash.utils.setTimeout;
   import mx.collections.ArrayCollection;
   import mx.controls.Alert;
   import mx.events.CloseEvent;
   import mx.managers.PopUpManager;
   
   public class Group
   {
      
      private var _inviteAlert:Alert;
      
      private var _core:Core = Core.getInstance();
      
      public function Group()
      {
         super();
      }
      
      public function onGroupInviteSent(param1:Object) : void
      {
         var _loc2_:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.pid,param1.name);
         var _loc3_:String = "";
         _loc3_ = Language.GROUP_S[0];
         _loc3_ = _loc3_.replace("{nameLink}",_loc2_);
         _core.sysMidNote(_loc3_);
      }
      
      public function onGroupInvited(param1:Object) : void
      {
         var nameLink:String = null;
         var str:String = null;
         var handler:Function = null;
         var invitedInfo:Object = null;
         var obj:Object = param1;
         if(Boolean(obj) && !obj.dis)
         {
            if(_core.state != GamePredef.ST_CORE_NORMAL)
            {
               return;
            }
            nameLink = LinkEncode.encode(GamePredef.TBL_CHARACTOR,obj.pid,obj.name);
            str = "";
            str = Language.GROUP_S[2];
            str = str.replace("{nameLink}",nameLink);
            _core.sysMidNote(str);
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.groupJoin(obj.pid);
               }
               if(param1.detail == Alert.NO)
               {
                  _core.remote.groupReqDeny(obj.pid);
               }
            };
            if(_inviteAlert)
            {
               PopUpManager.removePopUp(_inviteAlert);
               _inviteAlert = null;
            }
            str = Language.GROUP_S[3];
            str = str.replace("{obj.name}",obj.name);
            _inviteAlert = Alert1.show(str,null,Alert.YES | Alert.NO,null,handler);
         }
         else if(Boolean(obj) && obj.dis == "far")
         {
            invitedInfo = new Object();
            invitedInfo.pid = obj.pid;
            invitedInfo.name = obj.name;
            invitedInfo.warnType = GamePredef.WARN_TYPE_GROUP_INVITE;
            _core.addWarn(invitedInfo);
         }
      }
      
      public function onGroupRequestSent(param1:Object) : void
      {
         var _loc2_:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.pid,param1.name);
         var _loc3_:String = "";
         _loc3_ = Language.GROUP_S[6];
         _loc3_ = _loc3_.replace("{nameLink}",_loc2_);
         _core.sysMidNote(_loc3_);
      }
      
      public function onGroupJoined(param1:Object) : void
      {
         if(!_core.groupMemberListArr)
         {
            _core.groupMemberListArr = new Object();
         }
         if(param1.groupCharactorList)
         {
            groupCreateChars(param1.groupCharactorList,param1.groupAKFCidList);
         }
         setGroupState(param1.mList);
      }
      
      public function onGroupDismiss(param1:Object) : void
      {
         showGroupNote(param1,GamePredef.SYS_MSG_GROUP_DISMISS);
         clearGroupState(param1);
         var _loc2_:Object = param1.head;
         while(_loc2_)
         {
            if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_loc2_.obj]))
            {
               _core.groupMemberListArr[_loc2_.obj] = null;
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function onGroupDeny(param1:Object) : void
      {
         var _loc2_:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name);
         var _loc3_:String = "";
         _loc3_ = Language.GROUP_S[4];
         _loc3_ = _loc3_.replace("{nameLink}",_loc2_);
         _core.sysMidNote(_loc3_);
      }
      
      public function groupCreateChars(param1:Object, param2:Object = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Charactor = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_ != null)
            {
               if(_loc3_.vipT < 0 && _loc3_.SpeT > 0)
               {
                  _loc3_.vipT = _loc3_.SpeT;
               }
               if(_loc3_.vipT > 0 && _loc3_.SpeT > 0 && _loc3_.vipT != _loc3_.SpeT && _core.checkTitleShow(_loc3_.SpeT))
               {
                  _loc3_.t = _loc3_.SpeT;
               }
               _loc4_ = new Charactor();
               _loc4_.data = _loc3_;
               if(isInThisList(param2,_loc3_.id))
               {
                  _loc4_.groupAfk = true;
               }
               else
               {
                  _loc4_.groupAfk = false;
               }
               if(_core.groupMemberListArr[_loc3_.id])
               {
                  _core.groupMemberListArr[_loc3_.id] = null;
               }
               _core.groupMemberListArr[_loc3_.id] = _loc4_;
            }
         }
      }
      
      private function onAddGroupFailed(param1:Object) : void
      {
         var _loc2_:String = "";
         if(Boolean(param1.pid) && Boolean(param1.name))
         {
            _loc2_ = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.pid,param1.name);
         }
         switch(param1.type)
         {
            case 0:
               _core.sysMidNote(GamePredef.SYS_MSG_GROUP_INVITETOOFAR);
               break;
            case 1:
               _core.sysMidNote(_loc2_ + GamePredef.SYS_MSG_GROUP_INTEAM);
               break;
            case 2:
               _core.sysMidNote(_loc2_ + GamePredef.SYS_MSG_GROUP_INOTHERTEAM);
               break;
            case 3:
               _core.sysMidNote(GamePredef.SYS_MSG_GROUP_FULL);
               break;
            case 4:
               _core.sysMidNote(GamePredef.SYS_MSG_GROUP_NOT_SAME_LEAGUE);
               break;
            case 5:
               _core.sysMidNote(GamePredef.SYS_MSG_GROUP_NOT_LEAGUE_AND_LEAGUE);
         }
      }
      
      private function showGroupNote(param1:Object, param2:String) : void
      {
         var _loc3_:Object = param1.head;
         while(_loc3_)
         {
            if(_loc3_.obj == _core.cid)
            {
               _core.sysMidNote(param2);
            }
            _loc3_ = _loc3_.next;
         }
      }
      
      public function unGroupAfk(param1:Object) : void
      {
         var _loc2_:* = _core.getCharactor(param1.mList.head.obj);
         if(_loc2_)
         {
            _followLeader(param1);
         }
         else
         {
            setTimeout(_followLeader,1500,param1);
         }
      }
      
      private function setGroupState(param1:Object) : void
      {
         var _loc5_:Charactor = null;
         var _loc6_:Charactor = null;
         var _loc2_:Object = param1.head;
         var _loc3_:Object = _loc2_.next;
         var _loc4_:Charactor = _core.getCharactor(_loc2_.obj);
         if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_loc2_.obj]))
         {
            _core.groupMemberListArr[_loc2_.obj].isLeader = true;
         }
         if(!_loc4_)
         {
            while(_loc3_)
            {
               _loc5_ = _core.getCharactor(_loc3_.obj);
               if(_loc5_)
               {
                  if(Number(_loc3_.obj) == _core.cid)
                  {
                     _loc5_.isLeader = false;
                     _loc5_.inGroup = true;
                     _loc5_.groupAfk = true;
                     _core.player.walkable = true;
                     _core.player.groupList = param1;
                     _loc5_.normalView.stopFollow();
                     _loc5_.normalView.hideLeaderFlag();
                  }
               }
               _loc3_ = _loc3_.next;
            }
            return;
         }
         _loc4_.isLeader = true;
         _loc4_.inGroup = true;
         _loc4_.groupAfk = false;
         _loc4_.normalView.stopFollow();
         _loc4_.normalView.showLeaderFlag();
         if(_loc2_.obj == _core.cid)
         {
            _core.player.walkable = true;
            _core.player.groupList = param1;
         }
         while(_loc3_)
         {
            _loc6_ = _core.getCharactor(_loc2_.obj);
            _loc5_ = _core.getCharactor(_loc3_.obj);
            if(!_loc5_)
            {
               if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_loc3_.obj]))
               {
                  _core.groupMemberListArr[_loc3_.obj].isLeader = false;
               }
               _loc3_ = _loc3_.next;
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_loc3_.obj]))
               {
                  _core.groupMemberListArr[_loc3_.obj].isLeader = false;
               }
               _loc5_.isLeader = false;
               _loc5_.inGroup = true;
               if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_loc3_.obj]))
               {
                  _loc5_.groupAfk = _core.groupMemberListArr[_loc3_.obj].groupAfk;
               }
               if(_loc3_.obj == _core.cid)
               {
                  if(_loc5_.groupAfk)
                  {
                     _core.player.walkable = true;
                  }
                  else
                  {
                     _core.player.walkable = false;
                  }
                  _core.player.groupList = param1;
               }
               if(Boolean(_loc5_.normalView) && Boolean(_loc6_.normalView))
               {
                  if(_loc5_.groupAfk)
                  {
                     _loc5_.normalView.stopFollow();
                  }
                  else
                  {
                     _loc5_.normalView.startFollow(_loc6_.normalView);
                  }
                  _loc5_.normalView.hideLeaderFlag();
               }
               if(_loc5_.groupAfk)
               {
                  _loc3_ = _loc3_.next;
               }
               else
               {
                  _loc2_ = _loc3_;
                  _loc3_ = _loc3_.next;
               }
            }
         }
      }
      
      public function onGroupInviteFailed(param1:Object) : void
      {
         onAddGroupFailed(param1);
      }
      
      public function isInThisList(param1:Object, param2:Number) : Boolean
      {
         var _loc3_:* = undefined;
         if(!param1)
         {
            return false;
         }
         for each(_loc3_ in param1)
         {
            if(Number(_loc3_) == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public function onGroupRequestFailed(param1:Object) : void
      {
         onAddGroupFailed(param1);
      }
      
      public function onGroupAfk(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(Boolean(_loc2_) && Boolean(_loc2_.normalView))
         {
            _loc2_.normalView.stopFollow();
         }
         setGroupState(param1.mList);
         if(param1.cid == _core.cid)
         {
            _loc3_ = _core.view.getUI(ViewManager.MAIN_GROUP);
            if(_loc3_)
            {
               _loc3_.refresh();
            }
         }
      }
      
      public function onGroupCantJoin(param1:Number, param2:int) : void
      {
         var _loc3_:* = undefined;
         if(Boolean(param1) && Boolean(param2))
         {
            _loc3_ = "";
            if(param1 == _core.cid)
            {
               _loc3_ = Language.GAMEPREDEF_S[528];
            }
            else if(param1 > 0)
            {
               _loc3_ = Language.GAMEPREDEF_S[529];
            }
            if(param2 == 10)
            {
               _loc3_ += GamePredef.SYS_MSG_GROUP_CANTJOIN_GC_STATE;
            }
            else if(param2 == 20)
            {
               _loc3_ += GamePredef.SYS_MSG_GROUP_CANTJOIN_GC_FULL;
            }
            else if(param2 == 30)
            {
               _loc3_ += GamePredef.SYS_MSG_GROUP_CANTJOIN_GC_INGROUP;
            }
            _core.sysMidNote(_loc3_);
         }
      }
      
      public function onGroupRequested(param1:Object) : void
      {
         var str:String;
         var nameLink:String;
         var handler:Function = null;
         var obj:Object = param1;
         if(Boolean(_core.view.getUI(ViewManager.CANVA_GUIDE).visible) || _core.state != GamePredef.ST_CORE_NORMAL)
         {
            return;
         }
         nameLink = LinkEncode.encode(GamePredef.TBL_CHARACTOR,obj.pid,obj.name);
         str = "";
         _core.sysMidNote(nameLink + Language.GROUP_S[5]);
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.groupAdd(obj.pid);
            }
            if(param1.detail == Alert.NO)
            {
               _core.remote.groupReqDeny(obj.pid);
            }
         };
         if(_inviteAlert)
         {
            PopUpManager.removePopUp(_inviteAlert);
            _inviteAlert = null;
         }
         str = Language.GROUP_S[5];
         str = str.replace("{nameLink}",obj.name);
         _inviteAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      private function clearGroupLeaderState(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.sid);
         if(_loc2_)
         {
            _loc2_.inGroup = false;
            _loc2_.isLeader = false;
            _loc2_.groupAfk = false;
            if(_loc2_.normalView)
            {
               _loc2_.normalView.stopFollow();
               _loc2_.normalView.hideLeaderFlag();
            }
         }
         if(_core.cid == param1.sid)
         {
            _core.player.groupList = null;
            _core.player.walkable = true;
         }
      }
      
      public function onGroupLeave(param1:Object) : void
      {
         var c:Charactor;
         var obj:Object = param1;
         var msg:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,obj.sid,obj.name) + GamePredef.SYS_MSG_GROUP_LEAVE;
         showGroupNote(obj.mList,msg);
         setGroupState(obj.mList);
         if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[obj.sid]))
         {
            _core.groupMemberListArr[obj.sid] = null;
         }
         if(obj.sid == _core.player.id)
         {
            _core.player.groupList = [];
            _core.player.isLeader = false;
            _core.player.inGroup = false;
            _core.player.walkable = true;
            _core.player.groupAfk = false;
            _core.player.groupRequestAC = new ArrayCollection();
            if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
            {
               try
               {
                  _core.player.view.moveToSafeArea();
               }
               catch(e:Error)
               {
               }
            }
         }
         c = _core.getCharactor(obj.sid);
         if(Boolean(c) && Boolean(c.normalView))
         {
            c.normalView.stopFollow();
         }
         clearGroupLeaderState(obj);
      }
      
      private function _followLeader(param1:Object) : void
      {
         var _loc2_:* = undefined;
         setGroupState(param1.mList);
         if(param1.cid == _core.cid)
         {
            _loc2_ = _core.view.getUI(ViewManager.MAIN_GROUP);
            if(_loc2_)
            {
               _loc2_.refresh();
            }
         }
      }
      
      public function onGroupGiveLeader(param1:Object) : void
      {
         var _loc2_:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.sid,param1.oName) + GamePredef.SYS_MSG_GROUP_GIVELEADER + LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.tid,param1.nName);
         showGroupNote(param1.mList,_loc2_);
         if(param1.afkflag)
         {
            if(_core.groupMemberListArr)
            {
               if(_core.groupMemberListArr[param1.tid])
               {
                  _core.groupMemberListArr[param1.tid].groupAfk = false;
               }
               if(_core.groupMemberListArr[param1.sid])
               {
                  _core.groupMemberListArr[param1.sid].groupAfk = true;
               }
            }
         }
         setGroupState(param1.mList);
      }
      
      public function onGroupRequestDeny(param1:Object) : void
      {
         var _loc2_:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name);
         var _loc3_:String = "";
         _loc3_ = Language.GROUP_S[7];
         _loc3_ = _loc3_.replace("{nameLink}",_loc2_);
         _core.sysMidNote(_loc3_);
      }
      
      private function clearGroupState(param1:Object) : void
      {
         var p:Charactor = null;
         var mList:Object = param1;
         var node:Object = mList.head;
         for(; node; node = node.next)
         {
            p = _core.getCharactor(node.obj);
            if(p)
            {
               p.inGroup = false;
               p.isLeader = false;
               p.groupAfk = false;
               if(p.normalView)
               {
                  p.normalView.stopFollow();
                  p.normalView.hideLeaderFlag();
               }
            }
            if(_core.cid == node.obj)
            {
               _core.player.groupList = null;
               _core.player.walkable = true;
               _core.player.groupAfk = false;
               _core.player.groupRequestAC = new ArrayCollection();
               if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
               {
                  try
                  {
                     _core.player.view.moveToSafeArea();
                  }
                  catch(e:Error)
                  {
                  }
                  continue;
               }
            }
         }
      }
   }
}

