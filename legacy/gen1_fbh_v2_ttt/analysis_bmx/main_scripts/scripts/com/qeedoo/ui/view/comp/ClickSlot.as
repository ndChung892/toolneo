package com.qeedoo.ui.view.comp
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import mx.events.DragEvent;
   import style.Assets;
   
   public class ClickSlot extends Slot
   {
      
      private var _selectImg:Sprite;
      
      public var clickCall:Function;
      
      public function ClickSlot()
      {
         super();
         this.movable = false;
         this.acceptable = false;
         this.styleName = "TransparentSlot";
         _selectImg = new Assets.SELECTED_IMG() as Sprite;
         _selectImg.visible = false;
         _selectImg.x = this.width - _selectImg.width >> 1;
         _selectImg.y = this.height - _selectImg.height >> 1;
         this.addToContainer(_selectImg);
      }
      
      override public function clean() : void
      {
         super.clean();
         _selectImg.visible = false;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         _selectImg.visible = param1;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
      }
      
      override protected function onClick(param1:MouseEvent) : void
      {
         this.hideTooltip();
         if(!this.slotData)
         {
            return;
         }
         _selectImg.visible = !_selectImg.visible;
         clickCall && clickCall(this);
      }
      
      public function fakeClick() : void
      {
         onClick(null);
      }
      
      override public function get selected() : Boolean
      {
         return _selectImg.visible;
      }
   }
}

