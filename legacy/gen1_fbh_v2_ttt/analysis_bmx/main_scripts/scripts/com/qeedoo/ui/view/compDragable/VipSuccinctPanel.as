package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlotEquFunc;
   import com.qeedoo.ui.view.comp.RendererLabel3;
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
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class VipSuccinctPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var resultArr:Object;
      
      private var _1978100406select2:CheckBox;
      
      public var oldPro:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":450,
               "height":360,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_VipSuccinctPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ItemSlotEquFunc,
                  "id":"MwSuccinct",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":35,
                        "movable":false,
                        "x":20,
                        "dragable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"lock0",
                  "events":{"change":"__lock0_change"},
                  "stylesFactory":function():void
                  {
                     this.left = "65";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "y":54
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"lock1",
                  "events":{"change":"__lock1_change"},
                  "stylesFactory":function():void
                  {
                     this.left = "183";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "y":54
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"lock2",
                  "events":{"change":"__lock2_change"},
                  "stylesFactory":function():void
                  {
                     this.left = "301";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "y":54
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_VipSuccinctPanel_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":75
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"oldPro0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":65,
                        "y":75
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"oldPro1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":183,
                        "y":75
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"oldPro2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":301,
                        "y":75
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"dpSucc",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.top = "90";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":410,
                        "styleName":"RoundedGradientBorder",
                        "height":210,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select0",
                           "events":{"change":"__select0_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select1",
                           "events":{"change":"__select1_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select2",
                           "events":{"change":"__select2_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":45
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select3",
                           "events":{"change":"__select3_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select4",
                           "events":{"change":"__select4_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":85
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select5",
                           "events":{"change":"__select5_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":105
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select6",
                           "events":{"change":"__select6_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":125
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select7",
                           "events":{"change":"__select7_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":145
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select8",
                           "events":{"change":"__select8_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":165
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"select9",
                           "events":{"change":"__select9_change"},
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "y":185
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"vipSuccinctList",
                           "stylesFactory":function():void
                           {
                              this.left = "45";
                              this.top = "5";
                              this.bottom = "5";
                              this.right = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "headerHeight":0,
                                 "columns":[_VipSuccinctPanel_DataGridColumn1_c()]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"itemInfo",
                  "stylesFactory":function():void
                  {
                     this.bottom = "40";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":55};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"costInfo",
                  "stylesFactory":function():void
                  {
                     this.right = "67";
                     this.bottom = "40";
                     this.color = 16777215;
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_VipSuccinctPanel_BasicGlowButton1",
                  "events":{"click":"___VipSuccinctPanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "155";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "width":45
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"succinctVipBtn",
                  "events":{"click":"__succinctVipBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "75";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"autoBuy",
                  "stylesFactory":function():void
                  {
                     this.bottom = "15";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":35};
                  }
               })]
            };
         }
      });
      
      private var _1978100405select1:CheckBox;
      
      public var _VipSuccinctPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1978100404select0:CheckBox;
      
      private var _1326029586dpSucc:Canvas;
      
      private var _103145573lock0:CheckBox;
      
      private var _1379509782oldPro0:Label;
      
      public var _alert:Alert;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var mwId:int = -1;
      
      private var _1978100413select9:CheckBox;
      
      public var _VipSuccinctPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _1379509781oldPro1:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _1420671817succinctVipBtn:BasicGlowButton;
      
      public var _VipSuccinctPanel_Label1:Label;
      
      private var _273317502MwSuccinct:ItemSlotEquFunc;
      
      private var _1978100412select8:CheckBox;
      
      private var _425010661costInfo:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _103145575lock2:CheckBox;
      
      private var _1379509780oldPro2:Label;
      
      private var _1978100409select5:CheckBox;
      
      private var _646343081autoBuy:CheckBox;
      
      private var _1978100411select7:CheckBox;
      
      private var _1978100408select4:CheckBox;
      
      private var _1177195105itemInfo:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1978100410select6:CheckBox;
      
      public var succinctId:int = -1;
      
      public var isChangeSlot:Boolean = false;
      
      private var _1978100407select3:CheckBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _103145574lock1:CheckBox;
      
      private var _936841453vipSuccinctList:DataGrid;
      
      public function VipSuccinctPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 450;
         this.height = 360;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___VipSuccinctPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VipSuccinctPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPro0() : Label
      {
         return this._1379509782oldPro0;
      }
      
      public function set MwSuccinct(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._273317502MwSuccinct;
         if(_loc2_ !== param1)
         {
            this._273317502MwSuccinct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MwSuccinct",_loc2_,param1));
         }
      }
      
      public function clearSuccDb() : void
      {
         if(!this.initialized)
         {
            return;
         }
         dpSucc.visible = false;
         this.vipSuccinctList.dataProvider = null;
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            this["select" + _loc1_].visible = false;
            this["select" + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      public function init() : void
      {
         this.visible = true;
         if(this.mwId > 0)
         {
            this.eid = this.mwId;
         }
         this.updateMWSuccView(oldPro,resultArr);
      }
      
      [Bindable(event="propertyChange")]
      public function get vipSuccinctList() : DataGrid
      {
         return this._936841453vipSuccinctList;
      }
      
      public function __select3_change(param1:Event) : void
      {
         checkBoxChanged(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPro2() : Label
      {
         return this._1379509780oldPro2;
      }
      
      [Bindable(event="propertyChange")]
      public function get costInfo() : Label
      {
         return this._425010661costInfo;
      }
      
      public function set vipSuccinctList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._936841453vipSuccinctList;
         if(_loc2_ !== param1)
         {
            this._936841453vipSuccinctList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vipSuccinctList",_loc2_,param1));
         }
      }
      
      public function getColorIndex(param1:Number, param2:Object) : int
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            if(param1 <= param2["top" + _loc4_])
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function _VipSuccinctPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "pro";
         _loc1_.itemRenderer = _VipSuccinctPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      public function saveSuccinct() : void
      {
         var i:int;
         var func:Function;
         var saveFlag:int = 0;
         if(!this.MwSuccinct.giid || this.MwSuccinct.giid < 0 || !vipSuccinctList.dataProvider.length)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[217],"",Alert.YES,null,null);
            return;
         }
         saveFlag = -1;
         i = 0;
         while(i < 10)
         {
            if(this["select" + i].selected)
            {
               saveFlag = i;
            }
            i++;
         }
         if(saveFlag < 0)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[222],"",Alert.YES,null,null);
            return;
         }
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.nc.call("onSureSuccinctMW",new Responder(onSureSuccinctMW),1,saveFlag);
            }
         };
         _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[229],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function ___VipSuccinctPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         saveSuccinct();
      }
      
      public function __select2_change(param1:Event) : void
      {
         checkBoxChanged(2);
      }
      
      public function set costInfo(param1:Label) : void
      {
         var _loc2_:Object = this._425010661costInfo;
         if(_loc2_ !== param1)
         {
            this._425010661costInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costInfo",_loc2_,param1));
         }
      }
      
      public function __select9_change(param1:Event) : void
      {
         checkBoxChanged(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get autoBuy() : CheckBox
      {
         return this._646343081autoBuy;
      }
      
      public function updateMWSuccView(param1:Object, param2:Object, param3:Boolean = true) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:ArrayCollection = null;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         if(!initialized)
         {
            this.oldPro = param1;
            this.resultArr = param2;
            return;
         }
         succinctVipBtn.enabled = true;
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               if(param1["succ" + _loc7_])
               {
                  this["oldPro" + _loc7_].htmlText = this.encodePropInfo(param1["succ" + _loc7_]);
                  this["lock" + _loc7_].visible = true;
                  if(isChangeSlot)
                  {
                     this["lock" + _loc7_].selected = false;
                  }
               }
               else
               {
                  this["oldPro" + _loc7_].htmlText = "";
                  this["lock" + _loc7_].visible = false;
                  this["lock" + _loc7_].selected = false;
               }
               _loc7_++;
            }
         }
         if(param2)
         {
            _loc8_ = new ArrayCollection();
            _loc9_ = 0;
            while(_loc9_ < 10)
            {
               if(param2["vip" + _loc9_])
               {
                  this["select" + _loc9_].visible = true;
                  this["select" + _loc9_].selected = false;
                  _loc11_ = {};
                  _loc6_ = 0;
                  while(_loc6_ < 3)
                  {
                     if(param2["vip" + _loc9_]["succ" + _loc6_])
                     {
                        _loc12_ = GamePredef.ACTIVATE_MW_PRO[param2["vip" + _loc9_]["succ" + _loc6_]["propType"]];
                        _loc13_ = getColorIndex(param2["vip" + _loc9_]["succ" + _loc6_]["propVal"],_loc12_);
                        _loc11_["pro" + _loc6_] = GamePredef.EQUIPT_PROP_NAME[param2["vip" + _loc9_]["succ" + _loc6_]["propType"]] + " +" + param2["vip" + _loc9_]["succ" + _loc6_]["propVal"] + (_loc13_ == 3 ? Language.EQUIPTFUNCPANEL_U[223] : "");
                        _loc11_["color" + _loc6_] = GamePredef.MW_PRO_COLOR[_loc13_];
                     }
                     else if(param1["succ" + _loc6_])
                     {
                        _loc12_ = GamePredef.ACTIVATE_MW_PRO[param1["succ" + _loc6_]["propType"]];
                        _loc13_ = getColorIndex(param1["succ" + _loc6_]["propVal"],_loc12_);
                        _loc11_["pro" + _loc6_] = GamePredef.EQUIPT_PROP_NAME[param1["succ" + _loc6_]["propType"]] + " +" + param1["succ" + _loc6_]["propVal"] + (_loc13_ == 3 ? Language.EQUIPTFUNCPANEL_U[223] : "");
                        _loc11_["color" + _loc6_] = GamePredef.MW_PRO_COLOR[_loc13_];
                     }
                     else
                     {
                        _loc11_["pro" + _loc6_] = "";
                        _loc11_["color" + _loc6_] = GamePredef.MW_PRO_COLOR[0];
                     }
                     _loc6_++;
                  }
                  _loc11_.id = _loc9_;
                  _loc8_.addItem(_loc11_);
               }
               else
               {
                  this["select" + _loc9_].visible = false;
               }
               _loc9_++;
            }
            vipSuccinctList.dataProvider = _loc8_;
            dpSucc.visible = true;
            _loc10_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
            if(_loc10_)
            {
               _loc10_.updateItemNum();
            }
         }
         else if(param3)
         {
            clearSuccDb();
         }
         var _loc4_:int = int(_core.getItemNum(29,GamePredef.MW_SUCC_ITEM).num);
         itemInfo.text = Language.EQUIPTFUNCPANEL_U[208] + _loc4_;
         var _loc5_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < 3)
         {
            if(this["lock" + _loc6_].visible)
            {
               _loc5_ += 10;
            }
            if(this["lock" + _loc6_].selected)
            {
               _loc5_ += 10;
            }
            _loc6_++;
         }
         costInfo.text = Language.EQUIPTFUNCPANEL_U[209].replace("{num}",_loc5_);
         isChangeSlot = false;
      }
      
      public function __select1_change(param1:Event) : void
      {
         checkBoxChanged(1);
      }
      
      public function succinctVip() : void
      {
         var view:Object;
         var func:Function = null;
         if(!this.MwSuccinct.giid || this.MwSuccinct.giid < 0)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[226],"",Alert.YES,null,null);
            return;
         }
         view = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         if(view)
         {
            if(view.haveSuccData())
            {
               func = function(param1:CloseEvent):*
               {
                  var _loc2_:Object = null;
                  if(param1.detail == Alert.YES)
                  {
                     _succinctVip();
                     _loc2_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
                     if(_loc2_)
                     {
                        _loc2_.cleanSuccData();
                     }
                  }
               };
               if(_alert)
               {
                  PopUpManager.removePopUp(_alert);
                  _alert = null;
               }
               _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[220],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               _succinctVip();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lock1() : CheckBox
      {
         return this._103145574lock1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lock2() : CheckBox
      {
         return this._103145575lock2;
      }
      
      public function __lock2_change(param1:Event) : void
      {
         changeSelected(2);
      }
      
      public function updateItemNum() : void
      {
         if(!this.initialized)
         {
            return;
         }
         var _loc1_:int = int(_core.getItemNum(29,GamePredef.MW_SUCC_ITEM).num);
         itemInfo.text = Language.EQUIPTFUNCPANEL_U[208] + _loc1_;
      }
      
      public function changeSelected(param1:int) : void
      {
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            if(this["lock" + _loc4_].visible)
            {
               _loc3_++;
            }
            if(this["lock" + _loc4_].selected)
            {
               _loc2_.push(_loc4_);
            }
            _loc4_++;
         }
         if(_loc3_ == 1 || _loc3_ - _loc2_.length == 0)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[228],"",Alert.YES,null,null);
            this["lock" + param1].selected = false;
            return;
         }
         var _loc5_:int = (_loc2_.length + _loc3_) * 10;
         costInfo.text = Language.EQUIPTFUNCPANEL_U[209].replace("{num}",_loc5_);
      }
      
      public function set select3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100407select3;
         if(_loc2_ !== param1)
         {
            this._1978100407select3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select3",_loc2_,param1));
         }
      }
      
      public function set select0(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100404select0;
         if(_loc2_ !== param1)
         {
            this._1978100404select0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select0",_loc2_,param1));
         }
      }
      
      public function set select1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100405select1;
         if(_loc2_ !== param1)
         {
            this._1978100405select1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select1",_loc2_,param1));
         }
      }
      
      private function _VipSuccinctPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererLabel3;
         return _loc1_;
      }
      
      public function __select8_change(param1:Event) : void
      {
         checkBoxChanged(8);
      }
      
      [Bindable(event="propertyChange")]
      public function get lock0() : CheckBox
      {
         return this._103145573lock0;
      }
      
      public function set select4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100408select4;
         if(_loc2_ !== param1)
         {
            this._1978100408select4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select4",_loc2_,param1));
         }
      }
      
      public function set select8(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100412select8;
         if(_loc2_ !== param1)
         {
            this._1978100412select8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInfo() : Label
      {
         return this._1177195105itemInfo;
      }
      
      public function set select9(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100413select9;
         if(_loc2_ !== param1)
         {
            this._1978100413select9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select9",_loc2_,param1));
         }
      }
      
      public function __select0_change(param1:Event) : void
      {
         checkBoxChanged(0);
      }
      
      public function set select7(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100411select7;
         if(_loc2_ !== param1)
         {
            this._1978100411select7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select7",_loc2_,param1));
         }
      }
      
      public function set eid(param1:int) : *
      {
         this.visible = true;
         if(!initialized)
         {
            this.mwId = param1;
            return;
         }
         if(param1 < 0)
         {
            return;
         }
         if(param1 != MwSuccinct.giid)
         {
            MwSuccinct.type = GamePredef.TBL_EQUIPT_INSTANCE;
            MwSuccinct.giid = param1;
            succinctId = param1;
         }
      }
      
      public function set select5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100409select5;
         if(_loc2_ !== param1)
         {
            this._1978100409select5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MwSuccinct() : ItemSlotEquFunc
      {
         return this._273317502MwSuccinct;
      }
      
      public function set select6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100410select6;
         if(_loc2_ !== param1)
         {
            this._1978100410select6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select6",_loc2_,param1));
         }
      }
      
      public function set select2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1978100406select2;
         if(_loc2_ !== param1)
         {
            this._1978100406select2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select2",_loc2_,param1));
         }
      }
      
      public function set succinctVipBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1420671817succinctVipBtn;
         if(_loc2_ !== param1)
         {
            this._1420671817succinctVipBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"succinctVipBtn",_loc2_,param1));
         }
      }
      
      public function __lock1_change(param1:Event) : void
      {
         changeSelected(1);
      }
      
      public function haveSuccData() : Boolean
      {
         if(Boolean(vipSuccinctList) && Boolean(vipSuccinctList.dataProvider) && Boolean(vipSuccinctList.dataProvider.length))
         {
            return true;
         }
         return false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:VipSuccinctPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VipSuccinctPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_VipSuccinctPanelWatcherSetupUtil");
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
      
      private function _VipSuccinctPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.VIP_SUCCINCT_P[0];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_SUB;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[206];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[212];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[213];
         _loc1_ = Language.VIP_SUCCINCT_P[1];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[224];
      }
      
      public function __select7_change(param1:Event) : void
      {
         checkBoxChanged(7);
      }
      
      public function checkBoxChanged(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            this["select" + _loc2_].selected = false;
            _loc2_++;
         }
         this["select" + param1].selected = true;
      }
      
      public function __lock0_change(param1:Event) : void
      {
         changeSelected(0);
      }
      
      public function _succinctVip() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            if(!this["lock" + _loc4_].visible || Boolean(this["lock" + _loc4_].visible) && Boolean(this["lock" + _loc4_].selected))
            {
               _loc2_[_loc4_] = true;
            }
            else
            {
               _loc2_[_loc4_] = false;
               _loc1_ = true;
            }
            if(this["lock" + _loc4_].visible)
            {
               _loc3_ += 10;
            }
            if(this["lock" + _loc4_].selected)
            {
               _loc3_ += 10;
            }
            _loc4_++;
         }
         if(!_loc1_)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[215],"",Alert.YES,null,null);
            return;
         }
         var _loc5_:int = int(_core.getItemNum(29,GamePredef.MW_SUCC_ITEM).num);
         if(_loc5_ < _loc3_ && !this.autoBuy.selected)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[227],"",Alert.YES,null,null);
            itemInfo.text = Language.EQUIPTFUNCPANEL_U[208] + _loc5_;
            return;
         }
         _core.remote.nc.call("succinctMWByVip",null,MwSuccinct.giid > 0 ? MwSuccinct.giid : this.succinctId,_loc2_,autoBuy.selected);
         succinctVipBtn.enabled = false;
      }
      
      public function set autoBuy(param1:CheckBox) : void
      {
         var _loc2_:Object = this._646343081autoBuy;
         if(_loc2_ !== param1)
         {
            this._646343081autoBuy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoBuy",_loc2_,param1));
         }
      }
      
      public function viewClear(param1:Boolean = false) : void
      {
         if(!this.initialized)
         {
            return;
         }
         if(costInfo)
         {
            this.costInfo.text = Language.EQUIPTFUNCPANEL_U[209].replace("{num}",0);
         }
         if(this.MwSuccinct)
         {
            this.MwSuccinct.clean();
         }
         clearSuccDb();
         if(!param1)
         {
            succinctId = -1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this["lock" + _loc2_].visible = false;
            this["lock" + _loc2_].selected = false;
            this["oldPro" + _loc2_].htmlText = "";
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get select0() : CheckBox
      {
         return this._1978100404select0;
      }
      
      public function __select6_change(param1:Event) : void
      {
         checkBoxChanged(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get select2() : CheckBox
      {
         return this._1978100406select2;
      }
      
      [Bindable(event="propertyChange")]
      public function get select3() : CheckBox
      {
         return this._1978100407select3;
      }
      
      [Bindable(event="propertyChange")]
      public function get select4() : CheckBox
      {
         return this._1978100408select4;
      }
      
      [Bindable(event="propertyChange")]
      public function get select5() : CheckBox
      {
         return this._1978100409select5;
      }
      
      [Bindable(event="propertyChange")]
      public function get select7() : CheckBox
      {
         return this._1978100411select7;
      }
      
      [Bindable(event="propertyChange")]
      public function get select1() : CheckBox
      {
         return this._1978100405select1;
      }
      
      [Bindable(event="propertyChange")]
      public function get select9() : CheckBox
      {
         return this._1978100413select9;
      }
      
      private function _VipSuccinctPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIP_SUCCINCT_P[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipSuccinctPanel_BasicTitleCanvas1.text = param1;
         },"_VipSuccinctPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_SUB;
         },function(param1:Object):void
         {
            MwSuccinct.acceptObj = param1;
         },"MwSuccinct.acceptObj");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock0.label = param1;
         },"lock0.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock1.label = param1;
         },"lock1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock2.label = param1;
         },"lock2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[206];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipSuccinctPanel_Label1.text = param1;
         },"_VipSuccinctPanel_Label1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[212];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VipSuccinctPanel_BasicGlowButton1.label = param1;
         },"_VipSuccinctPanel_BasicGlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[213];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            succinctVipBtn.label = param1;
         },"succinctVipBtn.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIP_SUCCINCT_P[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoBuy.label = param1;
         },"autoBuy.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_U[224];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoBuy.toolTip = param1;
         },"autoBuy.toolTip");
         result[9] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get select6() : CheckBox
      {
         return this._1978100410select6;
      }
      
      public function unselectAutoBuy() : void
      {
         if(Boolean(this.autoBuy) && this.autoBuy.selected)
         {
            this.autoBuy.selected = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get select8() : CheckBox
      {
         return this._1978100412select8;
      }
      
      [Bindable(event="propertyChange")]
      public function get succinctVipBtn() : BasicGlowButton
      {
         return this._1420671817succinctVipBtn;
      }
      
      public function set lock2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._103145575lock2;
         if(_loc2_ !== param1)
         {
            this._103145575lock2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock2",_loc2_,param1));
         }
      }
      
      public function set oldPro0(param1:Label) : void
      {
         var _loc2_:Object = this._1379509782oldPro0;
         if(_loc2_ !== param1)
         {
            this._1379509782oldPro0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPro0",_loc2_,param1));
         }
      }
      
      public function __select5_change(param1:Event) : void
      {
         checkBoxChanged(5);
      }
      
      public function set oldPro2(param1:Label) : void
      {
         var _loc2_:Object = this._1379509780oldPro2;
         if(_loc2_ !== param1)
         {
            this._1379509780oldPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPro2",_loc2_,param1));
         }
      }
      
      public function set lock0(param1:CheckBox) : void
      {
         var _loc2_:Object = this._103145573lock0;
         if(_loc2_ !== param1)
         {
            this._103145573lock0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock0",_loc2_,param1));
         }
      }
      
      public function set lock1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._103145574lock1;
         if(_loc2_ !== param1)
         {
            this._103145574lock1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock1",_loc2_,param1));
         }
      }
      
      public function set dpSucc(param1:Canvas) : void
      {
         var _loc2_:Object = this._1326029586dpSucc;
         if(_loc2_ !== param1)
         {
            this._1326029586dpSucc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dpSucc",_loc2_,param1));
         }
      }
      
      public function set oldPro1(param1:Label) : void
      {
         var _loc2_:Object = this._1379509781oldPro1;
         if(_loc2_ !== param1)
         {
            this._1379509781oldPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPro1",_loc2_,param1));
         }
      }
      
      public function set itemInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1177195105itemInfo;
         if(_loc2_ !== param1)
         {
            this._1177195105itemInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInfo",_loc2_,param1));
         }
      }
      
      public function encodePropInfo(param1:Object, param2:Boolean = false) : String
      {
         var _loc4_:int = 0;
         var _loc3_:Object = GamePredef.ACTIVATE_MW_PRO[param1["propType"]];
         var _loc5_:int = 0;
         while(_loc5_ < 4)
         {
            if(Number(param1["propVal"]) <= _loc3_["top" + _loc5_])
            {
               _loc4_ = _loc5_;
               break;
            }
            _loc5_++;
         }
         var _loc6_:String = "<font color=\'" + GamePredef.MW_PRO_COLOR[_loc4_] + "\'>" + GamePredef.EQUIPT_PROP_NAME[param1["propType"]] + " +" + param1["propVal"] + (_loc4_ == 3 ? Language.EQUIPTFUNCPANEL_U[223] : "") + "</font>";
         if(param2)
         {
            _loc6_ += "<font color=\'#ffffff\'>(" + _loc3_.valMin + "~" + _loc3_.valMax + ")</font>";
         }
         return _loc6_;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPro1() : Label
      {
         return this._1379509781oldPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get dpSucc() : Canvas
      {
         return this._1326029586dpSucc;
      }
      
      public function __succinctVipBtn_click(param1:MouseEvent) : void
      {
         succinctVip();
      }
      
      public function updateSuccData(param1:int, param2:Object) : void
      {
         if(!this.MwSuccinct)
         {
            return;
         }
         if(this.MwSuccinct.giid != param1)
         {
            return;
         }
         if(!initialized)
         {
            oldPro = param2;
         }
         else
         {
            this.updateMWSuccView(param2,null);
         }
      }
      
      public function onSureSuccinctMW(param1:Object) : *
      {
         if(!param1 || !param1.f)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         if(_loc2_)
         {
            _loc2_.updateSuccData(this.MwSuccinct.giid,param1.flag);
         }
         this.updateMWSuccView(param1.flag,null);
      }
      
      public function __select4_change(param1:Event) : void
      {
         checkBoxChanged(4);
      }
      
      public function clearOldProView() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this["oldPro" + _loc1_].htmlText = "";
            this["lock" + _loc1_].visible = false;
            this["lock" + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      public function ___VipSuccinctPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

