package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponent;
   import mx.utils.ObjectUtil;
   
   public class SimpleSlot extends Canvas
   {
      
      private static const LENGTH:int = 34;
      
      private static const STACK_MAX:int = 9999;
      
      private static const SHOW_DELAY:Number = 180;
      
      public var type:int;
      
      private var _tipTimer:Number;
      
      private var _slotId:Number;
      
      private var _image:Image;
      
      private var _toolTip:Object;
      
      private var _stackTxt:TextField;
      
      private var _slotType:int = 0;
      
      private var _stackNum:Number;
      
      private var _core:Core = Core.getInstance();
      
      public function SimpleSlot()
      {
         super();
         this.styleName = "TransparentSlot";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.width = this.height = LENGTH;
         _image = new Image();
         _image.setStyle("verticalCenter",0);
         _image.setStyle("horizontalCenter",0);
         this.addChild(_image);
         var _loc1_:UIComponent = new UIComponent();
         _loc1_.width = _loc1_.height = LENGTH;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         this.addChild(_loc1_);
         _stackTxt = new TextField();
         _stackTxt.y = 20;
         _stackTxt.height = 13;
         _stackTxt.width = LENGTH;
         _stackTxt.selectable = false;
         _stackTxt.mouseEnabled = false;
         _stackTxt.mouseWheelEnabled = false;
         var _loc2_:TextFormat = new TextFormat("Arial",8,16777215);
         _loc2_.align = TextFormatAlign.RIGHT;
         _stackTxt.defaultTextFormat = _loc2_;
         _stackTxt.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_.addChild(_stackTxt);
         this.addEventListener(MouseEvent.ROLL_OVER,overHandler);
         this.addEventListener(MouseEvent.ROLL_OUT,outHandler);
      }
      
      public function set stackNum(param1:Number) : void
      {
         if(_stackNum == param1)
         {
            return;
         }
         caculateAmount(param1);
      }
      
      private function showTooltip() : void
      {
         if(type != GamePredef.TBL_ITEM_TEMPLATE || !_core.data.hasData(type,_slotId))
         {
            return;
         }
         var _loc1_:Object = GameData.d[type][_slotId];
         var _loc2_:Object = {};
         _loc2_.slotType = _slotType;
         _loc2_.type = BasicToolTip.TYPE_TEMP;
         _loc2_.btnVisible = false;
         _loc2_.soulActived = false;
         _loc2_.inst = null;
         _loc2_.temp = ObjectUtil.copy(_loc1_);
         _toolTip = getToolTip();
         _toolTip.object = _loc2_;
         if(type == GamePredef.TBL_ITEM_TEMPLATE || type == GamePredef.TBL_EQUIPT_TEMPLATE)
         {
            _toolTip.currencyHide("temp");
         }
         _toolTip.show();
      }
      
      private function updateView() : void
      {
         if(!_slotId || !_core.data.hasData(type,_slotId))
         {
            this.clean();
            return;
         }
         var _loc1_:Object = GameData.d[type][_slotId];
         _image.source = _loc1_.iconCode ? ResManager.getIconUrl(_loc1_.iconCode) : null;
         ResManager.setColorCode(_image,_loc1_.colorCode);
         caculateAmount();
      }
      
      public function clean() : void
      {
         _stackNum = 0;
         _slotId = null;
         _stackTxt.text = "0";
         _image.source = null;
      }
      
      private function overHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.filters = [GamePredef.FILTER_SLOT_SELECTED];
         if(type > 0 && slotId > 0)
         {
            _tipTimer = setTimeout(showTooltip,SHOW_DELAY);
         }
      }
      
      private function outHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.filters = null;
         clearTimeout(_tipTimer);
         _toolTip && _toolTip.hide();
      }
      
      private function getToolTip() : Object
      {
         return _core.view.getUI(ViewManager.TOOLTIP_ITEM);
      }
      
      public function set slotId(param1:Number) : void
      {
         _slotId = param1;
         this.updateView();
      }
      
      protected function caculateAmount(param1:Number = -1) : void
      {
         _stackNum = param1 >= 0 ? param1 : Number(_core.getItemNumFromBag(type,slotId).num);
         if(_stackNum < 0)
         {
            _stackNum = 0;
         }
         var _loc2_:String = _stackNum > STACK_MAX ? STACK_MAX + "+" : String(_stackNum);
         _stackTxt.text = _loc2_;
      }
      
      public function get slotId() : Number
      {
         return _slotId;
      }
   }
}

