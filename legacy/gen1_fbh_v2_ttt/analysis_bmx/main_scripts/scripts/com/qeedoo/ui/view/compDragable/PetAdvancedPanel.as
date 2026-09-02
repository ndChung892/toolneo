package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlotPet;
   import com.qeedoo.ui.view.comp.ItemSlotPetFunc;
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
   
   public class PetAdvancedPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const MAX_ADVANCED_JOIN:Object = GamePredef.MAX_ADVANCED_JOIN;
      
      public static const MIN_ADVANCED_JOIN:int = GamePredef.MIN_ADVANCED_JOIN;
      
      private var pageOffset:int = -1;
      
      private var _petList:ArrayCollection;
      
      private var _900864954allChkBox:CheckBox;
      
      public const FILTER_SHADOW_TEXT2:*;
      
      private var mainColor:int = -1;
      
      private var probability:Number = 0;
      
      private var _1034217724joinButton:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private const NUM_PER_PAGE:int = 8;
      
      public var _PetAdvancedPanel_IntroText1:IntroText;
      
      private var itemNeedNum:uint = 0;
      
      private var _core:Core = Core.getInstance();
      
      private var _831007910mainPet:ItemSlotPet;
      
      mx_internal var _watchers:Array = [];
      
      public const FILTER_SHADOW_TEXT:*;
      
      private var _1053257947countLabel:Label;
      
      private var _1080482137petItemNumTip:Label;
      
      private var _1007683640pTitle:BasicTitleCanvas;
      
      public var _PetAdvancedPanel_DataGridColumn2:DataGridColumn;
      
      public var _PetAdvancedPanel_DataGridColumn3:DataGridColumn;
      
      private var _607339634pageSelector:PageSelector;
      
      private var maxPets:int = 0;
      
      public var _PetAdvancedPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _PetAdvancedPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _PetAdvancedPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _PetAdvancedPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _PetAdvancedPanel_BasicTxtButton5:BasicTxtButton;
      
      private var _3723199probabilityLabel:Label;
      
      private var _2022235378assistantDataGrid:PageableDataGrid;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _677840686petItem:ItemSlotPetFunc;
      
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
                           "id":"_PetAdvancedPanel_BasicTxtButton1",
                           "stylesFactory":function():void
                           {
                              this.left = "25";
                              this.top = "20";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetAdvancedPanel_BasicTxtButton2",
                           "stylesFactory":function():void
                           {
                              this.left = "85";
                              this.top = "20";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotPet,
                           "id":"mainPet",
                           "stylesFactory":function():void
                           {
                              this.left = "25";
                              this.top = "41";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"movable":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotPetFunc,
                           "id":"petItem",
                           "stylesFactory":function():void
                           {
                              this.left = "95";
                              this.top = "41";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"movable":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"petItemNumTip",
                           "stylesFactory":function():void
                           {
                              this.left = "63";
                              this.top = "77";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":18,
                                 "styleName":"DescriptionText"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"joinButton",
                           "events":{"click":"__joinButton_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "53";
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
                           "id":"_PetAdvancedPanel_BasicTxtButton3",
                           "stylesFactory":function():void
                           {
                              this.left = "175";
                              this.top = "43";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetAdvancedPanel_BasicTxtButton4",
                           "stylesFactory":function():void
                           {
                              this.left = "175";
                              this.top = "73";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetAdvancedPanel_BasicTxtButton5",
                           "stylesFactory":function():void
                           {
                              this.left = "175";
                              this.top = "103";
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"probabilityLabel",
                           "stylesFactory":function():void
                           {
                              this.left = "245";
                              this.top = "43";
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"countLabel",
                           "events":{"click":"__countLabel_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "245";
                              this.top = "73";
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"allChkBox",
                           "events":{"click":"__allChkBox_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "245";
                              this.top = "103";
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_PetAdvancedPanel_IntroText1",
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
                                          "columns":[_PetAdvancedPanel_DataGridColumn1_c(),_PetAdvancedPanel_DataGridColumn2_i(),_PetAdvancedPanel_DataGridColumn3_i()]
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
      
      public function PetAdvancedPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 353;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.addEventListener("creationComplete",___PetAdvancedPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetAdvancedPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinButton() : BasicGlowButton
      {
         return this._1034217724joinButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get assistantDataGrid() : PageableDataGrid
      {
         return this._2022235378assistantDataGrid;
      }
      
      private function _PetAdvancedPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "";
         _loc1_.width = 26;
         _loc1_.itemRenderer = _PetAdvancedPanel_ClassFactory1_c();
         return _loc1_;
      }
      
      private function _PetAdvancedPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PETADVANCEDPANEL_U[0];
         _loc1_ = Language.PETADVANCEDPANEL_U[1];
         _loc1_ = Language.PETADVANCEDPANEL_U[8];
         _loc1_ = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[8]];
         _loc1_ = Language.PETADVANCEDPANEL_U[2];
         _loc1_ = Language.PETADVANCEDPANEL_U[3];
         _loc1_ = Language.PETADVANCEDPANEL_U[4];
         _loc1_ = Language.PETADVANCEDPANEL_U[5];
         _loc1_ = Language.PETADVANCEDPANEL_S[0];
         _loc1_ = pageSelector;
         _loc1_ = Language.PETADVANCEDPANEL_U[6];
         _loc1_ = Language.PETADVANCEDPANEL_U[7];
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
      
      [Bindable(event="propertyChange")]
      public function get countLabel() : Label
      {
         return this._1053257947countLabel;
      }
      
      private function _PetAdvancedPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PetAdvancedPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
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
      
      [Bindable(event="propertyChange")]
      public function get allChkBox() : CheckBox
      {
         return this._900864954allChkBox;
      }
      
      private function updateState() : void
      {
         if(selectedNum < MIN_ADVANCED_JOIN)
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
         countLabel.text = "" + selectedNum + "/" + maxPets;
         if(selectedNum > maxPets)
         {
            countLabel.setStyle("color","red");
         }
         else
         {
            countLabel.setStyle("color","white");
         }
         var _loc1_:String = Language.PETADVANCEDPANEL_S[8];
         if(mainColor == 3)
         {
            itemNeedNum = GamePredef.NUMBER_ITEM_ADVANCED_JOIN[mainColor] * Math.min(selectedNum,maxPets);
         }
         else
         {
            itemNeedNum = GamePredef.NUMBER_ITEM_ADVANCED_JOIN[mainColor];
         }
         _loc1_ = _loc1_.replace("{num}",itemNeedNum);
         petItemNumTip.text = _loc1_;
         if(selectedNum == 0)
         {
            petItemNumTip.text = "";
         }
      }
      
      public function set mainPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._831007910mainPet;
         if(_loc2_ !== param1)
         {
            this._831007910mainPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainPet",_loc2_,param1));
         }
      }
      
      public function set petItemNumTip(param1:Label) : void
      {
         var _loc2_:Object = this._1080482137petItemNumTip;
         if(_loc2_ !== param1)
         {
            this._1080482137petItemNumTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petItemNumTip",_loc2_,param1));
         }
      }
      
      private function dataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
         _core.view.getUI(ViewManager.PANEL_PETMANAGER).updateView(param1.data.index);
         _core.view.getUI(ViewManager.PANEL_BAG).petInit();
      }
      
      private function allowAdvancedJoin() : Boolean
      {
         var _loc1_:int = _core.basic.colorByGrowRate(mainPet.slotData.growRate);
         var _loc2_:Array = GamePredef.ALLOWED_ADVANCED_JOIN;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc1_ == _loc2_[_loc4_])
            {
               _loc3_ = true;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function petFresh() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         if(!mainPet.slotData)
         {
            return;
         }
         var _loc1_:Object = _core.player.petList;
         mainColor = _core.basic.colorByGrowRate(mainPet.slotData.growRate);
         var _loc2_:int = int(mainPet.slotData.tid);
         maxPets = MAX_ADVANCED_JOIN[mainColor];
         probabilityArr = GamePredef.ADVANCED_JOIN_PROBABILITY[mainColor];
         if(_core.MC_BIRTH_FLAG[ToolKit.minus(mainColor,1)])
         {
            probabilityArr = GamePredef.MC_BIRTH_CONFIG[ToolKit.minus(mainColor,1)] ? GamePredef.MC_BIRTH_CONFIG[ToolKit.minus(mainColor,1)] : GamePredef.ADVANCED_JOIN_PROBABILITY[mainColor];
         }
         var _loc3_:ArrayCollection = new ArrayCollection();
         if(_loc1_)
         {
            for each(_loc4_ in _loc1_)
            {
               if(_loc4_)
               {
                  _loc5_ = _core.basic.colorByGrowRate(_loc4_.growRate);
                  if(_loc5_ == mainColor)
                  {
                     if(_loc2_ == _loc4_.tid)
                     {
                        if(mainPet.giid != _loc4_.id)
                        {
                           _loc3_.addItem({
                              "id":_loc4_.id,
                              "type":GamePredef.TBL_PET,
                              "itemId":_loc4_.id,
                              "stackNum":1,
                              "name":_loc4_.petName,
                              "colorValue":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc4_.growRate)],
                              "color":_core.basic.colorByGrowRate(_loc4_.growRate),
                              "petData":_loc4_,
                              "selected":false
                           });
                        }
                     }
                  }
               }
            }
         }
         _petList = _loc3_;
         pageSelector.initPageSeletor(_petList.length,NUM_PER_PAGE);
         allChkBox.enabled = true;
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
      
      public function __joinButton_click(param1:MouseEvent) : void
      {
         advancedJoin();
      }
      
      private function _PetAdvancedPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemSlot;
         return _loc1_;
      }
      
      private function reset() : void
      {
         selectedNum = 0;
         maxPets = 0;
         probability = 0;
         allChkBox.selected = false;
         allChkBox.enabled = false;
         probabilityLabel.text = "";
         countLabel.text = "";
         petItemNumTip.text = "";
         mainColor = -1;
      }
      
      private function onAllClick() : void
      {
         var _loc1_:* = undefined;
         for each(_loc1_ in _petList)
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
            selectedNum = _petList.length;
         }
         else
         {
            selectedNum = 0;
         }
         updateState();
         pageSelector.refreshPage();
      }
      
      public function __allChkBox_click(param1:MouseEvent) : void
      {
         onAllClick();
      }
      
      private function advancedJoin() : void
      {
         var mainColor:int;
         var hasBinded:Boolean;
         var obj:Array = null;
         var pet:* = undefined;
         var str:String = null;
         var p:int = 0;
         var j:* = undefined;
         var func:Function = null;
         if(!mainPet.slotData)
         {
            _core.sysMidNote(Language.PETADVANCEDPANEL_S[7]);
            return;
         }
         if(selectedNum < MIN_ADVANCED_JOIN)
         {
            _core.sysMidNote(Language.PETADVANCEDPANEL_S[4]);
            return;
         }
         if(selectedNum > maxPets)
         {
            _core.sysMidNote(Language.PETADVANCEDPANEL_S[5]);
            return;
         }
         mainColor = _core.basic.colorByGrowRate(mainPet.slotData.growRate);
         if(!petItem.slotData || petItem.slotData.tid != 3014 || petItem.stackNum < itemNeedNum)
         {
            str = Language.PETADVANCEDPANEL_S[8];
            str = str.replace("{num}",itemNeedNum);
            _core.sysMidNote(str);
            return;
         }
         hasBinded = false;
         if(mainPet.slotData.binded == 1)
         {
            hasBinded = true;
         }
         obj = [];
         obj.push(mainPet.slotData.id);
         for each(pet in _petList)
         {
            if(Boolean(pet) && Boolean(pet.selected))
            {
               p = 1;
               while(p <= 8)
               {
                  if(ToolKit.isBigThan(pet.petData["equ" + p],0))
                  {
                     Alert.show(Language.PETFUNCPANEL_S[56],"",Alert.YES,null,null);
                     return;
                  }
                  p++;
               }
               if(pet.petData["soulInfo"]["data"])
               {
                  for(j in pet.petData["soulInfo"]["data"])
                  {
                     if(pet.petData["soulInfo"]["data"][j])
                     {
                        Alert.show(Language.PET_SOUL_S[51],"",Alert.YES,null,null);
                        return;
                     }
                  }
               }
               obj.push(pet.id);
               if(pet.petData.binded == 1)
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
                  _core.remote.call("seniorPetJoin",new Responder(onJoin),obj);
                  reset();
                  joinViewClear();
               }
            };
            Alert.show(Language.PETADVANCEDPANEL_S[6],"",Alert.YES | Alert.NO,this,func);
         }
         else
         {
            _core.remote.call("seniorPetJoin",new Responder(onJoin),obj);
            reset();
            joinViewClear();
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
      
      public function ___PetAdvancedPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetAdvancedPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetAdvancedPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetAdvancedPanelWatcherSetupUtil");
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
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      private function updatePet(param1:int, param2:String, param3:String) : void
      {
         var _loc4_:Object = _core.player.petList;
         if((Boolean(_loc4_)) && Boolean(_loc4_[param1]))
         {
            _loc4_[param1][param2] = param3;
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + GamePredef.TBL_PET + "_" + param1,dataLoaded);
            _core.data.delData(GamePredef.TBL_PET,param1);
            _core.data.getGameData(GamePredef.TBL_PET,param1);
         }
      }
      
      private function _PetAdvancedPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetAdvancedPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 50;
         _loc1_.itemRenderer = _PetAdvancedPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_PetAdvancedPanel_DataGridColumn3",_PetAdvancedPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function joinViewClear() : void
      {
         mainPet.clean();
         petItem.clean();
         _petList = new ArrayCollection();
         pageSelector.initPageSeletor(_petList.length,NUM_PER_PAGE);
      }
      
      public function onCheckClick(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         if(!param1.selected)
         {
            if(param1.petData["soulInfo"]["data"])
            {
               for(_loc4_ in param1.petData["soulInfo"]["data"])
               {
                  if(param1.petData["soulInfo"]["data"][_loc4_])
                  {
                     Alert.show(Language.PET_SOUL_S[51],"",Alert.YES,null,null);
                     param1.selected = true;
                     if(param1.selected)
                     {
                        ++selectedNum;
                     }
                     else
                     {
                        --selectedNum;
                     }
                     return;
                  }
               }
            }
            _loc3_ = 1;
            while(_loc3_ <= 8)
            {
               if(ToolKit.isBigThan(param1.petData["equ" + _loc3_],0))
               {
                  Alert.show(Language.PETFUNCPANEL_S[56],"",Alert.YES,null,null);
                  param1.selected = true;
                  if(param1.selected)
                  {
                     ++selectedNum;
                  }
                  else
                  {
                     --selectedNum;
                  }
                  return;
               }
               _loc3_++;
            }
         }
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
      
      public function set petItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._677840686petItem;
         if(_loc2_ !== param1)
         {
            this._677840686petItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainPet() : ItemSlotPet
      {
         return this._831007910mainPet;
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
      
      private function _PetAdvancedPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTitle.text = param1;
         },"pTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_BasicTxtButton1.label = param1;
         },"_PetAdvancedPanel_BasicTxtButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_BasicTxtButton2.label = param1;
         },"_PetAdvancedPanel_BasicTxtButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.ITEM_TYPE_PETFUNC_TYPE[8]];
         },function(param1:Array):void
         {
            petItem.petFuncType = param1;
         },"petItem.petFuncType");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinButton.label = param1;
         },"joinButton.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_BasicTxtButton3.label = param1;
         },"_PetAdvancedPanel_BasicTxtButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_BasicTxtButton4.label = param1;
         },"_PetAdvancedPanel_BasicTxtButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_BasicTxtButton5.label = param1;
         },"_PetAdvancedPanel_BasicTxtButton5.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_IntroText1.htmlText = param1;
         },"_PetAdvancedPanel_IntroText1.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():PageSelector
         {
            return pageSelector;
         },function(param1:PageSelector):void
         {
            assistantDataGrid.pageSelector = param1;
         },"assistantDataGrid.pageSelector");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_DataGridColumn2.headerText = param1;
         },"_PetAdvancedPanel_DataGridColumn2.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETADVANCEDPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetAdvancedPanel_DataGridColumn3.headerText = param1;
         },"_PetAdvancedPanel_DataGridColumn3.headerText");
         result[11] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get petItemNumTip() : Label
      {
         return this._1080482137petItemNumTip;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         pageOffset = param1;
         if(_petList)
         {
            pageOffset = param1;
            assistantDataGrid.dataProvider = ToolKit.getPageCollection(_petList,param1,param2);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pTitle() : BasicTitleCanvas
      {
         return this._1007683640pTitle;
      }
      
      override public function update() : void
      {
         if(visible)
         {
            mainPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,mainPetChange);
            petItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,petItemPut);
         }
         else
         {
            mainPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,mainPetChange);
            petItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,petItemPut);
            reset();
            joinViewClear();
         }
      }
      
      private function onJoin(param1:Object) : void
      {
         if(param1)
         {
            if(param1.flag)
            {
               updatePet(param1.pid,"growRate",param1.grow);
               _core.sysMidNote(Language.PETADVANCEDPANEL_S[1]);
            }
            else
            {
               _core.sysMidNote(Language.PETADVANCEDPANEL_S[2]);
            }
         }
      }
      
      public function __countLabel_click(param1:MouseEvent) : void
      {
         onAllClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get petItem() : ItemSlotPetFunc
      {
         return this._677840686petItem;
      }
      
      override public function initView() : void
      {
         reset();
         joinViewClear();
      }
      
      [Bindable(event="propertyChange")]
      public function get probabilityLabel() : Label
      {
         return this._3723199probabilityLabel;
      }
      
      private function _PetAdvancedPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetAdvancedPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         _loc1_.itemRenderer = _PetAdvancedPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_PetAdvancedPanel_DataGridColumn2",_PetAdvancedPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function petItemPut(param1:Event) : void
      {
         if(param1)
         {
            if(Boolean(param1.currentTarget.slotData) && param1.currentTarget.slotData.tid != 3014)
            {
               _core.sysMidNote(Language.PETADVANCEDPANEL_S[9]);
               petItem.clean();
            }
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         update();
      }
      
      private function _PetAdvancedPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PetAdvancedPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function mainPetChange(param1:Event) : void
      {
         if(Boolean(param1) && allowAdvancedJoin())
         {
            reset();
            petFresh();
            updateState();
         }
         else
         {
            reset();
            joinViewClear();
            _core.sysMidNote(Language.PETADVANCEDPANEL_S[3]);
         }
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
   }
}

