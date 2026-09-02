package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ButtonTree;
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
   import mx.containers.HBox;
   import mx.containers.HDividedBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HelpPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HelpPanel_Object17:Object;
      
      public var _HelpPanel_Object18:Object;
      
      public var _HelpPanel_Object19:Object;
      
      private var _1096322398resList:List;
      
      public var _HelpPanel_Object11:Object;
      
      private var _361518594contactGMCanvas:ContactGMCanvas;
      
      public var _HelpPanel_Object20:Object;
      
      public var _HelpPanel_Object21:Object;
      
      public var _HelpPanel_Object22:Object;
      
      public var _HelpPanel_Object23:Object;
      
      public var _HelpPanel_Object24:Object;
      
      public var _HelpPanel_Object25:Object;
      
      public var _HelpPanel_Canvas1:Canvas;
      
      public var _HelpPanel_Object27:Object;
      
      public var _HelpPanel_Canvas3:Canvas;
      
      public var _HelpPanel_Object29:Object;
      
      public var _HelpPanel_Canvas5:Canvas;
      
      public var _HelpPanel_Object26:Object;
      
      public var _HelpPanel_Object28:Object;
      
      private var _1946144776xmlHelp:XMLList;
      
      public var str:String;
      
      private var _710472971searchText:TextInput;
      
      public var _HelpPanel_Object30:Object;
      
      private var _939616718searchedContent:IntroText;
      
      public var _HelpPanel_Object31:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var bbsurl:String;
      
      private var _114581tab:ViewStack;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      public var firstTimeFlag:int = 0;
      
      public var _HelpPanel_DataGridColumn1:DataGridColumn;
      
      public var _HelpPanel_DataGridColumn2:DataGridColumn;
      
      private var _51902346selectTextArea:IntroText;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      private var csurl:String;
      
      public var _HelpPanel_Object1:Object;
      
      public var _HelpPanel_Object2:Object;
      
      public var _HelpPanel_Object3:Object;
      
      public var _HelpPanel_Object4:Object;
      
      public var _HelpPanel_Object5:Object;
      
      public var _HelpPanel_Object6:Object;
      
      public var _HelpPanel_Object7:Object;
      
      public var _HelpPanel_Object8:Object;
      
      public var _HelpPanel_Object9:Object;
      
      public var _HelpPanel_BasicGlowButton1:BasicGlowButton;
      
      public var submitQuestionEnable:Boolean = false;
      
      public var _HelpPanel_BasicGlowButton7:BasicGlowButton;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var core:Core = Core.getInstance();
      
      public var _HelpPanel_LinkButton1:LinkButton;
      
      public var _HelpPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2028527347shortCuts:DataGrid;
      
      private var _1789063784dataTree:ButtonTree;
      
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
                  "id":"_HelpPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tab",
                  "events":{"mouseDown":"__tab_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "60";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"_HelpPanel_Canvas1",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":HDividedBox,
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "percentWidth":100,
                                       "percentHeight":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":35,
                                                "percentHeight":100,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":ButtonTree,
                                                   "id":"dataTree",
                                                   "events":{"itemClick":"__dataTree_itemClick"},
                                                   "effects":["creationCompleteEffect"],
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "5";
                                                      this.top = "8";
                                                      this.bottom = "8";
                                                      this.creationCompleteEffect = "";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "labelField":"@label",
                                                         "showRoot":false,
                                                         "width":140
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":IntroText,
                                                   "id":"selectTextArea",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.right = "8";
                                                      this.left = "153";
                                                      this.top = "8";
                                                      this.bottom = "8";
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
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"_HelpPanel_Canvas3",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":HDividedBox,
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "percentWidth":100,
                                       "percentHeight":100,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":40,
                                                "percentHeight":100,
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":List,
                                                   "id":"resList",
                                                   "events":{"change":"__resList_change"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.left = "6";
                                                      this.right = "293.6";
                                                      this.bottom = "3.9833221";
                                                      this.top = "33.95";
                                                      this.backgroundAlpha = 0;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"styleName":"CSSBorder"};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":TextInput,
                                                   "id":"searchText",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.cornerRadius = 0;
                                                      this.backgroundAlpha = 0;
                                                      this.borderColor = 0;
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "width":103.06667,
                                                         "x":6,
                                                         "y":9,
                                                         "height":22
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicGlowButton,
                                                   "id":"_HelpPanel_BasicGlowButton1",
                                                   "events":{"click":"___HelpPanel_BasicGlowButton1_click"},
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"BtnStdRed",
                                                         "x":112.05,
                                                         "y":5.5,
                                                         "width":50
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":IntroText,
                                                   "id":"searchedContent",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.top = "10";
                                                      this.bottom = "5";
                                                      this.left = "164.3";
                                                      this.right = "7.0333557";
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
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"_HelpPanel_Canvas5",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "styleName":"RoundedGradientBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":DataGrid,
                                 "id":"shortCuts",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "resizableColumns":false,
                                       "draggableColumns":false,
                                       "percentWidth":100,
                                       "percentHeight":100,
                                       "x":0,
                                       "y":6,
                                       "dataProvider":[_HelpPanel_Object1_i(),_HelpPanel_Object2_i(),_HelpPanel_Object3_i(),_HelpPanel_Object4_i(),_HelpPanel_Object5_i(),_HelpPanel_Object6_i(),_HelpPanel_Object7_i(),_HelpPanel_Object8_i(),_HelpPanel_Object9_i(),_HelpPanel_Object10_i(),_HelpPanel_Object11_i(),_HelpPanel_Object12_i(),_HelpPanel_Object13_i(),_HelpPanel_Object14_i(),_HelpPanel_Object15_i(),_HelpPanel_Object16_i(),_HelpPanel_Object17_i(),_HelpPanel_Object18_i(),_HelpPanel_Object19_i(),_HelpPanel_Object20_i(),_HelpPanel_Object21_i(),_HelpPanel_Object22_i(),_HelpPanel_Object23_i(),_HelpPanel_Object24_i(),_HelpPanel_Object25_i(),_HelpPanel_Object26_i(),_HelpPanel_Object27_i(),_HelpPanel_Object28_i(),_HelpPanel_Object29_i(),_HelpPanel_Object30_i(),_HelpPanel_Object31_i()],
                                       "columns":[_HelpPanel_DataGridColumn1_i(),_HelpPanel_DataGridColumn2_i()]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":ContactGMCanvas,
                        "id":"contactGMCanvas",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasBorder",
                              "percentWidth":100,
                              "percentHeight":100
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_HelpPanel_LinkButton1",
                  "events":{"click":"___HelpPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"DescriptionText",
                        "x":320,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":315,
                        "x":25,
                        "y":40,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":46
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
                                 "width":46
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":46
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "enabled":false,
                                 "width":46
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn4",
                           "events":{"click":"__tabBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":46
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_HelpPanel_BasicGlowButton7",
                           "events":{"click":"___HelpPanel_BasicGlowButton7_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":290,
                                 "styleName":"HorizontalTab",
                                 "width":65
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _HelpPanel_Object10:Object;
      
      public var _HelpPanel_Object12:Object;
      
      public var _HelpPanel_Object13:Object;
      
      public var _HelpPanel_Object14:Object;
      
      public var _HelpPanel_Object15:Object;
      
      public var _HelpPanel_Object16:Object;
      
      public function HelpPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 400;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___HelpPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HelpPanel._watcherSetupUtil = param1;
      }
      
      private function _HelpPanel_Object6_i() : Object
      {
         var _loc1_:Object = {
            "label":"K",
            "data":null
         };
         _HelpPanel_Object6 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object6",_HelpPanel_Object6);
         return _loc1_;
      }
      
      private function _HelpPanel_Object28_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":null
         };
         _HelpPanel_Object28 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object28",_HelpPanel_Object28);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get xmlHelp() : XMLList
      {
         return this._1946144776xmlHelp;
      }
      
      private function _HelpPanel_Object20_i() : Object
      {
         var _loc1_:Object = {
            "label":"H",
            "data":null
         };
         _HelpPanel_Object20 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object20",_HelpPanel_Object20);
         return _loc1_;
      }
      
      public function set contactGMCanvas(param1:ContactGMCanvas) : void
      {
         var _loc2_:Object = this._361518594contactGMCanvas;
         if(_loc2_ !== param1)
         {
            this._361518594contactGMCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contactGMCanvas",_loc2_,param1));
         }
      }
      
      private function gotoCustomerCenter() : void
      {
         navigateToURL(new URLRequest(csurl),"_blank");
      }
      
      private function _HelpPanel_Object16_i() : Object
      {
         var _loc1_:Object = {
            "label":"G",
            "data":null
         };
         _HelpPanel_Object16 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object16",_HelpPanel_Object16);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get contactGMCanvas() : ContactGMCanvas
      {
         return this._361518594contactGMCanvas;
      }
      
      public function ___HelpPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(GamePredef.SERVER_ADD_GUIDE),"_blank");
      }
      
      private function helpSearch(param1:String) : void
      {
         var _loc2_:XML = null;
         resList.dataProvider = null;
         for each(_loc2_ in XMLList(dataTree.dataProvider).descendants())
         {
            if(String(_loc2_.@label).indexOf(param1) >= 0)
            {
               resList.dataProvider.addItem({
                  "label":_loc2_.@label,
                  "data":_loc2_.@data
               });
            }
         }
      }
      
      public function onGetQuestionList(param1:int, param2:Object) : void
      {
         contactGMCanvas.updateQuestionList(param1,param2);
      }
      
      private function _HelpPanel_Object5_i() : Object
      {
         var _loc1_:Object = {
            "label":"Q",
            "data":null
         };
         _HelpPanel_Object5 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object5",_HelpPanel_Object5);
         return _loc1_;
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3);
      }
      
      public function selectPetArena() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.tabBtnClick(0);
         for each(_loc1_ in dataTree.openItems)
         {
            dataTree.expandItem(_loc1_,false);
         }
         _loc2_ = xmlHelp.children().length();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(xmlHelp.child("node")[_loc3_].@id == "22")
            {
               _loc4_ = xmlHelp.child("node")[_loc3_] as XML;
               dataTree.selectedItem = _loc4_;
               _loc2_ = _loc4_.children().length();
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  if(_loc4_.child("node")[_loc3_].@id == "2201")
                  {
                     _loc5_ = _loc4_.child("node")[_loc3_];
                     selectTextArea.htmlText = _loc5_.@data;
                     break;
                  }
                  _loc3_++;
               }
            }
            _loc3_++;
         }
      }
      
      private function _HelpPanel_Object27_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":null
         };
         _HelpPanel_Object27 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object27",_HelpPanel_Object27);
         return _loc1_;
      }
      
      private function _HelpPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _HelpPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "data";
         BindingManager.executeBindings(this,"_HelpPanel_DataGridColumn2",_HelpPanel_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get searchedContent() : IntroText
      {
         return this._939616718searchedContent;
      }
      
      private function _HelpPanel_Object30_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":null
         };
         _HelpPanel_Object30 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object30",_HelpPanel_Object30);
         return _loc1_;
      }
      
      public function set searchedContent(param1:IntroText) : void
      {
         var _loc2_:Object = this._939616718searchedContent;
         if(_loc2_ !== param1)
         {
            this._939616718searchedContent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchedContent",_loc2_,param1));
         }
      }
      
      public function selectGuildHelp() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.tabBtnClick(0);
         for each(_loc1_ in dataTree.openItems)
         {
            dataTree.expandItem(_loc1_,false);
         }
         _loc2_ = xmlHelp.children().length();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(xmlHelp.child("node")[_loc3_].@id == "09")
            {
               _loc4_ = xmlHelp.child("node")[_loc3_] as XML;
               dataTree.selectedItem = _loc4_;
               _loc2_ = _loc4_.children().length();
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  if(_loc4_.child("node")[_loc3_].@id == "0901")
                  {
                     _loc5_ = _loc4_.child("node")[_loc3_];
                     selectTextArea.htmlText = _loc5_.@data;
                     break;
                  }
                  _loc3_++;
               }
               break;
            }
            _loc3_++;
         }
      }
      
      private function _HelpPanel_Object15_i() : Object
      {
         var _loc1_:Object = {
            "label":"ESC",
            "data":null
         };
         _HelpPanel_Object15 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object15",_HelpPanel_Object15);
         return _loc1_;
      }
      
      private function _HelpPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.HELPPANEL_U[7];
         _loc1_ = Language.HELPPANEL_U[2];
         _loc1_ = xmlHelp;
         _loc1_ = Language.HELPPANEL_U[3];
         _loc1_ = Language.HELPPANEL_U[0];
         _loc1_ = Language.HELPPANEL_U[4];
         _loc1_ = Language.HELPPANEL_S[4];
         _loc1_ = Language.HELPPANEL_S[5];
         _loc1_ = Language.HELPPANEL_S[6];
         _loc1_ = Language.HELPPANEL_S[7];
         _loc1_ = Language.HELPPANEL_S[8];
         _loc1_ = Language.HELPPANEL_S[9];
         _loc1_ = Language.HELPPANEL_S[10];
         _loc1_ = Language.HELPPANEL_S[44];
         _loc1_ = Language.HELPPANEL_S[47];
         _loc1_ = Language.HELPPANEL_S[11];
         _loc1_ = Language.HELPPANEL_S[12];
         _loc1_ = Language.HELPPANEL_S[13];
         _loc1_ = Language.HELPPANEL_S[14];
         _loc1_ = Language.HELPPANEL_S[15];
         _loc1_ = Language.HELPPANEL_S[16];
         _loc1_ = Language.HELPPANEL_S[17];
         _loc1_ = Language.HELPPANEL_S[18];
         _loc1_ = Language.HELPPANEL_S[19];
         _loc1_ = Language.HELPPANEL_S[20];
         _loc1_ = Language.HELPPANEL_S[21];
         _loc1_ = Language.HELPPANEL_S[22];
         _loc1_ = Language.HELPPANEL_S[45];
         _loc1_ = Language.HELPPANEL_S[46];
         _loc1_ = Language.HELPPANEL_S[23];
         _loc1_ = Language.HELPPANEL_S[24];
         _loc1_ = Language.HELPPANEL_S[31];
         _loc1_ = Language.HELPPANEL_S[25];
         _loc1_ = Language.HELPPANEL_S[32];
         _loc1_ = Language.HELPPANEL_S[26];
         _loc1_ = Language.HELPPANEL_S[33];
         _loc1_ = Language.HELPPANEL_S[27];
         _loc1_ = Language.HELPPANEL_S[34];
         _loc1_ = Language.HELPPANEL_S[28];
         _loc1_ = Language.HELPPANEL_S[35];
         _loc1_ = Language.HELPPANEL_S[29];
         _loc1_ = Language.HELPPANEL_S[36];
         _loc1_ = Language.HELPPANEL_S[30];
         _loc1_ = Language.HELPPANEL_S[37];
         _loc1_ = Language.HELPPANEL_S[38];
         _loc1_ = Language.HELPPANEL_U[5];
         _loc1_ = Language.HELPPANEL_S[43];
         _loc1_ = Language.HELPPANEL_U[2];
         _loc1_ = Language.HELPPANEL_U[3];
         _loc1_ = Language.HELPPANEL_U[4];
         _loc1_ = Language.HELPPANEL_U[5];
         _loc1_ = Language.HELPPANEL_U[6];
         _loc1_ = Language.ACTIVEPANEL_U[15];
      }
      
      [Bindable(event="propertyChange")]
      public function get dataTree() : ButtonTree
      {
         return this._1789063784dataTree;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      private function _HelpPanel_Object31_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":null
         };
         _HelpPanel_Object31 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object31",_HelpPanel_Object31);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectTextArea() : IntroText
      {
         return this._51902346selectTextArea;
      }
      
      private function _HelpPanel_Object4_i() : Object
      {
         var _loc1_:Object = {
            "label":"S",
            "data":null
         };
         _HelpPanel_Object4 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object4",_HelpPanel_Object4);
         return _loc1_;
      }
      
      private function _HelpPanel_Object26_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":null
         };
         _HelpPanel_Object26 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object26",_HelpPanel_Object26);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      public function set shortCuts(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2028527347shortCuts;
         if(_loc2_ !== param1)
         {
            this._2028527347shortCuts = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shortCuts",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      public function ___HelpPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(bbsurl),"_blank");
      }
      
      private function _HelpPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _HelpPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "label";
         BindingManager.executeBindings(this,"_HelpPanel_DataGridColumn1",_HelpPanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      private function _HelpPanel_Object14_i() : Object
      {
         var _loc1_:Object = {
            "label":"M/TAB",
            "data":null
         };
         _HelpPanel_Object14 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object14",_HelpPanel_Object14);
         return _loc1_;
      }
      
      public function ___HelpPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         helpSearch(searchText.text);
      }
      
      public function set resList(param1:List) : void
      {
         var _loc2_:Object = this._1096322398resList;
         if(_loc2_ !== param1)
         {
            this._1096322398resList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resList",_loc2_,param1));
         }
      }
      
      private function _HelpPanel_Object3_i() : Object
      {
         var _loc1_:Object = {
            "label":"B",
            "data":null
         };
         _HelpPanel_Object3 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object3",_HelpPanel_Object3);
         return _loc1_;
      }
      
      private function _HelpPanel_Object25_i() : Object
      {
         var _loc1_:Object = {
            "label":"CTRL+↓",
            "data":null
         };
         _HelpPanel_Object25 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object25",_HelpPanel_Object25);
         return _loc1_;
      }
      
      public function set dataTree(param1:ButtonTree) : void
      {
         var _loc2_:Object = this._1789063784dataTree;
         if(_loc2_ !== param1)
         {
            this._1789063784dataTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataTree",_loc2_,param1));
         }
      }
      
      private function errorInfo(param1:Event) : void
      {
         removeLoaderEvent(param1.target as URLLoader);
      }
      
      public function __tab_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function _HelpPanel_Object13_i() : Object
      {
         var _loc1_:Object = {
            "label":"D",
            "data":null
         };
         _HelpPanel_Object13 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object13",_HelpPanel_Object13);
         return _loc1_;
      }
      
      private function startTransport(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            core.view.getUI(ViewManager.POPU_WAIT).showText(Language.HELPPANEL_S[2]);
            core.view.getUI(ViewManager.POPU_WAIT).showTime(20);
            setTimeout(transport,20000);
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 == true && firstTimeFlag == 0)
         {
            firstTimeFlag = 1;
            initView();
         }
      }
      
      public function set selectTextArea(param1:IntroText) : void
      {
         var _loc2_:Object = this._51902346selectTextArea;
         if(_loc2_ !== param1)
         {
            this._51902346selectTextArea = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTextArea",_loc2_,param1));
         }
      }
      
      private function tabClick(param1:uint) : void
      {
         tabBtn0.selected = false;
         tabBtn1.selected = false;
         tabBtn2.selected = false;
         tabBtn3.selected = false;
         this["tabBtn" + param1].selected = true;
         tab.selectedIndex = param1;
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get searchText() : TextInput
      {
         return this._710472971searchText;
      }
      
      public function __dataTree_itemClick(param1:ListEvent) : void
      {
         treeClickHandle(param1);
      }
      
      private function _HelpPanel_Object2_i() : Object
      {
         var _loc1_:Object = {
            "label":"W",
            "data":null
         };
         _HelpPanel_Object2 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object2",_HelpPanel_Object2);
         return _loc1_;
      }
      
      private function xmlLoaded(param1:Event) : void
      {
         removeLoaderEvent(param1.target as URLLoader);
         xmlHelp = XML(param1.target.data).nodes;
         csurl = XML(param1.target.data).csurl.@add;
         if(GamePredef.bbsurl)
         {
            bbsurl = GamePredef.bbsurl;
         }
         else
         {
            bbsurl = XML(param1.target.data).url.@add;
         }
      }
      
      private function _HelpPanel_Object24_i() : Object
      {
         var _loc1_:Object = {
            "label":"CTRL+↑",
            "data":null
         };
         _HelpPanel_Object24 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object24",_HelpPanel_Object24);
         return _loc1_;
      }
      
      public function ___HelpPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function changeVisble(param1:String) : void
      {
         visible = !visible;
         str = param1;
         if(visible)
         {
            setTimeout(autoClick,100);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shortCuts() : DataGrid
      {
         return this._2028527347shortCuts;
      }
      
      public function init() : void
      {
         helpInitialize();
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
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function autoClick() : void
      {
         var _loc1_:String = str;
         var _loc2_:Number = Number(_loc1_.charAt(0) + _loc1_.charAt(1));
         var _loc3_:Number = Number(_loc1_.charAt(2) + _loc1_.charAt(3));
         var _loc4_:XML = xmlHelp.child("node")[_loc2_ - 1];
         var _loc5_:XML = _loc4_.child("node")[_loc3_ - 1];
         dataTree.expandChildrenOf(_loc4_,true);
         dataTree.selectedItem = _loc5_;
         var _loc6_:* = dataTree.selectedIndex;
         if(_loc6_ >= 0)
         {
            dataTree.scrollToIndex(_loc6_);
         }
         selectTextArea.htmlText = (dataTree.selectedItem as XML).@data;
      }
      
      public function set tabBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      private function removeLoaderEvent(param1:URLLoader) : void
      {
         param1.removeEventListener(IOErrorEvent.IO_ERROR,errorInfo);
         param1.removeEventListener(Event.COMPLETE,xmlLoaded);
      }
      
      private function _HelpPanel_Object12_i() : Object
      {
         var _loc1_:Object = {
            "label":"X",
            "data":null
         };
         _HelpPanel_Object12 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object12",_HelpPanel_Object12);
         return _loc1_;
      }
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      private function transport() : void
      {
         core.view.hide(ViewManager.POPU_WAIT);
         if(core.state == GamePredef.ST_CORE_NORMAL)
         {
            core.remote.toMovable();
         }
         else
         {
            core.sysMidNote(Language.HELPPANEL_S[3]);
         }
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      private function alertTransport() : void
      {
         if(core.state == GamePredef.ST_CORE_NORMAL)
         {
            Alert.show(Language.HELPPANEL_S[1],"",Alert.YES | Alert.NO,null,startTransport);
         }
      }
      
      private function _HelpPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_BasicTitleCanvas1.text = param1;
         },"_HelpPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_Canvas1.label = param1;
         },"_HelpPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return xmlHelp;
         },function(param1:Object):void
         {
            dataTree.dataProvider = param1;
         },"dataTree.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_Canvas3.label = param1;
         },"_HelpPanel_Canvas3.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_BasicGlowButton1.label = param1;
         },"_HelpPanel_BasicGlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_Canvas5.label = param1;
         },"_HelpPanel_Canvas5.label");
         result[5] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[4];
         },function(param1:*):void
         {
            _HelpPanel_Object1.data = param1;
         },"_HelpPanel_Object1.data");
         result[6] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[5];
         },function(param1:*):void
         {
            _HelpPanel_Object2.data = param1;
         },"_HelpPanel_Object2.data");
         result[7] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[6];
         },function(param1:*):void
         {
            _HelpPanel_Object3.data = param1;
         },"_HelpPanel_Object3.data");
         result[8] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[7];
         },function(param1:*):void
         {
            _HelpPanel_Object4.data = param1;
         },"_HelpPanel_Object4.data");
         result[9] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[8];
         },function(param1:*):void
         {
            _HelpPanel_Object5.data = param1;
         },"_HelpPanel_Object5.data");
         result[10] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[9];
         },function(param1:*):void
         {
            _HelpPanel_Object6.data = param1;
         },"_HelpPanel_Object6.data");
         result[11] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[10];
         },function(param1:*):void
         {
            _HelpPanel_Object7.data = param1;
         },"_HelpPanel_Object7.data");
         result[12] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[44];
         },function(param1:*):void
         {
            _HelpPanel_Object8.data = param1;
         },"_HelpPanel_Object8.data");
         result[13] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[47];
         },function(param1:*):void
         {
            _HelpPanel_Object9.data = param1;
         },"_HelpPanel_Object9.data");
         result[14] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[11];
         },function(param1:*):void
         {
            _HelpPanel_Object10.data = param1;
         },"_HelpPanel_Object10.data");
         result[15] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[12];
         },function(param1:*):void
         {
            _HelpPanel_Object11.data = param1;
         },"_HelpPanel_Object11.data");
         result[16] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[13];
         },function(param1:*):void
         {
            _HelpPanel_Object12.data = param1;
         },"_HelpPanel_Object12.data");
         result[17] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[14];
         },function(param1:*):void
         {
            _HelpPanel_Object13.data = param1;
         },"_HelpPanel_Object13.data");
         result[18] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[15];
         },function(param1:*):void
         {
            _HelpPanel_Object14.data = param1;
         },"_HelpPanel_Object14.data");
         result[19] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[16];
         },function(param1:*):void
         {
            _HelpPanel_Object15.data = param1;
         },"_HelpPanel_Object15.data");
         result[20] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[17];
         },function(param1:*):void
         {
            _HelpPanel_Object16.data = param1;
         },"_HelpPanel_Object16.data");
         result[21] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[18];
         },function(param1:*):void
         {
            _HelpPanel_Object17.data = param1;
         },"_HelpPanel_Object17.data");
         result[22] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[19];
         },function(param1:*):void
         {
            _HelpPanel_Object18.data = param1;
         },"_HelpPanel_Object18.data");
         result[23] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[20];
         },function(param1:*):void
         {
            _HelpPanel_Object19.data = param1;
         },"_HelpPanel_Object19.data");
         result[24] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[21];
         },function(param1:*):void
         {
            _HelpPanel_Object20.data = param1;
         },"_HelpPanel_Object20.data");
         result[25] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[22];
         },function(param1:*):void
         {
            _HelpPanel_Object21.data = param1;
         },"_HelpPanel_Object21.data");
         result[26] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[45];
         },function(param1:*):void
         {
            _HelpPanel_Object22.data = param1;
         },"_HelpPanel_Object22.data");
         result[27] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[46];
         },function(param1:*):void
         {
            _HelpPanel_Object23.data = param1;
         },"_HelpPanel_Object23.data");
         result[28] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[23];
         },function(param1:*):void
         {
            _HelpPanel_Object24.data = param1;
         },"_HelpPanel_Object24.data");
         result[29] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[24];
         },function(param1:*):void
         {
            _HelpPanel_Object25.data = param1;
         },"_HelpPanel_Object25.data");
         result[30] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[31];
         },function(param1:*):void
         {
            _HelpPanel_Object26.label = param1;
         },"_HelpPanel_Object26.label");
         result[31] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[25];
         },function(param1:*):void
         {
            _HelpPanel_Object26.data = param1;
         },"_HelpPanel_Object26.data");
         result[32] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[32];
         },function(param1:*):void
         {
            _HelpPanel_Object27.label = param1;
         },"_HelpPanel_Object27.label");
         result[33] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[26];
         },function(param1:*):void
         {
            _HelpPanel_Object27.data = param1;
         },"_HelpPanel_Object27.data");
         result[34] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[33];
         },function(param1:*):void
         {
            _HelpPanel_Object28.label = param1;
         },"_HelpPanel_Object28.label");
         result[35] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[27];
         },function(param1:*):void
         {
            _HelpPanel_Object28.data = param1;
         },"_HelpPanel_Object28.data");
         result[36] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[34];
         },function(param1:*):void
         {
            _HelpPanel_Object29.label = param1;
         },"_HelpPanel_Object29.label");
         result[37] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[28];
         },function(param1:*):void
         {
            _HelpPanel_Object29.data = param1;
         },"_HelpPanel_Object29.data");
         result[38] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[35];
         },function(param1:*):void
         {
            _HelpPanel_Object30.label = param1;
         },"_HelpPanel_Object30.label");
         result[39] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[29];
         },function(param1:*):void
         {
            _HelpPanel_Object30.data = param1;
         },"_HelpPanel_Object30.data");
         result[40] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[36];
         },function(param1:*):void
         {
            _HelpPanel_Object31.label = param1;
         },"_HelpPanel_Object31.label");
         result[41] = binding;
         binding = new Binding(this,function():*
         {
            return Language.HELPPANEL_S[30];
         },function(param1:*):void
         {
            _HelpPanel_Object31.data = param1;
         },"_HelpPanel_Object31.data");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_DataGridColumn1.headerText = param1;
         },"_HelpPanel_DataGridColumn1.headerText");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_S[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_DataGridColumn2.headerText = param1;
         },"_HelpPanel_DataGridColumn2.headerText");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            contactGMCanvas.label = param1;
         },"contactGMCanvas.label");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_S[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_LinkButton1.label = param1;
         },"_HelpPanel_LinkButton1.label");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HELPPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HelpPanel_BasicGlowButton7.label = param1;
         },"_HelpPanel_BasicGlowButton7.label");
         result[52] = binding;
         return result;
      }
      
      public function tabBtnClick(param1:int) : void
      {
         if(param1 == 3 && submitQuestionEnable == false)
         {
            gotoCustomerCenter();
            return;
         }
         tab.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= tab.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      private function _HelpPanel_Object9_i() : Object
      {
         var _loc1_:Object = {
            "label":"F",
            "data":null
         };
         _HelpPanel_Object9 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object9",_HelpPanel_Object9);
         return _loc1_;
      }
      
      private function _HelpPanel_Object23_i() : Object
      {
         var _loc1_:Object = {
            "label":"Z",
            "data":null
         };
         _HelpPanel_Object23 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object23",_HelpPanel_Object23);
         return _loc1_;
      }
      
      private function _HelpPanel_Object1_i() : Object
      {
         var _loc1_:Object = {
            "label":"C",
            "data":null
         };
         _HelpPanel_Object1 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object1",_HelpPanel_Object1);
         return _loc1_;
      }
      
      private function treeClickHandle(param1:Event) : void
      {
         var _loc2_:* = undefined;
         trace("item:" + dataTree.selectedItem);
         if(dataTree.selectedItem)
         {
            if((dataTree.selectedItem as XML).children().length() > 0)
            {
               for each(_loc2_ in dataTree.openItems)
               {
                  if(dataTree.selectedItem != _loc2_)
                  {
                     dataTree.expandItem(_loc2_,false);
                  }
               }
               dataTree.expandItem(dataTree.selectedItem,!dataTree.isItemOpen(dataTree.selectedItem));
            }
         }
         selectTextArea.htmlText = (param1.target.selectedItem as XML).@data;
      }
      
      [Bindable(event="propertyChange")]
      public function get resList() : List
      {
         return this._1096322398resList;
      }
      
      private function _HelpPanel_Object11_i() : Object
      {
         var _loc1_:Object = {
            "label":"T",
            "data":null
         };
         _HelpPanel_Object11 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object11",_HelpPanel_Object11);
         return _loc1_;
      }
      
      private function _HelpPanel_Object19_i() : Object
      {
         var _loc1_:Object = {
            "label":"I",
            "data":null
         };
         _HelpPanel_Object19 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object19",_HelpPanel_Object19);
         return _loc1_;
      }
      
      public function selectAIConf() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.tabBtnClick(0);
         for each(_loc1_ in dataTree.openItems)
         {
            dataTree.expandItem(_loc1_,false);
         }
         _loc2_ = xmlHelp.children().length();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(xmlHelp.child("node")[_loc3_].@id == "21")
            {
               _loc4_ = xmlHelp.child("node")[_loc3_] as XML;
               dataTree.selectedItem = _loc4_;
               _loc2_ = _loc4_.children().length();
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  if(_loc4_.child("node")[_loc3_].@id == "2105")
                  {
                     _loc5_ = _loc4_.child("node")[_loc3_];
                     selectTextArea.htmlText = _loc5_.@data;
                     break;
                  }
                  _loc3_++;
               }
               break;
            }
            _loc3_++;
         }
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         ViewManager.getInstance().show(ViewManager.POPU_UIHELP);
      }
      
      private function _HelpPanel_Object8_i() : Object
      {
         var _loc1_:Object = {
            "label":"R",
            "data":null
         };
         _HelpPanel_Object8 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object8",_HelpPanel_Object8);
         return _loc1_;
      }
      
      private function _HelpPanel_Object22_i() : Object
      {
         var _loc1_:Object = {
            "label":"O",
            "data":null
         };
         _HelpPanel_Object22 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object22",_HelpPanel_Object22);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HelpPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HelpPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_HelpPanelWatcherSetupUtil");
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
      
      public function __resList_change(param1:ListEvent) : void
      {
         clickSearchHandle(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      private function clickSearchHandle(param1:Event) : void
      {
         searchedContent.htmlText = param1.target.selectedItem.data;
      }
      
      private function _HelpPanel_Object10_i() : Object
      {
         var _loc1_:Object = {
            "label":"A",
            "data":null
         };
         _HelpPanel_Object10 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object10",_HelpPanel_Object10);
         return _loc1_;
      }
      
      private function _HelpPanel_Object18_i() : Object
      {
         var _loc1_:Object = {
            "label":"P",
            "data":null
         };
         _HelpPanel_Object18 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object18",_HelpPanel_Object18);
         return _loc1_;
      }
      
      private function helpInitialize() : void
      {
         var _loc1_:URLLoader = new URLLoader();
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,errorInfo);
         _loc1_.addEventListener(Event.COMPLETE,xmlLoaded);
         _loc1_.load(new URLRequest(GamePredef.HELP_PANEL_XML_LINK));
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      private function _HelpPanel_Object21_i() : Object
      {
         var _loc1_:Object = {
            "label":"N",
            "data":null
         };
         _HelpPanel_Object21 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object21",_HelpPanel_Object21);
         return _loc1_;
      }
      
      private function _HelpPanel_Object7_i() : Object
      {
         var _loc1_:Object = {
            "label":"E",
            "data":null
         };
         _HelpPanel_Object7 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object7",_HelpPanel_Object7);
         return _loc1_;
      }
      
      private function _HelpPanel_Object29_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":null
         };
         _HelpPanel_Object29 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object29",_HelpPanel_Object29);
         return _loc1_;
      }
      
      override public function completeHandler(param1:FlexEvent) : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            core.player.normalView.pause();
            return;
         }
         callLater(core.player.normalView.resume);
      }
      
      private function _HelpPanel_Object17_i() : Object
      {
         var _loc1_:Object = {
            "label":"V",
            "data":null
         };
         _HelpPanel_Object17 = _loc1_;
         BindingManager.executeBindings(this,"_HelpPanel_Object17",_HelpPanel_Object17);
         return _loc1_;
      }
      
      private function set xmlHelp(param1:XMLList) : void
      {
         var _loc2_:Object = this._1946144776xmlHelp;
         if(_loc2_ !== param1)
         {
            this._1946144776xmlHelp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xmlHelp",_loc2_,param1));
         }
      }
      
      public function set searchText(param1:TextInput) : void
      {
         var _loc2_:Object = this._710472971searchText;
         if(_loc2_ !== param1)
         {
            this._710472971searchText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchText",_loc2_,param1));
         }
      }
   }
}

