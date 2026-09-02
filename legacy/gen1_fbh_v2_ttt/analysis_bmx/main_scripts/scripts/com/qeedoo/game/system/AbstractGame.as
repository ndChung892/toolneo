package com.qeedoo.game.system
{
   public class AbstractGame
   {
      
      public function AbstractGame()
      {
         super();
      }
      
      protected function createUI() : void
      {
         throw new Error("Abstract Function");
      }
      
      protected function createStage() : void
      {
         throw new Error("Abstract Function");
      }
      
      final public function initGame() : void
      {
         createCore();
         createStage();
         createUI();
         loadConfig();
      }
      
      protected function createCore() : void
      {
         throw new Error("Abstract Function");
      }
      
      protected function loadConfig() : void
      {
         throw new Error("Abstract Function");
      }
   }
}

