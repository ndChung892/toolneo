package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.FairyLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FairyDetailCanvas;
   import com.qeedoo.ui.view.comp.FairyFuncCanvas;
   import com.qeedoo.ui.view.comp.FairyItemCanvas;
   import com.qeedoo.ui.view.comp.FairySkillCanvas;
   import com.qeedoo.ui.view.comp.FairySkinCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairyManagerPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const FAIRY_BACKGROUND:Class = FairyManagerPanel_FAIRY_BACKGROUND;
      
      private var _346188388fairyStaG:BoxLabel;
      
      private var _1595139975_fairyPageAc:ArrayCollection = new ArrayCollection();
      
      private var _346491445fairyInte:BoxLabel;
      
      public var _FairyManagerPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1906851782fairyEffect:BoxLabel;
      
      private var _346736871fairyAgiG:BoxLabel;
      
      public var _FairyManagerPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton14:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton15:BasicTxtButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _fairySkillCanvas:FairySkillCanvas;
      
      private var _1318169611stateBtn:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public var _FairyManagerPanel_Image1:Image;
      
      private var _fairySkinCanvas:FairySkinCanvas;
      
      private var _firstTimeFlag:Boolean = true;
      
      private var _fairyFuncCanvas:FairyFuncCanvas;
      
      private var _1379459640funcBtn0:BasicGlowButton;
      
      private var _307382965showCanvas:CharactorShowCanvas;
      
      private var _1339554909fairyDataList:List;
      
      private const PAGE_MAX_FAIRY_NUM:int = 5;
      
      private var _fairyDetailCanvas:FairyDetailCanvas;
      
      private var _681569291fairySta:BoxLabel;
      
      private var _681569295fairySte:BoxLabel;
      
      private var _681555976fairyExp:BoxLabel;
      
      private var _346188264fairySteG:BoxLabel;
      
      private var _116765vip:BasicGlowButton;
      
      public var _FairyManagerPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton8:BasicTxtButton;
      
      public var _FairyManagerPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _fairyAC:ArrayCollection;
      
      private var _2138148494fairyColor:BoxLabel;
      
      private var _2143667164fairyInteG:BoxLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1379459641funcBtn1:BasicGlowButton;
      
      private var _681551598fairyAgi:BoxLabel;
      
      private var _selFairyData:Object;
      
      private var _681554728fairyDoh:BoxLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2139959068fairyEnerG:BoxLabel;
      
      public var _FairyManagerPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _FairyManagerPanel_BasicGlowButton4:BasicGlowButton;
      
      private var _2146171567fairyLevel:BoxLabel;
      
      private var _346611061fairyEner:BoxLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _fairyItemCanvas:FairyItemCanvas;
      
      private var _selFairyTemp:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FairyManagerPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":14,
                        "y":40,
                        "height":135,
                        "width":135,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_FairyManagerPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "width":128,
                                 "height":128
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CharactorShowCanvas,
                           "id":"showCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":95,
                                 "y":170,
                                 "height":13,
                                 "width":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"vip",
                           "events":{"click":"__vip_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":67,
                                 "y":108,
                                 "styleName":"BtnLevelUp",
                                 "height":20,
                                 "visible":true
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelector",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":164,
                        "y":154,
                        "width":126,
                        "height":21
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":162,
                        "y":41,
                        "width":128,
                        "height":109,
                        "styleName":"CSSBorder",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":List,
                           "id":"fairyDataList",
                           "events":{
                              "itemClick":"__fairyDataList_itemClick",
                              "mouseDown":"__fairyDataList_mouseDown"
                           },
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.right = "0";
                              this.borderStyle = "none";
                              this.left = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "height":99,
                                 "itemRenderer":_FairyManagerPanel_ClassFactory1_c()
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"stateBtn",
                  "events":{"click":"__stateBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":176,
                        "styleName":"CrystalYellowButton",
                        "x":134
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_FairyManagerPanel_BasicGlowButton3",
                  "events":{"click":"___FairyManagerPanel_BasicGlowButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":197,
                        "y":176,
                        "styleName":"CrystalYellowButton"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyLevel",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":180,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":180,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyExp",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":69,
                        "y":348,
                        "width":218,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":348,
                        "width":45,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyColor",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":201,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton3",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":201,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyDoh",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":201,
                        "width":65,
                        "x":216,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton4",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":201,
                        "width":77,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairySta",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":243,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton5",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":243,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyStaG",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":243,
                        "width":65,
                        "x":216,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton6",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":243,
                        "width":77,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairySte",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":222,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton7",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":222,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairySteG",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":222,
                        "width":65,
                        "x":216,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton8",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":222,
                        "width":77,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyAgi",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":264,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton9",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":264,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyAgiG",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":264,
                        "width":65,
                        "x":216,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton10",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":264,
                        "width":77,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyInte",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":285,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton11",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":285,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyInteG",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":285,
                        "width":65,
                        "x":216,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton12",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":285,
                        "width":77,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyEner",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":306,
                        "width":65,
                        "x":60,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton13",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":306,
                        "width":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyEnerG",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":306,
                        "width":65,
                        "x":216,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton14",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":306,
                        "width":77,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BoxLabel,
                  "id":"fairyEffect",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":327,
                        "width":140,
                        "x":69,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyManagerPanel_BasicTxtButton15",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":327,
                        "width":45,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_FairyManagerPanel_BasicGlowButton4",
                  "events":{"click":"___FairyManagerPanel_BasicGlowButton4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "y":323,
                        "styleName":"CrystalYellowButton",
                        "width":70
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"funcBtn",
                  "events":{"click":"__funcBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":30,
                        "y":367,
                        "styleName":"CrystalYellowButton"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"funcBtn1",
                  "events":{"click":"__funcBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":117,
                        "y":367,
                        "styleName":"CrystalYellowButton"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"funcBtn0",
                  "events":{"click":"__funcBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":205,
                        "y":367,
                        "styleName":"CrystalYellowButton"
                     };
                  }
               })]
            };
         }
      });
      
      private var _509690632funcBtn:BasicGlowButton;
      
      public function FairyManagerPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 400;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairyManagerPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairySta() : BoxLabel
      {
         return this._681569291fairySta;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyExp() : BoxLabel
      {
         return this._681555976fairyExp;
      }
      
      public function set fairyExp(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._681555976fairyExp;
         if(_loc2_ !== param1)
         {
            this._681555976fairyExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyExp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stateBtn() : BasicGlowButton
      {
         return this._1318169611stateBtn;
      }
      
      public function set fairySta(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._681569291fairySta;
         if(_loc2_ !== param1)
         {
            this._681569291fairySta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairySta",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vip() : BasicGlowButton
      {
         return this._116765vip;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairySte() : BoxLabel
      {
         return this._681569295fairySte;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairySteG() : BoxLabel
      {
         return this._346188264fairySteG;
      }
      
      private function showSkin() : void
      {
         if(!_fairySkinCanvas)
         {
            _fairySkinCanvas = new FairySkinCanvas();
            _fairySkinCanvas.visible = false;
            this.parent.addChildAt(_fairySkinCanvas,this.parent.numChildren);
            _fairySkinCanvas.follow(this);
         }
         if(Boolean(_fairyDetailCanvas) && _fairyDetailCanvas.visible)
         {
            _fairyDetailCanvas.visible = false;
         }
         if(Boolean(_fairyItemCanvas) && _fairyItemCanvas.visible)
         {
            _fairyItemCanvas.visible = false;
         }
         if(Boolean(_fairyFuncCanvas) && _fairyFuncCanvas.visible)
         {
            _fairyFuncCanvas.visible = false;
         }
         if(Boolean(_fairySkillCanvas) && _fairySkillCanvas.visible)
         {
            _fairySkillCanvas.visible = false;
         }
         if(_selFairyData)
         {
            _fairySkinCanvas.show();
         }
      }
      
      public function set fairySte(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._681569295fairySte;
         if(_loc2_ !== param1)
         {
            this._681569295fairySte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairySte",_loc2_,param1));
         }
      }
      
      public function set stateBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1318169611stateBtn;
         if(_loc2_ !== param1)
         {
            this._1318169611stateBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateBtn",_loc2_,param1));
         }
      }
      
      public function set fairySteG(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._346188264fairySteG;
         if(_loc2_ !== param1)
         {
            this._346188264fairySteG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairySteG",_loc2_,param1));
         }
      }
      
      public function set fairyAgiG(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._346736871fairyAgiG;
         if(_loc2_ !== param1)
         {
            this._346736871fairyAgiG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyAgiG",_loc2_,param1));
         }
      }
      
      public function __stateBtn_click(param1:MouseEvent) : void
      {
         changeState();
      }
      
      [Bindable(event="propertyChange")]
      public function get funcBtn1() : BasicGlowButton
      {
         return this._1379459641funcBtn1;
      }
      
      public function set vip(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._116765vip;
         if(_loc2_ !== param1)
         {
            this._116765vip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vip",_loc2_,param1));
         }
      }
      
      public function set fairyEnerG(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._2139959068fairyEnerG;
         if(_loc2_ !== param1)
         {
            this._2139959068fairyEnerG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyEnerG",_loc2_,param1));
         }
      }
      
      public function set fairyDoh(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._681554728fairyDoh;
         if(_loc2_ !== param1)
         {
            this._681554728fairyDoh = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyDoh",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get funcBtn0() : BasicGlowButton
      {
         return this._1379459640funcBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyDataList() : List
      {
         return this._1339554909fairyDataList;
      }
      
      private function _FairyManagerPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[0];
         _loc1_ = FAIRY_BACKGROUND;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[20];
         _loc1_ = _fairyPageAc;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[2];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[4];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[68];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[5];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[30];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[6];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[67];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[7];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[67];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[66];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[8];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[66];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[9];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[58];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[10];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[58];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[11];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[59];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[12];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[59];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[13];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[60];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[14];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[60];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[15];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[61];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[16];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[61];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[17];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[62];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[18];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[62];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[65];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[19];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[65];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[31];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[32];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[79];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[89];
      }
      
      public function set funcBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1379459640funcBtn0;
         if(_loc2_ !== param1)
         {
            this._1379459640funcBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcBtn0",_loc2_,param1));
         }
      }
      
      public function set funcBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1379459641funcBtn1;
         if(_loc2_ !== param1)
         {
            this._1379459641funcBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcBtn1",_loc2_,param1));
         }
      }
      
      public function ___FairyManagerPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         showItem();
      }
      
      private function clearPage() : void
      {
         _fairyPageAc.removeAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyEner() : BoxLabel
      {
         return this._346611061fairyEner;
      }
      
      public function updateFairy(param1:Number, param2:String, param3:String) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(Boolean(_core.player) && Boolean(_core.player.fairyList) && Boolean(_core.player.fairyList[param1]))
         {
            if(param2 == "exp")
            {
               _loc4_ = Number(param3) - Number(_core.player.fairyList[param1].exp);
               _loc5_ = "";
               if(_loc4_ > 0)
               {
                  _loc5_ = Language.FAIRY_MANAGER_PANEL_S[1];
                  _loc5_ = _loc5_.replace("{fairyName}",_core.player.fairyList[param1].name);
                  _loc5_ = _loc5_.replace("{exp}",Number(param3) - _core.player.fairyList[param1].exp);
                  _core.sysBlueMsg(_loc5_);
               }
               _loc6_ = FairyLogic.expToLv(Number(param3));
               _loc7_ = FairyLogic.expToLv(_core.player.fairyList[param1].exp);
               if(_loc7_ < _loc6_)
               {
                  _loc5_ = Language.FAIRY_MANAGER_PANEL_S[2];
                  _loc5_ = _loc5_.replace("{fairyName}",_core.player.fairyList[param1].name);
                  _loc5_ = _loc5_.replace("{newLv}",_loc6_);
                  _core.sysBlueMsg(_loc5_);
               }
            }
            _core.player.fairyList[param1][param2] = param3;
            updateView(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyColor() : BoxLabel
      {
         return this._2138148494fairyColor;
      }
      
      public function __funcBtn0_click(param1:MouseEvent) : void
      {
         showSkin();
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyLevel() : BoxLabel
      {
         return this._2146171567fairyLevel;
      }
      
      public function onAddFairy(param1:Object) : void
      {
         var _loc2_:Object = _core.data.getData(GamePredef.TBL_FAIRY_TEMPALTE,param1.tid);
         if(_loc2_)
         {
            param1.tData = _loc2_;
            if(!_core.player.fairyList)
            {
               _core.player.fairyList = {};
            }
            _core.player.fairyList[param1.id] = param1;
            updateView();
            if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.isLoadCharactorFairyFlag)
            {
               _fairySkinCanvas.isLoadCharactorFairyFlag = false;
               if(_fairySkinCanvas.visible)
               {
                  _fairySkinCanvas.show();
               }
            }
            _core.sysBlueMsg(Language.FAIRY_MANAGER_PANEL_U[64].replace("{name}",param1.name));
         }
      }
      
      private function viewClear() : void
      {
         showCanvas.url = null;
      }
      
      public function set fairyDataList(param1:List) : void
      {
         var _loc2_:Object = this._1339554909fairyDataList;
         if(_loc2_ !== param1)
         {
            this._1339554909fairyDataList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyDataList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas() : CharactorShowCanvas
      {
         return this._307382965showCanvas;
      }
      
      private function initPageSelector() : void
      {
         var _loc1_:int = 0;
         pageSelector.lastBtnLabel = Language.PAGE_SELECTOR[2];
         pageSelector.nextBtnLabel = Language.PAGE_SELECTOR[3];
         pageSelector.btnLastPage.width = 32;
         pageSelector.btnNextPage.width = 32;
         if(_fairyAC.length >= PAGE_MAX_FAIRY_NUM)
         {
            _loc1_ = PAGE_MAX_FAIRY_NUM;
         }
         else
         {
            _loc1_ = _fairyAC.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _fairyPageAc.addItem(_fairyAC.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(_fairyAC.length,PAGE_MAX_FAIRY_NUM);
      }
      
      private function changeState() : void
      {
         var oldState:int = 0;
         var func:Function = null;
         if(Boolean(fairyDataList.selectedItem) && Boolean(_selFairyData))
         {
            oldState = int(_selFairyData.state);
            func = function(param1:CloseEvent):void
            {
               if(!param1 || param1.detail == Alert.YES)
               {
                  _core.remote.call("changeFairyState",null,_selFairyData.id,oldState == 1 ? 0 : 1);
               }
            };
            if(_selFairyData.binded == 0)
            {
               Alert.show(Language.FAIRY_MANAGER_PANEL_S[0],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               func(null);
            }
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(_firstTimeFlag)
            {
               initView();
            }
         }
         else
         {
            if(Boolean(_fairyDetailCanvas) && _fairyDetailCanvas.visible)
            {
               _fairyDetailCanvas.visible = false;
            }
            if(Boolean(_fairyFuncCanvas) && _fairyFuncCanvas.visible)
            {
               _fairyFuncCanvas.visible = false;
            }
            if(Boolean(_fairyItemCanvas) && _fairyItemCanvas.visible)
            {
               _fairyItemCanvas.visible = false;
            }
            if(Boolean(_fairySkillCanvas) && _fairySkillCanvas.visible)
            {
               _fairySkillCanvas.visible = false;
            }
            if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.visible)
            {
               _fairySkinCanvas.visible = false;
            }
         }
      }
      
      private function deleteFairy() : void
      {
         var fid:Number = NaN;
         var delFunc:Function = null;
         if(Boolean(fairyDataList.selectedItem) && Boolean(_selFairyData))
         {
            fid = Number(fairyDataList.selectedItem.fairyData.id);
            delFunc = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("delFairy",null,fid);
               }
            };
            Alert.show("","",Alert.YES | Alert.NO,null,delFunc);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyAgi() : BoxLabel
      {
         return this._681551598fairyAgi;
      }
      
      public function __fairyDataList_itemClick(param1:ListEvent) : void
      {
         fairyDataListClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get funcBtn() : BasicGlowButton
      {
         return this._509690632funcBtn;
      }
      
      private function showFairySkillConfig() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
         if(_loc1_)
         {
            _loc1_.open(_selFairyData);
         }
      }
      
      public function __vip_click(param1:MouseEvent) : void
      {
         showFairySkillConfig();
      }
      
      private function updateView(param1:Number = -1) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Sort = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Class = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(param1 == -1)
         {
            _core.activeFairy = null;
            _fairyAC = new ArrayCollection();
            _loc2_ = 0;
            if(_core.player.fairyList)
            {
               for each(_loc5_ in _core.player.fairyList)
               {
                  if(Boolean(_loc5_) && Boolean(_loc5_.tData))
                  {
                     _loc2_++;
                     if(_loc5_.state == 1)
                     {
                        _loc6_ = ResManager.ICON_PET_BATTLE;
                        _core.activeFairy = _loc5_;
                     }
                     else
                     {
                        _loc6_ = ResManager.ICON_PET_STANDBY;
                     }
                     _loc7_ = Math.floor((FairyLogic.gexpToLv(_loc5_.gexp) - 1) / 10);
                     if(_loc7_ < 0)
                     {
                        _loc7_ = 0;
                     }
                     _fairyAC.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.tData.name,
                        "level":FairyLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "tid":_loc5_.tid,
                        "sort2":_loc7_,
                        "color":GamePredef.CODE_ITEM_COLOR[_loc7_],
                        "fairyData":_loc5_
                     });
                  }
               }
            }
            _loc3_ = new Sort();
            _loc3_.fields = [new SortField("tid",true,true,true),new SortField("sort2",true,true,true)];
            _fairyAC.sort = _loc3_;
            _fairyAC.refresh();
            initPageSelector();
            _loc4_ = 0;
            while(_loc4_ < _fairyAC.length)
            {
               if(_fairyAC[_loc4_].fairyData.state == 1)
               {
                  fairyDataList.selectedIndex = _loc4_;
                  if(_loc4_ >= PAGE_MAX_FAIRY_NUM)
                  {
                     pageSelector.pageNo = _loc4_ / PAGE_MAX_FAIRY_NUM;
                     fairyDataList.selectedIndex = _loc4_ - PAGE_MAX_FAIRY_NUM * pageSelector.pageNo;
                  }
                  else
                  {
                     pageSelector.pageNo = 0;
                     fairyDataList.selectedIndex = _loc4_;
                  }
                  break;
               }
               _loc4_++;
            }
         }
         else if(param1 > 0)
         {
            _loc8_ = 0;
            while(_loc8_ < _fairyAC.length)
            {
               if(_fairyAC[_loc8_].fairyData.id == param1)
               {
                  _loc9_ = _core.player.fairyList[param1];
                  if(_loc9_.state == 1)
                  {
                     _loc10_ = ResManager.ICON_PET_BATTLE;
                     _core.activeFairy = _loc9_;
                  }
                  else
                  {
                     _loc10_ = ResManager.ICON_PET_STANDBY;
                  }
                  _loc7_ = Math.floor((FairyLogic.gexpToLv(_loc9_.gexp) - 1) / 10);
                  _loc11_ = _fairyAC[_loc8_];
                  _loc11_.id = _loc9_.id;
                  _loc11_.text = _loc9_.tData.name;
                  _loc11_.level = FairyLogic.expToLv(_loc9_.exp);
                  _loc11_.icon = _loc10_;
                  _loc11_.tid = _loc9_.tid;
                  _loc11_.sort2 = _loc7_;
                  _loc11_.color = GamePredef.CODE_ITEM_COLOR[_loc7_];
                  _loc11_.fairyData = _loc9_;
                  fairyDataList.selectedIndex = _loc8_;
                  if(_loc8_ >= PAGE_MAX_FAIRY_NUM)
                  {
                     pageSelector.pageNo = _loc8_ / PAGE_MAX_FAIRY_NUM;
                     fairyDataList.selectedIndex = _loc8_ - PAGE_MAX_FAIRY_NUM * pageSelector.pageNo;
                  }
                  else
                  {
                     pageSelector.pageNo = 0;
                     fairyDataList.selectedIndex = _loc8_;
                  }
                  break;
               }
               _loc8_++;
            }
         }
         if(fairyDataList.selectedItem == null)
         {
            fairyDataList.selectedIndex = 0;
         }
         fairyDataListClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyAgiG() : BoxLabel
      {
         return this._346736871fairyAgiG;
      }
      
      public function set fairyColor(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._2138148494fairyColor;
         if(_loc2_ !== param1)
         {
            this._2138148494fairyColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyColor",_loc2_,param1));
         }
      }
      
      public function set fairyEner(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._346611061fairyEner;
         if(_loc2_ !== param1)
         {
            this._346611061fairyEner = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyEner",_loc2_,param1));
         }
      }
      
      private function set _fairyPageAc(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1595139975_fairyPageAc;
         if(_loc2_ !== param1)
         {
            this._1595139975_fairyPageAc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_fairyPageAc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyDoh() : BoxLabel
      {
         return this._681554728fairyDoh;
      }
      
      private function fairyDataListClick() : void
      {
         if(_fairyAC.length <= 0 || fairyDataList.selectedItem == null)
         {
            viewClear();
            return;
         }
         _selFairyData = fairyDataList.selectedItem.fairyData;
         showSelFairy();
         if(Boolean(_fairyDetailCanvas) && _fairyDetailCanvas.visible)
         {
            _fairyDetailCanvas.fairy = _selFairyData;
         }
         if(Boolean(_fairyFuncCanvas) && _fairyFuncCanvas.visible)
         {
            _fairyFuncCanvas.fairy = _selFairyData;
         }
         if(Boolean(_fairyItemCanvas) && _fairyItemCanvas.visible)
         {
            _fairyItemCanvas.fairy = _selFairyData;
         }
         if(Boolean(_fairySkillCanvas) && _fairySkillCanvas.visible)
         {
            _fairySkillCanvas.fairy = _selFairyData;
         }
         if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.visible)
         {
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
         if(_loc1_)
         {
            _loc1_.fairy = _selFairyData;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyEnerG() : BoxLabel
      {
         return this._2139959068fairyEnerG;
      }
      
      public function set fairyStaG(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._346188388fairyStaG;
         if(_loc2_ !== param1)
         {
            this._346188388fairyStaG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyStaG",_loc2_,param1));
         }
      }
      
      private function mouseAction(param1:Event, param2:int) : void
      {
         if(Boolean(fairyDataList.selectedItem) && Boolean(_selFairyData))
         {
            _core.view.getUI(ViewManager.PANEL_BAG).visible = true;
            param1.stopImmediatePropagation();
            if(_core.state == GamePredef.ST_BATTLE)
            {
               return;
            }
            _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[param2]);
            _core.view.mouseState = param2;
            _core.view.mousePetId = fairyDataList.selectedItem.id;
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
      
      public function set fairyLevel(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._2146171567fairyLevel;
         if(_loc2_ !== param1)
         {
            this._2146171567fairyLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyLevel",_loc2_,param1));
         }
      }
      
      private function onInitCharFairy(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 0;
         _firstTimeFlag = false;
         for each(_loc3_ in param1)
         {
            if(_loc3_)
            {
               _loc3_.tData = _core.data.gameData[GamePredef.TBL_FAIRY_TEMPALTE][_loc3_.tid];
            }
            _loc2_++;
         }
         _core.player.fairyList = param1;
         updateView();
      }
      
      private function showFunc() : void
      {
         if(!_fairyFuncCanvas)
         {
            _fairyFuncCanvas = new FairyFuncCanvas();
            _fairyFuncCanvas.visible = false;
            this.parent.addChildAt(_fairyFuncCanvas,this.parent.numChildren);
            _fairyFuncCanvas.follow(this);
         }
         if(Boolean(_fairyDetailCanvas) && _fairyDetailCanvas.visible)
         {
            _fairyDetailCanvas.visible = false;
         }
         if(Boolean(_fairyItemCanvas) && _fairyItemCanvas.visible)
         {
            _fairyItemCanvas.visible = false;
         }
         if(Boolean(_fairySkillCanvas) && _fairySkillCanvas.visible)
         {
            _fairySkillCanvas.visible = false;
         }
         if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.visible)
         {
            _fairySkinCanvas.visible = false;
         }
         if(_selFairyData)
         {
            _fairyFuncCanvas.fairy = _selFairyData;
            _fairyFuncCanvas.show();
         }
      }
      
      private function showSkill() : void
      {
         if(!_fairySkillCanvas)
         {
            _fairySkillCanvas = new FairySkillCanvas();
            _fairySkillCanvas.visible = false;
            this.parent.addChildAt(_fairySkillCanvas,this.parent.numChildren);
            _fairySkillCanvas.follow(this);
         }
         if(Boolean(_fairyDetailCanvas) && _fairyDetailCanvas.visible)
         {
            _fairyDetailCanvas.visible = false;
         }
         if(Boolean(_fairyItemCanvas) && _fairyItemCanvas.visible)
         {
            _fairyItemCanvas.visible = false;
         }
         if(Boolean(_fairyFuncCanvas) && _fairyFuncCanvas.visible)
         {
            _fairyFuncCanvas.visible = false;
         }
         if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.visible)
         {
            _fairySkinCanvas.visible = false;
         }
         if(_selFairyData)
         {
            _fairySkillCanvas.fairy = _selFairyData;
            _fairySkillCanvas.show();
         }
      }
      
      public function enableUI() : void
      {
         if(initialized)
         {
            funcBtn.enabled = true;
         }
      }
      
      public function reset() : void
      {
         _firstTimeFlag = true;
      }
      
      public function set showCanvas(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._307382965showCanvas;
         if(_loc2_ !== param1)
         {
            this._307382965showCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas",_loc2_,param1));
         }
      }
      
      public function disableUI() : void
      {
         if(initialized)
         {
            funcBtn.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _fairyPageAc() : ArrayCollection
      {
         return this._1595139975_fairyPageAc;
      }
      
      public function set fairyEffect(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._1906851782fairyEffect;
         if(_loc2_ !== param1)
         {
            this._1906851782fairyEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyEffect",_loc2_,param1));
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
         var target:FairyManagerPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairyManagerPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FairyManagerPanelWatcherSetupUtil");
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
      
      public function onDelFairy(param1:Number) : void
      {
         if(_core.player.fairyList)
         {
            if(_core.player.fairyList[param1])
            {
               _core.sysBlueMsg(Language.FAIRY_MANAGER_PANEL_U[63].replayce("{name}",_core.player.fairyList[param1].name));
            }
            delete _core.player.fairyList[param1];
            updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyStaG() : BoxLabel
      {
         return this._346188388fairyStaG;
      }
      
      public function set fairyInte(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._346491445fairyInte;
         if(_loc2_ !== param1)
         {
            this._346491445fairyInte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyInte",_loc2_,param1));
         }
      }
      
      public function __funcBtn_click(param1:MouseEvent) : void
      {
         showFunc();
      }
      
      public function __fairyDataList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function showDetail() : void
      {
         if(!_fairyDetailCanvas)
         {
            _fairyDetailCanvas = new FairyDetailCanvas();
            _fairyDetailCanvas.visible = false;
            this.parent.addChildAt(_fairyDetailCanvas,this.parent.numChildren);
            _fairyDetailCanvas.follow(this);
         }
         if(_fairyDetailCanvas.visible)
         {
            _fairyDetailCanvas.visible = false;
         }
         else
         {
            if(Boolean(_fairyFuncCanvas) && _fairyFuncCanvas.visible)
            {
               _fairyFuncCanvas.visible = false;
            }
            if(Boolean(_fairyItemCanvas) && _fairyItemCanvas.visible)
            {
               _fairyItemCanvas.visible = false;
            }
            if(Boolean(_fairySkillCanvas) && _fairySkillCanvas.visible)
            {
               _fairySkillCanvas.visible = false;
            }
            if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.visible)
            {
               _fairySkinCanvas.visible = false;
            }
            if(_selFairyData)
            {
               _fairyDetailCanvas.fairy = _selFairyData;
               _fairyDetailCanvas.visible = true;
            }
         }
      }
      
      private function showSelFairy() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         if(_selFairyData)
         {
            _selFairyTemp = _selFairyData.tData;
            if(!_selFairyTemp)
            {
               return;
            }
            _loc3_ = ResManager.getResUrl(_selFairyTemp.rc);
            if(showCanvas.url != _loc3_)
            {
               showCanvas.url = _loc3_;
            }
            showCanvas.color = _selFairyData.cc ? Number(_selFairyData.cc) : Number(_selFairyTemp.cc);
            if(ToolKit.isEqual(_selFairyData.state,1))
            {
               stateBtn.label = Language.FAIRY_MANAGER_PANEL_U[4];
            }
            else
            {
               stateBtn.label = Language.FAIRY_MANAGER_PANEL_U[3];
            }
            _selFairyData.level = FairyLogic.expToLv(_selFairyData.exp);
            fairyLevel.text = _selFairyData.level;
            fairyExp.text = (Number(_selFairyData.exp) - FairyLogic.lvToExp(_selFairyData.level)).toString() + "/" + FairyLogic.lvUpExp(_selFairyData.level).toString();
            _loc1_ = FairyLogic.gexpToLv(_selFairyData.gexp);
            fairyColor.text = GamePredef.FAIRY_COLOR_TO_TEXT[Math.floor((_loc1_ == 0 ? 0 : _loc1_ - 1) / 10)];
            fairyDoh.text = Math.round(_selFairyData.doh / 100).toString();
            _loc2_ = Math.round(0.2 * _loc1_ * 10) / 10;
            fairySta.text = String(Math.round(ToolKit.add(_selFairyData.sta,(_selFairyData.level - 1) * ToolKit.add(_selFairyData.staG,_loc2_))));
            fairyStaG.htmlText = Math.round(_selFairyData.staG * 10) / 10 + "<font color=\'#00ff00\'>+" + _loc2_ + "</font>";
            fairySte.text = String(Math.round(ToolKit.add(_selFairyData.ste,(_selFairyData.level - 1) * ToolKit.add(_selFairyData.steG,_loc2_))));
            fairySteG.htmlText = Math.round(_selFairyData.steG * 10) / 10 + "<font color=\'#00ff00\'>+" + _loc2_ + "</font>";
            fairyAgi.text = String(Math.round(ToolKit.add(_selFairyData.agi,(_selFairyData.level - 1) * ToolKit.add(_selFairyData.agiG,_loc2_))));
            fairyAgiG.htmlText = Math.round(_selFairyData.agiG * 10) / 10 + "<font color=\'#00ff00\'>+" + _loc2_ + "</font>";
            fairyInte.text = String(Math.round(ToolKit.add(_selFairyData.inte,(_selFairyData.level - 1) * ToolKit.add(_selFairyData.inteG,_loc2_))));
            fairyInteG.htmlText = Math.round(_selFairyData.inteG * 10) / 10 + "<font color=\'#00ff00\'>+" + _loc2_ + "</font>";
            fairyEner.text = String(Math.round(ToolKit.add(_selFairyData.ener,(_selFairyData.level - 1) * ToolKit.add(_selFairyData.enerG,_loc2_))));
            fairyEnerG.htmlText = Math.round(_selFairyData.enerG * 10) / 10 + "<font color=\'#00ff00\'>+" + _loc2_ + "</font>";
            fairyEffect.text = GamePredef.FAIRY_COLOR_EFFECT[Math.floor((_loc1_ == 0 ? 0 : _loc1_ - 1) / 10)] + "% * " + Math.floor(100 - Math.max(75 - Math.round(_selFairyData.doh / 100),0) * 100 / 75) + "%";
         }
      }
      
      private function showItem() : void
      {
         if(!_fairyItemCanvas)
         {
            _fairyItemCanvas = new FairyItemCanvas();
            _fairyItemCanvas.visible = false;
            this.parent.addChildAt(_fairyItemCanvas,this.parent.numChildren);
            _fairyItemCanvas.follow(this);
         }
         if(Boolean(_fairyDetailCanvas) && _fairyDetailCanvas.visible)
         {
            _fairyDetailCanvas.visible = false;
         }
         if(Boolean(_fairyFuncCanvas) && _fairyFuncCanvas.visible)
         {
            _fairyFuncCanvas.visible = false;
         }
         if(Boolean(_fairySkillCanvas) && _fairySkillCanvas.visible)
         {
            _fairySkillCanvas.visible = false;
         }
         if(Boolean(_fairySkinCanvas) && _fairySkinCanvas.visible)
         {
            _fairySkinCanvas.visible = false;
         }
         if(_selFairyData)
         {
            _fairyItemCanvas.fairy = _selFairyData;
            _fairyItemCanvas.show();
         }
      }
      
      public function ___FairyManagerPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         showDetail();
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            _fairyPageAc.addItem(_fairyAC.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      public function set fairyInteG(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._2143667164fairyInteG;
         if(_loc2_ !== param1)
         {
            this._2143667164fairyInteG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyInteG",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyInte() : BoxLabel
      {
         return this._346491445fairyInte;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyEffect() : BoxLabel
      {
         return this._1906851782fairyEffect;
      }
      
      public function set fairyAgi(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._681551598fairyAgi;
         if(_loc2_ !== param1)
         {
            this._681551598fairyAgi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyAgi",_loc2_,param1));
         }
      }
      
      public function __funcBtn1_click(param1:MouseEvent) : void
      {
         showSkill();
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyInteG() : BoxLabel
      {
         return this._2143667164fairyInteG;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initCharFairy",new Responder(onInitCharFairy));
      }
      
      public function set funcBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._509690632funcBtn;
         if(_loc2_ !== param1)
         {
            this._509690632funcBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcBtn",_loc2_,param1));
         }
      }
      
      private function _FairyManagerPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FairyManagerPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _FairyManagerPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTitleCanvas1.text = param1;
         },"_FairyManagerPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return FAIRY_BACKGROUND;
         },function(param1:Object):void
         {
            _FairyManagerPanel_Image1.source = param1;
         },"_FairyManagerPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vip.label = param1;
         },"vip.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return _fairyPageAc;
         },function(param1:Object):void
         {
            fairyDataList.dataProvider = param1;
         },"fairyDataList.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            stateBtn.toolTip = param1;
         },"stateBtn.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            stateBtn.label = param1;
         },"stateBtn.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicGlowButton3.toolTip = param1;
         },"_FairyManagerPanel_BasicGlowButton3.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicGlowButton3.label = param1;
         },"_FairyManagerPanel_BasicGlowButton3.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton1.label = param1;
         },"_FairyManagerPanel_BasicTxtButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton2.label = param1;
         },"_FairyManagerPanel_BasicTxtButton2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyColor.toolTip = param1;
         },"fairyColor.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton3.label = param1;
         },"_FairyManagerPanel_BasicTxtButton3.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton3.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton3.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[66];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyDoh.toolTip = param1;
         },"fairyDoh.toolTip");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton4.label = param1;
         },"_FairyManagerPanel_BasicTxtButton4.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[66];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton4.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton4.toolTip");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton5.label = param1;
         },"_FairyManagerPanel_BasicTxtButton5.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyStaG.toolTip = param1;
         },"fairyStaG.toolTip");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton6.label = param1;
         },"_FairyManagerPanel_BasicTxtButton6.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton6.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton6.toolTip");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton7.label = param1;
         },"_FairyManagerPanel_BasicTxtButton7.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairySteG.toolTip = param1;
         },"fairySteG.toolTip");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton8.label = param1;
         },"_FairyManagerPanel_BasicTxtButton8.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton8.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton8.toolTip");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton9.label = param1;
         },"_FairyManagerPanel_BasicTxtButton9.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyAgiG.toolTip = param1;
         },"fairyAgiG.toolTip");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton10.label = param1;
         },"_FairyManagerPanel_BasicTxtButton10.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton10.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton10.toolTip");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton11.label = param1;
         },"_FairyManagerPanel_BasicTxtButton11.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyInteG.toolTip = param1;
         },"fairyInteG.toolTip");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton12.label = param1;
         },"_FairyManagerPanel_BasicTxtButton12.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton12.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton12.toolTip");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton13.label = param1;
         },"_FairyManagerPanel_BasicTxtButton13.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyEnerG.toolTip = param1;
         },"fairyEnerG.toolTip");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton14.label = param1;
         },"_FairyManagerPanel_BasicTxtButton14.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton14.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton14.toolTip");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairyEffect.toolTip = param1;
         },"fairyEffect.toolTip");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton15.label = param1;
         },"_FairyManagerPanel_BasicTxtButton15.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicTxtButton15.toolTip = param1;
         },"_FairyManagerPanel_BasicTxtButton15.toolTip");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyManagerPanel_BasicGlowButton4.label = param1;
         },"_FairyManagerPanel_BasicGlowButton4.label");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            funcBtn.label = param1;
         },"funcBtn.label");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            funcBtn1.label = param1;
         },"funcBtn1.label");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[89];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            funcBtn0.label = param1;
         },"funcBtn0.label");
         result[42] = binding;
         return result;
      }
   }
}

