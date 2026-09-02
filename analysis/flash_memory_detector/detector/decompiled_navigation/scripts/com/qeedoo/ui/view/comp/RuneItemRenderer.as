package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import mx.controls.Label;
   import mx.controls.treeClasses.TreeItemRenderer;
   
   public class RuneItemRenderer extends TreeItemRenderer
   {
      
      private var _labelNum:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function RuneItemRenderer()
      {
         super();
         _labelNum = new Label();
         _labelNum.setStyle("color",65280);
         _labelNum.setStyle("fontSize",12);
         this.addChild(_labelNum);
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.commitProperties();
         if(!data)
         {
            label.htmlText = "";
         }
         else if(!data.hasOwnProperty("id") && data.hasOwnProperty("kind"))
         {
            _loc1_ = int(data["kind"]);
            _loc2_ = Language.DECORATE_PANEL[21][_loc1_ - 1];
            _loc3_ = Number(data["kindNum"]);
            if(_loc3_)
            {
               label.htmlText = _loc2_ + "<font color=\'#00FF00\'>" + "    (" + _loc3_ + ")</font>";
            }
            else
            {
               label.htmlText = _loc2_;
            }
         }
         else if(!data.hasOwnProperty("id") && data.hasOwnProperty("quality"))
         {
            _loc4_ = int(data["quality"]);
            _loc2_ = Language.DECORATE_PANEL[60][_loc4_ - 1];
            _loc5_ = Number(data["qualityNum"]);
            if(_loc5_)
            {
               label.htmlText = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc4_ - 1] + "\'>" + _loc2_ + "<font color=\'#00FF00\'>" + "    (" + _loc5_ + ")</font>";
            }
            else
            {
               label.htmlText = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc4_ - 1] + "\'>" + _loc2_ + "</font>";
            }
         }
         else if(data.hasOwnProperty("id"))
         {
            _loc4_ = int(data["qulity"]);
            _loc6_ = Number(data["itemNum"]);
            if(_loc6_)
            {
               label.htmlText = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc4_ - 1] + "\'>" + data.name + "<font color=\'#00FF00\'>" + "    (" + _loc6_ + ")</font>";
            }
            else
            {
               label.htmlText = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc4_ - 1] + "\'>" + data.name + "</font>";
            }
         }
      }
   }
}

