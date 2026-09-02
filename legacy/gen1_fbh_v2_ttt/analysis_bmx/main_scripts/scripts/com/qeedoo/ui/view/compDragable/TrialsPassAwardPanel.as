package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RendererItemArray;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TrialsPassAwardPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _isAward:Boolean;
      
      mx_internal var _watchers:Array = [];
      
      private var _1104960551flopRankGrid:DataGrid;
      
      private var _isAwardGold:Boolean;
      
      public var _TrialsPassAwardPanel_DataGridColumn1:DataGridColumn;
      
      public var _TrialsPassAwardPanel_DataGridColumn2:DataGridColumn;
      
      public var _TrialsPassAwardPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1405038220award1:BasicGlowButton;
      
      private var _93223517award:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TrialsPassAwardPanel_Label1:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _floorAwardArr:Array = [{
         "id":1,
         "name":"1-1",
         "award":[{
            "tid":29,
            "iid":4730,
            "n":1
         },{
            "tid":29,
            "iid":4724,
            "n":3
         },{
            "tid":29,
            "iid":4674,
            "n":1
         },{
            "tid":29,
            "iid":4673,
            "n":1
         },{
            "tid":29,
            "iid":4740,
            "n":1
         }]
      },{
         "id":1,
         "name":"1-2",
         "award":[{
            "tid":29,
            "iid":4731,
            "n":1
         },{
            "tid":29,
            "iid":4591,
            "n":1
         },{
            "tid":29,
            "iid":4674,
            "n":2
         },{
            "tid":29,
            "iid":4741,
            "n":1
         }]
      },{
         "id":1,
         "name":"1-3",
         "award":[{
            "tid":29,
            "iid":4732,
            "n":1
         },{
            "tid":29,
            "iid":4591,
            "n":1
         },{
            "tid":29,
            "iid":4724,
            "n":2
         },{
            "tid":29,
            "iid":4674,
            "n":4
         },{
            "tid":29,
            "iid":4742,
            "n":1
         }]
      },{
         "id":1,
         "name":"1-4",
         "award":[{
            "tid":29,
            "iid":4733,
            "n":1
         },{
            "tid":29,
            "iid":4591,
            "n":1
         },{
            "tid":29,
            "iid":4724,
            "n":4
         },{
            "tid":29,
            "iid":4674,
            "n":5
         },{
            "tid":29,
            "iid":4743,
            "n":1
         }]
      },{
         "id":1,
         "name":"1-5",
         "award":[{
            "tid":29,
            "iid":4734,
            "n":1
         },{
            "tid":29,
            "iid":4591,
            "n":2
         },{
            "tid":29,
            "iid":4724,
            "n":2
         },{
            "tid":29,
            "iid":4674,
            "n":6
         },{
            "tid":29,
            "iid":4744,
            "n":1
         }]
      }];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":363,
               "height":367,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TrialsPassAwardPanel_BasicTitleCanvas1",
                  "events":{"creationComplete":"___TrialsPassAwardPanel_BasicTitleCanvas1_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "label":"Hornor",
                        "width":348,
                        "height":294,
                        "x":7.5,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"flopRankGrid",
                           "stylesFactory":function():void
                           {
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                              this.left = "10";
                              this.top = "10";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "resizableColumns":false,
                                 "variableRowHeight":true,
                                 "draggableColumns":false,
                                 "height":283,
                                 "columns":[_TrialsPassAwardPanel_DataGridColumn1_i(),_TrialsPassAwardPanel_DataGridColumn2_i()]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TrialsPassAwardPanel_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16187149;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":341,
                        "width":205
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"award1",
                  "events":{"click":"__award1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":216,
                        "y":339,
                        "width":70,
                        "height":21,
                        "styleName":"BtnStdRed",
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"award",
                  "events":{"click":"__award_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":283,
                        "y":339,
                        "width":59,
                        "height":21,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _passFloor:Number;
      
      private var _core:Core = Core.getInstance();
      
      public function TrialsPassAwardPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 363;
         this.height = 367;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TrialsPassAwardPanel._watcherSetupUtil = param1;
      }
      
      private function _TrialsPassAwardPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _TrialsPassAwardPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_TrialsPassAwardPanel_DataGridColumn1",_TrialsPassAwardPanel_DataGridColumn1);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TrialsPassAwardPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TrialsPassAwardPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TrialsPassAwardPanelWatcherSetupUtil");
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
      
      private function trialsAwardTakeByGold() : void
      {
         _core.remote.call("trialsAwardTakeByGold",null);
      }
      
      private function init() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Number = 0;
         while(_loc2_ < _floorAwardArr.length)
         {
            _loc3_ = new Object();
            _loc3_["id"] = _floorAwardArr[_loc2_].id;
            _loc3_["name"] = _floorAwardArr[_loc2_].name;
            _loc3_.array = new Array();
            _loc4_ = 0;
            while(_loc4_ < _floorAwardArr[_loc2_].award.length)
            {
               _loc5_ = _floorAwardArr[_loc2_].award[_loc4_];
               if(_loc5_)
               {
                  _loc6_ = new Object();
                  _loc6_.stackNum = _loc5_.n;
                  _loc6_.itemType = _loc5_.tid;
                  _loc6_.itemId = _loc5_.iid;
                  _loc6_.movable = false;
                  _loc6_.slotType = Slot.SLOT_TEMP_SLOT;
                  _loc7_ = _core.data.gameData[_loc5_.tid][_loc5_];
                  _loc6_.quality = 0;
                  _loc6_.slotData = _loc7_;
                  _loc3_.array.push(_loc6_);
               }
               _loc4_++;
            }
            _loc1_.addItem(_loc3_);
            _loc2_++;
         }
         flopRankGrid.dataProvider = _loc1_;
      }
      
      private function _TrialsPassAwardPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_AWARD_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassAwardPanel_BasicTitleCanvas1.text = param1;
         },"_TrialsPassAwardPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_AWARD_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassAwardPanel_DataGridColumn1.headerText = param1;
         },"_TrialsPassAwardPanel_DataGridColumn1.headerText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_AWARD_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassAwardPanel_DataGridColumn2.headerText = param1;
         },"_TrialsPassAwardPanel_DataGridColumn2.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_AWARD_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrialsPassAwardPanel_Label1.text = param1;
         },"_TrialsPassAwardPanel_Label1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_AWARD_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            award1.label = param1;
         },"award1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIALS_AWARD_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            award.label = param1;
         },"award.label");
         result[5] = binding;
         return result;
      }
      
      public function trialsAwardPanelVisible(param1:Number, param2:Boolean, param3:Boolean) : void
      {
         _passFloor = param1;
         _isAward = param2;
         _isAwardGold = param3;
         initView();
         visible = true;
      }
      
      public function set flopRankGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1104960551flopRankGrid;
         if(_loc2_ !== param1)
         {
            this._1104960551flopRankGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flopRankGrid",_loc2_,param1));
         }
      }
      
      public function set award(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._93223517award;
         if(_loc2_ !== param1)
         {
            this._93223517award = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award",_loc2_,param1));
         }
      }
      
      public function __award_click(param1:MouseEvent) : void
      {
         trialsAwardTake();
      }
      
      private function _TrialsPassAwardPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _TrialsPassAwardPanel_DataGridColumn2 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 250;
         _loc1_.itemRenderer = _TrialsPassAwardPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_TrialsPassAwardPanel_DataGridColumn2",_TrialsPassAwardPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function ___TrialsPassAwardPanel_BasicTitleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(initialized && !_passFloor)
         {
            award.enabled = false;
            award1.enabled = false;
            award.label = Language.TRIALS_AWARD_PANEL[7];
            award1.label = Language.TRIALS_AWARD_PANEL[8];
         }
         else if(initialized)
         {
            award.enabled = false;
            award1.enabled = false;
            award.label = Language.TRIALS_AWARD_PANEL[6];
            award1.label = Language.TRIALS_AWARD_PANEL[6];
            if(!_isAward)
            {
               award.enabled = true;
               award.label = Language.TRIALS_AWARD_PANEL[7];
            }
            if(!_isAwardGold)
            {
               award1.enabled = true;
               award1.label = Language.TRIALS_AWARD_PANEL[8];
            }
         }
      }
      
      private function _TrialsPassAwardPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get flopRankGrid() : DataGrid
      {
         return this._1104960551flopRankGrid;
      }
      
      public function __award1_click(param1:MouseEvent) : void
      {
         trialsAwardTakeByGold();
      }
      
      private function _TrialsPassAwardPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TRIALS_AWARD_PANEL[0];
         _loc1_ = Language.TRIALS_AWARD_PANEL[1];
         _loc1_ = Language.TRIALS_AWARD_PANEL[2];
         _loc1_ = Language.TRIALS_AWARD_PANEL[5];
         _loc1_ = Language.TRIALS_AWARD_PANEL[4];
         _loc1_ = Language.TRIALS_AWARD_PANEL[3];
      }
      
      private function trialsAwardTake() : void
      {
         _core.remote.call("trialsAwardTake",null);
      }
      
      public function set award1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1405038220award1;
         if(_loc2_ !== param1)
         {
            this._1405038220award1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get award1() : BasicGlowButton
      {
         return this._1405038220award1;
      }
      
      [Bindable(event="propertyChange")]
      public function get award() : BasicGlowButton
      {
         return this._93223517award;
      }
   }
}

