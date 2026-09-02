package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import mx.controls.Image;
   
   public class PRSTreeButton extends Image
   {
      
      private var _core:Core = Core.getInstance();
      
      private var _treeId:Number = 0;
      
      public var actived:Boolean = false;
      
      public function PRSTreeButton()
      {
         super();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set treeId(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:uint = 0;
         _treeId = param1;
         if(_treeId)
         {
            _loc2_ = GameData.d[GamePredef.TBL_PRS_TREE][_treeId];
            _loc3_ = "";
            _loc3_ += Language.PRS_PANEL[21];
            if(actived)
            {
               _loc3_ += "\n" + "<font color=\'#00FF00\'>" + Language.PRS_PANEL[22] + "</font>";
            }
            else
            {
               _loc3_ += "\n" + "<font color=\'#FF0000\'>" + Language.PRS_PANEL[23] + "</font>";
            }
            _loc4_ = 1;
            while(_loc4_ <= 8)
            {
               if(Number(_loc2_["pT" + _loc4_]))
               {
                  if(Number(_loc2_["pT" + _loc4_]) == 59 || Number(_loc2_["pT" + _loc4_]) == 60 || Number(_loc2_["pT" + _loc4_]) == 62 || Number(_loc2_["pT" + _loc4_]) == 63)
                  {
                     _loc3_ += "\n" + Language.PRS_PROP_TIP[Number(_loc2_["pT" + _loc4_])] + Number(_loc2_["pN" + _loc4_]) / 100 + "%";
                  }
                  else if(Number(_loc2_["pT" + _loc4_]) == 1 || Number(_loc2_["pT" + _loc4_]) == 4 || Number(_loc2_["pT" + _loc4_]) == 5 || Number(_loc2_["pT" + _loc4_]) == 6 || Number(_loc2_["pT" + _loc4_]) == 7 || Number(_loc2_["pT" + _loc4_]) == 11)
                  {
                     _loc3_ += "\n" + Language.PRS_PROP_TIP[Number(_loc2_["pT" + _loc4_])] + Number(_loc2_["pN" + _loc4_]);
                  }
                  else
                  {
                     _loc3_ += "\n" + Language.PRS_PROP_TIP[Number(_loc2_["pT" + _loc4_])] + Number(_loc2_["pN" + _loc4_]) / 100;
                  }
               }
               _loc4_++;
            }
            this.toolTip = _loc3_;
         }
      }
   }
}

