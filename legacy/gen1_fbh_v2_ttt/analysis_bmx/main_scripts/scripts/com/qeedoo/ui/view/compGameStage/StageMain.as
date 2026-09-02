package com.qeedoo.ui.view.compGameStage
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.MouseManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.ItemSlotTemp;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compDragable.QuestGuide;
   import com.qeedoo.ui.view.compMain.ChatCanvas;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Timer;
   import mx.controls.Alert;
   import mx.core.UIComponent;
   import mx.effects.Fade;
   import mx.effects.Move;
   import mx.effects.easing.Linear;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.EffectEvent;
   import mx.managers.DragManager;
   
   public class StageMain extends UIComponent
   {
      
      public var mapContainer:MapContainer;
      
      public var routeLayer:Sprite;
      
      private var _container:DisplayObjectContainer;
      
      private var _core:Core = Core.getInstance();
      
      private var _loadedTop:int;
      
      public var flyingZoomRate:Number = 1;
      
      private var itemContainer:ItemContainer;
      
      private var _frontEffectLayer:Sprite;
      
      private var _hitTestLoader:Loader;
      
      private var hitTestContainer:HitTestContainer;
      
      private var _maskLoader:Loader;
      
      private var fadeIn:Fade;
      
      private var fadeOut:Fade;
      
      private var _loadedLeft:int;
      
      private var mapMove:Move;
      
      public var mapCanvas:Sprite;
      
      private const TILE_WIDTH:int = 200;
      
      private const TILE_HEIGHT:int = 100;
      
      private var backEffectLayer:Sprite;
      
      private var _mapData:Object;
      
      private var _dropSlot:ISlot;
      
      private var _loadedBottom:int;
      
      private var _loadedRight:int;
      
      private var _moveTimer:Timer;
      
      private var _stage:Stage;
      
      public function StageMain()
      {
         super();
         initEffects();
         addChildren();
         addView();
         initEventHandlers();
         alpha = 0;
         routeLayer = new Sprite();
         addChild(routeLayer);
      }
      
      private function dragDropHandler(param1:DragEvent) : void
      {
         var slot:ISlot = null;
         var obj:Object = null;
         var type:String = null;
         var sid:String = null;
         var view:Object = null;
         var _dropTempSlot:ItemSlotTemp = null;
         var ii:* = undefined;
         var dropTemp:Function = null;
         var delmxTempSlot:Function = null;
         var delTempSlot:Function = null;
         var event:DragEvent = param1;
         if(event.dragSource.hasFormat("slot"))
         {
            slot = event.dragSource.dataForFormat("slot") as ISlot;
            _dropSlot = slot;
            if(_dropSlot.slotType == Slot.SLOT_BAG)
            {
               obj = GameData.d[slot.type][slot.giid];
               if(Boolean(obj) && Boolean(obj.color) && obj.color > 2)
               {
                  if(_core.delPass)
                  {
                     Alert.show(Language.STAGEMAIN_S[0],"",Alert.YES | Alert.NO,null,dropHandlerByDp);
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.SLOT_U[0],delSlot);
                  }
               }
               else
               {
                  Alert.show(Language.STAGEMAIN_S[0],"",Alert.YES | Alert.NO,null,dropHandler);
               }
            }
            if(_dropSlot.slotType == Slot.SLOT_GUILD)
            {
               Alert.show(Language.STAGEMAIN_S[0],"",Alert.YES | Alert.NO,null,dropGuildHandler);
            }
            if(_dropSlot.slotType == Slot.SLOT_USERBAR)
            {
               slot.clean();
               type = slot["id"].slice(0,1);
               sid = slot["id"].slice(1);
               if(type == "s")
               {
                  _core.updateSettingNow("sid" + sid,0);
               }
               else if(Number(sid) % 2 == 0)
               {
                  _core.updateSettingNow("bs" + sid,0,true);
               }
               else
               {
                  _core.updateSettingNow("bs" + sid,0,false);
               }
            }
            if(_dropSlot.slotType == Slot.SLOT_PET_AI || _dropSlot.slotType == Slot.SLOT_FAIRY_CONFIG_RIGHT)
            {
               slot.clean();
               view = ViewManager.getInstance().getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
               if(view)
               {
                  view.saveAlert = true;
               }
            }
            if(_dropSlot.slotType == Slot.SLOT_TEMP_SLOT)
            {
               _dropTempSlot = ItemSlotTemp(_dropSlot);
               if(Boolean(_dropTempSlot.posId) && Boolean(_dropTempSlot.posId > 0) && Boolean(_dropTempSlot.slotData))
               {
                  ii = _dropTempSlot.slotData.ii;
                  if(ii >= 5375 && ii <= 5697 || ii >= 5770 && ii <= 5841)
                  {
                     dropTemp = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.delmxTempSlot(_dropTempSlot.posId,_core.delPass);
                           _dropSlot = null;
                        }
                     };
                     delmxTempSlot = function(param1:*):void
                     {
                        var _loc2_:String = null;
                        if(param1)
                        {
                           _loc2_ = MD5.hash(param1);
                           _core.remote.delmxTempSlot(_dropTempSlot.posId,_loc2_);
                           _dropSlot = null;
                        }
                     };
                     if(_core.delPass)
                     {
                        Alert.show(Language.STAGEMAIN_S[0],"",Alert.YES | Alert.NO,null,dropTemp);
                     }
                     else
                     {
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.SLOT_U[0],delmxTempSlot);
                     }
                     return;
                  }
               }
               if(Boolean(_dropTempSlot.posId) && Boolean(_dropTempSlot.posId > 0) && Boolean(_dropTempSlot.slotData))
               {
                  dropTemp = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.delTempSlot(_dropTempSlot.posId,_core.delPass);
                        _dropSlot = null;
                     }
                  };
                  delTempSlot = function(param1:*):void
                  {
                     var _loc2_:String = null;
                     if(param1)
                     {
                        _loc2_ = MD5.hash(param1);
                        _core.remote.delTempSlot(_dropTempSlot.posId,_loc2_);
                        _dropSlot = null;
                     }
                  };
                  if(_core.delPass)
                  {
                     Alert.show(Language.STAGEMAIN_S[0],"",Alert.YES | Alert.NO,null,dropTemp);
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.SLOT_U[0],delTempSlot);
                  }
               }
            }
         }
      }
      
      public function set brightCode(param1:Number) : void
      {
         ResManager.setBrightCode(this,param1);
      }
      
      public function loadHitTestLayer(param1:String) : void
      {
         _hitTestLoader = new Loader();
         var _loc2_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain,null);
         _hitTestLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,hitTestLoadedHander);
         var _loc3_:String = ResManager.hashNov(param1 + "/MAP_HIT_NEW.swf");
         _hitTestLoader.load(new URLRequest(_loc3_),_loc2_);
      }
      
      private function dropGuildHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.dropGuildItem(_dropSlot.slotData.id);
            _dropSlot = null;
         }
      }
      
      public function enterScene(param1:Object) : void
      {
         _core.player.walkable = false;
         enabled = true;
         _mapData = param1;
         brightCode = param1.brightCode;
         colorCode = param1.colorCode;
         width = param1.width;
         height = param1.height;
         x = stage.stageWidth / 2 - _core.player.posCenterX;
         y = stage.stageHeight / 2 - _core.player.posCenterY;
         if(x > 0)
         {
            x = 0;
         }
         if(x < stage.stageWidth - width)
         {
            x = stage.stageWidth - width;
         }
         if(y > 0)
         {
            y = 0;
         }
         if(y < stage.stageHeight - height)
         {
            y = stage.stageHeight - height;
         }
         _loadedLeft = 0;
         _loadedTop = 0;
         _loadedRight = width;
         _loadedBottom = height;
         var _loc2_:Number = Number(param1.type);
         var _loc3_:String = ResManager.getResUrlNoHash(param1.resCode);
         switch(_loc2_)
         {
            case GamePredef.MAP_TYPE_NORMAL:
            case GamePredef.MAP_TYPE_SINGLE:
               loadHitTestLayer(_loc3_);
               mapContainer.init(this,_loc3_,width,height,_loc2_);
               hitTestContainer.visible = false;
               break;
            case GamePredef.MAP_TYPE_TILE:
               buildTile(param1.id);
               break;
            default:
               Alert.show(" type error");
         }
         if([521,522,523,524,525].indexOf(Number(param1.id)) >= 0)
         {
            SeaBubbleView.getInstance().startBubble(true);
         }
         var _loc4_:* = _core.view.getUI(ViewManager.SHADE_PVP);
         if(_loc4_)
         {
            if(ToolKit.isEqual(param1.id,73))
            {
               _loc4_.showPVPShadePanel();
            }
         }
      }
      
      public function leaveScene() : void
      {
         itemContainer.removeAll();
         hitTestContainer.removeAll();
         mapContainer.clear();
         _core.view.clearStage();
         visible = false;
         enabled = false;
         if(_mapData != null && [521,522,523,524,525].indexOf(Number(_mapData.id)) >= 0 || SeaBubbleView.getInstance().isPlaying)
         {
            SeaBubbleView.getInstance().startBubble(false);
         }
         var _loc1_:* = _core.view.getUI(ViewManager.SHADE_PVP);
         if(Boolean(_mapData != null) && Boolean(_loc1_) && Boolean(_loc1_.visible))
         {
            _loc1_.closePVPShadePanel();
         }
      }
      
      private function mouseUpHandler(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
         _moveTimer.stop();
         _moveTimer.removeEventListener(TimerEvent.TIMER,moveTimerHandler);
         if(MouseManager.checkClick())
         {
            _core.player.view.stop();
            _core.player.stop();
         }
      }
      
      public function centerPlayer() : void
      {
         if(_core.player)
         {
            centerTo(_core.player.posX,_core.player.posY);
         }
      }
      
      public function globalCenterTo(param1:Number, param2:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         if(Boolean(_core.player) && (_core.player.flyingState == GamePredef.FLYING_STATE_TAKING_OFF || _core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR))
         {
            _loc5_ = 30;
            _loc6_ = GamePredef.APP_WIDTH - _loc5_;
            _loc7_ = 160;
            _loc8_ = uint(GamePredef.APP_HEIGHT);
            param1 = param1 >= _loc5_ ? param1 : _loc5_;
            param1 = param1 <= _loc6_ ? param1 : _loc6_;
            param2 = param2 >= _loc7_ ? param2 : _loc7_;
            param2 = param2 <= _loc8_ ? param2 : _loc8_;
         }
         var _loc3_:Number = (param1 - x) / flyingZoomRate;
         var _loc4_:Number = (param2 - y) / flyingZoomRate;
         if(_core.player)
         {
            _core.player.routeTo(_loc3_,_loc4_);
         }
         else
         {
            centerTo(_loc3_,_loc4_);
         }
      }
      
      public function get centerX() : int
      {
         return (GamePredef.APP_HALF_WIDTH - x) / flyingZoomRate;
      }
      
      private function hitTestLoadedHander(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = _loc2_.url;
         var _loc4_:Array = _loc3_.split("/");
         var _loc5_:String = _loc4_[_loc4_.length - 1];
         _hitTestLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,hitTestLoadedHander);
         var _loc6_:Sprite = _hitTestLoader.content as Sprite;
         hitTestContainer.init(_loc6_,_loc5_);
         _hitTestLoader.unload();
      }
      
      private function mapReady(param1:Event = null) : void
      {
         _core.view.showAll(ViewManager.TYPE_MAIN);
         _core.view.initView(ViewManager.MAIN_MINIMAP);
         if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
         {
            applyZoomEffect(1);
         }
         else
         {
            applyZoomEffect(GamePredef.FLYING_ZOOM_RATE);
            itemContainer.drawClouds(false);
         }
         centerPlayerImm();
         setCoreReady();
      }
      
      private function createHitTest(param1:Object) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc2_:Graphics = hitTestContainer.graphics;
         var _loc3_:int = -2;
         while(_loc3_ < width / TILE_WIDTH + 3)
         {
            _loc4_ = -2;
            while(_loc4_ < height / TILE_HEIGHT + 3)
            {
               _loc5_ = false;
               if(Boolean(param1[_loc3_]) && Boolean(param1[_loc3_][_loc4_]) && Number(param1[_loc3_][_loc4_]) % 2 == 1)
               {
                  _loc5_ = true;
               }
               if(!_loc5_)
               {
                  _loc2_.beginFill(16750848,1);
                  if(_loc4_ % 2 == 0)
                  {
                     _loc2_.moveTo(TILE_WIDTH * _loc3_ - TILE_WIDTH / 2,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT / 2);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_,TILE_HEIGHT / 2 * _loc4_);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_ + TILE_WIDTH / 2,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT / 2);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_ - TILE_WIDTH / 2,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT / 2);
                  }
                  else
                  {
                     _loc2_.moveTo(TILE_WIDTH * _loc3_,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT / 2);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_ + TILE_WIDTH / 2,TILE_HEIGHT / 2 * _loc4_);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_ + TILE_WIDTH,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT / 2);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_ + TILE_WIDTH / 2,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT);
                     _loc2_.lineTo(TILE_WIDTH * _loc3_,TILE_HEIGHT / 2 * _loc4_ + TILE_HEIGHT / 2);
                  }
                  _loc2_.endFill();
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      public function get centerY() : int
      {
         return (GamePredef.APP_HALF_HEIGHT - y) / flyingZoomRate;
      }
      
      private function dragEnterHandler(param1:DragEvent) : void
      {
         var _loc2_:ISlot = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ISlot;
            _dropSlot = _loc2_;
            if(_dropSlot.slotType == Slot.SLOT_BAG || _dropSlot.slotType == Slot.SLOT_USERBAR || _dropSlot.slotType == Slot.SLOT_PET_AI || _dropSlot.slotType == Slot.SLOT_GUILD || _dropSlot.slotType == Slot.SLOT_TEMP_SLOT || _dropSlot.slotType == Slot.SLOT_FAIRY_CONFIG_RIGHT)
            {
               DragManager.acceptDragDrop(UIComponent(param1.currentTarget));
            }
         }
      }
      
      private function setCoreReady() : void
      {
         _core.ready = true;
         _core.player.walkable = true;
         if(_core.firstLoginFlag == 1 && _core.player.walkable)
         {
            _core.remote.fixFlyState();
            _core.firstLoginFlag = 0;
         }
      }
      
      public function loadFinish() : void
      {
         itemContainer.sortChildren();
         visible = true;
         fadeIn.play();
         mapReady();
      }
      
      public function set colorCode(param1:int) : void
      {
         ResManager.setColorCode(this,param1);
      }
      
      public function snapBackGround() : BitmapData
      {
         var _loc1_:BitmapData = new BitmapData(_stage.stageWidth,_stage.stageHeight);
         _loc1_.draw(this);
         return _loc1_;
      }
      
      private function dragOverHandler(param1:DragEvent) : void
      {
         DragManager.showFeedback(DragManager.MOVE);
      }
      
      private function moveTimerHandler(param1:TimerEvent) : void
      {
         globalCenterTo(stage.mouseX,stage.mouseY);
      }
      
      public function centerTo(param1:Number, param2:Number) : void
      {
         var _loc5_:Point = null;
         var _loc3_:Number = (GamePredef.APP_HALF_WIDTH - x) / flyingZoomRate;
         var _loc4_:Number = (GamePredef.APP_HALF_HEIGHT - y) / flyingZoomRate;
         _loc5_ = localCheckBounds(param1,param2);
         mapMove.stop();
         mapMove.xBy = (_loc3_ - _loc5_.x) * flyingZoomRate;
         mapMove.yBy = (_loc4_ - _loc5_.y) * flyingZoomRate;
         mapMove.play();
      }
      
      private function addChildren() : void
      {
         mapCanvas = new Sprite();
         mapContainer = new MapContainer();
         backEffectLayer = new Sprite();
         itemContainer = new ItemContainer();
         hitTestContainer = new HitTestContainer();
         _frontEffectLayer = new Sprite();
         hitTestContainer.visible = false;
         mapCanvas.addChild(mapContainer);
         addChild(mapCanvas);
         addChild(backEffectLayer);
         addChild(itemContainer);
         addChild(hitTestContainer);
         addChild(_frontEffectLayer);
      }
      
      private function buildTile(param1:int) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_MAP_CELL][param1];
         var _loc3_:Object = {};
         for each(_loc4_ in _loc2_)
         {
            if(_loc3_[_loc4_.posX] == undefined)
            {
               _loc3_[_loc4_.posX] = {};
            }
            _loc3_[_loc4_.posX][_loc4_.posY] = _loc4_.resCode;
         }
         createHitTest(_loc3_);
         setCoreReady();
         hitTestContainer.visible = false;
         mapContainer.init(this,ResManager.getResUrl(_mapData.resCode),width,height,_mapData.type,_loc3_);
      }
      
      private function dropHandlerByDp(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.dropItem(_dropSlot.slotData.id,_core.delPass);
            _dropSlot = null;
         }
      }
      
      private function initEffects() : void
      {
         fadeOut = new Fade(this);
         fadeOut.alphaFrom = 1;
         fadeOut.alphaTo = 0;
         fadeOut.duration = 800;
         fadeIn = new Fade(this);
         fadeIn.alphaFrom = 0;
         fadeIn.alphaTo = 1;
         fadeIn.duration = 800;
         mapMove = new Move(this);
         mapMove.duration = 800;
         mapMove.easingFunction = Linear.easeInOut;
      }
      
      public function centerPlayerImm() : void
      {
         x = 0;
         y = 0;
         lockToCenter(_core.player.posX,_core.player.posY);
      }
      
      private function delSlot(param1:String) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = MD5.hash(param1);
            _core.remote.dropItem(_dropSlot.slotData.id,_loc2_);
         }
         _dropSlot = null;
      }
      
      public function get frontEffectLayer() : Sprite
      {
         return _frontEffectLayer;
      }
      
      private function dropHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.dropItem(_dropSlot.slotData.id);
            _dropSlot = null;
         }
      }
      
      private function effectEndHandler(param1:Event = null) : void
      {
         _core.player.posCenterX = centerX;
         _core.player.posCenterY = centerY;
      }
      
      public function applyZoomEffect(param1:Number) : void
      {
         flyingZoomRate = param1;
         this.scaleX = flyingZoomRate;
         this.scaleY = flyingZoomRate;
         if(itemContainer)
         {
            itemContainer.applyZoomEffect(flyingZoomRate);
         }
      }
      
      private function mouseDownHandler(param1:MouseEvent) : void
      {
         var _loc2_:ChatCanvas = _core.view.getUI(ViewManager.MAIN_CHAT) as ChatCanvas;
         if(_loc2_.checkPoint(stage.mouseX,stage.mouseY))
         {
            param1.stopImmediatePropagation();
            return;
         }
         var _loc3_:QuestGuide = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE) as QuestGuide;
         if(_loc3_.checkPoint(stage.mouseX,stage.mouseY))
         {
            param1.stopImmediatePropagation();
            return;
         }
         globalCenterTo(stage.mouseX,stage.mouseY);
         stage.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
         _moveTimer.addEventListener(TimerEvent.TIMER,moveTimerHandler);
         _moveTimer.start();
         MouseManager.setClickTime();
         _core.clearTargets();
         _core.view.hide(ViewManager.MAIN_TARGET);
      }
      
      private function addView() : void
      {
         _core.view.addUI(ViewManager.STAGE_MAIN_CONTAINER,itemContainer,true);
      }
      
      public function stopCenterEffect() : void
      {
         mapMove.stop();
      }
      
      public function initView() : void
      {
         _core.scene.init(this);
         _moveTimer = new Timer(500);
      }
      
      private function localCheckBounds(param1:Number, param2:Number) : Point
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc3_:Number = GamePredef.APP_HALF_WIDTH;
         var _loc4_:Number = GamePredef.APP_HALF_HEIGHT;
         var _loc5_:Number = (_loc3_ - x) / flyingZoomRate;
         var _loc6_:Number = (_loc4_ - y) / flyingZoomRate;
         var _loc7_:Point = new Point(param1,param2);
         var _loc8_:Number = _loc3_ / flyingZoomRate;
         if(param1 < _loc8_)
         {
            _loc10_ = param1 - _loc8_;
            _loc7_.x = _loc10_ < _loadedLeft ? param1 + (_loadedLeft - _loc10_) : param1;
         }
         else if(param1 > _loadedRight - _loc8_)
         {
            _loc11_ = param1 + _loc8_;
            _loc7_.x = _loc11_ > _loadedRight ? param1 - (_loc11_ - _loadedRight) : param1;
         }
         else
         {
            _loc7_.x = param1;
         }
         var _loc9_:Number = _loc4_ / flyingZoomRate;
         if(param2 < _loc9_)
         {
            _loc12_ = param2 - _loc9_;
            _loc7_.y = _loc12_ < _loadedTop ? param2 + (_loadedTop - _loc12_) : param2;
         }
         else if(param2 > _loadedBottom - _loc9_)
         {
            _loc13_ = param2 + _loc9_;
            _loc7_.y = _loc13_ > _loadedBottom ? param2 - (_loc13_ - _loadedBottom) : param2;
         }
         else
         {
            _loc7_.y = param2;
         }
         return _loc7_;
      }
      
      private function initEventHandlers() : void
      {
         addEventListener(DragEvent.DRAG_ENTER,dragEnterHandler);
         addEventListener(DragEvent.DRAG_OVER,dragOverHandler);
         addEventListener(DragEvent.DRAG_DROP,dragDropHandler);
         addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         mapMove.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
      }
      
      public function lockToCenter(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = localCheckBounds(param1,param2);
         x = GamePredef.APP_HALF_WIDTH - _loc3_.x * flyingZoomRate;
         y = GamePredef.APP_HALF_HEIGHT - _loc3_.y * flyingZoomRate;
      }
   }
}

