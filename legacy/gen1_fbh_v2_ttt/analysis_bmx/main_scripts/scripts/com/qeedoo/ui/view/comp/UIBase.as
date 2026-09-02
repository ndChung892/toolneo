package com.qeedoo.ui.view.comp
{
   import com.qeedoo.MMOGame;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import flash.events.Event;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   
   public class UIBase extends SimpleCanvas
   {
      
      private static var _totalCount:int;
      
      private static var _currentCount:int;
      
      private static var _title:String;
      
      public static const CREATE_LIST_COMPLETE:String = "UI_EVENT_CREATE_LIST_COMPLETE";
      
      public var uiList:Array;
      
      private var _last:Boolean;
      
      public function UIBase()
      {
         super();
         _totalCount = -1;
         addEventListener(FlexEvent.CREATION_COMPLETE,nextHandler);
      }
      
      private function createLater(param1:UIPropVO) : void
      {
         _last = param1.isLast;
         if(param1.type != null)
         {
            _title = param1.type;
            _totalCount = -1;
         }
         if(Boolean(MMOGame.info) && Boolean(param1.name))
         {
            MMOGame.info.showModel(MMOGame.app,Language.UIBASE_S[0] + param1.name,Language.UIBASE_S[1] + _title);
         }
         param1.parent = this;
         ViewManager.getInstance().addVO(param1.vid,param1);
         createNext();
      }
      
      private function nextHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,createNext);
         param1.currentTarget.removeEventListener(CREATE_LIST_COMPLETE,createNext);
         createNext();
      }
      
      private function initUI(param1:UIPropVO) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         _last = param1.isLast;
         if(param1.type != null)
         {
            _title = param1.type;
            _totalCount = -1;
         }
         if(Boolean(MMOGame.info) && Boolean(param1.name))
         {
            MMOGame.info.showModel(MMOGame.app,Language.UIBASE_S[0] + param1.name,Language.UIBASE_S[1] + _title);
         }
         var _loc2_:UIComponent = new (param1.cls as Class)();
         var _loc3_:UIBase = _loc2_ as UIBase;
         if(_loc3_)
         {
            _loc3_.addEventListener(CREATE_LIST_COMPLETE,nextHandler);
         }
         else
         {
            _loc2_.addEventListener(FlexEvent.CREATION_COMPLETE,nextHandler);
         }
         addChild(_loc2_);
         for(_loc4_ in param1.prop)
         {
            _loc2_[_loc4_] = param1.prop[_loc4_];
         }
         for(_loc5_ in param1.style)
         {
            _loc2_.setStyle(_loc5_.toString(),param1.style[_loc5_].toString());
         }
         ViewManager.getInstance().addUI(param1.vid,_loc2_,param1.initVisible);
      }
      
      private function createNext() : void
      {
         if(_totalCount < 0)
         {
            _totalCount = uiList.length;
            _currentCount = 0;
         }
         var _loc1_:UIPropVO = uiList.shift();
         ++_currentCount;
         if(_loc1_)
         {
            if(_loc1_.createLater)
            {
               createLater(_loc1_);
            }
            else
            {
               initUI(_loc1_);
            }
         }
         else
         {
            dispatchEvent(new Event(CREATE_LIST_COMPLETE));
            if(_last)
            {
               MMOGame.info.complete();
            }
         }
      }
   }
}

