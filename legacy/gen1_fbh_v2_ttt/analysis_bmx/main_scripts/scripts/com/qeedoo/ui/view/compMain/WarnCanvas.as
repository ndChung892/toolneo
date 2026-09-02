package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.utils.LinkEncode;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   public class WarnCanvas extends SimpleCanvas implements IMainUI
   {
      
      internal var _inviteAlert:Alert;
      
      private var currentWarn:*;
      
      private var _1768633739warnImage:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"warnImage",
                  "events":{"click":"__warnImage_click"},
                  "stylesFactory":function():void
                  {
                     this.themeColor = 2782887;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               })]
            };
         }
      });
      
      private var warnArray:Array = new Array();
      
      private var _core:Core = Core.getInstance();
      
      public function WarnCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
         this.cacheAsBitmap = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get warnImage() : Image
      {
         return this._1768633739warnImage;
      }
      
      public function addWarn(param1:Object) : void
      {
         warnArray.push(param1);
         visible = true;
         initView();
      }
      
      public function delMailWarn() : void
      {
         var _loc2_:Object = null;
         var _loc1_:Boolean = false;
         if(currentWarn)
         {
            _loc1_ = Boolean(currentWarn.isReceiver);
         }
         for each(_loc2_ in warnArray)
         {
            if(_loc2_.warnType == GamePredef.WARN_TYPE_ADDMAIL && _loc2_.isReceiver == _loc1_)
            {
               delete warnArray[warnArray.indexOf(_loc2_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      public function delChatGMWarn(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in warnArray)
         {
            if((_loc2_.warnType == GamePredef.WARN_TYPE_CHATGM || _loc2_.warnType == GamePredef.WARN_TYPE_CHATGM_MIN) && _loc2_.gmName == param1)
            {
               delete warnArray[warnArray.indexOf(_loc2_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function findStudent(param1:CloseEvent) : void
      {
         if(Boolean(param1.detail == Alert.YES) && Boolean(currentWarn) && currentWarn.warnType == GamePredef.WARN_TYPE_FINDSTUDENT)
         {
            _core.remote.acceptTeacher(currentWarn.teacherId);
         }
         delSWarn(currentWarn.teacherId);
      }
      
      private function delTWarn(param1:Number) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in warnArray)
         {
            if(_loc2_.warnType == GamePredef.WARN_TYPE_FINDTEACHER && _loc2_.studentId == param1)
            {
               delete warnArray[warnArray.indexOf(_loc2_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      public function update() : void
      {
      }
      
      public function initView() : void
      {
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc1_:String = "";
         if(warnArray.length != 0)
         {
            _loc2_ = int(warnArray.length - 1);
            while(_loc2_ >= 0)
            {
               if(warnArray[_loc2_])
               {
                  currentWarn = warnArray[_loc2_];
                  break;
               }
               _loc2_--;
            }
            if(currentWarn)
            {
               visible = true;
               if(Boolean(currentWarn.warnType) && currentWarn.warnType == GamePredef.WARN_TYPE_GROUP_INVITE)
               {
                  warnImage.height = 37;
                  warnImage.width = 37;
               }
               else
               {
                  warnImage.height = 50;
                  warnImage.width = 50;
               }
               switch(currentWarn.warnType)
               {
                  case GamePredef.WARN_TYPE_MIN:
                     warnImage.source = ResManager.ICON_WARN_WISPERMIN;
                     warnImage.toolTip = GamePredef.WARN_TIP_MIN.replace("{speakername}",currentWarn.speakerName);
                     break;
                  case GamePredef.WARN_TYPE_P2PWISPER:
                     warnImage.source = ResManager.ICON_WARN_WISPER;
                     warnImage.toolTip = currentWarn.speakerName + GamePredef.WARN_TIP_P2PWISPER;
                     break;
                  case GamePredef.WARN_TYPE_ADDMAIL:
                     _loc3_ = (currentWarn.info as String).charAt(0) + (currentWarn.info as String).charAt(1);
                     if(_loc3_ != Language.WARNCANVAS_S[6])
                     {
                        warnImage.source = ResManager.ICON_WARN_MAIL;
                        warnImage.toolTip = currentWarn.info;
                     }
                     else
                     {
                        warnImage.source = ResManager.ICON_SYSTEM_WARN_MAIL;
                        warnImage.toolTip = currentWarn.info;
                     }
                     if(_loc3_ == Language.WARNCANVAS_S[6])
                     {
                        warnImage.source = ResManager.ICON_SYSTEM_WARN_MAIL;
                        warnImage.toolTip = currentWarn.info;
                     }
                     break;
                  case GamePredef.WARN_TYPE_FINDTEACHER:
                     warnImage.source = ResManager.ICON_WARN_FTEACHER;
                     _loc1_ = Language.WARNCANVAS_S[0];
                     warnImage.toolTip = _loc1_.replace("{studentName}",currentWarn.studentName);
                     break;
                  case GamePredef.WARN_TYPE_FINDSTUDENT:
                     warnImage.source = ResManager.ICON_WARN_FSTUDENT;
                     _loc1_ = Language.WARNCANVAS_S[1];
                     warnImage.toolTip = _loc1_.replace("{teacherName}",currentWarn.teacherName);
                     break;
                  case GamePredef.WARN_TYPE_CHATGM:
                     warnImage.source = ResManager.ICON_WARN_GM_MSG;
                     warnImage.toolTip = GamePredef.WARN_TIP_CHATGM;
                     break;
                  case GamePredef.WARN_TYPE_CHATGM_MIN:
                     warnImage.source = ResManager.ICON_WARN_GM_MSG_MIN;
                     break;
                  case GamePredef.WARN_TYPE_GROUP_CHAT:
                     warnImage.source = ResManager.ICON_WARN_WISPER;
                     warnImage.toolTip = Language.GROUP_RECRUIT_PANEL_S[31];
                     break;
                  case GamePredef.WARN_TYPE_GROUP_APPLY:
                     warnImage.source = ResManager.ICON_WARN_WISPER;
                     _loc1_ = Language.GROUP_RECRUIT_PANEL_S[34];
                     warnImage.toolTip = _loc1_.replace("{name}",currentWarn.name);
                     break;
                  case GamePredef.WARN_TYPE_GROUP_INVITE:
                     warnImage.source = ResManager.ICON_WARN_GROUP_INVITE;
                     warnImage.toolTip = GamePredef.WARN_TIP_INVITED.replace("{name}",currentWarn.name);
                     break;
                  case GamePredef.WARN_TYPE_REDENVELOPE:
                     warnImage.source = ResManager.ICON_WARN_REDENVELOPE;
                     warnImage.toolTip = GamePredef.WARN_TIP_REDENVELOPE;
               }
            }
            else
            {
               visible = false;
            }
         }
         else
         {
            visible = false;
         }
      }
      
      private function delSWarn(param1:Number) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in warnArray)
         {
            if(_loc2_.warnType == GamePredef.WARN_TYPE_FINDSTUDENT && _loc2_.teacherId == param1)
            {
               delete warnArray[warnArray.indexOf(_loc2_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      public function openRedEnvelope(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_REDENVELOPE_PANEL);
         var _loc3_:* = {};
         _loc3_.code = 3;
         _loc3_.data = param1.data;
         _loc2_.openRESingle(_loc3_);
         delREWarn(param1.data.v);
      }
      
      public function delP2pWarn(param1:Number) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in warnArray)
         {
            if((_loc2_.warnType == GamePredef.WARN_TYPE_P2PWISPER || _loc2_.warnType == GamePredef.WARN_TYPE_MIN) && _loc2_.speaker == param1)
            {
               delete warnArray[warnArray.indexOf(_loc2_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      private function clickGroupInvited(param1:Object) : void
      {
         var str:String;
         var nameLink:String;
         var handler:Function = null;
         var currentWarn:Object = param1;
         if(_core.state != GamePredef.ST_CORE_NORMAL || currentWarn.warnType != GamePredef.WARN_TYPE_GROUP_INVITE)
         {
            return;
         }
         nameLink = LinkEncode.encode(GamePredef.TBL_CHARACTOR,currentWarn.pid,currentWarn.name);
         str = "";
         str = Language.GROUP_S[2];
         str = str.replace("{nameLink}",nameLink);
         _core.sysMidNote(str);
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               delGroupInvitedInfo(currentWarn.pid,2);
               _core.remote.groupJoin(currentWarn.pid);
            }
            if(param1.detail == Alert.NO)
            {
               delGroupInvitedInfo(currentWarn.pid,1);
               _core.remote.groupReqDeny(currentWarn.pid);
            }
         };
         if(_inviteAlert)
         {
            PopUpManager.removePopUp(_inviteAlert);
            _inviteAlert = null;
         }
         str = Language.GROUP_S[3];
         str = str.replace("{obj.name}",currentWarn.name);
         _inviteAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      public function __warnImage_click(param1:MouseEvent) : void
      {
         imageClick();
      }
      
      private function findTeacher(param1:CloseEvent) : void
      {
         if(Boolean(param1.detail == Alert.YES) && Boolean(currentWarn) && currentWarn.warnType == GamePredef.WARN_TYPE_FINDTEACHER)
         {
            _core.remote.acceptStudent(currentWarn.studentId);
         }
         delTWarn(currentWarn.studentId);
      }
      
      public function set warnImage(param1:Image) : void
      {
         var _loc2_:Object = this._1768633739warnImage;
         if(_loc2_ !== param1)
         {
            this._1768633739warnImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warnImage",_loc2_,param1));
         }
      }
      
      private function delREWarn(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in warnArray)
         {
            if(_loc2_.warnType == GamePredef.WARN_TYPE_REDENVELOPE && _loc2_.data.v == param1)
            {
               delete warnArray[warnArray.indexOf(_loc2_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      private function imageClick() : void
      {
         var _loc1_:String = "";
         switch(currentWarn.warnType)
         {
            case GamePredef.WARN_TYPE_MIN:
               ChatPanelUtil.getChatPanel(currentWarn.speaker,currentWarn.speakerName);
               break;
            case GamePredef.WARN_TYPE_P2PWISPER:
               ChatPanelUtil.getChatPanel(currentWarn.speaker,currentWarn.speakerName);
               break;
            case GamePredef.WARN_TYPE_ADDMAIL:
               _core.sysMidNote(currentWarn.info);
               if(Boolean(currentWarn) && Boolean(currentWarn.isReceiver))
               {
                  _core.view.getUI(ViewManager.PANEL_MAIL_NOTICE).visible = true;
               }
               delMailWarn();
               break;
            case GamePredef.WARN_TYPE_FINDTEACHER:
               _loc1_ = Language.WARNCANVAS_S[2];
               _loc1_ = _loc1_.replace("{studentName}",currentWarn.studentName);
               Alert.show(_loc1_,"",3,this,findTeacher);
               break;
            case GamePredef.WARN_TYPE_FINDSTUDENT:
               _loc1_ = Language.WARNCANVAS_S[4];
               _loc1_ = _loc1_.replace("{teacherName}",currentWarn.teacherName);
               Alert.show(_loc1_,"",3,this,findStudent);
               break;
            case GamePredef.WARN_TYPE_CHATGM:
               ChatPanelUtil.getChatGMPanel(currentWarn.gmName);
               break;
            case GamePredef.WARN_TYPE_CHATGM_MIN:
               ChatPanelUtil.getChatGMPanel(currentWarn.gmName);
               break;
            case GamePredef.WARN_TYPE_GROUP_CHAT:
               groupChat(currentWarn.warnType);
               break;
            case GamePredef.WARN_TYPE_GROUP_APPLY:
               groupChat(currentWarn.warnType);
               break;
            case GamePredef.WARN_TYPE_GROUP_INVITE:
               clickGroupInvited(currentWarn);
               break;
            case GamePredef.WARN_TYPE_REDENVELOPE:
               openRedEnvelope(currentWarn);
         }
      }
      
      public function reset() : void
      {
         warnArray = new Array();
         warnImage.source = null;
         visible = false;
      }
      
      private function delGroupInvitedInfo(param1:Number, param2:int) : *
      {
         var _loc3_:Object = null;
         if(param2 == 1)
         {
            for each(_loc3_ in warnArray)
            {
               if(_loc3_.warnType == GamePredef.WARN_TYPE_GROUP_INVITE && _loc3_.pid == param1)
               {
                  delete warnArray[warnArray.indexOf(_loc3_)];
                  currentWarn = undefined;
               }
            }
         }
         else
         {
            for each(_loc3_ in warnArray)
            {
               if(_loc3_.warnType == GamePredef.WARN_TYPE_GROUP_INVITE)
               {
                  delete warnArray[warnArray.indexOf(_loc3_)];
                  currentWarn = undefined;
               }
            }
         }
         initView();
      }
      
      private function groupChat(param1:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         if(_loc2_.dataFlag)
         {
            _loc2_.show();
         }
         else
         {
            _loc4_ = _core.view.getUI(ViewManager.PANEL_GROUP);
            _loc4_.show();
            _loc4_.playGlowEffect();
         }
         for each(_loc3_ in warnArray)
         {
            if(_loc3_.warnType == param1)
            {
               delete warnArray[warnArray.indexOf(_loc3_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
   }
}

