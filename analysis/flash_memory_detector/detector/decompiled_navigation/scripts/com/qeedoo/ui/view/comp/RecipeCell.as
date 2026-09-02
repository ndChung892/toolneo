package com.qeedoo.ui.view.comp
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.DressEvent;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.Application;
   import mx.core.DragSource;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.events.DragEvent;
   import mx.managers.DragManager;
   import mx.managers.PopUpManager;
   
   public class RecipeCell extends Canvas
   {
      
      private static const LENGTH:int = 34;
      
      private static const STACK_MAX:int = 9999;
      
      private var _iconImg:Image;
      
      private var _tooltip:TipRecipe;
      
      public var acceptable:Boolean;
      
      public var inPopUp:Boolean;
      
      private var _recipeId:Number;
      
      private var _stackTxt:TextField;
      
      private var _stackNum:Number;
      
      private var _core:Core = Core.getInstance();
      
      public function RecipeCell()
      {
         super();
         this.styleName = "TransparentSlot";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.width = this.height = LENGTH;
         _iconImg = new Image();
         _iconImg.setStyle("verticalCenter",0);
         _iconImg.setStyle("horizontalCenter",0);
         this.addChild(_iconImg);
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
         this.addEventListener(MouseEvent.CLICK,clickHandler);
         this.addEventListener(DragEvent.DRAG_ENTER,dragEnterHandler);
         this.addEventListener(DragEvent.DRAG_DROP,dragDropHandler);
      }
      
      private function dragDropHandler(param1:DragEvent) : void
      {
         if(!param1.dragSource.hasFormat("RecipeCell"))
         {
            return;
         }
         var _loc2_:RecipeCell = param1.dragSource.dataForFormat("RecipeCell") as RecipeCell;
         if(!_loc2_ || _loc2_ == this)
         {
            return;
         }
         var _loc3_:Number = _loc2_.recipeId;
         this.recipeId = _loc3_;
         this.dispatchEvent(new DressEvent(DressEvent.DRESS_DROP));
      }
      
      public function get recipeId() : Number
      {
         return _recipeId;
      }
      
      private function updateView() : void
      {
         if(!_recipeId)
         {
            this.clean();
            return;
         }
         var _loc1_:Object = GameData.d[GamePredef.TBL_RECIPE][_recipeId];
         if(!_loc1_)
         {
            this.clean();
            return;
         }
         _iconImg.source = ResManager.getIconUrl(_loc1_.iconCode);
         caculateAmount();
      }
      
      public function set recipeId(param1:Number) : void
      {
         _recipeId = param1;
         this.updateView();
      }
      
      private function overHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         filters = [GamePredef.FILTER_SLOT_SELECTED];
         showHideTooltip(false);
      }
      
      public function clean() : void
      {
         _stackNum = 0;
         _recipeId = null;
         _stackTxt.text = "";
         _iconImg.source = null;
      }
      
      private function outHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         filters = null;
         showHideTooltip(true);
      }
      
      private function showHideTooltip(param1:Boolean) : void
      {
         var _loc2_:UIBase = null;
         if(param1)
         {
            _tooltip && _tooltip.hide();
            if(inPopUp && Boolean(_tooltip))
            {
               PopUpManager.removePopUp(_tooltip);
               _tooltip.parent && _tooltip.parent.removeChild(_tooltip);
               _loc2_ = _core.view.getUI(ViewManager.UI_TOOLTIP) as UIBase;
               _loc2_.addChild(_tooltip);
            }
            _tooltip = null;
            return;
         }
         if(!_recipeId)
         {
            return;
         }
         _tooltip = _core.view.getUI(ViewManager.TOOLTIP_RECIPE) as TipRecipe;
         _tooltip.recipeId = _recipeId;
         _tooltip.show();
         if(inPopUp)
         {
            _tooltip.parent && _tooltip.parent.removeChild(_tooltip);
            PopUpManager.addPopUp(_tooltip,Application.application as DisplayObject);
         }
      }
      
      private function dragEnterHandler(param1:DragEvent) : void
      {
         acceptable && param1.dragSource.hasFormat("RecipeCell") && DragManager.acceptDragDrop(param1.currentTarget as IUIComponent);
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc3_:Image = null;
         param1.stopImmediatePropagation();
         if(!_recipeId)
         {
            return;
         }
         showHideTooltip(true);
         var _loc2_:DragSource = new DragSource();
         _loc2_.addData(this,"RecipeCell");
         _loc3_ = new Image();
         _loc3_.source = _iconImg.source;
         _loc3_.height = _iconImg.height;
         _loc3_.width = _iconImg.width;
         _loc3_.x = _iconImg.x;
         _loc3_.y = _iconImg.y;
         DragManager.doDrag(_iconImg,_loc2_,param1,_loc3_,0,0,0.5);
      }
      
      protected function caculateAmount() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         if(_stackNum)
         {
            if(_stackNum < 0)
            {
               _stackTxt.text = "";
               return;
            }
            _loc1_ = _stackNum > STACK_MAX ? STACK_MAX + "+" : String(_stackNum);
            _stackTxt.text = _loc1_;
            return;
         }
         if(_core.player.dressInfo)
         {
            _loc2_ = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            if(Boolean(_loc2_) && Boolean(_loc2_.recipe))
            {
               _loc3_ = _loc2_.recipe;
               if(_loc3_[_recipeId])
               {
                  _loc4_ = Number(_loc3_[_recipeId]);
                  _loc5_ = _loc4_ > STACK_MAX ? STACK_MAX + "+" : _loc3_[_recipeId];
                  _stackTxt.text = _loc5_;
                  return;
               }
            }
         }
         _stackTxt.text = "";
      }
      
      public function set stackNum(param1:Number) : void
      {
         if(_stackNum == param1)
         {
            return;
         }
         _stackNum = param1;
         caculateAmount();
      }
   }
}

