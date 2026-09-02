package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.BagPanel;
   import com.qeedoo.ui.view.compDragable.MonsterHeartPanel;
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
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MonsterHeartSlot extends Slot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var ITEM_COLOR_NUM:Object = {
         0:0,
         1:1,
         6:2,
         11:3,
         16:4
      };
      
      public var monsterHeartHolePos:int = -1;
      
      public var isOpen:Boolean = true;
      
      mx_internal var _watchers:Array = [];
      
      public var monsterHeartBagPos:int = -1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var monsterHeartBox:int = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1091760867holeImg:Image;
      
      public var monsterHeartType:int = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Slot,
         "propertiesFactory":function():Object
         {
            return {
               "width":40,
               "height":40,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"holeImg",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":1,
                        "y":1,
                        "visible":false,
                        "buttonMode":true
                     };
                  }
               })]
            };
         }
      });
      
      public function MonsterHeartSlot()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "TransparentSlot";
         this.width = 40;
         this.height = 40;
         this.addEventListener("creationComplete",___MonsterHeartSlot_Slot1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MonsterHeartSlot._watcherSetupUtil = param1;
      }
      
      public function set holeImg(param1:Image) : void
      {
         var _loc2_:Object = this._1091760867holeImg;
         if(_loc2_ !== param1)
         {
            this._1091760867holeImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeImg",_loc2_,param1));
         }
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:MonsterHeartSlot = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as MonsterHeartSlot;
            if(_loc2_ == this)
            {
               trace("移动到原位置");
               return;
            }
            if(_loc2_.slotType == this.slotType)
            {
               trace("同种类型格子移动");
               return;
            }
            if(_loc2_.slotType == SLOT_MONSTERHEART_BAG && this.slotType == SLOT_MONSTERHEART_BOX)
            {
               _core.remote.call("monsterHeartSet",null,_loc2_.monsterHeartBagPos,this.monsterHeartHolePos,this.monsterHeartBox,_loc2_.monsterHeartType);
            }
            else if(_loc2_.slotType == SLOT_MONSTERHEART_BOX && this.slotType == SLOT_MONSTERHEART_BAG)
            {
               _core.remote.call("monsterHeartReMove",null,_loc2_.monsterHeartHolePos,_loc2_.monsterHeartBox);
            }
            else if(_loc2_.slotType == SLOT_MONSTERHEART_BAG && this.slotType == SLOT_MONSTERHEART_RESOLVE)
            {
               this.clean();
               this.slotData = _loc2_.slotData;
               this.type = _loc2_.type;
               this.giid = _loc2_.giid;
               _loc3_ = _loc2_.slotData;
               _loc3_ && _loc3_.color && this.setStyleName(_loc3_.color);
               _loc4_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
               if(_loc4_)
               {
                  _loc4_.changeResolveExp();
               }
            }
            else if(_loc2_.slotType == SLOT_MONSTERHEART_BAG && this.slotType == SLOT_MONSTERHEART_UP)
            {
               _loc3_ = _loc2_.slotData;
               if(_loc3_.color >= 5)
               {
                  return;
               }
               this.clean();
               this.slotData = _loc3_;
               this.type = _loc2_.type;
               this.giid = _loc2_.giid;
               _loc3_ && _loc3_.color && this.setStyleName(_loc3_.color);
               _loc4_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
               if(_loc4_)
               {
                  _loc4_.setMHSlotAfterUp(this.giid);
               }
            }
         }
      }
      
      public function click(param1:MouseEvent) : void
      {
         var func:Function;
         var goldNum:Number;
         var pId:Number;
         var itemColorNumQ:Number;
         var func1:Function;
         var pointObj:Object = null;
         var needJGZnum:Number = NaN;
         var itemKK:Object = null;
         var jgzLevel:String = null;
         var event:MouseEvent = param1;
         if(isOpen || monsterHeartBox == 0)
         {
            return;
         }
         pId = monsterHeartBox * 10 + monsterHeartHolePos;
         pointObj = GameData.d[GamePredef.TBL_CREATUREH_POINT][pId];
         goldNum = Number(pointObj.goldnum);
         itemColorNumQ = Number(pointObj.quality);
         needJGZnum = Number(pointObj.num);
         itemKK = _core.getItemNumByColor(GamePredef.TBL_ITEM_TEMPLATE,pointObj.itemId,ITEM_COLOR_NUM[itemColorNumQ]);
         func = function(param1:CloseEvent):void
         {
            var bagPanel:BagPanel = null;
            var goldLockFlag:Boolean = false;
            var gfunc:Function = null;
            var event:CloseEvent = param1;
            if(event.detail == Alert.YES)
            {
               bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
               goldLockFlag = bagPanel.goldLockFlag;
               if(goldLockFlag || !bagPanel)
               {
                  gfunc = function(param1:String):void
                  {
                     _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                  return;
               }
               _core.remote.call("openHoleMonsterHeart",null,monsterHeartBox,monsterHeartHolePos);
            }
         };
         func1 = function(param1:CloseEvent):void
         {
            var _loc2_:Number = NaN;
            if(param1.detail == Alert.YES)
            {
               _loc2_ = Number(_core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,pointObj.itemId).num);
               if(_loc2_ < needJGZnum)
               {
                  Alert.show("Vui lòng lấy Kim Cương trong túi ra","",Alert.YES);
                  return;
               }
               _core.remote.call("openHoleMonsterHeartJingang",null,monsterHeartBox,monsterHeartHolePos,itemKK);
            }
         };
         if(Number(itemKK.num) >= needJGZnum)
         {
            jgzLevel = MonsterHeartPanel.JGZ_COLOR[itemColorNumQ];
            Alert.show(Language.MONSTER_HEART[18].toString().replace("{num}",needJGZnum).replace("{level}",jgzLevel),"",Alert.YES | Alert.NO,null,func1);
         }
         else
         {
            Alert.show(Language.MONSTER_HEART[13].toString().replace("{num}",goldNum),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function setOpen(param1:Boolean) : void
      {
         isOpen = param1;
         holeImg.visible = !param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MonsterHeartSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MonsterHeartSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MonsterHeartSlotWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function ___MonsterHeartSlot_Slot1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get holeImg() : Image
      {
         return this._1091760867holeImg;
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      private function _MonsterHeartSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000381);
      }
      
      public function init() : void
      {
         this.resetMHSlotIconSize();
         addEventListener(MouseEvent.CLICK,click);
      }
      
      private function _MonsterHeartSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000381);
         },function(param1:Object):void
         {
            holeImg.source = param1;
         },"holeImg.source");
         result[0] = binding;
         return result;
      }
   }
}

