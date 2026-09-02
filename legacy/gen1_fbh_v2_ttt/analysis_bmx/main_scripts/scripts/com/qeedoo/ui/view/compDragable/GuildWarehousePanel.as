package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildWarehousePanel extends DragableCanvas implements IBindingClient
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
      
      private var _2113295562slot103:ItemSlot;
      
      private var _110471982tnBag:ViewStack;
      
      private var _899454689slot56:ItemSlot;
      
      private var _899454748slot39:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _899454600slot82:ItemSlot;
      
      private var _899454787slot21:ItemSlot;
      
      private var _109532661slot3:ItemSlot;
      
      private var _899454818slot11:ItemSlot;
      
      public var _GuildWarehousePanel_Canvas1:Canvas;
      
      private var _899454563slot98:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _899454661slot63:ItemSlot;
      
      private var _899454633slot70:ItemSlot;
      
      private var _899454720slot46:ItemSlot;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _2113295527slot117:ItemSlot;
      
      private var _2113295556slot109:ItemSlot;
      
      private var _899454568slot93:ItemSlot;
      
      private var _899454655slot69:ItemSlot;
      
      private var _899454627slot76:ItemSlot;
      
      private var _899454596slot86:ItemSlot;
      
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
      
      private var _899454562slot99:ItemSlot;
      
      private var _899454660slot64:ItemSlot;
      
      private var _899454632slot71:ItemSlot;
      
      private var _899454595slot87:ItemSlot;
      
      private var _899454567slot94:ItemSlot;
      
      private var _899454626slot77:ItemSlot;
      
      private var _2113295528slot116:ItemSlot;
      
      private var _423866690secondTile:Tile;
      
      private var _899454693slot52:ItemSlot;
      
      private var _2113295530slot114:ItemSlot;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _899454780slot28:ItemSlot;
      
      private var _899454724slot42:ItemSlot;
      
      private var _109532663slot5:ItemSlot;
      
      private var _2113295557slot108:ItemSlot;
      
      private var _899454811slot18:ItemSlot;
      
      private var _899454752slot35:ItemSlot;
      
      private var _899454687slot58:ItemSlot;
      
      private var _899454659slot65:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _899454718slot48:ItemSlot;
      
      private var _3648t4:Tile;
      
      private var _899454785slot23:ItemSlot;
      
      private var _899454757slot30:ItemSlot;
      
      private var _899454816slot13:ItemSlot;
      
      private var _2113295564slot101:ItemSlot;
      
      private var _899454779slot29:ItemSlot;
      
      private var _109532659slot1:ItemSlot;
      
      private var _899454631slot72:ItemSlot;
      
      private var _899454566slot95:ItemSlot;
      
      private var _585350987thirdTile:Tile;
      
      private var _899454594slot88:ItemSlot;
      
      private var _109532664slot6:ItemSlot;
      
      private var _899454625slot78:ItemSlot;
      
      private var _899454692slot53:ItemSlot;
      
      private var _899454664slot60:ItemSlot;
      
      private var _899454751slot36:ItemSlot;
      
      private var _899454723slot43:ItemSlot;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _899454810slot19:ItemSlot;
      
      public var _GuildWarehousePanel_Label1:Label;
      
      private var _2113295529slot115:ItemSlot;
      
      private var _2113295531slot113:ItemSlot;
      
      private var _899454599slot83:ItemSlot;
      
      private var _2113295558slot107:ItemSlot;
      
      private var _899454686slot59:ItemSlot;
      
      private var _899454658slot66:ItemSlot;
      
      private var _2113295560slot105:ItemSlot;
      
      private var _899454717slot49:ItemSlot;
      
      private var _899454784slot24:ItemSlot;
      
      private var _899454756slot31:ItemSlot;
      
      private var _899454815slot14:ItemSlot;
      
      private var firstTimeFlag:Boolean = true;
      
      public var _GuildWarehousePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _899454571slot90:ItemSlot;
      
      private var _2113295565slot100:ItemSlot;
      
      private var _899454630slot73:ItemSlot;
      
      private var _899454602slot80:ItemSlot;
      
      private var _109532665slot7:ItemSlot;
      
      private var _2113295525slot119:ItemSlot;
      
      private var _899454593slot89:ItemSlot;
      
      private var _899454565slot96:ItemSlot;
      
      private var _899454624slot79:ItemSlot;
      
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
      
      private var _2113295561slot104:ItemSlot;
      
      private var _899454783slot25:ItemSlot;
      
      private var _899454755slot32:ItemSlot;
      
      private var _2113295559slot106:ItemSlot;
      
      private var _899454814slot15:ItemSlot;
      
      private var _375587425thirdCanvas:Canvas;
      
      private var _109532666slot8:ItemSlot;
      
      private var _899454749slot38:ItemSlot;
      
      private var _899454570slot91:ItemSlot;
      
      private var _899454601slot81:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _899454788slot20:ItemSlot;
      
      private var _899454819slot10:ItemSlot;
      
      private var _162384312fouthCanvas:Canvas;
      
      private var _899454564slot97:ItemSlot;
      
      private var _109532660slot2:ItemSlot;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _2113295526slot118:ItemSlot;
      
      private var _899454690slot55:ItemSlot;
      
      private var _899454662slot62:ItemSlot;
      
      private var _899454721slot45:ItemSlot;
      
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
                  "id":"_GuildWarehousePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.top = "60";
                     this.bottom = "15";
                     this.left = "15";
                     this.right = "15";
                     this.backgroundAlpha = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tnBag",
                           "stylesFactory":function():void
                           {
                              this.top = "3";
                              this.left = "4";
                              this.right = "4";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "creationPolicy":"all",
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_GuildWarehousePanel_Canvas1",
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
                                                this.verticalGap = 1;
                                                this.horizontalGap = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":1,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileSlot",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":501};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":502};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":503};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":504};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":505};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot6",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":506};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot7",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":507};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot8",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":508};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot9",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":509};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot10",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":510};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot11",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":511};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot12",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":512};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot13",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":513};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot14",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":514};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot15",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":515};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot16",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":516};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot17",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":517};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot18",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":518};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot19",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":519};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot20",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":520};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot21",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":521};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot22",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":522};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot23",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":523};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot24",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":524};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot25",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":525};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot26",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":526};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot27",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":527};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot28",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":528};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot29",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":529};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot30",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":530};
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
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"secondTile",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 1;
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
                                                         return {"index":531};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot32",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":532};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot33",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":533};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot34",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":534};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot35",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":535};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot36",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":536};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot37",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":537};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot38",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":538};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot39",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":539};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot40",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":540};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot41",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":541};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot42",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":542};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot43",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":543};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot44",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":544};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot45",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":545};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot46",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":546};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot47",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":547};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot48",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":548};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot49",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":549};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot50",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":550};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot51",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":551};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot52",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":552};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot53",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":553};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot54",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":554};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot55",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":555};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot56",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":556};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot57",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":557};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot58",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":558};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot59",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":559};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot60",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":560};
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
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"thirdTile",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 1;
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
                                                         return {"index":561};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot62",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":562};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot63",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":563};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot64",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":564};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot65",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":565};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot66",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":566};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot67",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":567};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot68",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":568};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot69",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":569};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot70",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":570};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot71",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":571};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot72",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":572};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot73",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":573};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot74",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":574};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot75",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":575};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot76",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":576};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot77",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":577};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot78",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":578};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot79",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":579};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot80",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":580};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot81",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":581};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot82",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":582};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot83",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":583};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot84",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":584};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot85",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":585};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot86",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":586};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot87",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":587};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot88",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":588};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot89",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":589};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot90",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":590};
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
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"t4",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 1;
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
                                                         return {"index":591};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot92",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":592};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot93",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":593};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot94",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":594};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot95",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":595};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot96",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":596};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot97",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":597};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot98",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":598};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot99",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":599};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot100",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":600};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot101",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":601};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot102",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":602};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot103",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":603};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot104",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":604};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot105",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":605};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot106",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":606};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot107",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":607};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot108",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":608};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot109",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":609};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot110",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":610};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot111",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":611};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot112",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":612};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot113",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":613};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot114",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":614};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot115",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":615};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot116",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":616};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot117",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":617};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot118",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":618};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot119",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":619};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"slot120",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"index":620};
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
                           "type":Label,
                           "id":"_GuildWarehousePanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.bottom = "2";
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":169,
                                 "styleName":"DescriptionText",
                                 "x":34
                              };
                           }
                        })]
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
                                 "width":39
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
                                 "enabled":false,
                                 "width":39
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
                                 "enabled":false,
                                 "width":39
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
                                 "width":39
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
      
      public function GuildWarehousePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 270;
         this.height = 280;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildWarehousePanel._watcherSetupUtil = param1;
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
      
      [Bindable(event="propertyChange")]
      public function get slot10() : ItemSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : ItemSlot
      {
         return this._899454818slot11;
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
      
      private function _GuildWarehousePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUILDPANEL_U[17];
         _loc1_ = Language.GUILDWAREHOUSRPANEL_U[0];
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Language.GUILDWAREHOUSRPANEL_U[0];
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Language.GUILDWAREHOUSRPANEL_U[0];
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Language.GUILDWAREHOUSRPANEL_U[0];
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Slot.SLOT_GUILD;
         _loc1_ = Language.GUILDWAREHOUSRPANEL_U[1];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
         _loc1_ = Language.BANKPANEL_U[0];
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : ItemSlot
      {
         return this._899454811slot18;
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
      public function get slot16() : ItemSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : ItemSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : ItemSlot
      {
         return this._899454788slot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot23() : ItemSlot
      {
         return this._899454785slot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot24() : ItemSlot
      {
         return this._899454784slot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot25() : ItemSlot
      {
         return this._899454783slot25;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot26() : ItemSlot
      {
         return this._899454782slot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot28() : ItemSlot
      {
         return this._899454780slot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot29() : ItemSlot
      {
         return this._899454779slot29;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot27() : ItemSlot
      {
         return this._899454781slot27;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot21() : ItemSlot
      {
         return this._899454787slot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot22() : ItemSlot
      {
         return this._899454786slot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get thirdTile() : Tile
      {
         return this._585350987thirdTile;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot31() : ItemSlot
      {
         return this._899454756slot31;
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
      public function get slot36() : ItemSlot
      {
         return this._899454751slot36;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot30() : ItemSlot
      {
         return this._899454757slot30;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot33() : ItemSlot
      {
         return this._899454754slot33;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot37() : ItemSlot
      {
         return this._899454750slot37;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot35() : ItemSlot
      {
         return this._899454752slot35;
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
      public function get slot63() : ItemSlot
      {
         return this._899454661slot63;
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
      
      [Bindable(event="propertyChange")]
      public function get slot64() : ItemSlot
      {
         return this._899454660slot64;
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
      
      public function set slot18(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
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
         var _loc2_:* = undefined;
         firstTimeFlag = true;
         _dm.gsInited = false;
         tabBtn0.enabled = true;
         tabBtn1.enabled = false;
         tabBtn2.enabled = false;
         tabBtn3.enabled = false;
         var _loc1_:int = GamePredef.SLOT_SID_GUILD_BANK[0] + 1;
         while(_loc1_ <= GamePredef.SLOT_SID_GUILD_BANK[4])
         {
            _loc2_ = _core.view.getSlot(_loc1_);
            if(_loc2_ != null)
            {
               _loc2_.clean();
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot69() : ItemSlot
      {
         return this._899454655slot69;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot70() : ItemSlot
      {
         return this._899454633slot70;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot68() : ItemSlot
      {
         return this._899454656slot68;
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
      public function get slot72() : ItemSlot
      {
         return this._899454631slot72;
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
      
      [Bindable(event="propertyChange")]
      public function get slot79() : ItemSlot
      {
         return this._899454624slot79;
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
      
      [Bindable(event="propertyChange")]
      public function get slot80() : ItemSlot
      {
         return this._899454602slot80;
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
      public function get slot87() : ItemSlot
      {
         return this._899454595slot87;
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
      public function get slot82() : ItemSlot
      {
         return this._899454600slot82;
      }
      
      internal function setSlot(param1:Object) : void
      {
         _dm.initGuildSlotData(param1);
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
      public function get slot84() : ItemSlot
      {
         return this._899454598slot84;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot89() : ItemSlot
      {
         return this._899454593slot89;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot90() : ItemSlot
      {
         return this._899454571slot90;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot92() : ItemSlot
      {
         return this._899454569slot92;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot93() : ItemSlot
      {
         return this._899454568slot93;
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
      public function get thirdCanvas() : Canvas
      {
         return this._375587425thirdCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
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
      public function get slot96() : ItemSlot
      {
         return this._899454565slot96;
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
      public function get slot99() : ItemSlot
      {
         return this._899454562slot99;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot94() : ItemSlot
      {
         return this._899454567slot94;
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
      
      public function set slot39(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454748slot39;
         if(_loc2_ !== param1)
         {
            this._899454748slot39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot39",_loc2_,param1));
         }
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
      public function get slot4() : ItemSlot
      {
         return this._109532662slot4;
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
      
      public function set slot40(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454726slot40;
         if(_loc2_ !== param1)
         {
            this._899454726slot40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot40",_loc2_,param1));
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
      
      public function set slot43(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454723slot43;
         if(_loc2_ !== param1)
         {
            this._899454723slot43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot43",_loc2_,param1));
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
      
      public function set slot49(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454717slot49;
         if(_loc2_ !== param1)
         {
            this._899454717slot49 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot49",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ItemSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : ItemSlot
      {
         return this._109532666slot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ItemSlot
      {
         return this._109532667slot9;
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
      
      public function set slot101(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295564slot101;
         if(_loc2_ !== param1)
         {
            this._2113295564slot101 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot101",_loc2_,param1));
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
      
      public function set slot108(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295557slot108;
         if(_loc2_ !== param1)
         {
            this._2113295557slot108 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot108",_loc2_,param1));
         }
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
      
      public function set slot68(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454656slot68;
         if(_loc2_ !== param1)
         {
            this._899454656slot68 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot68",_loc2_,param1));
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
      
      public function set slot63(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454661slot63;
         if(_loc2_ !== param1)
         {
            this._899454661slot63 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot63",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
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
      
      public function set slot112(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295532slot112;
         if(_loc2_ !== param1)
         {
            this._2113295532slot112 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot112",_loc2_,param1));
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
      
      public function set slot110(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113295534slot110;
         if(_loc2_ !== param1)
         {
            this._2113295534slot110 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot110",_loc2_,param1));
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
      
      public function set slot73(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454630slot73;
         if(_loc2_ !== param1)
         {
            this._899454630slot73 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot73",_loc2_,param1));
         }
      }
      
      private function _GuildWarehousePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildWarehousePanel_BasicTitleCanvas1.text = param1;
         },"_GuildWarehousePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDWAREHOUSRPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildWarehousePanel_Canvas1.label = param1;
         },"_GuildWarehousePanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot19.slotType = param1;
         },"slot19.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot20.slotType = param1;
         },"slot20.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot21.slotType = param1;
         },"slot21.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot22.slotType = param1;
         },"slot22.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot23.slotType = param1;
         },"slot23.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot24.slotType = param1;
         },"slot24.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot25.slotType = param1;
         },"slot25.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot26.slotType = param1;
         },"slot26.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot27.slotType = param1;
         },"slot27.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot28.slotType = param1;
         },"slot28.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot29.slotType = param1;
         },"slot29.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot30.slotType = param1;
         },"slot30.slotType");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDWAREHOUSRPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            secondCanvas.label = param1;
         },"secondCanvas.label");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot31.slotType = param1;
         },"slot31.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot32.slotType = param1;
         },"slot32.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot33.slotType = param1;
         },"slot33.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot34.slotType = param1;
         },"slot34.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot35.slotType = param1;
         },"slot35.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot36.slotType = param1;
         },"slot36.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot37.slotType = param1;
         },"slot37.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot38.slotType = param1;
         },"slot38.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot39.slotType = param1;
         },"slot39.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot40.slotType = param1;
         },"slot40.slotType");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot41.slotType = param1;
         },"slot41.slotType");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot42.slotType = param1;
         },"slot42.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot43.slotType = param1;
         },"slot43.slotType");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot44.slotType = param1;
         },"slot44.slotType");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot45.slotType = param1;
         },"slot45.slotType");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot46.slotType = param1;
         },"slot46.slotType");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot47.slotType = param1;
         },"slot47.slotType");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot48.slotType = param1;
         },"slot48.slotType");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot49.slotType = param1;
         },"slot49.slotType");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot50.slotType = param1;
         },"slot50.slotType");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot51.slotType = param1;
         },"slot51.slotType");
         result[53] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot52.slotType = param1;
         },"slot52.slotType");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot53.slotType = param1;
         },"slot53.slotType");
         result[55] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot54.slotType = param1;
         },"slot54.slotType");
         result[56] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot55.slotType = param1;
         },"slot55.slotType");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot56.slotType = param1;
         },"slot56.slotType");
         result[58] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot57.slotType = param1;
         },"slot57.slotType");
         result[59] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot58.slotType = param1;
         },"slot58.slotType");
         result[60] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot59.slotType = param1;
         },"slot59.slotType");
         result[61] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot60.slotType = param1;
         },"slot60.slotType");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDWAREHOUSRPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            thirdCanvas.label = param1;
         },"thirdCanvas.label");
         result[63] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot61.slotType = param1;
         },"slot61.slotType");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot62.slotType = param1;
         },"slot62.slotType");
         result[65] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot63.slotType = param1;
         },"slot63.slotType");
         result[66] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot64.slotType = param1;
         },"slot64.slotType");
         result[67] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot65.slotType = param1;
         },"slot65.slotType");
         result[68] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot66.slotType = param1;
         },"slot66.slotType");
         result[69] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot67.slotType = param1;
         },"slot67.slotType");
         result[70] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot68.slotType = param1;
         },"slot68.slotType");
         result[71] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot69.slotType = param1;
         },"slot69.slotType");
         result[72] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot70.slotType = param1;
         },"slot70.slotType");
         result[73] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot71.slotType = param1;
         },"slot71.slotType");
         result[74] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot72.slotType = param1;
         },"slot72.slotType");
         result[75] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot73.slotType = param1;
         },"slot73.slotType");
         result[76] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot74.slotType = param1;
         },"slot74.slotType");
         result[77] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot75.slotType = param1;
         },"slot75.slotType");
         result[78] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot76.slotType = param1;
         },"slot76.slotType");
         result[79] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot77.slotType = param1;
         },"slot77.slotType");
         result[80] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot78.slotType = param1;
         },"slot78.slotType");
         result[81] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot79.slotType = param1;
         },"slot79.slotType");
         result[82] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot80.slotType = param1;
         },"slot80.slotType");
         result[83] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot81.slotType = param1;
         },"slot81.slotType");
         result[84] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot82.slotType = param1;
         },"slot82.slotType");
         result[85] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot83.slotType = param1;
         },"slot83.slotType");
         result[86] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot84.slotType = param1;
         },"slot84.slotType");
         result[87] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot85.slotType = param1;
         },"slot85.slotType");
         result[88] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot86.slotType = param1;
         },"slot86.slotType");
         result[89] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot87.slotType = param1;
         },"slot87.slotType");
         result[90] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot88.slotType = param1;
         },"slot88.slotType");
         result[91] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot89.slotType = param1;
         },"slot89.slotType");
         result[92] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot90.slotType = param1;
         },"slot90.slotType");
         result[93] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDWAREHOUSRPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fouthCanvas.label = param1;
         },"fouthCanvas.label");
         result[94] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot91.slotType = param1;
         },"slot91.slotType");
         result[95] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot92.slotType = param1;
         },"slot92.slotType");
         result[96] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot93.slotType = param1;
         },"slot93.slotType");
         result[97] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot94.slotType = param1;
         },"slot94.slotType");
         result[98] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot95.slotType = param1;
         },"slot95.slotType");
         result[99] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot96.slotType = param1;
         },"slot96.slotType");
         result[100] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot97.slotType = param1;
         },"slot97.slotType");
         result[101] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot98.slotType = param1;
         },"slot98.slotType");
         result[102] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot99.slotType = param1;
         },"slot99.slotType");
         result[103] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot100.slotType = param1;
         },"slot100.slotType");
         result[104] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot101.slotType = param1;
         },"slot101.slotType");
         result[105] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot102.slotType = param1;
         },"slot102.slotType");
         result[106] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot103.slotType = param1;
         },"slot103.slotType");
         result[107] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot104.slotType = param1;
         },"slot104.slotType");
         result[108] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot105.slotType = param1;
         },"slot105.slotType");
         result[109] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot106.slotType = param1;
         },"slot106.slotType");
         result[110] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot107.slotType = param1;
         },"slot107.slotType");
         result[111] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot108.slotType = param1;
         },"slot108.slotType");
         result[112] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot109.slotType = param1;
         },"slot109.slotType");
         result[113] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot110.slotType = param1;
         },"slot110.slotType");
         result[114] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot111.slotType = param1;
         },"slot111.slotType");
         result[115] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot112.slotType = param1;
         },"slot112.slotType");
         result[116] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot113.slotType = param1;
         },"slot113.slotType");
         result[117] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot114.slotType = param1;
         },"slot114.slotType");
         result[118] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot115.slotType = param1;
         },"slot115.slotType");
         result[119] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot116.slotType = param1;
         },"slot116.slotType");
         result[120] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot117.slotType = param1;
         },"slot117.slotType");
         result[121] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot118.slotType = param1;
         },"slot118.slotType");
         result[122] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot119.slotType = param1;
         },"slot119.slotType");
         result[123] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUILD;
         },function(param1:int):void
         {
            slot120.slotType = param1;
         },"slot120.slotType");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDWAREHOUSRPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildWarehousePanel_Label1.text = param1;
         },"_GuildWarehousePanel_Label1.text");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[127] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[129] = binding;
         return result;
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
      
      [Bindable(event="propertyChange")]
      public function get secondCanvas() : Canvas
      {
         return this._1180008724secondCanvas;
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
      
      public function set slot82(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454600slot82;
         if(_loc2_ !== param1)
         {
            this._899454600slot82 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot82",_loc2_,param1));
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
      
      public function set slot80(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454602slot80;
         if(_loc2_ !== param1)
         {
            this._899454602slot80 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot80",_loc2_,param1));
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
      
      public function set slot86(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454596slot86;
         if(_loc2_ !== param1)
         {
            this._899454596slot86 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot86",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
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
      
      public function set slot89(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454593slot89;
         if(_loc2_ !== param1)
         {
            this._899454593slot89 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot89",_loc2_,param1));
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
      
      public function set slot84(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454598slot84;
         if(_loc2_ !== param1)
         {
            this._899454598slot84 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot84",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         for each(_loc1_ in _dm.gsList)
         {
            if(ToolKit.isBigThan(_loc1_.sid,GamePredef.SLOT_SID_GUILD_BANK[0]) && ToolKit.isSmallOrEqual(_loc1_.sid,GamePredef.SLOT_SID_GUILD_BANK[_core.player.guild.bagSlotNum]))
            {
               _loc3_ = _core.view.getSlot(_loc1_.sid);
               _loc3_.slotData = _loc1_;
               _loc3_.type = _loc1_.type;
               _loc3_.giid = _loc1_.itemId;
               _loc3_.stackNum = _loc1_.stackNum;
            }
         }
         _loc2_ = GamePredef.SLOT_SID_GUILD_BANK[0] + 1;
         while(_loc2_ <= GamePredef.SLOT_SID_GUILD_BANK[_core.player.guild.bagSlotNum])
         {
            _core.view.getSlot(_loc2_).update();
            _loc2_++;
         }
         if(ToolKit.isEqual(_core.player.guild.bagSlotNum,2))
         {
            tabBtn1.enabled = true;
            tabBtn2.enabled = false;
            tabBtn3.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.guild.bagSlotNum,3))
         {
            tabBtn1.enabled = true;
            tabBtn2.enabled = true;
            tabBtn3.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.guild.bagSlotNum,4))
         {
            tabBtn1.enabled = true;
            tabBtn2.enabled = true;
            tabBtn3.enabled = true;
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
      
      public function set slot90(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454571slot90;
         if(_loc2_ !== param1)
         {
            this._899454571slot90 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot90",_loc2_,param1));
         }
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
      public function get slot106() : ItemSlot
      {
         return this._2113295559slot106;
      }
      
      private function tabBtnClick(param1:int) : void
      {
         tnBag.selectedIndex = param1;
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
      
      public function set slot91(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454570slot91;
         if(_loc2_ !== param1)
         {
            this._899454570slot91 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot91",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot103() : ItemSlot
      {
         return this._2113295562slot103;
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
      
      public function set slot95(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454566slot95;
         if(_loc2_ !== param1)
         {
            this._899454566slot95 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot95",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tnBag() : ViewStack
      {
         return this._110471982tnBag;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot110() : ItemSlot
      {
         return this._2113295534slot110;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot111() : ItemSlot
      {
         return this._2113295533slot111;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot112() : ItemSlot
      {
         return this._2113295532slot112;
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
      public function get slot119() : ItemSlot
      {
         return this._2113295525slot119;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot113() : ItemSlot
      {
         return this._2113295531slot113;
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
      public function get slot117() : ItemSlot
      {
         return this._2113295527slot117;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot118() : ItemSlot
      {
         return this._2113295526slot118;
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
      
      [Bindable(event="propertyChange")]
      public function get slot108() : ItemSlot
      {
         return this._2113295557slot108;
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
      public function get slot120() : ItemSlot
      {
         return this._2113295503slot120;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildWarehousePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildWarehousePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuildWarehousePanelWatcherSetupUtil");
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
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(!_dm.gsInited)
         {
            Core.getInstance().remote.call("getInitGuildSlot",new Responder(setSlot));
         }
         else
         {
            updateView();
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
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
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
      
      public function set slot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
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
      
      public function set slot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
   }
}

