package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FlowerAndEggHBox;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.MarriageFeedHBox;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.Menu;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MarriageManagerPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _MarriageManagerPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _MarriageManagerPanel_BasicGlowButton4:BasicGlowButton;
      
      public var _MarriageManagerPanel_BasicGlowButton5:BasicGlowButton;
      
      private var firstFlag:Boolean = true;
      
      private var charMarriageSekInfo:Object;
      
      public var _MarriageManagerPanel_DataGridColumn1:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn2:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn4:DataGridColumn;
      
      public var _MarriageManagerPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _MarriageManagerPanel_DataGridColumn6:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn7:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn9:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn3:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn5:DataGridColumn;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MarriageManagerPanel_DataGridColumn8:DataGridColumn;
      
      private var _99343dg2:DataGrid;
      
      private var _595107704marriageList:ArrayCollection = new ArrayCollection();
      
      private var _1605835155charMarirageReqListA:ArrayCollection;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      public var _MarriageManagerPanel_DataGridColumn10:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn11:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn12:DataGridColumn;
      
      public var _MarriageManagerPanel_DataGridColumn13:DataGridColumn;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _1284475336itxt_other:IntroText;
      
      private var _2036880164itxt_self:IntroText;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var marriageListNormal:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      private var _3629556vstk:ViewStack;
      
      private var charMarriageReqListB:ArrayCollection;
      
      private var _911018726itxt_personalInfo:IntroText;
      
      private var marriageListAdvanced:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MarriageManagerPanel_RoundedLabel1:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":600,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MarriageManagerPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":21,
                        "y":39,
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":69,
                        "y":39,
                        "styleName":"HorizontalTab",
                        "selected":false,
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vstk",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.bottom = "20";
                     this.top = "60";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":SimpleCanvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "10";
                                    this.top = "10";
                                    this.bottom = "38";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "width":397,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"dg1",
                                          "events":{
                                             "doubleClick":"__dg1_doubleClick",
                                             "click":"__dg1_click"
                                          },
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.right = "10";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "doubleClickEnabled":true,
                                                "columns":[_MarriageManagerPanel_DataGridColumn1_i(),_MarriageManagerPanel_DataGridColumn2_i(),_MarriageManagerPanel_DataGridColumn3_i(),_MarriageManagerPanel_DataGridColumn4_i(),_MarriageManagerPanel_DataGridColumn5_i(),_MarriageManagerPanel_DataGridColumn6_i(),_MarriageManagerPanel_DataGridColumn7_i()]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":IntroText,
                                 "id":"itxt_self",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "415";
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":150,
                                       "height":130
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":IntroText,
                                 "id":"itxt_other",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "415";
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":10,
                                       "height":130
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"_MarriageManagerPanel_BasicGlowButton3",
                                 "events":{"click":"___MarriageManagerPanel_BasicGlowButton3_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "10";
                                    this.left = "10";
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
                                 "id":"_MarriageManagerPanel_BasicGlowButton4",
                                 "events":{"click":"___MarriageManagerPanel_BasicGlowButton4_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "10";
                                    this.left = "78";
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
                                 "id":"_MarriageManagerPanel_BasicGlowButton5",
                                 "events":{"click":"___MarriageManagerPanel_BasicGlowButton5_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "10";
                                    this.left = "146";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"BtnStdRed",
                                       "width":60
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":RoundedLabel,
                                 "id":"_MarriageManagerPanel_RoundedLabel1",
                                 "stylesFactory":function():void
                                 {
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":292,
                                       "width":300
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":SimpleCanvas,
                        "events":{"show":"___MarriageManagerPanel_SimpleCanvas2_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "width":390,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"dg2",
                                          "events":{"click":"__dg2_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.right = "10";
                                             this.top = "10";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_MarriageManagerPanel_DataGridColumn8_i(),_MarriageManagerPanel_DataGridColumn9_i(),_MarriageManagerPanel_DataGridColumn10_i(),_MarriageManagerPanel_DataGridColumn11_i(),_MarriageManagerPanel_DataGridColumn12_i(),_MarriageManagerPanel_DataGridColumn13_i()]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":IntroText,
                                 "id":"itxt",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "408";
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":10,
                                       "height":145
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":IntroText,
                                 "id":"itxt_personalInfo",
                                 "stylesFactory":function():void
                                 {
                                    this.left = "408";
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":165,
                                       "height":145
                                    };
                                 }
                              })]
                           };
                        }
                     })]};
                  }
               })]
            };
         }
      });
      
      private var _99342dg1:DataGrid;
      
      private var _3243367itxt:IntroText;
      
      public function MarriageManagerPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 400;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 308;
         this.addEventListener("creationComplete",___MarriageManagerPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarriageManagerPanel._watcherSetupUtil = param1;
      }
      
      private function _MarriageManagerPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlowerAndEggHBox;
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            initMarriage();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dg1() : DataGrid
      {
         return this._99342dg1;
      }
      
      public function ___MarriageManagerPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         cancelMarriageSekInfo();
      }
      
      public function init() : void
      {
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
      
      private function _MarriageManagerPanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn11 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn11",_MarriageManagerPanel_DataGridColumn11);
         return _loc1_;
      }
      
      private function set marriageList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._595107704marriageList;
         if(_loc2_ !== param1)
         {
            this._595107704marriageList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"marriageList",_loc2_,param1));
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
      
      public function set dg1(param1:DataGrid) : void
      {
         var _loc2_:Object = this._99342dg1;
         if(_loc2_ !== param1)
         {
            this._99342dg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itxt_self() : IntroText
      {
         return this._2036880164itxt_self;
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      public function set dg2(param1:DataGrid) : void
      {
         var _loc2_:Object = this._99343dg2;
         if(_loc2_ !== param1)
         {
            this._99343dg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dg2() : DataGrid
      {
         return this._99343dg2;
      }
      
      private function set charMarirageReqListA(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1605835155charMarirageReqListA;
         if(_loc2_ !== param1)
         {
            this._1605835155charMarirageReqListA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charMarirageReqListA",_loc2_,param1));
         }
      }
      
      private function _MarriageManagerPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn1",_MarriageManagerPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function __dg1_click(param1:MouseEvent) : void
      {
         handleDG1Click();
      }
      
      private function _MarriageManagerPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.IMPANEL_U[32];
         _loc1_ = Language.MARRIAGE_PANEL_U[1];
         _loc1_ = Language.MARRIAGE_PANEL_U[0];
         _loc1_ = marriageList;
         _loc1_ = Language.MARRIAGE_PANEL_U[5];
         _loc1_ = Language.MARRIAGE_PANEL_U[6];
         _loc1_ = Language.MARRIAGE_PANEL_U[7];
         _loc1_ = Language.MARRIAGE_PANEL_U[8];
         _loc1_ = Language.MARRIAGE_PANEL_U[9];
         _loc1_ = Language.MARRIAGE_PANEL_U[19];
         _loc1_ = Language.MARRIAGE_PANEL_U[21];
         _loc1_ = Language.MARRIAGE_PANEL_U[10];
         _loc1_ = Language.MARRIAGE_PANEL_U[15];
         _loc1_ = Language.MARRIAGE_PANEL_U[11];
         _loc1_ = Language.MARRIAGE_PANEL_U[42];
         _loc1_ = charMarirageReqListA;
         _loc1_ = Language.MARRIAGE_PANEL_U[5];
         _loc1_ = Language.MARRIAGE_PANEL_U[6];
         _loc1_ = Language.MARRIAGE_PANEL_U[7];
         _loc1_ = Language.MARRIAGE_PANEL_U[8];
         _loc1_ = Language.MARRIAGE_PANEL_U[9];
         _loc1_ = Language.MARRIAGE_PANEL_U[14];
      }
      
      private function _MarriageManagerPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "state";
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn5",_MarriageManagerPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function _MarriageManagerPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "cClass";
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn9",_MarriageManagerPanel_DataGridColumn9);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get itxt_other() : IntroText
      {
         return this._1284475336itxt_other;
      }
      
      private function clickMarriager() : void
      {
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO}]);
      }
      
      public function set itxt_self(param1:IntroText) : void
      {
         var _loc2_:Object = this._2036880164itxt_self;
         if(_loc2_ !== param1)
         {
            this._2036880164itxt_self = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itxt_self",_loc2_,param1));
         }
      }
      
      private function handleDG1Click() : void
      {
         if(dg1.selectedItem)
         {
            itxt_other.content.text = Language.MARRIAGE_PANEL_U[22] + dg1.selectedItem.content;
         }
      }
      
      public function ___MarriageManagerPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         sendMarriageReqInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get itxt() : IntroText
      {
         return this._3243367itxt;
      }
      
      private function _MarriageManagerPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn10 = _loc1_;
         _loc1_.dataField = "sex";
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn10",_MarriageManagerPanel_DataGridColumn10);
         return _loc1_;
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function ___MarriageManagerPanel_SimpleCanvas2_show(param1:FlexEvent) : void
      {
         showCharMarriageReqInfo();
      }
      
      public function set itxt_other(param1:IntroText) : void
      {
         var _loc2_:Object = this._1284475336itxt_other;
         if(_loc2_ !== param1)
         {
            this._1284475336itxt_other = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itxt_other",_loc2_,param1));
         }
      }
      
      private function _MarriageManagerPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn4",_MarriageManagerPanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function _MarriageManagerPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "cname";
         _loc1_.width = 80;
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn8",_MarriageManagerPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      public function __dg2_click(param1:MouseEvent) : void
      {
         handleDG2Click();
      }
      
      [Bindable(event="propertyChange")]
      private function get marriageList() : ArrayCollection
      {
         return this._595107704marriageList;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      private function _MarriageManagerPanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn13 = _loc1_;
         _loc1_.dataField = "";
         _loc1_.width = 45;
         _loc1_.itemRenderer = _MarriageManagerPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn13",_MarriageManagerPanel_DataGridColumn13);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get charMarirageReqListA() : ArrayCollection
      {
         return this._1605835155charMarirageReqListA;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarriageManagerPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarriageManagerPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MarriageManagerPanelWatcherSetupUtil");
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
      
      private function cancelMarriageSekInfo() : void
      {
         _core.remote.cancelMarriageSekInfo();
      }
      
      private function sendMarriageReqInfo() : void
      {
         if(_core.player.level < 30)
         {
            Alert.show(Language.MARRIAGE_PANEL_U[29]);
            return;
         }
         if(!dg1.selectedItem)
         {
            Alert.show(Language.MARRIAGE_PANEL_U[24]);
            return;
         }
         if(dg1.selectedItem.gender == _core.player.gender)
         {
            Alert.show(Language.MARRIAGE_PANEL_U[25]);
            return;
         }
         var _loc1_:MarriageSeekingPanel = MarriageSeekingPanel(_core.view.getUI(ViewManager.POP_MARRIAGE_SEEKING));
         _loc1_.type = GamePredef.TYPE_MARRIAGE_REQUEST;
         _loc1_.item = dg1.selectedItem;
         _loc1_.show();
      }
      
      public function ___MarriageManagerPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function onInitCharMarriageList(param1:Object) : void
      {
         var _loc3_:Object = null;
         firstFlag = false;
         charMarirageReqListA = new ArrayCollection();
         charMarriageReqListB = new ArrayCollection();
         var _loc2_:Boolean = false;
         for each(_loc3_ in param1)
         {
            if(_loc3_.type == GamePredef.TYPE_MARRIAGE_SEEKING)
            {
               if(_loc3_.cid == _core.player.id)
               {
                  charMarriageSekInfo = _loc3_;
                  itxt_self.text = Language.MARRIAGE_PANEL_U[23] + Language.MARRIAGE_PANEL_U[22] + _loc3_.content;
                  _loc2_ = true;
               }
            }
            else if(_loc3_.type == GamePredef.TYPE_MARRIAGE_REQUEST)
            {
               if(_loc3_.cid == _core.player.id)
               {
                  charMarriageReqListB.addItem(_loc3_);
               }
               else if(_loc3_.targetId == _core.player.id)
               {
                  charMarirageReqListA.addItem(_loc3_);
               }
            }
         }
         if(!_loc2_)
         {
            itxt_self.text = Language.MARRIAGE_PANEL_U[23] + Language.MARRIAGE_PANEL_U[22];
         }
         showCharMarriageReqInfo();
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(!dg1.selectedItem)
         {
            return;
         }
         if(param1.index == 0)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(dg1.selectedItem.name);
         }
         else if(param1.index == 1)
         {
            ChatPanelUtil.createChatPanel(dg1.selectedItem.cid);
         }
         else if(param1.index == 2)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(dg1.selectedItem.cid);
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      private function _MarriageManagerPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "sex";
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn3",_MarriageManagerPanel_DataGridColumn3);
         return _loc1_;
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
      
      public function __dg1_doubleClick(param1:MouseEvent) : void
      {
         clickMarriager();
      }
      
      private function _MarriageManagerPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "";
         _loc1_.itemRenderer = _MarriageManagerPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn7",_MarriageManagerPanel_DataGridColumn7);
         return _loc1_;
      }
      
      private function _MarriageManagerPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MarriageFeedHBox;
         return _loc1_;
      }
      
      private function _MarriageManagerPanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn12 = _loc1_;
         _loc1_.dataField = "state";
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn12",_MarriageManagerPanel_DataGridColumn12);
         return _loc1_;
      }
      
      private function sendMarriageSekInfo() : void
      {
         if(_core.player.level < GamePredef.MARRIAGE_MIN_LEVEL)
         {
            Alert.show(Language.MARRIAGE_PANEL_U[27]);
            return;
         }
         if(_core.player.moneyBind + _core.player.money <= GamePredef.MARRIAGE_MIN_MONEY)
         {
            Alert.show(Language.MARRIAGE_PANEL_U[28]);
            return;
         }
         var _loc1_:MarriageSeekingPanel = MarriageSeekingPanel(_core.view.getUI(ViewManager.POP_MARRIAGE_SEEKING));
         _loc1_.type = GamePredef.TYPE_MARRIAGE_SEEKING;
         _loc1_.show();
      }
      
      private function _MarriageManagerPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_BasicTitleCanvas1.text = param1;
         },"_MarriageManagerPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return marriageList;
         },function(param1:Object):void
         {
            dg1.dataProvider = param1;
         },"dg1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn1.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn1.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn2.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn2.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn3.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn3.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn4.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn4.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn5.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn5.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn6.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn6.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn7.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn7.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_BasicGlowButton3.label = param1;
         },"_MarriageManagerPanel_BasicGlowButton3.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_BasicGlowButton4.label = param1;
         },"_MarriageManagerPanel_BasicGlowButton4.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_BasicGlowButton5.label = param1;
         },"_MarriageManagerPanel_BasicGlowButton5.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_RoundedLabel1.text = param1;
         },"_MarriageManagerPanel_RoundedLabel1.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return charMarirageReqListA;
         },function(param1:Object):void
         {
            dg2.dataProvider = param1;
         },"dg2.dataProvider");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn8.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn8.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn9.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn9.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn10.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn10.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn11.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn11.headerText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn12.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn12.headerText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageManagerPanel_DataGridColumn13.headerText = param1;
         },"_MarriageManagerPanel_DataGridColumn13.headerText");
         result[21] = binding;
         return result;
      }
      
      public function set itxt_personalInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._911018726itxt_personalInfo;
         if(_loc2_ !== param1)
         {
            this._911018726itxt_personalInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itxt_personalInfo",_loc2_,param1));
         }
      }
      
      public function ___MarriageManagerPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         sendMarriageSekInfo();
      }
      
      public function onInitMarriageSekList(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:SortField = null;
         var _loc4_:Sort = null;
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         marriageList.removeAll();
         marriageListAdvanced.removeAll();
         marriageListNormal.removeAll();
         for each(_loc2_ in param1)
         {
            if(_loc2_.cid == _core.player.id)
            {
               itxt_self.text = Language.MARRIAGE_PANEL_U[23] + Language.MARRIAGE_PANEL_U[22] + _loc2_.content;
            }
            _loc2_.cClass = _core.getClassName(_loc2_.classId);
            _loc2_.sex = GamePredef.GENDER_NAME[_loc2_.gender];
            _loc2_.level = _core.basic.expToLevel(_loc2_.exp).toString();
            if(_loc2_.online)
            {
               _loc2_.state = Language.IMPANEL_S[69];
            }
            else
            {
               _loc2_.state = Language.IMPANEL_S[70];
            }
            if(_loc2_.flag != 0)
            {
               marriageListAdvanced.addItem(_loc2_);
            }
            else
            {
               marriageListNormal.addItem(_loc2_);
            }
         }
         _loc3_ = new SortField();
         _loc3_.name = "addDate";
         _loc3_.numeric = true;
         _loc3_.descending = true;
         _loc4_ = new Sort();
         _loc4_.fields = [_loc3_];
         marriageListAdvanced.sort = _loc4_;
         marriageListAdvanced.refresh();
         marriageListNormal.sort = _loc4_;
         marriageListNormal.refresh();
         for(_loc5_ in marriageListAdvanced.length)
         {
            marriageList.addItem(marriageListAdvanced.getItemAt(_loc5_));
         }
         _loc6_ = GamePredef.MARRIAGE_LIST_MAX_LENGTH - marriageListAdvanced.length;
         if(_loc6_ <= marriageListNormal.length)
         {
            _loc7_ = _loc6_;
         }
         else
         {
            _loc7_ = marriageListNormal.length;
         }
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            marriageList.addItem(marriageListNormal.getItemAt(_loc8_));
            _loc8_++;
         }
      }
      
      private function handleDG2Click() : void
      {
         if(dg2.selectedItem)
         {
            itxt.content.text = Language.MARRIAGE_PANEL_U[26] + dg2.selectedItem.content;
         }
      }
      
      public function set itxt(param1:IntroText) : void
      {
         var _loc2_:Object = this._3243367itxt;
         if(_loc2_ !== param1)
         {
            this._3243367itxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itxt",_loc2_,param1));
         }
      }
      
      private function showCharMarriageReqInfo() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:String = null;
         var _loc3_:Date = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:* = undefined;
         for(_loc1_ in charMarirageReqListA)
         {
            charMarirageReqListA.getItemAt(_loc1_).cname = String(charMarirageReqListA.getItemAt(_loc1_).name).split("|")[0];
            charMarirageReqListA.getItemAt(_loc1_).cClass = _core.getClassName(charMarirageReqListA.getItemAt(_loc1_).classId);
            charMarirageReqListA.getItemAt(_loc1_).sex = GamePredef.GENDER_NAME[charMarirageReqListA.getItemAt(_loc1_).gender];
            charMarirageReqListA.getItemAt(_loc1_).level = _core.basic.expToLevel(charMarirageReqListA.getItemAt(_loc1_).exp).toString();
            if(charMarirageReqListA.getItemAt(_loc1_).online)
            {
               charMarirageReqListA.getItemAt(_loc1_).state = Language.IMPANEL_S[69];
            }
            else
            {
               charMarirageReqListA.getItemAt(_loc1_).state = Language.IMPANEL_S[70];
            }
         }
         _loc2_ = Language.MARRIAGE_PANEL_U[30];
         _loc6_ = "";
         for(_loc7_ in charMarriageReqListB)
         {
            _loc3_ = new Date();
            _loc3_.setTime(charMarriageReqListB.getItemAt(_loc7_).addDate);
            _loc5_ = dateFormatter.format(_loc3_);
            _loc4_ = String(charMarriageReqListB.getItemAt(_loc7_).name).split("|")[1];
            if(charMarriageReqListB.getItemAt(_loc7_).flag == 0)
            {
               _loc6_ = Language.MARRIAGE_PANEL_U[20].toString().replace("{time}",_loc5_).replace("{targetName}",_loc4_);
            }
            else if(charMarriageReqListB.getItemAt(_loc7_).flag == 1)
            {
               _loc6_ = Language.MARRIAGE_PANEL_U[20].toString().replace("{time}",_loc5_).replace("{targetName}",_loc4_) + Language.MARRIAGE_PANEL_U[35];
            }
            else if(charMarriageReqListB.getItemAt(_loc7_).flag == 2)
            {
               _loc6_ = Language.MARRIAGE_PANEL_U[20].toString().replace("{time}",_loc5_).replace("{targetName}",_loc4_) + Language.MARRIAGE_PANEL_U[36];
            }
            _loc2_ += _loc6_ + "\n";
         }
         itxt_personalInfo.htmlText = _loc2_;
      }
      
      public function set vstk(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3629556vstk;
         if(_loc2_ !== param1)
         {
            this._3629556vstk = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vstk",_loc2_,param1));
         }
      }
      
      private function tabClick(param1:int) : void
      {
         vstk.selectedIndex = param1;
         tabBtn0.selected = false;
         tabBtn1.selected = false;
         this["tabBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get vstk() : ViewStack
      {
         return this._3629556vstk;
      }
      
      [Bindable(event="propertyChange")]
      public function get itxt_personalInfo() : IntroText
      {
         return this._911018726itxt_personalInfo;
      }
      
      private function _MarriageManagerPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "cClass";
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn2",_MarriageManagerPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function initMarriage() : void
      {
         _core.remote.initMarriage(firstFlag);
      }
      
      private function _MarriageManagerPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MarriageManagerPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "pop";
         BindingManager.executeBindings(this,"_MarriageManagerPanel_DataGridColumn6",_MarriageManagerPanel_DataGridColumn6);
         return _loc1_;
      }
   }
}

