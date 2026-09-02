package com.qeedoo.ui.view.compFore
{
   import com.qeedoo.MMOGame;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Login_Model;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   
   public class SystemInfoCanvas extends Canvas
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":Canvas});
      
      public function SystemInfoCanvas()
      {
         super();
         mx_internal::_document = this;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function complete() : void
      {
         ToolTipManager.enabled = true;
         ViewManager.getInstance().getUI(ViewManager.FORE_L_R).onShow();
      }
      
      public function showModel(param1:Object, param2:String, param3:String) : void
      {
         if(!param2)
         {
            param2 = Language.SYSTEMINFOCANVAS_S[0];
         }
         if(!param3)
         {
            param3 = Language.SYSTEMINFOCANVAS_S[1];
         }
         if(param2 == Language.SYSTEMINFOCANVAS_S[0])
         {
            param2 = Language.SYSTEMINFOCANVAS_S[0];
         }
         if(param3 == Language.SYSTEMINFOCANVAS_S[1])
         {
            param3 = Language.SYSTEMINFOCANVAS_S[1];
         }
         if(Boolean(Login_Model.app) && Boolean(Login_Model.app.hasOwnProperty("loadReady")))
         {
            Login_Model.app.loadReady();
         }
         var _loc4_:GameEvent = new GameEvent(GameEvent.GAME_INIT);
         var _loc5_:Object = MMOGame.app.parent;
         _loc4_.data = param2;
         _loc5_.dispatchEvent(_loc4_);
      }
   }
}

