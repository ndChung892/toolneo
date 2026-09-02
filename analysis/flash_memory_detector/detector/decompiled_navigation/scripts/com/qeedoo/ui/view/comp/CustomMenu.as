package com.qeedoo.ui.view.comp
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import mx.controls.Label;
   import mx.controls.Menu;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.Application;
   
   public class CustomMenu extends Menu
   {
      
      public static var alpha:Number = 0.9;
      
      private var preLabel:Label;
      
      private var glowFilter:GlowFilter;
      
      public function CustomMenu()
      {
         super();
      }
      
      public static function createMenu(param1:DisplayObjectContainer, param2:Object, param3:Boolean = true) : Menu
      {
         var _loc4_:CustomMenu = new CustomMenu();
         _loc4_.tabEnabled = false;
         _loc4_.owner = DisplayObjectContainer(Application.application);
         _loc4_.showRoot = param3;
         Menu.popUpMenu(_loc4_,param1,param2);
         return _loc4_;
      }
      
      override protected function drawHighlightIndicator(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint, param7:IListItemRenderer) : void
      {
         var _loc8_:Number = 7177882;
         var _loc9_:Number = 1520453;
         var _loc10_:Number = 1;
         var _loc11_:Graphics = Sprite(param1).graphics;
         _loc11_.clear();
         _loc11_.beginFill(_loc8_,alpha);
         _loc11_.drawRect(0 - _loc10_,0,param4 + _loc10_,param5);
         _loc11_.endFill();
         _loc11_.beginFill(_loc9_,alpha);
         _loc11_.drawRect(1 - _loc10_,1,param4 + _loc10_ - 2,param5 - 2);
         _loc11_.endFill();
         param1.x = param2;
         param1.y = param3;
      }
   }
}

