package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetArenaPrevRankPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _1554141554tabBtn5:BasicGlowButton;
      
      private var _1521020042cRankDataProvider:ArrayCollection = new ArrayCollection();
      
      private var _1285981837fRankDataProvider:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var _1185599352aRankDataProvider:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _1194431643idData:DataGrid;
      
      private var _67327860eRankDataProvider:ArrayCollection = new ArrayCollection();
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _167710345bRankDataProvider:ArrayCollection = new ArrayCollection();
      
      public var _PetArenaPrevRankPanel_DataGridColumn1:DataGridColumn;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      public var _PetArenaPrevRankPanel_DataGridColumn3:DataGridColumn;
      
      public var _PetArenaPrevRankPanel_DataGridColumn4:DataGridColumn;
      
      public var _PetArenaPrevRankPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _PetArenaPrevRankPanel_DataGridColumn2:DataGridColumn;
      
      private var _1420637557dRankDataProvider:ArrayCollection = new ArrayCollection();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":480,
               "height":360,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetArenaPrevRankPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":14,
                        "width":82,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":97,
                        "width":82,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn2",
                  "events":{"click":"__tabBtn2_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":180,
                        "width":82,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn3",
                  "events":{"click":"__tabBtn3_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":263,
                        "width":82,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn4",
                  "events":{"click":"__tabBtn4_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":346,
                        "width":82,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn5",
                  "events":{"click":"__tabBtn5_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":398,
                        "width":75,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "65";
                     this.left = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":470,
                        "height":250,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"idData",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "sortableColumns":false,
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "doubleClickEnabled":false,
                                 "columns":[_PetArenaPrevRankPanel_DataGridColumn1_i(),_PetArenaPrevRankPanel_DataGridColumn2_i(),_PetArenaPrevRankPanel_DataGridColumn3_i(),_PetArenaPrevRankPanel_DataGridColumn4_i()]
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
      
      public function PetArenaPrevRankPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 480;
         this.height = 360;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___PetArenaPrevRankPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetArenaPrevRankPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn5() : BasicGlowButton
      {
         return this._1554141554tabBtn5;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetArenaPrevRankPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetArenaPrevRankPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetArenaPrevRankPanelWatcherSetupUtil");
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
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function ___PetArenaPrevRankPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _PetArenaPrevRankPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaPrevRankPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "tName";
         _loc1_.width = 170;
         BindingManager.executeBindings(this,"_PetArenaPrevRankPanel_DataGridColumn2",_PetArenaPrevRankPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function set bRankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._167710345bRankDataProvider;
         if(_loc2_ !== param1)
         {
            this._167710345bRankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bRankDataProvider",_loc2_,param1));
         }
      }
      
      public function set tabBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      private function _PetArenaPrevRankPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaPrevRankPanel_BasicTitleCanvas1.text = param1;
         },"_PetArenaPrevRankPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn5.label = param1;
         },"tabBtn5.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaPrevRankPanel_DataGridColumn1.headerText = param1;
         },"_PetArenaPrevRankPanel_DataGridColumn1.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaPrevRankPanel_DataGridColumn2.headerText = param1;
         },"_PetArenaPrevRankPanel_DataGridColumn2.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaPrevRankPanel_DataGridColumn3.headerText = param1;
         },"_PetArenaPrevRankPanel_DataGridColumn3.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_RANK_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaPrevRankPanel_DataGridColumn4.headerText = param1;
         },"_PetArenaPrevRankPanel_DataGridColumn4.headerText");
         result[10] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      private function getPrevPetRankTypeId() : int
      {
         var _loc1_:int = _core.player.level;
         var _loc2_:* = 0;
         if(_loc1_ >= 35 && _loc1_ <= 74)
         {
            _loc2_ = 0;
         }
         else if(_loc1_ >= 75 && _loc1_ <= 94)
         {
            _loc2_ = 1;
         }
         else if(_loc1_ >= 95 && _loc1_ <= 114)
         {
            _loc2_ = 2;
         }
         else if(_loc1_ >= 115 && _loc1_ <= 134)
         {
            _loc2_ = 3;
         }
         else if(_loc1_ >= 135 && _loc1_ <= 154)
         {
            _loc2_ = 4;
         }
         else if(_loc1_ >= 155)
         {
            _loc2_ = 5;
         }
         return _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      private function get bRankDataProvider() : ArrayCollection
      {
         return this._167710345bRankDataProvider;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      private function set dRankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1420637557dRankDataProvider;
         if(_loc2_ !== param1)
         {
            this._1420637557dRankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dRankDataProvider",_loc2_,param1));
         }
      }
      
      private function _PetArenaPrevRankPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaPrevRankPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_PetArenaPrevRankPanel_DataGridColumn4",_PetArenaPrevRankPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
         _core.remote.call("getLastPetArenaRank",new Responder(onGetPetArenaRankData));
      }
      
      [Bindable(event="propertyChange")]
      private function get aRankDataProvider() : ArrayCollection
      {
         return this._1185599352aRankDataProvider;
      }
      
      public function set tabBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141554tabBtn5;
         if(_loc2_ !== param1)
         {
            this._1554141554tabBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get dRankDataProvider() : ArrayCollection
      {
         return this._1420637557dRankDataProvider;
      }
      
      [Bindable(event="propertyChange")]
      private function get eRankDataProvider() : ArrayCollection
      {
         return this._67327860eRankDataProvider;
      }
      
      [Bindable(event="propertyChange")]
      private function get fRankDataProvider() : ArrayCollection
      {
         return this._1285981837fRankDataProvider;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3);
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function __tabBtn5_click(param1:MouseEvent) : void
      {
         tabBtnClick(5);
      }
      
      private function set fRankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1285981837fRankDataProvider;
         if(_loc2_ !== param1)
         {
            this._1285981837fRankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fRankDataProvider",_loc2_,param1));
         }
      }
      
      private function set aRankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1185599352aRankDataProvider;
         if(_loc2_ !== param1)
         {
            this._1185599352aRankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aRankDataProvider",_loc2_,param1));
         }
      }
      
      private function tabBtnClick(param1:int) : void
      {
         var _loc2_:* = 6;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["tabBtn" + _loc3_].selected = false;
            _loc3_++;
         }
         switch(param1)
         {
            case 0:
               idData.dataProvider = aRankDataProvider;
               break;
            case 1:
               idData.dataProvider = bRankDataProvider;
               break;
            case 2:
               idData.dataProvider = cRankDataProvider;
               break;
            case 3:
               idData.dataProvider = dRankDataProvider;
               break;
            case 4:
               idData.dataProvider = eRankDataProvider;
               break;
            case 5:
               idData.dataProvider = fRankDataProvider;
         }
         this["tabBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get cRankDataProvider() : ArrayCollection
      {
         return this._1521020042cRankDataProvider;
      }
      
      private function set eRankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._67327860eRankDataProvider;
         if(_loc2_ !== param1)
         {
            this._67327860eRankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eRankDataProvider",_loc2_,param1));
         }
      }
      
      private function set cRankDataProvider(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1521020042cRankDataProvider;
         if(_loc2_ !== param1)
         {
            this._1521020042cRankDataProvider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cRankDataProvider",_loc2_,param1));
         }
      }
      
      public function set idData(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1194431643idData;
         if(_loc2_ !== param1)
         {
            this._1194431643idData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idData",_loc2_,param1));
         }
      }
      
      private function onGetPetArenaRankData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ArrayCollection = null;
         var _loc4_:Object = null;
         if(!param1)
         {
            return;
         }
         for(; _loc2_ < 6; _loc2_++)
         {
            if(!param1[_loc2_])
            {
               continue;
            }
            _loc3_ = new ArrayCollection();
            for each(_loc4_ in param1[_loc2_])
            {
               _loc4_.rank += 1;
               _loc3_.addItem(_loc4_);
            }
            switch(_loc2_)
            {
               case 0:
                  aRankDataProvider = _loc3_;
                  break;
               case 1:
                  bRankDataProvider = _loc3_;
                  break;
               case 2:
                  cRankDataProvider = _loc3_;
                  break;
               case 3:
                  dRankDataProvider = _loc3_;
                  break;
               case 4:
                  eRankDataProvider = _loc3_;
                  break;
               case 5:
                  fRankDataProvider = _loc3_;
            }
         }
         tabBtnClick(getPrevPetRankTypeId());
      }
      
      private function _PetArenaPrevRankPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaPrevRankPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_PetArenaPrevRankPanel_DataGridColumn1",_PetArenaPrevRankPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function _PetArenaPrevRankPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaPrevRankPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 200;
         BindingManager.executeBindings(this,"_PetArenaPrevRankPanel_DataGridColumn3",_PetArenaPrevRankPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function _PetArenaPrevRankPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_ARENA_RANK_U[8];
         _loc1_ = Language.PET_ARENA_RANK_U[9];
         _loc1_ = Language.PET_ARENA_RANK_U[10];
         _loc1_ = Language.PET_ARENA_RANK_U[11];
         _loc1_ = Language.PET_ARENA_RANK_U[12];
         _loc1_ = Language.PET_ARENA_RANK_U[13];
         _loc1_ = Language.PET_ARENA_RANK_U[14];
         _loc1_ = Language.PET_ARENA_RANK_U[3];
         _loc1_ = Language.PET_ARENA_RANK_U[1];
         _loc1_ = Language.PET_ARENA_RANK_U[2];
         _loc1_ = Language.PET_ARENA_RANK_U[4];
      }
      
      [Bindable(event="propertyChange")]
      public function get idData() : DataGrid
      {
         return this._1194431643idData;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4);
      }
   }
}

