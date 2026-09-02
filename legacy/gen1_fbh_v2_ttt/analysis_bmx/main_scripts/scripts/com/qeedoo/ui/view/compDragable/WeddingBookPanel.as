package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.DataGrid;
   import mx.controls.NumericStepper;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WeddingBookPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2070514658ns_hour:NumericStepper;
      
      public var _WeddingBookPanel_BasicGlowButton2:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _565264340cb_line:ComboBox;
      
      public var _WeddingBookPanel_DataGridColumn1:DataGridColumn;
      
      public var _WeddingBookPanel_DataGridColumn3:DataGridColumn;
      
      public var _WeddingBookPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _709352686isBooked:Boolean = false;
      
      public var _WeddingBookPanel_DataGridColumn2:DataGridColumn;
      
      private var _3203dg:DataGrid;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _WeddingBookPanel_RoundedLabel1:RoundedLabel;
      
      public var _WeddingBookPanel_RoundedLabel3:RoundedLabel;
      
      public var _WeddingBookPanel_RoundedLabel4:RoundedLabel;
      
      public var _WeddingBookPanel_RoundedLabel2:RoundedLabel;
      
      private var _1057325618ns_minute:NumericStepper;
      
      private var _1237572437cav_reserve:SimpleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1480776481_cbIdx:int;
      
      private var _736862982ch_flag:CheckBox;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":370,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WeddingBookPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.bottom = "85";
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"dg",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "x":10,
                                 "y":10,
                                 "columns":[_WeddingBookPanel_DataGridColumn1_i(),_WeddingBookPanel_DataGridColumn2_i(),_WeddingBookPanel_DataGridColumn3_i(),_WeddingBookPanel_DataGridColumn4_c()]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"cav_reserve",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":true,
                        "styleName":"CanvasBorder",
                        "height":60,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_WeddingBookPanel_RoundedLabel1",
                           "stylesFactory":function():void
                           {
                              this.top = "5";
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"cb_line",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":42,
                                 "y":25,
                                 "labelField":"name",
                                 "width":95
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_hour",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":145,
                                 "y":28,
                                 "minimum":0,
                                 "maximum":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns_minute",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":225,
                                 "y":28,
                                 "minimum":0,
                                 "maximum":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_WeddingBookPanel_RoundedLabel2",
                           "stylesFactory":function():void
                           {
                              this.top = "30";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":201};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_WeddingBookPanel_RoundedLabel3",
                           "stylesFactory":function():void
                           {
                              this.top = "29";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "width":30,
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_WeddingBookPanel_RoundedLabel4",
                           "stylesFactory":function():void
                           {
                              this.top = "30";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":280};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_WeddingBookPanel_BasicGlowButton1",
                           "events":{"click":"___WeddingBookPanel_BasicGlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.left = "310";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_WeddingBookPanel_BasicGlowButton2",
                           "events":{"click":"___WeddingBookPanel_BasicGlowButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.left = "310";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"ch_flag",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":294,
                                 "y":4
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var bookedArr:ArrayCollection;
      
      public var _WeddingBookPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public function WeddingBookPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 370;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 308;
         this.addEventListener("creationComplete",___WeddingBookPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WeddingBookPanel._watcherSetupUtil = param1;
      }
      
      private function bookWeddingHall() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            var _loc2_:Date = null;
            var _loc3_:Object = null;
            if(param1.detail == Alert.YES)
            {
               _loc2_ = new Date();
               _loc3_ = new Object();
               _loc3_.line = cb_line.selectedItem.id;
               _loc3_.hour = ns_hour.value;
               _loc3_.minute = ns_minute.value;
               if(ch_flag.selected)
               {
                  _loc3_.flag = GamePredef.FLAG_PEOPLE_ENTER_INVITATION;
               }
               else
               {
                  _loc3_.flag = GamePredef.FLAG_PEOPLE_ENTER_FREE;
               }
               _core.remote.bookWeddingHall(_loc3_);
            }
         };
         var msg:String = Language.WEDDING_BOOK_PANEL_U[18];
         msg = msg.replace("{line}",cb_line.selectedItem.name).replace("{hour}",ns_hour.value).replace("{minute}",ns_minute.value);
         Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
      }
      
      private function setEnable(param1:Boolean) : void
      {
         ns_hour.enabled = param1;
         ns_minute.enabled = param1;
         cb_line.enabled = param1;
         ch_flag.enabled = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ch_flag() : CheckBox
      {
         return this._736862982ch_flag;
      }
      
      [Bindable(event="propertyChange")]
      public function get dg() : DataGrid
      {
         return this._3203dg;
      }
      
      public function set cb_line(param1:ComboBox) : void
      {
         var _loc2_:Object = this._565264340cb_line;
         if(_loc2_ !== param1)
         {
            this._565264340cb_line = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb_line",_loc2_,param1));
         }
      }
      
      public function ___WeddingBookPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WeddingBookPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WeddingBookPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WeddingBookPanelWatcherSetupUtil");
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
      
      private function _WeddingBookPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[0];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[1];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[2];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[3];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[4];
         _loc1_ = _cbIdx;
         _loc1_ = _core._lineList;
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[16];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[15];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[17];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[5];
         _loc1_ = !isBooked;
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[6];
         _loc1_ = isBooked;
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[7];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[8];
      }
      
      public function set ch_flag(param1:CheckBox) : void
      {
         var _loc2_:Object = this._736862982ch_flag;
         if(_loc2_ !== param1)
         {
            this._736862982ch_flag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ch_flag",_loc2_,param1));
         }
      }
      
      public function set dg(param1:DataGrid) : void
      {
         var _loc2_:Object = this._3203dg;
         if(_loc2_ !== param1)
         {
            this._3203dg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isBooked() : Boolean
      {
         return this._709352686isBooked;
      }
      
      private function _WeddingBookPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WeddingBookPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "lineName";
         BindingManager.executeBindings(this,"_WeddingBookPanel_DataGridColumn1",_WeddingBookPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function _WeddingBookPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WeddingBookPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "time";
         _loc1_.width = 85;
         BindingManager.executeBindings(this,"_WeddingBookPanel_DataGridColumn3",_WeddingBookPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function init() : void
      {
      }
      
      public function set ns_minute(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1057325618ns_minute;
         if(_loc2_ !== param1)
         {
            this._1057325618ns_minute = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_minute",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_hour() : NumericStepper
      {
         return this._2070514658ns_hour;
      }
      
      public function set cav_reserve(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1237572437cav_reserve;
         if(_loc2_ !== param1)
         {
            this._1237572437cav_reserve = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav_reserve",_loc2_,param1));
         }
      }
      
      private function set isBooked(param1:Boolean) : void
      {
         var _loc2_:Object = this._709352686isBooked;
         if(_loc2_ !== param1)
         {
            this._709352686isBooked = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBooked",_loc2_,param1));
         }
      }
      
      public function ___WeddingBookPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         bookWeddingHall();
      }
      
      private function setValue(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Date = null;
         for(_loc2_ in _core._lineList)
         {
            if(_core._lineList.getItemAt(_loc2_).id == param1.line)
            {
               _cbIdx = _loc2_;
               break;
            }
         }
         _loc3_ = new Date();
         _loc3_.setTime(param1.date);
         ns_hour.value = _loc3_.getHours();
         ns_minute.value = _loc3_.getMinutes();
         if(param1.flag == GamePredef.FLAG_PEOPLE_ENTER_FREE)
         {
            ch_flag.selected = false;
         }
         else
         {
            ch_flag.selected = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minute() : NumericStepper
      {
         return this._1057325618ns_minute;
      }
      
      private function get dateFormatter() : DateFormatter
      {
         var _loc1_:DateFormatter = null;
         if(_loc1_ == null)
         {
            _loc1_ = new DateFormatter();
            _loc1_.formatString = "MM.DD HH:NN";
         }
         return _loc1_;
      }
      
      private function _WeddingBookPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_BasicTitleCanvas1.text = param1;
         },"_WeddingBookPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_DataGridColumn1.headerText = param1;
         },"_WeddingBookPanel_DataGridColumn1.headerText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_DataGridColumn2.headerText = param1;
         },"_WeddingBookPanel_DataGridColumn2.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_DataGridColumn3.headerText = param1;
         },"_WeddingBookPanel_DataGridColumn3.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_RoundedLabel1.text = param1;
         },"_WeddingBookPanel_RoundedLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return _cbIdx;
         },function(param1:int):void
         {
            cb_line.selectedIndex = param1;
         },"cb_line.selectedIndex");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return _core._lineList;
         },function(param1:Object):void
         {
            cb_line.dataProvider = param1;
         },"cb_line.dataProvider");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_RoundedLabel2.text = param1;
         },"_WeddingBookPanel_RoundedLabel2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_RoundedLabel3.text = param1;
         },"_WeddingBookPanel_RoundedLabel3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_RoundedLabel4.text = param1;
         },"_WeddingBookPanel_RoundedLabel4.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_BasicGlowButton1.label = param1;
         },"_WeddingBookPanel_BasicGlowButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isBooked;
         },function(param1:Boolean):void
         {
            _WeddingBookPanel_BasicGlowButton1.visible = param1;
         },"_WeddingBookPanel_BasicGlowButton1.visible");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WeddingBookPanel_BasicGlowButton2.label = param1;
         },"_WeddingBookPanel_BasicGlowButton2.label");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBooked;
         },function(param1:Boolean):void
         {
            _WeddingBookPanel_BasicGlowButton2.visible = param1;
         },"_WeddingBookPanel_BasicGlowButton2.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ch_flag.label = param1;
         },"ch_flag.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ch_flag.toolTip = param1;
         },"ch_flag.toolTip");
         result[15] = binding;
         return result;
      }
      
      private function set _cbIdx(param1:int) : void
      {
         var _loc2_:Object = this._1480776481_cbIdx;
         if(_loc2_ !== param1)
         {
            this._1480776481_cbIdx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_cbIdx",_loc2_,param1));
         }
      }
      
      public function set ns_hour(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._2070514658ns_hour;
         if(_loc2_ !== param1)
         {
            this._2070514658ns_hour = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_hour",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cav_reserve() : SimpleCanvas
      {
         return this._1237572437cav_reserve;
      }
      
      public function onInitBookList(param1:Object) : void
      {
         var _loc2_:Date = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         isBooked = false;
         setEnable(true);
         bookedArr = new ArrayCollection();
         _loc2_ = new Date();
         for each(_loc3_ in param1)
         {
            if(_loc3_)
            {
               if(_loc3_.cid == _core.player.id || _loc3_.pid == _core.player.id)
               {
                  isBooked = true;
                  setEnable(false);
                  setValue(_loc3_);
               }
               _loc3_.couples = _loc3_.cname + "," + _loc3_.pname;
               _loc2_.setTime(_loc3_.date);
               _loc3_.time = dateFormatter.format(_loc2_);
               for(_loc4_ in _core._lineList)
               {
                  if(_core._lineList.getItemAt(_loc4_).id == _loc3_.line)
                  {
                     _loc3_.lineName = _core._lineList.getItemAt(_loc4_).name;
                     break;
                  }
               }
               bookedArr.addItem(_loc3_);
            }
         }
         if(!isBooked)
         {
            _loc5_ = new Date().getTime();
            _loc2_ = new Date();
            _loc2_.setTime(_loc5_ + 15 * 60 * 1000);
            ns_hour.value = _loc2_.getHours();
            ns_minute.value = _loc2_.getMinutes();
         }
         dg.dataProvider = bookedArr;
      }
      
      private function cancelWeddingHall() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.cancelWeddingHall();
            }
         };
         Alert.show(Language.WEDDING_BOOK_PANEL_U[19],"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get cb_line() : ComboBox
      {
         return this._565264340cb_line;
      }
      
      private function _WeddingBookPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WeddingBookPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "couples";
         BindingManager.executeBindings(this,"_WeddingBookPanel_DataGridColumn2",_WeddingBookPanel_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _cbIdx() : int
      {
         return this._1480776481_cbIdx;
      }
      
      private function _WeddingBookPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = WeddingBookPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _WeddingBookPanel_DataGridColumn4_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.width = 60;
         _loc1_.itemRenderer = _WeddingBookPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      public function ___WeddingBookPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         cancelWeddingHall();
      }
   }
}

