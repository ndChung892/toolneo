package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlotEquFunc;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PageableDataGrid;
   import com.qeedoo.ui.view.comp.RendererItemSlot;
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
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WingAdvancedPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const MAX_ADVANCED_JOIN:Object = GamePredef.MAX_ADVANCED_JOIN;
      
      public static const MIN_ADVANCED_JOIN:int = GamePredef.MIN_ADVANCED_JOIN;
      
      private var pageOffset:int = -1;
      
      public var _WingAdvancedPanel_DataGridColumn2:DataGridColumn;
      
      public var _WingAdvancedPanel_DataGridColumn3:DataGridColumn;
      
      private var _900864954allChkBox:CheckBox;
      
      public const FILTER_SHADOW_TEXT2:*;
      
      private var probability:Number = 0;
      
      public var _WingAdvancedPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _WingAdvancedPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _WingAdvancedPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _WingAdvancedPanel_BasicTxtButton4:BasicTxtButton;
      
      private var _1034217724joinButton:BasicGlowButton;
      
      public var _WingAdvancedPanel_IntroText1:IntroText;
      
      private const NUM_PER_PAGE:int = 8;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      public const FILTER_SHADOW_TEXT:*;
      
      private var _wingList:ArrayCollection;
      
      private var _1053257947countLabel:Label;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1007683640pTitle:BasicTitleCanvas;
      
      private var _8346268mainWing:ItemSlotEquFunc;
      
      private var maxWings:int = 0;
      
      private var _3723199probabilityLabel:Label;
      
      private var _2022235378assistantDataGrid:PageableDataGrid;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var selectedNum:int = 0;
      
      private var probabilityArr:Object = null;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":353,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"pTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "14";
                     this.top = "40";
                     this.bottom = "15";
                     this.right = "14";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_WingAdvancedPanel_BasicTxtButton1",
                           "stylesFactory":function():void
                           {
                              this.left = "62";
                              this.top = "20";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotEquFunc,
                           "id":"mainWing",
                           "stylesFactory":function():void
                           {
                              this.left = "62";
                              this.top = "41";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"movable":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"joinButton",
                           "events":{"click":"__joinButton_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "55";
                              this.top = "100";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":51
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_WingAdvancedPanel_BasicTxtButton2",
                           "stylesFactory":function():void
                           {
                              this.left = "150";
                              this.top = "43";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_WingAdvancedPanel_BasicTxtButton3",
                           "stylesFactory":function():void
                           {
                              this.left = "150";
                              this.top = "73";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_WingAdvancedPanel_BasicTxtButton4",
                           "stylesFactory":function():void
                           {
                              this.left = "150";
                              this.top = "103";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"probabilityLabel",
                           "stylesFactory":function():void
                           {
                              this.left = "220";
                              this.top = "43";
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"countLabel",
                           "events":{"click":"__countLabel_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "226.5";
                              this.top = "73";
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"allChkBox",
                           "events":{"click":"__allChkBox_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "220";
                              this.top = "103";
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_WingAdvancedPanel_IntroText1",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":280,
                                 "height":140
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "295";
                              this.right = "10";
                              this.top = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":PageableDataGrid,
                                    "id":"assistantDataGrid",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalAlign = "middle";
                                       this.alternatingItemColors = [16777215,16777215];
                                       this.useRollOver = false;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "sortableColumns":false,
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "columns":[_WingAdvancedPanel_DataGridColumn1_c(),_WingAdvancedPanel_DataGridColumn2_i(),_WingAdvancedPanel_DataGridColumn3_i()]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelector",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "5";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"onPageChanged":onPageChanged};
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
      
      public function WingAdvancedPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 353;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.addEventListener("creationComplete",___WingAdvancedPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WingAdvancedPanel._watcherSetupUtil = param1;
      }
      
      private function _WingAdvancedPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.width = 26;
         _loc1_.itemRenderer = _WingAdvancedPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get assistantDataGrid() : PageableDataGrid
      {
         return this._2022235378assistantDataGrid;
      }
      
      public function ___WingAdvancedPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function set assistantDataGrid(param1:PageableDataGrid) : void
      {
         var _loc2_:Object = this._2022235378assistantDataGrid;
         if(_loc2_ !== param1)
         {
            this._2022235378assistantDataGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assistantDataGrid",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      private function mainWingChange(param1:Event) : void
      {
         if(Boolean(param1) && allowAdvancedJoin())
         {
            reset();
            wingFresh();
            updateState();
         }
         else
         {
            reset();
            joinViewClear();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get countLabel() : Label
      {
         return this._1053257947countLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get allChkBox() : CheckBox
      {
         return this._900864954allChkBox;
      }
      
      private function updateState() : void
      {
         if(selectedNum < GamePredef.WING_MIN_ADVANCED_JOIN)
         {
            probabilityLabel.visible = false;
         }
         else
         {
            probability = probabilityArr[selectedNum];
            if(isNaN(probability))
            {
               probability = 100;
            }
            probabilityLabel.visible = true;
            probabilityLabel.text = probability.toString() + "%";
         }
         countLabel.text = "" + selectedNum + "/" + maxWings;
         if(selectedNum > maxWings)
         {
            countLabel.setStyle("color","red");
         }
         else
         {
            countLabel.setStyle("color","white");
         }
      }
      
      public function set countLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1053257947countLabel;
         if(_loc2_ !== param1)
         {
            this._1053257947countLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"countLabel",_loc2_,param1));
         }
      }
      
      private function reset() : void
      {
         selectedNum = 0;
         maxWings = 0;
         probability = 0;
         allChkBox.selected = false;
         allChkBox.enabled = false;
         probabilityLabel.text = "";
         countLabel.text = "";
      }
      
      private function allowAdvancedJoin() : Boolean
      {
         var _loc1_:Object = null;
         if(mainWing.slotData)
         {
            _loc1_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][mainWing.slotData.itemId];
            if(_loc1_)
            {
               if(GamePredef.WING_MAX_ADVANCED_JOIN[_loc1_.color] > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function _WingAdvancedPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = WingAdvancedPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _WingAdvancedPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WINGADVANCEDPANEL_U[0];
         _loc1_ = Language.WINGADVANCEDPANEL_U[1];
         _loc1_ = {"kinds":{13:true}};
         _loc1_ = Language.WINGADVANCEDPANEL_U[2];
         _loc1_ = Language.WINGADVANCEDPANEL_U[3];
         _loc1_ = Language.WINGADVANCEDPANEL_U[4];
         _loc1_ = Language.WINGADVANCEDPANEL_U[5];
         _loc1_ = Language.WINGADVANCEDPANEL_S[0];
         _loc1_ = pageSelector;
         _loc1_ = Language.WINGADVANCEDPANEL_U[6];
         _loc1_ = Language.WINGADVANCEDPANEL_U[7];
      }
      
      [Bindable(event="propertyChange")]
      public function get mainWing() : ItemSlotEquFunc
      {
         return this._8346268mainWing;
      }
      
      public function __joinButton_click(param1:MouseEvent) : void
      {
         advancedJoin();
      }
      
      private function onAllClick() : void
      {
         var _loc1_:* = undefined;
         for each(_loc1_ in _wingList)
         {
            if(_loc1_)
            {
               if(allChkBox.selected)
               {
                  _loc1_.selected = true;
               }
               else
               {
                  _loc1_.selected = false;
               }
            }
         }
         if(allChkBox.selected)
         {
            selectedNum = _wingList.length;
         }
         else
         {
            selectedNum = 0;
         }
         updateState();
         pageSelector.refreshPage();
      }
      
      private function advancedJoin() : void
      {
         var hasBinded:Boolean;
         var mainWingIns:Object;
         var obj:Array = null;
         var wing:* = undefined;
         var func:Function = null;
         if(!mainWing.slotData)
         {
            _core.sysMidNote(Language.WINGADVANCEDPANEL_S[7]);
            return;
         }
         if(selectedNum < MIN_ADVANCED_JOIN)
         {
            _core.sysMidNote(Language.WINGADVANCEDPANEL_S[4]);
            return;
         }
         if(selectedNum > maxWings)
         {
            _core.sysMidNote(Language.WINGADVANCEDPANEL_S[5]);
            return;
         }
         hasBinded = false;
         mainWingIns = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][mainWing.slotData.itemId];
         if(mainWingIns.binded == 1)
         {
            hasBinded = true;
         }
         obj = [];
         for each(wing in _wingList)
         {
            if(Boolean(wing) && Boolean(wing.selected))
            {
               obj.push(wing.id);
               if(wing.binded == 1)
               {
                  hasBinded = true;
               }
            }
         }
         if(hasBinded)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("wingSeniorJoin",new Responder(onJoin),mainWing.slotData.id,obj);
                  reset();
                  joinViewClear();
               }
            };
            Alert.show(Language.WINGADVANCEDPANEL_S[6],"",Alert.YES | Alert.NO,this,func);
         }
         else
         {
            _core.remote.call("wingSeniorJoin",new Responder(onJoin),mainWing.slotData.id,obj);
            reset();
            joinViewClear();
         }
      }
      
      public function __allChkBox_click(param1:MouseEvent) : void
      {
         onAllClick();
      }
      
      public function set allChkBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._900864954allChkBox;
         if(_loc2_ !== param1)
         {
            this._900864954allChkBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allChkBox",_loc2_,param1));
         }
      }
      
      public function set probabilityLabel(param1:Label) : void
      {
         var _loc2_:Object = this._3723199probabilityLabel;
         if(_loc2_ !== param1)
         {
            this._3723199probabilityLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"probabilityLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WingAdvancedPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WingAdvancedPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WingAdvancedPanelWatcherSetupUtil");
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
      
      private function _WingAdvancedPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = WingAdvancedPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function joinViewClear() : void
      {
         mainWing.clean();
         _wingList = new ArrayCollection();
         pageSelector.initPageSeletor(_wingList.length,NUM_PER_PAGE);
      }
      
      public function onCheckClick(param1:Object) : void
      {
         var _loc2_:Boolean = Boolean(param1.selected);
         param1.selected = !_loc2_;
         if(param1.selected)
         {
            ++selectedNum;
         }
         else
         {
            --selectedNum;
         }
         updateState();
      }
      
      private function _WingAdvancedPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTitle.text = param1;
         },"pTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_BasicTxtButton1.label = param1;
         },"_WingAdvancedPanel_BasicTxtButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return {"kinds":{13:true}};
         },function(param1:Object):void
         {
            mainWing.acceptObj = param1;
         },"mainWing.acceptObj");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinButton.label = param1;
         },"joinButton.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_BasicTxtButton2.label = param1;
         },"_WingAdvancedPanel_BasicTxtButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_BasicTxtButton3.label = param1;
         },"_WingAdvancedPanel_BasicTxtButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_BasicTxtButton4.label = param1;
         },"_WingAdvancedPanel_BasicTxtButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_IntroText1.htmlText = param1;
         },"_WingAdvancedPanel_IntroText1.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():PageSelector
         {
            return pageSelector;
         },function(param1:PageSelector):void
         {
            assistantDataGrid.pageSelector = param1;
         },"assistantDataGrid.pageSelector");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_DataGridColumn2.headerText = param1;
         },"_WingAdvancedPanel_DataGridColumn2.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WINGADVANCEDPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WingAdvancedPanel_DataGridColumn3.headerText = param1;
         },"_WingAdvancedPanel_DataGridColumn3.headerText");
         result[10] = binding;
         return result;
      }
      
      private function onJoin(param1:Object) : void
      {
         var _loc2_:ISlot = null;
         if(param1)
         {
            if(param1.f)
            {
               _core.sysMidNote(Language.WINGADVANCEDPANEL_S[1]);
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i] = param1.n;
               _loc2_ = _core.view.getSlot(param1.sid);
               if(_loc2_)
               {
                  _loc2_.giid = param1.i;
               }
            }
            else
            {
               _core.sysMidNote(Language.WINGADVANCEDPANEL_S[2]);
               joinViewClear();
            }
         }
      }
      
      private function _WingAdvancedPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WingAdvancedPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 50;
         _loc1_.itemRenderer = _WingAdvancedPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_WingAdvancedPanel_DataGridColumn3",_WingAdvancedPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function set pTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1007683640pTitle;
         if(_loc2_ !== param1)
         {
            this._1007683640pTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get probabilityLabel() : Label
      {
         return this._3723199probabilityLabel;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         pageOffset = param1;
         if(_wingList)
         {
            pageOffset = param1;
            assistantDataGrid.dataProvider = ToolKit.getPageCollection(_wingList,param1,param2);
         }
      }
      
      public function set mainWing(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._8346268mainWing;
         if(_loc2_ !== param1)
         {
            this._8346268mainWing = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainWing",_loc2_,param1));
         }
      }
      
      override public function update() : void
      {
         if(visible)
         {
            mainWing.addEventListener(GameEvent.SLOT_GIID_CHANGE,mainWingChange);
         }
         else
         {
            mainWing.removeEventListener(GameEvent.SLOT_GIID_CHANGE,mainWingChange);
            reset();
            joinViewClear();
         }
      }
      
      public function __countLabel_click(param1:MouseEvent) : void
      {
         onAllClick();
      }
      
      private function _WingAdvancedPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _WingAdvancedPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         _loc1_.itemRenderer = _WingAdvancedPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_WingAdvancedPanel_DataGridColumn2",_WingAdvancedPanel_DataGridColumn2);
         return _loc1_;
      }
      
      override public function initView() : void
      {
         reset();
         joinViewClear();
      }
      
      [Bindable(event="propertyChange")]
      public function get pTitle() : BasicTitleCanvas
      {
         return this._1007683640pTitle;
      }
      
      private function _WingAdvancedPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemSlot;
         return _loc1_;
      }
      
      public function wingFresh() : void
      {
         var _loc9_:Object = null;
         var _loc10_:String = null;
         var _loc11_:Object = null;
         if(!mainWing.slotData)
         {
            return;
         }
         var _loc1_:Object = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][mainWing.slotData.itemId];
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = int(_loc1_.tid);
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_EQUIPT_TEMPLATE][_loc2_];
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Object = _core.data.bagSlotIndex;
         var _loc5_:Array = _loc4_[GamePredef.TBL_EQUIPT_INSTANCE][_loc2_];
         var _loc6_:int = int(_loc1_.color);
         maxWings = GamePredef.WING_MAX_ADVANCED_JOIN[_loc6_];
         probabilityArr = GamePredef.WING_ADVANCED_JOIN_RATE[_loc6_];
         if(_core.MC_BIRTH_FLAG[ToolKit.add(_loc6_,8)])
         {
            probabilityArr = GamePredef.MC_BIRTH_CONFIG[ToolKit.add(_loc6_,8)];
         }
         var _loc7_:Array = [];
         var _loc8_:ArrayCollection = new ArrayCollection();
         for(_loc10_ in _loc5_)
         {
            _loc9_ = _core.data.sList[_loc5_[_loc10_]];
            if(_loc9_)
            {
               _loc11_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][_loc9_.itemId];
               if(!(!_loc11_ || _loc11_.color != _loc6_))
               {
                  if(_loc1_.id != _loc11_.id)
                  {
                     if(_loc1_.tid == _loc11_.tid)
                     {
                        if(_core.data.isBagSlot(Number(_loc9_.sid)) && _loc9_.stackNum > 0)
                        {
                           _loc8_.addItem({
                              "id":_loc9_.id,
                              "type":GamePredef.TBL_EQUIPT_INSTANCE,
                              "itemId":_loc11_.id,
                              "stackNum":1,
                              "name":_loc3_.name,
                              "colorValue":GamePredef.CODE_ITEM_COLOR[_loc11_.color],
                              "color":_loc11_.color,
                              "binded":_loc11_.binded,
                              "selected":false
                           });
                        }
                     }
                  }
               }
            }
         }
         _wingList = _loc8_;
         pageSelector.initPageSeletor(_wingList.length,NUM_PER_PAGE);
         allChkBox.enabled = true;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         update();
      }
      
      public function set joinButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1034217724joinButton;
         if(_loc2_ !== param1)
         {
            this._1034217724joinButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinButton() : BasicGlowButton
      {
         return this._1034217724joinButton;
      }
   }
}

