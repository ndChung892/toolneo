package com.qeedoo.ui.view.comp
{
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.ui.Keyboard;
   import mx.collections.ICollectionView;
   import mx.controls.ComboBox;
   import mx.core.UIComponent;
   
   public class AutoComplete extends ComboBox
   {
      
      private var isfocusInDropDown:Boolean = false;
      
      private var isBackSpaceKeyDown:Boolean = false;
      
      private var isAutoComplete:Boolean = false;
      
      private var isTextBoxStringChange:Boolean = false;
      
      private var _filterFunction:Function;
      
      public function AutoComplete()
      {
         _filterFunction = myFilterFunction;
         super();
         init();
      }
      
      override protected function collectionChangeHandler(param1:Event) : void
      {
         super.collectionChangeHandler(param1);
         if(dataProvider.length > 0)
         {
         }
      }
      
      public function set IsAutoComplete(param1:Boolean) : void
      {
         isAutoComplete = param1;
      }
      
      public function set IsfocusInDropDown(param1:Boolean) : void
      {
         isfocusInDropDown = param1;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         if(isTextBoxStringChange)
         {
            prompt = text;
            filter();
            if(isAutoComplete && !isBackSpaceKeyDown)
            {
               _loc1_ = "";
               if(dataProvider.length > 0)
               {
                  _loc1_ = itemToLabel(dataProvider[0]);
                  textInput.setSelection(prompt.length,_loc1_.length);
                  prompt = _loc1_;
               }
               else
               {
                  textInput.setSelection(textInput.selectionEndIndex,textInput.selectionEndIndex);
               }
            }
            else
            {
               textInput.setSelection(textInput.selectionEndIndex,textInput.selectionEndIndex);
            }
         }
         super.commitProperties();
         isTextBoxStringChange = false;
      }
      
      private function init() : *
      {
         editable = true;
         rowCount = 5;
         selectedIndex = -1;
         isTextBoxStringChange = false;
         isfocusInDropDown = false;
         isAutoComplete = false;
         setStyle("cornerRadius",0);
         setStyle("arrowButtonWidth",0);
         setStyle("fontWeight","normal");
         setStyle("paddingLeft",0);
      }
      
      public function get FilterFunction() : Function
      {
         return _filterFunction;
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredWidth = UIComponent.DEFAULT_MEASURED_WIDTH;
      }
      
      override protected function textInput_changeHandler(param1:Event) : void
      {
         if(textInput.text == prompt)
         {
            isTextBoxStringChange = false;
         }
         else
         {
            isTextBoxStringChange = true;
         }
         super.textInput_changeHandler(param1);
         invalidateProperties();
         var _loc2_:TextEvent = new TextEvent("TextChange");
         _loc2_.text = param1.target.text;
         dispatchEvent(_loc2_);
      }
      
      public function set FilterFunction(param1:Function) : void
      {
         _filterFunction = param1;
      }
      
      public function get IsfocusInDropDown() : Boolean
      {
         return isfocusInDropDown;
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(!param1.ctrlKey && !param1.shiftKey)
         {
            if(param1.keyCode == Keyboard.BACKSPACE)
            {
               close();
               isBackSpaceKeyDown = true;
            }
            else if(param1.keyCode == Keyboard.ENTER)
            {
               setSelectItem(param1.target.text);
            }
            else
            {
               isBackSpaceKeyDown = false;
            }
            if(param1.keyCode == Keyboard.UP && selectedIndex == 0)
            {
               selectedIndex = -1;
            }
         }
         super.keyDownHandler(param1);
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         if(isfocusInDropDown && parent.visible)
         {
            open();
         }
         super.focusInHandler(param1);
      }
      
      private function setSelectItem(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:KeyboardEvent = null;
         for each(_loc2_ in dataProvider)
         {
            if(param1 == _loc2_.name)
            {
               selectedItem = _loc2_;
               _loc3_ = new KeyboardEvent("EnterKey");
               dispatchEvent(_loc3_);
            }
         }
      }
      
      public function get IsAutoComplete() : Boolean
      {
         return isAutoComplete;
      }
      
      private function filter() : void
      {
         var _loc1_:ICollectionView = dataProvider as ICollectionView;
         _loc1_.filterFunction = _filterFunction;
         _loc1_.refresh();
         if(parent.visible)
         {
            open();
         }
      }
      
      private function myFilterFunction(param1:Object) : Boolean
      {
         var _loc2_:String = itemToLabel(param1);
         var _loc3_:String = _loc2_.toLowerCase();
         var _loc4_:String = prompt.toLowerCase();
         if(_loc3_.indexOf(_loc4_) >= 0)
         {
            return true;
         }
         return false;
      }
   }
}

