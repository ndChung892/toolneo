package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.utils.ToolKit;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.controls.dataGridClasses.DataGridHeader;
   import mx.core.EventPriority;
   import mx.core.mx_internal;
   import mx.events.DataGridEvent;
   
   use namespace mx_internal;
   
   public class PageableDataGrid extends DataGrid
   {
      
      private var manualSort:Boolean;
      
      private var _pageSelector:PageSelector;
      
      private var sortColumn:DataGridColumn;
      
      private var _dataAll:ArrayCollection;
      
      public function PageableDataGrid()
      {
         super();
         addEventListener(DataGridEvent.HEADER_RELEASE,myHeaderReleaseHandler,false,EventPriority.DEFAULT);
      }
      
      private function myHeaderReleaseHandler(param1:DataGridEvent) : void
      {
         if(!param1.isDefaultPrevented())
         {
            manualSort = true;
            sortByColumn(param1.columnIndex);
            manualSort = false;
         }
      }
      
      private function sortByColumn(param1:int) : void
      {
         var _loc4_:Sort = null;
         var _loc5_:SortField = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc2_:DataGridColumn = columns[param1];
         var _loc3_:Boolean = _loc2_.sortDescending;
         if(_loc2_.sortable)
         {
            _loc4_ = collection.sort;
            if(_loc4_)
            {
               _loc4_.compareFunction = null;
               _loc7_ = _loc4_.fields;
               if(_loc7_)
               {
                  _loc8_ = 0;
                  while(_loc8_ < _loc7_.length)
                  {
                     if(_loc7_[_loc8_].name == _loc2_.dataField)
                     {
                        _loc5_ = _loc7_[_loc8_];
                        _loc3_ = !_loc5_.descending;
                        break;
                     }
                     _loc8_++;
                  }
               }
            }
            else
            {
               _loc4_ = new Sort();
            }
            if(!_loc5_)
            {
               _loc5_ = new SortField(_loc2_.dataField);
            }
            _loc2_.sortDescending = _loc3_;
            _loc6_ = _loc3_ ? "DESC" : "ASC";
            sortDirection = _loc6_;
            lastSortIndex = sortIndex;
            sortIndex = param1;
            sortColumn = _loc2_;
            _loc5_.name = _loc2_.dataField;
            if(_loc2_.sortCompareFunction != null)
            {
               _loc5_.compareFunction = _loc2_.sortCompareFunction;
            }
            else
            {
               _loc5_.compareFunction = null;
            }
            _loc5_.descending = _loc3_;
            _loc4_.fields = [_loc5_];
         }
         dataAll.sort = _loc4_;
         dataAll.refresh();
         if(pageSelector)
         {
            dataProvider = ToolKit.getPageCollection(dataAll,0,pageSelector.pageSize);
            pageSelector.currentPage = 0;
         }
      }
      
      public function set dataAll(param1:ArrayCollection) : void
      {
         _dataAll = param1;
      }
      
      public function get pageSelector() : PageSelector
      {
         return _pageSelector;
      }
      
      public function get dataAll() : ArrayCollection
      {
         return _dataAll || new ArrayCollection();
      }
      
      override protected function placeSortArrow() : void
      {
         DataGridHeader(header)._placeSortArrow();
         if(lockedColumnHeader)
         {
            DataGridHeader(lockedColumnHeader)._placeSortArrow();
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         _pageSelector = param1;
      }
   }
}

