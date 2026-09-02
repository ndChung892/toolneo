package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
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
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetArenaActivityRankPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PetArenaActivityRankPanel_DataGrid1:DataGrid;
      
      public var _PetArenaActivityRankPanel_DataGrid2:DataGrid;
      
      public var _PetArenaActivityRankPanel_DataGridColumn1:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn2:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn3:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn4:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _PetArenaActivityRankPanel_DataGridColumn6:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn7:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn8:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn9:DataGridColumn;
      
      public var _PetArenaActivityRankPanel_DataGridColumn5:DataGridColumn;
      
      mx_internal var _watchers:Array = [];
      
      public var _PetArenaActivityRankPanel_BasicTxtButton1:BasicTxtButton;
      
      private var _1530121735rankDataProvider:ArrayCollection = new ArrayCollection();
      
      private var _1109307497comboDataProvider:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var actId:Number;
      
      private var lastRefreshTime:Number = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PetArenaActivityRankPanel_Button1:Button;
      
      public var _PetArenaActivityRankPanel_Button2:Button;
      
      mx_internal var _bindings:Array = [];
      
      public var _PetArenaActivityRankPanel_Button3:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":650,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetArenaActivityRankPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":40,
                        "width":300,
                        "height":250,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"_PetArenaActivityRankPanel_DataGrid1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "sortableColumns":false,
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "doubleClickEnabled":false,
                                 "columns":[_PetArenaActivityRankPanel_DataGridColumn1_i(),_PetArenaActivityRankPanel_DataGridColumn2_i(),_PetArenaActivityRankPanel_DataGridColumn3_i(),_PetArenaActivityRankPanel_DataGridColumn4_i()]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":310,
                        "y":40,
                        "width":330,
                        "height":250,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"_PetArenaActivityRankPanel_DataGrid2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "sortableColumns":false,
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "doubleClickEnabled":false,
                                 "columns":[_PetArenaActivityRankPanel_DataGridColumn5_i(),_PetArenaActivityRankPanel_DataGridColumn6_i(),_PetArenaActivityRankPanel_DataGridColumn7_i(),_PetArenaActivityRankPanel_DataGridColumn8_i(),_PetArenaActivityRankPanel_DataGridColumn9_i()]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PetArenaActivityRankPanel_Button1",
                  "events":{"click":"___PetArenaActivityRankPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "x":79,
                        "y":339,
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PetArenaActivityRankPanel_Button2",
                  "events":{"click":"___PetArenaActivityRankPanel_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "x":190,
                        "y":339,
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PetArenaActivityRankPanel_Button3",
                  "events":{"click":"___PetArenaActivityRankPanel_Button3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "x":300,
                        "y":339,
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_PetArenaActivityRankPanel_BasicTxtButton1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "160";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":340};
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function PetArenaActivityRankPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 650;
         this.height = 400;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___PetArenaActivityRankPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetArenaActivityRankPanel._watcherSetupUtil = param1;
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "combo";
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn9",_PetArenaActivityRankPanel_DataGridColumn9);
         return _loc1_;
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn3",_PetArenaActivityRankPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "id";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn5",_PetArenaActivityRankPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get rankDataProvider() : ArrayCollection
      {
         return this._1530121735rankDataProvider;
      }
      
      public function ___PetArenaActivityRankPanel_Button2_click(param1:MouseEvent) : void
      {
         openlastRank(1);
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn7",_PetArenaActivityRankPanel_DataGridColumn7);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetArenaActivityRankPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetArenaActivityRankPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetArenaActivityRankPanelWatcherSetupUtil");
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
      
      private function set rankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1530121735rankDataProvider;
         if(_loc2_ !== param1)
         {
            this._1530121735rankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankDataProvider",_loc2_,param1));
         }
      }
      
      private function _PetArenaActivityRankPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_BasicTitleCanvas1.text = param1;
         },"_PetArenaActivityRankPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return rankDataProvider;
         },function(param1:Object):void
         {
            _PetArenaActivityRankPanel_DataGrid1.dataProvider = param1;
         },"_PetArenaActivityRankPanel_DataGrid1.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn1.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn1.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn2.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn2.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn3.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn3.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn4.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn4.headerText");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return comboDataProvider;
         },function(param1:Object):void
         {
            _PetArenaActivityRankPanel_DataGrid2.dataProvider = param1;
         },"_PetArenaActivityRankPanel_DataGrid2.dataProvider");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn5.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn5.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn6.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn6.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn7.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn7.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn8.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn8.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_DataGridColumn9.headerText = param1;
         },"_PetArenaActivityRankPanel_DataGridColumn9.headerText");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return actId > 1;
         },function(param1:Boolean):void
         {
            _PetArenaActivityRankPanel_Button1.visible = param1;
         },"_PetArenaActivityRankPanel_Button1.visible");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_Button1.label = param1;
         },"_PetArenaActivityRankPanel_Button1.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return actId > 2;
         },function(param1:Boolean):void
         {
            _PetArenaActivityRankPanel_Button2.visible = param1;
         },"_PetArenaActivityRankPanel_Button2.visible");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_Button2.label = param1;
         },"_PetArenaActivityRankPanel_Button2.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return actId > 3;
         },function(param1:Boolean):void
         {
            _PetArenaActivityRankPanel_Button3.visible = param1;
         },"_PetArenaActivityRankPanel_Button3.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_Button3.label = param1;
         },"_PetArenaActivityRankPanel_Button3.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityRankPanel_BasicTxtButton1.label = param1;
         },"_PetArenaActivityRankPanel_BasicTxtButton1.label");
         result[18] = binding;
         return result;
      }
      
      private function _PetArenaActivityRankPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_ARENA_RANK_U[15];
         _loc1_ = rankDataProvider;
         _loc1_ = Language.PET_ARENA_RANK_U[3];
         _loc1_ = Language.PET_ARENA_RANK_U[1];
         _loc1_ = Language.PET_ARENA_RANK_U[2];
         _loc1_ = Language.PET_ARENA_RANK_U[4];
         _loc1_ = comboDataProvider;
         _loc1_ = Language.PET_ARENA_RANK_U[3];
         _loc1_ = Language.PET_ARENA_RANK_U[1];
         _loc1_ = Language.PET_ARENA_RANK_U[2];
         _loc1_ = Language.PET_ARENA_RANK_U[4];
         _loc1_ = Language.PET_ARENA_RANK_U[5];
         _loc1_ = actId > 1;
         _loc1_ = Language.PET_ARENA_U[62];
         _loc1_ = actId > 2;
         _loc1_ = Language.PET_ARENA_U[61];
         _loc1_ = actId > 3;
         _loc1_ = Language.PET_ARENA_U[60];
         _loc1_ = Language.PET_ARENA_RANK_U[6];
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "tName";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn2",_PetArenaActivityRankPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function openlastRank(param1:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_PREV_ACTIVITY_RANK).init(param1);
      }
      
      private function init() : void
      {
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn8",_PetArenaActivityRankPanel_DataGridColumn8);
         return _loc1_;
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn4",_PetArenaActivityRankPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function ___PetArenaActivityRankPanel_Button1_click(param1:MouseEvent) : void
      {
         openlastRank(0);
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "tName";
         _loc1_.width = 100;
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn6",_PetArenaActivityRankPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function reset() : void
      {
         rankDataProvider = new ArrayCollection();
         comboDataProvider = new ArrayCollection();
         lastRefreshTime = 0;
      }
      
      public function ___PetArenaActivityRankPanel_Button3_click(param1:MouseEvent) : void
      {
         openlastRank(2);
      }
      
      private function set comboDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1109307497comboDataProvider;
         if(_loc2_ !== param1)
         {
            this._1109307497comboDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comboDataProvider",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            _loc2_ = new Date().getTime();
            if(_loc2_ > lastRefreshTime + 60000)
            {
               _core.remote.call("getPetArenaRankActivity",null);
               actId = Boolean(_core.player.petArenaAct) && Boolean(_core.player.petArenaAct.actinfo) ? Number(_core.player.petArenaAct.actinfo.id) : 4;
            }
         }
         super.visible = param1;
      }
      
      public function ___PetArenaActivityRankPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get comboDataProvider() : ArrayCollection
      {
         return this._1109307497comboDataProvider;
      }
      
      private function _PetArenaActivityRankPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityRankPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "rank";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_PetArenaActivityRankPanel_DataGridColumn1",_PetArenaActivityRankPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function onPetArenaRank(param1:Object) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:Array = param1.r;
         var _loc3_:Array = param1.c;
         for(_loc4_ in _loc2_)
         {
            _loc2_[_loc4_].rank += 1;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc3_[_loc5_].id = _loc5_ + 1;
            _loc5_++;
         }
         rankDataProvider.source = _loc2_;
         comboDataProvider.source = _loc3_;
      }
   }
}

