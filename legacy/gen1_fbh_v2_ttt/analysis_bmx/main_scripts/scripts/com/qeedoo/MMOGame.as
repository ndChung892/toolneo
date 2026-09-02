package com.qeedoo
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.config.Version;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.logic.*;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.rpc.RemoteNc;
   import com.qeedoo.game.rpc.RemoteObj;
   import com.qeedoo.game.system.*;
   import com.qeedoo.game.utils.CheatChecker;
   import com.qeedoo.game.utils.SingleAstarRoute;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.Key;
   import com.qeedoo.ui.utils.MouseManager;
   import com.qeedoo.ui.view.StageContainer;
   import com.qeedoo.ui.view.UIContainer;
   import com.qeedoo.ui.view.compFore.SystemInfoCanvas;
   import com.qeedoo.ui.view.compMain.LoaderCanvas;
   import flash.display.Loader;
   import flash.display.Stage;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.external.ExternalInterface;
   import flash.media.Sound;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import mx.core.Application;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.managers.LayoutManager;
   import mx.managers.ToolTipManager;
   import net.hires.debug.Stats;
   
   public class MMOGame extends AbstractGame
   {
      
      private static var _global:RemoteObj;
      
      private static var _view:ViewManager;
      
      private static var _data:DataManager;
      
      private static var _mask:Loader;
      
      private static var _info:SystemInfoCanvas;
      
      private static var _remote:RemoteObj;
      
      private static var _app:Object;
      
      private static var _inst:MMOGame;
      
      private static var _effect:UIComponent;
      
      private static var _loader:LoaderCanvas;
      
      private static var _core:Core;
      
      private var _ui:UIContainer;
      
      private var _configComplete:Boolean;
      
      private var _uiComplete:Boolean;
      
      private var _stageComplete:Boolean;
      
      private var _sc:StageContainer;
      
      private var _stage:Stage;
      
      public function MMOGame(param1:Object)
      {
         super();
         Login_Model.game_app = param1;
         _app = param1;
         _inst = this;
         _stageComplete = false;
         _uiComplete = false;
         _configComplete = false;
         _loader = new LoaderCanvas();
         _info = new SystemInfoCanvas();
         param1.width = GamePredef.APP_WIDTH;
         param1.height = GamePredef.APP_HEIGHT;
         if(param1.parent.parent.name == "gameSwf")
         {
            Application.application.addEventListener("InitGame",addedToStageHandler);
         }
         else
         {
            _app.addEventListener(Event.ADDED_TO_STAGE,addedToStageHandler);
         }
         _app.addEventListener(FocusEvent.FOCUS_IN,onFocusIn);
         if(ExternalInterface.available)
         {
            ExternalInterface.call("setFocus");
         }
         var _loc2_:Sound = new Sound(new URLRequest(""));
         _loc2_.play();
         _loc2_.close();
         ToolTipManager.toolTipClass = ToolTipHtml;
      }
      
      public static function get remote() : RemoteObj
      {
         return _remote;
      }
      
      public static function get inst() : MMOGame
      {
         return _inst;
      }
      
      public static function get effect() : UIComponent
      {
         return _effect;
      }
      
      public static function get core() : Core
      {
         return _core;
      }
      
      public static function get app() : Object
      {
         return _app;
      }
      
      public static function get data() : DataManager
      {
         return _data;
      }
      
      public static function get loader() : LoaderCanvas
      {
         return _loader;
      }
      
      public static function get info() : SystemInfoCanvas
      {
         return _info;
      }
      
      public static function set effect(param1:UIComponent) : void
      {
         _effect = param1;
      }
      
      public static function get view() : ViewManager
      {
         return _view;
      }
      
      private function assetsLoadHandler(param1:Event) : void
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         URLLoader(param1.currentTarget).removeEventListener(Event.COMPLETE,assetsLoadHandler);
         var _loc2_:String = param1.target.data as String;
         var _loc3_:Array = _loc2_.split(/\r\n|\r|\n/g);
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_.split("=");
            if(_loc5_.length == 2)
            {
               Version.ASSETS_VERSION[_loc5_[0]] = _loc5_[1];
            }
         }
      }
      
      private function loadedHandler(param1:Event) : void
      {
         _configComplete = true;
         URLLoader(param1.currentTarget).removeEventListener(Event.COMPLETE,loadedHandler);
         GamePredef.config = XML(param1.target.data);
         var _loc2_:ByteArray = new ResManager.SERVER_DOMAIN_CONFIG() as ByteArray;
         GamePredef.serverDualIp = XML(_loc2_.readUTFBytes(_loc2_.length));
         setTimeout(ResManager.loadTxtFields,30000);
      }
      
      override protected function loadConfig() : void
      {
         var _loc1_:URLLoader = new URLLoader();
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         _loc1_.addEventListener(Event.COMPLETE,loadedHandler);
         var _loc2_:String = GamePredef.PATH_CONFIG;
         _loc1_.load(new URLRequest(_loc2_));
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         _loc3_.addEventListener(Event.COMPLETE,gloadedHandler);
         var _loc4_:String = GamePredef.PATH_GCONFIG;
         _loc3_.load(new URLRequest(_loc4_));
         var _loc5_:URLLoader = new URLLoader();
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         _loc5_.addEventListener(Event.COMPLETE,assetsLoadHandler);
         var _loc6_:String = GamePredef.PATH_ASSETS + "?v=" + Math.random().toString();
         _loc5_.load(new URLRequest(_loc6_));
      }
      
      private function createUIAfterStageComplete(param1:FlexEvent) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,createUIAfterStageComplete);
         _stageComplete = true;
         createUI();
      }
      
      override protected function createUI() : void
      {
         var _loc1_:String = null;
         if(!_stageComplete)
         {
            _sc.addEventListener(FlexEvent.CREATION_COMPLETE,createUIAfterStageComplete);
            return;
         }
         if(_info)
         {
            _info.showModel(_app,Language.MMOGAME_S[4],Language.MMOGAME_S[5]);
         }
         _ui = new UIContainer();
         _ui.setStyle("left","0");
         _ui.setStyle("right","0");
         _ui.setStyle("top","0");
         _ui.setStyle("bottom","0");
         _app.addChild(_ui);
         _uiComplete = true;
         if(ExternalInterface.available)
         {
            _loc1_ = ExternalInterface.call("window.location.href.toString");
            if(_loc1_)
            {
               if(_loc1_.indexOf("offtest.html") > 0)
               {
                  setStats();
               }
            }
         }
         else
         {
            setStats();
         }
      }
      
      private function hideContextMenuItems() : void
      {
         var contextMenuItem_reg:ContextMenuItem = null;
         var contextMenuItem_pay:ContextMenuItem = null;
         var contextMenuItem_bbs:ContextMenuItem = null;
         var contextMenuItem_ver:ContextMenuItem = null;
         var limitedContextMenu:ContextMenu = new ContextMenu();
         limitedContextMenu.hideBuiltInItems();
         limitedContextMenu.builtInItems.print = false;
         if(GamePredef.SERVER_ADD_REG != "#")
         {
            contextMenuItem_reg = new ContextMenuItem(Language.MMOGAME_S[6]);
            limitedContextMenu.customItems.push(contextMenuItem_reg);
            contextMenuItem_reg.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,function(param1:ContextMenuEvent):void
            {
               navigateToURL(new URLRequest(GamePredef.SERVER_ADD_REG));
            });
         }
         if(GamePredef.SERVER_ADD_PAY != "#")
         {
            contextMenuItem_pay = new ContextMenuItem(Language.MMOGAME_S[7]);
            limitedContextMenu.customItems.push(contextMenuItem_pay);
            contextMenuItem_pay.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,function(param1:ContextMenuEvent):void
            {
               navigateToURL(new URLRequest(GamePredef.SERVER_ADD_PAY));
            });
         }
         if(GamePredef.bbsurl)
         {
            contextMenuItem_bbs = new ContextMenuItem(Language.MMOGAME_S[8]);
            limitedContextMenu.customItems.push(contextMenuItem_bbs);
            contextMenuItem_bbs.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,function(param1:ContextMenuEvent):void
            {
               navigateToURL(new URLRequest(GamePredef.bbsurl));
            });
         }
         if(Version.VERSION)
         {
            contextMenuItem_ver = new ContextMenuItem(Language.MMOGAME_S[9] + Version.VERSION);
            limitedContextMenu.customItems.push(contextMenuItem_ver);
         }
         _app.contextMenu = limitedContextMenu;
      }
      
      private function onFocusIn(param1:FocusEvent) : void
      {
         _app.focusManager.hideFocus();
      }
      
      public function get ui() : UIContainer
      {
         return _ui;
      }
      
      private function setStats() : void
      {
         var _loc1_:UIComponent = new UIComponent();
         _app.addChild(_loc1_);
         _loc1_.setStyle("left",10);
         _loc1_.setStyle("bottom",280);
         _loc1_.addChild(new Stats());
      }
      
      override protected function createStage() : void
      {
         if(_info)
         {
            _info.showModel(_app,Language.MMOGAME_S[2],Language.MMOGAME_S[3]);
         }
         _sc = new StageContainer();
         _sc.addEventListener(FlexEvent.CREATION_COMPLETE,stageCompleteHandler);
         _sc.setStyle("left","0");
         _sc.setStyle("right","0");
         _sc.setStyle("top","0");
         _sc.setStyle("bottom","0");
         _app.addChild(_sc);
      }
      
      private function addedToStageHandler(param1:Event) : void
      {
         _app.removeEventListener(Event.ADDED_TO_STAGE,addedToStageHandler);
         _stage = _app.stage;
         LayoutManager.getInstance().usePhasedInstantiation = false;
         Key.initialize(_stage);
         MouseManager.initialize(_stage);
         _stage.frameRate = GamePredef.GLOBAL_FRAME_RATE;
         initGame();
         var _loc2_:SharedObject = SharedObject.getLocal("gameQualitySet");
         if(Boolean(_loc2_) && Boolean(_loc2_.data) && Boolean(_loc2_.data.quality))
         {
            Application.application.stage.quality = _loc2_.data.quality;
         }
      }
      
      private function errorHandler(param1:IOErrorEvent) : void
      {
         trace(param1.toString());
      }
      
      private function stageCompleteHandler(param1:FlexEvent) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,stageCompleteHandler);
         _stageComplete = true;
      }
      
      override protected function createCore() : void
      {
         if(_info)
         {
            _info.showModel(_app,Language.MMOGAME_S[0],Language.MMOGAME_S[1]);
         }
         _core = Core.getInstance();
         _view = ViewManager.getInstance();
         _data = DataManager.getInstance();
         _remote = new RemoteObj(new CallBack());
         _global = new RemoteObj(new CallBackGlobal());
         _core.view = _view;
         _core.data = _data;
         if(Boolean(RemoteNc.remote) && Boolean(RemoteNc.global))
         {
            _core.remote = RemoteNc.remote;
            _core.global = RemoteNc.global;
         }
         else
         {
            _core.remote = _remote;
            _core.global = _global;
         }
         _core.basic = new Basic();
         _core.scene = new GameScene();
         _core.battle = new Battle();
         _core.move = new ObjectMove();
         _core.group = new Group();
         _core.battleServer = new BattleServer();
         _core.battleMap = new BattleMap();
         _view.init(_stage);
         CheatChecker.init();
         ResManager.init();
         SingleAstarRoute.getInstance().init(4000);
      }
      
      private function gloadedHandler(param1:Event) : void
      {
         URLLoader(param1.currentTarget).removeEventListener(Event.COMPLETE,gloadedHandler);
         GamePredef.gconfig = XML(param1.target.data);
         GamePredef.bbsurl = XML(param1.target.data).server.url;
         hideContextMenuItems();
      }
   }
}

