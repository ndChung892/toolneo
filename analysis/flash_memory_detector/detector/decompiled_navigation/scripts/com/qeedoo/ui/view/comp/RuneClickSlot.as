package com.qeedoo.ui.view.comp
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import mx.events.DragEvent;
   import style.Assets;
   
   public class RuneClickSlot extends RuneSlot
   {
      
      public var isSelected:Boolean;
      
      public var clickCall:Function;
      
      public var selectImg:Sprite;
      
      public function RuneClickSlot()
      {
         super();
         this.styleName = "SoulSlotOpen";
         this.width = 63;
         this.height = 63;
         selectImg = new Assets.SELECTED_IMG_CIRCLE() as Sprite;
         selectImg.visible = false;
         isSelected = false;
         this.movable = false;
         this.acceptable = false;
         this.addToContainer(selectImg);
         this.resetRuneSlotIconSize();
         this.setRuneNumText();
      }
      
      override protected function onClick(param1:MouseEvent) : void
      {
         this.hideTooltip();
         if(!this.slotData)
         {
            return;
         }
         selectImg.visible = !selectImg.visible;
         isSelected = !isSelected;
         clickCall && clickCall(this);
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
      }
   }
}

