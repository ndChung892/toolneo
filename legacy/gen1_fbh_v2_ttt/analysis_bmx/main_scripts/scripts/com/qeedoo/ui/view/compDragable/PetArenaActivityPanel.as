package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.RendererButton;
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
   import mx.containers.HBox;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetArenaActivityPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _95488733dgCvs:Canvas;
      
      internal var _1127061662leadPetId:String = "";
      
      private var _1405038217award4:ItemSlot;
      
      private var _timer:Timer;
      
      private var _3066321cvs1:Canvas;
      
      private var petArenaAct:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1365722418cdTime:BasicTxtButton;
      
      public var _PetArenaActivityPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      internal var _677507847petType:String = "";
      
      public var _PetArenaActivityPanel_Label1:Label;
      
      public var _PetArenaActivityPanel_Label2:Label;
      
      public var _PetArenaActivityPanel_Label3:Label;
      
      public var _PetArenaActivityPanel_Label4:Label;
      
      public var _PetArenaActivityPanel_Label5:Label;
      
      private var _selfData:Object = {
         "rank":0,
         "cd":0,
         "today":0,
         "max":20,
         "pnt":0,
         "lrank":-1
      };
      
      private var _core:Core = Core.getInstance();
      
      private var _42975283_haveTicket:Boolean = false;
      
      private var _1125982860curRank:BasicTxtButton;
      
      private var _94490672cdSec:int = 0;
      
      private var _1405038219award2:ItemSlot;
      
      private var _3273h1:HBox;
      
      public var _PetArenaActivityPanel_SetProperty1:SetProperty;
      
      public var _PetArenaActivityPanel_SetProperty3:SetProperty;
      
      public var _PetArenaActivityPanel_SetProperty4:SetProperty;
      
      private var _firstTimeFlag:Boolean = true;
      
      public var _PetArenaActivityPanel_SetProperty2:SetProperty;
      
      private var _107332log:LinkTextArea;
      
      private var _1438608771autoPlay:CheckBox;
      
      private const refreshInterval:Number = 60000;
      
      private var _382098058maxCombo:BasicTxtButton;
      
      private var _874983082fightNum:BasicTxtButton;
      
      private var typeList:Array = ["人形系","野兽系","植物系","机械系","恶魔系","龙系","BOSS系"];
      
      private var _50334755leadPet:BasicTxtButton;
      
      private const rankAwardCoef:Array = [40,60,80,100,120,140];
      
      private var _1179952142applyBtn:BasicGlowButton;
      
      private var _3066323cvs3:Canvas;
      
      public var _PetArenaActivityPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _PetArenaActivityPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _PetArenaActivityPanel_BasicGlowButton4:BasicGlowButton;
      
      public var _PetArenaActivityPanel_BasicGlowButton5:BasicGlowButton;
      
      public var _PetArenaActivityPanel_BasicGlowButton7:BasicGlowButton;
      
      private var _1405038218award3:ItemSlot;
      
      private var _logStrArr:ArrayQueue = new ArrayQueue(30);
      
      public var _PetArenaActivityPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _1459480606lastRank:BasicTxtButton;
      
      private var _1226843275weekPet:BasicTxtButton;
      
      private const rankGroupStr:Array = [Language.PET_ARENA_RANK_U[9],Language.PET_ARENA_RANK_U[10],Language.PET_ARENA_RANK_U[11],Language.PET_ARENA_RANK_U[12],Language.PET_ARENA_RANK_U[13],Language.PET_ARENA_RANK_U[14]];
      
      private const PET_ARENA_RATIO_ACT:* = 1;
      
      private var _722894876enemiesList:ArrayCollection = new ArrayCollection();
      
      private var _lastRefreshTime:Number = 0;
      
      private var point:Number = 0;
      
      private var _enemy_data:Object;
      
      mx_internal var _watchers:Array = [];
      
      private var _187011237arenaSysMsg:TextArea;
      
      private var _3066322cvs2:Canvas;
      
      private var _1621962092awardStr:TextArea;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PetArenaActivityPanel_DataGridColumn1:DataGridColumn;
      
      public var _PetArenaActivityPanel_DataGridColumn2:DataGridColumn;
      
      public var _PetArenaActivityPanel_DataGridColumn4:DataGridColumn;
      
      public var _PetArenaActivityPanel_DataGridColumn5:DataGridColumn;
      
      private var sysMsgObject:Object = null;
      
      public var _PetArenaActivityPanel_DataGridColumn3:DataGridColumn;
      
      mx_internal var _bindings:Array = [];
      
      public var _PetArenaActivityPanel_BasicTxtButton8:BasicTxtButton;
      
      public var lang:Array = [Language.AI_CONF_PANEL_U[29],Language.AI_CONF_PANEL_U[30],Language.AI_CONF_PANEL_U[31],Language.AI_CONF_PANEL_U[32],Language.AI_CONF_PANEL_U[33],Language.AI_CONF_PANEL_U[34]];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetArenaActivityPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cvs1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":39,
                        "width":272,
                        "height":270,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"weekPet",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16407301;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":8,
                                 "width":167,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"leadPet",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16407301;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":30,
                                 "width":167,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetArenaActivityPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":87
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"fightNum",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":87,
                                 "width":52
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetArenaActivityPanel_BasicGlowButton1",
                           "events":{"click":"___PetArenaActivityPanel_BasicGlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":185,
                                 "y":85,
                                 "width":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetArenaActivityPanel_Label2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":113
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"cdTime",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":113,
                                 "width":52
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetArenaActivityPanel_BasicGlowButton2",
                           "events":{"click":"___PetArenaActivityPanel_BasicGlowButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":185,
                                 "y":111,
                                 "width":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"maxCombo",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":134,
                                 "width":58,
                                 "label":"0"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetArenaActivityPanel_Label3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetArenaActivityPanel_Label4",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":158
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"lastRank",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":158,
                                 "width":58
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetArenaActivityPanel_BasicGlowButton3",
                           "events":{"click":"___PetArenaActivityPanel_BasicGlowButton3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":185,
                                 "y":155,
                                 "width":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"curRank",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16407301;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":55,
                                 "width":167,
                                 "height":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetArenaActivityPanel_BasicGlowButton4",
                           "events":{"click":"___PetArenaActivityPanel_BasicGlowButton4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":185,
                                 "y":54,
                                 "width":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetArenaActivityPanel_Label5",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":184,
                                 "width":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetArenaActivityPanel_BasicTxtButton8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":184,
                                 "width":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetArenaActivityPanel_BasicGlowButton5",
                           "events":{"click":"___PetArenaActivityPanel_BasicGlowButton5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":185,
                                 "y":181,
                                 "width":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"awardStr",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.textAlign = "center";
                              this.color = 16777215;
                              this.borderThickness = 1;
                              this.borderColor = 198926;
                              this.backgroundAlpha = 0.3;
                              this.backgroundColor = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mouseEnabled":false,
                                 "editable":false,
                                 "selectable":false,
                                 "height":20,
                                 "y":207,
                                 "width":264,
                                 "x":4
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"h1",
                           "events":{"creationComplete":"__h1_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 30;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":40,
                                 "y":229,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"award2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "type":29,
                                          "giid":3257,
                                          "toolTip":"",
                                          "movable":false,
                                          "acceptable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"award3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "type":29,
                                          "giid":3258,
                                          "toolTip":"",
                                          "movable":false,
                                          "acceptable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"award4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "type":29,
                                          "giid":3259,
                                          "toolTip":"",
                                          "movable":false,
                                          "acceptable":false
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
                  "id":"cvs2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":308,
                        "width":272,
                        "height":110,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"log",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0.3;
                              this.backgroundColor = 0;
                              this.borderStyle = "none";
                              this.color = 16774324;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":10,
                                 "width":260,
                                 "height":94,
                                 "mouseEnabled":false,
                                 "editable":false,
                                 "enabled":true,
                                 "selectable":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cvs3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":300,
                        "y":39,
                        "width":380,
                        "height":381,
                        "styleName":"CanvasBorder",
                        "verticalScrollPolicy":"off",
                        "clipContent":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"applyBtn",
                           "events":{"click":"__applyBtn_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CrystalYellowButton",
                                 "x":23,
                                 "y":15,
                                 "width":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetArenaActivityPanel_BasicGlowButton7",
                           "events":{"click":"___PetArenaActivityPanel_BasicGlowButton7_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CrystalYellowButton",
                                 "x":120,
                                 "y":15,
                                 "width":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"autoPlay",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selected":false,
                                 "x":230,
                                 "y":16,
                                 "width":140
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"arenaSysMsg",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.textAlign = "center";
                              this.color = 16777215;
                              this.borderThickness = 1;
                              this.borderColor = 198926;
                              this.backgroundAlpha = 0.3;
                              this.backgroundColor = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mouseEnabled":false,
                                 "editable":false,
                                 "selectable":false,
                                 "height":20,
                                 "y":52,
                                 "width":370,
                                 "x":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"dgCvs",
                           "stylesFactory":function():void
                           {
                              this.top = "80";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "verticalScrollPolicy":"off",
                                 "clipContent":true,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"enemyDataGrid",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "sortableColumns":false,
                                          "height":265,
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "doubleClickEnabled":false,
                                          "columns":[_PetArenaActivityPanel_DataGridColumn1_i(),_PetArenaActivityPanel_DataGridColumn2_i(),_PetArenaActivityPanel_DataGridColumn3_i(),_PetArenaActivityPanel_DataGridColumn4_i(),_PetArenaActivityPanel_DataGridColumn5_i()]
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
      
      private var _1403636296enemyDataGrid:DataGrid;
      
      public function PetArenaActivityPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 430;
         this.styleName = "StandardContent";
         this.states = [_PetArenaActivityPanel_State1_c(),_PetArenaActivityPanel_State2_c()];
         this.addEventListener("creationComplete",___PetArenaActivityPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetArenaActivityPanel._watcherSetupUtil = param1;
      }
      
      public function ___PetArenaActivityPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_PET_ARENA_ACTIVITY_RANK);
      }
      
      [Bindable(event="propertyChange")]
      public function get lastRank() : BasicTxtButton
      {
         return this._1459480606lastRank;
      }
      
      public function initPetlrank(param1:int) : void
      {
         _selfData.lrank = param1;
         showState("reg");
         refreshCharInfo();
      }
      
      public function set lastRank(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1459480606lastRank;
         if(_loc2_ !== param1)
         {
            this._1459480606lastRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastRank",_loc2_,param1));
         }
      }
      
      public function __h1_creationComplete(param1:FlexEvent) : void
      {
         awardIconInit();
      }
      
      private function _PetArenaActivityPanel_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "reg";
         _loc1_.overrides = [_PetArenaActivityPanel_SetProperty1_i(),_PetArenaActivityPanel_SetProperty2_i(),_PetArenaActivityPanel_SetProperty3_i(),_PetArenaActivityPanel_SetProperty4_i()];
         return _loc1_;
      }
      
      public function set applyBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1179952142applyBtn;
         if(_loc2_ !== param1)
         {
            this._1179952142applyBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"applyBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get applyBtn() : BasicGlowButton
      {
         return this._1179952142applyBtn;
      }
      
      private function getFightAward() : void
      {
         _core.remote.call("getPetRankAwardActivity",null);
      }
      
      public function onPetArenaFight(param1:Object) : void
      {
         var _loc2_:String = logObjToString(param1);
         addArenaLog(_loc2_);
         if(!param1.guest)
         {
            if(param1.cd)
            {
               _selfData.cd = param1.cd;
               cdSec = Math.floor((param1.cd - _core.timeLag - new Date().getTime()) / 1000);
               if(cdSec > 600)
               {
                  cdSec = 600;
                  _selfData.cd -= cdSec - 600;
               }
               resetTimer();
            }
            if(param1.pnt)
            {
               _selfData.pnt = ToolKit.add(_selfData.pnt,param1.pnt);
            }
            if(param1.today)
            {
               _selfData.today = param1.today;
            }
            if(param1.maxCombo)
            {
               _selfData.maxCombo = param1.maxCombo;
            }
            if(autoPlay.selected)
            {
               _core.remote.call("replayPetFight",null,param1.bid);
            }
         }
         refreshCharInfo();
         if(param1.enemy)
         {
            dataGridEffect();
            onGetEnemies(param1.enemy);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leadPet() : BasicTxtButton
      {
         return this._50334755leadPet;
      }
      
      [Bindable(event="propertyChange")]
      private function get cdSec() : int
      {
         return this._94490672cdSec;
      }
      
      [Bindable(event="propertyChange")]
      private function get _haveTicket() : Boolean
      {
         return this._42975283_haveTicket;
      }
      
      public function ___PetArenaActivityPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         addFightNum();
      }
      
      private function _PetArenaActivityPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "cid";
         _loc1_.itemRenderer = _PetArenaActivityPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_DataGridColumn5",_PetArenaActivityPanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function set leadPet(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._50334755leadPet;
         if(_loc2_ !== param1)
         {
            this._50334755leadPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leadPet",_loc2_,param1));
         }
      }
      
      public function updatePoint() : void
      {
         point = _core.player.petPK;
      }
      
      private function set cdSec(param1:int) : void
      {
         var _loc2_:Object = this._94490672cdSec;
         if(_loc2_ !== param1)
         {
            this._94490672cdSec = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cdSec",_loc2_,param1));
         }
      }
      
      private function set _haveTicket(param1:Boolean) : void
      {
         var _loc2_:Object = this._42975283_haveTicket;
         if(_loc2_ !== param1)
         {
            this._42975283_haveTicket = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_haveTicket",_loc2_,param1));
         }
      }
      
      public function onPetArenaSysMsg(param1:Object, param2:int) : void
      {
         if(!ToolKit.isEmptyObject(param1))
         {
            showSysMsg(param1,param2,Boolean(sysMsgObject) || !visible);
            sysMsgObject = param1;
         }
         else
         {
            sysMsgObject = {};
         }
      }
      
      public function addArenaLog(param1:String) : void
      {
         _logStrArr.push(param1 + "\n");
         log.htmlText = _logStrArr.join();
      }
      
      private function _PetArenaActivityPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "rate";
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_DataGridColumn4",_PetArenaActivityPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function set log(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._107332log;
         if(_loc2_ !== param1)
         {
            this._107332log = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"log",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxCombo() : BasicTxtButton
      {
         return this._382098058maxCombo;
      }
      
      private function _PetArenaActivityPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererButton;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get curRank() : BasicTxtButton
      {
         return this._1125982860curRank;
      }
      
      [Bindable(event="propertyChange")]
      public function get weekPet() : BasicTxtButton
      {
         return this._1226843275weekPet;
      }
      
      [Bindable(event="propertyChange")]
      internal function get leadPetId() : String
      {
         return this._1127061662leadPetId;
      }
      
      private function logObjToString(param1:Object) : String
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc2_:String = "";
         if(param1.guest)
         {
            _loc3_ = Number(param1.h_cid);
            _loc4_ = param1.h_name;
            if(Boolean(param1.roll) || param1.roll == 0)
            {
               if(param1.result == GamePredef.BATTLE_WIN)
               {
                  _loc2_ = Language.PET_ARENA_U[34];
                  if(param1.rank)
                  {
                     _loc2_ += Language.PET_ARENA_U[38].replace("{rank}",ToolKit.add(param1.rank,1));
                  }
               }
               else
               {
                  _loc2_ = Language.PET_ARENA_U[35];
               }
               _loc2_ = _loc2_.replace("{roll}",param1.roll);
            }
            else if(param1.result == GamePredef.BATTLE_WIN)
            {
               _loc2_ = Language.PET_ARENA_U[32];
               if(param1.rank)
               {
                  _loc2_ += Language.PET_ARENA_U[38].replace("{rank}",ToolKit.add(param1.rank,1));
               }
            }
            else
            {
               _loc2_ = Language.PET_ARENA_U[33];
            }
         }
         else
         {
            _loc3_ = Number(param1.g_cid);
            _loc4_ = param1.g_name;
            if(param1.roll)
            {
               if(param1.result == GamePredef.BATTLE_WIN)
               {
                  _loc2_ = Language.PET_ARENA_U[26];
               }
               else
               {
                  _loc2_ = Language.PET_ARENA_U[28];
               }
               _loc2_ = _loc2_.replace("{roll}",param1.roll);
            }
            else if(param1.result == GamePredef.BATTLE_WIN)
            {
               _loc2_ = Language.PET_ARENA_U[18];
            }
            else
            {
               _loc2_ = Language.PET_ARENA_U[27];
            }
            if(_core.MC_BIRTH_FLAG[102])
            {
               _loc2_ = _loc2_.replace("{num}",Math.ceil(param1.pnt * _core.MC_BIRTH_FLAG[102]));
            }
            else
            {
               _loc2_ = _loc2_.replace("{num}",param1.pnt);
            }
         }
         var _loc5_:String = TextUtil.decode("[@PID|" + _loc3_ + "|" + _loc4_ + "|0|0|0]");
         _loc2_ = _loc2_.replace("{enemy}",_loc5_);
         if(param1.bid)
         {
            _loc2_ += Language.PETFIGHT_PANEL_U[11].replace("{bid}",param1.bid);
         }
         return _loc2_;
      }
      
      private function showApplyPage() : void
      {
         if(!petArenaAct || !petArenaAct.actinfo || new Date().getTime() > petArenaAct.actinfo.endTime)
         {
            _core.sysMidNote(Language.PET_ARENA_U[57]);
            return;
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY);
         _loc1_.show();
         _loc1_.petCrossConf = {
            "f":true,
            "t":_haveTicket
         };
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         --cdSec;
         if(cdSec == 0)
         {
            resetTimer();
         }
      }
      
      private function onValueCommit(param1:Event) : void
      {
         var _loc2_:LinkTextArea = param1.target as LinkTextArea;
         _loc2_.verticalScrollPosition = _loc2_.maxVerticalScrollPosition;
      }
      
      public function set fightNum(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._874983082fightNum;
         if(_loc2_ !== param1)
         {
            this._874983082fightNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightNum",_loc2_,param1));
         }
      }
      
      private function awardIconInit() : void
      {
         var _loc1_:int = 2;
         while(_loc1_ < 5)
         {
            this["award" + _loc1_].setStyleName(_loc1_);
            this["award" + _loc1_].type = -1;
            _loc1_++;
         }
      }
      
      public function get first() : Boolean
      {
         return _firstTimeFlag;
      }
      
      private function showEnemyLater(param1:FlexEvent) : void
      {
         this.removeEventListener(FlexEvent.CREATION_COMPLETE,showEnemyLater);
         onGetEnemies(_enemy_data);
         _enemy_data = null;
      }
      
      public function set arenaSysMsg(param1:TextArea) : void
      {
         var _loc2_:Object = this._187011237arenaSysMsg;
         if(_loc2_ !== param1)
         {
            this._187011237arenaSysMsg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arenaSysMsg",_loc2_,param1));
         }
      }
      
      public function addArenaNum(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.f))
         {
            _selfData.max = param1.max;
         }
         else if(param1.max)
         {
            _selfData.max = param1.max;
         }
         refreshCharInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get h1() : HBox
      {
         return this._3273h1;
      }
      
      private function _PetArenaActivityPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 120;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_DataGridColumn3",_PetArenaActivityPanel_DataGridColumn3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get cdTime() : BasicTxtButton
      {
         return this._1365722418cdTime;
      }
      
      public function ___PetArenaActivityPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         getFightAward();
      }
      
      private function showSysMsg(param1:Object, param2:int, param3:Boolean) : void
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:int = int(param1.id);
         var _loc5_:Array = param1.data;
         if(_loc5_[0] == 0)
         {
            _loc7_ = _loc5_[2];
            if(_loc7_.length > 14)
            {
               _loc7_ = _loc7_.substr(0,11) + "...";
            }
            _loc8_ = TextUtil.decode("[@PID|" + _loc5_[1] + "|" + _loc7_ + "|0|0|0]");
            _loc7_ = _loc5_[4];
            if(_loc7_.length > 14)
            {
               _loc7_ = _loc7_.substr(0,11) + "...";
            }
            _loc9_ = TextUtil.decode("[@PID|" + _loc5_[3] + "|" + _loc7_ + "|0|0|0]");
            _loc6_ = Language.PET_ARENA_U[50].replace("{att}",_loc8_).replace("{def}",_loc9_).replace("{num}",_loc5_[5] - -1);
         }
         else if(_loc5_[0] == 1)
         {
            _loc7_ = _loc5_[2];
            if(_loc7_.length > 16)
            {
               _loc7_ = _loc7_.substr(0,13) + "...";
            }
            _loc8_ = TextUtil.decode("[@PID|" + _loc5_[1] + "|" + _loc7_ + "|0|0|0]");
            _loc6_ = Language.PET_ARENA_U[51].replace("{name}",_loc8_).replace("{num}",_loc5_[3]);
         }
         else if(_loc5_[0] == 2)
         {
            _loc7_ = _loc5_[2];
            if(_loc7_.length > 16)
            {
               _loc7_ = _loc7_.substr(0,13) + "...";
            }
            _loc8_ = TextUtil.decode("[@PID|" + _loc5_[1] + "|" + _loc7_ + "|0|0|0]");
            _loc6_ = Language.PET_ARENA_U[54].replace("{name}",_loc8_).replace("{num}",_loc5_[3]);
         }
         if(initialized && _selfData.rid == param2)
         {
            arenaSysMsg.htmlText = _loc6_;
            arenaSysMsg.visible = true;
         }
         if(param3)
         {
            _core.sysMidMsg(Language.PET_ARENA_U[67] + " " + rankGroupStr[param2] + Language.PET_ARENA_U[55] + _loc6_);
         }
      }
      
      public function onGetArenaLog(param1:Object) : void
      {
         var i:String = null;
         var func:Function = null;
         var data:Object = param1;
         for(i in data)
         {
            _logStrArr.push(logObjToString(data[i]) + "\n");
         }
         if(initialized)
         {
            log.htmlText = _logStrArr.join();
         }
         else
         {
            func = function(param1:FlexEvent):void
            {
               log.htmlText = _logStrArr.join();
               removeEventListener(FlexEvent.CREATION_COMPLETE,func);
            };
            this.addEventListener(FlexEvent.CREATION_COMPLETE,func);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardStr() : TextArea
      {
         return this._1621962092awardStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get dgCvs() : Canvas
      {
         return this._95488733dgCvs;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1)
         {
            if(_firstTimeFlag)
            {
               _firstTimeFlag = false;
               _lastRefreshTime = new Date().getTime();
               if(!sysMsgObject)
               {
                  _loc3_ = _core.player.level;
                  if(_loc3_ >= 155)
                  {
                     _loc2_ = 5;
                  }
                  else if(_loc3_ >= 135)
                  {
                     _loc2_ = 4;
                  }
                  else if(_loc3_ >= 115)
                  {
                     _loc2_ = 3;
                  }
                  else if(_loc3_ >= 95)
                  {
                     _loc2_ = 2;
                  }
                  else if(_loc3_ >= 75)
                  {
                     _loc2_ = 1;
                  }
                  else
                  {
                     _loc2_ = 0;
                  }
                  _core.remote.call("getPetArenaSysMsgActivity",null,_loc2_,-1);
               }
            }
            else if(enemiesList.length < 10)
            {
               _loc4_ = new Date().getTime();
               if(_loc4_ > _lastRefreshTime + refreshInterval)
               {
                  _core.remote.call("getPetArenaDataActivity",null,false);
                  _lastRefreshTime = new Date().getTime();
               }
            }
         }
         super.visible = param1;
         if(param1)
         {
            refreshCharInfo();
         }
      }
      
      private function _PetArenaActivityPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicTitleCanvas1.text = param1;
         },"_PetArenaActivityPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return maxCombo;
         },function(param1:Object):void
         {
            _PetArenaActivityPanel_SetProperty1.target = param1;
         },"_PetArenaActivityPanel_SetProperty1.target");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return cdTime;
         },function(param1:Object):void
         {
            _PetArenaActivityPanel_SetProperty2.target = param1;
         },"_PetArenaActivityPanel_SetProperty2.target");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return fightNum;
         },function(param1:Object):void
         {
            _PetArenaActivityPanel_SetProperty3.target = param1;
         },"_PetArenaActivityPanel_SetProperty3.target");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return curRank;
         },function(param1:Object):void
         {
            _PetArenaActivityPanel_SetProperty4.target = param1;
         },"_PetArenaActivityPanel_SetProperty4.target");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = petType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            weekPet.label = param1;
         },"weekPet.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = leadPetId;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            leadPet.label = param1;
         },"leadPet.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_Label1.text = param1;
         },"_PetArenaActivityPanel_Label1.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[5].replace("{num}",_selfData.today).replace("{max}",_selfData.max);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fightNum.label = param1;
         },"fightNum.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicGlowButton1.label = param1;
         },"_PetArenaActivityPanel_BasicGlowButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_Label2.text = param1;
         },"_PetArenaActivityPanel_Label2.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = getTimeStr(cdSec);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cdTime.label = param1;
         },"cdTime.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicGlowButton2.label = param1;
         },"_PetArenaActivityPanel_BasicGlowButton2.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_Label3.text = param1;
         },"_PetArenaActivityPanel_Label3.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_Label4.text = param1;
         },"_PetArenaActivityPanel_Label4.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicGlowButton3.label = param1;
         },"_PetArenaActivityPanel_BasicGlowButton3.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[17].replace("{num}",ToolKit.isSmallOrEqual(_selfData.rank,0) ? Language.PET_ARENA_U[53] : _selfData.rank);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curRank.label = param1;
         },"curRank.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicGlowButton4.label = param1;
         },"_PetArenaActivityPanel_BasicGlowButton4.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_Label5.text = param1;
         },"_PetArenaActivityPanel_Label5.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.petPK;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicTxtButton8.label = param1;
         },"_PetArenaActivityPanel_BasicTxtButton8.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicGlowButton5.label = param1;
         },"_PetArenaActivityPanel_BasicGlowButton5.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardStr.text = param1;
         },"awardStr.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _haveTicket ? Language.PET_ARENA_U[41] : Language.PET_ARENA_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            applyBtn.label = param1;
         },"applyBtn.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_BasicGlowButton7.label = param1;
         },"_PetArenaActivityPanel_BasicGlowButton7.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoPlay.label = param1;
         },"autoPlay.label");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return enemiesList;
         },function(param1:Object):void
         {
            enemyDataGrid.dataProvider = param1;
         },"enemyDataGrid.dataProvider");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_DataGridColumn1.headerText = param1;
         },"_PetArenaActivityPanel_DataGridColumn1.headerText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_DataGridColumn2.headerText = param1;
         },"_PetArenaActivityPanel_DataGridColumn2.headerText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_DataGridColumn3.headerText = param1;
         },"_PetArenaActivityPanel_DataGridColumn3.headerText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_DataGridColumn4.headerText = param1;
         },"_PetArenaActivityPanel_DataGridColumn4.headerText");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetArenaActivityPanel_DataGridColumn5.headerText = param1;
         },"_PetArenaActivityPanel_DataGridColumn5.headerText");
         result[30] = binding;
         return result;
      }
      
      public function set award3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1405038218award3;
         if(_loc2_ !== param1)
         {
            this._1405038218award3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award3",_loc2_,param1));
         }
      }
      
      public function set award4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1405038217award4;
         if(_loc2_ !== param1)
         {
            this._1405038217award4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award4",_loc2_,param1));
         }
      }
      
      public function set award2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1405038219award2;
         if(_loc2_ !== param1)
         {
            this._1405038219award2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award2",_loc2_,param1));
         }
      }
      
      public function onPetArenaRank(param1:Object) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      internal function get petType() : String
      {
         return this._677507847petType;
      }
      
      private function _PetArenaActivityPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "tName";
         _loc1_.width = 120;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_DataGridColumn2",_PetArenaActivityPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function set autoPlay(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1438608771autoPlay;
         if(_loc2_ !== param1)
         {
            this._1438608771autoPlay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoPlay",_loc2_,param1));
         }
      }
      
      public function set maxCombo(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._382098058maxCombo;
         if(_loc2_ !== param1)
         {
            this._382098058maxCombo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxCombo",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         log.addEventListener(FlexEvent.VALUE_COMMIT,onValueCommit);
         log.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         if(!ToolKit.isEmptyObject(sysMsgObject))
         {
            showSysMsg(sysMsgObject,_selfData.rid,false);
         }
      }
      
      private function _PetArenaActivityPanel_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetArenaActivityPanel_SetProperty4 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 167;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_SetProperty4",_PetArenaActivityPanel_SetProperty4);
         return _loc1_;
      }
      
      private function petArenaFighting(param1:Object) : void
      {
         if(_selfData.today >= _selfData.max)
         {
            _core.sysMidNote(Language.PET_ARENA_U[29]);
         }
         else if(cdSec > 0)
         {
            _core.sysMidNote(Language.PET_ARENA_U[30]);
         }
         else
         {
            _core.remote.call("petArenaFightActivity",null,param1.cid,[param1.rank - 1]);
         }
      }
      
      public function ___PetArenaActivityPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function initLang() : void
      {
         var _loc1_:* = Boolean(petArenaAct) && Boolean(petArenaAct.actinfo) ? typeList[petArenaAct.actinfo.petType - 1] : Language.PET_ARENA_U[68];
         petType = Language.PET_ARENA_U[58] + _loc1_;
         var _loc2_:* = Boolean(petArenaAct) && Boolean(petArenaAct.actinfo) ? GameData.d[GamePredef.TBL_CREATURE][petArenaAct.actinfo.leadPetId[0]].name : Language.PET_ARENA_U[68];
         leadPetId = Language.PET_ARENA_U[59] + _loc2_;
      }
      
      private function refreshCharInfo() : void
      {
         var _loc1_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:* = undefined;
         fightNum.label = Language.PET_ARENA_U[5].replace("{num}",_selfData.today).replace("{max}",_selfData.max);
         curRank.label = Language.PET_ARENA_U[17].replace("{num}",_selfData.rank <= 0 ? Language.PET_ARENA_U[53] : _selfData.rank);
         maxCombo.text = _selfData.maxCombo;
         if(Boolean(_selfData) && _selfData.lrank >= 0)
         {
            lastRank.text = String(_selfData.lrank - -1);
         }
         else
         {
            lastRank.text = Language.PET_ARENA_U[71];
         }
         _loc1_ = rankAwardCoef[_selfData.rid] * PET_ARENA_RATIO_ACT;
         if(!_loc1_)
         {
            _loc1_ = rankAwardCoef[0] * PET_ARENA_RATIO_ACT;
         }
         var _loc2_:String = Language.AI_CONF_PANEL_U[28];
         var _loc3_:String = Language.AI_CONF_PANEL_U[27];
         var _loc4_:String = Language.AI_CONF_PANEL_U[26];
         var _loc5_:* = 0;
         while(_loc5_ <= 5)
         {
            _loc1_ = int(rankAwardCoef[_loc5_]);
            _loc6_ = _loc1_;
            _loc6_ = Math.round(_loc1_ * Math.pow(1.02,100));
            _loc7_ = Math.round(_loc1_ * Math.pow(1.02,149));
            _loc2_ += lang[_loc5_].replace("{min}",_loc6_).replace("{max}",_loc7_);
            _loc6_ = Math.round(_loc1_ * Math.pow(1.02,150));
            _loc7_ = Math.round(_loc1_ * Math.pow(1.02,189));
            _loc3_ += lang[_loc5_].replace("{min}",_loc6_).replace("{max}",_loc7_);
            _loc6_ = Math.round(_loc1_ * Math.pow(1.02,190));
            _loc7_ = Math.round(_loc1_ * Math.pow(1.02,199));
            _loc4_ += lang[_loc5_].replace("{min}",_loc6_).replace("{max}",_loc7_);
            _loc5_++;
         }
         award2.toolTip = _loc2_;
         award3.toolTip = _loc3_;
         award4.toolTip = _loc4_;
      }
      
      public function set weekPet(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1226843275weekPet;
         if(_loc2_ !== param1)
         {
            this._1226843275weekPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"weekPet",_loc2_,param1));
         }
      }
      
      public function set awardStr(param1:TextArea) : void
      {
         var _loc2_:Object = this._1621962092awardStr;
         if(_loc2_ !== param1)
         {
            this._1621962092awardStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardStr",_loc2_,param1));
         }
      }
      
      private function addFightNum() : void
      {
         var num:Number = NaN;
         var alertFunc:Function = null;
         if(!petArenaAct || !petArenaAct.actinfo || new Date().getTime() > petArenaAct.actinfo.endTime)
         {
            addArenaLog(Language.PET_ARENA_U[57]);
            return;
         }
         if(!_haveTicket)
         {
            addArenaLog(Language.PET_ARENA_U[40]);
            return;
         }
         if(_selfData.max < 30)
         {
            num = (_selfData.max - 19) * 5;
            alertFunc = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("addPetFightNumActivity",null,_selfData.max);
               }
            };
            Alert.show(Language.PET_ARENA_U[37].replace("{num}",num),"",Alert.YES | Alert.NO,null,alertFunc);
         }
         else
         {
            addArenaLog(Language.PET_ARENA_U[43]);
         }
      }
      
      public function set curRank(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1125982860curRank;
         if(_loc2_ !== param1)
         {
            this._1125982860curRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curRank",_loc2_,param1));
         }
      }
      
      private function resetTimer() : void
      {
         if(_timer)
         {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER,onTimer);
            _timer = null;
         }
         if(cdSec > 0)
         {
            _timer = new Timer(1000,cdSec);
            _timer.addEventListener(TimerEvent.TIMER,onTimer);
            _timer.start();
         }
      }
      
      internal function set leadPetId(param1:String) : void
      {
         var _loc2_:Object = this._1127061662leadPetId;
         if(_loc2_ !== param1)
         {
            this._1127061662leadPetId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leadPetId",_loc2_,param1));
         }
      }
      
      private function _PetArenaActivityPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetArenaActivityPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "rank";
         _loc1_.width = 40;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_DataGridColumn1",_PetArenaActivityPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function onGetEnemies(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:Sort = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         if(currentState != "nor")
         {
            currentState = "nor";
         }
         if(!initialized)
         {
            _enemy_data = param1;
            for(_loc5_ in param1)
            {
               if(Boolean(param1[_loc5_]) && param1[_loc5_].cid == _core.player.id)
               {
                  _selfData = param1[_loc5_];
                  break;
               }
            }
            this.addEventListener(FlexEvent.CREATION_COMPLETE,showEnemyLater);
            this.show();
            return;
         }
         if(_firstTimeFlag)
         {
            this.show();
         }
         if(!_haveTicket)
         {
            _haveTicket = true;
            applyBtn.label = Language.PET_ARENA_U[41];
         }
         var _loc2_:ArrayCollection = new ArrayCollection();
         for(_loc3_ in param1)
         {
            _loc6_ = param1[_loc3_];
            _loc6_.rank = ToolKit.add(_loc6_.rank,1);
            if(Number(_loc6_.cid) == _core.player.id)
            {
               _selfData = _loc6_;
               _loc6_.rate = Number(_loc6_.total) == 0 ? "0" : Math.ceil(100 * _loc6_.win / _loc6_.total).toString() + "%";
               _loc2_.addItem(_loc6_);
               if(_loc6_.hasOwnProperty("cd"))
               {
                  cdSec = Math.floor((_loc6_.cd - new Date().getTime() - _core.timeLag) / 1000);
                  if(cdSec < 0)
                  {
                     cdSec = 0;
                     _selfData.cd = 0;
                  }
                  else if(cdSec > 600)
                  {
                     _selfData.cd -= cdSec - 600;
                     cdSec = 600;
                  }
                  resetTimer();
               }
               refreshCharInfo();
            }
            else
            {
               _loc6_.label = Language.PET_ARENA_U[25];
               _loc6_.onClick = petArenaFighting;
               _loc6_.rate = Number(_loc6_.total) == 0 ? "0" : Math.ceil(100 * _loc6_.win / _loc6_.total).toString() + "%";
               _loc2_.addItem(_loc6_);
            }
         }
         _loc4_ = new Sort();
         _loc4_.fields = [new SortField("rank",false,false,true)];
         _loc2_.sort = _loc4_;
         _loc2_.refresh();
         enemiesList = _loc2_;
      }
      
      public function ___PetArenaActivityPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         _core.remote.call("openShopDirect",null,115);
      }
      
      public function reset() : void
      {
         _firstTimeFlag = true;
         if(log)
         {
            log.htmlText = "";
         }
         if(arenaSysMsg)
         {
            arenaSysMsg.htmlText = "";
         }
         _logStrArr.clear();
         _selfData = {
            "rank":0,
            "cd":0,
            "today":0,
            "max":20,
            "pnt":0
         };
         if(initialized)
         {
            refreshCharInfo();
         }
         cdSec = 0;
         resetTimer();
         enemiesList = new ArrayCollection();
         _haveTicket = false;
         sysMsgObject = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get log() : LinkTextArea
      {
         return this._107332log;
      }
      
      private function _PetArenaActivityPanel_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetArenaActivityPanel_SetProperty3 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 52;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_SetProperty3",_PetArenaActivityPanel_SetProperty3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get arenaSysMsg() : TextArea
      {
         return this._187011237arenaSysMsg;
      }
      
      private function _PetArenaActivityPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_ARENA_U[67];
         _loc1_ = maxCombo;
         _loc1_ = cdTime;
         _loc1_ = fightNum;
         _loc1_ = curRank;
         _loc1_ = petType;
         _loc1_ = leadPetId;
         _loc1_ = Language.PET_ARENA_U[4];
         _loc1_ = Language.PET_ARENA_U[5].replace("{num}",_selfData.today).replace("{max}",_selfData.max);
         _loc1_ = Language.PET_ARENA_U[6];
         _loc1_ = Language.PET_ARENA_U[7];
         _loc1_ = getTimeStr(cdSec);
         _loc1_ = Language.PET_ARENA_U[8];
         _loc1_ = Language.PET_ARENA_U[45];
         _loc1_ = Language.PET_ARENA_U[46];
         _loc1_ = Language.PET_ARENA_U[16];
         _loc1_ = Language.PET_ARENA_U[17].replace("{num}",ToolKit.isSmallOrEqual(_selfData.rank,0) ? Language.PET_ARENA_U[53] : _selfData.rank);
         _loc1_ = Language.PET_ARENA_U[47];
         _loc1_ = Language.PET_ARENA_U[31];
         _loc1_ = _core.player.petPK;
         _loc1_ = Language.PET_ARENA_U[52];
         _loc1_ = Language.PET_ARENA_U[48];
         _loc1_ = _haveTicket ? Language.PET_ARENA_U[41] : Language.PET_ARENA_U[1];
         _loc1_ = Language.PET_ARENA_U[3];
         _loc1_ = Language.PETFIGHT_PANEL_U[30];
         _loc1_ = enemiesList;
         _loc1_ = Language.PET_ARENA_U[20];
         _loc1_ = Language.PET_ARENA_U[21];
         _loc1_ = Language.PET_ARENA_U[22];
         _loc1_ = Language.PET_ARENA_U[24];
         _loc1_ = Language.PET_ARENA_U[25];
      }
      
      public function set enemyDataGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1403636296enemyDataGrid;
         if(_loc2_ !== param1)
         {
            this._1403636296enemyDataGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enemyDataGrid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get award2() : ItemSlot
      {
         return this._1405038219award2;
      }
      
      [Bindable(event="propertyChange")]
      public function get award3() : ItemSlot
      {
         return this._1405038218award3;
      }
      
      [Bindable(event="propertyChange")]
      public function get award4() : ItemSlot
      {
         return this._1405038217award4;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightNum() : BasicTxtButton
      {
         return this._874983082fightNum;
      }
      
      public function ___PetArenaActivityPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         resetCD();
      }
      
      [Bindable(event="propertyChange")]
      public function get autoPlay() : CheckBox
      {
         return this._1438608771autoPlay;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetArenaActivityPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetArenaActivityPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetArenaActivityPanelWatcherSetupUtil");
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
      
      public function showState(param1:String) : void
      {
         currentState = param1;
         super.show();
      }
      
      public function set h1(param1:HBox) : void
      {
         var _loc2_:Object = this._3273h1;
         if(_loc2_ !== param1)
         {
            this._3273h1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"h1",_loc2_,param1));
         }
      }
      
      public function set cdTime(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1365722418cdTime;
         if(_loc2_ !== param1)
         {
            this._1365722418cdTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cdTime",_loc2_,param1));
         }
      }
      
      private function _PetArenaActivityPanel_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetArenaActivityPanel_SetProperty2 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 52;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_SetProperty2",_PetArenaActivityPanel_SetProperty2);
         return _loc1_;
      }
      
      public function set cvs1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066321cvs1;
         if(_loc2_ !== param1)
         {
            this._3066321cvs1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs1",_loc2_,param1));
         }
      }
      
      public function set cvs2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066322cvs2;
         if(_loc2_ !== param1)
         {
            this._3066322cvs2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs2",_loc2_,param1));
         }
      }
      
      public function set cvs3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066323cvs3;
         if(_loc2_ !== param1)
         {
            this._3066323cvs3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs3",_loc2_,param1));
         }
      }
      
      private function openArenaHelp() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_HELP);
         if(_loc1_)
         {
            _loc1_.selectPetArena();
         }
         _loc1_.show();
      }
      
      private function dataGridEffect() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get enemyDataGrid() : DataGrid
      {
         return this._1403636296enemyDataGrid;
      }
      
      private function set enemiesList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._722894876enemiesList;
         if(_loc2_ !== param1)
         {
            this._722894876enemiesList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enemiesList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs1() : Canvas
      {
         return this._3066321cvs1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs2() : Canvas
      {
         return this._3066322cvs2;
      }
      
      private function _PetArenaActivityPanel_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetArenaActivityPanel_SetProperty1 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 58;
         BindingManager.executeBindings(this,"_PetArenaActivityPanel_SetProperty1",_PetArenaActivityPanel_SetProperty1);
         return _loc1_;
      }
      
      private function _PetArenaActivityPanel_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "nor";
         return _loc1_;
      }
      
      public function openPanel(param1:Object) : void
      {
         _core.player.petArenaAct = param1;
         point = _core.player.petPK;
         petArenaAct = _core.player.petArenaAct;
         initLang();
      }
      
      [Bindable(event="propertyChange")]
      private function get enemiesList() : ArrayCollection
      {
         return this._722894876enemiesList;
      }
      
      public function set dgCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._95488733dgCvs;
         if(_loc2_ !== param1)
         {
            this._95488733dgCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dgCvs",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs3() : Canvas
      {
         return this._3066323cvs3;
      }
      
      private function getTimeStr(param1:int) : String
      {
         var _loc2_:int = Math.floor(param1 / 60);
         var _loc3_:int = param1 % 60;
         var _loc4_:String = _loc2_.toString() + ":";
         if(_loc2_ < 10)
         {
            _loc4_ = "0" + _loc4_;
         }
         if(_loc3_ < 10)
         {
            _loc4_ += "0";
         }
         return _loc4_ + _loc3_.toString();
      }
      
      public function ___PetArenaActivityPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         openArenaHelp();
      }
      
      internal function set petType(param1:String) : void
      {
         var _loc2_:Object = this._677507847petType;
         if(_loc2_ !== param1)
         {
            this._677507847petType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petType",_loc2_,param1));
         }
      }
      
      public function __applyBtn_click(param1:MouseEvent) : void
      {
         showApplyPage();
      }
      
      private function resetCD() : void
      {
         var alertFunc:Function;
         var num:Number = NaN;
         if(!petArenaAct || !petArenaAct.actinfo || new Date().getTime() > petArenaAct.actinfo.endTime)
         {
            addArenaLog(Language.PET_ARENA_U[57]);
            return;
         }
         if(!_haveTicket)
         {
            addArenaLog(Language.PET_ARENA_U[40]);
            return;
         }
         alertFunc = function(param1:CloseEvent):void
         {
            var func:Function = null;
            var e:CloseEvent = param1;
            if(e.detail == Alert.YES)
            {
               func = function(param1:Boolean):void
               {
                  if(param1)
                  {
                     _selfData.cd = 0;
                     cdSec = 0;
                     resetTimer();
                  }
               };
               _core.remote.call("clearArenaCDActivity",new Responder(func));
            }
         };
         if(cdSec > 0)
         {
            num = Math.ceil(cdSec / 30);
            Alert.show(Language.PET_ARENA_U[36].replace("{num}",num),"",Alert.YES | Alert.NO,null,alertFunc);
         }
         else
         {
            addArenaLog(Language.PET_ARENA_U[39]);
         }
      }
   }
}

