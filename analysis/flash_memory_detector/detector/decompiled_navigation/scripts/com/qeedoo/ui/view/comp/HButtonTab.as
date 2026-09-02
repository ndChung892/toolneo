package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.event.DressEvent;
   import flash.events.MouseEvent;
   import mx.containers.HBox;
   import mx.events.PropertyChangeEvent;
   
   public class HButtonTab extends HBox
   {
      
      private var _instanceArray:Array = [];
      
      private var _dataArray:Array = [];
      
      private var _filter:Array;
      
      private var _styleName:Object = "HorizontalTab";
      
      private var _tabWidth:Number = 60;
      
      private var _indexChanged:Boolean;
      
      private var _styleChanged:Boolean;
      
      private var _filterChanged:Boolean;
      
      private var _dataChanged:Boolean;
      
      private var _tabHeight:Number = 20;
      
      private var _tabHeightChange:Boolean;
      
      private var _tabWidthChange:Boolean;
      
      private var _selectedIndex:int = 0;
      
      public function HButtonTab()
      {
         super();
         this.setStyle("horizontalGap",0);
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:FilterButton = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:FilterButton = null;
         super.commitProperties();
         if(_dataChanged)
         {
            _loc1_ = 0;
            if(Boolean(_dataArray) && _dataArray.length > 0)
            {
               _loc1_ = int(_dataArray.length);
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  _loc3_ = _dataArray[_loc2_];
                  _instanceArray[_loc2_] = _instanceArray[_loc2_] || new FilterButton();
                  _instanceArray[_loc2_].name = _loc2_;
                  _instanceArray[_loc2_].width = _tabWidth;
                  _instanceArray[_loc2_].height = _tabHeight;
                  _instanceArray[_loc2_].label = _dataArray[_loc2_];
                  _instanceArray[_loc2_].styleName = _styleName;
                  _instanceArray[_loc2_].selected = _loc2_ == _selectedIndex;
                  !_instanceArray[_loc2_].parent && this.addChild(_instanceArray[_loc2_]);
                  _instanceArray[_loc2_].addEventListener(MouseEvent.CLICK,changeHandler);
                  _loc2_++;
               }
            }
            if(Boolean(_instanceArray) && _instanceArray.length > _loc1_)
            {
               _loc4_ = int(_instanceArray.length);
               _loc5_ = _loc1_;
               while(_loc5_ < _loc4_)
               {
                  _loc6_ = _instanceArray[_loc5_] as FilterButton;
                  if(_loc6_)
                  {
                     _loc6_.removeEventListener(MouseEvent.CLICK,changeHandler);
                     _loc6_.parent && _loc6_.parent.removeChild(_loc6_);
                     _loc6_ = null;
                  }
                  _loc5_++;
               }
               _instanceArray.length = _loc1_;
            }
            illegalInspection();
         }
         if(!_instanceArray || _instanceArray.length <= 0)
         {
            return;
         }
         _indexChanged && illegalInspection();
         if(_styleChanged || _indexChanged || _filterChanged || _tabWidthChange || _tabHeightChange)
         {
            _loc7_ = int(_instanceArray.length);
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc9_ = _instanceArray[_loc8_] as FilterButton;
               if(_loc9_)
               {
                  if(_indexChanged)
                  {
                     _loc9_.selected = _loc8_ == _selectedIndex;
                  }
                  if(_styleChanged)
                  {
                     _loc9_.styleName = _styleName;
                  }
                  if(_filterChanged)
                  {
                     _loc9_.filters = _filter;
                  }
                  if(_tabWidthChange)
                  {
                     _loc9_.width = _tabWidth;
                  }
                  if(_tabHeightChange)
                  {
                     _loc9_.height = _tabHeight;
                  }
               }
               _loc8_++;
            }
            _indexChanged = false;
            _styleChanged = false;
            _filterChanged = false;
            _tabWidthChange = false;
            _tabHeightChange = false;
         }
      }
      
      private function changeHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:FilterButton = param1.currentTarget as FilterButton;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:int = int(_loc2_.name);
         this.selectedIndex = _loc3_;
      }
      
      private function illegalInspection() : void
      {
         var _loc1_:int = _dataArray ? int(_dataArray.length) : 0;
         if(_selectedIndex > _loc1_)
         {
            this.selectedIndex = 0;
         }
      }
      
      private function set _1436069623selectedIndex(param1:int) : void
      {
         if(_selectedIndex == param1)
         {
            return;
         }
         _selectedIndex = param1;
         _indexChanged = true;
         invalidateProperties();
         if(this.willTrigger(DressEvent.TAB_CHANGED))
         {
            this.dispatchEvent(new DressEvent(DressEvent.TAB_CHANGED));
         }
      }
      
      public function set dataArray(param1:Array) : void
      {
         if(_dataArray == param1)
         {
            return;
         }
         _dataArray = param1;
         _dataChanged = true;
      }
      
      override public function get styleName() : Object
      {
         return _styleName;
      }
      
      public function set tabHeight(param1:Number) : void
      {
         if(_tabHeight == param1)
         {
            return;
         }
         _tabHeight = param1;
         _tabHeightChange = true;
      }
      
      public function set tabWidth(param1:Number) : void
      {
         if(_tabWidth == param1)
         {
            return;
         }
         _tabWidth = param1;
         _tabWidthChange = true;
      }
      
      [Bindable(event="propertyChange")]
      public function set selectedIndex(param1:int) : void
      {
         var _loc2_:Object = this.selectedIndex;
         if(_loc2_ !== param1)
         {
            this._1436069623selectedIndex = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedIndex",_loc2_,param1));
         }
      }
      
      override public function set filters(param1:Array) : void
      {
         if(_filter == param1)
         {
            return;
         }
         _filter = param1;
         _filterChanged = true;
      }
      
      public function get selectedIndex() : int
      {
         return _selectedIndex;
      }
      
      override public function get filters() : Array
      {
         return _filter;
      }
      
      override public function set styleName(param1:Object) : void
      {
         if(_styleName == param1)
         {
            return;
         }
         _styleName = param1;
         _styleChanged = true;
         invalidateProperties();
      }
   }
}

