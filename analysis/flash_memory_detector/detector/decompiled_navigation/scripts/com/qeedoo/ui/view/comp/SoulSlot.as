package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.PetFightConf;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.DragSource;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.managers.DragManager;
   import mx.managers.PopUpManager;
   
   public class SoulSlot extends Canvas implements ISlot
   {
      
      public static const SLOT_PET_SOUL:uint = 0;
      
      public static const SLOT_BAG_SOUL:uint = 1;
      
      public static var soulResDict:Dictionary = new Dictionary();
      
      private static const DCLICK_DELAY:Number = 800;
      
      private static const REFRESH_DELAY:Number = 3000;
      
      private static const SHOW_DELAY:Number = 180;
      
      public static const EVENT_SLOT_DCLICK:String = "EVENT_SLOT_DCLICK";
      
      private var _container:UIComponent;
      
      private var soulIcon:UIComponent = new UIComponent();
      
      private var _lastClick:Number;
      
      private var _type:int = -1;
      
      private var _stackMax:int = -1;
      
      public var tempBagFlag:Boolean = false;
      
      private var _slotData:Object;
      
      public var acceptPos:Array;
      
      public var showMax:Boolean = false;
      
      private var _loader:Loader;
      
      private var _alert:Alert;
      
      private var _callLaterFlag:Boolean = false;
      
      public var _iconCode:Number = -1;
      
      private var _showToolTip:Boolean;
      
      public var acceptType:Array;
      
      public var movable:Boolean = true;
      
      public var acceptable:Boolean = true;
      
      protected var _canvas:Canvas;
      
      protected var _core:Core = Core.getInstance();
      
      private var _itemIcon:MovieClip = new MovieClip();
      
      private var _state:int = 0;
      
      public var temp_quality:uint = 0;
      
      private var _isInAuction:Boolean = false;
      
      public var kind:int = 0;
      
      protected var _toolTip:Object;
      
      private var _lastRefresh:Number = 0;
      
      private var _itemId:Number = -1;
      
      private var _txt:TextField;
      
      private var _posId:uint = 0;
      
      private var _slotType:int = -1;
      
      private var lastIconCode:Number = -1;
      
      private var _timeoutHandler:int;
      
      private var _index:int = -1;
      
      private var _showHandler:Number = 0;
      
      private var _requestHandler:uint;
      
      private var _dropSlot:ISlot;
      
      private var soul:SoulSprite;
      
      public var _label:Label;
      
      public var quality:int = 0;
      
      public function SoulSlot()
      {
         super();
         initStyle();
         addChildrens();
         initEventHandlers();
      }
      
      public function set iconHeight(param1:int) : void
      {
         if(_itemIcon != null && _canvas != null)
         {
            _itemIcon.height = param1;
            _canvas.height = param1 + 2;
         }
      }
      
      public function set giid(param1:Number) : void
      {
         _itemId = param1;
         if(_itemId <= 0)
         {
            clearIcon();
            return;
         }
         this.setSource();
         _txt.visible = false;
         dispatchEvent(new GameEvent(GameEvent.SLOT_GIID_CHANGE));
      }
      
      private function dragOverHandler(param1:DragEvent) : void
      {
         var _loc2_:ISlot = null;
         if(acceptType == null || acceptType.length <= 0)
         {
            DragManager.showFeedback(DragManager.MOVE);
            return;
         }
         if(acceptable && param1.dragSource.hasFormat("petSoulSlot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("petSoulSlot") as ISlot;
            if(canPutHere(_loc2_))
            {
               DragManager.showFeedback(DragManager.MOVE);
            }
            else
            {
               DragManager.showFeedback(DragManager.NONE);
            }
            return;
         }
         DragManager.showFeedback(DragManager.NONE);
      }
      
      public function get stackMax() : int
      {
         return 0;
      }
      
      private function checkAndShowTooltip() : void
      {
         checkDelay();
         showTooltip();
      }
      
      public function set dropSlot(param1:ISlot) : void
      {
         this._dropSlot = param1;
      }
      
      private function mouseMove(param1:Event) : void
      {
         if(!_toolTip || _toolTip.visible == false)
         {
            showTooltip();
         }
      }
      
      public function set posId(param1:uint) : void
      {
         this._posId = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
         if(_state == 0)
         {
            _canvas.styleName = "SoulSlotClose";
            if(Boolean(this.slotType == SLOT_PET_SOUL) && Boolean(this._index) && this._index > 108)
            {
               this._label.toolTip = Language.PET_SOUL_S[55];
            }
            else
            {
               switch(this.slotType)
               {
                  case SLOT_PET_SOUL:
                     this._label.toolTip = Language.PET_SOUL_S[31].toString().replace("{level}",GamePredef.PET_SOUL_LEVEL[this._index - 101]);
                     break;
                  case SLOT_BAG_SOUL:
                     this._label.toolTip = Language.PET_SOUL_S[32];
               }
            }
            this._label.visible = true;
         }
         else if(_state == 1)
         {
            _canvas.styleName = "SoulSlotOpen";
            this._label.visible = false;
         }
      }
      
      private function rollOverHandler(param1:Event) : void
      {
         if(this._state == 0)
         {
            return;
         }
         _showToolTip = true;
         filters = [GamePredef.FILTER_SOUL_SLOT_SELECTED];
         if(_itemId > 0 && _type > 0)
         {
            _showHandler = setTimeout(checkAndShowTooltip,SHOW_DELAY);
         }
      }
      
      private function drag(param1:MouseEvent) : void
      {
         var _loc2_:Bitmap = getBitmapByFrame();
         var _loc3_:UIComponent = soulIcon;
         var _loc4_:DragSource = new DragSource();
         _loc4_.addData(_loc3_,"movieClip");
         _loc4_.addData(this,"petSoulSlot");
         var _loc5_:Image = new Image();
         _loc5_.source = _loc2_;
         _loc5_.height = soul.height;
         _loc5_.width = soul.width;
         _loc5_.x = 0;
         _loc5_.y = 0;
         DragManager.doDrag(_loc3_,_loc4_,param1,_loc5_,0,0,0.5);
      }
      
      public function setSource() : void
      {
         var _loc3_:String = null;
         if(_itemId <= 0 || isNaN(_itemId) || _type != GamePredef.TBL_PET_SOUL)
         {
            this.clearIcon();
            return;
         }
         if(_type <= 0)
         {
            trace("Set giid before type , calllater ");
            _callLaterFlag = true;
            return;
         }
         var _loc1_:Core = Core.getInstance();
         var _loc2_:Object = GameData.d[_type][_itemId];
         if(_loc2_)
         {
            clearIcon();
            _loc3_ = ResManager.getResUrlNoHash(_iconCode);
            soul = new SoulSprite();
            soul.show(_loc3_);
            soulIcon = new UIComponent();
            soulIcon.addChild(soul);
            this._canvas.addChild(soulIcon);
         }
         else
         {
            _loc1_.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,imgDataLoaded);
            _requestHandler = setTimeout(requestData,300);
         }
      }
      
      private function showSoulToolTip(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         if(_core.data.hasData(_type,_itemId))
         {
            _loc5_ = {};
            _loc5_.temp = GameData.d[_type][_itemId];
            if(_slotData != null)
            {
               _loc5_.isIns = true;
               _loc5_.slotData = _slotData;
            }
            _toolTip = getToolTip();
            _toolTip.object = _loc5_;
            _toolTip.show();
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,dataLoaded);
            _core.data.getGameData(_type,_itemId);
         }
      }
      
      private function addLink() : void
      {
         var _loc1_:Object = GameData.d[_type][_itemId];
         if(!_loc1_)
         {
            return;
         }
         _core.addLink(_type,_itemId,_loc1_.name);
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            alpha = 0.5;
         }
         else
         {
            alpha = 1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get itemIcon() : MovieClip
      {
         return _itemIcon;
      }
      
      public function showTooltip(param1:Boolean = false) : void
      {
         switch(_type)
         {
            case GamePredef.TBL_PET_SOUL:
               showSoulToolTip(_type,this._index,param1);
         }
      }
      
      public function clean() : void
      {
         reset();
         _slotData = null;
      }
      
      private function resLoadCompleteHandler(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         if(_loc2_.url.indexOf(ResManager.hash(ResManager.getResUrlNoHash(_iconCode) + "_NEW.swf")) == -1)
         {
            return;
         }
         _loc2_.removeEventListener(Event.COMPLETE,resLoadCompleteHandler);
         _itemIcon = _loc2_.content as MovieClip;
         _itemIcon.x = 32;
         _itemIcon.y = 32;
         soulIcon = new UIComponent();
         soulIcon.addChild(_itemIcon);
         _canvas.addChild(soulIcon);
      }
      
      public function reset() : void
      {
         _type = -1;
         _itemId = -1;
         lastIconCode = -1;
         if(Boolean(soul) && Boolean(soul.parent) && soul.parent == this.soulIcon)
         {
            soul.unShow();
            this.soulIcon.removeChild(soul);
         }
         alpha = 1;
         _canvas.styleName = "";
      }
      
      public function get isInAuction() : Boolean
      {
         return _isInAuction;
      }
      
      private function checkDelay() : void
      {
         var _loc1_:Number = new Date().getTime();
         if(_loc1_ - _lastRefresh > REFRESH_DELAY)
         {
            if(_type == GamePredef.TBL_PET || _type == GamePredef.TBL_ITEM_INSTANCE || _type == GamePredef.TBL_EQUIPT_INSTANCE || _type == GamePredef.TBL_EQUIPT_INSTANCE)
            {
               _core.data.delData(_type,_itemId);
            }
            _lastRefresh = _loc1_;
         }
      }
      
      protected function dataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
         if(_showToolTip)
         {
            showTooltip(true);
         }
      }
      
      public function get slotType() : int
      {
         return _slotType;
      }
      
      public function hideTooltip() : void
      {
         if(_toolTip)
         {
            _toolTip.hide();
         }
      }
      
      public function clearIcon() : void
      {
         if(Boolean(soul) && Boolean(soul.parent) && soul.parent == this.soulIcon)
         {
            soul.unShow();
            this.soulIcon.removeChild(soul);
         }
      }
      
      public function set typeAndId(param1:Object) : void
      {
         _type = param1.type;
         giid = param1.itemId;
      }
      
      private function imgDataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,imgDataLoaded);
         setSource();
      }
      
      public function set type(param1:int) : void
      {
         if(param1 != GamePredef.TBL_PET_SOUL)
         {
            return;
         }
         _type = param1;
      }
      
      private function swapSlotView(param1:ISlot, param2:ISlot) : void
      {
         var _loc3_:Object = {};
         _loc3_.type = param1.type;
         _loc3_.giid = param1.giid;
         param1.type = param2.type;
         param1.giid = param2.giid;
         param2.type = _loc3_.type;
         param2.giid = _loc3_.giid;
      }
      
      protected function rollOutHandler(param1:Event) : void
      {
         if(this._state == 0)
         {
            return;
         }
         _showToolTip = false;
         filters = [];
         clearTimeout(_showHandler);
         if(_itemId > 0 && _type > 0)
         {
            hideTooltip();
         }
      }
      
      public function set text(param1:String) : void
      {
         _txt.text = param1;
      }
      
      public function get giid() : Number
      {
         return _itemId;
      }
      
      public function set stackMax(param1:int) : void
      {
      }
      
      public function getBitmapByFrame() : Bitmap
      {
         var _loc1_:BitmapData = soul.getBitmapData();
         return new Bitmap(_loc1_);
      }
      
      private function initStyle() : void
      {
         width = 65;
         height = 65;
         horizontalScrollPolicy = "off";
         verticalScrollPolicy = "off";
      }
      
      public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:PetSoulSlot = null;
         if(this._state == 0)
         {
            return;
         }
         if(param1.dragSource.hasFormat("petSoulSlot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("petSoulSlot") as PetSoulSlot;
            if(_loc2_ == this)
            {
               return;
            }
            switch(_loc2_.slotType)
            {
               case SLOT_PET_SOUL:
                  if(_loc2_.slotData.petId)
                  {
                     _core.remote.moveSoul(_loc2_.index,index,_loc2_.slotData.petId);
                  }
                  else
                  {
                     _core.remote.moveSoul(_loc2_.index,index,-1);
                  }
                  break;
               case SLOT_BAG_SOUL:
                  if(this.slotData.petId)
                  {
                     _core.remote.moveSoul(_loc2_.index,index,this.slotData.petId);
                  }
                  else
                  {
                     _core.remote.moveSoul(_loc2_.index,index,-1);
                  }
            }
         }
      }
      
      public function get dropSlot() : ISlot
      {
         return _dropSlot;
      }
      
      public function restore() : void
      {
         _canvas.styleName = "";
         _slotData = _core.data.getSlot({"sid":_index});
         update();
      }
      
      public function get posId() : uint
      {
         return this._posId;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function resetQualityColor() : void
      {
         _canvas.styleName = "SoulSlotClose";
      }
      
      public function set slotData(param1:Object) : void
      {
         _slotData = param1;
      }
      
      public function set iconWidth(param1:int) : void
      {
         if(_itemIcon != null && _canvas != null)
         {
            _itemIcon.width = param1;
            _canvas.width = param1 + 2;
         }
      }
      
      public function setStyleName(param1:int) : void
      {
         _state = param1;
         if(param1 == 0)
         {
            _canvas.styleName = "SoulSlotClose";
         }
         else if(param1 == 1)
         {
            _canvas.styleName = "SoulSlotOpen";
         }
      }
      
      public function get isDClick() : Boolean
      {
         return Boolean(_lastClick + DCLICK_DELAY > new Date().getTime());
      }
      
      private function setFirstClickTime() : void
      {
         _lastClick = new Date().getTime();
      }
      
      public function set isInAuction(param1:Boolean) : void
      {
         _isInAuction = param1;
      }
      
      public function get selected() : Boolean
      {
         return alpha == 0.5;
      }
      
      public function set index(param1:int) : void
      {
         if(_index > 0)
         {
            return;
         }
         _index = param1;
      }
      
      private function canPutHere(param1:ISlot) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         if(_state == 0)
         {
            return false;
         }
         if(acceptType == null || acceptType.length <= 0)
         {
            return true;
         }
         for each(_loc2_ in acceptType)
         {
            if(param1.type == _loc2_)
            {
               if(acceptPos == null || acceptPos.length <= 0)
               {
                  return true;
               }
               _loc3_ = _core.getTemplateData(param1.type,param1.giid);
               if(Boolean(_loc3_) && _loc3_.hasOwnProperty("position"))
               {
                  for each(_loc4_ in acceptPos)
                  {
                     if(_loc3_.position == _loc4_)
                     {
                        return true;
                     }
                  }
                  return false;
               }
               return false;
            }
         }
         return false;
      }
      
      public function set slotType(param1:int) : void
      {
         _slotType = param1;
      }
      
      private function addChildrens() : void
      {
         _container = new UIComponent();
         _txt = new TextField();
         _label = new Label();
         _label.x = 0;
         _label.y = 0;
         _label.width = 65;
         _label.height = 65;
         _canvas = new Canvas();
         _canvas.horizontalScrollPolicy = "off";
         _canvas.verticalScrollPolicy = "off";
         _canvas.addChild(_label);
         _canvas.width = 65;
         _canvas.height = 65;
         _container.addChild(_txt);
         _container.addChild(_canvas);
         addChild(_container);
      }
      
      protected function getToolTip() : Object
      {
         switch(_type)
         {
            case GamePredef.TBL_PET_SOUL:
               return _core.view.getUI(ViewManager.TOOLTIP_PET_SOUL);
            default:
               return _core.view.getUI(ViewManager.TOOLTIP_ITEM);
         }
      }
      
      private function dragEnterHandler(param1:DragEvent) : void
      {
         var _loc2_:ISlot = null;
         if(!acceptable)
         {
            return;
         }
         if(param1.target.parent.parent.parent is PetFightConf)
         {
            _core.nextGuide(ViewManager.PANEL_PETFIGHT_CONF,"",-1,-1,1);
         }
         if(param1.dragSource.hasFormat("petSoulSlot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("petSoulSlot") as ISlot;
            _dropSlot = _loc2_;
            DragManager.acceptDragDrop(Canvas(param1.currentTarget));
         }
      }
      
      public function set stackNum(param1:int) : void
      {
      }
      
      public function update() : void
      {
         if(Boolean(_slotData) && _slotData.sid > 0)
         {
            type = _slotData.type;
            giid = _slotData.itemId;
         }
         else
         {
            clean();
         }
      }
      
      public function rightClick() : void
      {
         var _loc1_:GameEvent = null;
         if(_showToolTip)
         {
            _loc1_ = new GameEvent(EVENT_SLOT_DCLICK);
            _loc1_.data = {};
            dispatchEvent(_loc1_);
         }
      }
      
      public function get slotData() : Object
      {
         return _slotData;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      private function requestData() : void
      {
         if(_requestHandler > 0)
         {
            clearTimeout(_requestHandler);
            _requestHandler = 0;
         }
         var _loc1_:Core = Core.getInstance();
         _loc1_.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,imgDataLoaded);
         _loc1_.data.getGameData(_type,_itemId);
      }
      
      public function get stackNum() : int
      {
         return 0;
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         var func:Function = null;
         var event:MouseEvent = param1;
         _core.itemState = GamePredef.ST_ITEM_NORMAL;
         hideTooltip();
         if(isDClick)
         {
            if(_state != 0)
            {
               return;
            }
            if(this.slotType == SLOT_PET_SOUL)
            {
               return;
            }
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.openBag();
               }
            };
            _alert = Alert.show(Language.PET_SOUL_S[21],"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            setFirstClickTime();
            if(_state == 0)
            {
               return;
            }
            if(_core.view.mouseState == GamePredef.ACTION_NONE)
            {
               if(_itemId <= 0)
               {
                  return;
               }
               if(event.shiftKey)
               {
                  addLink();
                  return;
               }
               if(movable)
               {
                  _timeoutHandler = setTimeout(drag,180,event);
               }
            }
         }
      }
      
      public function setTypeAndId(param1:int, param2:Number) : void
      {
         _type = param1;
         giid = param2;
      }
      
      private function initEventHandlers() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,rollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT,rollOutHandler);
         addEventListener(MouseEvent.CLICK,onClick);
         addEventListener(DragEvent.DRAG_ENTER,dragEnterHandler);
         addEventListener(DragEvent.DRAG_OVER,dragOverHandler);
         addEventListener(DragEvent.DRAG_DROP,dragDropHandler);
      }
   }
}

