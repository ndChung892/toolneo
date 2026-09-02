package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compGameStage.SceneItemView;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import mx.containers.Canvas;
   import mx.controls.ToolTip;
   import mx.core.UIComponent;
   import mx.events.ToolTipEvent;
   
   public class MapCanvas extends Canvas
   {
      
      private static const MINIMAP_WIDTH:int = 405;
      
      private static const MINIMAP_HEIGHT:int = 320;
      
      private static const MINIMAP_CENTERX:int = 60;
      
      private static const MINIMAP_CENTERY:int = 55;
      
      private var localizer:Point;
      
      private var canvasMiniMap:UIComponent;
      
      private var tip:ToolTip;
      
      private var oldMid:int;
      
      private var npcIconList:Object = {};
      
      private var iconNpcContainer:Canvas;
      
      private var iconPlayer:MapIcon;
      
      private var imgMiniMap:Bitmap;
      
      public var mid:int;
      
      private var ipIdArray:Array;
      
      private var npcIdArray:Array;
      
      private var iconIpContainer:Canvas;
      
      private var _scaleX:Number;
      
      private var _scaleY:Number;
      
      private var _core:Core = Core.getInstance();
      
      public function MapCanvas()
      {
         super();
         addChildrens();
         layoutChildrens();
         addEventHandlers();
      }
      
      private function addNpc(param1:Object) : void
      {
         var _loc2_:Object = _core.getNpc(param1.id);
         if(!_loc2_)
         {
            trace("MapCanvas:addNpc Calllater ");
            return;
         }
         if(_loc2_.miniMap != 1)
         {
            return;
         }
         if(_loc2_.npcType == GamePredef.NPC_TYPE_MAT || _loc2_.npcType == GamePredef.NPC_TYPE_PLAN)
         {
            return;
         }
         var _loc3_:MapIcon = new MapIcon();
         npcIconList[id] = _loc3_;
         if(_loc2_.state >= GamePredef.ST_QUEST_CANTAKE && _loc2_.state <= GamePredef.ST_QUEST_CANFINISH)
         {
            switch(_loc2_.state)
            {
               case GamePredef.ST_QUEST_CANTAKE:
                  _loc3_.styleName = "CanvasMapQGetAble";
                  break;
               case GamePredef.ST_QUEST_ISTAKE:
                  _loc3_.styleName = "CanvasMapQFinishing";
                  break;
               case GamePredef.ST_QUEST_CANFINISH:
                  _loc3_.styleName = "CanvasMapQFinished";
            }
         }
         else
         {
            switch(_loc2_.npcType)
            {
               case 2:
                  _loc3_.styleName = "CanvasMapTrade";
                  break;
               case 3:
                  if(_core.lineInfo.auction)
                  {
                     _loc3_.styleName = "CanvasMapMail";
                  }
                  else
                  {
                     _loc3_.visible = false;
                  }
                  break;
               case 5:
                  if(_core.lineInfo.auction)
                  {
                     _loc3_.styleName = "CanvasMapTrade";
                  }
                  else
                  {
                     _loc3_.visible = false;
                  }
                  break;
               case 8:
                  _loc3_.styleName = "CanvasMapTreatment";
                  break;
               case 9:
                  _loc3_.styleName = "CanvasMapSend";
                  break;
               case 10:
                  _loc3_.styleName = "CanvasMapBattle";
                  break;
               default:
                  _loc3_.styleName = "CanvasMapDialogue";
            }
         }
         _loc3_.itemId = _loc2_.id;
         _loc3_.x = _loc2_.posX * _scaleX - 10;
         _loc3_.y = _loc2_.posY * _scaleY - 10;
         iconNpcContainer.addChild(_loc3_);
         _loc3_.toolTip = Language.MAPCANVAS_S[2] + _loc2_.name + "\r" + Language.MAPCANVAS_S[3] + int(_loc2_.posX / 10) + "," + int(_loc2_.posY / 10) + "\r" + Language.MAPCANVAS_S[4];
         _loc3_.toolTip += GamePredef.NPC_TYPE_NAME[_loc2_.npcType] != undefined ? GamePredef.NPC_TYPE_NAME[_loc2_.npcType] : Language.MAPCANVAS_S[5];
      }
      
      private function addEventHandlers() : void
      {
         addEventListener(MouseEvent.MOUSE_MOVE,showLocal);
         addEventListener(MouseEvent.MOUSE_OUT,hideLocal);
         canvasMiniMap.addEventListener(MouseEvent.CLICK,clickHandler);
         iconNpcContainer.addEventListener(MouseEvent.CLICK,clickHandler);
         iconIpContainer.addEventListener(MouseEvent.CLICK,clickHandler);
         iconPlayer.addEventListener(ToolTipEvent.TOOL_TIP_CREATE,createPlayerToolTip);
      }
      
      public function refreshNpc(param1:Number) : void
      {
         var _loc2_:Npc = _core.getNpc(param1);
         if(Boolean(_loc2_) && Boolean(npcIconList[param1]))
         {
            if(_loc2_.state >= GamePredef.ST_QUEST_CANTAKE && _loc2_.state <= GamePredef.ST_QUEST_CANFINISH)
            {
               npcIconList[param1].source = ResManager["ICON_QUEST_STATE_" + _loc2_.state];
            }
            else
            {
               npcIconList[param1].source = ResManager.ICON_MINIMAP_NPC;
            }
         }
      }
      
      public function changeNpcVisible(param1:Boolean) : void
      {
         iconNpcContainer.visible = param1;
         if(param1)
         {
            iconNpcContainer.mouseEnabled = true;
         }
         else
         {
            iconNpcContainer.mouseEnabled = false;
         }
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:Object = param1.target;
         _loc2_ = _loc2_.parent;
         _core.clearTargets();
         if(_loc2_ is MapIcon)
         {
            _core.player.closeTo(iconNpcContainer.mouseX / _scaleX,iconNpcContainer.mouseY / _scaleY);
            if(_loc2_.type == GamePredef.TBL_SCENEITEM_INSTANCE)
            {
               _core.targetIP = _core.view.getIP(_loc2_.itemId);
            }
            else if(_loc2_.type == GamePredef.TBL_NPC)
            {
               _core.targetNPC = _core.getNpc(_loc2_.itemId);
            }
            return;
         }
         var _loc3_:* = iconNpcContainer.mouseX;
         var _loc4_:* = iconNpcContainer.mouseY;
         if(iconNpcContainer.mouseX < 20)
         {
            _loc3_ = 20;
         }
         if(iconNpcContainer.mouseX > 380)
         {
            _loc3_ = 380;
         }
         if(iconNpcContainer.mouseY < 20)
         {
            _loc4_ = 20;
         }
         if(iconNpcContainer.mouseY > 280)
         {
            _loc4_ = 280;
         }
         _core.player.routeTo(_loc3_ / _scaleX,_loc4_ / _scaleY);
      }
      
      private function createPlayerToolTip(param1:ToolTipEvent) : void
      {
         param1.currentTarget.toolTip = getPlayerToolTipText();
      }
      
      private function addIp(param1:Object) : void
      {
         var _loc2_:MapIcon = new MapIcon();
         _loc2_.type = GamePredef.TBL_SCENEITEM_INSTANCE;
         _loc2_.itemId = param1.id;
         _loc2_.styleName = "CanvasMapSend";
         iconIpContainer.addChild(_loc2_);
         _loc2_.x = (Number(param1.posX) + 183 / 2) * _scaleX - 10;
         _loc2_.y = (Number(param1.posY) + 136 / 2) * _scaleY - 5;
         _loc2_.toolTip = Language.MAPCANVAS_S[0] + param1.name + "\r" + Language.MAPCANVAS_S[1] + int(param1.posX / 10) + "," + int(param1.posY / 10) + "\r";
      }
      
      public function set playerY(param1:int) : void
      {
         var _loc2_:int = canvasMiniMap.y + param1 * _scaleY - iconPlayer.height / 2;
         if(_loc2_ != iconPlayer.y)
         {
            iconPlayer.y = _loc2_;
         }
      }
      
      private function addChildrens() : void
      {
         canvasMiniMap = new UIComponent();
         iconNpcContainer = new Canvas();
         iconIpContainer = new Canvas();
         iconIpContainer.mouseEnabled = false;
         iconPlayer = new MapIcon();
         iconPlayer.styleName = "CanvasMapSelf";
         localizer = new Point(MINIMAP_CENTERX,MINIMAP_CENTERY);
         tip = new ToolTip();
         tip.visible = false;
         addChild(canvasMiniMap);
         addChild(iconNpcContainer);
         addChild(iconIpContainer);
         addChild(iconPlayer);
         addChild(tip);
      }
      
      public function set playerX(param1:int) : void
      {
         var _loc2_:int = canvasMiniMap.x + param1 * _scaleX - iconPlayer.width / 2;
         if(_loc2_ != iconPlayer.x)
         {
            iconPlayer.x = _loc2_;
         }
      }
      
      private function layoutChildrens() : void
      {
         localizer.x = MINIMAP_CENTERX;
         localizer.y = MINIMAP_CENTERY;
         iconPlayer.x = 10;
         iconPlayer.y = 239;
      }
      
      public function clear() : void
      {
         clearNpc();
         clearIp();
      }
      
      private function hideLocal(param1:MouseEvent) : void
      {
         tip.visible = false;
      }
      
      public function get mapScaleY() : Number
      {
         return _scaleY;
      }
      
      public function clearNpc() : void
      {
         npcIdArray = [];
         npcIconList = {};
         while(iconNpcContainer.numChildren > 0)
         {
            iconNpcContainer.removeChildAt(0);
         }
      }
      
      public function initView() : void
      {
         if(oldMid != mid)
         {
            drawMap(_core.view.getUI(ViewManager.STAGE_MAIN).mapContainer);
            oldMid = mid;
         }
         clear();
         drawIcon();
         update();
      }
      
      public function update() : void
      {
         var pt:Point = null;
         var newX:int = 0;
         var newY:int = 0;
         var pt1:Point = null;
         var pt2:Point = null;
         try
         {
            pt = new Point(_core.player.normalView.posX,_core.player.normalView.posY);
            newX = canvasMiniMap.x + pt.x * _scaleX - iconPlayer.width / 2;
            newY = canvasMiniMap.y + pt.y * _scaleY - iconPlayer.height / 2;
            pt1 = new Point(newX,newY);
            pt2 = new Point(iconPlayer.x,iconPlayer.y);
            if(Point.distance(pt1,pt2) > 2)
            {
               iconPlayer.x = newX;
               iconPlayer.y = newY;
            }
            iconPlayer.toolTip = _core.player.name + " : " + int(pt.x / 10) + "," + int(pt.y / 10);
         }
         catch(e:*)
         {
            trace("updata error::");
         }
      }
      
      private function getPlayerToolTipText() : String
      {
         return _core.player.name + " : " + int(_core.player.normalView.posX / 10) + "," + int(_core.player.normalView.posY / 10);
      }
      
      public function clearIp() : void
      {
         ipIdArray = [];
         while(iconIpContainer.numChildren > 0)
         {
            iconIpContainer.removeChildAt(0);
         }
      }
      
      public function get mapScaleX() : Number
      {
         return _scaleX;
      }
      
      private function drawIcon() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc1_:Object = _core.data.gameDataIndex[GamePredef.TBL_NPC][mid];
         if(_loc1_)
         {
            for each(_loc3_ in _loc1_)
            {
               addNpc(_loc3_);
            }
         }
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_SCENEITEM_INSTANCE][mid];
         if(_loc2_)
         {
            for each(_loc4_ in _loc2_)
            {
               _loc5_ = _core.data.getGameData(GamePredef.TBL_SCENEITEM_TEMPLATE,_loc4_.tid);
               if(_loc5_)
               {
                  if(_loc5_.type == SceneItemView.TYPE_TRANSPORT)
                  {
                     addIp(_loc4_);
                  }
               }
            }
         }
      }
      
      private function showLocal(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(mouseX == param1.localX && mouseY == param1.localY)
         {
            tip.visible = true;
            _loc2_ = param1.localX / _scaleX / 10;
            _loc3_ = param1.localY / _scaleY / 10;
            tip.text = _loc2_ + "," + _loc3_;
            tip.x = param1.localX + 10;
            tip.y = param1.localY + 20;
            if(tip.x + tip.width > width)
            {
               tip.x = tip.x - tip.width - 10;
            }
            if(tip.y + tip.height > height)
            {
               tip.y = tip.y - tip.height - 20;
            }
         }
         else
         {
            tip.visible = false;
         }
      }
      
      private function drawMap(param1:DisplayObject) : void
      {
         visible = false;
         if(imgMiniMap != null && Boolean(imgMiniMap.parent))
         {
            imgMiniMap.parent.removeChild(imgMiniMap);
            imgMiniMap = null;
         }
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_MAP][mid];
         _scaleX = MINIMAP_WIDTH / _loc2_.width;
         _scaleY = _scaleX;
         var _loc3_:BitmapData = new BitmapData(MINIMAP_WIDTH,_loc2_.height * _scaleY);
         _loc3_.draw(param1,new Matrix(_scaleX,0,0,_scaleY));
         imgMiniMap = new Bitmap(_loc3_);
         canvasMiniMap.addChild(imgMiniMap);
         width = imgMiniMap.width;
         height = imgMiniMap.height;
         iconNpcContainer.width = width;
         iconNpcContainer.height = height;
         callLater(show);
      }
      
      public function changeIpVisible(param1:Boolean) : void
      {
         iconIpContainer.visible = param1;
      }
      
      private function show() : void
      {
         visible = true;
      }
   }
}

