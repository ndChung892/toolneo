package com.qeedoo.ui.view.compDragable
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.controls.Button;
   
   public class FarmMasterCube extends Button
   {
      
      public var clickFunc:Function;
      
      private var _rowIndex:uint;
      
      private var _type:int;
      
      private var _columnIndex:uint;
      
      public function FarmMasterCube()
      {
         super();
         this.width = 50;
         this.height = 50;
         this.addEventListener("click",___FarmMasterCube_Button1_click);
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set columnIndex(param1:uint) : void
      {
         _columnIndex = param1;
      }
      
      public function clickCall(param1:Event) : void
      {
         clickFunc && clickFunc(param1);
      }
      
      public function get rowIndex() : uint
      {
         return _rowIndex;
      }
      
      public function set rowIndex(param1:uint) : void
      {
         _rowIndex = param1;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
         switch(_type)
         {
            case 0:
               styleName = "farmMaster";
               break;
            case 1:
               styleName = "openedLandMaster";
               break;
            case 2:
               styleName = "rockLandMaster";
               break;
            case 3:
               styleName = "canOpenUpMaster";
         }
      }
      
      public function ___FarmMasterCube_Button1_click(param1:MouseEvent) : void
      {
         clickCall(param1);
      }
      
      public function get columnIndex() : uint
      {
         return _columnIndex;
      }
   }
}

