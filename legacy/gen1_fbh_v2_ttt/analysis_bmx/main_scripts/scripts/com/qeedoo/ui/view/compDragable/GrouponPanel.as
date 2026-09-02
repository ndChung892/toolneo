package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.LanguageUtil;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.controls.TileList;
   import mx.controls.ToggleButtonBar;
   import mx.controls.VRule;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GrouponPanel extends DragableCanvas implements IBindingClient
   {
      
      public static var isRenRen:Boolean;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1584105757viewStack:ViewStack;
      
      private var _1220349293_getCollect:ArrayCollection = new ArrayCollection();
      
      public var _GrouponPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _GrouponPanel_DataGridColumn1:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn2:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn3:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn4:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn5:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn6:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn7:DataGridColumn;
      
      public var _GrouponPanel_DataGridColumn8:DataGridColumn;
      
      private var _champDict:Object;
      
      private var _grouponConf:Object;
      
      private var _11548545buttonBar:ToggleButtonBar;
      
      private const GRADE_INFO:Array = ["first","second","third"];
      
      public var _GrouponPanel_DataGrid1:DataGrid;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _grouponStat:Object;
      
      public var _GrouponPanel_TileList1:TileList;
      
      private var _1031834979_buyCollect:ArrayCollection = new ArrayCollection();
      
      private var _1017317214descText:IntroText;
      
      private var _270866343_confCollect:ArrayCollection = new ArrayCollection();
      
      public var _GrouponPanel_TileList2:TileList;
      
      private var _core:Core = Core.getInstance();
      
      private const CHAMP_INDEX:String = "champ";
      
      mx_internal var _watchers:Array = [];
      
      private var _selfOCid:String;
      
      private var _465467622_giveCollect:ArrayCollection = new ArrayCollection();
      
      private var _848973974giftGrid:DataGrid;
      
      private var _dateFormatter:DateFormatter;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1724267016_rebateCollect:ArrayCollection = new ArrayCollection();
      
      private var _27380931giftBar:ToggleButtonBar;
      
      public var _GrouponPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _778500089totalRebate:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":750,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GrouponPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ToggleButtonBar,
                  "id":"buttonBar",
                  "stylesFactory":function():void
                  {
                     this.buttonStyleName = "HorizontalTab";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "74";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                           this.top = "0";
                           this.bottom = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":TileList,
                                 "id":"_GrouponPanel_TileList1",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "30";
                                    this.right = "30";
                                    this.top = "20";
                                    this.bottom = "55";
                                    this.borderStyle = "none";
                                    this.backgroundAlpha = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "variableRowHeight":true,
                                       "itemRenderer":_GrouponPanel_ClassFactory1_c(),
                                       "selectable":false
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                           this.top = "0";
                           this.bottom = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"_GrouponPanel_DataGrid1",
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "undefined";
                                    this.borderStyle = "solid";
                                    this.borderThickness = 1;
                                    this.verticalGridLines = true;
                                    this.horizontalGridLineColor = 16777215;
                                    this.horizontalGridLines = true;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "rowHeight":83,
                                       "rowCount":4,
                                       "selectable":false,
                                       "headerHeight":25,
                                       "styleName":"GrouponGrid",
                                       "columns":[_GrouponPanel_DataGridColumn1_i(),_GrouponPanel_DataGridColumn2_i(),_GrouponPanel_DataGridColumn3_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                           this.top = "0";
                           this.bottom = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":ToggleButtonBar,
                                 "id":"giftBar",
                                 "stylesFactory":function():void
                                 {
                                    this.buttonStyleName = "HorizontalTab";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":80,
                                       "y":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":VRule,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "70";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":85,
                                       "y":41
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":VRule,
                                 "stylesFactory":function():void
                                 {
                                    this.right = "70";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":85,
                                       "y":41
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":HRule,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "70";
                                    this.right = "70";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"y":41};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":TileList,
                                 "id":"_GrouponPanel_TileList2",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "left";
                                    this.backgroundAlpha = 0;
                                    this.left = "70";
                                    this.right = "70";
                                    this.top = "40";
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "columnCount":3,
                                       "rowCount":3,
                                       "selectable":false,
                                       "labelField":"record",
                                       "height":95
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"giftGrid",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "70";
                                    this.right = "70";
                                    this.top = "135";
                                    this.bottom = "undefined";
                                    this.borderStyle = "solid";
                                    this.borderThickness = 1;
                                    this.verticalGridLines = true;
                                    this.horizontalGridLineColor = 16777215;
                                    this.horizontalGridLines = true;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "rowCount":10,
                                       "headerHeight":25,
                                       "styleName":"GrouponGrid",
                                       "selectable":false,
                                       "columns":[_GrouponPanel_DataGridColumn4_i(),_GrouponPanel_DataGridColumn5_i(),_GrouponPanel_DataGridColumn6_i(),_GrouponPanel_DataGridColumn7_i(),_GrouponPanel_DataGridColumn8_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "stylesFactory":function():void
                        {
                           this.left = "0";
                           this.right = "0";
                           this.top = "0";
                           this.bottom = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":IntroText,
                                 "id":"descText",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "20";
                                    this.right = "20";
                                    this.top = "20";
                                    this.bottom = "40";
                                 }
                              })]
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.right = "20";
                     this.bottom = "25";
                     this.horizontalGap = 15;
                     this.verticalAlign = "middle";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Label,
                        "id":"totalRebate",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"_GrouponPanel_BasicGlowButton1",
                        "events":{"click":"___GrouponPanel_BasicGlowButton1_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CrystalYellowButton",
                              "width":80,
                              "height":30
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"_GrouponPanel_BasicGlowButton2",
                        "events":{"click":"___GrouponPanel_BasicGlowButton2_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CrystalYellowButton",
                              "width":80,
                              "height":30
                           };
                        }
                     })]};
                  }
               })]
            };
         }
      });
      
      public var _GrouponPanel_BasicGlowButton2:BasicGlowButton;
      
      public function GrouponPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 750;
         this.height = 500;
         this.x = 75;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___GrouponPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GrouponPanel._watcherSetupUtil = param1;
      }
      
      override public function show() : void
      {
         super.show();
         _core.remote.call("getGrouponInfo",new Responder(onGetGrouponInfo));
      }
      
      private function _GrouponPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "index";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn4",_GrouponPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalRebate() : Label
      {
         return this._778500089totalRebate;
      }
      
      private function _GrouponPanel_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GrouponPanel_inlineComponent3;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set totalRebate(param1:Label) : void
      {
         var _loc2_:Object = this._778500089totalRebate;
         if(_loc2_ !== param1)
         {
            this._778500089totalRebate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalRebate",_loc2_,param1));
         }
      }
      
      public function changeVersion(param1:Object) : void
      {
         if(!this.visible)
         {
            return;
         }
         _grouponConf = param1;
         _grouponStat = {};
         _champDict = {};
         this.updateTotal();
         this.updatePageOne();
         this.updatePageTwo();
         this.updatePageThree();
      }
      
      private function set _rebateCollect(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1724267016_rebateCollect;
         if(_loc2_ !== param1)
         {
            this._1724267016_rebateCollect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_rebateCollect",_loc2_,param1));
         }
      }
      
      private function _GrouponPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "num";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn8",_GrouponPanel_DataGridColumn8);
         return _loc1_;
      }
      
      private function getHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         _core.remote.call("getGrouponMoney",new Responder(onGetGiftAlert));
      }
      
      [Bindable(event="propertyChange")]
      private function get _rebateCollect() : ArrayCollection
      {
         return this._1724267016_rebateCollect;
      }
      
      [Bindable(event="propertyChange")]
      private function get _giveCollect() : ArrayCollection
      {
         return this._465467622_giveCollect;
      }
      
      private function set _getCollect(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1220349293_getCollect;
         if(_loc2_ !== param1)
         {
            this._1220349293_getCollect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_getCollect",_loc2_,param1));
         }
      }
      
      public function ___GrouponPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         receiveHandler(param1);
      }
      
      private function _GrouponPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn3 = _loc1_;
         _loc1_.itemRenderer = _GrouponPanel_ClassFactory4_c();
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn3",_GrouponPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function _GrouponPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "itemName";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn7",_GrouponPanel_DataGridColumn7);
         return _loc1_;
      }
      
      private function updatePageTwo() : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:Object = null;
         _rebateCollect.removeAll();
         var _loc1_:Object = _grouponConf.itemConf;
         for(_loc2_ in _loc1_)
         {
            _loc3_ = _loc1_[_loc2_];
            if(_loc3_)
            {
               _loc4_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_];
               _loc5_ = _loc4_ ? _loc4_.name : "";
               _loc6_ = {"name":_loc5_};
               _loc7_ = int(GRADE_INFO.length);
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  _loc9_ = GRADE_INFO[_loc8_];
                  _loc10_ = _loc3_[_loc9_];
                  _loc6_["num" + _loc8_] = _loc10_.num;
                  _loc6_["rebate" + _loc8_] = _loc10_.gain;
                  _loc8_++;
               }
               _rebateCollect.addItem(_loc6_);
            }
         }
      }
      
      public function set buttonBar(param1:ToggleButtonBar) : void
      {
         var _loc2_:Object = this._11548545buttonBar;
         if(_loc2_ !== param1)
         {
            this._11548545buttonBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonBar",_loc2_,param1));
         }
      }
      
      private function _GrouponPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GrouponPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function set _giveCollect(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._465467622_giveCollect;
         if(_loc2_ !== param1)
         {
            this._465467622_giveCollect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_giveCollect",_loc2_,param1));
         }
      }
      
      private function updatePageOne() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:String = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:Object = null;
         var _loc16_:String = null;
         var _loc17_:Object = null;
         var _loc18_:Object = null;
         var _loc19_:Object = null;
         if(!_grouponConf)
         {
            return;
         }
         var _loc1_:Object = {};
         for each(_loc2_ in _grouponStat)
         {
            _loc5_ = _loc2_.sendStat;
            for(_loc4_ in _loc5_)
            {
               if(!_loc1_[_loc4_])
               {
                  _loc1_[_loc4_] = 0;
               }
               _loc1_[_loc4_] += Number(_loc5_[_loc4_]);
            }
         }
         _confCollect && _confCollect.removeAll();
         _loc3_ = _grouponConf.itemConf;
         for(_loc4_ in _loc3_)
         {
            _loc6_ = _loc1_[_loc4_];
            _loc7_ = _loc6_ ? int(Number(_loc6_)) : 0;
            _loc8_ = _loc3_[_loc4_];
            if(_loc8_)
            {
               _loc9_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc4_];
               _loc10_ = _loc9_ ? _loc9_.name : "";
               _loc11_ = {};
               _loc11_.itemId = _loc4_;
               _loc11_.name = _loc10_;
               _loc11_.point = _loc8_.point;
               _loc11_.desc = _loc8_.desc;
               _loc11_.sold = _loc7_;
               _loc11_.unitGold = 0;
               _loc12_ = _loc8_.first;
               _loc11_.left = int(_loc12_.num) - _loc7_;
               _loc11_.nextUnit = _loc12_.gain;
               if(Boolean(_champDict) && Boolean(_champDict[_loc4_]))
               {
                  _loc15_ = _champDict[_loc4_];
                  _loc11_.champName = _loc15_.name;
                  _loc11_.champBuy = _loc15_.num;
                  _loc11_.serverId = _loc15_.psId;
               }
               _loc13_ = int(GRADE_INFO.length);
               _loc14_ = int(_loc13_ - 1);
               while(_loc14_ >= 0)
               {
                  _loc16_ = GRADE_INFO[_loc14_];
                  _loc17_ = _loc8_[_loc16_];
                  if(_loc7_ >= Number(_loc17_.num))
                  {
                     _loc11_.unitGold = _loc17_.gain;
                     if(GRADE_INFO[_loc14_ + 1])
                     {
                        _loc18_ = GRADE_INFO[_loc14_ + 1];
                        _loc19_ = _loc8_[_loc18_];
                        _loc11_.left = _loc19_.num - _loc7_;
                        _loc11_.nextUnit = _loc19_.gain;
                     }
                     else
                     {
                        _loc11_.left = -1;
                        _loc11_.nextUnit = _loc17_.gain;
                     }
                     break;
                  }
                  _loc14_--;
               }
               _confCollect.addItem(_loc11_);
            }
         }
      }
      
      private function set _confCollect(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._270866343_confCollect;
         if(_loc2_ !== param1)
         {
            this._270866343_confCollect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_confCollect",_loc2_,param1));
         }
      }
      
      public function set giftGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._848973974giftGrid;
         if(_loc2_ !== param1)
         {
            this._848973974giftGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giftGrid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _buyCollect() : ArrayCollection
      {
         return this._1031834979_buyCollect;
      }
      
      public function grouponAlert(param1:String) : void
      {
         GrouponAlert.show(param1,this);
      }
      
      [Bindable(event="propertyChange")]
      public function get descText() : IntroText
      {
         return this._1017317214descText;
      }
      
      private function _GrouponPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn2 = _loc1_;
         _loc1_.itemRenderer = _GrouponPanel_ClassFactory3_c();
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn2",_GrouponPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function _GrouponPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn6",_GrouponPanel_DataGridColumn6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonBar() : ToggleButtonBar
      {
         return this._11548545buttonBar;
      }
      
      private function updatePageThree() : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         _buyCollect.removeAll();
         _giveCollect.removeAll();
         _getCollect.removeAll();
         if(!_selfOCid || !_grouponStat[_selfOCid])
         {
            return;
         }
         var _loc1_:Object = _grouponStat[_selfOCid];
         for(_loc2_ in _loc1_.sendStat)
         {
            _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_];
            _loc4_ = int(_loc1_.sendStat[_loc2_]);
            _loc5_ = _loc3_ ? _loc3_.name : "";
            _loc6_ = LanguageUtil.replace(Language.GROUPON_PANEL[35],{
               "item":_loc5_,
               "num":_loc4_
            });
            _buyCollect.addItem({"record":_loc6_});
         }
         if(_loc1_.sendTrack)
         {
            _loc7_ = [];
            for each(_loc8_ in _loc1_.sendTrack)
            {
               _loc7_.push(_loc8_);
            }
            _loc7_.sortOn("time",Array.DESCENDING);
            _loc9_ = int(_loc7_.length);
            _loc10_ = 0;
            while(_loc10_ < _loc9_)
            {
               _loc8_ = _loc7_[_loc10_];
               _loc8_.index = _loc10_ + 1;
               _loc8_.time = getUtcTimeStr(_loc8_.time);
               _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc8_.itemId];
               _loc8_.itemName = _loc3_ ? _loc3_.name : "";
               _giveCollect.addItem(_loc8_);
               _loc10_++;
            }
         }
         if(_loc1_.getTrack)
         {
            _loc11_ = [];
            for each(_loc12_ in _loc1_.getTrack)
            {
               _loc11_.push(_loc12_);
            }
            _loc11_.sortOn("time",Array.DESCENDING);
            _loc13_ = int(_loc11_.length);
            _loc10_ = 0;
            while(_loc10_ < _loc13_)
            {
               _loc12_ = _loc11_[_loc10_];
               _loc12_.index = _loc10_ + 1;
               _loc12_.time = getUtcTimeStr(_loc12_.time);
               _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc12_.itemId];
               _loc12_.itemName = _loc3_ ? _loc3_.name : "";
               _getCollect.addItem(_loc12_);
               _loc10_++;
            }
         }
      }
      
      private function _GrouponPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GrouponPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function updateConf(param1:Object) : void
      {
         if(!this.visible)
         {
            return;
         }
         _grouponConf = param1;
         this.updateTotal();
         this.updatePageOne();
         this.updatePageTwo();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GrouponPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GrouponPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GrouponPanelWatcherSetupUtil");
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
      
      private function _GrouponPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GROUPON_PANEL[0];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.GROUPON_PANEL[1];
         _loc1_ = buttonBar.selectedIndex;
         _loc1_ = _confCollect;
         _loc1_ = _rebateCollect;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT];
         _loc1_ = Language.GROUPON_PANEL[8];
         _loc1_ = Language.GROUPON_PANEL[9];
         _loc1_ = Language.GROUPON_PANEL[10];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.GROUPON_PANEL[13];
         _loc1_ = _buyCollect;
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = giftBar.selectedIndex == 0 ? _giveCollect : _getCollect;
         _loc1_ = Language.GROUPON_PANEL[14];
         _loc1_ = giftBar.selectedIndex == 0 ? Language.GROUPON_PANEL[15] : Language.GROUPON_PANEL[36];
         _loc1_ = Language.GROUPON_PANEL[16];
         _loc1_ = Language.GROUPON_PANEL[17];
         _loc1_ = Language.GROUPON_PANEL[18];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT];
         _loc1_ = Language.GROUPON_PANEL[2];
         _loc1_ = Language.GROUPON_PANEL[38];
      }
      
      public function ___GrouponPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         onCompelete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get giftGrid() : DataGrid
      {
         return this._848973974giftGrid;
      }
      
      public function set giftBar(param1:ToggleButtonBar) : void
      {
         var _loc2_:Object = this._27380931giftBar;
         if(_loc2_ !== param1)
         {
            this._27380931giftBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giftBar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _confCollect() : ArrayCollection
      {
         return this._270866343_confCollect;
      }
      
      [Bindable(event="propertyChange")]
      private function get _getCollect() : ArrayCollection
      {
         return this._1220349293_getCollect;
      }
      
      private function _GrouponPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn1 = _loc1_;
         _loc1_.itemRenderer = _GrouponPanel_ClassFactory2_c();
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn1",_GrouponPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function _GrouponPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GrouponPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "time";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_GrouponPanel_DataGridColumn5",_GrouponPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function onCompelete(param1:FlexEvent) : void
      {
         buttonBar.selectedIndex = 0;
         giftBar.selectedIndex = 0;
      }
      
      public function set descText(param1:IntroText) : void
      {
         var _loc2_:Object = this._1017317214descText;
         if(_loc2_ !== param1)
         {
            this._1017317214descText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descText",_loc2_,param1));
         }
      }
      
      public function updateStat(param1:Object) : void
      {
         if(!this.visible)
         {
            return;
         }
         if(param1.diffVer)
         {
            _grouponStat = {};
         }
         _grouponStat = _grouponStat || {};
         _grouponStat[param1.fromOCid] = param1.fromInfo;
         if(Boolean(param1.toOCid) && Boolean(param1.toInfo))
         {
            _grouponStat[param1.toOCid] = param1.toInfo;
         }
         _champDict = _champDict || {};
         _champDict[param1.itemId] = param1.champInfo;
         this.updateTotal();
         this.updatePageOne();
         this.updatePageThree();
      }
      
      public function set viewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1584105757viewStack;
         if(_loc2_ !== param1)
         {
            this._1584105757viewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewStack",_loc2_,param1));
         }
      }
      
      private function _GrouponPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GrouponItem;
         return _loc1_;
      }
      
      private function set _buyCollect(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1031834979_buyCollect;
         if(_loc2_ !== param1)
         {
            this._1031834979_buyCollect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_buyCollect",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get giftBar() : ToggleButtonBar
      {
         return this._27380931giftBar;
      }
      
      private function onGetGiftAlert(param1:String) : void
      {
         Alert.show(param1);
      }
      
      private function getUtcTimeStr(param1:Number) : String
      {
         if(!_dateFormatter)
         {
            _dateFormatter = new DateFormatter();
            _dateFormatter.formatString = "YYYY年MM月DD日HH:NN";
         }
         return _dateFormatter.format(new Date(param1));
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      private function receiveHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         _core.remote.call("getAllGrouponGift",new Responder(onGetGiftAlert));
      }
      
      private function _GrouponPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_BasicTitleCanvas1.text = param1;
         },"_GrouponPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            buttonBar.filters = param1;
         },"buttonBar.filters");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return Language.GROUPON_PANEL[1];
         },function(param1:Object):void
         {
            buttonBar.dataProvider = param1;
         },"buttonBar.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return buttonBar.selectedIndex;
         },function(param1:int):void
         {
            viewStack.selectedIndex = param1;
         },"viewStack.selectedIndex");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return _confCollect;
         },function(param1:Object):void
         {
            _GrouponPanel_TileList1.dataProvider = param1;
         },"_GrouponPanel_TileList1.dataProvider");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return _rebateCollect;
         },function(param1:Object):void
         {
            _GrouponPanel_DataGrid1.dataProvider = param1;
         },"_GrouponPanel_DataGrid1.dataProvider");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT];
         },function(param1:Array):void
         {
            _GrouponPanel_DataGrid1.filters = param1;
         },"_GrouponPanel_DataGrid1.filters");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn1.headerText = param1;
         },"_GrouponPanel_DataGridColumn1.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn2.headerText = param1;
         },"_GrouponPanel_DataGridColumn2.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn3.headerText = param1;
         },"_GrouponPanel_DataGridColumn3.headerText");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            giftBar.filters = param1;
         },"giftBar.filters");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return Language.GROUPON_PANEL[13];
         },function(param1:Object):void
         {
            giftBar.dataProvider = param1;
         },"giftBar.dataProvider");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return _buyCollect;
         },function(param1:Object):void
         {
            _GrouponPanel_TileList2.dataProvider = param1;
         },"_GrouponPanel_TileList2.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _GrouponPanel_TileList2.filters = param1;
         },"_GrouponPanel_TileList2.filters");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return giftBar.selectedIndex == 0 ? _giveCollect : _getCollect;
         },function(param1:Object):void
         {
            giftGrid.dataProvider = param1;
         },"giftGrid.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn4.headerText = param1;
         },"_GrouponPanel_DataGridColumn4.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = giftBar.selectedIndex == 0 ? Language.GROUPON_PANEL[15] : Language.GROUPON_PANEL[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn5.headerText = param1;
         },"_GrouponPanel_DataGridColumn5.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn6.headerText = param1;
         },"_GrouponPanel_DataGridColumn6.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn7.headerText = param1;
         },"_GrouponPanel_DataGridColumn7.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_DataGridColumn8.headerText = param1;
         },"_GrouponPanel_DataGridColumn8.headerText");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT];
         },function(param1:Array):void
         {
            totalRebate.filters = param1;
         },"totalRebate.filters");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_BasicGlowButton1.label = param1;
         },"_GrouponPanel_BasicGlowButton1.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPON_PANEL[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GrouponPanel_BasicGlowButton2.label = param1;
         },"_GrouponPanel_BasicGlowButton2.label");
         result[22] = binding;
         return result;
      }
      
      public function ___GrouponPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         getHandler(param1);
      }
      
      private function onGetGrouponInfo(param1:Object) : void
      {
         isRenRen = int(param1.cf) == 2;
         _grouponConf = param1.conf;
         _grouponStat = param1.stat;
         _selfOCid = param1.ocid;
         _champDict = _grouponStat[CHAMP_INDEX];
         this.updateTotal();
         this.updatePageOne();
         this.updatePageTwo();
         this.updatePageThree();
         descText.htmlText = _grouponConf.descript;
      }
      
      public function updateChamp(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         if(!this.visible || !param1)
         {
            return;
         }
         _champDict = param1;
         for each(_loc2_ in _confCollect)
         {
            _loc3_ = _loc2_.itemId;
            if(!(!_loc3_ || !param1[_loc3_]))
            {
               _loc4_ = param1[_loc3_];
               _loc2_.champName = _loc4_.name;
               _loc2_.champBuy = _loc4_.num;
               _loc2_.serverId = _loc4_.psId;
            }
         }
         _confCollect.refresh();
         this.updateTotal();
      }
      
      private function updateTotal() : void
      {
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:String = null;
         var _loc15_:Object = null;
         var _loc16_:* = undefined;
         var _loc17_:Object = null;
         var _loc18_:Object = null;
         var _loc19_:int = 0;
         var _loc20_:Number = NaN;
         var _loc1_:int = 0;
         var _loc2_:Object = _grouponConf.itemConf;
         var _loc3_:Object = Boolean(_selfOCid) && Boolean(_grouponStat) ? _grouponStat[_selfOCid] : null;
         var _loc4_:Object = _loc3_ ? _loc3_.sendStat : null;
         var _loc5_:Object = {};
         for each(_loc6_ in _grouponStat)
         {
            _loc8_ = _loc6_.sendStat;
            for(_loc7_ in _loc8_)
            {
               if(!_loc5_[_loc7_])
               {
                  _loc5_[_loc7_] = 0;
               }
               _loc5_[_loc7_] += Number(_loc8_[_loc7_]);
            }
         }
         for(_loc7_ in _loc5_)
         {
            _loc9_ = _loc2_[_loc7_];
            if(_loc9_)
            {
               _loc10_ = int(_loc5_[_loc7_]);
               _loc11_ = Boolean(_loc4_) && Boolean(_loc4_[_loc7_]) ? int(Number(_loc4_[_loc7_])) : 0;
               _loc12_ = int(GRADE_INFO.length);
               _loc13_ = int(_loc12_ - 1);
               while(_loc13_ >= 0)
               {
                  _loc14_ = GRADE_INFO[_loc13_];
                  _loc15_ = _loc9_[_loc14_];
                  if(_loc10_ >= Number(_loc15_.num))
                  {
                     _loc16_ = _loc15_.gain;
                     _loc1_ += _loc11_ * _loc16_;
                     break;
                  }
                  _loc13_--;
               }
            }
         }
         for(_loc7_ in _champDict)
         {
            _loc17_ = _champDict[_loc7_];
            _loc9_ = _loc2_[_loc7_];
            if((Boolean(_loc9_)) && Boolean(_loc9_.champ) && _loc17_.ocid == _selfOCid)
            {
               _loc18_ = _loc9_.champ;
               _loc19_ = int(_loc17_.num);
               _loc20_ = Number(_loc18_.gain);
               _loc1_ += _loc19_ * _loc20_;
            }
         }
         totalRebate.text = LanguageUtil.replace(Language.GROUPON_PANEL[3],{"num":_loc1_});
      }
   }
}

