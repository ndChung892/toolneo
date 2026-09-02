package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.compGameStage.NPCView;
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
   import mx.containers.ViewStack;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HulaPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const HULA_INIT_PRE_NUM:int = 20;
      
      private static const HULA_INIT_POP_NUM:int = 10;
      
      private static const HULA_REAP_NUM:int = 3;
      
      public static const HULA_NPC_SCRIPT_AWARD:String = "script_award";
      
      public static const HULA_NPC_SCRIPT_BATTLE:String = "script_battle";
      
      public static const HULA_NPC_SCRIPT_CHANGE:String = "script_change";
      
      public static const HULA_NPC_SCRIPT_CANCEL:String = "script_cancel";
      
      public static const HULA_NPC_SCRIPT_CHANGE_RED:String = "script_change_red";
      
      public static const HULA_NPC_SCRIPT_CHANGE_YELLOW:String = "script_change_yellow";
      
      public static const HULA_NPC_SCRIPT_CHANGE_GREEN:String = "script_change_green";
      
      public static const HULA_NPC_SCRIPT_CHANGE_BLUE:String = "script_change_blue";
      
      public static var bombArr:Array = null;
      
      public static var isTurning:Boolean = false;
      
      public static var MOVE_POINT:Array = [[12,70],[17,70],[22,70],[27,70],[32,70],[37,70],[42,70],[47,70],[52,70],[57,70],[12,80],[17,80],[22,80],[27,80],[32,80],[37,80],[42,80],[47,80],[52,80],[57,80],[-98 + 160,0 + 90],[-93 + 160,11 + 90],[-87 + 160,21 + 90],[-79 + 160,30 + 90],[-70 + 160,39 + 90],[-60 + 160,45 + 90],[-47 + 160,50 + 90],[-34 + 160,52 + 90],[-22 + 160,54 + 90],[-9 + 160,55 + 90],[4 + 160,55 + 90],[16 + 160,55 + 90],[28 + 160,53 + 90],[41 + 160,51 + 90],[53 + 160,48 + 90],[63 + 160,45 + 90],[73 + 160,41 + 90],[81 + 160,36 + 90],[88 + 160,30 + 90],[93 + 160,22 + 90],[97 + 160,13 + 90],[98 + 160,3 + 90],[97 + 160,-7 + 90],[95 + 160,-17 + 90],[88 + 160,-25 + 90],[81 + 160,-33 + 90],[72 + 160,-39 + 90],[64 + 160,-45 + 90],[55 + 160,-49 + 90],[45 + 160,-52 + 90],[34 + 160,-54 + 90],[21 + 160,-55 + 90],[9 + 160,-55 + 90],[-3 + 160,-55 + 90],[-15 + 160,-54 + 90],[-27 + 160,-53 + 90],[-39 + 160,-50 + 90],[-50 + 160,-45 + 90],[-59 + 160,-39 + 90],[-68 + 160,-33 + 90],[-74 + 160,-24 + 90]
      ,[-75 + 160,-12 + 90],[-73 + 160,-1 + 90],[-68 + 160,9 + 90],[-62 + 160,19 + 90],[-52 + 160,25 + 90],[-41 + 160,31 + 90],[-30 + 160,35 + 90],[-19 + 160,37 + 90],[-8 + 160,38 + 90],[5 + 160,38 + 90],[18 + 160,36 + 90],[32 + 160,32 + 90],[44 + 160,26 + 90],[55 + 160,21 + 90],[63 + 160,12 + 90],[65 + 160,-1 + 90],[63 + 160,-14 + 90],[55 + 160,-23 + 90],[47 + 160,-31 + 90],[35 + 160,-36 + 90],[22 + 160,-39 + 90],[7 + 160,-40 + 90],[-7 + 160,-40 + 90],[-21 + 160,-39 + 90],[-33 + 160,-34 + 90],[-44 + 160,-27 + 90],[-52 + 160,-17 + 90],[-51 + 160,-4 + 90],[-45 + 160,7 + 90],[-34 + 160,15 + 90],[-23 + 160,21 + 90],[-9 + 160,22 + 90],[5 + 160,22 + 90],[18 + 160,19 + 90],[27 + 160,11 + 90],[29 + 160,0 + 90],[24 + 160,-12 + 90],[13 + 160,-20 + 90],[0 + 160,-21 + 90],[-14 + 160,-20 + 90],[-25 + 160,-12 + 90],[-21 + 160,-1 + 90],[-11 + 160,4 + 90],[-2 + 160,-2 + 90]];
      
      public var _HulaPanel_Label12:Label;
      
      private var _195633910gameBtn:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var npcList:Array = [];
      
      private var _1091754364holeBtn:BasicGlowButton;
      
      private var isGameOver:Boolean = false;
      
      private var _115312txt:IntroText;
      
      private var _1419990172maxComboNum:Label;
      
      private var removeArr:Array = [];
      
      private var rankObj:Array = null;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _HulaPanel_DataGridColumn1:DataGridColumn;
      
      public var _HulaPanel_DataGridColumn2:DataGridColumn;
      
      public var _HulaPanel_DataGridColumn3:DataGridColumn;
      
      public var _HulaPanel_Label1:Label;
      
      public var _HulaPanel_Label2:Label;
      
      public var _HulaPanel_Label3:Label;
      
      public var _HulaPanel_Label4:Label;
      
      public var _HulaPanel_Label5:Label;
      
      private var _1191282484leaderName:Label;
      
      private var _760893254battleScore:Label;
      
      private var _978074256rankBtn:BasicGlowButton;
      
      private var _255229216totleScore:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var reapNum:int = 0;
      
      private var _255572470rankData:DataGrid;
      
      public var _HulaPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _606510598awardVs:ViewStack;
      
      private var _12589660comboScore:Label;
      
      private var comboResCodeArr:Array = [0,2060090400043,2060090400044,2060090400045,2060090400046,2060090400047,2060090400048,2060090400049,2060090400050,2060090400051,2060090400052,2060090400053,2060090400054,2060090400055,2060090400056,2060090400057,2060090400058,2060090400059,2060090400060,2060090400061,2060090400062,2060090400063,2060090400064,2060090400065,2060090400066,2060090400067,2060090400068,2060090400069,2060090400070,2060090400071,2060090400072];
      
      private var tempBattle:Array = [];
      
      private var _211936761gotoBtn:BasicGlowButton;
      
      private var gameData:Object = {};
      
      private var HULA_NPC_DATA:Array = [2092,2093,2094,2095,2096,2097];
      
      public var _HulaPanel_Image1:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var npcMoveNum:int = 0;
      
      private var preList:Array = [];
      
      private var load:Loader;
      
      private var rankList:ArrayCollection = new ArrayCollection();
      
      private var _1401389892membersName:TextArea;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":545,
               "height":405,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_HulaPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"holeBtn",
                  "events":{"click":"__holeBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "25";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"gameBtn",
                  "events":{"click":"__gameBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "95";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"rankBtn",
                  "events":{"click":"__rankBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "165";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"awardVs",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":340,
                        "x":0,
                        "y":55,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "50";
                              this.left = "5";
                              this.right = "5";
                              this.bottom = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"txt",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "5";
                                       this.top = "5";
                                       this.right = "5";
                                       this.backgroundAlpha = 0;
                                       this.fontStyle = "normal";
                                       this.fontWeight = "bold";
                                       this.textAlign = "left";
                                       this.fontSize = 12;
                                       this.borderThickness = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":310,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"gotoBtn",
                                    "events":{"click":"__gotoBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "3";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "styleName":"BtnStdRed"
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
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":530,
                                          "height":310,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_HulaPanel_Image1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "2";
                                                this.top = "3";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "0";
                                                this.top = "15";
                                                this.color = 16776960;
                                                this.fontSize = 26;
                                                this.fontWeight = "bold";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "25";
                                                this.top = "60";
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "155";
                                                this.top = "60";
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "285";
                                                this.top = "60";
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "415";
                                                this.top = "60";
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"battleScore",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "25";
                                                this.top = "90";
                                                this.color = 32768;
                                                this.textAlign = "center";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"comboScore",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "155";
                                                this.top = "90";
                                                this.color = 32768;
                                                this.textAlign = "center";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"maxComboNum",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "285";
                                                this.top = "90";
                                                this.color = 32768;
                                                this.textAlign = "center";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"totleScore",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "415";
                                                this.top = "90";
                                                this.color = 32768;
                                                this.textAlign = "center";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label10",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "28";
                                                this.top = "168";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"leaderName",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "136";
                                                this.top = "168";
                                                this.color = 65535;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":320,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label12",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "28";
                                                this.top = "198";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":100,
                                                   "height":20,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"membersName",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "136";
                                                this.top = "198";
                                                this.color = 65535;
                                                this.fontWeight = "bold";
                                                this.backgroundAlpha = 0;
                                                this.borderThickness = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":320,
                                                   "height":80,
                                                   "mouseEnabled":false,
                                                   "selectable":false,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off"
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
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":530,
                                          "height":310,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_HulaPanel_Label13",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "0";
                                                this.top = "15";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 26;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"rankData",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "50";
                                                this.textAlign = "center";
                                                this.fontSize = 16;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "selectable":false,
                                                   "height":250,
                                                   "width":570,
                                                   "headerHeight":25,
                                                   "columns":[_HulaPanel_DataGridColumn1_i(),_HulaPanel_DataGridColumn2_i(),_HulaPanel_DataGridColumn3_i()]
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
               })]
            };
         }
      });
      
      private var res_load_state:int = 0;
      
      public var _HulaPanel_Label13:Label;
      
      public var _HulaPanel_Label10:Label;
      
      public function HulaPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 545;
         this.height = 405;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___HulaPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HulaPanel._watcherSetupUtil = param1;
      }
      
      public function onNPCAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:int = int(param1["index"]);
         npcDead(_loc2_);
      }
      
      public function set awardVs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._606510598awardVs;
         if(_loc2_ !== param1)
         {
            this._606510598awardVs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardVs",_loc2_,param1));
         }
      }
      
      public function set rankData(param1:DataGrid) : void
      {
         var _loc2_:Object = this._255572470rankData;
         if(_loc2_ !== param1)
         {
            this._255572470rankData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankData",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      private function getHulaNpc(param1:int) : Npc
      {
         var _loc4_:Npc = null;
         if(!npcList)
         {
            return null;
         }
         var _loc2_:Npc = null;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < npcList.length)
         {
            _loc4_ = npcList[_loc3_];
            if((Boolean(_loc4_)) && Boolean(_loc4_.hulaData) && _loc4_.hulaData.index == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function _HulaPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _HulaPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "score";
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_HulaPanel_DataGridColumn3",_HulaPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function onGetRankData(param1:Object) : void
      {
         var _loc3_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = param1["rank"];
         if(!_loc2_ || !(_loc2_ is Array))
         {
            return;
         }
         rankBtn.enabled = false;
         gameBtn.enabled = false;
         if(initialized)
         {
            rankObj = _loc2_ as Array;
            rankBtn.enabled = rankObj != null;
            refreshRank();
            _loc3_ = param1["info"];
            gameBtn.enabled = _loc3_ != null;
            if(_loc3_)
            {
               gameData = _loc3_;
               refreshGameData();
               refreshTeamData();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankData() : DataGrid
      {
         return this._255572470rankData;
      }
      
      private function init() : void
      {
         txt.htmlText = Language.HULA_PANEL[2];
      }
      
      [Bindable(event="propertyChange")]
      public function get gameBtn() : BasicGlowButton
      {
         return this._195633910gameBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardVs() : ViewStack
      {
         return this._606510598awardVs;
      }
      
      public function set gameBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._195633910gameBtn;
         if(_loc2_ !== param1)
         {
            this._195633910gameBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameBtn",_loc2_,param1));
         }
      }
      
      private function _HulaPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.HULA_PANEL[1];
         _loc1_ = Language.HULA_PANEL[12];
         _loc1_ = Language.HULA_PANEL[13];
         _loc1_ = Language.HULA_PANEL[20];
         _loc1_ = Language.HULA_PANEL[3];
         _loc1_ = ResManager.getIconUrl(4130220000390);
         _loc1_ = Language.HULA_PANEL[21];
         _loc1_ = Language.HULA_PANEL[22];
         _loc1_ = Language.HULA_PANEL[23];
         _loc1_ = Language.HULA_PANEL[24];
         _loc1_ = Language.HULA_PANEL[25];
         _loc1_ = Language.HULA_PANEL[26];
         _loc1_ = Language.HULA_PANEL[27];
         _loc1_ = Language.HULA_PANEL[28];
         _loc1_ = rankList;
         _loc1_ = Language.HULA_PANEL[29];
         _loc1_ = Language.HULA_PANEL[30];
         _loc1_ = Language.HULA_PANEL[31];
      }
      
      private function getHulaPreNpc(param1:int) : Npc
      {
         var _loc4_:Npc = null;
         if(!preList)
         {
            return null;
         }
         var _loc2_:Npc = null;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < preList.length)
         {
            _loc4_ = preList[_loc3_];
            if((Boolean(_loc4_)) && Boolean(_loc4_.hulaData) && _loc4_.hulaData.index == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get gotoBtn() : BasicGlowButton
      {
         return this._211936761gotoBtn;
      }
      
      public function set rankBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._978074256rankBtn;
         if(_loc2_ !== param1)
         {
            this._978074256rankBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankBtn",_loc2_,param1));
         }
      }
      
      public function __holeBtn_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get totleScore() : Label
      {
         return this._255229216totleScore;
      }
      
      [Bindable(event="propertyChange")]
      public function get leaderName() : Label
      {
         return this._1191282484leaderName;
      }
      
      public function set gotoBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._211936761gotoBtn;
         if(_loc2_ !== param1)
         {
            this._211936761gotoBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gotoBtn",_loc2_,param1));
         }
      }
      
      public function __rankBtn_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      private function removeSubBall(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:* = param1;
         while(_loc3_ > param1 - param2)
         {
            _loc4_ = gameData["hulaData"]["queue"][_loc3_];
            removeArr.push(_loc4_);
            gameData["hulaData"]["queue"][_loc3_] = null;
            _loc3_--;
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc5_:BitmapData = null;
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("bomb") as Class;
         var _loc3_:MovieClip = new _loc2_();
         bombArr = [];
         var _loc4_:int = 1;
         while(_loc4_ <= _loc3_.totalFrames)
         {
            _loc3_.gotoAndStop(_loc4_);
            _loc5_ = new BitmapData(160,160,true,16777215);
            _loc5_.draw(_loc3_);
            bombArr.push(_loc5_);
            _loc4_++;
         }
         res_load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
      }
      
      public function set totleScore(param1:Label) : void
      {
         var _loc2_:Object = this._255229216totleScore;
         if(_loc2_ !== param1)
         {
            this._255229216totleScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totleScore",_loc2_,param1));
         }
      }
      
      public function onGetData(param1:Object) : void
      {
         if(!param1 || !param1["tData"])
         {
            return;
         }
         getRes();
         gameData = param1["tData"];
         rankObj = param1["rank"];
         if(initialized)
         {
            rankBtn.enabled = rankObj != null;
         }
         if(param1["tData"].state >= 2)
         {
            isGameOver = true;
         }
         refreshNpcPositionIndex();
         refreshQueue();
         refreshPre();
      }
      
      private function getMemberName(param1:Array, param2:int) : String
      {
         var _loc4_:Object = null;
         if(!param1)
         {
            return "";
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if((Boolean(_loc4_)) && _loc4_["cid"] == param2)
            {
               return _loc4_["name"];
            }
            _loc3_++;
         }
         return "";
      }
      
      public function set maxComboNum(param1:Label) : void
      {
         var _loc2_:Object = this._1419990172maxComboNum;
         if(_loc2_ !== param1)
         {
            this._1419990172maxComboNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxComboNum",_loc2_,param1));
         }
      }
      
      private function cleanQueue() : void
      {
         var _loc2_:Npc = null;
         isTurning = false;
         if(!npcList)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < npcList.length)
         {
            _loc2_ = npcList[_loc1_];
            if(_loc2_)
            {
               _core.view.removeN(_loc2_.id);
            }
            _loc1_++;
         }
         npcList.length = 0;
      }
      
      private function _HulaPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _HulaPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 150;
         _loc1_.dataField = "leaderName";
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_HulaPanel_DataGridColumn2",_HulaPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function gotoHall() : void
      {
         _core.remote.call("hulaEntraHole",null);
      }
      
      private function npcMove(param1:Boolean = false) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Npc = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:NPCView = null;
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         npcMoveNum = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < gameData["hulaData"]["queue"].length)
         {
            _loc4_ = gameData["hulaData"]["queue"][_loc2_];
            if(!_loc4_)
            {
               _loc3_++;
            }
            else
            {
               _loc5_ = getHulaNpc(_loc4_.index);
               if(_loc5_)
               {
                  _loc6_ = [];
                  _loc7_ = int(_loc4_.pIndex);
                  _loc8_ = _loc2_ - _loc3_;
                  if(_loc8_ >= _loc7_)
                  {
                     _loc11_ = _loc7_;
                     while(_loc11_ <= _loc8_)
                     {
                        _loc9_ = {};
                        _loc9_["index"] = _loc11_;
                        _loc9_["p"] = MOVE_POINT[_loc11_ + HULA_INIT_PRE_NUM];
                        _loc6_.push(_loc9_);
                        _loc11_++;
                     }
                  }
                  else if(_loc8_ < _loc7_)
                  {
                     _loc12_ = int(_loc7_ - 1);
                     while(_loc12_ >= _loc8_)
                     {
                        _loc9_ = {};
                        _loc9_["index"] = _loc12_;
                        _loc9_["p"] = MOVE_POINT[_loc12_ + HULA_INIT_PRE_NUM];
                        _loc6_.push(_loc9_);
                        _loc12_--;
                     }
                  }
                  _loc10_ = _core.view.getN(_loc5_.id) as NPCView;
                  if((Boolean(_loc10_)) && _loc6_.length > 0)
                  {
                     if(!_loc10_.hasEventListener("npc_stop"))
                     {
                        _loc10_.addEventListener("npc_stop",npcStop);
                        _loc10_.addEventListener("hula_game_over",gameOver);
                     }
                     ++npcMoveNum;
                     _loc10_.setSpeed(10);
                     _loc10_.walkQueue(_loc6_);
                     _loc4_.pIndex = _loc8_;
                  }
               }
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get membersName() : TextArea
      {
         return this._1401389892membersName;
      }
      
      public function __gameBtn_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      public function ___HulaPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function resort() : void
      {
         var _loc2_:Object = null;
         var _loc1_:* = 0;
         while(_loc1_ < gameData["hulaData"]["queue"].length)
         {
            _loc2_ = gameData["hulaData"]["queue"][_loc1_];
            if(!_loc2_ || Boolean(_loc2_.isDead))
            {
               gameData["hulaData"]["queue"].splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
      }
      
      public function set leaderName(param1:Label) : void
      {
         var _loc2_:Object = this._1191282484leaderName;
         if(_loc2_ !== param1)
         {
            this._1191282484leaderName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaderName",_loc2_,param1));
         }
      }
      
      private function getRes() : void
      {
         if(res_load_state != 0)
         {
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130101005)));
            res_load_state = 1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      public function set battleScore(param1:Label) : void
      {
         var _loc2_:Object = this._760893254battleScore;
         if(_loc2_ !== param1)
         {
            this._760893254battleScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleScore",_loc2_,param1));
         }
      }
      
      public function set comboScore(param1:Label) : void
      {
         var _loc2_:Object = this._12589660comboScore;
         if(_loc2_ !== param1)
         {
            this._12589660comboScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comboScore",_loc2_,param1));
         }
      }
      
      public function onChange(param1:Object) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = int(param1["index"]);
         var _loc3_:int = int(param1["targetNPCId"]);
         var _loc4_:int = 0;
         while(_loc4_ < gameData["hulaData"]["queue"].length)
         {
            _loc6_ = gameData["hulaData"]["queue"][_loc4_];
            if((Boolean(_loc6_)) && _loc6_.index == _loc2_)
            {
               _loc6_.npcId = _loc3_;
               break;
            }
            _loc4_++;
         }
         var _loc5_:Npc = getHulaNpc(_loc2_);
         if(_loc5_)
         {
            _loc7_ = _core.view.getN(_loc5_.id);
            _loc8_ = _core.data.getGameData(GamePredef.TBL_NPC,_loc3_);
            _loc7_ && _loc7_.reloadHula({
               "nid":_loc5_.id,
               "resCode":_loc8_.resCode,
               "objName":_loc8_.name + _loc5_.hulaData.sortId
            });
         }
      }
      
      private function _HulaPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _HulaPanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "rank";
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_HulaPanel_DataGridColumn1",_HulaPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function toShowUnlock() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         _core.sysBlueMsg(Language.HULA_PANEL[0]);
         var _loc1_:int = 0;
         while(_loc1_ < tempBattle.length)
         {
            _loc2_ = tempBattle[_loc1_];
            if(_loc2_)
            {
               _loc3_ = _loc2_["obj"];
               _loc4_ = int(_loc3_["index"]);
               _loc5_ = bomb(_loc4_);
               if(!_loc5_)
               {
                  npcDead(_loc4_);
                  gameData["score"] += 1;
                  gameData["battleScore"] += 1;
               }
            }
            refreshGameData();
            _loc1_++;
         }
         tempBattle.length = 0;
      }
      
      private function npcStop(param1:Event) : void
      {
         --npcMoveNum;
         if(npcMoveNum == 0)
         {
            toScore();
         }
      }
      
      public function set membersName(param1:TextArea) : void
      {
         var _loc2_:Object = this._1401389892membersName;
         if(_loc2_ !== param1)
         {
            this._1401389892membersName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"membersName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get holeBtn() : BasicGlowButton
      {
         return this._1091754364holeBtn;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HulaPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HulaPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_HulaPanelWatcherSetupUtil");
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
      
      private function toClear() : void
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < gameData["hulaData"]["queue"].length)
         {
            _loc2_ = gameData["hulaData"]["queue"][_loc1_];
            if(Boolean(_loc2_) && Boolean(_loc2_.isDead))
            {
               gameData["hulaData"]["queue"][_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      public function cleanAll() : void
      {
         cleanQueue();
         cleanPre();
      }
      
      private function cleanPre() : void
      {
         var _loc2_:Npc = null;
         if(!preList)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < preList.length)
         {
            _loc2_ = preList[_loc1_];
            if(_loc2_)
            {
               _core.view.removeN(_loc2_.id);
            }
            _loc1_++;
         }
         preList.length = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxComboNum() : Label
      {
         return this._1419990172maxComboNum;
      }
      
      private function refreshRank() : void
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         rankList.removeAll();
         rankBtn.enabled = false;
         if(!rankObj)
         {
            return;
         }
         rankBtn.enabled = true;
         var _loc1_:int = -1;
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < rankObj.length)
         {
            _loc4_ = rankObj[_loc3_];
            if(_loc4_)
            {
               if(_loc1_ != int(_loc4_.score))
               {
                  _loc1_ = int(_loc4_.score);
                  _loc2_ = _loc3_;
               }
               _loc5_ = "";
               if(_loc4_["members"])
               {
                  _loc5_ = getMemberName(_loc4_["members"],int(_loc4_["leaderId"]));
               }
               rankList.addItem({
                  "rank":_loc2_ + 1,
                  "leaderName":_loc5_,
                  "score":_loc4_["score"]
               });
            }
            _loc3_++;
         }
      }
      
      private function _HulaPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_BasicTitleCanvas1.text = param1;
         },"_HulaPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            holeBtn.label = param1;
         },"holeBtn.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gameBtn.label = param1;
         },"gameBtn.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rankBtn.label = param1;
         },"rankBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gotoBtn.label = param1;
         },"gotoBtn.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000390);
         },function(param1:Object):void
         {
            _HulaPanel_Image1.source = param1;
         },"_HulaPanel_Image1.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label1.text = param1;
         },"_HulaPanel_Label1.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label2.text = param1;
         },"_HulaPanel_Label2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label3.text = param1;
         },"_HulaPanel_Label3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label4.text = param1;
         },"_HulaPanel_Label4.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label5.text = param1;
         },"_HulaPanel_Label5.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label10.text = param1;
         },"_HulaPanel_Label10.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label12.text = param1;
         },"_HulaPanel_Label12.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_Label13.text = param1;
         },"_HulaPanel_Label13.text");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return rankList;
         },function(param1:Object):void
         {
            rankData.dataProvider = param1;
         },"rankData.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_DataGridColumn1.headerText = param1;
         },"_HulaPanel_DataGridColumn1.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_DataGridColumn2.headerText = param1;
         },"_HulaPanel_DataGridColumn2.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HULA_PANEL[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HulaPanel_DataGridColumn3.headerText = param1;
         },"_HulaPanel_DataGridColumn3.headerText");
         result[17] = binding;
         return result;
      }
      
      private function bomb(param1:int) : Boolean
      {
         var _loc10_:* = undefined;
         var _loc2_:Npc = getHulaNpc(param1);
         if(!_loc2_ || _loc2_.nid != HULA_NPC_DATA[5])
         {
            return false;
         }
         var _loc3_:int = -1;
         var _loc4_:* = 0;
         while(_loc4_ < gameData["hulaData"]["queue"].length)
         {
            _loc10_ = gameData["hulaData"]["queue"][_loc4_];
            if((Boolean(_loc10_)) && _loc10_.sortId == _loc2_.hulaData.sortId)
            {
               npcDead(param1);
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         var _loc5_:int = 1;
         var _loc6_:* = _loc3_ - 1;
         var _loc7_:Object = gameData["hulaData"]["queue"][_loc6_];
         while(Boolean(_loc7_) && Boolean(_loc7_.npcId == HULA_NPC_DATA[5]) && !_loc7_.isDead)
         {
            _loc7_.isDead = true;
            _loc7_.inBattle = false;
            npcDead(_loc7_.index);
            _loc5_++;
            _loc6_--;
            _loc7_ = gameData["hulaData"]["queue"][_loc6_];
         }
         if(_loc7_)
         {
            if(!_loc7_.isDead)
            {
               _loc5_++;
            }
            _loc7_.isDead = true;
            _loc7_.inBattle = false;
            npcDead(_loc7_.index);
         }
         var _loc8_:int = _loc3_ + 1;
         var _loc9_:Object = gameData["hulaData"]["queue"][_loc8_];
         while(Boolean(_loc9_) && Boolean(_loc9_.npcId == HULA_NPC_DATA[5]) && !_loc9_.isDead)
         {
            _loc9_.isDead = true;
            _loc9_.inBattle = false;
            npcDead(_loc9_.index);
            _loc5_++;
            _loc8_ += 1;
            _loc9_ = gameData["hulaData"]["queue"][_loc8_];
         }
         if(_loc9_)
         {
            if(!_loc9_.isDead)
            {
               _loc5_++;
            }
            _loc9_.isDead = true;
            _loc9_.inBattle = false;
            npcDead(_loc9_.index);
         }
         gameData["score"] += _loc5_;
         gameData["battleScore"] += _loc5_;
         return true;
      }
      
      [Bindable(event="propertyChange")]
      public function get comboScore() : Label
      {
         return this._12589660comboScore;
      }
      
      private function refreshGameData() : void
      {
         if(initialized)
         {
            maxComboNum.text = gameData["maxComboNum"];
            battleScore.text = gameData["battleScore"];
            comboScore.text = gameData["comboScore"];
            totleScore.text = gameData["score"];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankBtn() : BasicGlowButton
      {
         return this._978074256rankBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get battleScore() : Label
      {
         return this._760893254battleScore;
      }
      
      private function refreshNpcPositionIndex() : void
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < gameData["hulaData"]["queue"].length)
         {
            _loc2_ = gameData["hulaData"]["queue"][_loc1_];
            if(_loc2_)
            {
               _loc2_.pIndex = _loc1_;
            }
            _loc1_++;
         }
      }
      
      private function refreshTeamData() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(!initialized)
         {
            return;
         }
         var _loc1_:int = int(gameData["leaderId"]);
         var _loc2_:Array = gameData["membersArr"];
         leaderName.text = "";
         membersName.text = "";
         if(Boolean(_loc1_) && Boolean(_loc2_) && _loc2_.length > 1)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_];
               if(_loc4_)
               {
                  _loc5_ = int(_loc4_["cid"]);
                  _loc6_ = _loc4_["name"];
                  if(_loc5_ == _loc1_)
                  {
                     leaderName.text = _loc6_;
                  }
                  else
                  {
                     membersName.text += _loc6_ + "\n";
                  }
               }
               _loc3_++;
            }
         }
      }
      
      private function npcDisappear(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < removeArr.length)
         {
            _loc4_ = removeArr[_loc3_];
            if(_loc4_)
            {
               npcDead(_loc4_.index,false);
            }
            _loc3_++;
         }
         removeArr.length = 0;
      }
      
      private function refreshPre() : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Npc = null;
         cleanPre();
         var _loc1_:Array = gameData["hulaData"]["pre"];
         if(!_loc1_ || _loc1_.length == 0)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_];
            _loc3_.isPre = true;
            _loc4_ = int(_loc3_.npcId);
            _loc5_ = _core.data.gameData[GamePredef.TBL_NPC][_loc4_];
            if(!(!_loc5_ || Boolean(_loc3_.isDead)))
            {
               _loc5_.id = _loc3_.index;
               _loc5_.posX = MOVE_POINT[_loc2_][0] * 10;
               _loc5_.posY = MOVE_POINT[_loc2_][1] * 10;
               _loc5_.nid = _loc4_;
               _loc5_.busy = false;
               _loc6_ = _loc5_.name;
               _loc5_.name += _loc3_.sortId;
               _core.createNpc(_loc5_);
               _loc5_.name = _loc6_;
               _loc7_ = _core.getNpc(_loc5_.id);
               if(_loc7_)
               {
                  _loc7_.hulaData = _loc3_;
                  _loc7_.state = 101;
                  preList[_loc2_] = _loc7_;
               }
            }
            _loc2_++;
         }
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" hula load res Error ");
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            getRes();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(_core.player.mapData.templateId == 76)
         {
            gameBtn.enabled = true;
         }
         else
         {
            tabClick(0);
            gameBtn.enabled = false;
         }
         _core.remote.call("hulaGetRankData",new Responder(onGetRankData));
      }
      
      private function toScore() : void
      {
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         if(isGameOver)
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < gameData["hulaData"]["queue"].length)
         {
            _loc8_ = gameData["hulaData"]["queue"][_loc7_];
            if(!_loc8_)
            {
               if(_loc1_ != 0)
               {
                  _loc4_ = true;
                  _loc6_++;
               }
            }
            else if(_loc1_ == 0)
            {
               _loc1_ = int(_loc8_.npcId);
            }
            else if(_loc1_ == _loc8_.npcId)
            {
               _loc2_++;
               if(_loc4_)
               {
                  _loc5_ = true;
               }
            }
            else
            {
               if(_loc2_ >= HULA_REAP_NUM && _loc5_)
               {
                  _loc9_ = _loc2_ + _loc2_ * reapNum;
                  gameData["score"] += _loc9_;
                  gameData["comboScore"] += _loc9_;
                  _loc3_ = true;
                  removeSubBall(_loc7_ - 1,_loc2_ + _loc6_);
                  npcDisappear(_loc7_,_loc2_ + _loc6_);
               }
               _loc1_ = int(_loc8_.npcId);
               _loc2_ = 1;
               _loc6_ = 0;
               _loc4_ = false;
               _loc5_ = false;
            }
            _loc7_++;
         }
         if(_loc2_ >= HULA_REAP_NUM && _loc5_)
         {
            _loc10_ = _loc2_ + _loc2_ * reapNum;
            gameData["score"] += _loc10_;
            gameData["comboScore"] += _loc10_;
            _loc3_ = true;
            removeSubBall(gameData["hulaData"]["queue"].length - 1,_loc2_ + _loc6_);
            npcDisappear(_loc7_,_loc2_ + _loc6_);
         }
         if(_loc3_)
         {
            ++reapNum;
            if(reapNum > gameData["maxComboNum"])
            {
               gameData["maxComboNum"] = reapNum;
            }
            _loc11_ = _core.view.getUI(ViewManager.MAIN_CNOTICE);
            _loc11_.addNotice({
               "delay":2000,
               "effect":comboResCodeArr[reapNum],
               "msg":""
            });
            refreshGameData();
            npcMove(true);
         }
         else
         {
            refreshPre();
            resort();
            isTurning = false;
            toShowUnlock();
         }
      }
      
      public function set txt(param1:IntroText) : void
      {
         var _loc2_:Object = this._115312txt;
         if(_loc2_ !== param1)
         {
            this._115312txt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt",_loc2_,param1));
         }
      }
      
      public function onBattleEnd(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = Boolean(param1["isWin"]);
         if(_loc2_)
         {
            if(isTurning)
            {
               tempBattle.push(param1);
            }
            else
            {
               _loc3_ = param1["obj"];
               _loc4_ = int(_loc3_["index"]);
               _loc5_ = bomb(_loc4_);
               if(!_loc5_)
               {
                  npcDead(_loc4_);
                  gameData["score"] += 1;
                  gameData["battleScore"] += 1;
               }
            }
            refreshGameData();
         }
      }
      
      private function npcDead(param1:int, param2:Boolean = true) : void
      {
         var _loc4_:NPCView = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc3_:Npc = getHulaNpc(param1);
         if(_loc3_)
         {
            _loc3_.hulaData.isDead = true;
            _loc4_ = _core.view.getN(_loc3_.id) as NPCView;
            _core.view.removeN(_loc3_.id);
            if(_loc4_)
            {
               if(_loc4_.hasEventListener("npc_stop"))
               {
                  _loc4_.removeEventListener("npc_stop",npcStop);
                  _loc4_.removeEventListener("hula_game_over",gameOver);
               }
               _loc4_.hulaDead();
            }
         }
         if(param2)
         {
            _loc5_ = 0;
            while(_loc5_ < gameData["hulaData"]["queue"].length)
            {
               _loc6_ = gameData["hulaData"]["queue"][_loc5_];
               if((Boolean(_loc6_)) && _loc6_.index == param1)
               {
                  _loc6_.isDead = true;
                  break;
               }
               _loc5_++;
            }
         }
      }
      
      public function __gotoBtn_click(param1:MouseEvent) : void
      {
         gotoHall();
      }
      
      private function gameOver(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Npc = null;
         var _loc6_:NPCView = null;
         if(isGameOver)
         {
            return;
         }
         _core.sysBlueMsg(Language.HULA_PANEL[16]);
         isGameOver = true;
         npcMoveNum = 0;
         var _loc2_:* = 84;
         var _loc3_:* = int(gameData["hulaData"]["queue"].length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = gameData["hulaData"]["queue"][_loc3_];
            if(_loc4_)
            {
               _loc5_ = getHulaNpc(_loc4_.index);
               if(_loc5_)
               {
                  _loc6_ = _core.view.getN(_loc5_.id) as NPCView;
                  if(_loc6_)
                  {
                     if(_loc6_.hasEventListener("npc_stop"))
                     {
                        _loc6_.removeEventListener("npc_stop",npcStop);
                        _loc6_.removeEventListener("hula_game_over",gameOver);
                     }
                     if(_loc2_ >= 0)
                     {
                        _loc6_.stopWalkQueue(MOVE_POINT[_loc2_-- + HULA_INIT_PRE_NUM]);
                     }
                     else
                     {
                        _loc6_.stopWalkQueue();
                     }
                  }
               }
            }
            _loc3_--;
         }
      }
      
      public function onPop(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!param1 || !gameData["hulaData"]["pre"])
         {
            return;
         }
         isTurning = true;
         _core.sysBlueMsg(Language.HULA_PANEL[17]);
         refreshNpcPositionIndex();
         var _loc2_:int = 0;
         while(_loc2_ < HULA_INIT_POP_NUM)
         {
            _loc3_ = gameData["hulaData"]["pre"].pop();
            gameData["hulaData"]["queue"].unshift(_loc3_);
            _loc4_ = preList.pop();
            _loc4_.hulaData.isPre = false;
            npcList.unshift(_loc4_);
            _loc2_++;
         }
         gameData["hulaData"]["pre"] = param1["pre"];
         reapNum = 0;
         toClear();
         npcMove();
      }
      
      private function tabClick(param1:int) : void
      {
         awardVs.selectedIndex = param1;
         holeBtn.selected = param1 == 0;
         gameBtn.selected = param1 == 1;
         rankBtn.selected = param1 == 2;
         if(param1 == 1)
         {
            refreshGameData();
            refreshTeamData();
         }
         else if(param1 == 2)
         {
            refreshRank();
         }
      }
      
      public function set holeBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1091754364holeBtn;
         if(_loc2_ !== param1)
         {
            this._1091754364holeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeBtn",_loc2_,param1));
         }
      }
      
      private function refreshQueue() : void
      {
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Npc = null;
         var _loc8_:* = 0;
         cleanQueue();
         var _loc1_:Array = gameData["hulaData"]["queue"];
         if(!_loc1_ || _loc1_.length == 0)
         {
            return;
         }
         if(_loc1_.length <= 85)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length && _loc2_ < 85)
            {
               _loc3_ = _loc1_[_loc2_];
               _loc4_ = int(_loc3_.npcId);
               _loc5_ = _core.data.gameData[GamePredef.TBL_NPC][_loc4_];
               if(!(!_loc5_ || Boolean(_loc3_.isDead)))
               {
                  _loc5_.id = _loc3_.index;
                  _loc5_.posX = MOVE_POINT[_loc2_ + HULA_INIT_PRE_NUM][0] * 10;
                  _loc5_.posY = MOVE_POINT[_loc2_ + HULA_INIT_PRE_NUM][1] * 10;
                  _loc5_.nid = _loc4_;
                  _loc5_.busy = false;
                  _loc6_ = _loc5_.name;
                  _loc5_.name += _loc3_.sortId;
                  _core.createNpc(_loc5_);
                  _loc5_.name = _loc6_;
                  _loc7_ = _core.getNpc(_loc5_.id);
                  if(_loc7_)
                  {
                     _loc7_.hulaData = _loc3_;
                     _loc7_.state = 101;
                     npcList[_loc2_] = _loc7_;
                  }
               }
               _loc2_++;
            }
         }
         else
         {
            _loc8_ = 104;
            _loc2_ = int(_loc1_.length - 1);
            while(_loc2_ >= 0 && _loc8_ >= 0)
            {
               _loc3_ = _loc1_[_loc2_];
               _loc4_ = int(_loc3_.npcId);
               _loc5_ = _core.data.gameData[GamePredef.TBL_NPC][_loc4_];
               if(!(!_loc5_ || Boolean(_loc3_.isDead)))
               {
                  _loc5_.id = _loc3_.index;
                  _loc5_.posX = MOVE_POINT[_loc8_][0] * 10;
                  _loc5_.posY = MOVE_POINT[_loc8_][1] * 10;
                  _loc5_.nid = _loc4_;
                  _loc5_.busy = false;
                  _loc6_ = _loc5_.name;
                  _loc5_.name += _loc3_.sortId;
                  _core.createNpc(_loc5_);
                  _loc5_.name = _loc6_;
                  _loc7_ = _core.getNpc(_loc5_.id);
                  if(_loc7_)
                  {
                     _loc7_.hulaData = _loc3_;
                     _loc7_.state = 101;
                     npcList[_loc2_] = _loc7_;
                  }
                  _loc8_--;
               }
               _loc2_--;
            }
         }
      }
   }
}

