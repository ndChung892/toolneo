package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.LinkEncode;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.AchievementDetail;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.ButtonTree;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.Property;
   import com.qeedoo.ui.view.comp.TipAchieve;
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
   import mx.containers.VBox;
   import mx.controls.VRule;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AchievementPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _ACHIEVE_COUNT_PER_PAGE:int = 5;
      
      private static var _MAX_ACH_CHECK_VERSION:int = 999999;
      
      private var _968653915progress2:Property;
      
      private var _finishAchieveTotalNum:int = 0;
      
      private var _1557721602detail3:AchievementDetail;
      
      private var _2145302773achievePageCtrl:PageSelector;
      
      private var _finishAchieveKindNum:Array = [0,0,0,0,0,0,0];
      
      private var _1557721601detail2:AchievementDetail;
      
      private var _165649647canvasOverView:Canvas;
      
      private var _807853569vrule1:VRule;
      
      private var _1607534951rescentDetail2:AchievementDetail;
      
      public var _AchievementPanel_RemoveChild1:RemoveChild;
      
      public var _AchievementPanel_RemoveChild2:RemoveChild;
      
      private var _968653916progress1:Property;
      
      private var _1557721600detail1:AchievementDetail;
      
      private var _charAchieveReqLog:Object;
      
      private var _isAchieveUpdated:Boolean = false;
      
      private var _charAchieveLog:Object;
      
      private var _1291982793canvasDetail:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1607534952rescentDetail1:AchievementDetail;
      
      private var _totalAchieveKindNum:Array = [0,0,0,0,0,0,0];
      
      private var _1362202622rescentAchieveVBox:VBox;
      
      private var _core:Core = Core.getInstance();
      
      private var _770866455progressTotal:Property;
      
      private var _1746887055achieveTree:ButtonTree;
      
      mx_internal var _watchers:Array = [];
      
      private var _968653911progress6:Property;
      
      private var _totalAchieveNum:int = 0;
      
      private var _1607534953rescentDetail0:AchievementDetail;
      
      public var _AchievementPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _968653912progress5:Property;
      
      public var _AchievementPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton3:BasicTxtButton;
      
      private var _recentAchieveList:ArrayCollection = null;
      
      public var _AchievementPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton8:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _1746900838achieveVBox:VBox;
      
      public var _AchievementPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _AchievementPanel_BasicTxtButton11:BasicTxtButton;
      
      private var _968653913progress4:Property;
      
      private var _achieveList:ArrayCollection = null;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1684855361achievePoint:BasicTxtButton;
      
      private var _1557721603detail4:AchievementDetail;
      
      private var _968653914progress3:Property;
      
      private var _initalized:Boolean = false;
      
      private var _selectedDetail:String = null;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":515,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AchievementPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ButtonTree,
                  "id":"achieveTree",
                  "events":{"itemClick":"__achieveTree_itemClick"},
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":131,
                        "x":6,
                        "height":358,
                        "y":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VRule,
                  "id":"vrule1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":138,
                        "y":36,
                        "height":362
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvasOverView",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":145,
                        "y":32,
                        "width":375,
                        "height":375,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"achievePoint",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.fontSize = 15;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":6,
                                 "percentWidth":100,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":34,
                                 "width":100,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"rescentAchieveVBox",
                           "stylesFactory":function():void
                           {
                              this.left = "16";
                              this.right = "3";
                              this.top = "55";
                              this.horizontalGap = 10;
                              this.verticalGap = 3;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":175,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"rescentDetail0",
                                    "events":{"click":"__rescentDetail0_click"}
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"rescentDetail1",
                                    "events":{"click":"__rescentDetail1_click"}
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"rescentDetail2",
                                    "events":{"click":"__rescentDetail2_click"}
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton3",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":232,
                                 "width":100,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton4",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":255,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton5",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":280,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton6",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":184,
                                 "y":280,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton7",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":305,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton8",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":184,
                                 "y":305,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton9",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":330,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton10",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":184,
                                 "y":330,
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progressTotal",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "y":258,
                                 "height":13,
                                 "width":300,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progress1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "y":283,
                                 "height":13,
                                 "width":120,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progress2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":234,
                                 "y":283,
                                 "height":13,
                                 "width":120,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progress3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "y":308,
                                 "height":13,
                                 "width":120,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progress4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":234,
                                 "y":308,
                                 "height":13,
                                 "width":120,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progress5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "y":333,
                                 "height":13,
                                 "width":120,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Property,
                           "id":"progress6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":234,
                                 "y":333,
                                 "height":13,
                                 "width":120,
                                 "styleName":"ProgressExp",
                                 "color":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementPanel_BasicTxtButton11",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":16,
                                 "y":353,
                                 "width":315,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvasDetail",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":140,
                        "y":32,
                        "width":375,
                        "height":364,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":VBox,
                           "id":"achieveVBox",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "2";
                              this.top = "7";
                              this.horizontalGap = 10;
                              this.verticalGap = 4;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":320,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail0",
                                    "events":{"click":"__detail0_click"}
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail1",
                                    "events":{"click":"__detail1_click"}
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail2",
                                    "events":{"click":"__detail2_click"}
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail3",
                                    "events":{"click":"__detail3_click"}
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail4",
                                    "events":{"click":"__detail4_click"}
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"achievePageCtrl",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "onPageChanged":onPageChanged,
                                 "x":122,
                                 "y":335
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1557721599detail0:AchievementDetail;
      
      public function AchievementPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 515;
         this.height = 410;
         this.styleName = "StandardContent";
         this.states = [_AchievementPanel_State1_c(),_AchievementPanel_State2_c()];
         this.addEventListener("creationComplete",___AchievementPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AchievementPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get detail4() : AchievementDetail
      {
         return this._1557721603detail4;
      }
      
      public function set detail3(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1557721602detail3;
         if(_loc2_ !== param1)
         {
            this._1557721602detail3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail3",_loc2_,param1));
         }
      }
      
      public function set detail4(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1557721603detail4;
         if(_loc2_ !== param1)
         {
            this._1557721603detail4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail4",_loc2_,param1));
         }
      }
      
      public function __rescentDetail1_click(param1:MouseEvent) : void
      {
         onRecentAchClick(param1);
      }
      
      public function set detail2(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1557721601detail2;
         if(_loc2_ !== param1)
         {
            this._1557721601detail2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get achievePageCtrl() : PageSelector
      {
         return this._2145302773achievePageCtrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentAchieveVBox() : VBox
      {
         return this._1362202622rescentAchieveVBox;
      }
      
      private function _AchievementPanel_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "overview";
         _loc1_.overrides = [_AchievementPanel_RemoveChild1_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvasOverView() : Canvas
      {
         return this._165649647canvasOverView;
      }
      
      public function updateView(param1:int, param2:int, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:AchievementDetail = null;
         var _loc7_:Object = null;
         if(!_initalized)
         {
            return;
         }
         initCharAchieve();
         if(param1 == 1 && param2 > 0)
         {
            _isAchieveUpdated = true;
            _recentAchieveList.addItemAt({
               "aid":param2,
               "done":param3.done
            },0);
            if(_recentAchieveList.length > 3)
            {
               _recentAchieveList.removeItemAt(3);
            }
            _loc4_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][param2];
            if(_loc4_)
            {
               ++_finishAchieveKindNum[_loc4_.kind];
               ++_finishAchieveTotalNum;
            }
            if(currentState == "overview")
            {
               updateAchieveProgress();
               return;
            }
            _loc5_ = 0;
            while(_loc5_ < _ACHIEVE_COUNT_PER_PAGE)
            {
               _loc6_ = this["detail" + _loc5_];
               if(_loc6_.aid == param2)
               {
                  _loc6_.finished = 1;
                  _loc6_.txtAchieveTime.label = getFinishTime(param2);
                  if(_selectedDetail == "detail" + _loc5_)
                  {
                     showSelectAchieveDetail();
                  }
                  break;
               }
               _loc5_++;
            }
         }
         else if(param1 == 2 && currentState == "detail")
         {
            _loc7_ = _core.data.gameData[GamePredef.TBL_ACHIEVEMENT_REQUIRE][param2];
            if(_loc7_)
            {
               _loc5_ = 0;
               while(_loc5_ < _ACHIEVE_COUNT_PER_PAGE)
               {
                  _loc6_ = this["detail" + _loc5_];
                  if(_loc6_.aid == _loc7_.aid)
                  {
                     if(_selectedDetail == "detail" + _loc5_)
                     {
                        showSelectAchieveDetail();
                     }
                     break;
                  }
                  _loc5_++;
               }
            }
         }
      }
      
      public function set achievePageCtrl(param1:PageSelector) : void
      {
         var _loc2_:Object = this._2145302773achievePageCtrl;
         if(_loc2_ !== param1)
         {
            this._2145302773achievePageCtrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achievePageCtrl",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Object = null;
         _initalized = true;
         initTree();
         initCharAchieve();
         _totalAchieveNum = 0;
         _totalAchieveKindNum = [0,0,0,0,0,0,0];
         for(_loc1_ in GameData.d[GamePredef.TBL_ACHIEVEMENT])
         {
            _loc2_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][_loc1_];
            if(Boolean(_loc2_) && _loc2_.enable == 1)
            {
               ++_totalAchieveNum;
               ++_totalAchieveKindNum[_loc2_.kind];
            }
         }
         initRecentAchieve();
         initAchieveProgress();
         updateOverView();
      }
      
      private function getFinishTime(param1:int) : String
      {
         var _loc2_:Date = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(isFinishAchieve(param1))
         {
            _loc2_ = new Date(_core.player.achieveLog[param1]);
            _loc3_ = "0" + ToolKit.add(_loc2_.getMonth(),1);
            _loc3_ = _loc3_.substr(-2);
            _loc4_ = "0" + _loc2_.date;
            _loc4_ = _loc4_.substr(-2);
            return _loc2_.getFullYear() + "." + _loc3_ + "." + _loc4_;
         }
         return "";
      }
      
      [Bindable(event="propertyChange")]
      public function get detail2() : AchievementDetail
      {
         return this._1557721601detail2;
      }
      
      [Bindable(event="propertyChange")]
      public function get detail3() : AchievementDetail
      {
         return this._1557721602detail3;
      }
      
      private function _AchievementPanel_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementPanel_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementPanel_RemoveChild1",_AchievementPanel_RemoveChild1);
         return _loc1_;
      }
      
      public function set canvasOverView(param1:Canvas) : void
      {
         var _loc2_:Object = this._165649647canvasOverView;
         if(_loc2_ !== param1)
         {
            this._165649647canvasOverView = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvasOverView",_loc2_,param1));
         }
      }
      
      private function showSelectAchieveDetail() : void
      {
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Object = null;
         var _loc1_:AchievementDetail = AchievementDetail(this[_selectedDetail]);
         var _loc2_:Object = GameData.d[GamePredef.TBL_ACHIEVEMENT][_loc1_.aid];
         var _loc3_:Object = {};
         _loc3_.detail = _loc2_.detail;
         _loc3_.finished = isFinishAchieve(_loc2_.id);
         var _loc4_:Object = _core.data.gameDataIndex[GamePredef.TBL_ACHIEVEMENT_REQUIRE][_loc2_.id];
         var _loc11_:int = 0;
         var _loc12_:* = _loc4_;
         for(_loc5_ in _loc12_)
         {
            _loc6_ = int(_loc4_[_loc5_].showType);
         }
         if(_loc6_ == 1)
         {
            _loc3_.enumNameList = {};
            for(_loc7_ in _loc4_)
            {
               _loc3_.enumNameList[_loc4_[_loc7_].name] = isFinishAchieve(_loc2_.id) || isDoneAchieveReq(_loc7_);
            }
         }
         else if(_loc6_ == 2)
         {
            _loc3_.progressNameList = {};
            for(_loc8_ in _loc4_)
            {
               _loc9_ = _loc4_[_loc8_];
               _loc10_ = {};
               _loc10_.m = _loc9_.num;
               _loc10_.v = isFinishAchieve(_loc2_.id) ? _loc9_.num : _charAchieveReqLog[_loc9_.id] && _charAchieveReqLog[_loc9_.id].progress || 0;
               _loc3_.progressNameList[_loc4_[_loc8_].name] = _loc10_;
            }
         }
         _loc1_.showDetail(_loc6_,_loc3_);
      }
      
      public function __detail3_click(param1:MouseEvent) : void
      {
         onAchieveClick(param1);
      }
      
      public function set progressTotal(param1:Property) : void
      {
         var _loc2_:Object = this._770866455progressTotal;
         if(_loc2_ !== param1)
         {
            this._770866455progressTotal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTotal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTotal() : Property
      {
         return this._770866455progressTotal;
      }
      
      public function set rescentDetail1(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1607534952rescentDetail1;
         if(_loc2_ !== param1)
         {
            this._1607534952rescentDetail1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rescentDetail1",_loc2_,param1));
         }
      }
      
      public function set rescentDetail2(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1607534951rescentDetail2;
         if(_loc2_ !== param1)
         {
            this._1607534951rescentDetail2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rescentDetail2",_loc2_,param1));
         }
      }
      
      public function set rescentAchieveVBox(param1:VBox) : void
      {
         var _loc2_:Object = this._1362202622rescentAchieveVBox;
         if(_loc2_ !== param1)
         {
            this._1362202622rescentAchieveVBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rescentAchieveVBox",_loc2_,param1));
         }
      }
      
      public function set vrule1(param1:VRule) : void
      {
         var _loc2_:Object = this._807853569vrule1;
         if(_loc2_ !== param1)
         {
            this._807853569vrule1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vrule1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vrule1() : VRule
      {
         return this._807853569vrule1;
      }
      
      private function achieveTreeClick(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Sort = null;
         var _loc5_:AchievementDetail = null;
         var _loc2_:Object = achieveTree.selectedItem;
         if(_loc2_.label == Language.ACHIEVEMENTPANEL_U[1])
         {
            updateOverView();
            closeAllNodes();
         }
         else
         {
            currentState = "detail";
            if(Boolean(_loc2_.kind) && Boolean(_loc2_.kind > 0) && _loc2_.hasOwnProperty("children"))
            {
               _loc3_ = achieveTree.isItemOpen(achieveTree.selectedItem);
               closeAllNodes();
               if(!_loc3_)
               {
                  achieveTree.expandItem(achieveTree.selectedItem,!achieveTree.isItemOpen(achieveTree.selectedItem));
               }
               _achieveList = getAchieveList(_loc2_.kind);
            }
            else
            {
               _achieveList = getAchieveList(-1,_loc2_.type);
            }
            if(_achieveList.length > 0)
            {
               _loc4_ = new Sort();
               _loc4_.fields = [new SortField("finished",true,true),new SortField("award")];
               _achieveList.sort = _loc4_;
               _achieveList.refresh();
               achievePageCtrl.initPageSeletor(_achieveList.length,_ACHIEVE_COUNT_PER_PAGE);
            }
         }
         if(_selectedDetail)
         {
            _loc5_ = this[_selectedDetail];
            _loc5_.selected = false;
         }
      }
      
      private function onAchieveClick(param1:MouseEvent) : void
      {
         var _loc3_:AchievementDetail = null;
         var _loc2_:AchievementDetail = AchievementDetail(param1.currentTarget);
         if(param1.shiftKey)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).addLink(LinkEncode.encode(GamePredef.TBL_ACHIEVEMENT,_loc2_.aid,_loc2_.txtareaAchieveTitle.text));
         }
         else
         {
            if(_selectedDetail)
            {
               _loc3_ = null;
               if(param1.currentTarget == this[_selectedDetail])
               {
                  _loc3_ = AchievementDetail(param1.currentTarget);
                  _selectedDetail = null;
                  _loc3_.selected = false;
                  return;
               }
               _loc3_ = AchievementDetail(this[_selectedDetail]);
               _loc3_.selected = false;
            }
            _selectedDetail = _loc2_.id;
            _loc2_.selected = true;
            showSelectAchieveDetail();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentDetail1() : AchievementDetail
      {
         return this._1607534952rescentDetail1;
      }
      
      private function isFinishAchieve(param1:int) : Boolean
      {
         return Boolean(_core.player.achieveLog[param1]) && _core.player.achieveLog[param1] > _MAX_ACH_CHECK_VERSION;
      }
      
      private function updateRecentAchieve(param1:int = -1) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(param1 > 0)
         {
            if(_recentAchieveList.length == 0)
            {
               _recentAchieveList.addItemAt({
                  "aid":param1,
                  "done":_charAchieveLog[param1]
               },_loc3_);
            }
            else
            {
               _loc3_ = 0;
               while(_loc3_ < _recentAchieveList.length)
               {
                  if(isFinishAchieve(param1) && _charAchieveLog[param1] > _recentAchieveList[_loc3_].done)
                  {
                     _recentAchieveList.addItemAt({
                        "aid":param1,
                        "done":_charAchieveLog[param1]
                     },_loc3_);
                     if(_recentAchieveList.length > 3)
                     {
                        _recentAchieveList.removeItemAt(3);
                     }
                     break;
                  }
                  _loc3_++;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < _recentAchieveList.length)
         {
            _loc4_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][_recentAchieveList[_loc2_].aid];
            this["rescentDetail" + _loc2_].visible = true;
            this["rescentDetail" + _loc2_].aid = _loc4_.id;
            this["rescentDetail" + _loc2_].txtareaAchieveTitle.htmlText = TipAchieve.ACH_NAME_STR.replace("{color}",GamePredef.MSG_ITEM_COLOR[_loc4_.color]).replace("{name}",_loc4_.name);
            this["rescentDetail" + _loc2_].selected = false;
            this["rescentDetail" + _loc2_].txtAchieveTime.label = getFinishTime(_recentAchieveList[_loc2_].aid);
            this["rescentDetail" + _loc2_].txtareaAchieveDesc.text = _loc4_.description;
            this["rescentDetail" + _loc2_].txtAchieveAward.label = _loc4_.award;
            this["rescentDetail" + _loc2_].finished = true;
            _loc2_++;
         }
         while(_loc2_ < 3)
         {
            this["rescentDetail" + _loc2_++].visible = false;
         }
      }
      
      public function set achieveTree(param1:ButtonTree) : void
      {
         var _loc2_:Object = this._1746887055achieveTree;
         if(_loc2_ !== param1)
         {
            this._1746887055achieveTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achieveTree",_loc2_,param1));
         }
      }
      
      public function set progress4(param1:Property) : void
      {
         var _loc2_:Object = this._968653913progress4;
         if(_loc2_ !== param1)
         {
            this._968653913progress4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress4",_loc2_,param1));
         }
      }
      
      public function set progress5(param1:Property) : void
      {
         var _loc2_:Object = this._968653912progress5;
         if(_loc2_ !== param1)
         {
            this._968653912progress5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress5",_loc2_,param1));
         }
      }
      
      public function __rescentDetail2_click(param1:MouseEvent) : void
      {
         onRecentAchClick(param1);
      }
      
      public function set progress6(param1:Property) : void
      {
         var _loc2_:Object = this._968653911progress6;
         if(_loc2_ !== param1)
         {
            this._968653911progress6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detail1() : AchievementDetail
      {
         return this._1557721600detail1;
      }
      
      private function initRecentAchieve() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         _recentAchieveList = new ArrayCollection();
         for(_loc1_ in _charAchieveLog)
         {
            if(isFinishAchieve(_loc1_))
            {
               if(_recentAchieveList.length == 0)
               {
                  _recentAchieveList.addItem({
                     "aid":_loc1_,
                     "done":_charAchieveLog[_loc1_]
                  });
               }
               else
               {
                  _loc2_ = 0;
                  _loc3_ = false;
                  while(_loc2_ < _recentAchieveList.length)
                  {
                     if(_charAchieveLog[_loc1_] > _recentAchieveList[_loc2_].done)
                     {
                        _recentAchieveList.addItemAt({
                           "aid":_loc1_,
                           "done":_charAchieveLog[_loc1_]
                        },_loc2_);
                        _loc3_ = true;
                        if(_recentAchieveList.length > 3)
                        {
                           _recentAchieveList.removeItemAt(3);
                        }
                        break;
                     }
                     _loc2_++;
                  }
                  if(!_loc3_ && _loc2_ < 3)
                  {
                     _recentAchieveList.addItemAt({
                        "aid":_loc1_,
                        "done":_charAchieveLog[_loc1_]
                     },_loc2_);
                  }
               }
            }
         }
      }
      
      private function getAchieveList(param1:int, param2:int = 0) : ArrayCollection
      {
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         var _loc3_:ArrayCollection = new ArrayCollection();
         if(param1 < 0)
         {
            _loc4_ = _core.data.gameDataIndex2[GamePredef.TBL_ACHIEVEMENT][param2];
            for(_loc5_ in _loc4_)
            {
               if(_loc4_[_loc5_].enable == 1)
               {
                  _loc4_[_loc5_].finished = isFinishAchieve(_loc5_) ? 1 : 0;
                  _loc3_.addItem(_loc4_[_loc5_]);
               }
            }
         }
         else
         {
            _loc6_ = _core.data.gameDataIndex[GamePredef.TBL_ACHIEVEMENT][param1];
            for(_loc7_ in _loc6_)
            {
               if(_loc6_[_loc7_].enable == 1)
               {
                  _loc6_[_loc7_].finished = isFinishAchieve(_loc7_) ? 1 : 0;
                  _loc3_.addItem(_loc6_[_loc7_]);
               }
            }
         }
         return _loc3_;
      }
      
      public function set progress3(param1:Property) : void
      {
         var _loc2_:Object = this._968653914progress3;
         if(_loc2_ !== param1)
         {
            this._968653914progress3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress3",_loc2_,param1));
         }
      }
      
      private function _AchievementPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTitleCanvas1.text = param1;
         },"_AchievementPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvasDetail;
         },function(param1:DisplayObject):void
         {
            _AchievementPanel_RemoveChild1.target = param1;
         },"_AchievementPanel_RemoveChild1.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvasOverView;
         },function(param1:DisplayObject):void
         {
            _AchievementPanel_RemoveChild2.target = param1;
         },"_AchievementPanel_RemoveChild2.target");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            achievePoint.label = param1;
         },"achievePoint.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton2.label = param1;
         },"_AchievementPanel_BasicTxtButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton3.label = param1;
         },"_AchievementPanel_BasicTxtButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton4.label = param1;
         },"_AchievementPanel_BasicTxtButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[423];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton5.label = param1;
         },"_AchievementPanel_BasicTxtButton5.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[424];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton6.label = param1;
         },"_AchievementPanel_BasicTxtButton6.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[425];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton7.label = param1;
         },"_AchievementPanel_BasicTxtButton7.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[426];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton8.label = param1;
         },"_AchievementPanel_BasicTxtButton8.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[427];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton9.label = param1;
         },"_AchievementPanel_BasicTxtButton9.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[428];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton10.label = param1;
         },"_AchievementPanel_BasicTxtButton10.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementPanel_BasicTxtButton11.label = param1;
         },"_AchievementPanel_BasicTxtButton11.label");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return _ACHIEVE_COUNT_PER_PAGE;
         },function(param1:int):void
         {
            achievePageCtrl.pageSize = param1;
         },"achievePageCtrl.pageSize");
         result[14] = binding;
         return result;
      }
      
      public function set progress1(param1:Property) : void
      {
         var _loc2_:Object = this._968653916progress1;
         if(_loc2_ !== param1)
         {
            this._968653916progress1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress1",_loc2_,param1));
         }
      }
      
      private function _AchievementPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ACHIEVEMENTPANEL_U[0];
         _loc1_ = canvasDetail;
         _loc1_ = canvasOverView;
         _loc1_ = Language.ACHIEVEMENTPANEL_U[2];
         _loc1_ = Language.ACHIEVEMENTPANEL_U[3];
         _loc1_ = Language.ACHIEVEMENTPANEL_U[4];
         _loc1_ = Language.ACHIEVEMENTPANEL_U[5];
         _loc1_ = Language.GAMEPREDEF_S[423];
         _loc1_ = Language.GAMEPREDEF_S[424];
         _loc1_ = Language.GAMEPREDEF_S[425];
         _loc1_ = Language.GAMEPREDEF_S[426];
         _loc1_ = Language.GAMEPREDEF_S[427];
         _loc1_ = Language.GAMEPREDEF_S[428];
         _loc1_ = Language.ACHIEVEMENTPANEL_U[6];
         _loc1_ = _ACHIEVE_COUNT_PER_PAGE;
      }
      
      public function set rescentDetail0(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1607534953rescentDetail0;
         if(_loc2_ !== param1)
         {
            this._1607534953rescentDetail0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rescentDetail0",_loc2_,param1));
         }
      }
      
      public function __detail0_click(param1:MouseEvent) : void
      {
         onAchieveClick(param1);
      }
      
      public function __detail4_click(param1:MouseEvent) : void
      {
         onAchieveClick(param1);
      }
      
      private function initAchieveProgress() : void
      {
         var _loc1_:Object = null;
         var _loc2_:* = undefined;
         _finishAchieveTotalNum = 0;
         _finishAchieveKindNum = [0,0,0,0,0,0,0];
         for(_loc2_ in _charAchieveLog)
         {
            if(isFinishAchieve(_loc2_))
            {
               ++_finishAchieveTotalNum;
               _loc1_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][_loc2_] || {};
               ++_finishAchieveKindNum[_loc1_.kind];
            }
         }
      }
      
      public function set progress2(param1:Property) : void
      {
         var _loc2_:Object = this._968653915progress2;
         if(_loc2_ !== param1)
         {
            this._968653915progress2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress2",_loc2_,param1));
         }
      }
      
      private function isDoneAchieveReq(param1:int) : Boolean
      {
         return Boolean(_core.player.achieveReqLog[param1]) && (_core.player.achieveReqLog[param1].done > 0 || _core.player.achieveReqLog[param1].progress > 0);
      }
      
      private function updateOverView(param1:int = -1) : void
      {
         if(!_initalized)
         {
            return;
         }
         currentState = "overview";
         updateRecentAchieve(param1);
         achievePoint.label = Language.ACHIEVEMENTPANEL_U[2].replace("{point}",_core.player.achPnt);
         updateAchieveProgress();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AchievementPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AchievementPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AchievementPanelWatcherSetupUtil");
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
      
      public function set canvasDetail(param1:Canvas) : void
      {
         var _loc2_:Object = this._1291982793canvasDetail;
         if(_loc2_ !== param1)
         {
            this._1291982793canvasDetail = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvasDetail",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get achieveVBox() : VBox
      {
         return this._1746900838achieveVBox;
      }
      
      private function updateAchieveProgress() : void
      {
         var _loc1_:* = undefined;
         progressTotal.m = _totalAchieveNum;
         progressTotal.v = _finishAchieveTotalNum;
         progressTotal.label = _finishAchieveTotalNum + "/" + _totalAchieveNum;
         for(_loc1_ in GamePredef.ACHI_KIND_NAME)
         {
            this["progress" + _loc1_].m = _totalAchieveKindNum[_loc1_];
            this["progress" + _loc1_].v = _finishAchieveKindNum[_loc1_];
            this["progress" + _loc1_].label = _finishAchieveKindNum[_loc1_] + "/" + _totalAchieveKindNum[_loc1_];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentDetail2() : AchievementDetail
      {
         return this._1607534951rescentDetail2;
      }
      
      [Bindable(event="propertyChange")]
      public function get achieveTree() : ButtonTree
      {
         return this._1746887055achieveTree;
      }
      
      public function __achieveTree_itemClick(param1:ListEvent) : void
      {
         achieveTreeClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get progress4() : Property
      {
         return this._968653913progress4;
      }
      
      public function __detail1_click(param1:MouseEvent) : void
      {
         onAchieveClick(param1);
      }
      
      public function set achievePoint(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1684855361achievePoint;
         if(_loc2_ !== param1)
         {
            this._1684855361achievePoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achievePoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progress2() : Property
      {
         return this._968653915progress2;
      }
      
      private function closeAllNodes() : void
      {
         var _loc1_:* = undefined;
         for each(_loc1_ in achieveTree.openItems)
         {
            achieveTree.expandItem(_loc1_,false);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progress6() : Property
      {
         return this._968653911progress6;
      }
      
      public function __rescentDetail0_click(param1:MouseEvent) : void
      {
         onRecentAchClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get progress3() : Property
      {
         return this._968653914progress3;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvasDetail() : Canvas
      {
         return this._1291982793canvasDetail;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress5() : Property
      {
         return this._968653912progress5;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Sort = null;
         var _loc5_:ArrayCollection = null;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:Object = null;
         if(_isAchieveUpdated && currentState == "detail")
         {
            _isAchieveUpdated = false;
            _loc3_ = achieveTree.selectedItem;
            if(Boolean(_loc3_.kind) && Boolean(_loc3_.kind > 0) && _loc3_.hasOwnProperty("children"))
            {
               _achieveList = getAchieveList(_loc3_.kind);
            }
            else
            {
               _achieveList = getAchieveList(-1,_loc3_.type);
            }
            _loc4_ = new Sort();
            _loc4_.fields = [new SortField("finished",true,true),new SortField("award")];
            _achieveList.sort = _loc4_;
            _achieveList.refresh();
         }
         if(_achieveList)
         {
            _loc5_ = ToolKit.getPageCollection(_achieveList,param1,param2);
            _loc6_ = _loc5_.length < _ACHIEVE_COUNT_PER_PAGE ? _loc5_.length : _ACHIEVE_COUNT_PER_PAGE;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc8_ = _loc5_[_loc7_];
               this["detail" + _loc7_].aid = _loc8_.id;
               this["detail" + _loc7_].visible = true;
               this["detail" + _loc7_].selected = false;
               this["detail" + _loc7_].txtAchieveTime.label = getFinishTime(_loc8_.id);
               this["detail" + _loc7_].txtareaAchieveDesc.text = _loc8_.description;
               this["detail" + _loc7_].txtAchieveAward.label = _loc8_.award;
               this["detail" + _loc7_].finished = _loc8_.finished;
               if(_loc8_.finished == 0)
               {
                  this["detail" + _loc7_].txtareaAchieveTitle.htmlText = TipAchieve.ACH_NAME_STR.replace("{color}",13158600).replace("{name}",_loc8_.name);
               }
               else
               {
                  this["detail" + _loc7_].txtareaAchieveTitle.htmlText = TipAchieve.ACH_NAME_STR.replace("{color}",GamePredef.MSG_ITEM_COLOR[_loc8_.color]).replace("{name}",_loc8_.name);
               }
               _loc7_++;
            }
            while(_loc7_ < _ACHIEVE_COUNT_PER_PAGE)
            {
               this["detail" + _loc7_++].visible = false;
            }
         }
      }
      
      private function initTree() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:ArrayCollection = null;
         var _loc6_:int = 0;
         var _loc7_:* = undefined;
         var _loc1_:Object = GamePredef.ACHI_KIND_TYPE;
         var _loc2_:Object = {};
         var _loc3_:ArrayCollection = new ArrayCollection();
         _loc3_.addItem({"label":Language.ACHIEVEMENTPANEL_U[1]});
         for(_loc4_ in _loc1_)
         {
            _loc2_[_loc4_] = new ArrayCollection();
            for(_loc7_ in _loc1_[_loc4_])
            {
               _loc2_[_loc4_].addItem({
                  "label":GamePredef.ACHI_TYPE_NAME[_loc7_],
                  "kind":_loc4_,
                  "type":_loc7_
               });
            }
            _loc3_.addItem({
               "label":GamePredef.ACHI_KIND_NAME[_loc4_],
               "kind":_loc4_,
               "children":_loc2_[_loc4_]
            });
         }
         _loc5_ = new ArrayCollection();
         _loc6_ = 0;
         while(_loc6_ < _loc3_.length)
         {
            _loc5_.addItem(_loc3_.getItemAt(_loc6_));
            _loc6_++;
         }
         achieveTree.dataProvider = _loc5_;
      }
      
      private function _AchievementPanel_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementPanel_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementPanel_RemoveChild2",_AchievementPanel_RemoveChild2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress1() : Property
      {
         return this._968653916progress1;
      }
      
      public function set detail1(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1557721600detail1;
         if(_loc2_ !== param1)
         {
            this._1557721600detail1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail1",_loc2_,param1));
         }
      }
      
      private function _AchievementPanel_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "detail";
         _loc1_.overrides = [_AchievementPanel_RemoveChild2_i()];
         return _loc1_;
      }
      
      override public function initView() : void
      {
         if(!_initalized)
         {
            return;
         }
         initCharAchieve();
         initRecentAchieve();
         initAchieveProgress();
         updateOverView();
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentDetail0() : AchievementDetail
      {
         return this._1607534953rescentDetail0;
      }
      
      public function ___AchievementPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get achievePoint() : BasicTxtButton
      {
         return this._1684855361achievePoint;
      }
      
      private function onRecentAchClick(param1:MouseEvent) : void
      {
         var _loc2_:AchievementDetail = AchievementDetail(param1.currentTarget);
         if(param1.shiftKey)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).addLink(LinkEncode.encode(GamePredef.TBL_ACHIEVEMENT,_loc2_.aid,_loc2_.txtareaAchieveTitle.text));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            initCharAchieve();
            updateOverView();
         }
      }
      
      public function set achieveVBox(param1:VBox) : void
      {
         var _loc2_:Object = this._1746900838achieveVBox;
         if(_loc2_ !== param1)
         {
            this._1746900838achieveVBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achieveVBox",_loc2_,param1));
         }
      }
      
      public function __detail2_click(param1:MouseEvent) : void
      {
         onAchieveClick(param1);
      }
      
      private function initCharAchieve() : void
      {
         _charAchieveLog = _core.player.achieveLog;
         _charAchieveReqLog = _core.player.achieveReqLog;
      }
      
      public function set detail0(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1557721599detail0;
         if(_loc2_ !== param1)
         {
            this._1557721599detail0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detail0() : AchievementDetail
      {
         return this._1557721599detail0;
      }
   }
}

