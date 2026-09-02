package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.HBox;
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BankPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _899454695slot50:ItemSlot;
      
      private var _899454782slot26:ItemSlot;
      
      private var _899454754slot33:ItemSlot;
      
      private var _899454726slot40:ItemSlot;
      
      private var _109532667slot9:ItemSlot;
      
      private var _899454813slot16:ItemSlot;
      
      private var _133022078firstTile:Tile;
      
      private var _2113295533slot111:ItemSlot;
      
      private var _110471982tnBag:ViewStack;
      
      private var _2113295562slot103:ItemSlot;
      
      private var _899454689slot56:ItemSlot;
      
      private var _899454748slot39:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2113295434slot147:ItemSlot;
      
      private var _899454600slot82:ItemSlot;
      
      public var _BankPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2113295463slot139:ItemSlot;
      
      private var _899454787slot21:ItemSlot;
      
      private var _899454818slot11:ItemSlot;
      
      private var _109532661slot3:ItemSlot;
      
      private var _899454563slot98:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _899454661slot63:ItemSlot;
      
      private var _899454633slot70:ItemSlot;
      
      private var _899454720slot46:ItemSlot;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _2113295439slot142:ItemSlot;
      
      private var _2113295468slot134:ItemSlot;
      
      private var _2113295500slot123:ItemSlot;
      
      private var _2113295497slot126:ItemSlot;
      
      private var _899454568slot93:ItemSlot;
      
      private var _2113295470slot132:ItemSlot;
      
      private var _2113295556slot109:ItemSlot;
      
      private var _2113295527slot117:ItemSlot;
      
      private var _899454655slot69:ItemSlot;
      
      private var _899454627slot76:ItemSlot;
      
      private var _899454596slot86:ItemSlot;
      
      private var _2113295441slot140:ItemSlot;
      
      private var _899454694slot51:ItemSlot;
      
      private var _899454781slot27:ItemSlot;
      
      private var _899454753slot34:ItemSlot;
      
      private var _899454725slot41:ItemSlot;
      
      private var _899454812slot17:ItemSlot;
      
      private var _899454688slot57:ItemSlot;
      
      private var _109532662slot4:ItemSlot;
      
      private var _899454719slot47:ItemSlot;
      
      private var _2113295534slot110:ItemSlot;
      
      private var _2113295563slot102:ItemSlot;
      
      private var _899454786slot22:ItemSlot;
      
      private var _899454817slot12:ItemSlot;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _2113295435slot146:ItemSlot;
      
      private var _2113295464slot138:ItemSlot;
      
      private var _899454562slot99:ItemSlot;
      
      private var _899454660slot64:ItemSlot;
      
      private var _899454632slot71:ItemSlot;
      
      private var _899454595slot87:ItemSlot;
      
      private var _899454567slot94:ItemSlot;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _3649t5:Tile;
      
      private var _2113295469slot133:ItemSlot;
      
      private var _2113295528slot116:ItemSlot;
      
      private var _899454626slot77:ItemSlot;
      
      private var _2113295498slot125:ItemSlot;
      
      private var _2113295530slot114:ItemSlot;
      
      private var _423866690secondTile:Tile;
      
      private var _2113295471slot131:ItemSlot;
      
      private var _2113295557slot108:ItemSlot;
      
      private var _899454724slot42:ItemSlot;
      
      private var _109532663slot5:ItemSlot;
      
      private var _899454780slot28:ItemSlot;
      
      private var _899454752slot35:ItemSlot;
      
      private var _899454693slot52:ItemSlot;
      
      private var _899454811slot18:ItemSlot;
      
      private var _2113295501slot122:ItemSlot;
      
      private var _899454687slot58:ItemSlot;
      
      private var _899454659slot65:ItemSlot;
      
      private var _899454718slot48:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3648t4:Tile;
      
      private var _899454785slot23:ItemSlot;
      
      private var _899454757slot30:ItemSlot;
      
      private var _899454816slot13:ItemSlot;
      
      private var _2113295564slot101:ItemSlot;
      
      private var _899454779slot29:ItemSlot;
      
      private var _2113295436slot145:ItemSlot;
      
      private var _2113295465slot137:ItemSlot;
      
      private var _899454631slot72:ItemSlot;
      
      private var _109532659slot1:ItemSlot;
      
      private var _2113295494slot129:ItemSlot;
      
      private var _899454566slot95:ItemSlot;
      
      private var _585350987thirdTile:Tile;
      
      private var _899454594slot88:ItemSlot;
      
      private var _109532664slot6:ItemSlot;
      
      private var _899454625slot78:ItemSlot;
      
      private var _899454692slot53:ItemSlot;
      
      private var _899454664slot60:ItemSlot;
      
      private var _899454723slot43:ItemSlot;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _899454751slot36:ItemSlot;
      
      private var _899454810slot19:ItemSlot;
      
      private var _2113295529slot115:ItemSlot;
      
      private var _2113295472slot130:ItemSlot;
      
      private var _2113295531slot113:ItemSlot;
      
      private var _899454599slot83:ItemSlot;
      
      private var _2113295499slot124:ItemSlot;
      
      private var _2113295558slot107:ItemSlot;
      
      private var _2113295502slot121:ItemSlot;
      
      private var _899454686slot59:ItemSlot;
      
      private var _899454658slot66:ItemSlot;
      
      private var _2113295560slot105:ItemSlot;
      
      private var _899454717slot49:ItemSlot;
      
      private var _2113295432slot149:ItemSlot;
      
      private var _899454784slot24:ItemSlot;
      
      private var _899454756slot31:ItemSlot;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _899454815slot14:ItemSlot;
      
      private var _899454571slot90:ItemSlot;
      
      private var _2113295565slot100:ItemSlot;
      
      private var _899454630slot73:ItemSlot;
      
      private var _899454602slot80:ItemSlot;
      
      private var _109532665slot7:ItemSlot;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      private var _2113295437slot144:ItemSlot;
      
      private var _2113295466slot136:ItemSlot;
      
      private var _2113295525slot119:ItemSlot;
      
      private var _899454593slot89:ItemSlot;
      
      private var _899454565slot96:ItemSlot;
      
      private var _2113295495slot128:ItemSlot;
      
      private var _2113295410slot150:ItemSlot;
      
      private var _899454624slot79:ItemSlot;
      
      public var _BankPanel_Canvas1:Canvas;
      
      private var _358524912buttonSort:BasicGlowButton;
      
      private var _899454691slot54:ItemSlot;
      
      private var _899454663slot61:ItemSlot;
      
      private var _899454722slot44:ItemSlot;
      
      private var _899454750slot37:ItemSlot;
      
      private var _1180008724secondCanvas:Canvas;
      
      private var _899454598slot84:ItemSlot;
      
      private var _899454657slot67:ItemSlot;
      
      private var _899454629slot74:ItemSlot;
      
      private var _2113295503slot120:ItemSlot;
      
      private var _2113295532slot112:ItemSlot;
      
      private var _2113295559slot106:ItemSlot;
      
      private var _899454783slot25:ItemSlot;
      
      private var _899454755slot32:ItemSlot;
      
      private var _2113295561slot104:ItemSlot;
      
      private var _899454814slot15:ItemSlot;
      
      private var _bankSortTimer:*;
      
      private var _2113295433slot148:ItemSlot;
      
      private var _375587425thirdCanvas:Canvas;
      
      private var _109532666slot8:ItemSlot;
      
      private var _899454749slot38:ItemSlot;
      
      private var _899454570slot91:ItemSlot;
      
      private var _899454601slot81:ItemSlot;
      
      private var _899454788slot20:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _899454819slot10:ItemSlot;
      
      private var _162384312fouthCanvas:Canvas;
      
      private var _899454564slot97:ItemSlot;
      
      private var _109532660slot2:ItemSlot;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _2113295438slot143:ItemSlot;
      
      private var _1611488785fifthCanvas:Canvas;
      
      private var _2113295467slot135:ItemSlot;
      
      private var _2113295526slot118:ItemSlot;
      
      private var _899454690slot55:ItemSlot;
      
      private var _899454662slot62:ItemSlot;
      
      private var _2113295496slot127:ItemSlot;
      
      private var _899454721slot45:ItemSlot;
      
      private var _2113295440slot141:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _899454597slot85:ItemSlot;
      
      private var _899454569slot92:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":270,
               "height":280,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_BankPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "60";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tnBag",
                           "events":{"creationComplete":"__tnBag_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.top = "3";
                              this.bottom = "3";
                              this.left = "4.5";
                              this.right = "4.5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_BankPanel_Canvas1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"firstTile",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 4;
                                                this.horizontalGap = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "height":194,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileSlot",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":301};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":302};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":303};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":304};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":305};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot6",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":306};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot7",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":307};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot8",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":308};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot9",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":309};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot10",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":310};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot11",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":311};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot12",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":312};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot13",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":313};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot14",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":314};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot15",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":315};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot16",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":316};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot17",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":317};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot18",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":318};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot19",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":319};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot20",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":320};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot21",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":321};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot22",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":322};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot23",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":323};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot24",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":324};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot25",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":325};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot26",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":326};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot27",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":327};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot28",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":328};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot29",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":329};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot30",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":330};
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"secondCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "enabled":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"secondTile",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 4;
                                                this.horizontalGap = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileSlot",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot31",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":331};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot32",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":332};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot33",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":333};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot34",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":334};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot35",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":335};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot36",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":336};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot37",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":337};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot38",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":338};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot39",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":339};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot40",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":340};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot41",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":341};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot42",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":342};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot43",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":343};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot44",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":344};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot45",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":345};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot46",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":346};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot47",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":347};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot48",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":348};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot49",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":349};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot50",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":350};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot51",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":351};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot52",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":352};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot53",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":353};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot54",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":354};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot55",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":355};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot56",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":356};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot57",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":357};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot58",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":358};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot59",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":359};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot60",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":360};
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"thirdCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "enabled":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"thirdTile",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 4;
                                                this.horizontalGap = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileSlot",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot61",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":361};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot62",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":362};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot63",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":363};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot64",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":364};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot65",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":365};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot66",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":366};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot67",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":367};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot68",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":368};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot69",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":369};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot70",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":370};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot71",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":371};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot72",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":372};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot73",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":373};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot74",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":374};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot75",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":375};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot76",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":376};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot77",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":377};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot78",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":378};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot79",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":379};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot80",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":380};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot81",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":381};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot82",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":382};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot83",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":383};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot84",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":384};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot85",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":385};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot86",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":386};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot87",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":387};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot88",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":388};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot89",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":389};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot90",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":390};
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"fouthCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "enabled":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"t4",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 4;
                                                this.horizontalGap = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileSlot",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot91",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":391};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot92",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":392};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot93",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":393};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot94",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":394};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot95",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":395};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot96",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":396};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot97",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":397};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot98",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":398};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot99",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":399};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot100",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":400};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot101",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":401};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot102",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":402};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot103",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":403};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot104",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":404};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot105",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":405};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot106",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":406};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot107",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":407};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot108",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":408};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot109",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":409};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot110",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":410};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot111",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":411};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot112",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":412};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot113",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":413};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot114",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":414};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot115",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":415};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot116",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":416};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot117",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":417};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot118",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":418};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot119",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":419};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot120",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":420};
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"fifthCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "enabled":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"t5",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 4;
                                                this.horizontalGap = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileSlot",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot121",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":421};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot122",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":422};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot123",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":423};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot124",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":424};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot125",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":425};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot126",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":426};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot127",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":427};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot128",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":428};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot129",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":429};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot130",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":430};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot131",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":431};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot132",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":432};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot133",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":433};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot134",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":434};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot135",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":435};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot136",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":436};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot137",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":437};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot138",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":438};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot139",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":439};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot140",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":440};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot141",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":441};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot142",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":442};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot143",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":443};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot144",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":444};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot145",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":445};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot146",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":446};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot147",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":447};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot148",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":448};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot149",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":449};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot150",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":450};
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
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{
                              "click":"__tabBtn0_click",
                              "dragDrop":"__tabBtn0_dragDrop",
                              "dragEnter":"__tabBtn0_dragEnter"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{
                              "click":"__tabBtn1_click",
                              "dragDrop":"__tabBtn1_dragDrop",
                              "dragEnter":"__tabBtn1_dragEnter"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "enabled":false,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{
                              "click":"__tabBtn2_click",
                              "dragDrop":"__tabBtn2_dragDrop",
                              "dragEnter":"__tabBtn2_dragEnter"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "enabled":false,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn3",
                           "events":{
                              "click":"__tabBtn3_click",
                              "dragDrop":"__tabBtn3_dragDrop",
                              "dragEnter":"__tabBtn3_dragEnter"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "enabled":false,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn4",
                           "events":{
                              "click":"__tabBtn4_click",
                              "dragDrop":"__tabBtn4_dragDrop",
                              "dragEnter":"__tabBtn4_dragEnter"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "enabled":false,
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"buttonSort",
                           "events":{"click":"__buttonSort_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":20
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _899454656slot68:ItemSlot;
      
      private var _899454628slot75:ItemSlot;
      
      public function BankPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 270;
         this.height = 280;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BankPanel._watcherSetupUtil = param1;
      }
      
      public function set slot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      public function set slot9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      private function addSlotListener() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= ViewManager.MAX_HOUSEWARE_SLOT_NUM)
         {
            this["slot" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
            _loc1_++;
         }
      }
      
      public function __tabBtn3_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,4);
      }
      
      public function __tabBtn1_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,2);
      }
      
      public function __buttonSort_click(param1:MouseEvent) : void
      {
         bankSort();
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      public function set t4(param1:Tile) : void
      {
         var _loc2_:Object = this._3648t4;
         if(_loc2_ !== param1)
         {
            this._3648t4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t4",_loc2_,param1));
         }
      }
      
      public function set t5(param1:Tile) : void
      {
         var _loc2_:Object = this._3649t5;
         if(_loc2_ !== param1)
         {
            this._3649t5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : ItemSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : ItemSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : ItemSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : ItemSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : ItemSlot
      {
         return this._899454810slot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : ItemSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : ItemSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : ItemSlot
      {
         return this._899454812slot17;
      }
      
      private function sortButtonReset(param1:TimerEvent = null) : void
      {
         buttonSort.enabled = true;
         if(_bankSortTimer)
         {
            _bankSortTimer.removeEventListener(TimerEvent.TIMER,sortButtonReset);
            _bankSortTimer = null;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : ItemSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot26() : ItemSlot
      {
         return this._899454782slot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot22() : ItemSlot
      {
         return this._899454786slot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : ItemSlot
      {
         return this._899454811slot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot25() : ItemSlot
      {
         return this._899454783slot25;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot27() : ItemSlot
      {
         return this._899454781slot27;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : ItemSlot
      {
         return this._899454788slot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot21() : ItemSlot
      {
         return this._899454787slot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot24() : ItemSlot
      {
         return this._899454784slot24;
      }
      
      public function initViewBankPanel() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:ConsumPanel = null;
         var _loc3_:int = 0;
         visible = true;
         _loc1_ = "";
         if(!_core.player.enoughBank(1) && _core.player.bankSlotNum < 5)
         {
            _loc2_ = ConsumPanel(_core.view.getUI(ViewManager.MAIN_CONSUMP));
            _loc3_ = int(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][324].gold);
            _loc1_ = Language.BANKPANEL_S[0];
            _loc2_.msg = _loc1_.replace("{gole}",_loc3_);
            _loc2_.useAble = true;
            _loc2_.closeWith(this);
            _loc2_.itemData = {
               "type":29,
               "id":324
            };
            if(this.x <= 400)
            {
               _loc2_.x = this.x + 230;
            }
            else
            {
               _loc2_.x = this.x - 200;
            }
            _loc2_.y = this.y + 100;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot29() : ItemSlot
      {
         return this._899454779slot29;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot23() : ItemSlot
      {
         return this._899454785slot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot28() : ItemSlot
      {
         return this._899454780slot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot32() : ItemSlot
      {
         return this._899454755slot32;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot34() : ItemSlot
      {
         return this._899454753slot34;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot30() : ItemSlot
      {
         return this._899454757slot30;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(visible && !param1)
         {
            if(_core.remote)
            {
               _core.remote.closeBank();
            }
         }
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot37() : ItemSlot
      {
         return this._899454750slot37;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot33() : ItemSlot
      {
         return this._899454754slot33;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot35() : ItemSlot
      {
         return this._899454752slot35;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot36() : ItemSlot
      {
         return this._899454751slot36;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot38() : ItemSlot
      {
         return this._899454749slot38;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot39() : ItemSlot
      {
         return this._899454748slot39;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot31() : ItemSlot
      {
         return this._899454756slot31;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot41() : ItemSlot
      {
         return this._899454725slot41;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot44() : ItemSlot
      {
         return this._899454722slot44;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot45() : ItemSlot
      {
         return this._899454721slot45;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot46() : ItemSlot
      {
         return this._899454720slot46;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot40() : ItemSlot
      {
         return this._899454726slot40;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot48() : ItemSlot
      {
         return this._899454718slot48;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot43() : ItemSlot
      {
         return this._899454723slot43;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot47() : ItemSlot
      {
         return this._899454719slot47;
      }
      
      [Bindable(event="propertyChange")]
      public function get thirdTile() : Tile
      {
         return this._585350987thirdTile;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot42() : ItemSlot
      {
         return this._899454724slot42;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot49() : ItemSlot
      {
         return this._899454717slot49;
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
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot51() : ItemSlot
      {
         return this._899454694slot51;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot52() : ItemSlot
      {
         return this._899454693slot52;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot53() : ItemSlot
      {
         return this._899454692slot53;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot54() : ItemSlot
      {
         return this._899454691slot54;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot55() : ItemSlot
      {
         return this._899454690slot55;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot56() : ItemSlot
      {
         return this._899454689slot56;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot50() : ItemSlot
      {
         return this._899454695slot50;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot58() : ItemSlot
      {
         return this._899454687slot58;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot59() : ItemSlot
      {
         return this._899454686slot59;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot57() : ItemSlot
      {
         return this._899454688slot57;
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
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot60() : ItemSlot
      {
         return this._899454664slot60;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot61() : ItemSlot
      {
         return this._899454663slot61;
      }
      
      public function set slot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot65() : ItemSlot
      {
         return this._899454659slot65;
      }
      
      public function set slot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot67() : ItemSlot
      {
         return this._899454657slot67;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot62() : ItemSlot
      {
         return this._899454662slot62;
      }
      
      [Bindable(event="propertyChange")]
      public function get secondTile() : Tile
      {
         return this._423866690secondTile;
      }
      
      public function set slot11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot66() : ItemSlot
      {
         return this._899454658slot66;
      }
      
      public function set slot13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot64() : ItemSlot
      {
         return this._899454660slot64;
      }
      
      public function set slot19(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set slot16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot69() : ItemSlot
      {
         return this._899454655slot69;
      }
      
      public function set slot18(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,3);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot74() : ItemSlot
      {
         return this._899454629slot74;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot75() : ItemSlot
      {
         return this._899454628slot75;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot63() : ItemSlot
      {
         return this._899454661slot63;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot70() : ItemSlot
      {
         return this._899454633slot70;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot72() : ItemSlot
      {
         return this._899454631slot72;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot68() : ItemSlot
      {
         return this._899454656slot68;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot76() : ItemSlot
      {
         return this._899454627slot76;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot77() : ItemSlot
      {
         return this._899454626slot77;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot71() : ItemSlot
      {
         return this._899454632slot71;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot73() : ItemSlot
      {
         return this._899454630slot73;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot78() : ItemSlot
      {
         return this._899454625slot78;
      }
      
      public function __tabBtn2_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,3);
      }
      
      public function set thirdTile(param1:Tile) : void
      {
         var _loc2_:Object = this._585350987thirdTile;
         if(_loc2_ !== param1)
         {
            this._585350987thirdTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thirdTile",_loc2_,param1));
         }
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot81() : ItemSlot
      {
         return this._899454601slot81;
      }
      
      public function set slot20(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot83() : ItemSlot
      {
         return this._899454599slot83;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot85() : ItemSlot
      {
         return this._899454597slot85;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot80() : ItemSlot
      {
         return this._899454602slot80;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot82() : ItemSlot
      {
         return this._899454600slot82;
      }
      
      public function setSlot(param1:Object) : void
      {
         _dm.initSlotData(param1);
         updateView();
      }
      
      public function set slot21(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454787slot21;
         if(_loc2_ !== param1)
         {
            this._899454787slot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot21",_loc2_,param1));
         }
      }
      
      public function set slot25(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454783slot25;
         if(_loc2_ !== param1)
         {
            this._899454783slot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot25",_loc2_,param1));
         }
      }
      
      public function set slot22(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454786slot22;
         if(_loc2_ !== param1)
         {
            this._899454786slot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot22",_loc2_,param1));
         }
      }
      
      public function set slot26(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454782slot26;
         if(_loc2_ !== param1)
         {
            this._899454782slot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot26",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      public function set slot27(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454781slot27;
         if(_loc2_ !== param1)
         {
            this._899454781slot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot27",_loc2_,param1));
         }
      }
      
      public function set slot24(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454784slot24;
         if(_loc2_ !== param1)
         {
            this._899454784slot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot24",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot84() : ItemSlot
      {
         return this._899454598slot84;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot87() : ItemSlot
      {
         return this._899454595slot87;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot89() : ItemSlot
      {
         return this._899454593slot89;
      }
      
      public function set slot28(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454780slot28;
         if(_loc2_ !== param1)
         {
            this._899454780slot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot28",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot90() : ItemSlot
      {
         return this._899454571slot90;
      }
      
      public function set slot23(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454785slot23;
         if(_loc2_ !== param1)
         {
            this._899454785slot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot23",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot92() : ItemSlot
      {
         return this._899454569slot92;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot97() : ItemSlot
      {
         return this._899454564slot97;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot86() : ItemSlot
      {
         return this._899454596slot86;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot93() : ItemSlot
      {
         return this._899454568slot93;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot98() : ItemSlot
      {
         return this._899454563slot98;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot91() : ItemSlot
      {
         return this._899454570slot91;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot88() : ItemSlot
      {
         return this._899454594slot88;
      }
      
      public function set slot29(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454779slot29;
         if(_loc2_ !== param1)
         {
            this._899454779slot29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot29",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get thirdCanvas() : Canvas
      {
         return this._375587425thirdCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot94() : ItemSlot
      {
         return this._899454567slot94;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot96() : ItemSlot
      {
         return this._899454565slot96;
      }
      
      [Bindable(event="propertyChange")]
      public function get fouthCanvas() : Canvas
      {
         return this._162384312fouthCanvas;
      }
      
      public function set slot34(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454753slot34;
         if(_loc2_ !== param1)
         {
            this._899454753slot34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot34",_loc2_,param1));
         }
      }
      
      public function set slot31(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454756slot31;
         if(_loc2_ !== param1)
         {
            this._899454756slot31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot31",_loc2_,param1));
         }
      }
      
      public function set slot35(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454752slot35;
         if(_loc2_ !== param1)
         {
            this._899454752slot35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot35",_loc2_,param1));
         }
      }
      
      public function set slot32(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454755slot32;
         if(_loc2_ !== param1)
         {
            this._899454755slot32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot32",_loc2_,param1));
         }
      }
      
      public function set slot36(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454751slot36;
         if(_loc2_ !== param1)
         {
            this._899454751slot36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot36",_loc2_,param1));
         }
      }
      
      public function set slot33(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454754slot33;
         if(_loc2_ !== param1)
         {
            this._899454754slot33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot33",_loc2_,param1));
         }
      }
      
      public function set slot37(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454750slot37;
         if(_loc2_ !== param1)
         {
            this._899454750slot37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot37",_loc2_,param1));
         }
      }
      
      public function set slot30(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454757slot30;
         if(_loc2_ !== param1)
         {
            this._899454757slot30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot30",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot95() : ItemSlot
      {
         return this._899454566slot95;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot99() : ItemSlot
      {
         return this._899454562slot99;
      }
      
      public function set slot39(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454748slot39;
         if(_loc2_ !== param1)
         {
            this._899454748slot39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot39",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot79() : ItemSlot
      {
         return this._899454624slot79;
      }
      
      public function set secondCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1180008724secondCanvas;
         if(_loc2_ !== param1)
         {
            this._1180008724secondCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secondCanvas",_loc2_,param1));
         }
      }
      
      public function set slot38(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454749slot38;
         if(_loc2_ !== param1)
         {
            this._899454749slot38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot38",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fifthCanvas() : Canvas
      {
         return this._1611488785fifthCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ItemSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : ItemSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : ItemSlot
      {
         return this._109532665slot7;
      }
      
      public function bankSort() : void
      {
         var func:Function = null;
         if(buttonSort.enabled == true)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_core.remote.call("bankSort",null))
                  {
                  }
                  buttonSort.enabled = false;
                  _bankSortTimer = new Timer(30000,1);
                  _bankSortTimer.addEventListener(TimerEvent.TIMER,sortButtonReset);
                  _bankSortTimer.start();
               }
            };
            Alert.show(Language.BANKPANEL_S[3],"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function set slot40(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454726slot40;
         if(_loc2_ !== param1)
         {
            this._899454726slot40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot40",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : ItemSlot
      {
         return this._109532662slot4;
      }
      
      public function set slot45(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454721slot45;
         if(_loc2_ !== param1)
         {
            this._899454721slot45 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot45",_loc2_,param1));
         }
      }
      
      public function set slot42(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454724slot42;
         if(_loc2_ !== param1)
         {
            this._899454724slot42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot42",_loc2_,param1));
         }
      }
      
      public function set slot46(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454720slot46;
         if(_loc2_ !== param1)
         {
            this._899454720slot46 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot46",_loc2_,param1));
         }
      }
      
      public function set slot47(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454719slot47;
         if(_loc2_ !== param1)
         {
            this._899454719slot47 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot47",_loc2_,param1));
         }
      }
      
      public function set slot44(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454722slot44;
         if(_loc2_ !== param1)
         {
            this._899454722slot44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot44",_loc2_,param1));
         }
      }
      
      public function set slot41(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454725slot41;
         if(_loc2_ !== param1)
         {
            this._899454725slot41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot41",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ItemSlot
      {
         return this._109532664slot6;
      }
      
      public function __tnBag_creationComplete(param1:FlexEvent) : void
      {
         addTabEvent();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ItemSlot
      {
         return this._109532667slot9;
      }
      
      public function set slot49(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454717slot49;
         if(_loc2_ !== param1)
         {
            this._899454717slot49 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot49",_loc2_,param1));
         }
      }
      
      public function set slot43(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454723slot43;
         if(_loc2_ !== param1)
         {
            this._899454723slot43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot43",_loc2_,param1));
         }
      }
      
      public function set slot48(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454718slot48;
         if(_loc2_ !== param1)
         {
            this._899454718slot48 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot48",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : ItemSlot
      {
         return this._109532666slot8;
      }
      
      public function set slot50(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454695slot50;
         if(_loc2_ !== param1)
         {
            this._899454695slot50 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot50",_loc2_,param1));
         }
      }
      
      public function set slot54(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454691slot54;
         if(_loc2_ !== param1)
         {
            this._899454691slot54 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot54",_loc2_,param1));
         }
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3);
      }
      
      public function set slot53(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454692slot53;
         if(_loc2_ !== param1)
         {
            this._899454692slot53 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot53",_loc2_,param1));
         }
      }
      
      public function set slot57(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454688slot57;
         if(_loc2_ !== param1)
         {
            this._899454688slot57 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot57",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t5() : Tile
      {
         return this._3649t5;
      }
      
      public function set slot58(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454687slot58;
         if(_loc2_ !== param1)
         {
            this._899454687slot58 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot58",_loc2_,param1));
         }
      }
      
      public function set slot51(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454694slot51;
         if(_loc2_ !== param1)
         {
            this._899454694slot51 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot51",_loc2_,param1));
         }
      }
      
      public function set slot59(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454686slot59;
         if(_loc2_ !== param1)
         {
            this._899454686slot59 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot59",_loc2_,param1));
         }
      }
      
      public function set slot52(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454693slot52;
         if(_loc2_ !== param1)
         {
            this._899454693slot52 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot52",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t4() : Tile
      {
         return this._3648t4;
      }
      
      public function set slot55(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454690slot55;
         if(_loc2_ !== param1)
         {
            this._899454690slot55 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot55",_loc2_,param1));
         }
      }
      
      public function set slot56(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454689slot56;
         if(_loc2_ !== param1)
         {
            this._899454689slot56 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot56",_loc2_,param1));
         }
      }
      
      private function _BankPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BankPanel_BasicTitleCanvas1.text = param1;
         },"_BankPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BankPanel_Canvas1.label = param1;
         },"_BankPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot19.slotType = param1;
         },"slot19.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot20.slotType = param1;
         },"slot20.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot21.slotType = param1;
         },"slot21.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot22.slotType = param1;
         },"slot22.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot23.slotType = param1;
         },"slot23.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot24.slotType = param1;
         },"slot24.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot25.slotType = param1;
         },"slot25.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot26.slotType = param1;
         },"slot26.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot27.slotType = param1;
         },"slot27.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot28.slotType = param1;
         },"slot28.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot29.slotType = param1;
         },"slot29.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot30.slotType = param1;
         },"slot30.slotType");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            secondCanvas.label = param1;
         },"secondCanvas.label");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot31.slotType = param1;
         },"slot31.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot32.slotType = param1;
         },"slot32.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot33.slotType = param1;
         },"slot33.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot34.slotType = param1;
         },"slot34.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot35.slotType = param1;
         },"slot35.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot36.slotType = param1;
         },"slot36.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot37.slotType = param1;
         },"slot37.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot38.slotType = param1;
         },"slot38.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot39.slotType = param1;
         },"slot39.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot40.slotType = param1;
         },"slot40.slotType");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot41.slotType = param1;
         },"slot41.slotType");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot42.slotType = param1;
         },"slot42.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot43.slotType = param1;
         },"slot43.slotType");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot44.slotType = param1;
         },"slot44.slotType");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot45.slotType = param1;
         },"slot45.slotType");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot46.slotType = param1;
         },"slot46.slotType");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot47.slotType = param1;
         },"slot47.slotType");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot48.slotType = param1;
         },"slot48.slotType");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot49.slotType = param1;
         },"slot49.slotType");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot50.slotType = param1;
         },"slot50.slotType");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot51.slotType = param1;
         },"slot51.slotType");
         result[53] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot52.slotType = param1;
         },"slot52.slotType");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot53.slotType = param1;
         },"slot53.slotType");
         result[55] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot54.slotType = param1;
         },"slot54.slotType");
         result[56] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot55.slotType = param1;
         },"slot55.slotType");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot56.slotType = param1;
         },"slot56.slotType");
         result[58] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot57.slotType = param1;
         },"slot57.slotType");
         result[59] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot58.slotType = param1;
         },"slot58.slotType");
         result[60] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot59.slotType = param1;
         },"slot59.slotType");
         result[61] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot60.slotType = param1;
         },"slot60.slotType");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            thirdCanvas.label = param1;
         },"thirdCanvas.label");
         result[63] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot61.slotType = param1;
         },"slot61.slotType");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot62.slotType = param1;
         },"slot62.slotType");
         result[65] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot63.slotType = param1;
         },"slot63.slotType");
         result[66] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot64.slotType = param1;
         },"slot64.slotType");
         result[67] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot65.slotType = param1;
         },"slot65.slotType");
         result[68] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot66.slotType = param1;
         },"slot66.slotType");
         result[69] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot67.slotType = param1;
         },"slot67.slotType");
         result[70] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot68.slotType = param1;
         },"slot68.slotType");
         result[71] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot69.slotType = param1;
         },"slot69.slotType");
         result[72] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot70.slotType = param1;
         },"slot70.slotType");
         result[73] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot71.slotType = param1;
         },"slot71.slotType");
         result[74] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot72.slotType = param1;
         },"slot72.slotType");
         result[75] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot73.slotType = param1;
         },"slot73.slotType");
         result[76] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot74.slotType = param1;
         },"slot74.slotType");
         result[77] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot75.slotType = param1;
         },"slot75.slotType");
         result[78] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot76.slotType = param1;
         },"slot76.slotType");
         result[79] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot77.slotType = param1;
         },"slot77.slotType");
         result[80] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot78.slotType = param1;
         },"slot78.slotType");
         result[81] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot79.slotType = param1;
         },"slot79.slotType");
         result[82] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot80.slotType = param1;
         },"slot80.slotType");
         result[83] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot81.slotType = param1;
         },"slot81.slotType");
         result[84] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot82.slotType = param1;
         },"slot82.slotType");
         result[85] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot83.slotType = param1;
         },"slot83.slotType");
         result[86] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot84.slotType = param1;
         },"slot84.slotType");
         result[87] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot85.slotType = param1;
         },"slot85.slotType");
         result[88] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot86.slotType = param1;
         },"slot86.slotType");
         result[89] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot87.slotType = param1;
         },"slot87.slotType");
         result[90] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot88.slotType = param1;
         },"slot88.slotType");
         result[91] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot89.slotType = param1;
         },"slot89.slotType");
         result[92] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot90.slotType = param1;
         },"slot90.slotType");
         result[93] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fouthCanvas.label = param1;
         },"fouthCanvas.label");
         result[94] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot91.slotType = param1;
         },"slot91.slotType");
         result[95] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot92.slotType = param1;
         },"slot92.slotType");
         result[96] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot93.slotType = param1;
         },"slot93.slotType");
         result[97] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot94.slotType = param1;
         },"slot94.slotType");
         result[98] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot95.slotType = param1;
         },"slot95.slotType");
         result[99] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot96.slotType = param1;
         },"slot96.slotType");
         result[100] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot97.slotType = param1;
         },"slot97.slotType");
         result[101] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot98.slotType = param1;
         },"slot98.slotType");
         result[102] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot99.slotType = param1;
         },"slot99.slotType");
         result[103] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot100.slotType = param1;
         },"slot100.slotType");
         result[104] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot101.slotType = param1;
         },"slot101.slotType");
         result[105] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot102.slotType = param1;
         },"slot102.slotType");
         result[106] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot103.slotType = param1;
         },"slot103.slotType");
         result[107] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot104.slotType = param1;
         },"slot104.slotType");
         result[108] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot105.slotType = param1;
         },"slot105.slotType");
         result[109] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot106.slotType = param1;
         },"slot106.slotType");
         result[110] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot107.slotType = param1;
         },"slot107.slotType");
         result[111] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot108.slotType = param1;
         },"slot108.slotType");
         result[112] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot109.slotType = param1;
         },"slot109.slotType");
         result[113] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot110.slotType = param1;
         },"slot110.slotType");
         result[114] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot111.slotType = param1;
         },"slot111.slotType");
         result[115] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot112.slotType = param1;
         },"slot112.slotType");
         result[116] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot113.slotType = param1;
         },"slot113.slotType");
         result[117] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot114.slotType = param1;
         },"slot114.slotType");
         result[118] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot115.slotType = param1;
         },"slot115.slotType");
         result[119] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot116.slotType = param1;
         },"slot116.slotType");
         result[120] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot117.slotType = param1;
         },"slot117.slotType");
         result[121] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot118.slotType = param1;
         },"slot118.slotType");
         result[122] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot119.slotType = param1;
         },"slot119.slotType");
         result[123] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot120.slotType = param1;
         },"slot120.slotType");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fifthCanvas.label = param1;
         },"fifthCanvas.label");
         result[125] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot121.slotType = param1;
         },"slot121.slotType");
         result[126] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot122.slotType = param1;
         },"slot122.slotType");
         result[127] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot123.slotType = param1;
         },"slot123.slotType");
         result[128] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot124.slotType = param1;
         },"slot124.slotType");
         result[129] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot125.slotType = param1;
         },"slot125.slotType");
         result[130] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot126.slotType = param1;
         },"slot126.slotType");
         result[131] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot127.slotType = param1;
         },"slot127.slotType");
         result[132] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot128.slotType = param1;
         },"slot128.slotType");
         result[133] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot129.slotType = param1;
         },"slot129.slotType");
         result[134] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot130.slotType = param1;
         },"slot130.slotType");
         result[135] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot131.slotType = param1;
         },"slot131.slotType");
         result[136] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot132.slotType = param1;
         },"slot132.slotType");
         result[137] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot133.slotType = param1;
         },"slot133.slotType");
         result[138] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot134.slotType = param1;
         },"slot134.slotType");
         result[139] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot135.slotType = param1;
         },"slot135.slotType");
         result[140] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot136.slotType = param1;
         },"slot136.slotType");
         result[141] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot137.slotType = param1;
         },"slot137.slotType");
         result[142] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot138.slotType = param1;
         },"slot138.slotType");
         result[143] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot139.slotType = param1;
         },"slot139.slotType");
         result[144] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot140.slotType = param1;
         },"slot140.slotType");
         result[145] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot141.slotType = param1;
         },"slot141.slotType");
         result[146] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot142.slotType = param1;
         },"slot142.slotType");
         result[147] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot143.slotType = param1;
         },"slot143.slotType");
         result[148] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot144.slotType = param1;
         },"slot144.slotType");
         result[149] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot145.slotType = param1;
         },"slot145.slotType");
         result[150] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot146.slotType = param1;
         },"slot146.slotType");
         result[151] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot147.slotType = param1;
         },"slot147.slotType");
         result[152] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot148.slotType = param1;
         },"slot148.slotType");
         result[153] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot149.slotType = param1;
         },"slot149.slotType");
         result[154] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot150.slotType = param1;
         },"slot150.slotType");
         result[155] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[156] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[158] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[159] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[160] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buttonSort.label = param1;
         },"buttonSort.label");
         result[161] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buttonSort.toolTip = param1;
         },"buttonSort.toolTip");
         result[162] = binding;
         return result;
      }
      
      private function tabDragEnterHandler(param1:DragEvent, param2:Number) : void
      {
         if(param2 == tnBag.selectedIndex + 1)
         {
            DragManager.showFeedback(DragManager.NONE);
            return;
         }
         DragManager.showFeedback(DragManager.MOVE);
         DragManager.acceptDragDrop(Button(param1.currentTarget));
      }
      
      public function set slot100(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295565slot100;
         if(_loc2_ !== param1)
         {
            this._2113295565slot100 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot100",_loc2_,param1));
         }
      }
      
      public function set tnBag(param1:ViewStack) : void
      {
         var _loc2_:Object = this._110471982tnBag;
         if(_loc2_ !== param1)
         {
            this._110471982tnBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tnBag",_loc2_,param1));
         }
      }
      
      public function set slot103(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295562slot103;
         if(_loc2_ !== param1)
         {
            this._2113295562slot103 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot103",_loc2_,param1));
         }
      }
      
      public function set slot104(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295561slot104;
         if(_loc2_ !== param1)
         {
            this._2113295561slot104 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot104",_loc2_,param1));
         }
      }
      
      public function set slot102(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295563slot102;
         if(_loc2_ !== param1)
         {
            this._2113295563slot102 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot102",_loc2_,param1));
         }
      }
      
      public function set slot106(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295559slot106;
         if(_loc2_ !== param1)
         {
            this._2113295559slot106 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot106",_loc2_,param1));
         }
      }
      
      public function set slot61(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454663slot61;
         if(_loc2_ !== param1)
         {
            this._899454663slot61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot61",_loc2_,param1));
         }
      }
      
      public function set slot107(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295558slot107;
         if(_loc2_ !== param1)
         {
            this._2113295558slot107 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot107",_loc2_,param1));
         }
      }
      
      public function set slot105(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295560slot105;
         if(_loc2_ !== param1)
         {
            this._2113295560slot105 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot105",_loc2_,param1));
         }
      }
      
      public function set slot65(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454659slot65;
         if(_loc2_ !== param1)
         {
            this._899454659slot65 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot65",_loc2_,param1));
         }
      }
      
      public function set slot69(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454655slot69;
         if(_loc2_ !== param1)
         {
            this._899454655slot69 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot69",_loc2_,param1));
         }
      }
      
      public function set secondTile(param1:Tile) : void
      {
         var _loc2_:Object = this._423866690secondTile;
         if(_loc2_ !== param1)
         {
            this._423866690secondTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secondTile",_loc2_,param1));
         }
      }
      
      public function __tabBtn3_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,4);
      }
      
      public function set slot109(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295556slot109;
         if(_loc2_ !== param1)
         {
            this._2113295556slot109 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot109",_loc2_,param1));
         }
      }
      
      public function set slot60(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454664slot60;
         if(_loc2_ !== param1)
         {
            this._899454664slot60 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot60",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      public function set slot101(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295564slot101;
         if(_loc2_ !== param1)
         {
            this._2113295564slot101 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot101",_loc2_,param1));
         }
      }
      
      public function set slot66(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454658slot66;
         if(_loc2_ !== param1)
         {
            this._899454658slot66 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot66",_loc2_,param1));
         }
      }
      
      public function set slot62(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454662slot62;
         if(_loc2_ !== param1)
         {
            this._899454662slot62 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot62",_loc2_,param1));
         }
      }
      
      public function set slot67(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454657slot67;
         if(_loc2_ !== param1)
         {
            this._899454657slot67 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot67",_loc2_,param1));
         }
      }
      
      private function _BankPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[2];
         _loc1_ = Language.BANKPANEL_U[1];
      }
      
      public function set slot64(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454660slot64;
         if(_loc2_ !== param1)
         {
            this._899454660slot64 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot64",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      public function set slot108(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295557slot108;
         if(_loc2_ !== param1)
         {
            this._2113295557slot108 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot108",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      public function set slot68(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454656slot68;
         if(_loc2_ !== param1)
         {
            this._899454656slot68 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot68",_loc2_,param1));
         }
      }
      
      public function set slot112(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295532slot112;
         if(_loc2_ !== param1)
         {
            this._2113295532slot112 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot112",_loc2_,param1));
         }
      }
      
      public function set slot110(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295534slot110;
         if(_loc2_ !== param1)
         {
            this._2113295534slot110 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot110",_loc2_,param1));
         }
      }
      
      public function set slot114(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295530slot114;
         if(_loc2_ !== param1)
         {
            this._2113295530slot114 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot114",_loc2_,param1));
         }
      }
      
      public function set slot111(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295533slot111;
         if(_loc2_ !== param1)
         {
            this._2113295533slot111 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot111",_loc2_,param1));
         }
      }
      
      public function set slot115(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295529slot115;
         if(_loc2_ !== param1)
         {
            this._2113295529slot115 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot115",_loc2_,param1));
         }
      }
      
      public function __tabBtn1_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,2);
      }
      
      public function set slot116(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295528slot116;
         if(_loc2_ !== param1)
         {
            this._2113295528slot116 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot116",_loc2_,param1));
         }
      }
      
      public function set slot113(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295531slot113;
         if(_loc2_ !== param1)
         {
            this._2113295531slot113 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot113",_loc2_,param1));
         }
      }
      
      public function set slot70(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454633slot70;
         if(_loc2_ !== param1)
         {
            this._899454633slot70 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot70",_loc2_,param1));
         }
      }
      
      public function set slot119(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295525slot119;
         if(_loc2_ !== param1)
         {
            this._2113295525slot119 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot119",_loc2_,param1));
         }
      }
      
      public function set slot71(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454632slot71;
         if(_loc2_ !== param1)
         {
            this._899454632slot71 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot71",_loc2_,param1));
         }
      }
      
      public function set slot75(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454628slot75;
         if(_loc2_ !== param1)
         {
            this._899454628slot75 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot75",_loc2_,param1));
         }
      }
      
      public function set slot117(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295527slot117;
         if(_loc2_ !== param1)
         {
            this._2113295527slot117 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot117",_loc2_,param1));
         }
      }
      
      public function set slot76(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454627slot76;
         if(_loc2_ !== param1)
         {
            this._899454627slot76 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot76",_loc2_,param1));
         }
      }
      
      public function set slot63(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454661slot63;
         if(_loc2_ !== param1)
         {
            this._899454661slot63 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot63",_loc2_,param1));
         }
      }
      
      public function set slot74(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454629slot74;
         if(_loc2_ !== param1)
         {
            this._899454629slot74 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot74",_loc2_,param1));
         }
      }
      
      public function set slot78(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454625slot78;
         if(_loc2_ !== param1)
         {
            this._899454625slot78 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot78",_loc2_,param1));
         }
      }
      
      public function set slot79(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454624slot79;
         if(_loc2_ !== param1)
         {
            this._899454624slot79 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot79",_loc2_,param1));
         }
      }
      
      public function set slot72(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454631slot72;
         if(_loc2_ !== param1)
         {
            this._899454631slot72 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot72",_loc2_,param1));
         }
      }
      
      public function set slot118(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295526slot118;
         if(_loc2_ !== param1)
         {
            this._2113295526slot118 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot118",_loc2_,param1));
         }
      }
      
      public function set slot77(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454626slot77;
         if(_loc2_ !== param1)
         {
            this._899454626slot77 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot77",_loc2_,param1));
         }
      }
      
      public function set slot73(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454630slot73;
         if(_loc2_ !== param1)
         {
            this._899454630slot73 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot73",_loc2_,param1));
         }
      }
      
      public function set slot122(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295501slot122;
         if(_loc2_ !== param1)
         {
            this._2113295501slot122 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot122",_loc2_,param1));
         }
      }
      
      public function set slot121(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295502slot121;
         if(_loc2_ !== param1)
         {
            this._2113295502slot121 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot121",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get secondCanvas() : Canvas
      {
         return this._1180008724secondCanvas;
      }
      
      public function set slot126(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295497slot126;
         if(_loc2_ !== param1)
         {
            this._2113295497slot126 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot126",_loc2_,param1));
         }
      }
      
      public function set slot123(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295500slot123;
         if(_loc2_ !== param1)
         {
            this._2113295500slot123 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot123",_loc2_,param1));
         }
      }
      
      public function __tabBtn4_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,5);
      }
      
      public function set slot125(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295498slot125;
         if(_loc2_ !== param1)
         {
            this._2113295498slot125 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot125",_loc2_,param1));
         }
      }
      
      public function set slot85(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454597slot85;
         if(_loc2_ !== param1)
         {
            this._899454597slot85 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot85",_loc2_,param1));
         }
      }
      
      public function set slot124(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295499slot124;
         if(_loc2_ !== param1)
         {
            this._2113295499slot124 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot124",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      public function set slot127(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295496slot127;
         if(_loc2_ !== param1)
         {
            this._2113295496slot127 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot127",_loc2_,param1));
         }
      }
      
      public function set slot128(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295495slot128;
         if(_loc2_ !== param1)
         {
            this._2113295495slot128 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot128",_loc2_,param1));
         }
      }
      
      public function set slot120(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295503slot120;
         if(_loc2_ !== param1)
         {
            this._2113295503slot120 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot120",_loc2_,param1));
         }
      }
      
      public function set slot89(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454593slot89;
         if(_loc2_ !== param1)
         {
            this._899454593slot89 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot89",_loc2_,param1));
         }
      }
      
      public function set slot81(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454601slot81;
         if(_loc2_ !== param1)
         {
            this._899454601slot81 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot81",_loc2_,param1));
         }
      }
      
      public function set slot86(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454596slot86;
         if(_loc2_ !== param1)
         {
            this._899454596slot86 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot86",_loc2_,param1));
         }
      }
      
      public function set slot82(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454600slot82;
         if(_loc2_ !== param1)
         {
            this._899454600slot82 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot82",_loc2_,param1));
         }
      }
      
      public function set slot87(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454595slot87;
         if(_loc2_ !== param1)
         {
            this._899454595slot87 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot87",_loc2_,param1));
         }
      }
      
      public function set slot129(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295494slot129;
         if(_loc2_ !== param1)
         {
            this._2113295494slot129 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot129",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         for each(_loc1_ in _dm.sList)
         {
            if(ToolKit.isBigThan(_loc1_.sid,GamePredef.SLOT_SID_BANK[0]) && ToolKit.isSmallOrEqual(_loc1_.sid,GamePredef.SLOT_SID_BANK[_core.player.bankSlotNum]))
            {
               _loc3_ = _core.view.getSlot(_loc1_.sid);
               _loc3_.slotData = _loc1_;
               _loc3_.type = _loc1_.type;
               _loc3_.giid = _loc1_.itemId;
               _loc3_.stackNum = _loc1_.stackNum;
            }
         }
         _loc2_ = GamePredef.SLOT_SID_BANK[0] + 1;
         while(_loc2_ <= GamePredef.SLOT_SID_BANK[_core.player.bankSlotNum])
         {
            _core.view.getSlot(_loc2_).update();
            _loc2_++;
         }
         if(ToolKit.isEqual(_core.player.bankSlotNum,2))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = false;
            fouthCanvas.enabled = false;
            tabBtn1.enabled = true;
            tabBtn2.enabled = false;
            tabBtn3.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bankSlotNum,3))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = false;
            tabBtn1.enabled = true;
            tabBtn2.enabled = true;
            tabBtn3.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bankSlotNum,4))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = true;
            tabBtn1.enabled = true;
            tabBtn2.enabled = true;
            tabBtn3.enabled = true;
         }
         else if(ToolKit.isEqual(_core.player.bankSlotNum,5))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = true;
            fifthCanvas.enabled = true;
            tabBtn1.enabled = true;
            tabBtn2.enabled = true;
            tabBtn3.enabled = true;
            tabBtn4.enabled = true;
         }
      }
      
      public function set firstTile(param1:Tile) : void
      {
         var _loc2_:Object = this._133022078firstTile;
         if(_loc2_ !== param1)
         {
            this._133022078firstTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstTile",_loc2_,param1));
         }
      }
      
      public function set slot83(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454599slot83;
         if(_loc2_ !== param1)
         {
            this._899454599slot83 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot83",_loc2_,param1));
         }
      }
      
      public function __tabBtn0_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,1);
      }
      
      public function set slot80(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454602slot80;
         if(_loc2_ !== param1)
         {
            this._899454602slot80 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot80",_loc2_,param1));
         }
      }
      
      private function dClickHandler(param1:Event) : void
      {
         trace(" bank dClick ");
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         switch(_core.player.actionState)
         {
            case GamePredef.ST_BANK:
               _core.remote.bagToBank(_loc2_.slotData.sid,2);
         }
      }
      
      public function set slot130(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295472slot130;
         if(_loc2_ !== param1)
         {
            this._2113295472slot130 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot130",_loc2_,param1));
         }
      }
      
      public function set slot135(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295467slot135;
         if(_loc2_ !== param1)
         {
            this._2113295467slot135 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot135",_loc2_,param1));
         }
      }
      
      public function set slot133(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295469slot133;
         if(_loc2_ !== param1)
         {
            this._2113295469slot133 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot133",_loc2_,param1));
         }
      }
      
      public function set slot137(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295465slot137;
         if(_loc2_ !== param1)
         {
            this._2113295465slot137 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot137",_loc2_,param1));
         }
      }
      
      public function set slot134(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295468slot134;
         if(_loc2_ !== param1)
         {
            this._2113295468slot134 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot134",_loc2_,param1));
         }
      }
      
      public function set slot138(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295464slot138;
         if(_loc2_ !== param1)
         {
            this._2113295464slot138 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot138",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot102() : ItemSlot
      {
         return this._2113295563slot102;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot104() : ItemSlot
      {
         return this._2113295561slot104;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot105() : ItemSlot
      {
         return this._2113295560slot105;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot109() : ItemSlot
      {
         return this._2113295556slot109;
      }
      
      public function set slot93(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454568slot93;
         if(_loc2_ !== param1)
         {
            this._899454568slot93 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot93",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot106() : ItemSlot
      {
         return this._2113295559slot106;
      }
      
      private function tabBtnClick(param1:int) : void
      {
         tabBtn0.selected = false;
         tabBtn1.selected = false;
         tabBtn2.selected = false;
         tabBtn3.selected = false;
         tabBtn4.selected = false;
         tnBag.selectedIndex = param1;
         this["tabBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot100() : ItemSlot
      {
         return this._2113295565slot100;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot101() : ItemSlot
      {
         return this._2113295564slot101;
      }
      
      public function set slot131(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295471slot131;
         if(_loc2_ !== param1)
         {
            this._2113295471slot131 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot131",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot103() : ItemSlot
      {
         return this._2113295562slot103;
      }
      
      public function set slot84(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454598slot84;
         if(_loc2_ !== param1)
         {
            this._899454598slot84 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot84",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot107() : ItemSlot
      {
         return this._2113295558slot107;
      }
      
      public function set slot99(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454562slot99;
         if(_loc2_ !== param1)
         {
            this._899454562slot99 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot99",_loc2_,param1));
         }
      }
      
      public function set slot90(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454571slot90;
         if(_loc2_ !== param1)
         {
            this._899454571slot90 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot90",_loc2_,param1));
         }
      }
      
      public function set slot88(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454594slot88;
         if(_loc2_ !== param1)
         {
            this._899454594slot88 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot88",_loc2_,param1));
         }
      }
      
      public function set slot132(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295470slot132;
         if(_loc2_ !== param1)
         {
            this._2113295470slot132 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot132",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot110() : ItemSlot
      {
         return this._2113295534slot110;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot108() : ItemSlot
      {
         return this._2113295557slot108;
      }
      
      private function tabDragDropHandler(param1:DragEvent, param2:Number) : void
      {
         var _loc3_:ItemSlot = param1.dragSource.dataForFormat("slot") as ItemSlot;
         _core.remote.moveItemToPage(_loc3_.index,GamePredef.PAGE_TYPE_BANK,param2);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot114() : ItemSlot
      {
         return this._2113295530slot114;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot115() : ItemSlot
      {
         return this._2113295529slot115;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot116() : ItemSlot
      {
         return this._2113295528slot116;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot112() : ItemSlot
      {
         return this._2113295532slot112;
      }
      
      public function set slot140(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295441slot140;
         if(_loc2_ !== param1)
         {
            this._2113295441slot140 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot140",_loc2_,param1));
         }
      }
      
      public function set slot139(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295463slot139;
         if(_loc2_ !== param1)
         {
            this._2113295463slot139 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot139",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot117() : ItemSlot
      {
         return this._2113295527slot117;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot118() : ItemSlot
      {
         return this._2113295526slot118;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot111() : ItemSlot
      {
         return this._2113295533slot111;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot113() : ItemSlot
      {
         return this._2113295531slot113;
      }
      
      public function set slot136(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295466slot136;
         if(_loc2_ !== param1)
         {
            this._2113295466slot136 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot136",_loc2_,param1));
         }
      }
      
      public function set slot144(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295437slot144;
         if(_loc2_ !== param1)
         {
            this._2113295437slot144 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot144",_loc2_,param1));
         }
      }
      
      public function set slot141(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295440slot141;
         if(_loc2_ !== param1)
         {
            this._2113295440slot141 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot141",_loc2_,param1));
         }
      }
      
      public function set slot145(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295436slot145;
         if(_loc2_ !== param1)
         {
            this._2113295436slot145 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot145",_loc2_,param1));
         }
      }
      
      public function set slot142(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295439slot142;
         if(_loc2_ !== param1)
         {
            this._2113295439slot142 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot142",_loc2_,param1));
         }
      }
      
      public function set slot143(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295438slot143;
         if(_loc2_ !== param1)
         {
            this._2113295438slot143 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot143",_loc2_,param1));
         }
      }
      
      public function set slot95(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454566slot95;
         if(_loc2_ !== param1)
         {
            this._899454566slot95 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot95",_loc2_,param1));
         }
      }
      
      public function set slot148(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295433slot148;
         if(_loc2_ !== param1)
         {
            this._2113295433slot148 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot148",_loc2_,param1));
         }
      }
      
      public function set slot96(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454565slot96;
         if(_loc2_ !== param1)
         {
            this._899454565slot96 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot96",_loc2_,param1));
         }
      }
      
      public function set fouthCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._162384312fouthCanvas;
         if(_loc2_ !== param1)
         {
            this._162384312fouthCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fouthCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot121() : ItemSlot
      {
         return this._2113295502slot121;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot119() : ItemSlot
      {
         return this._2113295525slot119;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot123() : ItemSlot
      {
         return this._2113295500slot123;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot124() : ItemSlot
      {
         return this._2113295499slot124;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot125() : ItemSlot
      {
         return this._2113295498slot125;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot126() : ItemSlot
      {
         return this._2113295497slot126;
      }
      
      public function set slot147(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295434slot147;
         if(_loc2_ !== param1)
         {
            this._2113295434slot147 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot147",_loc2_,param1));
         }
      }
      
      public function set slot97(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454564slot97;
         if(_loc2_ !== param1)
         {
            this._899454564slot97 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot97",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot127() : ItemSlot
      {
         return this._2113295496slot127;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot120() : ItemSlot
      {
         return this._2113295503slot120;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot122() : ItemSlot
      {
         return this._2113295501slot122;
      }
      
      public function set slot94(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454567slot94;
         if(_loc2_ !== param1)
         {
            this._899454567slot94 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot94",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot128() : ItemSlot
      {
         return this._2113295495slot128;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot129() : ItemSlot
      {
         return this._2113295494slot129;
      }
      
      public function set slot91(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454570slot91;
         if(_loc2_ !== param1)
         {
            this._899454570slot91 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot91",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BankPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BankPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_BankPanelWatcherSetupUtil");
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
      public function get slot131() : ItemSlot
      {
         return this._2113295471slot131;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot132() : ItemSlot
      {
         return this._2113295470slot132;
      }
      
      public function __tabBtn4_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,5);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot133() : ItemSlot
      {
         return this._2113295469slot133;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot134() : ItemSlot
      {
         return this._2113295468slot134;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot130() : ItemSlot
      {
         return this._2113295472slot130;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot139() : ItemSlot
      {
         return this._2113295463slot139;
      }
      
      public function set slot92(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454569slot92;
         if(_loc2_ !== param1)
         {
            this._899454569slot92 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot92",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot137() : ItemSlot
      {
         return this._2113295465slot137;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot138() : ItemSlot
      {
         return this._2113295464slot138;
      }
      
      public function set slot149(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295432slot149;
         if(_loc2_ !== param1)
         {
            this._2113295432slot149 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot149",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot135() : ItemSlot
      {
         return this._2113295467slot135;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot136() : ItemSlot
      {
         return this._2113295466slot136;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot140() : ItemSlot
      {
         return this._2113295441slot140;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot141() : ItemSlot
      {
         return this._2113295440slot141;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot142() : ItemSlot
      {
         return this._2113295439slot142;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot148() : ItemSlot
      {
         return this._2113295433slot148;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot149() : ItemSlot
      {
         return this._2113295432slot149;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot143() : ItemSlot
      {
         return this._2113295438slot143;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot144() : ItemSlot
      {
         return this._2113295437slot144;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot145() : ItemSlot
      {
         return this._2113295436slot145;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot146() : ItemSlot
      {
         return this._2113295435slot146;
      }
      
      public function set slot146(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295435slot146;
         if(_loc2_ !== param1)
         {
            this._2113295435slot146 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot146",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tnBag() : ViewStack
      {
         return this._110471982tnBag;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot147() : ItemSlot
      {
         return this._2113295434slot147;
      }
      
      public function set slot150(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295410slot150;
         if(_loc2_ !== param1)
         {
            this._2113295410slot150 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot150",_loc2_,param1));
         }
      }
      
      private function addTabEvent() : void
      {
         tnBag.selectedChild.data = 1;
         tnBag.selectedChild.data = 2;
         tnBag.selectedChild.data = 3;
         tnBag.selectedChild.data = 4;
         tnBag.selectedChild.data = 5;
         tnBag.selectedChild.addEventListener(DragEvent.DRAG_DROP,tabDragDropHandler);
         tnBag.selectedChild.addEventListener(DragEvent.DRAG_ENTER,tabDragEnterHandler);
      }
      
      public function set slot98(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454563slot98;
         if(_loc2_ !== param1)
         {
            this._899454563slot98 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot98",_loc2_,param1));
         }
      }
      
      public function set thirdCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._375587425thirdCanvas;
         if(_loc2_ !== param1)
         {
            this._375587425thirdCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thirdCanvas",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         addSlotListener();
         if(!_dm.sInited)
         {
            _core.remote.call("getInitSlot",new Responder(setSlot));
         }
         else
         {
            updateView();
         }
      }
      
      public function set buttonSort(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._358524912buttonSort;
         if(_loc2_ !== param1)
         {
            this._358524912buttonSort = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonSort",_loc2_,param1));
         }
      }
      
      public function set fifthCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1611488785fifthCanvas;
         if(_loc2_ !== param1)
         {
            this._1611488785fifthCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fifthCanvas",_loc2_,param1));
         }
      }
      
      public function set slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function __tabBtn0_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,1);
      }
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonSort() : BasicGlowButton
      {
         return this._358524912buttonSort;
      }
      
      public function set slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set slot7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function set slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot150() : ItemSlot
      {
         return this._2113295410slot150;
      }
   }
}

