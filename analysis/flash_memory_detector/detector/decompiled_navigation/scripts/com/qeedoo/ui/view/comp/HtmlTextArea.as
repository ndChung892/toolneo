package com.qeedoo.ui.view.comp
{
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFormat;
   import mx.controls.TextArea;
   
   public class HtmlTextArea extends TextArea
   {
      
      public function HtmlTextArea()
      {
         super();
         this.addEventListener("click",___HtmlTextArea_TextArea1_click);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function searchLink(param1:int) : void
      {
         var _loc2_:TextFormat = textField.getTextFormat(param1,param1 + 1);
         if(Boolean(_loc2_) && Boolean(_loc2_.url))
         {
            param1 = _loc2_.url.indexOf("http://");
            if(param1 >= 0)
            {
               navigateToURL(new URLRequest(_loc2_.url),"blank");
               return;
            }
         }
      }
      
      private function checkLink(param1:MouseEvent) : void
      {
         var _loc2_:Point = textField.globalToLocal(new Point(param1.stageX,param1.stageY));
         var _loc3_:int = textField.getCharIndexAtPoint(_loc2_.x,_loc2_.y);
         if(_loc3_ > 0)
         {
            searchLink(_loc3_);
         }
      }
      
      public function ___HtmlTextArea_TextArea1_click(param1:MouseEvent) : void
      {
         checkLink(param1);
      }
   }
}

