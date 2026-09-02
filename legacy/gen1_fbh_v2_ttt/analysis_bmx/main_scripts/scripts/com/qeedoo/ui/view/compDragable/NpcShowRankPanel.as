package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.DataGrid;
   import mx.controls.Menu;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NpcShowRankPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var coumnNameArr:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _2125211366dataGridRankList:DataGrid;
      
      private var _301114013rankItemList:ArrayCollection;
      
      mx_internal var _bindings:Array = [];
      
      public var rankDataList:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":460,
               "height":380,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "40";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"dataGridRankList",
                           "events":{"itemClick":"__dataGridRankList_itemClick"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "resizableColumns":false,
                                 "draggableColumns":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function NpcShowRankPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 460;
         this.height = 380;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NpcShowRankPanel._watcherSetupUtil = param1;
      }
      
      private function set rankItemList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._301114013rankItemList;
         if(_loc2_ !== param1)
         {
            this._301114013rankItemList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankItemList",_loc2_,param1));
         }
      }
      
      public function set dataGridRankList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2125211366dataGridRankList;
         if(_loc2_ !== param1)
         {
            this._2125211366dataGridRankList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGridRankList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NpcShowRankPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NpcShowRankPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NpcShowRankPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      private function dataGridItemClick() : void
      {
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO},{"label":GamePredef.MENU_ADDF},{"label":GamePredef.MENU_ADDB},{"label":GamePredef.MENU_COPY}]);
      }
      
      public function updateRankView(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         if(param1)
         {
            if(param1.title)
            {
               panelTitle.text = param1.title;
            }
            if(param1.format)
            {
               initRankFormat(param1.format);
            }
            rankItemList = new ArrayCollection();
            rankDataList = param1.list;
            for each(_loc2_ in rankDataList)
            {
               _loc3_ = new Object();
               for(_loc4_ in coumnNameArr)
               {
                  _loc3_[coumnNameArr[_loc4_]] = _loc2_["data" + _loc4_];
               }
               if(_loc2_.cid)
               {
                  _loc3_.cid = _loc2_.cid;
               }
               rankItemList.addItem(_loc3_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get rankItemList() : ArrayCollection
      {
         return this._301114013rankItemList;
      }
      
      private function _NpcShowRankPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NPC_SHOW_RANK_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return rankItemList;
         },function(param1:Object):void
         {
            dataGridRankList.dataProvider = param1;
         },"dataGridRankList.dataProvider");
         result[1] = binding;
         return result;
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      public function __dataGridRankList_itemClick(param1:ListEvent) : void
      {
         dataGridItemClick();
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:Core = Core.getInstance();
         var _loc3_:* = dataGridRankList.selectedItem;
         var _loc4_:String = "name";
         if(param1.index == 0)
         {
            _loc2_.view.getUI(ViewManager.MAIN_SYS).wisperChat(_loc3_[_loc4_]);
         }
         else if(param1.index == 1)
         {
            ChatPanelUtil.createChatPanel(_loc3_.cid);
         }
         else if(param1.index == 2)
         {
            _loc2_.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(_loc3_.cid);
         }
         else if(param1.index == 3)
         {
            _loc2_.addFriend(_loc3_[_loc4_]);
         }
         else if(param1.index == 4)
         {
            _loc2_.addBlack(_loc3_[_loc4_]);
         }
         else if(param1.index == 5)
         {
            System.setClipboard(_loc3_[_loc4_]);
         }
      }
      
      private function initRankFormat(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:DataGridColumn = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            if(param1[_loc3_])
            {
               _loc4_ = new DataGridColumn(param1[_loc3_].colName);
               _loc4_.headerText = param1[_loc3_].colName;
               _loc4_.dataField = param1[_loc3_].dataField;
               coumnNameArr[_loc3_] = param1[_loc3_].dataField;
               _loc2_.push(_loc4_);
            }
         }
         dataGridRankList.columns = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGridRankList() : DataGrid
      {
         return this._2125211366dataGridRankList;
      }
      
      private function _NpcShowRankPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NPC_SHOW_RANK_PANEL_U[0];
         _loc1_ = rankItemList;
      }
   }
}

