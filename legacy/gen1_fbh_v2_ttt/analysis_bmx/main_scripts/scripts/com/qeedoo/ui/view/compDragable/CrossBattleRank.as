package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PageableDataGrid;
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
   import mx.controls.Menu;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossBattleRank extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _pageSize:Number = 10;
      
      public var _CrossBattleRank_DataGridColumn1:DataGridColumn;
      
      public var _CrossBattleRank_DataGridColumn2:DataGridColumn;
      
      public var _CrossBattleRank_DataGridColumn3:DataGridColumn;
      
      public var _CrossBattleRank_DataGridColumn4:DataGridColumn;
      
      public var _CrossBattleRank_DataGridColumn5:DataGridColumn;
      
      public var forUpdateArr:Array = [];
      
      private var _updateReady:Boolean = false;
      
      private var _rankListAC:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      private var _858962330pageCtrl:PageSelector;
      
      private var _763223204rankCanvas:Canvas;
      
      private var _255677842rankGrid:PageableDataGrid;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _allowUpdateRecord:Boolean = false;
      
      mx_internal var _bindings:Array = [];
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"rankCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "width":390,
                        "height":263,
                        "x":5,
                        "y":32,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":PageableDataGrid,
                           "id":"rankGrid",
                           "events":{"itemClick":"__rankGrid_itemClick"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "sortableColumns":false,
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "width":370,
                                 "height":200,
                                 "columns":[_CrossBattleRank_DataGridColumn1_i(),_CrossBattleRank_DataGridColumn2_i(),_CrossBattleRank_DataGridColumn3_i(),_CrossBattleRank_DataGridColumn4_i(),_CrossBattleRank_DataGridColumn5_i()]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageCtrl",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "onPageChanged":pageRefresh,
                                 "x":122,
                                 "y":237
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function CrossBattleRank()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 300;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossBattleRank_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossBattleRank._watcherSetupUtil = param1;
      }
      
      private function showMenu(param1:ListEvent) : void
      {
         var _loc2_:Object = param1.itemRenderer.data;
         var _loc3_:Number = Number(_loc2_.cid);
         var _loc4_:String = _loc2_.name;
         var _loc5_:Array = [{
            "label":GamePredef.MENU_INFO,
            "cid":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_P2PWISPER,
            "cid":_loc3_,
            "name":_loc4_
         },{
            "label":GamePredef.MENU_ASSASI,
            "cid":_loc3_,
            "name":_loc4_
         }];
         var _loc6_:Menu = CustomMenu.createMenu(null,_loc5_);
         _loc6_.show(stage.mouseX + 25,stage.mouseY > 390 ? 390 : stage.mouseY);
         _loc6_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      private function _CrossBattleRank_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossBattleRank_DataGridColumn4 = _loc1_;
         _loc1_.width = 86;
         _loc1_.dataField = "total";
         BindingManager.executeBindings(this,"_CrossBattleRank_DataGridColumn4",_CrossBattleRank_DataGridColumn4);
         return _loc1_;
      }
      
      private function _CrossBattleRank_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossBattleRank_DataGridColumn2 = _loc1_;
         _loc1_.width = 60;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_CrossBattleRank_DataGridColumn2",_CrossBattleRank_DataGridColumn2);
         return _loc1_;
      }
      
      private function updateOneRecord(param1:Object) : void
      {
         var _loc2_:Array = _rankListAC.source;
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(param1.cid == _loc2_[_loc3_].cid)
            {
               _loc2_[_loc3_] = param1;
               return;
            }
            _loc3_++;
         }
         _loc2_.push(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossBattleRank = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossBattleRank_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossBattleRankWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get rankGrid() : PageableDataGrid
      {
         return this._255677842rankGrid;
      }
      
      private function _CrossBattleRank_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_BATTLE_RANK_U[0];
         _loc1_ = pageCtrl;
         _loc1_ = Language.CROSS_BATTLE_RANK_U[1];
         _loc1_ = Language.CROSS_BATTLE_RANK_U[2];
         _loc1_ = Language.CROSS_BATTLE_RANK_U[3];
         _loc1_ = Language.CROSS_BATTLE_RANK_U[4];
         _loc1_ = Language.CROSS_BATTLE_RANK_U[5];
         _loc1_ = _pageSize;
      }
      
      private function updateView() : void
      {
         var _loc1_:Array = [];
         var _loc2_:Array = _rankListAC.source;
         _loc2_.sort(rankSortFunc);
         if(_loc2_.length > 30)
         {
            _loc1_ = _loc2_.slice(0,30);
         }
         else
         {
            _loc1_ = _loc2_;
         }
         _rankListAC = new ArrayCollection(_loc1_);
         rankGrid.dataAll = _rankListAC;
         pageCtrl.resetPageSeletor(_rankListAC.length,_pageSize);
         pageRefresh(pageCtrl.pageNo * pageCtrl.pageSize,pageCtrl.pageSize);
      }
      
      private function init() : void
      {
         if(!_allowUpdateRecord)
         {
            getRankList();
         }
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(param1.label == GamePredef.MENU_P2PWISPER)
         {
            ChatPanelUtil.createChatPanel(param1.item.cid);
         }
         else if(param1.label == GamePredef.MENU_INFO)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(param1.item.cid);
         }
         else if(param1.label == GamePredef.MENU_ASSASI)
         {
            _core.remote.assassinate(param1.item.cid);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageCtrl() : PageSelector
      {
         return this._858962330pageCtrl;
      }
      
      public function __rankGrid_itemClick(param1:ListEvent) : void
      {
         showMenu(param1);
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function resetRank() : void
      {
         if(_allowUpdateRecord)
         {
            _rankListAC = new ArrayCollection();
            updateView();
            getRankList();
         }
      }
      
      public function set pageCtrl(param1:PageSelector) : void
      {
         var _loc2_:Object = this._858962330pageCtrl;
         if(_loc2_ !== param1)
         {
            this._858962330pageCtrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageCtrl",_loc2_,param1));
         }
      }
      
      public function addUpdateRecord(param1:Object) : void
      {
         if(_allowUpdateRecord)
         {
            forUpdateArr.push(param1);
         }
         if(_updateReady)
         {
            updateRankList();
         }
      }
      
      private function _CrossBattleRank_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossBattleRank_DataGridColumn3 = _loc1_;
         _loc1_.width = 60;
         _loc1_.dataField = "serverId";
         BindingManager.executeBindings(this,"_CrossBattleRank_DataGridColumn3",_CrossBattleRank_DataGridColumn3);
         return _loc1_;
      }
      
      private function _CrossBattleRank_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossBattleRank_DataGridColumn5 = _loc1_;
         _loc1_.width = 86;
         _loc1_.dataField = "assasi";
         BindingManager.executeBindings(this,"_CrossBattleRank_DataGridColumn5",_CrossBattleRank_DataGridColumn5);
         return _loc1_;
      }
      
      private function _CrossBattleRank_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossBattleRank_DataGridColumn1 = _loc1_;
         _loc1_.width = 100;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_CrossBattleRank_DataGridColumn1",_CrossBattleRank_DataGridColumn1);
         return _loc1_;
      }
      
      public function ___CrossBattleRank_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function pageRefresh(param1:int, param2:int) : void
      {
         if(_rankListAC)
         {
            rankGrid.dataProvider = ToolKit.getPageCollection(_rankListAC,param1,param2);
         }
      }
      
      private function rankSortFunc(param1:Object, param2:Object) : Number
      {
         if(param1.total != param2.total)
         {
            return ToolKit.minus(param2.total,param1.total);
         }
         if(param1.assasi != param2.assasi)
         {
            return ToolKit.minus(param2.assasi,param1.assasi);
         }
         if(param1.level != param2.level)
         {
            return ToolKit.minus(param1.level,param2.level);
         }
         if(param1.cid != param2.cid)
         {
            return ToolKit.minus(param1.cid,param2.cid);
         }
         return 0;
      }
      
      public function set rankCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._763223204rankCanvas;
         if(_loc2_ !== param1)
         {
            this._763223204rankCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankCanvas() : Canvas
      {
         return this._763223204rankCanvas;
      }
      
      private function updateRankList() : void
      {
         var _loc1_:Object = null;
         if(forUpdateArr.length > 0)
         {
            _loc1_ = forUpdateArr.pop();
            while(_loc1_)
            {
               updateOneRecord(_loc1_);
               _loc1_ = forUpdateArr.pop();
            }
         }
         if(visible)
         {
            updateView();
         }
      }
      
      private function _CrossBattleRank_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_BATTLE_RANK_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():PageSelector
         {
            return pageCtrl;
         },function(param1:PageSelector):void
         {
            rankGrid.pageSelector = param1;
         },"rankGrid.pageSelector");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_BATTLE_RANK_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossBattleRank_DataGridColumn1.headerText = param1;
         },"_CrossBattleRank_DataGridColumn1.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_BATTLE_RANK_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossBattleRank_DataGridColumn2.headerText = param1;
         },"_CrossBattleRank_DataGridColumn2.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_BATTLE_RANK_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossBattleRank_DataGridColumn3.headerText = param1;
         },"_CrossBattleRank_DataGridColumn3.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_BATTLE_RANK_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossBattleRank_DataGridColumn4.headerText = param1;
         },"_CrossBattleRank_DataGridColumn4.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_BATTLE_RANK_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossBattleRank_DataGridColumn5.headerText = param1;
         },"_CrossBattleRank_DataGridColumn5.headerText");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return _pageSize;
         },function(param1:int):void
         {
            pageCtrl.pageSize = param1;
         },"pageCtrl.pageSize");
         result[7] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      public function set rankGrid(param1:PageableDataGrid) : void
      {
         var _loc2_:Object = this._255677842rankGrid;
         if(_loc2_ !== param1)
         {
            this._255677842rankGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankGrid",_loc2_,param1));
         }
      }
      
      public function getRankList() : void
      {
         var onGetRankList:Function;
         _allowUpdateRecord = true;
         onGetRankList = function(param1:Object):void
         {
            var _loc3_:* = undefined;
            var _loc2_:Array = [];
            for(_loc3_ in param1)
            {
               _loc2_.push(param1[_loc3_]);
            }
            _rankListAC = new ArrayCollection(_loc2_);
            updateView();
            _updateReady = true;
         };
         _core.remote.call("getCrossBattleRank",new Responder(onGetRankList));
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            updateView();
         }
      }
   }
}

