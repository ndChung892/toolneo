package com.qeedoo.ui.utils
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.ChatGMPanel;
   import com.qeedoo.ui.view.compDragable.ChatPanel;
   import flash.net.Responder;
   
   public class ChatPanelUtil
   {
      
      public static var charactorName:Object = new Object();
      
      public static var chatData:Object = new Object();
      
      public static var panelManagerObj:Object = new Object();
      
      public static var panelStatusObj:Object = new Object();
      
      public static var gmNames:Object = new Object();
      
      public static var gmChatData:Object = new Object();
      
      public static var gmPanelManagerObj:Object = new Object();
      
      public static var gmPanelStatusObj:Object = new Object();
      
      public static var gmIdObj:Object = new Object();
      
      public function ChatPanelUtil()
      {
         super();
      }
      
      public static function getChatGMPanel(param1:String) : void
      {
         createChatGMPanel(param1);
      }
      
      public static function createCP(param1:*) : void
      {
         var _loc2_:ChatPanel = null;
         if(!param1)
         {
            return;
         }
         if(panelManagerObj[param1.id] != undefined)
         {
            panelManagerObj[param1.id].setTop();
         }
         else
         {
            _loc2_ = new ChatPanel();
            _loc2_.userData = param1;
            charactorName[param1.id] = param1.name;
            panelManagerObj[param1.id] = _loc2_;
            Core.getInstance().view.getUI(ViewManager.UI_PANEL).addChild(_loc2_);
            _loc2_.x = _loc2_.stage.stageWidth / 3;
            _loc2_.y = _loc2_.stage.stageHeight / 3;
            if(chatData[param1.id] == undefined)
            {
               chatData[param1.id] = "";
            }
         }
         Core.getInstance().view.getUI(ViewManager.PANEL_IM).addConnectionAC({
            "name":param1.name,
            "id":param1.id
         });
      }
      
      public static function createChatGMPanel(param1:String) : void
      {
         var _loc2_:ChatGMPanel = null;
         if(gmPanelManagerObj[param1] != undefined)
         {
            gmPanelManagerObj[param1].setTop();
         }
         else
         {
            _loc2_ = new ChatGMPanel();
            _loc2_.setGMName(param1);
            gmNames[param1] = param1;
            gmPanelManagerObj[param1] = _loc2_;
            Core.getInstance().view.getUI(ViewManager.UI_PANEL).addChild(_loc2_);
            _loc2_.x = _loc2_.stage.stageWidth / 3;
            _loc2_.y = _loc2_.stage.stageHeight / 3;
            if(gmChatData[param1] == undefined)
            {
               gmChatData[param1] = "";
            }
         }
      }
      
      public static function getChatPanel(param1:*, param2:String) : void
      {
         var _loc3_:Core = Core.getInstance();
         _loc3_.remote.call("getChatPanel",new Responder(createCP),param1,param2);
      }
      
      public static function createChatPanel(param1:*) : void
      {
         var _loc2_:Core = Core.getInstance();
         _loc2_.remote.call("createChatPanel",new Responder(createCP),param1);
      }
   }
}

