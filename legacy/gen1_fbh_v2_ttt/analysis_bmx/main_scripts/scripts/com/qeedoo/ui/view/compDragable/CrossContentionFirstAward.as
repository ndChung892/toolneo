package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
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
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionFirstAward extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var myStateList:ArrayCollection = new ArrayCollection();
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var _132537978firstData:DataGrid;
      
      private var _core:Core = Core.getInstance();
      
      public var areaId:int = 0;
      
      private var _helpAlert:Alert;
      
      mx_internal var _watchers:Array = [];
      
      public var mapId:int = 0;
      
      private var _3237038info:Label;
      
      public var _CrossContentionFirstAward_LinkButton1:LinkButton;
      
      public var mapData:Object = new Object();
      
      public var _CrossContentionFirstAward_DataGridColumn1:DataGridColumn;
      
      public var _CrossContentionFirstAward_DataGridColumn2:DataGridColumn;
      
      public var _CrossContentionFirstAward_DataGridColumn3:DataGridColumn;
      
      public var _CrossContentionFirstAward_DataGridColumn4:DataGridColumn;
      
      public var _CrossContentionFirstAward_DataGridColumn5:DataGridColumn;
      
      public var _CrossContentionFirstAward_DataGridColumn6:DataGridColumn;
      
      public var isBoss:Boolean = false;
      
      private var _2132384574btnPointsAward:BasicDelayButton;
      
      public var _CrossContentionFirstAward_Label1:Label;
      
      public var _CrossContentionFirstAward_Label2:Label;
      
      public var _CrossContentionFirstAward_Label3:Label;
      
      public var _CrossContentionFirstAward_Label4:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109412162tInfo:Canvas;
      
      private var _255229216totleScore:int = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":625,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "50";
                     this.bottom = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"tInfo",
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_CrossContentionFirstAward_Label1",
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalCenter = "0";
                                    this.top = "5";
                                    this.fontSize = 16;
                                    this.color = 16776960;
                                    this.fontWeight = "bold";
                                    this.textAlign = "center";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "percentWidth":100,
                                       "height":21
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"firstData",
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalCenter = "0";
                                    this.top = "40";
                                    this.textAlign = "center";
                                    this.fontSize = 16;
                                    this.fontWeight = "bold";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "sortableColumns":false,
                                       "selectable":false,
                                       "height":350,
                                       "width":570,
                                       "headerHeight":25,
                                       "columns":[_CrossContentionFirstAward_DataGridColumn1_i(),_CrossContentionFirstAward_DataGridColumn2_i(),_CrossContentionFirstAward_DataGridColumn3_i(),_CrossContentionFirstAward_DataGridColumn4_i(),_CrossContentionFirstAward_DataGridColumn5_i(),_CrossContentionFirstAward_DataGridColumn6_i()]
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionFirstAward_Label2",
                           "stylesFactory":function():void
                           {
                              this.left = "470";
                              this.fontSize = 14;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":75};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionFirstAward_Label3",
                           "stylesFactory":function():void
                           {
                              this.left = "530";
                              this.fontSize = 14;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                              this.bottom = "10";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionFirstAward_Label4",
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.bottom = "10";
                              this.fontWeight = "bold";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"percentWidth":100};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"info",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                              this.textAlign = "center";
                              this.color = 16776960;
                              this.fontSize = 20;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"percentWidth":100};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"btnPointsAward",
                  "events":{"click":"__btnPointsAward_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "8";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnStdRed"};
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_CrossContentionFirstAward_LinkButton1",
                  "events":{"click":"___CrossContentionFirstAward_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "20";
                     this.bottom = "5";
                     this.color = 16770560;
                     this.textDecoration = "underline";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":78};
                  }
               })]
            };
         }
      });
      
      public function CrossContentionFirstAward()
      {
         super();
         mx_internal::_document = this;
         this.width = 625;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionFirstAward_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionFirstAward._watcherSetupUtil = param1;
      }
      
      public function set firstData(param1:DataGrid) : void
      {
         var _loc2_:Object = this._132537978firstData;
         if(_loc2_ !== param1)
         {
            this._132537978firstData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstData",_loc2_,param1));
         }
      }
      
      private function getFirstAward() : void
      {
         _core.remote.call("crossContentionGetFirstOccupyAward",new Responder(onGetFirstOccupyAward));
      }
      
      public function set tInfo(param1:Canvas) : void
      {
         var _loc2_:Object = this._109412162tInfo;
         if(_loc2_ !== param1)
         {
            this._109412162tInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tInfo",_loc2_,param1));
         }
      }
      
      private function _CrossContentionFirstAward_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionFirstAward_DataGridColumn2 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num1";
         _loc1_.setStyle("color",16777215);
         BindingManager.executeBindings(this,"_CrossContentionFirstAward_DataGridColumn2",_CrossContentionFirstAward_DataGridColumn2);
         return _loc1_;
      }
      
      public function onGetFirstOccupyAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(param1.flag)
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[87]);
         }
         else if(param1.data)
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[param1.data]);
         }
         else
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[88]);
         }
      }
      
      private function _CrossContentionFirstAward_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionFirstAward_DataGridColumn4 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num3";
         _loc1_.setStyle("color",255);
         BindingManager.executeBindings(this,"_CrossContentionFirstAward_DataGridColumn4",_CrossContentionFirstAward_DataGridColumn4);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionFirstAward = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionFirstAward_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionFirstAwardWatcherSetupUtil");
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
      
      private function _CrossContentionFirstAward_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionFirstAward_DataGridColumn6 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num5";
         _loc1_.setStyle("color",16744512);
         BindingManager.executeBindings(this,"_CrossContentionFirstAward_DataGridColumn6",_CrossContentionFirstAward_DataGridColumn6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get totleScore() : int
      {
         return this._255229216totleScore;
      }
      
      [Bindable(event="propertyChange")]
      public function get tInfo() : Canvas
      {
         return this._109412162tInfo;
      }
      
      public function __btnPointsAward_click(param1:MouseEvent) : void
      {
         getFirstAward();
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      public function ___CrossContentionFirstAward_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPointsAward() : BasicDelayButton
      {
         return this._2132384574btnPointsAward;
      }
      
      private function set totleScore(param1:int) : void
      {
         var _loc2_:Object = this._255229216totleScore;
         if(_loc2_ !== param1)
         {
            this._255229216totleScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totleScore",_loc2_,param1));
         }
      }
      
      public function open(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:int = 0;
         info.visible = true;
         tInfo.visible = false;
         visible = true;
         if(!param1)
         {
            return;
         }
         myStateList.removeAll();
         var _loc2_:Object = {};
         for(_loc3_ in param1)
         {
            _loc5_ = CrossContentionTotalPanel._crossContentionGetPridMid(Number(_loc3_));
            if(!_loc2_[_loc5_])
            {
               _loc2_[_loc5_] = {};
            }
            for(_loc6_ in param1[_loc3_])
            {
               _loc7_ = int(param1[_loc3_][_loc6_]);
               if(Boolean(_loc6_) && Boolean(_loc7_))
               {
                  if(!_loc2_[_loc5_][_loc6_])
                  {
                     _loc2_[_loc5_][_loc6_] = 0;
                  }
                  _loc2_[_loc5_][_loc6_] += _loc7_;
               }
            }
         }
         totleScore = 0;
         for(_loc4_ in _loc2_)
         {
            _loc8_ = _loc2_[_loc4_];
            _loc9_ = GamePredef.CROSS_CONTENTION_MAP[_loc4_].name;
            _loc10_ = [0,0,0,0,0,0];
            if(_loc8_[1])
            {
               _loc10_[1] = _loc8_[1];
            }
            if(_loc8_[2])
            {
               _loc10_[2] = _loc8_[2];
            }
            if(_loc8_[3])
            {
               _loc10_[3] = _loc8_[3];
            }
            if(_loc8_[4])
            {
               _loc10_[4] = _loc8_[4];
            }
            if(_loc8_[5])
            {
               _loc10_[5] = _loc8_[5];
            }
            _loc11_ = _loc10_[1] + _loc10_[2] + _loc10_[3] + _loc10_[4] + _loc10_[5];
            info.visible = false;
            tInfo.visible = true;
            myStateList.addItem({
               "aname":_loc9_,
               "num1":_loc10_[1] / GamePredef.CROSS_CONTENTION_P_DATA[1].score,
               "num2":_loc10_[2] / GamePredef.CROSS_CONTENTION_P_DATA[2].score,
               "num3":_loc10_[3] / GamePredef.CROSS_CONTENTION_P_DATA[3].score,
               "num4":_loc10_[4] / GamePredef.CROSS_CONTENTION_P_DATA[4].score,
               "num5":_loc10_[5] / GamePredef.CROSS_CONTENTION_P_DATA[5].score,
               "totle":_loc11_
            });
            totleScore += _loc11_;
         }
         totleScore;
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_CONTENTION_PANEL_U[133].toString();
         _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[133].toString(),Alert.YES,null,null);
      }
      
      public function set btnPointsAward(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2132384574btnPointsAward;
         if(_loc2_ !== param1)
         {
            this._2132384574btnPointsAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPointsAward",_loc2_,param1));
         }
      }
      
      private function _CrossContentionFirstAward_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionFirstAward_DataGridColumn1 = _loc1_;
         _loc1_.width = 110;
         _loc1_.dataField = "aname";
         _loc1_.setStyle("color",16777215);
         BindingManager.executeBindings(this,"_CrossContentionFirstAward_DataGridColumn1",_CrossContentionFirstAward_DataGridColumn1);
         return _loc1_;
      }
      
      private function _CrossContentionFirstAward_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionFirstAward_DataGridColumn3 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num2";
         _loc1_.setStyle("color",32768);
         BindingManager.executeBindings(this,"_CrossContentionFirstAward_DataGridColumn3",_CrossContentionFirstAward_DataGridColumn3);
         return _loc1_;
      }
      
      private function _CrossContentionFirstAward_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionFirstAward_DataGridColumn5 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num4";
         _loc1_.setStyle("color",8421631);
         BindingManager.executeBindings(this,"_CrossContentionFirstAward_DataGridColumn5",_CrossContentionFirstAward_DataGridColumn5);
         return _loc1_;
      }
      
      public function ___CrossContentionFirstAward_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      public function set info(param1:Label) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
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
      
      private function _CrossContentionFirstAward_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[82];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[83];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_Label1.text = param1;
         },"_CrossContentionFirstAward_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return myStateList;
         },function(param1:Object):void
         {
            firstData.dataProvider = param1;
         },"firstData.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[105];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_DataGridColumn1.headerText = param1;
         },"_CrossContentionFirstAward_DataGridColumn1.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_DataGridColumn2.headerText = param1;
         },"_CrossContentionFirstAward_DataGridColumn2.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[69];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_DataGridColumn3.headerText = param1;
         },"_CrossContentionFirstAward_DataGridColumn3.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_DataGridColumn4.headerText = param1;
         },"_CrossContentionFirstAward_DataGridColumn4.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_DataGridColumn5.headerText = param1;
         },"_CrossContentionFirstAward_DataGridColumn5.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_DataGridColumn6.headerText = param1;
         },"_CrossContentionFirstAward_DataGridColumn6.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[84] + ":";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_Label2.text = param1;
         },"_CrossContentionFirstAward_Label2.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = totleScore;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_Label3.text = param1;
         },"_CrossContentionFirstAward_Label3.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[85];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_Label4.text = param1;
         },"_CrossContentionFirstAward_Label4.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[108];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info.text = param1;
         },"info.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[86];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPointsAward.label = param1;
         },"btnPointsAward.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionFirstAward_LinkButton1.label = param1;
         },"_CrossContentionFirstAward_LinkButton1.label");
         result[14] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get firstData() : DataGrid
      {
         return this._132537978firstData;
      }
      
      private function _CrossContentionFirstAward_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[82];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[83];
         _loc1_ = myStateList;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[105];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[68];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[69];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[70];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[71];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[72];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[84] + ":";
         _loc1_ = totleScore;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[85];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[108];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[86];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[46];
      }
   }
}

