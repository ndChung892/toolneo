package com.qeedoo.game.ui
{
   import mx.core.IUIComponent;
   
   public interface IGameUI extends IUIComponent
   {
      
      function update() : void;
      
      function hide() : void;
      
      function show() : void;
      
      function initView() : void;
   }
}

