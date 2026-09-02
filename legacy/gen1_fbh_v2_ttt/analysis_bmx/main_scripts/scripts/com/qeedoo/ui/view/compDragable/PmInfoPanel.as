package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.containers.Canvas;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PmInfoPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var richPic:Class = PmInfoPanel_richPic;
      
      private var _112204332view1:Canvas;
      
      public var _PmInfoPanel_Label1:Label;
      
      public var _PmInfoPanel_Label2:Label;
      
      public var _PmInfoPanel_Label3:Label;
      
      public var _PmInfoPanel_Label4:Label;
      
      public var _PmInfoPanel_Label5:Label;
      
      public var _PmInfoPanel_Label6:Label;
      
      private var powerPic:Class = PmInfoPanel_powerPic;
      
      public var _PmInfoPanel_DataGridColumn10:DataGridColumn;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _1075281739vipInfoData:DataGrid;
      
      private var VIP_TEMP_LEVEL_DESC:String = "vip";
      
      public var _PmInfoPanel_Image1:Image;
      
      public var _PmInfoPanel_Image2:Image;
      
      public var _PmInfoPanel_Image3:Image;
      
      private var rightArray:Array = new Array();
      
      mx_internal var _watchers:Array = [];
      
      public var _PmInfoPanel_DataGridColumn1:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn2:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn3:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn4:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn5:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn6:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn7:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn8:DataGridColumn;
      
      public var _PmInfoPanel_DataGridColumn9:DataGridColumn;
      
      private var carePic:Class = PmInfoPanel_carePic;
      
      private var _112204333view2:Canvas;
      
      private var VIP_TEMP_VALUE_DESC:String = "value";
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1616773894view1Info:IntroText;
      
      mx_internal var _bindings:Array = [];
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":585,
               "height":340,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":39,
                        "width":565,
                        "height":285,
                        "styleName":"txtArea",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":120,
                                 "height":24,
                                 "x":20,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":120,
                                 "height":24,
                                 "x":140,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"view1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":31,
                                 "width":545,
                                 "height":244,
                                 "visible":true,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":169,
                                          "height":68,
                                          "x":10,
                                          "y":3,
                                          "styleName":"txtArea",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PmInfoPanel_Image1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":54,
                                                   "height":55,
                                                   "x":15,
                                                   "y":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PmInfoPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77,
                                                   "y":10,
                                                   "width":60,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PmInfoPanel_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77,
                                                   "y":33,
                                                   "width":60,
                                                   "height":25
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
                                          "width":169,
                                          "height":68,
                                          "x":179,
                                          "y":3,
                                          "styleName":"txtArea",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PmInfoPanel_Image2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":54,
                                                   "height":55,
                                                   "x":15,
                                                   "y":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PmInfoPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77,
                                                   "y":10,
                                                   "width":60,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PmInfoPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77,
                                                   "y":33,
                                                   "width":60,
                                                   "height":25
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
                                          "width":169,
                                          "height":68,
                                          "x":348,
                                          "y":3,
                                          "styleName":"txtArea",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PmInfoPanel_Image3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":54,
                                                   "height":55,
                                                   "x":15,
                                                   "y":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PmInfoPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77,
                                                   "y":10,
                                                   "width":60,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PmInfoPanel_Label6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":77,
                                                   "y":33,
                                                   "width":60,
                                                   "height":25
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"view1Info",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":74,
                                          "x":10,
                                          "width":525,
                                          "height":160
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"view2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":31,
                                 "width":545,
                                 "height":244,
                                 "styleName":"txtArea",
                                 "visible":false,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"vipInfoData",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "width":505,
                                          "x":5,
                                          "horizontalScrollPolicy":"off",
                                          "columns":[_PmInfoPanel_DataGridColumn1_i(),_PmInfoPanel_DataGridColumn2_i(),_PmInfoPanel_DataGridColumn3_i(),_PmInfoPanel_DataGridColumn4_i(),_PmInfoPanel_DataGridColumn5_i(),_PmInfoPanel_DataGridColumn6_i(),_PmInfoPanel_DataGridColumn7_i(),_PmInfoPanel_DataGridColumn8_i(),_PmInfoPanel_DataGridColumn9_i(),_PmInfoPanel_DataGridColumn10_i()]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function PmInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 585;
         this.height = 340;
         this.styleName = "StandardContent";
         this.x = 92.5;
         this.y = 76;
         this.addEventListener("creationComplete",___PmInfoPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PmInfoPanel._watcherSetupUtil = param1;
      }
      
      private function init() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc1_:Array = GameData.d[GamePredef.TBL_PM_RIGHT];
         _loc1_.sortOn("sortIndex",Array.NUMERIC);
         for(_loc2_ in _loc1_)
         {
            if(Boolean(_loc1_[_loc2_]) && Number(_loc1_[_loc2_].id) != 15)
            {
               _loc3_ = new Object();
               _loc3_["desc"] = _loc1_[_loc2_]["desc2"];
               _loc4_ = 1;
               while(_loc4_ <= 9)
               {
                  if(Boolean(_loc1_[_loc2_]["vip" + _loc4_]) && Number(_loc1_[_loc2_]["vip" + _loc4_]) > 0)
                  {
                     _loc3_["vip" + _loc4_] = "√";
                     if(Boolean(_loc1_[_loc2_]["value" + _loc4_]) && Number(_loc1_[_loc2_].id) != 1)
                     {
                        _loc3_["vip" + _loc4_] = _loc1_[_loc2_]["value" + _loc4_];
                        if(Boolean(_loc1_[_loc2_]["value" + _loc4_]) && (Number(_loc1_[_loc2_].id) == 3 || Number(_loc1_[_loc2_].id) == 30 || Number(_loc1_[_loc2_].id) == 6 || Number(_loc1_[_loc2_].id) == 8 || Number(_loc1_[_loc2_].id) == 9))
                        {
                           _loc3_["vip" + _loc4_] = _loc1_[_loc2_]["value" + _loc4_] + "%";
                        }
                     }
                  }
                  else
                  {
                     _loc3_["vip" + _loc4_] = "×";
                  }
                  _loc4_++;
               }
               rightArray.push(_loc3_);
            }
         }
         if(view2)
         {
            vipInfoData.dataProvider = rightArray;
         }
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
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      private function _PmInfoPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 140;
         _loc1_.dataField = "desc";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn1",_PmInfoPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function _PmInfoPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn9 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip8";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn9",_PmInfoPanel_DataGridColumn9);
         return _loc1_;
      }
      
      private function _PmInfoPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip4";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn5",_PmInfoPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function _PmInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PM_INFO_PANEL[0];
         _loc1_ = Language.PM_INFO_PANEL[1];
         _loc1_ = Language.PM_INFO_PANEL[2];
         _loc1_ = richPic;
         _loc1_ = Language.PM_INFO_PANEL[14];
         _loc1_ = Language.PM_INFO_PANEL[17];
         _loc1_ = carePic;
         _loc1_ = Language.PM_INFO_PANEL[13];
         _loc1_ = Language.PM_INFO_PANEL[16];
         _loc1_ = powerPic;
         _loc1_ = Language.PM_INFO_PANEL[12];
         _loc1_ = Language.PM_INFO_PANEL[15];
         _loc1_ = Language.PM_INFO_PANEL[18];
         _loc1_ = Language.PM_INFO_PANEL[3];
         _loc1_ = Language.PM_INFO_PANEL[4];
         _loc1_ = Language.PM_INFO_PANEL[5];
         _loc1_ = Language.PM_INFO_PANEL[6];
         _loc1_ = Language.PM_INFO_PANEL[7];
         _loc1_ = Language.PM_INFO_PANEL[8];
         _loc1_ = Language.PM_INFO_PANEL[9];
         _loc1_ = Language.PM_INFO_PANEL[10];
         _loc1_ = Language.PM_INFO_PANEL[19];
         _loc1_ = Language.PM_INFO_PANEL[20];
      }
      
      [Bindable(event="propertyChange")]
      public function get view2() : Canvas
      {
         return this._112204333view2;
      }
      
      [Bindable(event="propertyChange")]
      public function get view1() : Canvas
      {
         return this._112204332view1;
      }
      
      private function _PmInfoPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn8 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip7";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn8",_PmInfoPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function set view1(param1:Canvas) : void
      {
         var _loc2_:Object = this._112204332view1;
         if(_loc2_ !== param1)
         {
            this._112204332view1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"view1",_loc2_,param1));
         }
      }
      
      public function set view2(param1:Canvas) : void
      {
         var _loc2_:Object = this._112204333view2;
         if(_loc2_ !== param1)
         {
            this._112204333view2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"view2",_loc2_,param1));
         }
      }
      
      private function _PmInfoPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn4 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip3";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn4",_PmInfoPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      public function set vipInfoData(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1075281739vipInfoData;
         if(_loc2_ !== param1)
         {
            this._1075281739vipInfoData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipInfoData",_loc2_,param1));
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PmInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PmInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PmInfoPanelWatcherSetupUtil");
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
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function _PmInfoPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip2";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn3",_PmInfoPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function _PmInfoPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn7 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip6";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn7",_PmInfoPanel_DataGridColumn7);
         return _loc1_;
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
      
      private function _PmInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return richPic;
         },function(param1:Object):void
         {
            _PmInfoPanel_Image1.source = param1;
         },"_PmInfoPanel_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_Label1.text = param1;
         },"_PmInfoPanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_Label2.text = param1;
         },"_PmInfoPanel_Label2.text");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return carePic;
         },function(param1:Object):void
         {
            _PmInfoPanel_Image2.source = param1;
         },"_PmInfoPanel_Image2.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_Label3.text = param1;
         },"_PmInfoPanel_Label3.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_Label4.text = param1;
         },"_PmInfoPanel_Label4.text");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return powerPic;
         },function(param1:Object):void
         {
            _PmInfoPanel_Image3.source = param1;
         },"_PmInfoPanel_Image3.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_Label5.text = param1;
         },"_PmInfoPanel_Label5.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_Label6.text = param1;
         },"_PmInfoPanel_Label6.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            view1Info.text = param1;
         },"view1Info.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn1.headerText = param1;
         },"_PmInfoPanel_DataGridColumn1.headerText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn2.headerText = param1;
         },"_PmInfoPanel_DataGridColumn2.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn3.headerText = param1;
         },"_PmInfoPanel_DataGridColumn3.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn4.headerText = param1;
         },"_PmInfoPanel_DataGridColumn4.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn5.headerText = param1;
         },"_PmInfoPanel_DataGridColumn5.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn6.headerText = param1;
         },"_PmInfoPanel_DataGridColumn6.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn7.headerText = param1;
         },"_PmInfoPanel_DataGridColumn7.headerText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn8.headerText = param1;
         },"_PmInfoPanel_DataGridColumn8.headerText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn9.headerText = param1;
         },"_PmInfoPanel_DataGridColumn9.headerText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_INFO_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PmInfoPanel_DataGridColumn10.headerText = param1;
         },"_PmInfoPanel_DataGridColumn10.headerText");
         result[22] = binding;
         return result;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      private function _PmInfoPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn10 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip9";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn10",_PmInfoPanel_DataGridColumn10);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get vipInfoData() : DataGrid
      {
         return this._1075281739vipInfoData;
      }
      
      private function _PmInfoPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn6 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip5";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn6",_PmInfoPanel_DataGridColumn6);
         return _loc1_;
      }
      
      private function _PmInfoPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PmInfoPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "vip1";
         BindingManager.executeBindings(this,"_PmInfoPanel_DataGridColumn2",_PmInfoPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function ___PmInfoPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function tabClick(param1:Number) : void
      {
         if(param1 == 1)
         {
            view2.visible = false;
            view1.visible = true;
            tabBtn0.selected = true;
            tabBtn1.selected = false;
         }
         else
         {
            view2.visible = true;
            view1.visible = false;
            tabBtn1.selected = true;
            tabBtn0.selected = false;
         }
      }
      
      public function set view1Info(param1:IntroText) : void
      {
         var _loc2_:Object = this._1616773894view1Info;
         if(_loc2_ !== param1)
         {
            this._1616773894view1Info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"view1Info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get view1Info() : IntroText
      {
         return this._1616773894view1Info;
      }
   }
}

