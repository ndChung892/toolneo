package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
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
   
   public class CrossContentionTimeAward extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      public var _CrossContentionTimeAward_LinkButton1:LinkButton;
      
      public var areaId:int = 0;
      
      private var _62409574ContentionSingleState:DataGrid;
      
      public var _CrossContentionTimeAward_Label1:Label;
      
      public var _CrossContentionTimeAward_DataGridColumn2:DataGridColumn;
      
      public var _CrossContentionTimeAward_DataGridColumn3:DataGridColumn;
      
      public var _CrossContentionTimeAward_DataGridColumn4:DataGridColumn;
      
      public var _CrossContentionTimeAward_DataGridColumn5:DataGridColumn;
      
      public var _CrossContentionTimeAward_DataGridColumn6:DataGridColumn;
      
      private var myStateList:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:Label;
      
      private var _helpAlert:Alert;
      
      public var mapData:Object = new Object();
      
      public var mapId:int = 0;
      
      public var isBoss:Boolean = false;
      
      private var _2132384574btnPointsAward:BasicDelayButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _109412162tInfo:Canvas;
      
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
                     this.top = "40";
                     this.bottom = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionTimeAward_Label1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.textAlign = "center";
                              this.fontSize = 16;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "height":21,
                                 "y":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"tInfo",
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"ContentionSingleState",
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
                                       "selectable":false,
                                       "height":350,
                                       "width":570,
                                       "headerHeight":25,
                                       "columns":[_CrossContentionTimeAward_DataGridColumn1_c(),_CrossContentionTimeAward_DataGridColumn2_i(),_CrossContentionTimeAward_DataGridColumn3_i(),_CrossContentionTimeAward_DataGridColumn4_i(),_CrossContentionTimeAward_DataGridColumn5_i(),_CrossContentionTimeAward_DataGridColumn6_i()]
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionTimeAward_Label2",
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.bottom = "5";
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
                  "id":"_CrossContentionTimeAward_LinkButton1",
                  "events":{"click":"___CrossContentionTimeAward_LinkButton1_click"},
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
      
      public var _CrossContentionTimeAward_Label2:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function CrossContentionTimeAward()
      {
         super();
         mx_internal::_document = this;
         this.width = 625;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionTimeAward_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionTimeAward._watcherSetupUtil = param1;
      }
      
      private function _CrossContentionTimeAward_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTimeAward_DataGridColumn5 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num4";
         _loc1_.setStyle("color",8421631);
         BindingManager.executeBindings(this,"_CrossContentionTimeAward_DataGridColumn5",_CrossContentionTimeAward_DataGridColumn5);
         return _loc1_;
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
      
      private function _CrossContentionTimeAward_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[110];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[104];
         _loc1_ = myStateList;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[68];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[69];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[70];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[71];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[72];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[126];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[108];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[86];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[46];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionTimeAward = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionTimeAward_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionTimeAwardWatcherSetupUtil");
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
      
      public function __btnPointsAward_click(param1:MouseEvent) : void
      {
         getTimeAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionSingleState() : DataGrid
      {
         return this._62409574ContentionSingleState;
      }
      
      private function init() : void
      {
      }
      
      public function set ContentionSingleState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._62409574ContentionSingleState;
         if(_loc2_ !== param1)
         {
            this._62409574ContentionSingleState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionSingleState",_loc2_,param1));
         }
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
      
      public function ___CrossContentionTimeAward_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      private function _CrossContentionTimeAward_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTimeAward_DataGridColumn4 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num3";
         _loc1_.setStyle("color",255);
         BindingManager.executeBindings(this,"_CrossContentionTimeAward_DataGridColumn4",_CrossContentionTimeAward_DataGridColumn4);
         return _loc1_;
      }
      
      private function _CrossContentionTimeAward_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTimeAward_DataGridColumn6 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num5";
         _loc1_.setStyle("color",16744512);
         BindingManager.executeBindings(this,"_CrossContentionTimeAward_DataGridColumn6",_CrossContentionTimeAward_DataGridColumn6);
         return _loc1_;
      }
      
      private function _CrossContentionTimeAward_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[110];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[104];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_Label1.text = param1;
         },"_CrossContentionTimeAward_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return myStateList;
         },function(param1:Object):void
         {
            ContentionSingleState.dataProvider = param1;
         },"ContentionSingleState.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_DataGridColumn2.headerText = param1;
         },"_CrossContentionTimeAward_DataGridColumn2.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[69];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_DataGridColumn3.headerText = param1;
         },"_CrossContentionTimeAward_DataGridColumn3.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_DataGridColumn4.headerText = param1;
         },"_CrossContentionTimeAward_DataGridColumn4.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_DataGridColumn5.headerText = param1;
         },"_CrossContentionTimeAward_DataGridColumn5.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_DataGridColumn6.headerText = param1;
         },"_CrossContentionTimeAward_DataGridColumn6.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[126];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_Label2.text = param1;
         },"_CrossContentionTimeAward_Label2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[108];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info.text = param1;
         },"info.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[86];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPointsAward.label = param1;
         },"btnPointsAward.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionTimeAward_LinkButton1.label = param1;
         },"_CrossContentionTimeAward_LinkButton1.label");
         result[11] = binding;
         return result;
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_CONTENTION_PANEL_U[134].toString();
         _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[134].toString(),Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPointsAward() : BasicDelayButton
      {
         return this._2132384574btnPointsAward;
      }
      
      private function _CrossContentionTimeAward_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTimeAward_DataGridColumn2 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num1";
         _loc1_.setStyle("color",16777215);
         BindingManager.executeBindings(this,"_CrossContentionTimeAward_DataGridColumn2",_CrossContentionTimeAward_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tInfo() : Canvas
      {
         return this._109412162tInfo;
      }
      
      public function open(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(!param1)
         {
            return;
         }
         info.visible = true;
         tInfo.visible = false;
         visible = true;
         myStateList.removeAll();
         var _loc2_:Array = [0,0,0,0,0,0];
         for(_loc3_ in param1.time)
         {
            _loc4_ = Number(param1.time[_loc3_]);
            if(_loc4_)
            {
               _loc2_[_loc3_] = _loc4_ + _loc2_[_loc3_];
            }
         }
         info.visible = false;
         tInfo.visible = true;
         myStateList.addItem({
            "aname":Language.CROSS_CONTENTION_PANEL_U[107],
            "num1":Math.floor(_loc2_[1] / 60000),
            "num2":Math.floor(_loc2_[2] / 60000),
            "num3":Math.floor(_loc2_[3] / 60000),
            "num4":Math.floor(_loc2_[4] / 60000),
            "num5":Math.floor(_loc2_[5] / 60000)
         });
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      public function onGetTimeAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(param1.flag)
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[127]);
         }
         else if(param1.data)
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[param1.data]);
         }
         else
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[128]);
         }
      }
      
      private function getTimeAward() : void
      {
         _core.remote.call("crossContentionGetTimeAward",new Responder(onGetTimeAward));
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
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      public function ___CrossContentionTimeAward_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _CrossContentionTimeAward_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.width = 110;
         _loc1_.dataField = "aname";
         return _loc1_;
      }
      
      private function _CrossContentionTimeAward_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionTimeAward_DataGridColumn3 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "num2";
         _loc1_.setStyle("color",32768);
         BindingManager.executeBindings(this,"_CrossContentionTimeAward_DataGridColumn3",_CrossContentionTimeAward_DataGridColumn3);
         return _loc1_;
      }
   }
}

