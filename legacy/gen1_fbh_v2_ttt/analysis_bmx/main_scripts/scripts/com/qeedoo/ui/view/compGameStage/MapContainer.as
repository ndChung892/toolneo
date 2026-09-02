package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.MMOGame;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.Loader10;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.resource.local.CacheLoader;
   import com.qeedoo.ui.resource.local.LocalStorage;
   import com.qeedoo.ui.view.compMain.LoaderCanvas;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import mx.core.UIComponent;
   
   public class MapContainer extends Sprite
   {
      
      private var _freeLoaderList:Array;
      
      private var _cellWidth:int = 100;
      
      private var _cellData:Object;
      
      private var _cellTable:Array;
      
      private var _initialized:Boolean = false;
      
      private var _type:int;
      
      private var _mapRoot:String;
      
      private var _showModel:Boolean = true;
      
      private var _singleLoaderLocal:CacheLoader;
      
      private var _height:int;
      
      private var _width:int;
      
      private var _cellHeight:int = 100;
      
      private var _parent:StageMain;
      
      private var _totalCount:int = 0;
      
      private var _loadedCount:int = 0;
      
      private var _loadingInfo:LoaderCanvas;
      
      private var _stateTable:Array;
      
      private var _singleLoader:Loader10;
      
      private var _oldX:int = -1;
      
      private var _oldY:int = -1;
      
      private var _core:Core = Core.getInstance();
      
      public function MapContainer()
      {
         super();
         cacheAsBitmap = true;
         _freeLoaderList = [];
         clear();
      }
      
      private function set loadedNum(param1:int) : void
      {
         _loadedCount = param1;
         if(_loadingInfo)
         {
            _loadingInfo.setProgress(_loadedCount,_totalCount);
         }
         checkFinish();
      }
      
      private function removeCell(param1:int, param2:int) : void
      {
         var p_indexX:int = param1;
         var p_indexY:int = param2;
         if(Boolean(_stateTable[p_indexX]) && _stateTable[p_indexX][p_indexY] == 2)
         {
            _stateTable[p_indexX][p_indexY] = 1;
            try
            {
               removeChild(_cellTable[p_indexX][p_indexY]);
            }
            catch(e:Object)
            {
               trace(" the cell is not in display list ");
            }
         }
      }
      
      private function getLoader() : Loader
      {
         var _loc1_:Loader = null;
         if(_freeLoaderList.length > 0)
         {
            _loc1_ = _freeLoaderList.pop();
            _loc1_.x = 0;
            _loc1_.y = 0;
         }
         else
         {
            _loc1_ = new Loader();
            _loc1_.contentLoaderInfo.addEventListener(Event.COMPLETE,loadCompleteHandler);
            _loc1_.addEventListener(IOErrorEvent.IO_ERROR,errHandler);
         }
         return _loc1_;
      }
      
      private function get iX() : int
      {
         var _loc1_:int = int((-_parent.x - stage.stageWidth / 2) / 100);
         var _loc2_:int = iW - iSW * 2;
         if(_loc1_ > _loc2_)
         {
            _loc1_ = _loc2_;
         }
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      public function init(param1:StageMain, param2:String, param3:int, param4:int, param5:int = 0, param6:Object = null, param7:Boolean = true) : void
      {
         clear();
         _parent = param1;
         _mapRoot = param2;
         _type = param5;
         _width = param3;
         _height = param4;
         _showModel = param7;
         _loadingInfo = MMOGame.loader;
         _cellData = [];
         switch(_type)
         {
            case GamePredef.MAP_TYPE_NORMAL:
               _cellWidth = 100;
               _cellHeight = 100;
               loadCurrentArea();
               break;
            case GamePredef.MAP_TYPE_TILE:
               _cellWidth = 200;
               _cellHeight = 100;
               _cellData = param6;
               loadAllTile();
               break;
            case GamePredef.MAP_TYPE_SINGLE:
               singleMap();
         }
      }
      
      private function loadSingleHandler(param1:ProgressEvent) : void
      {
         _loadingInfo.setProgress(param1.bytesLoaded,param1.bytesTotal);
      }
      
      private function loadFinish() : void
      {
         _loadingInfo.hide();
         _parent.loadFinish();
      }
      
      private function get totalNum() : int
      {
         return _totalCount;
      }
      
      private function addCell(param1:int, param2:int) : void
      {
         var _loc3_:DisplayObject = DisplayObject(_cellTable[param1][param2]);
         if(_stateTable[param1] == null)
         {
            _stateTable[param1] = [];
         }
         if(_stateTable[param1][param2] == null)
         {
            switch(_type)
            {
               case GamePredef.MAP_TYPE_NORMAL:
                  _loc3_.x = param1 * _cellWidth;
                  _loc3_.y = param2 * _cellHeight;
                  break;
               case GamePredef.MAP_TYPE_TILE:
                  if(param2 % 2 == 0)
                  {
                     _loc3_.x = param1 * _cellWidth - _cellWidth / 2;
                  }
                  else
                  {
                     _loc3_.x = param1 * _cellWidth;
                  }
                  _loc3_.y = param2 * _cellHeight / 2;
                  break;
               case GamePredef.MAP_TYPE_SINGLE:
                  _loc3_.x = 0;
                  _loc3_.y = 0;
            }
         }
         if(_stateTable[param1][param2] != 2)
         {
            _stateTable[param1][param2] = 2;
            addChild(_loc3_);
         }
      }
      
      private function genPath(param1:int, param2:int) : String
      {
         if(_cellData.length <= 0)
         {
            return _mapRoot + "/MAP_" + param1 + "_" + param2 + ".jpg";
         }
         if(Boolean(_cellData[param1]) && Boolean(_cellData[param1][param2]))
         {
            return ResManager.getResUrl(_cellData[param1][param2]);
         }
         return null;
      }
      
      private function get iW() : int
      {
         return int(width / _cellWidth);
      }
      
      private function get iY() : int
      {
         var _loc1_:int = int((-_parent.y - stage.stageHeight / 2) / 100);
         var _loc2_:int = iH - iSH * 2;
         if(_loc1_ > _loc2_)
         {
            _loc1_ = _loc2_;
         }
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      public function loadAllTile() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         totalNum = 0;
         loadedNum = 0;
         for(_loc1_ in _cellData)
         {
            for(_loc2_ in _cellData[_loc1_])
            {
               loadCell(Number(_loc1_),Number(_loc2_));
            }
         }
         markLoaded(0,0);
      }
      
      private function get iSH() : int
      {
         return int(stage.stageHeight / _cellHeight);
      }
      
      private function errHandler(param1:IOErrorEvent) : void
      {
         ++loadedNum;
      }
      
      private function get iSW() : int
      {
         return int(stage.stageWidth / _cellWidth);
      }
      
      private function onComplete(param1:Loader) : void
      {
         addChild(param1);
         loadFinish();
      }
      
      public function loadSpecialMaps(param1:StageMain, param2:Number) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_MAP][param2];
         if(_loc3_)
         {
            _parent = param1;
            _mapRoot = ResManager.getResUrlNoHash(_loc3_.resCode);
            _width = _loc3_.width;
            _height = _loc3_.height;
            _type = _loc3_.type;
            _loadingInfo = MMOGame.loader;
            if(Boolean(param1) && Boolean(param1.mapContainer))
            {
               _loc4_ = genPath(0,0);
               _singleLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadSingleHandler);
               _singleLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadSpecialComplete);
               _singleLoader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusHandler);
               _singleLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
               _loadingInfo.showModel(MMOGame.app,Language.MAPCONTAINER_S[0],GamePredef.SYSTEM_TIP[1][int(Math.random() * GamePredef.SYSTEM_TIP[1].length)]);
               _singleLoader.load(new URLRequest(ResManager.hash(_loc4_)));
               _loc5_ = _core.view.getUI(ViewManager.POPU_WAIT);
               if(_loc5_.parent == MMOGame.app)
               {
                  MMOGame.app.setChildIndex(_loc5_ as UIComponent,MMOGame.app.numChildren - 1);
               }
               else
               {
                  MMOGame.app.addChild(_loc5_ as UIComponent);
               }
            }
         }
      }
      
      private function loadSingleCompleteHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(ProgressEvent.PROGRESS,loadSingleHandler);
         param1.currentTarget.removeEventListener(Event.COMPLETE,loadSingleCompleteHandler);
         param1.currentTarget.removeEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusHandler);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         addChild(_singleLoader);
         loadFinish();
      }
      
      public function set mapRoot(param1:String) : void
      {
         _mapRoot = param1;
      }
      
      private function loadSingleLocal(param1:String) : void
      {
         var func:Function = null;
         var url:String = param1;
         if(_showModel)
         {
            LocalStorage.getInstance().checkLocalStorageSetting();
            _singleLoaderLocal = CacheLoader.getLoader(url,onComplete);
            _singleLoaderLocal.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadSingleHandler);
            _loadingInfo.showModel(MMOGame.app,Language.MAPCONTAINER_S[0],GamePredef.SYSTEM_TIP[1][int(Math.random() * GamePredef.SYSTEM_TIP[1].length)]);
         }
         else
         {
            func = function(param1:*):void
            {
            };
            _singleLoaderLocal = CacheLoader.getLoader(url,func);
         }
      }
      
      private function markLoaded(param1:int, param2:int) : void
      {
         _oldX = param1;
         _oldY = param2;
      }
      
      private function checkFinish() : void
      {
         if(_loadedCount < _totalCount)
         {
            return;
         }
         loadFinish();
      }
      
      private function loadCompleteHandler(param1:Event) : void
      {
         var _loc2_:Loader = Loader(param1.currentTarget.loader);
         addCellContent(_loc2_);
      }
      
      private function loadSpecialComplete(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(ProgressEvent.PROGRESS,loadSingleHandler);
         param1.currentTarget.removeEventListener(Event.COMPLETE,loadSpecialComplete);
         param1.currentTarget.removeEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusHandler);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         _parent.dispatchEvent(new Event(GameDataEvent.MAP_READY));
      }
      
      public function clear() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         _stateTable = [];
         _cellTable = [];
         _width = 1;
         _height = 1;
         if(_singleLoader)
         {
            _singleLoader.unloadAndGC();
         }
         else
         {
            _singleLoader = new Loader10();
         }
         _initialized = false;
      }
      
      private function loadSingle(param1:Loader, param2:String) : void
      {
         if(_showModel)
         {
            param1.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadSingleHandler);
            param1.contentLoaderInfo.addEventListener(Event.COMPLETE,loadSingleCompleteHandler);
            param1.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusHandler);
            param1.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
            _loadingInfo.showModel(MMOGame.app,Language.MAPCONTAINER_S[0],GamePredef.SYSTEM_TIP[1][int(Math.random() * GamePredef.SYSTEM_TIP[1].length)]);
         }
         param1.load(new URLRequest(ResManager.hash(param2)));
      }
      
      private function httpStatusHandler(param1:HTTPStatusEvent) : void
      {
         if(param1.status >= 300)
         {
            _core.sysMsg("Load Map Status:" + param1.status);
            singleMap();
         }
      }
      
      private function set totalNum(param1:int) : void
      {
         _totalCount = param1;
      }
      
      public function get mheight() : int
      {
         return _height;
      }
      
      private function addCellContent(param1:Loader) : void
      {
         var _loc2_:DisplayObject = param1.content;
         _loc2_.width = _cellWidth;
         _loc2_.height = _cellHeight;
         param1.unload();
         _cellTable[param1.x][param1.y] = _loc2_;
         addCell(param1.x,param1.y);
         _freeLoaderList.push(param1);
         ++loadedNum;
      }
      
      private function get loadedNum() : int
      {
         return _loadedCount;
      }
      
      public function loadCurrentArea() : void
      {
         var _loc6_:int = 0;
         totalNum = 0;
         loadedNum = 0;
         var _loc1_:int = iX;
         var _loc2_:int = iY;
         var _loc3_:int = _loc1_ + iSW * 2;
         var _loc4_:int = _loc2_ + iSH * 2;
         var _loc5_:int = _loc1_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc2_;
            while(_loc6_ < _loc4_)
            {
               loadCell(_loc5_,_loc6_);
               _loc6_++;
            }
            _loc5_++;
         }
         markLoaded(_loc1_,_loc2_);
      }
      
      private function loadCell(param1:int, param2:int) : void
      {
         var _loc3_:Loader = null;
         var _loc4_:String = null;
         if(!_cellTable[param1])
         {
            _cellTable[param1] = [];
         }
         if(_cellTable[param1][param2])
         {
            addCell(param1,param2);
         }
         else
         {
            _loc3_ = getLoader();
            _loc4_ = genPath(param1,param2);
            loadMulti(_loc3_,_loc4_,param1,param2);
         }
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         _cellWidth = _width;
         _cellHeight = _height;
         var _loc2_:String = genPath(0,0);
         _loc2_ += "?" + Math.random();
         loadSingle(_singleLoader,_loc2_);
      }
      
      private function loadMulti(param1:Loader, param2:String, param3:int, param4:int) : void
      {
         param1.load(new URLRequest(param2));
         param1.x = param3;
         param1.y = param4;
         ++totalNum;
      }
      
      private function singleMap() : void
      {
         _cellWidth = _width;
         _cellHeight = _height;
         var _loc1_:String = genPath(0,0);
         loadSingle(_singleLoader,_loc1_);
      }
      
      public function get mwidth() : int
      {
         return _width;
      }
      
      private function get iH() : int
      {
         return int(height / _cellHeight);
      }
   }
}

