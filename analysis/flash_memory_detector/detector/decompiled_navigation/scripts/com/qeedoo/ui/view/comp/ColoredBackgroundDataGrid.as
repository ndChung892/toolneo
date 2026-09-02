package com.qeedoo.ui.view.comp
{
   import flash.display.Shape;
   import flash.display.Sprite;
   import mx.collections.ArrayCollection;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   
   public class ColoredBackgroundDataGrid extends DataGrid
   {
      
      public var rowColorFunction:Function;
      
      public var columnBackgroundAlpha:Number = 1;
      
      public var columnBackgroundFunction:Function;
      
      public function ColoredBackgroundDataGrid()
      {
         super();
      }
      
      override protected function drawRowBackground(param1:Sprite, param2:int, param3:Number, param4:Number, param5:uint, param6:int) : void
      {
         var _loc7_:ArrayCollection = null;
         var _loc8_:Object = null;
         if(rowColorFunction != null && dataProvider != null)
         {
            _loc7_ = dataProvider as ArrayCollection;
            if(param6 < _loc7_.length)
            {
               _loc8_ = _loc7_.getItemAt(param6);
            }
            param5 = rowColorFunction(_loc8_,param2,param6,param5);
         }
         super.drawRowBackground(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function drawColumnBackground(param1:Sprite, param2:int, param3:uint, param4:DataGridColumn) : void
      {
         var _loc6_:Shape = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super.drawColumnBackground(param1,param2,param3,param4);
         var _loc5_:Shape = Shape(param1.getChildByName(param2.toString()));
         if(_loc5_)
         {
            _loc5_.alpha = columnBackgroundAlpha;
         }
         if(columnBackgroundFunction != null)
         {
            _loc6_ = Shape(param1.getChildByName("lines" + param2.toString()));
            if(_loc6_ == null)
            {
               _loc6_ = new Shape();
               _loc6_.name = "lines" + param2;
               param1.addChild(_loc6_);
            }
            _loc7_ = rowInfo[listItems.length - 1];
            _loc8_ = Number(listItems[0][param2].x);
            _loc9_ = Number(rowInfo[0].y);
            _loc10_ = Number(listItems[0][param2].width);
            if(this.headerHeight > 0)
            {
               _loc9_ += rowInfo[0].height;
            }
            _loc11_ = Math.min(_loc7_.y + _loc7_.height,listContent.height - _loc9_);
            columnBackgroundFunction(param4,param2,_loc6_,_loc8_,_loc9_,_loc10_,_loc11_);
         }
      }
   }
}

