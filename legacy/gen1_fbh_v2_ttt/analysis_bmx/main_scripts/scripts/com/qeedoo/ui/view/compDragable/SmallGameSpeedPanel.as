package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlotCreature;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SmallGameSpeedPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const SMALL_GAME_MAX_TIMES:int = 3;
      
      private static const SMALL_GAME_ADD_TIME_COST:int = 10;
      
      private static const SMALL_GAME_POINT_PLAY_TIME:Number = 2000;
      
      private static const SMALL_GAME_PLAY_INTERVAL:Number = 1000;
      
      private static const SMALL_GAME_START_ID:Number = 3880;
      
      private static const SMALL_GAME_END_ID:Number = 3881;
      
      private static const SMALL_GAME_SLOT_TOTAL_NUM:int = 49;
      
      private var _1641501082idSlot3:ItemSlotCreature;
      
      private var _653073985idSlot28:ItemSlotCreature;
      
      private var _653073992idSlot21:ItemSlotCreature;
      
      private var _653073989idSlot24:ItemSlotCreature;
      
      private var _653073990idSlot23:ItemSlotCreature;
      
      private var _896883712idTodayTimes:BasicTxtButton;
      
      private var _isPlaying:Boolean = false;
      
      private var _winTimes:int = 0;
      
      private var _isThrowing:Boolean = false;
      
      private var _463521703idLostTimes:BasicTxtButton;
      
      private var _actionType:String = "my";
      
      private var _1641501080idSlot1:ItemSlotCreature;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1641501087idSlot8:ItemSlotCreature;
      
      private var _1638814005idPoint:Image;
      
      public var _SmallGameSpeedPanel_Button4:Button;
      
      private var _core:Core = Core.getInstance();
      
      private var _653073926idSlot45:ItemSlotCreature;
      
      private var _pcStep:Number = 1;
      
      private var _653073928idSlot43:ItemSlotCreature;
      
      private var _653073924idSlot47:ItemSlotCreature;
      
      private var _653073931idSlot40:ItemSlotCreature;
      
      private var _653073922idSlot49:ItemSlotCreature;
      
      private var _653074015idSlot19:ItemSlotCreature;
      
      private var winOrLost:Boolean = false;
      
      private var _653074019idSlot15:ItemSlotCreature;
      
      private var _1641501085idSlot6:ItemSlotCreature;
      
      private var _653074017idSlot17:ItemSlotCreature;
      
      private var _653074020idSlot14:ItemSlotCreature;
      
      private var _653074024idSlot10:ItemSlotCreature;
      
      private var _653073955idSlot37:ItemSlotCreature;
      
      private var _653074022idSlot12:ItemSlotCreature;
      
      private var _653073957idSlot35:ItemSlotCreature;
      
      private var _653073959idSlot33:ItemSlotCreature;
      
      private var _playTotalTimes:int = 1;
      
      private var _1445731091idPlayBtn:Button;
      
      private var _653073962idSlot30:ItemSlotCreature;
      
      private var stepHandler:int = 0;
      
      private var _653073953idSlot39:ItemSlotCreature;
      
      private var _653073960idSlot32:ItemSlotCreature;
      
      private var _1641501083idSlot4:ItemSlotCreature;
      
      public var _SmallGameSpeedPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _playTimes:int = 0;
      
      private var _653073988idSlot25:ItemSlotCreature;
      
      private var _lostTimes:int = 0;
      
      private var _653073984idSlot29:ItemSlotCreature;
      
      private var _653073986idSlot27:ItemSlotCreature;
      
      private var _653073991idSlot22:ItemSlotCreature;
      
      private var _653073993idSlot20:ItemSlotCreature;
      
      private var _maxStep:Number = 1;
      
      private var _1641501081idSlot2:ItemSlotCreature;
      
      private var _prevStep:Number = 1;
      
      private var _1641501088idSlot9:ItemSlotCreature;
      
      private var _985338109idStartGameBtn:Button;
      
      private var _581600507idWinTimes:BasicTxtButton;
      
      private var _currentPoint:int = 0;
      
      private var _653073929idSlot42:ItemSlotCreature;
      
      private var _653073927idSlot44:ItemSlotCreature;
      
      private var _backForwardStep:Number = 0;
      
      private var _1641501086idSlot7:ItemSlotCreature;
      
      private var defineSlots:Object = {
         1:"",
         2:"exp",
         3:"",
         4:"money",
         5:"",
         6:"step",
         7:"",
         8:"exp",
         9:"goods",
         10:"money",
         11:"",
         12:"",
         13:"exp",
         14:"step",
         15:"",
         16:"money",
         17:"",
         18:"exp",
         19:"",
         20:"",
         21:"goods",
         22:"",
         23:"money",
         24:"",
         25:"",
         26:"exp",
         27:"",
         28:"step",
         29:"",
         30:"exp",
         31:"",
         32:"",
         33:"",
         34:"",
         35:"money",
         36:"",
         37:"goods",
         38:"",
         39:"exp",
         40:"step",
         41:"",
         42:"",
         43:"",
         44:"",
         45:"exp",
         46:"money",
         47:"",
         48:"",
         49:""
      };
      
      private var _653073925idSlot46:ItemSlotCreature;
      
      private var _1404615706idGetAwardBtn:Button;
      
      private var _stepType:String = "";
      
      private var _653073930idSlot41:ItemSlotCreature;
      
      private var _653073923idSlot48:ItemSlotCreature;
      
      private var pointHandler:int = 0;
      
      private var _653074018idSlot16:ItemSlotCreature;
      
      private var _653074016idSlot18:ItemSlotCreature;
      
      mx_internal var _watchers:Array = [];
      
      private var _653074021idSlot13:ItemSlotCreature;
      
      private var _653074023idSlot11:ItemSlotCreature;
      
      private var _myStep:Number = 1;
      
      private var _653073954idSlot38:ItemSlotCreature;
      
      private var slotIcons:Object = {
         "exp":3876,
         "money":3877,
         "goods":3878,
         "step":3879
      };
      
      private var _1641501084idSlot5:ItemSlotCreature;
      
      private var _653073958idSlot34:ItemSlotCreature;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _653073956idSlot36:ItemSlotCreature;
      
      private var _653073961idSlot31:ItemSlotCreature;
      
      private var roundHandler:int = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":506,
               "height":416,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SmallGameSpeedPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "width":446,
                        "height":20,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"idTodayTimes",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":50,
                                 "y":0,
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"idWinTimes",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":170,
                                 "y":0,
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"idLostTimes",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":290,
                                 "y":0,
                                 "width":100
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":68,
                        "width":446,
                        "height":298,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot1",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot2",
                           "stylesFactory":function():void
                           {
                              this.left = "44";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot3",
                           "stylesFactory":function():void
                           {
                              this.left = "80";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot4",
                           "stylesFactory":function():void
                           {
                              this.left = "116";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot5",
                           "stylesFactory":function():void
                           {
                              this.left = "152";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot6",
                           "stylesFactory":function():void
                           {
                              this.left = "188";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot7",
                           "stylesFactory":function():void
                           {
                              this.left = "224";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot8",
                           "stylesFactory":function():void
                           {
                              this.left = "260";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot9",
                           "stylesFactory":function():void
                           {
                              this.left = "296";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot10",
                           "stylesFactory":function():void
                           {
                              this.left = "332";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot11",
                           "stylesFactory":function():void
                           {
                              this.left = "368";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot12",
                           "stylesFactory":function():void
                           {
                              this.left = "404";
                              this.top = "5";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot13",
                           "stylesFactory":function():void
                           {
                              this.left = "404";
                              this.top = "41";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot29",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot28",
                           "stylesFactory":function():void
                           {
                              this.left = "44";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot27",
                           "stylesFactory":function():void
                           {
                              this.left = "80";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot21",
                           "stylesFactory":function():void
                           {
                              this.left = "152";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot20",
                           "stylesFactory":function():void
                           {
                              this.left = "188";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot19",
                           "stylesFactory":function():void
                           {
                              this.left = "224";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot18",
                           "stylesFactory":function():void
                           {
                              this.left = "260";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot17",
                           "stylesFactory":function():void
                           {
                              this.left = "296";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot16",
                           "stylesFactory":function():void
                           {
                              this.left = "332";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot15",
                           "stylesFactory":function():void
                           {
                              this.left = "368";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot14",
                           "stylesFactory":function():void
                           {
                              this.left = "404";
                              this.top = "77";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot30",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "113";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot26",
                           "stylesFactory":function():void
                           {
                              this.left = "80";
                              this.top = "113";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot22",
                           "stylesFactory":function():void
                           {
                              this.left = "152";
                              this.top = "113";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot31",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "149";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot25",
                           "stylesFactory":function():void
                           {
                              this.left = "80";
                              this.top = "149";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot24",
                           "stylesFactory":function():void
                           {
                              this.left = "116";
                              this.top = "149";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot23",
                           "stylesFactory":function():void
                           {
                              this.left = "152";
                              this.top = "149";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot32",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "185";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot45",
                           "stylesFactory":function():void
                           {
                              this.left = "332";
                              this.top = "185";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot46",
                           "stylesFactory":function():void
                           {
                              this.left = "368";
                              this.top = "185";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot47",
                           "stylesFactory":function():void
                           {
                              this.left = "404";
                              this.top = "185";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot33",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot34",
                           "stylesFactory":function():void
                           {
                              this.left = "44";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot35",
                           "stylesFactory":function():void
                           {
                              this.left = "80";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot36",
                           "stylesFactory":function():void
                           {
                              this.left = "116";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot37",
                           "stylesFactory":function():void
                           {
                              this.left = "152";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot38",
                           "stylesFactory":function():void
                           {
                              this.left = "188";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot44",
                           "stylesFactory":function():void
                           {
                              this.left = "332";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot48",
                           "stylesFactory":function():void
                           {
                              this.left = "404";
                              this.top = "221";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot39",
                           "stylesFactory":function():void
                           {
                              this.left = "188";
                              this.top = "257";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot40",
                           "stylesFactory":function():void
                           {
                              this.left = "224";
                              this.top = "257";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot41",
                           "stylesFactory":function():void
                           {
                              this.left = "260";
                              this.top = "257";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot42",
                           "stylesFactory":function():void
                           {
                              this.left = "296";
                              this.top = "257";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot43",
                           "stylesFactory":function():void
                           {
                              this.left = "332";
                              this.top = "257";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlotCreature,
                           "id":"idSlot49",
                           "stylesFactory":function():void
                           {
                              this.left = "404";
                              this.top = "257";
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"sourceGroup":true};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"idPoint",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":120,
                                 "height":214,
                                 "x":275,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"idPlayBtn",
                           "events":{"click":"__idPlayBtn_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "53";
                              this.verticalCenter = "82";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":80
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":374,
                        "width":446,
                        "height":25,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"idStartGameBtn",
                           "events":{"click":"__idStartGameBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":80,
                                 "y":0,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"idGetAwardBtn",
                           "events":{"click":"__idGetAwardBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":180,
                                 "y":0,
                                 "enabled":false,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SmallGameSpeedPanel_Button4",
                           "events":{"click":"___SmallGameSpeedPanel_Button4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":280,
                                 "y":0,
                                 "styleName":"BtnStdRed",
                                 "width":80
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var pointsIcons:Array = ["2060090400033","2060090400027","2060090400028","2060090400029","2060090400030","2060090400031","2060090400032"];
      
      private var _653073987idSlot26:ItemSlotCreature;
      
      public function SmallGameSpeedPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 506;
         this.height = 416;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___SmallGameSpeedPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SmallGameSpeedPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot38() : ItemSlotCreature
      {
         return this._653073954idSlot38;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot39() : ItemSlotCreature
      {
         return this._653073953idSlot39;
      }
      
      public function set idSlot38(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073954idSlot38;
         if(_loc2_ !== param1)
         {
            this._653073954idSlot38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot38",_loc2_,param1));
         }
      }
      
      public function set idSlot39(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073953idSlot39;
         if(_loc2_ !== param1)
         {
            this._653073953idSlot39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot39",_loc2_,param1));
         }
      }
      
      public function set idSlot47(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073924idSlot47;
         if(_loc2_ !== param1)
         {
            this._653073924idSlot47 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot47",_loc2_,param1));
         }
      }
      
      public function set idSlot43(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073928idSlot43;
         if(_loc2_ !== param1)
         {
            this._653073928idSlot43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot43",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot45() : ItemSlotCreature
      {
         return this._653073926idSlot45;
      }
      
      private function clearPrevStepStyle() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = _actionType == "pc" ? _myStep : _pcStep;
         var _loc3_:int = _actionType == "pc" ? 1 : 5;
         if(_prevStep == _loc2_)
         {
            _loc1_ = _loc3_;
         }
         this["idSlot" + _prevStep].setStyleName(_loc1_);
      }
      
      public function onSaveGame(param1:Object) : void
      {
         var _loc2_:String = param1.flag ? Language.SMALL_GAME_P[13] : Language.SMALL_GAME_P[14];
         winOrLost = param1.flag ? true : false;
         if(param1.flag)
         {
            ++_winTimes;
         }
         else
         {
            ++_lostTimes;
         }
         idGetAwardBtn.enabled = true;
         _core.sysMsg(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot42() : ItemSlotCreature
      {
         return this._653073929idSlot42;
      }
      
      public function set idSlot42(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073929idSlot42;
         if(_loc2_ !== param1)
         {
            this._653073929idSlot42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot42",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot7() : ItemSlotCreature
      {
         return this._1641501086idSlot7;
      }
      
      private function setStepStyle() : void
      {
         var _loc1_:int = _actionType == "pc" ? 5 : 1;
         var _loc2_:Number = _actionType == "pc" ? _pcStep : _myStep;
         this["idSlot" + _loc2_].setStyleName(_loc1_);
         clearPrevStepStyle();
      }
      
      public function set idSlot33(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073959idSlot33;
         if(_loc2_ !== param1)
         {
            this._653073959idSlot33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot33",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot40() : ItemSlotCreature
      {
         return this._653073931idSlot40;
      }
      
      public function set idSlot46(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073925idSlot46;
         if(_loc2_ !== param1)
         {
            this._653073925idSlot46 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot46",_loc2_,param1));
         }
      }
      
      public function set idWinTimes(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._581600507idWinTimes;
         if(_loc2_ !== param1)
         {
            this._581600507idWinTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idWinTimes",_loc2_,param1));
         }
      }
      
      public function set idSlot48(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073923idSlot48;
         if(_loc2_ !== param1)
         {
            this._653073923idSlot48 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot48",_loc2_,param1));
         }
      }
      
      public function set idSlot44(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073927idSlot44;
         if(_loc2_ !== param1)
         {
            this._653073927idSlot44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot44",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot49() : ItemSlotCreature
      {
         return this._653073922idSlot49;
      }
      
      [Bindable(event="propertyChange")]
      public function get idGetAwardBtn() : Button
      {
         return this._1404615706idGetAwardBtn;
      }
      
      private function _play() : void
      {
         var _loc1_:Number = forwardStep();
         var _loc2_:Number = _actionType == "my" ? _myStep : _pcStep;
         var _loc3_:Number = _loc2_ + _loc1_;
         _prevStep = _loc2_;
         _loc3_ = _loc3_ > SMALL_GAME_SLOT_TOTAL_NUM ? SMALL_GAME_SLOT_TOTAL_NUM : _loc3_;
         _maxStep = _loc3_;
         if(_actionType == "my")
         {
            _myStep = _maxStep;
         }
         else
         {
            _pcStep = _maxStep;
         }
         setPoint();
         pointHandler = setTimeout(changeStep,SMALL_GAME_POINT_PLAY_TIME);
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot8() : ItemSlotCreature
      {
         return this._1641501087idSlot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot9() : ItemSlotCreature
      {
         return this._1641501088idSlot9;
      }
      
      public function set idStartGameBtn(param1:Button) : void
      {
         var _loc2_:Object = this._985338109idStartGameBtn;
         if(_loc2_ !== param1)
         {
            this._985338109idStartGameBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idStartGameBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot48() : ItemSlotCreature
      {
         return this._653073923idSlot48;
      }
      
      public function set idGetAwardBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1404615706idGetAwardBtn;
         if(_loc2_ !== param1)
         {
            this._1404615706idGetAwardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idGetAwardBtn",_loc2_,param1));
         }
      }
      
      public function set idSlot6(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501085idSlot6;
         if(_loc2_ !== param1)
         {
            this._1641501085idSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot6",_loc2_,param1));
         }
      }
      
      private function stepAction() : void
      {
         var _loc1_:Number = _actionType == "my" ? _myStep : _pcStep;
         _stepType = defineSlots[_loc1_];
         if(_actionType == "my")
         {
            _core.remote.call("getSmallGameStepAward",new Responder(onStepAction),"speed",_stepType,_myStep,_pcStep);
         }
         else if(_actionType == "pc" && _stepType == "step")
         {
            randomStep();
            stepHandler = setTimeout(stepToStep,500);
         }
         else if(_actionType == "pc")
         {
            afterStepAction();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot6() : ItemSlotCreature
      {
         return this._1641501085idSlot6;
      }
      
      private function randomStep() : Number
      {
         var _loc1_:int = -6;
         var _loc2_:int = 6;
         _backForwardStep = Math.round(ToolKit.genRangeRandom(_loc1_,_loc2_));
         if(!_backForwardStep)
         {
            return randomStep();
         }
         return _backForwardStep;
      }
      
      private function setPoint() : void
      {
         idPoint.source = ResManager.getResUrl(pointsIcons[_currentPoint]);
      }
      
      [Bindable(event="propertyChange")]
      public function get idTodayTimes() : BasicTxtButton
      {
         return this._896883712idTodayTimes;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot47() : ItemSlotCreature
      {
         return this._653073924idSlot47;
      }
      
      public function set idTodayTimes(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._896883712idTodayTimes;
         if(_loc2_ !== param1)
         {
            this._896883712idTodayTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTodayTimes",_loc2_,param1));
         }
      }
      
      public function set idPoint(param1:Image) : void
      {
         var _loc2_:Object = this._1638814005idPoint;
         if(_loc2_ !== param1)
         {
            this._1638814005idPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPoint",_loc2_,param1));
         }
      }
      
      public function set idSlot49(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073922idSlot49;
         if(_loc2_ !== param1)
         {
            this._653073922idSlot49 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot49",_loc2_,param1));
         }
      }
      
      private function onAddPlayTime(param1:Boolean) : void
      {
         if(!param1)
         {
            --_playTotalTimes;
         }
         resetPlayData();
         checkGameStartBtn();
      }
      
      private function initProp(param1:Boolean) : void
      {
         _pcStep = 1;
         _myStep = 1;
         _maxStep = 1;
         _prevStep = 1;
         idPoint.source = ResManager.getResUrl(pointsIcons[0]);
         _actionType == "my";
         _isThrowing = false;
         initSlotBorder();
         if(param1)
         {
            idStartGameBtn.enabled = false;
            if(_playTotalTimes > _playTimes)
            {
               idPlayBtn.enabled = true;
            }
         }
         else
         {
            idStartGameBtn.enabled = true;
            idPlayBtn.enabled = false;
            winOrLost = false;
            _isPlaying = false;
         }
         setStepStyle();
         idGetAwardBtn.enabled = false;
      }
      
      private function changeStep() : void
      {
         if(pointHandler)
         {
            clearTimeout(pointHandler);
            pointHandler = 0;
         }
         setStepStyle();
         stepAction();
      }
      
      public function initPanel() : void
      {
         if(!initialized)
         {
            _core.player.normalView.pause();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         callLater(_core.player.normalView.resume);
         initProp(false);
         initSlotDisplay();
         _core.remote.call("getSmallGameStatus",new Responder(onGetSmallGameStatus),"speed");
      }
      
      [Bindable(event="propertyChange")]
      public function get idPlayBtn() : Button
      {
         return this._1445731091idPlayBtn;
      }
      
      private function onGetSmallGameStatus(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(param1.state)
         {
            _playTimes = param1.playTimes;
            _playTotalTimes = param1.playTotalTimes;
            _winTimes = param1.winTimes;
            _lostTimes = param1.lostTimes;
            _loc2_ = Number(param1.awardFlag);
            _loc3_ = param1.extend;
            resetPlayData();
            checkGameStartBtn();
            _loc4_ = Boolean(_loc3_) && Boolean(_loc3_.myStep) ? Number(_loc3_.myStep) : 0;
            if(_loc2_ >= 0 || _loc4_ > 1)
            {
               idStartGameBtn.enabled = false;
               idPlayBtn.enabled = false;
               idGetAwardBtn.enabled = true;
               winOrLost = true;
               _isPlaying = true;
               if(_loc4_ > 1 && _loc2_ < 0)
               {
                  winOrLost = false;
                  idPlayBtn.enabled = true;
                  idGetAwardBtn.enabled = false;
                  _myStep = _loc4_;
                  _pcStep = _loc3_.pcStep;
                  _prevStep = _myStep;
                  _maxStep = _myStep > _pcStep ? _myStep : _pcStep;
                  this["idSlot" + _myStep].setStyleName(1);
                  this["idSlot" + _pcStep].setStyleName(5);
                  if(_myStep != 1 && _pcStep != 1)
                  {
                     this["idSlot1"].setStyleName(0);
                  }
               }
            }
            if(!idStartGameBtn.enabled && !idPlayBtn.enabled)
            {
               idGetAwardBtn.enabled = true;
            }
         }
      }
      
      private function initSlotBorder() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in defineSlots)
         {
            this["idSlot" + _loc1_].setStyleName(0);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idWinTimes() : BasicTxtButton
      {
         return this._581600507idWinTimes;
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get idStartGameBtn() : Button
      {
         return this._985338109idStartGameBtn;
      }
      
      private function afterStepAction() : void
      {
         if(_maxStep >= SMALL_GAME_SLOT_TOTAL_NUM)
         {
            decideWinner();
         }
         else
         {
            _actionType = _actionType == "my" ? "pc" : "my";
            if(_actionType == "pc")
            {
               roundHandler = setTimeout(pcPlay,SMALL_GAME_PLAY_INTERVAL);
            }
            else
            {
               _isThrowing = false;
               idPlayBtn.enabled = true;
            }
         }
      }
      
      public function __idStartGameBtn_click(param1:MouseEvent) : void
      {
         startGame();
      }
      
      public function set idSlot1(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501080idSlot1;
         if(_loc2_ !== param1)
         {
            this._1641501080idSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot1",_loc2_,param1));
         }
      }
      
      public function set idSlot11(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074023idSlot11;
         if(_loc2_ !== param1)
         {
            this._653074023idSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idPoint() : Image
      {
         return this._1638814005idPoint;
      }
      
      public function set idSlot13(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074021idSlot13;
         if(_loc2_ !== param1)
         {
            this._653074021idSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot13",_loc2_,param1));
         }
      }
      
      public function set idSlot10(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074024idSlot10;
         if(_loc2_ !== param1)
         {
            this._653074024idSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot10",_loc2_,param1));
         }
      }
      
      private function forwardStep() : Number
      {
         var _loc1_:int = 1;
         var _loc2_:int = 6;
         var _loc3_:int = Math.round(ToolKit.genRangeRandom(_loc1_,_loc2_));
         if(_loc3_ < _loc1_ || _loc3_ > _loc2_ || _currentPoint == _loc3_)
         {
            return forwardStep();
         }
         _currentPoint = _loc3_;
         return _currentPoint;
      }
      
      private function play() : void
      {
         if(_isThrowing || !_isPlaying)
         {
            return;
         }
         if(_maxStep >= SMALL_GAME_SLOT_TOTAL_NUM)
         {
            _core.sysMsg(Language.SMALL_GAME_P[45]);
         }
         else if(_actionType == "my")
         {
            _isThrowing = true;
            idPlayBtn.enabled = false;
            _play();
         }
      }
      
      public function set idSlot16(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074018idSlot16;
         if(_loc2_ !== param1)
         {
            this._653074018idSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot16",_loc2_,param1));
         }
      }
      
      public function set idSlot4(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501083idSlot4;
         if(_loc2_ !== param1)
         {
            this._1641501083idSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot4",_loc2_,param1));
         }
      }
      
      public function set idSlot17(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074017idSlot17;
         if(_loc2_ !== param1)
         {
            this._653074017idSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot17",_loc2_,param1));
         }
      }
      
      public function set idSlot14(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074020idSlot14;
         if(_loc2_ !== param1)
         {
            this._653074020idSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot14",_loc2_,param1));
         }
      }
      
      public function set idSlot18(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074016idSlot18;
         if(_loc2_ !== param1)
         {
            this._653074016idSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot18",_loc2_,param1));
         }
      }
      
      public function set idSlot19(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074015idSlot19;
         if(_loc2_ !== param1)
         {
            this._653074015idSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot19",_loc2_,param1));
         }
      }
      
      public function __idGetAwardBtn_click(param1:MouseEvent) : void
      {
         getAwardAndReset();
      }
      
      public function set idSlot5(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501084idSlot5;
         if(_loc2_ !== param1)
         {
            this._1641501084idSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot5",_loc2_,param1));
         }
      }
      
      private function _SmallGameSpeedPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SMALL_GAME_P[43];
         _loc1_ = Language.SMALL_GAME_P[4];
         _loc1_ = Language.SMALL_GAME_P[5];
         _loc1_ = Language.SMALL_GAME_P[6];
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Slot.SLOT_JEWEL;
         _loc1_ = Language.SMALL_GAME_P[44];
         _loc1_ = Language.SMALL_GAME_P[8];
         _loc1_ = Language.SMALL_GAME_P[10];
         _loc1_ = Language.SMALL_GAME_P[7];
      }
      
      public function set idSlot7(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501086idSlot7;
         if(_loc2_ !== param1)
         {
            this._1641501086idSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot7",_loc2_,param1));
         }
      }
      
      public function set idSlot12(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074022idSlot12;
         if(_loc2_ !== param1)
         {
            this._653074022idSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot12",_loc2_,param1));
         }
      }
      
      public function set idSlot8(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501087idSlot8;
         if(_loc2_ !== param1)
         {
            this._1641501087idSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot8",_loc2_,param1));
         }
      }
      
      public function set idLostTimes(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._463521703idLostTimes;
         if(_loc2_ !== param1)
         {
            this._463521703idLostTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idLostTimes",_loc2_,param1));
         }
      }
      
      public function set idSlot9(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501088idSlot9;
         if(_loc2_ !== param1)
         {
            this._1641501088idSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot9",_loc2_,param1));
         }
      }
      
      private function setSlotData(param1:Number, param2:Number) : void
      {
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][param2];
         this["idSlot" + param1].type = GamePredef.TBL_ITEM_TEMPLATE;
         this["idSlot" + param1].giid = _loc3_.id;
         this["idSlot" + param1].slotData = _loc3_;
         this["idSlot" + param1].stackNum = 1;
      }
      
      public function set idSlot3(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501082idSlot3;
         if(_loc2_ !== param1)
         {
            this._1641501082idSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot3",_loc2_,param1));
         }
      }
      
      public function set idSlot2(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1641501081idSlot2;
         if(_loc2_ !== param1)
         {
            this._1641501081idSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot2",_loc2_,param1));
         }
      }
      
      private function onStepAction(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         if(_actionType == "my")
         {
            _loc2_ = "";
            _loc3_ = 0;
            switch(_stepType)
            {
               case "exp":
                  _loc3_ = int(param1.val);
                  _loc2_ = Language.SMALL_GAME_P[46].replace("{num}",_loc3_);
                  break;
               case "money":
                  _loc3_ = int(param1.val);
                  _loc2_ = Language.SMALL_GAME_P[47].replace("{num}",_loc3_);
                  break;
               case "goods":
                  _loc4_ = Number(param1.type);
                  _loc5_ = Number(param1.item);
                  _loc6_ = _core.data.gameData[_loc4_][_loc5_];
                  _loc2_ = Language.SMALL_GAME_P[48].replace("{name}",_loc6_.name);
                  break;
               case "step":
                  randomStep();
                  stepHandler = setTimeout(stepToStep,500);
                  _loc2_ = _backForwardStep > 0 ? Language.SMALL_GAME_P[49] : Language.SMALL_GAME_P[50];
                  _loc2_ = _loc2_.replace("{num}",Math.abs(_backForwardStep));
            }
            if(_loc2_)
            {
               _core.sysMsg(_loc2_);
            }
         }
         if(_stepType != "step")
         {
            afterStepAction();
         }
      }
      
      public function ___SmallGameSpeedPanel_Button4_click(param1:MouseEvent) : void
      {
         addPlayTime();
      }
      
      private function resetPlayData() : void
      {
         idTodayTimes.text = Language.SMALL_GAME_P[4] + _playTimes + "/" + _playTotalTimes;
         idWinTimes.text = Language.SMALL_GAME_P[51] + _winTimes;
         idLostTimes.text = Language.SMALL_GAME_P[52] + _lostTimes;
      }
      
      public function set idSlot21(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073992idSlot21;
         if(_loc2_ !== param1)
         {
            this._653073992idSlot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot21",_loc2_,param1));
         }
      }
      
      public function set idSlot22(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073991idSlot22;
         if(_loc2_ !== param1)
         {
            this._653073991idSlot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot22",_loc2_,param1));
         }
      }
      
      private function startGame() : void
      {
         initProp(true);
         if(_playTimes < _playTotalTimes && !_isPlaying)
         {
            trace("startGame");
            _actionType = "my";
            _isPlaying = true;
         }
         else
         {
            _core.sysMsg(Language.SMALL_GAME_P[24]);
         }
      }
      
      public function set idSlot20(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073993idSlot20;
         if(_loc2_ !== param1)
         {
            this._653073993idSlot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot20",_loc2_,param1));
         }
      }
      
      public function set idSlot26(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073987idSlot26;
         if(_loc2_ !== param1)
         {
            this._653073987idSlot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot26",_loc2_,param1));
         }
      }
      
      public function ___SmallGameSpeedPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set idSlot24(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073989idSlot24;
         if(_loc2_ !== param1)
         {
            this._653073989idSlot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot24",_loc2_,param1));
         }
      }
      
      private function onGetAwardAndReset(param1:Boolean) : void
      {
         _isPlaying = false;
         idGetAwardBtn.enabled = false;
         idStartGameBtn.enabled = true;
         if(!param1)
         {
            _playTimes = _winTimes + _lostTimes;
         }
         resetPlayData();
      }
      
      private function getAwardAndReset() : void
      {
         _core.remote.call("getSmallGameAward",new Responder(onGetAwardAndReset),"speed");
      }
      
      public function set idSlot23(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073990idSlot23;
         if(_loc2_ !== param1)
         {
            this._653073990idSlot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot23",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SmallGameSpeedPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SmallGameSpeedPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SmallGameSpeedPanelWatcherSetupUtil");
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
      public function get idSlot11() : ItemSlotCreature
      {
         return this._653074023idSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot13() : ItemSlotCreature
      {
         return this._653074021idSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot14() : ItemSlotCreature
      {
         return this._653074020idSlot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot16() : ItemSlotCreature
      {
         return this._653074018idSlot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot12() : ItemSlotCreature
      {
         return this._653074022idSlot12;
      }
      
      public function set idSlot29(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073984idSlot29;
         if(_loc2_ !== param1)
         {
            this._653073984idSlot29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot29",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot5() : ItemSlotCreature
      {
         return this._1641501084idSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot17() : ItemSlotCreature
      {
         return this._653074017idSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get idLostTimes() : BasicTxtButton
      {
         return this._463521703idLostTimes;
      }
      
      public function set idSlot27(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073986idSlot27;
         if(_loc2_ !== param1)
         {
            this._653073986idSlot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot27",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot15() : ItemSlotCreature
      {
         return this._653074019idSlot15;
      }
      
      public function set idSlot15(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653074019idSlot15;
         if(_loc2_ !== param1)
         {
            this._653074019idSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot1() : ItemSlotCreature
      {
         return this._1641501080idSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot2() : ItemSlotCreature
      {
         return this._1641501081idSlot2;
      }
      
      public function set idSlot30(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073962idSlot30;
         if(_loc2_ !== param1)
         {
            this._653073962idSlot30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot30",_loc2_,param1));
         }
      }
      
      private function initSlotDisplay() : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc1_:String = "";
         for(_loc2_ in defineSlots)
         {
            _loc1_ = defineSlots[_loc2_];
            if(_loc1_)
            {
               _loc3_ = Number(slotIcons[_loc1_]);
               if(_loc3_)
               {
                  setSlotData(Number(_loc2_),_loc3_);
               }
            }
         }
         setSlotData(1,SMALL_GAME_START_ID);
         setSlotData(SMALL_GAME_SLOT_TOTAL_NUM,SMALL_GAME_END_ID);
      }
      
      public function set idSlot31(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073961idSlot31;
         if(_loc2_ !== param1)
         {
            this._653073961idSlot31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot31",_loc2_,param1));
         }
      }
      
      public function set idSlot35(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073957idSlot35;
         if(_loc2_ !== param1)
         {
            this._653073957idSlot35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot35",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot10() : ItemSlotCreature
      {
         return this._653074024idSlot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot24() : ItemSlotCreature
      {
         return this._653073989idSlot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot26() : ItemSlotCreature
      {
         return this._653073987idSlot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot23() : ItemSlotCreature
      {
         return this._653073990idSlot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot18() : ItemSlotCreature
      {
         return this._653074016idSlot18;
      }
      
      private function decideWinner() : void
      {
         ++_playTimes;
         var _loc1_:Boolean = _actionType == "my" ? true : false;
         _core.remote.call("saveSmallGame",new Responder(onSaveGame),"speed",_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot22() : ItemSlotCreature
      {
         return this._653073991idSlot22;
      }
      
      public function set idSlot37(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073955idSlot37;
         if(_loc2_ !== param1)
         {
            this._653073955idSlot37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot37",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot25() : ItemSlotCreature
      {
         return this._653073988idSlot25;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot27() : ItemSlotCreature
      {
         return this._653073986idSlot27;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot20() : ItemSlotCreature
      {
         return this._653073993idSlot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot21() : ItemSlotCreature
      {
         return this._653073992idSlot21;
      }
      
      public function set idSlot28(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073985idSlot28;
         if(_loc2_ !== param1)
         {
            this._653073985idSlot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot28",_loc2_,param1));
         }
      }
      
      private function stepToStep() : void
      {
         if(stepHandler)
         {
            clearTimeout(stepHandler);
            stepHandler = 0;
         }
         var _loc1_:Number = _backForwardStep + (_actionType == "my" ? _myStep : _pcStep);
         if(_loc1_ > SMALL_GAME_SLOT_TOTAL_NUM)
         {
            _loc1_ = SMALL_GAME_SLOT_TOTAL_NUM;
         }
         if(_loc1_ < 1)
         {
            _loc1_ = 1;
         }
         _prevStep = _loc1_ - _backForwardStep;
         _maxStep = _maxStep >= _loc1_ ? _maxStep : _loc1_;
         if(_actionType == "my")
         {
            _myStep = _loc1_;
         }
         else
         {
            _pcStep = _loc1_;
         }
         setStepStyle();
         stepAction();
      }
      
      private function checkGameStartBtn() : void
      {
         idStartGameBtn.enabled = _playTimes < _playTotalTimes && !_isPlaying ? true : false;
      }
      
      public function __idPlayBtn_click(param1:MouseEvent) : void
      {
         play();
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot29() : ItemSlotCreature
      {
         return this._653073984idSlot29;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot33() : ItemSlotCreature
      {
         return this._653073959idSlot33;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot30() : ItemSlotCreature
      {
         return this._653073962idSlot30;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot31() : ItemSlotCreature
      {
         return this._653073961idSlot31;
      }
      
      private function pcPlay() : void
      {
         trace("pcPlay");
         if(roundHandler)
         {
            clearTimeout(roundHandler);
            roundHandler = 0;
         }
         _play();
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot3() : ItemSlotCreature
      {
         return this._1641501082idSlot3;
      }
      
      public function set idPlayBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1445731091idPlayBtn;
         if(_loc2_ !== param1)
         {
            this._1445731091idPlayBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPlayBtn",_loc2_,param1));
         }
      }
      
      private function addPlayTime() : void
      {
         var func:Function;
         var showString:String;
         if(_playTotalTimes >= SMALL_GAME_MAX_TIMES)
         {
            Alert.show(Language.SMALL_GAME_P[15]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               ++_playTotalTimes;
               _core.remote.call("addSmallGameTime",new Responder(onAddPlayTime),"speed");
            }
         };
         showString = Language.SMALL_GAME_P[16].replace("{gold}",SMALL_GAME_ADD_TIME_COST);
         Alert.show(showString,"",Alert.YES | Alert.NO,this,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot36() : ItemSlotCreature
      {
         return this._653073956idSlot36;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot37() : ItemSlotCreature
      {
         return this._653073955idSlot37;
      }
      
      public function set idSlot36(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073956idSlot36;
         if(_loc2_ !== param1)
         {
            this._653073956idSlot36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot36",_loc2_,param1));
         }
      }
      
      private function _SmallGameSpeedPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGameSpeedPanel_BasicTitleCanvas1.text = param1;
         },"_SmallGameSpeedPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTodayTimes.text = param1;
         },"idTodayTimes.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idWinTimes.text = param1;
         },"idWinTimes.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idLostTimes.text = param1;
         },"idLostTimes.text");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot1.slotType = param1;
         },"idSlot1.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot2.slotType = param1;
         },"idSlot2.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot3.slotType = param1;
         },"idSlot3.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot4.slotType = param1;
         },"idSlot4.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot5.slotType = param1;
         },"idSlot5.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot6.slotType = param1;
         },"idSlot6.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot7.slotType = param1;
         },"idSlot7.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot8.slotType = param1;
         },"idSlot8.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot9.slotType = param1;
         },"idSlot9.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot10.slotType = param1;
         },"idSlot10.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot11.slotType = param1;
         },"idSlot11.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot12.slotType = param1;
         },"idSlot12.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot13.slotType = param1;
         },"idSlot13.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot29.slotType = param1;
         },"idSlot29.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot28.slotType = param1;
         },"idSlot28.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot27.slotType = param1;
         },"idSlot27.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot21.slotType = param1;
         },"idSlot21.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot20.slotType = param1;
         },"idSlot20.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot19.slotType = param1;
         },"idSlot19.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot18.slotType = param1;
         },"idSlot18.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot17.slotType = param1;
         },"idSlot17.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot16.slotType = param1;
         },"idSlot16.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot15.slotType = param1;
         },"idSlot15.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot14.slotType = param1;
         },"idSlot14.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot30.slotType = param1;
         },"idSlot30.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot26.slotType = param1;
         },"idSlot26.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot22.slotType = param1;
         },"idSlot22.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot31.slotType = param1;
         },"idSlot31.slotType");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot25.slotType = param1;
         },"idSlot25.slotType");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot24.slotType = param1;
         },"idSlot24.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot23.slotType = param1;
         },"idSlot23.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot32.slotType = param1;
         },"idSlot32.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot45.slotType = param1;
         },"idSlot45.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot46.slotType = param1;
         },"idSlot46.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot47.slotType = param1;
         },"idSlot47.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot33.slotType = param1;
         },"idSlot33.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot34.slotType = param1;
         },"idSlot34.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot35.slotType = param1;
         },"idSlot35.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot36.slotType = param1;
         },"idSlot36.slotType");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot37.slotType = param1;
         },"idSlot37.slotType");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot38.slotType = param1;
         },"idSlot38.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot44.slotType = param1;
         },"idSlot44.slotType");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot48.slotType = param1;
         },"idSlot48.slotType");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot39.slotType = param1;
         },"idSlot39.slotType");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot40.slotType = param1;
         },"idSlot40.slotType");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot41.slotType = param1;
         },"idSlot41.slotType");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot42.slotType = param1;
         },"idSlot42.slotType");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot43.slotType = param1;
         },"idSlot43.slotType");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_JEWEL;
         },function(param1:int):void
         {
            idSlot49.slotType = param1;
         },"idSlot49.slotType");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idPlayBtn.label = param1;
         },"idPlayBtn.label");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idStartGameBtn.label = param1;
         },"idStartGameBtn.label");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idGetAwardBtn.label = param1;
         },"idGetAwardBtn.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGameSpeedPanel_Button4.label = param1;
         },"_SmallGameSpeedPanel_Button4.label");
         result[56] = binding;
         return result;
      }
      
      public function set idSlot32(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073960idSlot32;
         if(_loc2_ !== param1)
         {
            this._653073960idSlot32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot32",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot35() : ItemSlotCreature
      {
         return this._653073957idSlot35;
      }
      
      public function set idSlot25(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073988idSlot25;
         if(_loc2_ !== param1)
         {
            this._653073988idSlot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot25",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot4() : ItemSlotCreature
      {
         return this._1641501083idSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot32() : ItemSlotCreature
      {
         return this._653073960idSlot32;
      }
      
      public function set idSlot40(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073931idSlot40;
         if(_loc2_ !== param1)
         {
            this._653073931idSlot40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot40",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot34() : ItemSlotCreature
      {
         return this._653073958idSlot34;
      }
      
      public function set idSlot41(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073930idSlot41;
         if(_loc2_ !== param1)
         {
            this._653073930idSlot41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot41",_loc2_,param1));
         }
      }
      
      public function set idSlot45(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073926idSlot45;
         if(_loc2_ !== param1)
         {
            this._653073926idSlot45 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot45",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot19() : ItemSlotCreature
      {
         return this._653074015idSlot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot28() : ItemSlotCreature
      {
         return this._653073985idSlot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot44() : ItemSlotCreature
      {
         return this._653073927idSlot44;
      }
      
      public function set idSlot34(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._653073958idSlot34;
         if(_loc2_ !== param1)
         {
            this._653073958idSlot34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSlot34",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot46() : ItemSlotCreature
      {
         return this._653073925idSlot46;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot41() : ItemSlotCreature
      {
         return this._653073930idSlot41;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSlot43() : ItemSlotCreature
      {
         return this._653073928idSlot43;
      }
   }
}

