package com.qeedoo.ui.view.comp
{
   import mx.controls.Label;
   
   public class CustomColumn extends Label
   {
      
      public function CustomColumn()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 != null)
         {
            super.data = param1;
            if(data.cid == data.leaderId)
            {
               setStyle("color",6356736);
            }
            else
            {
               setStyle("color",16777215);
            }
         }
      }
   }
}

