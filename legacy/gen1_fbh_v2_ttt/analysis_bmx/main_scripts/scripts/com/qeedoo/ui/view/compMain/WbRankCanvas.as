package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.RendererItemArray;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WbRankCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var WB_BOSS_HP:Number = 2000000000;
      
      mx_internal var _watchers:Array = [];
      
      private var _9769532classRank:DataGrid;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _763223204rankCanvas:Canvas;
      
      private var _858834321globalRank:DataGrid;
      
      public var _WbRankCanvas_Canvas2:Canvas;
      
      public var _WbRankCanvas_Canvas3:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1060104200myRank:Label;
      
      private var _124012844btnChange:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _WbRankCanvas_DataGridColumn1:DataGridColumn;
      
      public var _WbRankCanvas_DataGridColumn2:DataGridColumn;
      
      public var _WbRankCanvas_DataGridColumn3:DataGridColumn;
      
      public var _WbRankCanvas_DataGridColumn4:DataGridColumn;
      
      public var _WbRankCanvas_DataGridColumn5:DataGridColumn;
      
      public var _WbRankCanvas_DataGridColumn6:DataGridColumn;
      
      private var _1060382757myHurt:Label;
      
      private var _1108083282wbAward:RendererItemArray;
      
      private var _795053673wbRank:ViewStack;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":300,
               "width":270,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"rankCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "x":12,
                        "y":0,
                        "width":260,
                        "height":300,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":22,
                                 "y":6,
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn0",
                                    "events":{"click":"__bangBtn0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":20,
                                          "width":80,
                                          "styleName":"HorizontalTab",
                                          "selected":true,
                                          "labelPlacement":"bottom"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn1",
                                    "events":{"click":"__bangBtn1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"wbRank",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":26,
                                 "height":205,
                                 "width":250,
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_WbRankCanvas_Canvas2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":1,
                                          "styleName":"RoundedGradientBorder",
                                          "width":249,
                                          "height":205,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"classRank",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "columns":[_WbRankCanvas_DataGridColumn1_i(),_WbRankCanvas_DataGridColumn2_i(),_WbRankCanvas_DataGridColumn3_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_WbRankCanvas_Canvas3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"globalRank",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "columns":[_WbRankCanvas_DataGridColumn4_i(),_WbRankCanvas_DataGridColumn5_i(),_WbRankCanvas_DataGridColumn6_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"myHurt",
                           "stylesFactory":function():void
                           {
                              this.color = 16501317;
                              this.horizontalCenter = "true";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":202,
                                 "selectable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"myRank",
                           "stylesFactory":function():void
                           {
                              this.color = 16501317;
                              this.horizontalCenter = "true";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":217,
                                 "selectable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RendererItemArray,
                           "id":"wbAward",
                           "stylesFactory":function():void
                           {
                              this.left = "33";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":234};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnChange",
                  "events":{"click":"__btnChange_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":126,
                        "width":12,
                        "height":25,
                        "styleName":"BtnHideButtons",
                        "visible":true
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function WbRankCanvas()
      {
         super();
         mx_internal::_document = this;
         this.clipContent = false;
         this.cacheAsBitmap = true;
         this.height = 300;
         this.width = 270;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WbRankCanvas._watcherSetupUtil = param1;
      }
      
      private function _WbRankCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_Canvas2.label = param1;
         },"_WbRankCanvas_Canvas2.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_DataGridColumn1.headerText = param1;
         },"_WbRankCanvas_DataGridColumn1.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_DataGridColumn2.headerText = param1;
         },"_WbRankCanvas_DataGridColumn2.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_DataGridColumn3.headerText = param1;
         },"_WbRankCanvas_DataGridColumn3.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_Canvas3.label = param1;
         },"_WbRankCanvas_Canvas3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_DataGridColumn4.headerText = param1;
         },"_WbRankCanvas_DataGridColumn4.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_DataGridColumn5.headerText = param1;
         },"_WbRankCanvas_DataGridColumn5.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RANK_CANVAS_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbRankCanvas_DataGridColumn6.headerText = param1;
         },"_WbRankCanvas_DataGridColumn6.headerText");
         result[9] = binding;
         return result;
      }
      
      private function _WbRankCanvas_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WbRankCanvas_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         BindingManager.executeBindings(this,"_WbRankCanvas_DataGridColumn2",_WbRankCanvas_DataGridColumn2);
         return _loc1_;
      }
      
      private function _WbRankCanvas_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WbRankCanvas_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "index";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_WbRankCanvas_DataGridColumn4",_WbRankCanvas_DataGridColumn4);
         return _loc1_;
      }
      
      private function _WbRankCanvas_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WbRankCanvas_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "score";
         _loc1_.width = 107;
         BindingManager.executeBindings(this,"_WbRankCanvas_DataGridColumn6",_WbRankCanvas_DataGridColumn6);
         return _loc1_;
      }
      
      public function set globalRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._858834321globalRank;
         if(_loc2_ !== param1)
         {
            this._858834321globalRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalRank",_loc2_,param1));
         }
      }
      
      public function set classRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._9769532classRank;
         if(_loc2_ !== param1)
         {
            this._9769532classRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classRank",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WbRankCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WbRankCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_WbRankCanvasWatcherSetupUtil");
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
      public function get globalRank() : DataGrid
      {
         return this._858834321globalRank;
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         bangSele(0);
      }
      
      public function clearRank() : void
      {
         globalRank.dataProvider = null;
         classRank.dataProvider = null;
      }
      
      public function set myRank(param1:Label) : void
      {
         var _loc2_:Object = this._1060104200myRank;
         if(_loc2_ !== param1)
         {
            this._1060104200myRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wbRank() : ViewStack
      {
         return this._795053673wbRank;
      }
      
      public function init() : void
      {
      }
      
      private function bangSele(param1:int) : void
      {
         wbRank.selectedIndex = param1;
         if(param1 == 0)
         {
            this.bangBtn0.selected = true;
            this.bangBtn1.selected = false;
         }
         else
         {
            this.bangBtn0.selected = false;
            this.bangBtn1.selected = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankCanvas() : Canvas
      {
         return this._763223204rankCanvas;
      }
      
      public function set wbAward(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._1108083282wbAward;
         if(_loc2_ !== param1)
         {
            this._1108083282wbAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wbAward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      public function set wbRank(param1:ViewStack) : void
      {
         var _loc2_:Object = this._795053673wbRank;
         if(_loc2_ !== param1)
         {
            this._795053673wbRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wbRank",_loc2_,param1));
         }
      }
      
      public function changeFun() : void
      {
         if(rankCanvas.visible)
         {
            rankCanvas.visible = false;
            btnChange.x = 250;
            btnChange.styleName = "BtnShowButtons";
         }
         else
         {
            rankCanvas.visible = true;
            btnChange.x = 0;
            btnChange.styleName = "BtnHideButtons";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      public function set myHurt(param1:Label) : void
      {
         var _loc2_:Object = this._1060382757myHurt;
         if(_loc2_ !== param1)
         {
            this._1060382757myHurt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myHurt",_loc2_,param1));
         }
      }
      
      public function onUpdateWbRank(param1:Object, param2:Object, param3:Number, param4:Object = null) : void
      {
         var _loc5_:ArrayCollection = null;
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         var _loc8_:ArrayCollection = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Number = NaN;
         var _loc12_:Array = null;
         var _loc13_:* = 0;
         if(WbAutoBattleCanva.WB_BOSS_HP)
         {
            WB_BOSS_HP = WbAutoBattleCanva.WB_BOSS_HP;
         }
         this.globalRank.dataProvider = null;
         this.classRank.dataProvider = null;
         if(Boolean(param1 && param1.globalRank) && Boolean(param1.globalRank.length != 0) && Boolean(param2))
         {
            _loc5_ = new ArrayCollection();
            _loc6_ = param1.globalRank;
            for(_loc7_ in _loc6_)
            {
               _loc10_ = new Object();
               _loc10_.index = _loc7_ + 1;
               _loc10_.name = _loc6_[_loc7_].name;
               _loc10_.score = _loc6_[_loc7_].score + "(" + _loc6_[_loc7_].score * 100 / WB_BOSS_HP + "%)";
               _loc11_ = _loc6_[_loc7_].score * 100 / WB_BOSS_HP;
               if(_loc11_ < 0.001)
               {
                  _loc10_.score = _loc6_[_loc7_].score + "( <= 0.001%)";
               }
               else
               {
                  _loc10_.score = _loc6_[_loc7_].score + "(" + _loc11_.toFixed(3) + "%)";
               }
               _loc5_.addItem(_loc10_);
            }
            _loc8_ = new ArrayCollection();
            _loc9_ = param2.classRank;
            for(_loc7_ in _loc9_)
            {
               _loc10_ = new Object();
               _loc10_.index = _loc7_ + 1;
               _loc10_.name = _loc9_[_loc7_].name;
               _loc11_ = _loc9_[_loc7_].score * 100 / WB_BOSS_HP;
               if(_loc11_ < 0.001)
               {
                  _loc10_.score = _loc9_[_loc7_].score + "( <= 0.001%)";
               }
               else
               {
                  _loc10_.score = _loc9_[_loc7_].score + "(" + _loc11_.toFixed(3) + "%)";
               }
               _loc8_.addItem(_loc10_);
            }
            this.globalRank.dataProvider = _loc5_;
            this.classRank.dataProvider = _loc8_;
            myRank.text = Language.WB_RANK_CANVAS_U[5].replace("{rank2}",Number(param2.myRank) != -1 ? Number(param2.myRank) + 1 : "");
         }
         else
         {
            myRank.text = Language.WB_RANK_CANVAS_U[5].replace("{rank2}","");
         }
         if(!param3)
         {
            param3 = 0;
         }
         myHurt.text = Language.WB_RANK_CANVAS_U[6] + param3;
         if(param4 != null)
         {
            _loc10_ = {"array":[]};
            _loc12_ = new Array();
            _loc13_ = 0;
            for(_loc7_ in param4)
            {
               var _loc16_:Number;
               _loc12_[_loc16_ = _loc13_++] = param4[_loc7_];
            }
            _loc10_.array = _loc12_;
            wbAward.data = _loc10_;
         }
      }
      
      private function _WbRankCanvas_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WbRankCanvas_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "score";
         _loc1_.width = 107;
         BindingManager.executeBindings(this,"_WbRankCanvas_DataGridColumn3",_WbRankCanvas_DataGridColumn3);
         return _loc1_;
      }
      
      private function _WbRankCanvas_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WbRankCanvas_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         BindingManager.executeBindings(this,"_WbRankCanvas_DataGridColumn5",_WbRankCanvas_DataGridColumn5);
         return _loc1_;
      }
      
      private function _WbRankCanvas_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WbRankCanvas_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "index";
         _loc1_.width = 35;
         BindingManager.executeBindings(this,"_WbRankCanvas_DataGridColumn1",_WbRankCanvas_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnChange() : Button
      {
         return this._124012844btnChange;
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
      public function get wbAward() : RendererItemArray
      {
         return this._1108083282wbAward;
      }
      
      [Bindable(event="propertyChange")]
      public function get classRank() : DataGrid
      {
         return this._9769532classRank;
      }
      
      public function initView() : void
      {
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         bangSele(1);
      }
      
      public function update() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get myHurt() : Label
      {
         return this._1060382757myHurt;
      }
      
      public function set bangBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324756bangBtn0;
         if(_loc2_ !== param1)
         {
            this._1863324756bangBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn0",_loc2_,param1));
         }
      }
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      public function set btnChange(param1:Button) : void
      {
         var _loc2_:Object = this._124012844btnChange;
         if(_loc2_ !== param1)
         {
            this._124012844btnChange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnChange",_loc2_,param1));
         }
      }
      
      private function _WbRankCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WB_RANK_CANVAS_U[0];
         _loc1_ = Language.WB_RANK_CANVAS_U[1];
         _loc1_ = Language.WB_RANK_CANVAS_U[0];
         _loc1_ = Language.WB_RANK_CANVAS_U[2];
         _loc1_ = Language.WB_RANK_CANVAS_U[3];
         _loc1_ = Language.WB_RANK_CANVAS_U[4];
         _loc1_ = Language.WB_RANK_CANVAS_U[1];
         _loc1_ = Language.WB_RANK_CANVAS_U[2];
         _loc1_ = Language.WB_RANK_CANVAS_U[3];
         _loc1_ = Language.WB_RANK_CANVAS_U[4];
      }
      
      public function initAwardList(param1:Object) : void
      {
      }
      
      public function __btnChange_click(param1:MouseEvent) : void
      {
         changeFun();
      }
      
      [Bindable(event="propertyChange")]
      public function get myRank() : Label
      {
         return this._1060104200myRank;
      }
   }
}

