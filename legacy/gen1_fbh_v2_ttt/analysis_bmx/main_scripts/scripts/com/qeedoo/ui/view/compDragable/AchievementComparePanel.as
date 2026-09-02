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
   import mx.controls.Label;
   import mx.controls.VRule;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AchievementComparePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _ACHIEVE_COUNT_PER_PAGE:int = 5;
      
      private static var _MAX_ACH_CHECK_VERSION:int = 999999;
      
      private var _968653915progress2:Property;
      
      private var _2093876418simple4:AchievementDetail;
      
      private var _totalAchPoint:Number = 0;
      
      private var _finishAchieveKindNum:Array = [0,0,0,0,0,0,0];
      
      private var _165649647canvasOverView:Canvas;
      
      private var _1557721601detail2:AchievementDetail;
      
      private var _1607534951rescentDetail2:AchievementDetail;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":515,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
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
                        "width":475,
                        "height":375,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"achievePoint",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 15;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":86,
                                 "y":6,
                                 "width":203,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_AchievementComparePanel_BasicTxtButton2",
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
                           "id":"_AchievementComparePanel_BasicTxtButton3",
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
                           "id":"_AchievementComparePanel_BasicTxtButton4",
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
                           "id":"_AchievementComparePanel_BasicTxtButton5",
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
                           "id":"_AchievementComparePanel_BasicTxtButton6",
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
                           "id":"_AchievementComparePanel_BasicTxtButton7",
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
                           "id":"_AchievementComparePanel_BasicTxtButton8",
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
                           "id":"_AchievementComparePanel_BasicTxtButton9",
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
                           "id":"_AchievementComparePanel_BasicTxtButton10",
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
                           "id":"_AchievementComparePanel_BasicTxtButton11",
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
                        "width":460,
                        "height":364,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"otherName",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                              this.fontSize = 15;
                              this.left = "10";
                              this.top = "7";
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"achieveVBox",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "35";
                              this.horizontalGap = 10;
                              this.verticalGap = 4;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":365,
                                 "height":320,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail0"
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail1"
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail2"
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail3"
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"detail4"
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"selfName",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                              this.fontSize = 15;
                              this.top = "7";
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":360};
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"achieveVBoxSelf",
                           "stylesFactory":function():void
                           {
                              this.top = "35";
                              this.horizontalGap = 5;
                              this.verticalGap = 4;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":360,
                                 "width":80,
                                 "height":320,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"simple0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"currentState":"simple"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"simple1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"currentState":"simple"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"simple2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"currentState":"simple"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"simple3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"currentState":"simple"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AchievementDetail,
                                    "id":"simple4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"currentState":"simple"};
                                    }
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
      
      private var _2093876416simple2:AchievementDetail;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1291982793canvasDetail:Canvas;
      
      private var _1607534952rescentDetail1:AchievementDetail;
      
      private var _1362202622rescentAchieveVBox:VBox;
      
      private var _core:Core = Core.getInstance();
      
      private var _2093876414simple0:AchievementDetail;
      
      private var _770866455progressTotal:Property;
      
      private var _1746887055achieveTree:ButtonTree;
      
      private var _1607534953rescentDetail0:AchievementDetail;
      
      private var _968653912progress5:Property;
      
      public var _AchievementComparePanel_BasicTxtButton2:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton3:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton4:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton5:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton6:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton7:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton8:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton9:BasicTxtButton;
      
      private var _recentAchieveList:ArrayCollection = null;
      
      private var _achieveList:ArrayCollection = null;
      
      private var _968653914progress3:Property;
      
      private var _initalized:Boolean = false;
      
      private var _selectedDetail:String = null;
      
      private var _1557721599detail0:AchievementDetail;
      
      private var _finishAchieveTotalNum:int = 0;
      
      private var _1557721602detail3:AchievementDetail;
      
      public var _AchievementComparePanel_RemoveChild1:RemoveChild;
      
      public var _AchievementComparePanel_RemoveChild2:RemoveChild;
      
      private var _2145302773achievePageCtrl:PageSelector;
      
      private var _1774143534achieveVBoxSelf:VBox;
      
      private var _968653916progress1:Property;
      
      private var _807853569vrule1:VRule;
      
      public var _AchievementComparePanel_BasicTxtButton10:BasicTxtButton;
      
      public var _AchievementComparePanel_BasicTxtButton11:BasicTxtButton;
      
      private var _2093876417simple3:AchievementDetail;
      
      private var _1557721600detail1:AchievementDetail;
      
      private var _charAchieveReqLog:Object;
      
      private var _charAchieveLog:Object;
      
      private var _1191852023selfName:Label;
      
      private var _2093876415simple1:AchievementDetail;
      
      private var _totalAchieveKindNum:Array = [0,0,0,0,0,0,0];
      
      private var _968653911progress6:Property;
      
      mx_internal var _watchers:Array = [];
      
      private var _totalAchieveNum:int = 0;
      
      private var _1746900838achieveVBox:VBox;
      
      private var _968653913progress4:Property;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1684855361achievePoint:BasicTxtButton;
      
      private var _1557721603detail4:AchievementDetail;
      
      private var _1946065477otherName:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _110371416title:BasicTitleCanvas;
      
      public function AchievementComparePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 515;
         this.height = 410;
         this.styleName = "StandardContent";
         this.states = [_AchievementComparePanel_State1_c(),_AchievementComparePanel_State2_c()];
         this.addEventListener("creationComplete",___AchievementComparePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AchievementComparePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get detail2() : AchievementDetail
      {
         return this._1557721601detail2;
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
      
      private function getFinishTime(param1:int, param2:Object) : String
      {
         var _loc3_:Date = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(isFinishAchieve(param1,param2))
         {
            _loc3_ = new Date(param2[param1]);
            _loc4_ = "0" + ToolKit.add(_loc3_.getMonth(),1);
            _loc4_ = _loc4_.substr(-2);
            _loc5_ = "0" + _loc3_.date;
            _loc5_ = _loc5_.substr(-2);
            return _loc3_.getFullYear() + "." + _loc4_ + "." + _loc5_;
         }
         return "";
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
      
      public function set detail2(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._1557721601detail2;
         if(_loc2_ !== param1)
         {
            this._1557721601detail2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail2",_loc2_,param1));
         }
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
      public function get detail3() : AchievementDetail
      {
         return this._1557721602detail3;
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
      
      [Bindable(event="propertyChange")]
      public function get vrule1() : VRule
      {
         return this._807853569vrule1;
      }
      
      [Bindable(event="propertyChange")]
      public function get detail1() : AchievementDetail
      {
         return this._1557721600detail1;
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
      
      public function set vrule1(param1:VRule) : void
      {
         var _loc2_:Object = this._807853569vrule1;
         if(_loc2_ !== param1)
         {
            this._807853569vrule1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vrule1",_loc2_,param1));
         }
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
      
      public function set progressTotal(param1:Property) : void
      {
         var _loc2_:Object = this._770866455progressTotal;
         if(_loc2_ !== param1)
         {
            this._770866455progressTotal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTotal",_loc2_,param1));
         }
      }
      
      private function _AchievementComparePanel_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "detail";
         _loc1_.overrides = [_AchievementComparePanel_RemoveChild2_i(),_AchievementComparePanel_SetProperty1_c()];
         return _loc1_;
      }
      
      private function _AchievementComparePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ACHIEVEMENTPANEL_U[7];
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
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.ACHIEVEMENTPANEL_U[8];
         _loc1_ = detail0.visible;
         _loc1_ = detail1.visible;
         _loc1_ = detail2.visible;
         _loc1_ = detail3.visible;
         _loc1_ = detail4.visible;
         _loc1_ = _ACHIEVE_COUNT_PER_PAGE;
      }
      
      public function __rescentDetail2_click(param1:MouseEvent) : void
      {
         onRecentAchClick(param1);
      }
      
      private function initRecentAchieve() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         _recentAchieveList = new ArrayCollection();
         for(_loc1_ in _charAchieveLog)
         {
            if(isFinishAchieve(_loc1_,_charAchieveLog))
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
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      private function setFinishedField(param1:ArrayCollection) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Array = param1.source;
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_].finished = 0;
            if(isFinishAchieve(_loc2_[_loc3_].id,_charAchieveLog))
            {
               _loc2_[_loc3_].finished += 2;
            }
            if(isFinishAchieve(_loc2_[_loc3_].id,_core.player.achieveLog))
            {
               _loc2_[_loc3_].finished += 1;
            }
            _loc3_++;
         }
      }
      
      private function initAchieveProgress() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Object = null;
         _finishAchieveTotalNum = 0;
         _finishAchieveKindNum = [0,0,0,0,0,0,0];
         for(_loc1_ in _charAchieveLog)
         {
            _loc2_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][_loc1_];
            if(Boolean(_loc2_) && isFinishAchieve(_loc1_,_charAchieveLog))
            {
               ++_finishAchieveTotalNum;
               ++_finishAchieveKindNum[_loc2_.kind];
            }
         }
      }
      
      private function _AchievementComparePanel_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "overview";
         _loc1_.overrides = [_AchievementComparePanel_RemoveChild1_i()];
         return _loc1_;
      }
      
      private function _AchievementComparePanel_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementComparePanel_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementComparePanel_RemoveChild2",_AchievementComparePanel_RemoveChild2);
         return _loc1_;
      }
      
      public function ___AchievementComparePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentDetail0() : AchievementDetail
      {
         return this._1607534953rescentDetail0;
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentDetail1() : AchievementDetail
      {
         return this._1607534952rescentDetail1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rescentDetail2() : AchievementDetail
      {
         return this._1607534951rescentDetail2;
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
      
      private function _AchievementComparePanel_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementComparePanel_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementComparePanel_RemoveChild1",_AchievementComparePanel_RemoveChild1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get simple1() : AchievementDetail
      {
         return this._2093876415simple1;
      }
      
      [Bindable(event="propertyChange")]
      public function get simple2() : AchievementDetail
      {
         return this._2093876416simple2;
      }
      
      [Bindable(event="propertyChange")]
      public function get simple3() : AchievementDetail
      {
         return this._2093876417simple3;
      }
      
      [Bindable(event="propertyChange")]
      public function get simple4() : AchievementDetail
      {
         return this._2093876418simple4;
      }
      
      [Bindable(event="propertyChange")]
      public function get simple0() : AchievementDetail
      {
         return this._2093876414simple0;
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
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            initCharAchieve();
            updateOverView();
         }
      }
      
      private function _AchievementComparePanel_SetProperty1_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "width";
         _loc1_.value = 585;
         return _loc1_;
      }
      
      private function initCharAchieve(param1:Object = null, param2:Object = null) : void
      {
         param1 && (_charAchieveLog = param1);
         param2 && (_charAchieveReqLog = param2);
      }
      
      public function __rescentDetail1_click(param1:MouseEvent) : void
      {
         onRecentAchClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get achievePageCtrl() : PageSelector
      {
         return this._2145302773achievePageCtrl;
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
      
      [Bindable(event="propertyChange")]
      public function get canvasOverView() : Canvas
      {
         return this._165649647canvasOverView;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTotal() : Property
      {
         return this._770866455progressTotal;
      }
      
      private function updateRecentAchieve() : void
      {
         var _loc2_:Object = null;
         var _loc1_:* = 0;
         while(_loc1_ < _recentAchieveList.length)
         {
            _loc2_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][_recentAchieveList[_loc1_].aid];
            this["rescentDetail" + _loc1_].visible = true;
            this["rescentDetail" + _loc1_].aid = _loc2_.id;
            this["rescentDetail" + _loc1_].txtareaAchieveTitle.htmlText = TipAchieve.ACH_NAME_STR.replace("{color}",GamePredef.MSG_ITEM_COLOR[_loc2_.color]).replace("{name}",_loc2_.name);
            this["rescentDetail" + _loc1_].selected = false;
            this["rescentDetail" + _loc1_].txtAchieveTime.label = getFinishTime(_recentAchieveList[_loc1_].aid,_charAchieveLog);
            this["rescentDetail" + _loc1_].txtareaAchieveDesc.text = _loc2_.description;
            this["rescentDetail" + _loc1_].txtAchieveAward.label = _loc2_.award;
            this["rescentDetail" + _loc1_].finished = true;
            _loc1_++;
         }
         while(_loc1_ < 3)
         {
            this["rescentDetail" + _loc1_++].visible = false;
         }
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
      
      public function set achieveTree(param1:ButtonTree) : void
      {
         var _loc2_:Object = this._1746887055achieveTree;
         if(_loc2_ !== param1)
         {
            this._1746887055achieveTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achieveTree",_loc2_,param1));
         }
      }
      
      private function achieveTreeClick(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:AchievementDetail = null;
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
               achievePageCtrl.initPageSeletor(_achieveList.length,_ACHIEVE_COUNT_PER_PAGE);
            }
         }
         if(_selectedDetail)
         {
            _loc4_ = this[_selectedDetail];
            _loc4_.selected = false;
         }
      }
      
      private function isFinishAchieve(param1:int, param2:Object) : Boolean
      {
         if(!param2)
         {
            param2 = {};
         }
         return Boolean(param2[param1]) && ToolKit.isBigThan(param2[param1],_MAX_ACH_CHECK_VERSION);
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
      
      public function updateViewByData(param1:Object, param2:Object, param3:Number, param4:String) : void
      {
         visible || (visible = true);
         _totalAchPoint = param3;
         initCharAchieve(param1 || {},param2 || {});
         otherName.text = Language.ACHIEVEMENTPANEL_U[9].replace("{name}",param4);
         if(!_initalized)
         {
            init();
         }
         initRecentAchieve();
         initAchieveProgress();
         updateOverView();
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
      
      public function set progress2(param1:Property) : void
      {
         var _loc2_:Object = this._968653915progress2;
         if(_loc2_ !== param1)
         {
            this._968653915progress2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress2",_loc2_,param1));
         }
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
      
      public function set progress3(param1:Property) : void
      {
         var _loc2_:Object = this._968653914progress3;
         if(_loc2_ !== param1)
         {
            this._968653914progress3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress3",_loc2_,param1));
         }
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
                  _loc3_.addItem(_loc6_[_loc7_]);
               }
            }
         }
         return _loc3_;
      }
      
      [Bindable(event="propertyChange")]
      public function get achieveVBox() : VBox
      {
         return this._1746900838achieveVBox;
      }
      
      private function isDoneAchieveReq(param1:int) : Boolean
      {
         return Boolean(_charAchieveReqLog[param1]) && (_charAchieveReqLog[param1].done > 0 || _charAchieveReqLog[param1].progress > 0);
      }
      
      public function set simple0(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._2093876414simple0;
         if(_loc2_ !== param1)
         {
            this._2093876414simple0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simple0",_loc2_,param1));
         }
      }
      
      public function set otherName(param1:Label) : void
      {
         var _loc2_:Object = this._1946065477otherName;
         if(_loc2_ !== param1)
         {
            this._1946065477otherName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"otherName",_loc2_,param1));
         }
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
      
      public function set simple2(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._2093876416simple2;
         if(_loc2_ !== param1)
         {
            this._2093876416simple2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simple2",_loc2_,param1));
         }
      }
      
      private function updateOverView() : void
      {
         if(!_initalized)
         {
            return;
         }
         currentState = "overview";
         updateRecentAchieve();
         achievePoint.label = Language.ACHIEVEMENTPANEL_U[2].replace("{point}",_totalAchPoint);
         updateAchieveProgress();
      }
      
      public function set simple4(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._2093876418simple4;
         if(_loc2_ !== param1)
         {
            this._2093876418simple4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simple4",_loc2_,param1));
         }
      }
      
      public function set simple1(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._2093876415simple1;
         if(_loc2_ !== param1)
         {
            this._2093876415simple1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simple1",_loc2_,param1));
         }
      }
      
      public function set simple3(param1:AchievementDetail) : void
      {
         var _loc2_:Object = this._2093876417simple3;
         if(_loc2_ !== param1)
         {
            this._2093876417simple3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simple3",_loc2_,param1));
         }
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         if(Boolean(title) && Boolean(title.text))
         {
            title.text = title.text;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AchievementComparePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AchievementComparePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AchievementComparePanelWatcherSetupUtil");
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
      public function get achieveTree() : ButtonTree
      {
         return this._1746887055achieveTree;
      }
      
      public function set achieveVBoxSelf(param1:VBox) : void
      {
         var _loc2_:Object = this._1774143534achieveVBoxSelf;
         if(_loc2_ !== param1)
         {
            this._1774143534achieveVBoxSelf = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achieveVBoxSelf",_loc2_,param1));
         }
      }
      
      public function __achieveTree_itemClick(param1:ListEvent) : void
      {
         achieveTreeClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get progress3() : Property
      {
         return this._968653914progress3;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress4() : Property
      {
         return this._968653913progress4;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress5() : Property
      {
         return this._968653912progress5;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress6() : Property
      {
         return this._968653911progress6;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress1() : Property
      {
         return this._968653916progress1;
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
      public function get achievePoint() : BasicTxtButton
      {
         return this._1684855361achievePoint;
      }
      
      public function __rescentDetail0_click(param1:MouseEvent) : void
      {
         onRecentAchClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get otherName() : Label
      {
         return this._1946065477otherName;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Sort = null;
         var _loc5_:ArrayCollection = null;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:Object = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(currentState == "detail")
         {
            _loc3_ = achieveTree.selectedItem;
            if(Boolean(_loc3_.kind) && Boolean(_loc3_.kind > 0) && _loc3_.hasOwnProperty("children"))
            {
               _achieveList = getAchieveList(_loc3_.kind);
            }
            else
            {
               _achieveList = getAchieveList(-1,_loc3_.type);
            }
            setFinishedField(_achieveList);
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
               this["detail" + _loc7_].txtAchieveAward.label = _loc8_.award;
               this["detail" + _loc7_].txtAchieveTime.label = getFinishTime(_loc8_.id,_charAchieveLog);
               this["simple" + _loc7_].aid = _loc8_.id;
               this["simple" + _loc7_].visible = true;
               this["simple" + _loc7_].selected = false;
               this["simple" + _loc7_].txtAchieveAward.label = _loc8_.award;
               this["simple" + _loc7_].txtAchieveTime.label = getFinishTime(_loc8_.id,_core.player.achieveLog);
               this["detail" + _loc7_].txtareaAchieveDesc.text = _loc8_.description;
               this["detail" + _loc7_].finished = _loc8_.finished == 2 || _loc8_.finished == 3;
               this["simple" + _loc7_].finished = _loc8_.finished == 1 || _loc8_.finished == 3;
               _loc9_ = this["detail" + _loc7_].finished && GamePredef.MSG_ITEM_COLOR[_loc8_.color] || 13158600;
               _loc10_ = this["simple" + _loc7_].finished && GamePredef.MSG_ITEM_COLOR[_loc8_.color] || 13158600;
               this["detail" + _loc7_].txtareaAchieveTitle.htmlText = TipAchieve.ACH_NAME_STR.replace("{color}",_loc9_).replace("{name}",_loc8_.name);
               this["simple" + _loc7_].txtareaAchieveTitle.htmlText = TipAchieve.ACH_NAME_STR.replace("{color}",_loc10_).replace("{name}",_loc8_.name);
               _loc7_++;
            }
            while(_loc7_ < _ACHIEVE_COUNT_PER_PAGE)
            {
               this["detail" + _loc7_++].visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvasDetail() : Canvas
      {
         return this._1291982793canvasDetail;
      }
      
      [Bindable(event="propertyChange")]
      public function get achieveVBoxSelf() : VBox
      {
         return this._1774143534achieveVBoxSelf;
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
      
      private function _AchievementComparePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvasDetail;
         },function(param1:DisplayObject):void
         {
            _AchievementComparePanel_RemoveChild1.target = param1;
         },"_AchievementComparePanel_RemoveChild1.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvasOverView;
         },function(param1:DisplayObject):void
         {
            _AchievementComparePanel_RemoveChild2.target = param1;
         },"_AchievementComparePanel_RemoveChild2.target");
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
            _AchievementComparePanel_BasicTxtButton2.label = param1;
         },"_AchievementComparePanel_BasicTxtButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton3.label = param1;
         },"_AchievementComparePanel_BasicTxtButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton4.label = param1;
         },"_AchievementComparePanel_BasicTxtButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[423];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton5.label = param1;
         },"_AchievementComparePanel_BasicTxtButton5.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[424];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton6.label = param1;
         },"_AchievementComparePanel_BasicTxtButton6.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[425];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton7.label = param1;
         },"_AchievementComparePanel_BasicTxtButton7.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[426];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton8.label = param1;
         },"_AchievementComparePanel_BasicTxtButton8.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[427];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton9.label = param1;
         },"_AchievementComparePanel_BasicTxtButton9.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[428];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton10.label = param1;
         },"_AchievementComparePanel_BasicTxtButton10.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AchievementComparePanel_BasicTxtButton11.label = param1;
         },"_AchievementComparePanel_BasicTxtButton11.label");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            otherName.filters = param1;
         },"otherName.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            selfName.filters = param1;
         },"selfName.filters");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selfName.text = param1;
         },"selfName.text");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return detail0.visible;
         },function(param1:Boolean):void
         {
            simple0.visible = param1;
         },"simple0.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return detail1.visible;
         },function(param1:Boolean):void
         {
            simple1.visible = param1;
         },"simple1.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return detail2.visible;
         },function(param1:Boolean):void
         {
            simple2.visible = param1;
         },"simple2.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return detail3.visible;
         },function(param1:Boolean):void
         {
            simple3.visible = param1;
         },"simple3.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return detail4.visible;
         },function(param1:Boolean):void
         {
            simple4.visible = param1;
         },"simple4.visible");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return _ACHIEVE_COUNT_PER_PAGE;
         },function(param1:int):void
         {
            achievePageCtrl.pageSize = param1;
         },"achievePageCtrl.pageSize");
         result[22] = binding;
         return result;
      }
      
      private function onRecentAchClick(param1:MouseEvent) : void
      {
         var _loc2_:AchievementDetail = AchievementDetail(param1.currentTarget);
         if(param1.shiftKey)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).addLink(LinkEncode.encode(GamePredef.TBL_ACHIEVEMENT,_loc2_.aid,_loc2_.txtareaAchieveTitle.text));
         }
      }
      
      public function set selfName(param1:Label) : void
      {
         var _loc2_:Object = this._1191852023selfName;
         if(_loc2_ !== param1)
         {
            this._1191852023selfName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfName() : Label
      {
         return this._1191852023selfName;
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
      
      [Bindable(event="propertyChange")]
      public function get rescentAchieveVBox() : VBox
      {
         return this._1362202622rescentAchieveVBox;
      }
      
      [Bindable(event="propertyChange")]
      public function get detail0() : AchievementDetail
      {
         return this._1557721599detail0;
      }
   }
}

