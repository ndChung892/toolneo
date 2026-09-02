package
{
   import com.qeedoo.ui.view.comp.MenuSkin;
   import mx.core.IBorder;
   import mx.core.IFlexAsset;
   import mx.core.IFlexDisplayObject;
   import mx.utils.NameUtil;
   
   public class MMO_Game_Main_O91a__embed_css__83754981 extends MenuSkin implements IBorder, IFlexAsset, IFlexDisplayObject
   {
      
      private var _measuredHeight:Number;
      
      private var _measuredWidth:Number;
      
      public function MMO_Game_Main_O91a__embed_css__83754981()
      {
         super();
         try
         {
            name = NameUtil.createUniqueName(this);
         }
         catch(e:Error)
         {
         }
         _measuredWidth = width;
         _measuredHeight = height;
      }
      
      override public function toString() : String
      {
         return NameUtil.displayObjectToString(this);
      }
      
      public function get measuredWidth() : Number
      {
         return _measuredWidth;
      }
      
      public function get measuredHeight() : Number
      {
         return _measuredHeight;
      }
      
      public function setActualSize(param1:Number, param2:Number) : void
      {
         if(width != param1)
         {
            width = param1;
         }
         if(height != param2)
         {
            height = param2;
         }
      }
      
      public function move(param1:Number, param2:Number) : void
      {
         this.x = param1;
         this.y = param2;
      }
   }
}

