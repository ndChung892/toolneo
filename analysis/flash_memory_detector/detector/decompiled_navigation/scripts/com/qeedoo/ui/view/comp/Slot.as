package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.utils.JSONUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compDragable.NumPanel;
   import com.qeedoo.ui.view.compDragable.PetFightConf;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.TextArea;
   import mx.core.DragSource;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.managers.DragManager;
   import mx.utils.ObjectUtil;
   
   public class Slot extends Canvas implements ISlot
   {
      
      public static const SLOT_PETFUNC:uint = 13;
      
      public static const SLOT_USERBAR:uint = 14;
      
      public static const SLOT_TRADE_ITEM:uint = 2;
      
      public static const SLOT_GUARD:uint = 52;
      
      private static const DCLICK_DELAY:Number = 800;
      
      public static const SLOT_RUNE_CHA:uint = 40;
      
      public static const SLOT_TEMP_BAG:uint = 23;
      
      public static const SLOT_BAG:uint = 0;
      
      public static const SLOT_AUCTION_PET:uint = 32;
      
      public static const SLOT_EQUFUNC:uint = 8;
      
      public static const SLOT_PET_STONE_BAG:uint = 53;
      
      public static const SLOT_PET:uint = 12;
      
      public static const SLOT_EQUFUNC_ITEM:uint = 19;
      
      public static const SLOT_PRS_EXCBAG:uint = 47;
      
      public static const SLOT_MATERIAL:uint = 10;
      
      public static const SLOT_PET_STONE_CHANGE_SKILL:uint = 60;
      
      public static const SLOT_TALENT:uint = 37;
      
      public static const SLOT_AUCTION_ITEM:uint = 31;
      
      public static const SLOT_GUILD:uint = 20;
      
      public static const SLOT_PET_SOUL:uint = 30;
      
      public static const SLOT_MEDAL:uint = 34;
      
      public static const SLOT_MAIL:uint = 1;
      
      public static const SLOT_TEMPORARY_BAG:uint = 25;
      
      public static const SLOT_CREBOOK:uint = 17;
      
      public static const SLOT_CREATURE:uint = 33;
      
      public static const SLOT_MYSTRE:uint = 44;
      
      public static const SLOT_PET_STONE_COMPO:uint = 54;
      
      public static const SLOT_FAIRY_CONFIG_LEFT:uint = 35;
      
      public static const SLOT_RUNE_UP:uint = 39;
      
      public static const SLOT_FARM_BAG:uint = 27;
      
      public static const SLOT_STARS_ADD:uint = 28;
      
      public static const SLOT_TRADE_PET:uint = 15;
      
      public static const SLOT_RUNE_CHA_HOLE:uint = 42;
      
      public static const SLOT_TEMP_SLOT:uint = 24;
      
      public static const SLOT_PET_STONE_NORMAL:uint = 57;
      
      public static const SLOT_PRODUCT:uint = 21;
      
      public static const SLOT_EQUIP:uint = 4;
      
      public static const SLOT_PET_STONE_RESOLVE:uint = 58;
      
      public static const SLOT_MAKE:uint = 7;
      
      public static const SLOT_SHOP:uint = 3;
      
      public static const SLOT_STONE_SEAL:uint = 38;
      
      public static const SLOT_RUNE_PET:uint = 41;
      
      public static const SLOT_PET_STONE_SET:uint = 55;
      
      public static const SLOT_JEWEL:uint = 9;
      
      public static const SLOT_PRS_CHIPBAG:uint = 46;
      
      public static const SLOT_MONTHWELFARE:uint = 45;
      
      public static const SLOT_SKILL:uint = 5;
      
      public static const SLOT_MONSTERHEART_BOX:uint = 49;
      
      private static const SHOW_DELAY:Number = 180;
      
      public static const SLOT_PET_STONE_EQUIP_BAG:uint = 59;
      
      public static const EVENT_SLOT_DCLICK:String = "EVENT_SLOT_DCLICK";
      
      public static const SLOT_PET_AI:uint = 26;
      
      public static const SLOT_BUILD:uint = 21;
      
      public static const SLOT_TREASURE:uint = 18;
      
      public static const SLOT_MONSTERHEART_RESOLVE:uint = 51;
      
      public static const SLOT_MONSTERHEART_UP:uint = 50;
      
      public static const SLOT_PET_STONE_EQUIPT:uint = 56;
      
      public static const SLOT_AUCTION:uint = 6;
      
      public static const SLOT_RUNE_PET_HOLE:uint = 43;
      
      public static const SLOT_STARS_SPEED:uint = 29;
      
      public static const SLOT_FAIRY_CONFIG_RIGHT:uint = 36;
      
      public static const SLOT_LOTTO:uint = 22;
      
      private static const REFRESH_DELAY:Number = 3000;
      
      public static const SLOT_SKILL_PET:uint = 16;
      
      public static const SLOT_STAR:uint = 11;
      
      public static const SLOT_MONSTERHEART_BAG:uint = 48;
      
      private var _container:UIComponent;
      
      private var _lastClick:Number;
      
      protected var _type:int = -1;
      
      private var _stackMax:int = -1;
      
      public var tempBagFlag:Boolean = false;
      
      public var sourceGroup:Boolean = false;
      
      private var _slotData:Object;
      
      public var acceptPos:Array;
      
      public var showMax:Boolean = false;
      
      private var _itemNum:TextField;
      
      private var _stackNum:int = 1;
      
      private var _gray:Boolean;
      
      private var _callLaterFlag:Boolean = false;
      
      public var acceptType:Array;
      
      private var _showToolTip:Boolean;
      
      public var acceptable:Boolean = true;
      
      public var movable:Boolean = true;
      
      protected var _core:Core = Core.getInstance();
      
      private var _itemIcon:Image;
      
      protected var _canvas:Canvas;
      
      public var temp_quality:uint = 0;
      
      private var _isInAuction:Boolean = false;
      
      public var kind:int = 0;
      
      protected var _toolTip:Object;
      
      protected var _itemId:Number = -1;
      
      private var _txt:TextField;
      
      private var _posId:uint = 0;
      
      private var _lastRefresh:Number = 0;
      
      protected var _slotType:int = -1;
      
      private var _timeoutHandler:int;
      
      private var _index:int = -1;
      
      private var _showHandler:Number = 0;
      
      private var _requestHandler:uint;
      
      private var _dropSlot:ISlot;
      
      public var tempColor:int = -1;
      
      public var quality:int = 0;
      
      public function Slot()
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
      
      public function resetRuneSlotIconSize() : void
      {
         _itemIcon.width = 61;
         _itemIcon.height = 61;
      }
      
      private function dragOverHandler(param1:DragEvent) : void
      {
         var _loc2_:ISlot = null;
         if(acceptType == null || acceptType.length <= 0)
         {
            DragManager.showFeedback(DragManager.MOVE);
            return;
         }
         if(acceptable && param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ISlot;
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
      
      public function get stackNum() : int
      {
         return _stackNum;
      }
      
      private function setNumText() : void
      {
         setTextFormat(_itemNum);
         _itemNum.height = 13;
         _itemNum.width = 33;
         _itemNum.autoSize = TextFieldAutoSize.RIGHT;
         _itemNum.x = 30;
         _itemNum.y = 19;
         _itemNum.defaultTextFormat = new TextFormat("Arial",8,16777215);
      }
      
      private function checkAndShowTooltip() : void
      {
         checkDelay();
         showTooltip();
      }
      
      public function resetBagSlotIconSize() : void
      {
         _itemIcon.width = 38;
         _itemIcon.height = 38;
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
      
      private function setQualityColor() : void
      {
         var _loc1_:Object = null;
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         if(_core.data.hasData(_type,_itemId))
         {
            _loc1_ = _core.getTemplateData(_type,_itemId);
            if(Boolean(_type) && _type == GamePredef.TBL_MEDAL)
            {
               setStyleName(_loc1_.q);
               return;
            }
            if(_loc1_)
            {
               kind = _loc1_.kind;
            }
            _loc2_ = _core.data.getGameData(_type,_itemId);
            if(_type == GamePredef.TBL_EQUIPT_INSTANCE)
            {
               _loc3_ = _loc2_ ? int(_loc2_.color) : 0;
               if(Boolean(_loc4_ = _loc2_ ? String(_loc2_.flag) : null) && _loc4_.indexOf("sublimeId") != -1 && _loc2_.color == 4)
               {
                  _loc5_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
                  if(_loc5_ && int(_loc5_.sublimeId) > 0 && _loc1_.kind != 9)
                  {
                     _loc3_ = GamePredef.SUBLIMATION_COLOR;
                  }
               }
               setStyleName(_loc3_);
            }
            else if(_type == GamePredef.TBL_ITEM_INSTANCE)
            {
               if(kind == GamePredef.ITEM_KIND_MATERIAL)
               {
                  setStyleName(_loc2_.color);
               }
               else if(kind == GamePredef.ITEM_KIND_ITEM)
               {
                  if(_loc1_.type == 503)
                  {
                     setStyleName(_loc1_.color);
                  }
                  else if(_loc1_.type == 550 && Boolean(GamePredef.SLOT_SHOW_QUALITY_COLOR[_loc1_.id]))
                  {
                     setStyleName(_loc1_.color);
                  }
               }
               else if(kind == GamePredef.ITEM_KIND_FEATHER)
               {
                  _loc1_.type > 1400 && _loc1_.type <= 1404 && setStyleName(_loc1_.color);
               }
            }
            else if(_type == GamePredef.TBL_ITEM_TEMPLATE)
            {
               if(_slotType == SLOT_JEWEL || _slotType == SLOT_STONE_SEAL)
               {
                  kind == GamePredef.ITEM_KIND_ITEM && _loc1_.type == 503 && setStyleName(_loc1_.color);
               }
               else if(_slotType == SLOT_MYSTRE)
               {
                  kind == GamePredef.ITEM_KIND_MATERIAL && setStyleName(quality);
               }
            }
            else if(_type == GamePredef.TBL_PET)
            {
               _loc6_ = _core.basic.colorByGrowRate(_loc2_.growRate);
               setStyleName(_loc6_);
            }
            else if(_type == GamePredef.TBL_MYSTRE || _type == GamePredef.TBL_RUNE_CHIP)
            {
               setStyleName(quality);
            }
            else if(_type == GamePredef.TBL_PET_STONE)
            {
               setStyleName(quality);
            }
         }
      }
      
      private function setImage() : void
      {
         _itemIcon.width = 32;
         _itemIcon.height = 32;
         _itemIcon.scaleContent = true;
         _itemIcon.autoLoad = true;
      }
      
      private function setSource() : void
      {
         if(_itemId <= 0 || isNaN(_itemId))
         {
            _itemIcon.source = null;
            _itemIcon.filters = _gray ? [GamePredef.GRAY_FILTER] : null;
            return;
         }
         if(_type <= 0)
         {
            trace("Set giid before type , calllater ");
            _callLaterFlag = true;
            return;
         }
         var _loc1_:Core = Core.getInstance();
         var _loc2_:Object = _loc1_.getTemplateData(_type,_itemId,false);
         if(_loc2_)
         {
            _itemIcon.source = ResManager.getIconUrl(_loc2_.iconCode);
            ResManager.setColorCode(_itemIcon,_loc2_.colorCode);
            setQualityColor();
         }
         else
         {
            _loc1_.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,imgDataLoaded);
            _requestHandler = setTimeout(requestData,300);
         }
      }
      
      protected function showTempToolTip(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:Object = null;
         if(_core.data.hasData(_type,_itemId))
         {
            _loc5_ = _core.data.getGameData(_type,_itemId);
            _loc3_ = ObjectUtil.copy(_loc5_);
            _loc4_ = {};
            _loc4_.slotType = _slotType;
            if(_slotType == SLOT_TREASURE || _slotType == SLOT_LOTTO || _slotType == SLOT_TEMP_SLOT || _slotData && _slotData.wingTemp || _slotType == SLOT_TEMPORARY_BAG)
            {
               _loc4_.slotData = _slotData;
            }
            if(_type == GamePredef.TBL_ITEM_TEMPLATE && _loc3_.kind == GamePredef.ITEM_KIND_MATERIAL)
            {
               if(temp_quality > 0)
               {
                  _loc3_.color = temp_quality;
               }
               _loc4_.slotData = _slotData;
            }
            if(tempBagFlag && _slotType == SLOT_JEWEL)
            {
               _loc4_.slotData = _slotData;
            }
            if(tempColor >= 0)
            {
               _loc3_.color = tempColor;
            }
            _loc4_.type = BasicToolTip.TYPE_TEMP;
            _loc4_.btnVisible = false;
            _loc4_.soulActived = false;
            _loc4_.inst = null;
            _loc4_.temp = _loc3_;
            if(_type == GamePredef.TBL_DECO_SHOW)
            {
               _loc6_ = int(_loc5_["t"]);
               if(!_gray && _loc6_ > 1)
               {
                  _loc7_ = ObjectUtil.copy(_loc5_);
                  _loc8_ = _core.player.decoInfo;
                  _loc9_ = int(_loc7_["position"]);
                  _loc10_ = _loc8_[_loc9_];
                  _loc11_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc10_["activeFlag"]));
                  _loc12_ = _loc11_["s"];
                  for(_loc13_ in _loc12_)
                  {
                     if(_loc13_ == giid)
                     {
                        _loc7_.dueTime = Number(_loc12_[_loc13_]);
                        _loc4_.inst = _loc7_;
                     }
                  }
               }
            }
            if(_type == GamePredef.TBL_PET_STONE)
            {
               _loc14_ = this as PetStoneSlot;
               _loc4_.skillId = (this as PetStoneSlot).skillId;
            }
            if(slotType == Slot.SLOT_TEMP_BAG && index >= 80 && index <= 99)
            {
               _loc15_ = _core.player.tBag.tempBag[index - 79];
               if(_loc15_ && _loc15_.t && _loc15_.t > 0)
               {
                  _loc4_.tempBagOt = _loc15_.t;
               }
            }
            if(Boolean(_slotData) && _slotData.gold > 0)
            {
               _loc4_.cost = _slotData.gold;
               _loc4_.costType = Currency.TYPE_GOLDALL;
            }
            else if(Boolean(_slotData) && _slotData.money > 0)
            {
               _loc4_.cost = _slotData.money;
               _loc4_.costType = Currency.TYPE_MONEYALL;
            }
            _loc4_.tempBagFlag = tempBagFlag;
            _toolTip = getToolTip();
            if(Boolean(data) && data.quality > 0)
            {
               _loc4_.quality = data.quality;
            }
            _toolTip.object = _loc4_;
            if(param1 == GamePredef.TBL_ITEM_TEMPLATE || param1 == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               _toolTip.currencyHide("temp");
            }
            _toolTip.show();
         }
         else
         {
            if(param2)
            {
               return;
            }
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,dataLoaded);
            _core.data.getGameData(_type,_itemId);
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      private function rollOverHandler(param1:Event) : void
      {
         _showToolTip = true;
         filters = [GamePredef.FILTER_SLOT_SELECTED];
         if(_itemId > 0 && _type > 0)
         {
            _showHandler = setTimeout(checkAndShowTooltip,SHOW_DELAY);
         }
      }
      
      public function setStackMax() : void
      {
         var _loc1_:Object = null;
         if(_itemId > 0 && _type > 0)
         {
            _loc1_ = _core.getTemplateData(_type,_itemId);
            if(_loc1_)
            {
               stackMax = _loc1_.stackMax;
            }
         }
      }
      
      private function drag(param1:MouseEvent) : void
      {
         var _loc2_:Image = Image(_itemIcon);
         var _loc3_:DragSource = new DragSource();
         _loc3_.addData(_loc2_,"image");
         _loc3_.addData(this,"slot");
         var _loc4_:Image = new Image();
         _loc4_.source = _itemIcon.source;
         _loc4_.height = _itemIcon.height;
         _loc4_.width = _itemIcon.width;
         _loc4_.x = _itemIcon.x;
         _loc4_.y = _itemIcon.y;
         DragManager.doDrag(_loc2_,_loc3_,param1,_loc4_,0,0,0.5);
      }
      
      public function get itemIcon() : Image
      {
         return _itemIcon;
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
      
      public function showTooltip(param1:Boolean = false) : void
      {
         switch(_type)
         {
            case GamePredef.TBL_ITEM_INSTANCE:
            case GamePredef.TBL_EQUIPT_INSTANCE:
            case GamePredef.TBL_PET:
               showInstToolTip(_type,this._index,param1);
               break;
            case GamePredef.TBL_ITEM_TEMPLATE:
            case GamePredef.TBL_EQUIPT_TEMPLATE:
            case GamePredef.TBL_CREATURE:
            case GamePredef.TBL_SKILL:
            case GamePredef.TBL_BUILDING:
            case GamePredef.TBL_MINERAL_TEMPLATE:
            case GamePredef.TBL_MEDAL:
            case GamePredef.TBL_PET_TALENT:
            case GamePredef.TBL_DECO_SHOW:
            case GamePredef.TBL_DECO_RUNE:
            case GamePredef.TBL_RUNE_CHIP:
            case GamePredef.TBL_MYSTRE:
            case GamePredef.TBL_PRS_CHIP:
            case GamePredef.TBL_CREATUREH_HEART:
            case GamePredef.TBL_PET_STONE:
               showTempToolTip(_type,param1);
         }
      }
      
      public function clean() : void
      {
         reset();
         _slotData = null;
      }
      
      private function addLink() : void
      {
         var _loc1_:Object = _core.getTemplateData(_type,_itemId);
         if(!_loc1_)
         {
            return;
         }
         _core.addLink(_type,_itemId,_loc1_.name);
      }
      
      public function get isInAuction() : Boolean
      {
         return _isInAuction;
      }
      
      protected function dataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
         if(_showToolTip)
         {
            showTooltip(true);
         }
      }
      
      public function restItemIconSize() : void
      {
         _itemIcon.width = 50;
         _itemIcon.height = 50;
         _canvas.width = 50;
         _canvas.height = 50;
      }
      
      public function resetRuneSlotSetIconSize() : void
      {
         _itemIcon.width = 51;
         _itemIcon.height = 51;
      }
      
      public function get isDClick() : Boolean
      {
         return Boolean(_lastClick + DCLICK_DELAY > new Date().getTime());
      }
      
      public function reset() : void
      {
         _type = -1;
         _itemId = -1;
         _stackNum = 1;
         _stackMax = -1;
         this.gray = false;
         _itemNum.text = "";
         _itemIcon.source = null;
         _txt.visible = true;
         alpha = 1;
         _canvas.styleName = "";
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
         _itemIcon.source = null;
         _txt.visible = true;
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
      
      private function actionOnItem(param1:MouseEvent, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Array = null;
         var _loc8_:* = undefined;
         if(param2 == GamePredef.ACTION_JEWEL_DEL)
         {
            if(slotType == Slot.SLOT_JEWEL)
            {
               this.dispatchEvent(new MouseEvent(MouseEvent.DOUBLE_CLICK));
            }
         }
         if(param2 == GamePredef.ACTION_FEATHER_DEL)
         {
            if(slotType == Slot.SLOT_EQUFUNC_ITEM)
            {
               this.dispatchEvent(new MouseEvent(MouseEvent.DOUBLE_CLICK));
            }
         }
         if(_type <= 0 || _itemId <= 0 || _slotType != Slot.SLOT_BAG && _slotType != Slot.SLOT_EQUIP || _stackNum < 0)
         {
            if(slotType != SLOT_TEMP_SLOT || param2 != GamePredef.ACTION_DIVIDE)
            {
               return;
            }
         }
         if(param3 == GamePredef.MOUSE_TARGET_CHA)
         {
            switch(param2)
            {
               case GamePredef.ACTION_BIND:
                  _core.remote.bindItem(slotData.id);
                  break;
               case GamePredef.ACTION_ITEM:
                  _core.player.useItem(GamePredef.MOUSE_TARGET_CHA,-1,slotData.id);
                  break;
               case GamePredef.ACTION_DIVIDE:
                  if(slotType == Slot.SLOT_BAG || slotType == SLOT_TEMP_SLOT)
                  {
                     _core.itemState = GamePredef.ST_ITEM_DIVIDE;
                     drag(param1);
                  }
                  break;
               case GamePredef.ACTION_DROP:
                  if(slotType == Slot.SLOT_BAG)
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.SLOT_U[0],delSlot);
                  }
                  break;
               case GamePredef.ACTION_REPAIR_NOWEAR:
                  if(this.index >= 600 && this.index <= 607)
                  {
                     _loc8_ = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                     _core.remote.repairPetEqu(_loc8_.petData.id,this._itemId,1);
                     break;
                  }
                  _core.remote.repair(slotData.id,1);
                  break;
               case GamePredef.ACTION_REPAIR_MAGIC_WEAPON:
                  _loc4_ = _core.data.gameData[slotData.type][slotData.itemId];
                  _loc5_ = _core.getTemplateData(slotData.type,slotData.itemId,false);
                  if(!_loc4_ || !_loc5_ || _loc5_.kind != GamePredef.ITEM_KIND_MAGICWEAPON)
                  {
                     return;
                  }
                  _loc6_ = _loc4_.endureMax - _loc4_.endureLeft;
                  if(_loc6_ <= 0)
                  {
                     _core.sysMidNote(Language.CHARACTORPANEL_S[79]);
                     return;
                  }
                  _loc7_ = _core.basic.getItemSlotList(ItemConfig.ITEM_DARKBLUE_STONE,1);
                  if(_loc7_)
                  {
                     _core.remote.magicWeaponAutoRepair(slotData.id,_loc7_[0]);
                     break;
                  }
                  _core.sysMidNote(Language.CHARACTORPANEL_S[78].replace("{num}",1));
                  break;
               case GamePredef.ACTION_REPAIR_NORMAL:
                  if(this.index >= 600 && this.index <= 607)
                  {
                     _loc8_ = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                     _core.remote.repairPetEqu(_loc8_.petData.id,this._itemId,2);
                     break;
                  }
                  _core.remote.repair(slotData.id,2);
            }
         }
         else if(param3 == GamePredef.MOUSE_TARGET_PET)
         {
            switch(param2)
            {
               case GamePredef.ACTION_ITEM:
                  _core.player.useItem(GamePredef.MOUSE_TARGET_PET,_core.view.mousePetId,slotData.id);
            }
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
         _type = param1;
         if(_callLaterFlag && _type > 0)
         {
            _callLaterFlag = false;
            setSource();
         }
      }
      
      private function swapSlotView(param1:ISlot, param2:ISlot) : void
      {
         var _loc3_:Object = {};
         _loc3_.type = param1.type;
         _loc3_.giid = param1.giid;
         _loc3_.stackNum = param1.stackNum;
         param1.type = param2.type;
         param1.giid = param2.giid;
         param1.stackNum = param2.stackNum;
         param2.type = _loc3_.type;
         param2.giid = _loc3_.giid;
         param2.stackNum = _loc3_.stackNum;
      }
      
      public function setRuneNumText() : void
      {
         _itemNum.x = 53;
         _itemNum.y = 42;
         _itemNum.defaultTextFormat = new TextFormat("Arial",12,16777215);
      }
      
      public function set stackMax(param1:int) : void
      {
         _stackMax = param1;
         if(_itemId > 0)
         {
            setStackText();
         }
      }
      
      protected function rollOutHandler(param1:Event) : void
      {
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
      
      private function showInstToolTip(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         if(_core.data.hasData(_type,_itemId))
         {
            _loc4_ = _core.data.getGameData(_type,_itemId);
            _loc5_ = {};
            _loc5_.type = BasicToolTip.TYPE_INST;
            _loc5_.btnVisible = false;
            _loc5_.soulActived = _core.player.equipActiveList[_index];
            _loc5_.inst = _loc4_;
            _loc5_.temp = _core.getTemplateData(_type,_itemId);
            _loc5_.index = param2;
            if(_slotData == null)
            {
               _slotData = {"sid":_index};
            }
            _loc5_.slotData = _slotData;
            _toolTip = getToolTip();
            _toolTip.object = _loc5_;
            if(param1 == GamePredef.TBL_ITEM_INSTANCE || param1 == GamePredef.TBL_EQUIPT_INSTANCE)
            {
               if(this.isInAuction)
               {
                  _toolTip.currencyHide("temp");
               }
               else
               {
                  _toolTip.currencyHide("inst");
               }
            }
            _toolTip.show();
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,dataLoaded);
            _core.data.getGameData(_type,_itemId);
         }
      }
      
      private function initStyle() : void
      {
         width = 34;
         height = 34;
         horizontalScrollPolicy = "off";
         verticalScrollPolicy = "off";
      }
      
      public function resetMHSlotIconSize() : void
      {
         _itemIcon.width = 34;
         _itemIcon.height = 34;
         _itemNum.defaultTextFormat = new TextFormat("Arial",9,16777215);
      }
      
      private function setTextFormat(param1:TextField) : void
      {
         param1.autoSize = TextFieldAutoSize.LEFT;
         param1.selectable = false;
         param1.mouseEnabled = false;
         param1.mouseWheelEnabled = false;
         param1.textColor = 16777215;
         param1.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      public function dragDropHandler(param1:DragEvent) : void
      {
         var slot:ItemSlot = null;
         var numPanel:NumPanel = null;
         var inst:Object = null;
         var temp:Object = null;
         var ii:* = undefined;
         var func:Function = null;
         var view:Object = null;
         var equIns:Object = null;
         var equTmp:Object = null;
         var petPanelView:Object = null;
         var toPetIndex:uint = 0;
         var itemTmp:Object = null;
         var tItemTmp:Object = null;
         var funcs:Function = null;
         var str:String = null;
         var event:DragEvent = param1;
         if(event.dragSource.hasFormat("slot"))
         {
            slot = event.dragSource.dataForFormat("slot") as ItemSlot;
            if(slot == this)
            {
               return;
            }
            switch(_slotType)
            {
               case SLOT_BAG:
                  if(slot.stackNum == 0)
                  {
                     return;
                  }
                  if(slot.slotType == SLOT_BAG)
                  {
                     if((_core.itemState == GamePredef.ST_ITEM_DIVIDE || event.shiftKey) && _itemId < 0)
                     {
                        numPanel = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
                        numPanel.parent = _core.view.getUI(ViewManager.PANEL_BAG);
                        numPanel.showSelected(slot,this,NumPanel.TYPE_MOVE);
                        break;
                     }
                     if(index > GamePredef.SLOT_SID_BAG[8] && index <= GamePredef.SLOT_SID_BAG[9] && slot.kind != GamePredef.ITEM_KIND_PETEQU)
                     {
                        return;
                     }
                     if(index > GamePredef.SLOT_SID_BAG[7] && index <= GamePredef.SLOT_SID_BAG[8])
                     {
                        inst = _core.data.getData(GamePredef.TBL_ITEM_INSTANCE,slot.slotData.itemId);
                        if(!inst)
                        {
                           return;
                        }
                        temp = _core.data.getGameData(GamePredef.TBL_ITEM_TEMPLATE,inst.tid);
                        if(!temp || temp.type != GamePredef.ITEM_TYPE_QUEST)
                        {
                           return;
                        }
                     }
                     _core.remote.moveItem(slot.index,index);
                     break;
                  }
                  if(slot.slotType == SLOT_EQUIP)
                  {
                     if(slot.slotData == null)
                     {
                        return;
                     }
                     _core.remote.equipOff(slot.slotData.id,index);
                     break;
                  }
                  if(slot.slotType == SLOT_TEMP_SLOT)
                  {
                     if(Boolean(slot.slotData) && slot.slotData.ii > 0)
                     {
                        ii = slot.slotData.ii;
                        if(ii >= 5375 && ii <= 5697 || ii >= 5770 && ii <= 5841)
                        {
                           if(_core.itemState == GamePredef.ST_ITEM_DIVIDE || event.shiftKey)
                           {
                              func = function(param1:*):void
                              {
                                 if(param1 && param1 > 0)
                                 {
                                    if(Boolean(slot.posId) && slot.posId <= _core.player.tBag.mx.tempSlotNum)
                                    {
                                       _core.remote.addMXFromTemp(slot.posId,index,param1);
                                    }
                                 }
                              };
                              NumPanel(_core.view.getUI(ViewManager.PANEL_NUM)).showSelected(slot,this,NumPanel.TYPE_MOVE,func);
                              break;
                           }
                           _core.remote.addMXFromTemp(slot.posId,index);
                           break;
                        }
                     }
                     if(_core.itemState == GamePredef.ST_ITEM_DIVIDE || event.shiftKey)
                     {
                        func = function(param1:*):void
                        {
                           if(param1 && param1 > 0)
                           {
                              if(Boolean(slot.posId) && slot.posId <= _core.player.tBag.tempSlotNum)
                              {
                                 _core.remote.addItemFromTemp(slot.posId,index,param1);
                              }
                           }
                        };
                        NumPanel(_core.view.getUI(ViewManager.PANEL_NUM)).showSelected(slot,this,NumPanel.TYPE_MOVE,func);
                        break;
                     }
                     _core.remote.addItemFromTemp(slot.posId,index);
                     break;
                  }
                  if(slot.slotType == SLOT_STONE_SEAL)
                  {
                     view = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
                     if(Boolean(view) && slot is ItemSlotStoneSeal)
                     {
                        view.toRemove((slot as ItemSlotStoneSeal).sealIndex);
                     }
                  }
                  break;
               case SLOT_GUILD:
                  if(slot.slotType == SLOT_GUILD)
                  {
                     _core.remote.moveGuildItem(slot.index,index);
                  }
                  break;
               case SLOT_SHOP:
                  if(slot == this)
                  {
                     return;
                  }
                  break;
               case SLOT_EQUIP:
                  if(slot.slotData)
                  {
                     equIns = _core.data.getData(slot.slotData.type,slot.slotData.itemId);
                     if(equIns && equIns.tid && ToolKit.isSmallThan(slot.slotData.sid,GamePredef.SLOT_SID_BANK[0]))
                     {
                        equTmp = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][equIns.tid];
                        if(equTmp && ToolKit.isBigOrEqual(equTmp.position,GamePredef.PETEQU_POS_BEGIN) && ToolKit.isSmallOrEqual(equTmp.position,GamePredef.PETEQU_POS_END))
                        {
                           petPanelView = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                           if(Boolean(petPanelView) && Boolean(petPanelView.petData))
                           {
                              _core.remote.petEquipOn(petPanelView.petData.id,slot.slotData.id);
                              break;
                           }
                        }
                     }
                     _core.remote.equipOn(slot.slotData.id);
                  }
                  break;
               case SLOT_TRADE_ITEM:
                  if(slot.slotType == SLOT_BAG)
                  {
                     _core.view.getUI(ViewManager.PANEL_TRADE).addItem(slot.slotData);
                  }
                  break;
               case SLOT_TRADE_PET:
                  if(slot.slotType == SLOT_PET)
                  {
                     toPetIndex = uint((this.parent as LevelSlot).id.replace("pet",""));
                     _core.view.getUI(ViewManager.PANEL_TRADE).addPet(slot.slotData.id,toPetIndex);
                     _core.view.getUI(ViewManager.PANEL_BAG).petInit();
                  }
                  break;
               case SLOT_AUCTION_ITEM:
                  if(slot.slotType == SLOT_BAG)
                  {
                     _core.view.getUI(ViewManager.PANEL_PM_AUCTION).addItem(slot.slotData);
                  }
                  break;
               case SLOT_AUCTION_PET:
                  if(slot.slotType == SLOT_PET)
                  {
                     toPetIndex = uint((this.parent as LevelSlot).id.replace("pet",""));
                     _core.view.getUI(ViewManager.PANEL_PM_AUCTION).addPet(slot.slotData.id,toPetIndex);
                     _core.view.getUI(ViewManager.PANEL_BAG).petInit();
                  }
                  break;
               case SLOT_EQUFUNC_ITEM:
                  if(slot.slotType == SLOT_BAG)
                  {
                     slotData = slot.slotData;
                     type = slot.type;
                     giid = slot.giid;
                     stackNum = slot.stackNum;
                  }
                  break;
               case SLOT_TEMP_BAG:
                  if(slot.slotType == SLOT_BAG)
                  {
                     if(index - 79 <= _core.player.tBag.tempbagNum)
                     {
                        itemTmp = _core.getTemplateData(slot.type,slot.giid);
                        tItemTmp = _core.getTemplateData(type,giid);
                        if(!itemTmp)
                        {
                           break;
                        }
                        if(!ToolKit.isEqual(itemTmp.type,GamePredef.ITEM_TYPE_TEMP_BAG))
                        {
                           break;
                        }
                        if(Boolean(tItemTmp) && Boolean(tItemTmp.proplNum))
                        {
                           if(ToolKit.isEqual(itemTmp.proplNum,tItemTmp.proplNum))
                           {
                              if(tItemTmp.t < 0)
                              {
                                 _core.sysMsg(Language.SLOT_U[4]);
                                 break;
                              }
                           }
                           funcs = function(param1:CloseEvent):void
                           {
                              if(param1.detail == Alert.YES)
                              {
                                 _core.remote.setTempBag(slot.index,index);
                              }
                           };
                           str = String(Language.SLOT_U[1]);
                           str = str.replace("{name}",tItemTmp.name);
                           Alert.show(str,"",Alert.YES | Alert.NO,null,funcs);
                           break;
                        }
                        func = function(param1:CloseEvent):void
                        {
                           if(param1.detail == Alert.YES)
                           {
                              _core.remote.setTempBag(slot.index,index);
                           }
                        };
                        Alert.show(Language.SLOT_U[3],"",Alert.YES | Alert.NO,null,func);
                        break;
                     }
                     if(index - 99 <= _core.player.tBag.mx.tempbagNum)
                     {
                        itemTmp = _core.getTemplateData(slot.type,slot.giid);
                        tItemTmp = _core.getTemplateData(type,giid);
                        if(!itemTmp)
                        {
                           break;
                        }
                        if(!ToolKit.isEqual(itemTmp.type,GamePredef.ITEM_TYPE_TEMP_BAG))
                        {
                           break;
                        }
                        if(Boolean(tItemTmp) && Boolean(tItemTmp.proplNum))
                        {
                           if(ToolKit.isEqual(itemTmp.proplNum,tItemTmp.proplNum))
                           {
                              if(tItemTmp.t < 0)
                              {
                                 _core.sysMsg(Language.SLOT_U[4]);
                                 break;
                              }
                           }
                           funcs = function(param1:CloseEvent):void
                           {
                              if(param1.detail == Alert.YES)
                              {
                                 _core.remote.setmxTempBag(slot.index,index);
                              }
                           };
                           str = String(Language.SLOT_U[1]);
                           str = str.replace("{name}",tItemTmp.name);
                           Alert.show(str,"",Alert.YES | Alert.NO,null,funcs);
                           break;
                        }
                        func = function(param1:CloseEvent):void
                        {
                           if(param1.detail == Alert.YES)
                           {
                              _core.remote.setmxTempBag(slot.index,index);
                           }
                        };
                        Alert.show(Language.SLOT_U[3],"",Alert.YES | Alert.NO,null,func);
                     }
                  }
                  break;
               case SLOT_CREATURE:
                  if(slot.slotType == SLOT_CREATURE)
                  {
                     slotData = slot.slotData;
                     type = slot.type;
                     giid = slot.giid;
                     stackNum = slot.stackNum;
                  }
                  break;
               case SLOT_FAIRY_CONFIG_RIGHT:
                  if(slot.slotType == SLOT_FAIRY_CONFIG_LEFT)
                  {
                     view = _core.view.getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
                     if(view)
                     {
                        view.getSkill(slot,this);
                     }
                     break;
                  }
                  if(slot.slotType == SLOT_FAIRY_CONFIG_RIGHT)
                  {
                     view = _core.view.getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
                     if(view)
                     {
                        view.changeSkill(slot,this);
                     }
                  }
            }
         }
      }
      
      public function setIconToolTip(param1:Object, param2:String) : void
      {
         var _loc3_:TextArea = new TextArea();
         _loc3_.text = param2;
         _itemIcon.source = param1;
         _itemIcon.toolTip = param2;
         setImage();
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
         setQualityColor();
      }
      
      public function resetQualityColor() : void
      {
         _canvas.styleName = "TransparentSlot";
      }
      
      public function get posId() : uint
      {
         return this._posId;
      }
      
      public function set slotData(param1:Object) : void
      {
         this.gray = false;
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
         if(param1 == 0)
         {
            _canvas.styleName = "TransparentSlot";
         }
         else if(param1 == 1)
         {
            _canvas.styleName = "TransparentSlotGreen";
         }
         else if(param1 == 2)
         {
            _canvas.styleName = "TransparentSlotBlue";
         }
         else if(param1 == 3)
         {
            _canvas.styleName = "TransparentSlotPurple";
         }
         else if(param1 == 4)
         {
            _canvas.styleName = "TransparentSlotOrange";
         }
         else if(param1 == 5)
         {
            _canvas.styleName = "TransparentSlotRed";
         }
      }
      
      private function setStackText() : void
      {
         if(showMax)
         {
            if(_stackMax >= 0)
            {
               _itemNum.text = _stackNum + "/" + _stackMax;
            }
            else if(_stackNum > 1)
            {
               _itemNum.text = String(_stackNum);
            }
            else
            {
               _itemNum.text = "";
            }
         }
         else if(_stackNum > 1)
         {
            _itemNum.text = String(_stackNum);
         }
         else
         {
            _itemNum.text = "";
         }
      }
      
      private function setFirstClickTime() : void
      {
         _lastClick = new Date().getTime();
      }
      
      public function set isInAuction(param1:Boolean) : void
      {
         _isInAuction = param1;
      }
      
      private function delSlot(param1:String) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = MD5.hash(param1);
            _core.remote.dropItem(slotData.id,_loc2_);
         }
      }
      
      public function get selected() : Boolean
      {
         return alpha == 0.5;
      }
      
      public function set index(param1:int) : void
      {
         if(_index > 0)
         {
            throw new Error("slot index should set only once.");
         }
         _index = param1;
         _core.view.addSlot(param1,this);
      }
      
      private function canPutHere(param1:ISlot) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
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
         if(_slotType < 0)
         {
            _slotType = param1;
         }
      }
      
      private function addChildrens() : void
      {
         _txt = new TextField();
         _itemIcon = new Image();
         _itemIcon.x = 1;
         _itemIcon.y = 1;
         _itemIcon.filters = _gray ? [GamePredef.GRAY_FILTER] : null;
         _itemNum = new TextField();
         _canvas = new Canvas();
         _canvas.width = 34;
         _canvas.height = 34;
         _canvas.clipContent = false;
         _canvas.horizontalScrollPolicy = "off";
         _canvas.verticalScrollPolicy = "off";
         setImage();
         setNumText();
         setTxtText();
         _canvas.addChild(_itemIcon);
         addToContainer(_txt);
         addToContainer(_canvas);
         addToContainer(_itemNum);
      }
      
      public function setBagNumText() : void
      {
         _itemNum.x = 36;
         _itemNum.y = 30;
         _itemNum.defaultTextFormat = new TextFormat("Arial",8,16777215);
      }
      
      protected function getToolTip() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         switch(_type)
         {
            case GamePredef.TBL_ITEM_INSTANCE:
            case GamePredef.TBL_ITEM_TEMPLATE:
               return _core.view.getUI(ViewManager.TOOLTIP_ITEM);
            case GamePredef.TBL_EQUIPT_INSTANCE:
            case GamePredef.TBL_EQUIPT_TEMPLATE:
               if(_core.data.hasData(_type,_itemId))
               {
                  _loc2_ = _core.data.getGameData(_type,_itemId);
                  _loc1_ = _core.getTemplateData(_type,_itemId);
                  _loc2_ && _loc1_;
               }
               if(Boolean(_loc1_) && _loc1_.kind == GamePredef.ITEM_KIND_WING)
               {
                  return _core.view.getUI(ViewManager.TOOLTIP_WING);
               }
               return _core.view.getUI(ViewManager.TOOLTIP_EQUIP);
               break;
            case GamePredef.TBL_CREATURE:
            case GamePredef.TBL_PET:
               return _core.view.getUI(ViewManager.TOOLTIP_PET);
            case GamePredef.TBL_SKILL:
               return _core.view.getUI(ViewManager.TOOLTIP_SKILL);
            case GamePredef.TBL_BUILDING:
               return _core.view.getUI(ViewManager.TOOLTIP_BUILDING);
            case GamePredef.TBL_MEDAL:
               return _core.view.getUI(ViewManager.TOOLTIP_MEDAL);
            case GamePredef.TBL_PET_TALENT:
               return _core.view.getUI(ViewManager.TOOLTIP_TALENT);
            case GamePredef.TBL_DECO_SHOW:
               return _core.view.getUI(ViewManager.TOOLTIP_DECO_SHOW);
            case GamePredef.TBL_DECO_RUNE:
               return _core.view.getUI(ViewManager.TOOLTIP_DECO_RUNE);
            case GamePredef.TBL_RUNE_CHIP:
               return _core.view.getUI(ViewManager.TOOLTIP_RUNE_CHIP);
            case GamePredef.TBL_MYSTRE:
               return _core.view.getUI(ViewManager.TOOLTIP_MYS_TREASURE);
            case GamePredef.TBL_PRS_CHIP:
               return _core.view.getUI(ViewManager.TOOLTIP_PRS_CHIP);
            case GamePredef.TBL_CREATUREH_HEART:
               return _core.view.getUI(ViewManager.TOOLTIP_MONSTERHEART);
            case GamePredef.TBL_PET_STONE:
               return _core.view.getUI(ViewManager.TOOLTIP_PET_STONE);
            default:
               return _core.view.getUI(ViewManager.TOOLTIP_ITEM);
         }
      }
      
      private function dragEnterHandler(param1:DragEvent) : void
      {
         var _loc2_:ISlot = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         if(!acceptable)
         {
            return;
         }
         if(param1.target.parent.parent.parent is PetFightConf)
         {
            _core.nextGuide(ViewManager.PANEL_PETFIGHT_CONF,"",-1,-1,1);
         }
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ISlot;
            _dropSlot = _loc2_;
            if(_dropSlot.slotType == Slot.SLOT_USERBAR)
            {
               if(_loc2_ != this)
               {
                  _loc3_ = ["s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12","s13","s14","s15","s16","s17","s18","s19","s20","s21","s22","s23","s24","s25","s26","s27","s28","s29","s30"];
                  _loc4_ = 0;
                  while(_loc4_ < 30)
                  {
                     if(_loc3_[_loc4_] == this.id)
                     {
                        DragManager.acceptDragDrop(Canvas(param1.currentTarget));
                        break;
                     }
                     _loc4_++;
                  }
               }
            }
            else
            {
               DragManager.acceptDragDrop(Canvas(param1.currentTarget));
            }
         }
      }
      
      public function set stackNum(param1:int) : void
      {
         var _loc2_:Boolean = true;
         if(_stackNum == param1 && _stackNum != 1)
         {
            _loc2_ = false;
         }
         _stackNum = param1;
         if(_itemId > 0)
         {
            setStackText();
         }
         if(_loc2_)
         {
            dispatchEvent(new GameEvent(GameEvent.SLOT_NUM_CHANGE));
         }
      }
      
      public function update() : void
      {
         if(Boolean(_slotData) && _slotData.sid > 0)
         {
            type = _slotData.type;
            giid = _slotData.itemId;
            stackNum = _slotData.stackNum;
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
      
      public function set gray(param1:Boolean) : void
      {
         if(_gray == param1)
         {
            return;
         }
         _gray = param1;
         if(!_itemIcon)
         {
            return;
         }
         _itemIcon.filters = _gray ? [GamePredef.GRAY_FILTER] : null;
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
      
      public function addToContainer(param1:DisplayObject) : DisplayObject
      {
         if(!_container)
         {
            _container = new UIComponent();
            this.addChild(_container);
         }
         return _container.addChild(param1);
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         var _loc2_:GameEvent = null;
         _core.itemState = GamePredef.ST_ITEM_NORMAL;
         hideTooltip();
         if(isDClick)
         {
            _loc2_ = new GameEvent(EVENT_SLOT_DCLICK);
            _loc2_.data = param1;
            dispatchEvent(_loc2_);
            if(_timeoutHandler >= 0)
            {
               clearTimeout(_timeoutHandler);
               _timeoutHandler = 0;
            }
         }
         else if(_core.view.mouseState == GamePredef.ACTION_NONE)
         {
            setFirstClickTime();
            if(_itemId <= 0)
            {
               return;
            }
            if(param1.shiftKey)
            {
               addLink();
               return;
            }
            if(movable)
            {
               _timeoutHandler = setTimeout(drag,180,param1);
            }
         }
         else
         {
            actionOnItem(param1,_core.view.mouseState,_core.view.mouseTargetType);
            _core.view.resoreMouse();
         }
      }
      
      public function setRuneSetNumText() : void
      {
         _itemNum.x = 45;
         _itemNum.y = 36;
         _itemNum.defaultTextFormat = new TextFormat("Arial",10,16777215);
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
      
      public function setTypeAndId(param1:int, param2:Number) : void
      {
         _type = param1;
         giid = param2;
      }
      
      public function set giid(param1:Number) : void
      {
         _itemId = param1;
         if(_itemId <= 0)
         {
            clearIcon();
            return;
         }
         _txt.visible = false;
         setSource();
         setStackMax();
         _itemIcon.toolTip = null;
         dispatchEvent(new GameEvent(GameEvent.SLOT_GIID_CHANGE));
      }
      
      private function setTxtText() : void
      {
         setTextFormat(_txt);
      }
   }
}

