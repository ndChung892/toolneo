package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.event.DressEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import mx.controls.Tree;
   import mx.controls.listClasses.IListItemRenderer;
   
   public class GeneralTree extends Tree
   {
      
      private var _selectAfterUpdate:Boolean;
      
      protected var _selectItem:Object;
      
      public var selectFirstLeaf:Boolean = true;
      
      private var _leafIndex:int = 0;
      
      private var _dataProviderChanged:Boolean;
      
      public function GeneralTree()
      {
         super();
      }
      
      override protected function mouseDownHandler(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc2_:IListItemRenderer = mouseEventToItemRenderer(param1);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:Object = _loc2_.data;
         if(dataDescriptor.isBranch(_loc3_))
         {
            _loc4_ = isItemOpen(_loc3_);
            expandItem(_loc3_,!_loc4_);
            return;
         }
         super.mouseDownHandler(param1);
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
      }
      
      override public function set selectedItem(param1:Object) : void
      {
         super.selectedItem = param1;
         _selectItem = this.selectedItem;
         this.dispatchEvent(new DressEvent(DressEvent.TREE_SELECTED));
      }
      
      override public function expandItem(param1:Object, param2:Boolean, param3:Boolean = false, param4:Boolean = false, param5:Event = null) : void
      {
         var _loc7_:Object = null;
         var _loc6_:Object = this.openItems;
         for each(_loc7_ in _loc6_)
         {
            if(itemToUID(_loc7_) != itemToUID(param1))
            {
               super.expandItem(_loc7_,false);
            }
         }
         super.expandItem(param1,param2,false,param4,param5);
      }
      
      override protected function selectItem(param1:IListItemRenderer, param2:Boolean, param3:Boolean, param4:Boolean = true) : Boolean
      {
         if(dataDescriptor.isBranch(param1.data))
         {
            return false;
         }
         param3 = false;
         var _loc5_:Boolean = super.selectItem(param1,param2,param3,param4);
         _selectItem = this.selectedItem;
         _loc5_ && this.dispatchEvent(new DressEvent(DressEvent.TREE_SELECTED));
         return _loc5_;
      }
      
      override public function expandChildrenOf(param1:Object, param2:Boolean) : void
      {
         var _loc4_:Object = null;
         var _loc3_:Object = this.openItems;
         for each(_loc4_ in _loc3_)
         {
            if(itemToUID(_loc4_) != itemToUID(param1))
            {
               super.expandChildrenOf(_loc4_,false);
            }
         }
         super.expandChildrenOf(param1,param2);
      }
      
      override public function set dataProvider(param1:Object) : void
      {
         _dataProviderChanged = true;
         super.dataProvider = param1;
         selectFirstLeaf && showFirstLeaf();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:IListItemRenderer = null;
         super.updateDisplayList(param1,param2);
         if(_selectAfterUpdate)
         {
            showFirstLeaf();
            return;
         }
         _leafIndex = 0;
         if(_selectItem)
         {
            _loc3_ = itemToItemRenderer(_selectItem);
            if(Boolean(_loc3_) && _loc3_ != itemToItemRenderer(selectedItem))
            {
               selectItem(_loc3_,false,false);
            }
         }
      }
      
      protected function showFirstLeaf() : void
      {
         _selectAfterUpdate = false;
         if(_dataProviderChanged)
         {
            _selectAfterUpdate = true;
            return;
         }
         var _loc1_:IListItemRenderer = indexToItemRenderer(_leafIndex);
         if(_loc1_ == null)
         {
            _selectAfterUpdate = true;
            return;
         }
         if(dataDescriptor.isBranch(_loc1_.data))
         {
            ++_leafIndex;
            _selectAfterUpdate = true;
            this.openItems = [_loc1_.data];
            return;
         }
         var _loc2_:Boolean = selectItem(_loc1_,false,false);
         _selectAfterUpdate = !_loc2_;
         if(!_selectAfterUpdate)
         {
            _leafIndex = 0;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         _dataProviderChanged = false;
      }
   }
}

