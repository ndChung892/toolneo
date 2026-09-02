package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compBattle.PetCmdCanvas;
   import com.qeedoo.ui.view.compBattle.PlayerCmdCanvas;
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
   import mx.controls.RadioButton;
   import mx.controls.ToolTip;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.managers.ToolTipManager;
   import mx.states.AddChild;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BagPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _109532667slot9:ItemSlot;
      
      private var _110471982tnBag:ViewStack;
      
      public var _BagPanel_SetProperty1:SetProperty;
      
      public var _BagPanel_SetProperty2:SetProperty;
      
      public var _BagPanel_SetProperty3:SetProperty;
      
      public var _BagPanel_SetProperty4:SetProperty;
      
      public var _BagPanel_SetProperty5:SetProperty;
      
      public var _BagPanel_SetProperty6:SetProperty;
      
      public var _BagPanel_SetProperty7:SetProperty;
      
      public var _BagPanel_SetProperty8:SetProperty;
      
      public var _BagPanel_SetProperty9:SetProperty;
      
      private var _2113295346slot172:ItemSlot;
      
      private var _2113295375slot164:ItemSlot;
      
      private var _2113295317slot180:ItemSlot;
      
      private var _2113294503slot238:ItemSlot;
      
      private var _899454661slot63:ItemSlot;
      
      private var _899454633slot70:ItemSlot;
      
      private var _2113295527slot117:ItemSlot;
      
      private var _2113295556slot109:ItemSlot;
      
      private var _899454568slot93:ItemSlot;
      
      private var _2113295470slot132:ItemSlot;
      
      private var _2113295441slot140:ItemSlot;
      
      private var _899454720slot46:ItemSlot;
      
      private var _899454627slot76:ItemSlot;
      
      private var _899454596slot86:ItemSlot;
      
      private var _2113294508slot233:ItemSlot;
      
      private var tip:ToolTip;
      
      private var _2113294537slot225:ItemSlot;
      
      private var _1551294566btnTabBag5:BasicGlowButton;
      
      private var _2113294480slot240:ItemSlot;
      
      private var _2113294566slot217:ItemSlot;
      
      private var _899454655slot69:ItemSlot;
      
      private var _2113294595slot209:ItemSlot;
      
      private var _241352513button3:Button;
      
      private var _550778329canvas1:Canvas;
      
      private var _899454786slot22:ItemSlot;
      
      private var _899454817slot12:ItemSlot;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _2113294603slot201:ItemSlot;
      
      private var _1551715891btnTabPet9:BasicGlowButton;
      
      private var _1551715883btnTabPet1:BasicGlowButton;
      
      private var _2113295284slot192:ItemSlot;
      
      private var _2113295402slot158:ItemSlot;
      
      public var _BagPanel_RemoveChild1:RemoveChild;
      
      public var _BagPanel_RemoveChild2:RemoveChild;
      
      public var _BagPanel_RemoveChild3:RemoveChild;
      
      public var _BagPanel_RemoveChild4:RemoveChild;
      
      public var _BagPanel_RemoveChild5:RemoveChild;
      
      public var _BagPanel_RemoveChild6:RemoveChild;
      
      public var _BagPanel_RemoveChild7:RemoveChild;
      
      public var _BagPanel_RemoveChild8:RemoveChild;
      
      public var _BagPanel_RemoveChild9:RemoveChild;
      
      private var _2113294412slot266:ItemSlot;
      
      private var _2113294441slot258:ItemSlot;
      
      public var _BagPanel_Canvas3:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _902311155silver:Button;
      
      private var _315773959seventhCanvas:Canvas;
      
      private var _2113295407slot153:ItemSlot;
      
      private var _2113295436slot145:ItemSlot;
      
      private var _1551715889btnTabPet7:BasicGlowButton;
      
      private var _2113295465slot137:ItemSlot;
      
      private var _2113295494slot129:ItemSlot;
      
      private var _2113294475slot245:ItemSlot;
      
      private var _2113294417slot261:ItemSlot;
      
      private var _2113294446slot253:ItemSlot;
      
      private var _585350987thirdTile:Tile;
      
      private var _79343458radioMoneyBind:RadioButton;
      
      private var _899454692slot53:ItemSlot;
      
      private var _899454664slot60:ItemSlot;
      
      private var _899454751slot36:ItemSlot;
      
      private var _899454723slot43:ItemSlot;
      
      private var _899454810slot19:ItemSlot;
      
      private var _2113295502slot121:ItemSlot;
      
      private var _2113295499slot124:ItemSlot;
      
      private var _2113295531slot113:ItemSlot;
      
      private var _899454599slot83:ItemSlot;
      
      private var _2113295560slot105:ItemSlot;
      
      private var _899454686slot59:ItemSlot;
      
      private var _899454658slot66:ItemSlot;
      
      private var _899454717slot49:ItemSlot;
      
      private var _3437305pet8:ItemSlot;
      
      private var _2113294541slot221:ItemSlot;
      
      private var _2113294570slot213:ItemSlot;
      
      private var _2113295565slot100:ItemSlot;
      
      private var _550778333canvas5:Canvas;
      
      private var _3437299pet2:ItemSlot;
      
      private var _1551294561btnTabBag0:BasicGlowButton;
      
      private var _2113295279slot197:ItemSlot;
      
      private var _2113295311slot186:ItemSlot;
      
      private var _3178592gold:Button;
      
      private var _2113295340slot178:ItemSlot;
      
      private var _1180008724secondCanvas:Canvas;
      
      private var _2113295316slot181:ItemSlot;
      
      public var _BagPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _2113295345slot173:ItemSlot;
      
      private var _2113295374slot165:ItemSlot;
      
      private var _silverLockFlag:* = true;
      
      private var _3437303pet6:ItemSlot;
      
      private var _1551294567btnTabBag6:BasicGlowButton;
      
      private var _899454570slot91:ItemSlot;
      
      public var _BagPanel_AddChild1:AddChild;
      
      public var _BagPanel_AddChild2:AddChild;
      
      public var _BagPanel_AddChild3:AddChild;
      
      private var _2113294502slot239:ItemSlot;
      
      private var _899454601slot81:ItemSlot;
      
      private var _162384312fouthCanvas:Canvas;
      
      private var _899454564slot97:ItemSlot;
      
      private var _109532660slot2:ItemSlot;
      
      private var _2113295379slot160:ItemSlot;
      
      private var extendPetSlotPrice:int = 20;
      
      private var _2113295526slot118:ItemSlot;
      
      private var _2113295440slot141:ItemSlot;
      
      private var _2113294507slot234:ItemSlot;
      
      private var _2113294536slot226:ItemSlot;
      
      private var _2113294565slot218:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _241352512button2:Button;
      
      private var _899454695slot50:ItemSlot;
      
      private var _899454782slot26:ItemSlot;
      
      private var _899454754slot33:ItemSlot;
      
      private var _899454726slot40:ItemSlot;
      
      private var _899454813slot16:ItemSlot;
      
      private var _1801006457firstPetCanvas:Canvas;
      
      private var _110363463tile5:Tile;
      
      private var _899454689slot56:ItemSlot;
      
      private var _1551715884btnTabPet2:BasicGlowButton;
      
      private var _899454748slot39:ItemSlot;
      
      private var _2113294602slot202:ItemSlot;
      
      private var _2113294599slot205:ItemSlot;
      
      private var _241352517button7:Button;
      
      private var _3437301pet4:ItemSlot;
      
      private var _1452349769boxlabel2:BoxLabel;
      
      private var _2113295283slot193:ItemSlot;
      
      private var _2113295401slot159:ItemSlot;
      
      private var _2113294440slot259:ItemSlot;
      
      private var _2113294411slot267:ItemSlot;
      
      private var _109532662slot4:ItemSlot;
      
      private var _2113295406slot154:ItemSlot;
      
      private var _2113295435slot146:ItemSlot;
      
      private var _2113295464slot138:ItemSlot;
      
      private var _2113294416slot262:ItemSlot;
      
      private var _2113294445slot254:ItemSlot;
      
      private var _970616069radioGold:RadioButton;
      
      private var _2113294474slot246:ItemSlot;
      
      private var _899454632slot71:ItemSlot;
      
      private var _899454660slot64:ItemSlot;
      
      private var _899454595slot87:ItemSlot;
      
      private var _899454567slot94:ItemSlot;
      
      private var _110363465tile7:Tile;
      
      private var _899454626slot77:ItemSlot;
      
      private var _2113295469slot133:ItemSlot;
      
      private var _2113295501slot122:ItemSlot;
      
      private var _2113295498slot125:ItemSlot;
      
      private var _2113295530slot114:ItemSlot;
      
      private var _2113294479slot241:ItemSlot;
      
      private var _2113294511slot230:ItemSlot;
      
      private var _2113294540slot222:ItemSlot;
      
      private var _106556290pet14:ItemSlot;
      
      private var _1551294562btnTabBag1:BasicGlowButton;
      
      private var _899454785slot23:ItemSlot;
      
      private var _899454757slot30:ItemSlot;
      
      private var _899454816slot13:ItemSlot;
      
      private var _2113295564slot101:ItemSlot;
      
      private var _550778332canvas4:Canvas;
      
      private var _899454779slot29:ItemSlot;
      
      private var _109532659slot1:ItemSlot;
      
      public var _BagPanel_RemoveChild10:RemoveChild;
      
      public var _BagPanel_RemoveChild11:RemoveChild;
      
      public var _BagPanel_RemoveChild12:RemoveChild;
      
      public var _BagPanel_RemoveChild13:RemoveChild;
      
      public var _BagPanel_RemoveChild14:RemoveChild;
      
      public var _BagPanel_RemoveChild15:RemoveChild;
      
      public var _BagPanel_RemoveChild16:RemoveChild;
      
      public var _BagPanel_RemoveChild17:RemoveChild;
      
      public var _BagPanel_RemoveChild18:RemoveChild;
      
      public var _BagPanel_RemoveChild19:RemoveChild;
      
      private var _2113295278slot198:ItemSlot;
      
      private var _2113295310slot187:ItemSlot;
      
      public var _BagPanel_RemoveChild20:RemoveChild;
      
      public var _BagPanel_RemoveChild21:RemoveChild;
      
      public var _BagPanel_RemoveChild22:RemoveChild;
      
      public var _BagPanel_RemoveChild23:RemoveChild;
      
      public var _BagPanel_RemoveChild24:RemoveChild;
      
      public var _BagPanel_RemoveChild25:RemoveChild;
      
      public var _BagPanel_RemoveChild26:RemoveChild;
      
      public var _BagPanel_RemoveChild27:RemoveChild;
      
      public var _BagPanel_RemoveChild28:RemoveChild;
      
      public var _BagPanel_RemoveChild29:RemoveChild;
      
      private var _109532664slot6:ItemSlot;
      
      public var _BagPanel_RemoveChild30:RemoveChild;
      
      public var _BagPanel_RemoveChild31:RemoveChild;
      
      public var _BagPanel_RemoveChild32:RemoveChild;
      
      public var _BagPanel_RemoveChild33:RemoveChild;
      
      public var _BagPanel_RemoveChild34:RemoveChild;
      
      private var _1551294568btnTabBag7:BasicGlowButton;
      
      private var _2113295315slot182:ItemSlot;
      
      private var _2113295344slot174:ItemSlot;
      
      private var _2113295373slot166:ItemSlot;
      
      private var _110363467tile9:Tile;
      
      private var _106556287pet11:ItemSlot;
      
      private var _2113295410slot150:ItemSlot;
      
      private var _2113295378slot161:ItemSlot;
      
      private var _2113295525slot119:ItemSlot;
      
      private var _106556292pet16:ItemSlot;
      
      private var _1551715885btnTabPet3:BasicGlowButton;
      
      private var _358524912buttonSort:Button;
      
      private var _2113294506slot235:ItemSlot;
      
      private var _899454691slot54:ItemSlot;
      
      private var _2113294564slot219:ItemSlot;
      
      private var _899454663slot61:ItemSlot;
      
      private var _899454750slot37:ItemSlot;
      
      private var _2113294535slot227:ItemSlot;
      
      private var _241352511button1:Button;
      
      private var _899454598slot84:ItemSlot;
      
      private var _899454722slot44:ItemSlot;
      
      private var _899454629slot74:ItemSlot;
      
      private var _899454657slot67:ItemSlot;
      
      private var _2113295559slot106:ItemSlot;
      
      public var _BagPanel_SetStyle10:SetStyle;
      
      public var _BagPanel_SetStyle11:SetStyle;
      
      public var _BagPanel_SetStyle12:SetStyle;
      
      public var _BagPanel_SetStyle13:SetStyle;
      
      public var _BagPanel_SetStyle14:SetStyle;
      
      public var _BagPanel_SetStyle15:SetStyle;
      
      public var _BagPanel_SetStyle16:SetStyle;
      
      public var _BagPanel_SetStyle17:SetStyle;
      
      public var _BagPanel_SetStyle18:SetStyle;
      
      public var _BagPanel_SetStyle19:SetStyle;
      
      private var _2113294569slot214:ItemSlot;
      
      private var _2113294601slot203:ItemSlot;
      
      public var _BagPanel_SetStyle20:SetStyle;
      
      public var _BagPanel_SetStyle21:SetStyle;
      
      private var _2113294598slot206:ItemSlot;
      
      public var _BagPanel_SetStyle24:SetStyle;
      
      public var _BagPanel_SetStyle25:SetStyle;
      
      public var _BagPanel_SetStyle26:SetStyle;
      
      public var _BagPanel_SetStyle27:SetStyle;
      
      public var _BagPanel_SetStyle28:SetStyle;
      
      public var _BagPanel_SetStyle29:SetStyle;
      
      public var _BagPanel_SetStyle23:SetStyle;
      
      private var _109532666slot8:ItemSlot;
      
      public var _BagPanel_SetStyle22:SetStyle;
      
      private var _241352516button6:Button;
      
      public var _BagPanel_SetStyle30:SetStyle;
      
      public var _BagPanel_SetStyle31:SetStyle;
      
      public var _BagPanel_SetStyle32:SetStyle;
      
      public var _BagPanel_SetStyle33:SetStyle;
      
      public var _BagPanel_SetStyle34:SetStyle;
      
      public var _BagPanel_SetStyle35:SetStyle;
      
      public var _BagPanel_SetStyle36:SetStyle;
      
      public var _BagPanel_SetStyle37:SetStyle;
      
      private var _899454788slot20:ItemSlot;
      
      private var _375587425thirdCanvas:Canvas;
      
      public var _BagPanel_SetProperty10:SetProperty;
      
      public var _BagPanel_SetProperty11:SetProperty;
      
      public var _BagPanel_SetProperty12:SetProperty;
      
      public var _BagPanel_SetProperty13:SetProperty;
      
      public var _BagPanel_SetProperty14:SetProperty;
      
      public var _BagPanel_SetProperty15:SetProperty;
      
      public var _BagPanel_SetProperty16:SetProperty;
      
      public var _BagPanel_SetProperty17:SetProperty;
      
      public var _BagPanel_SetProperty18:SetProperty;
      
      public var _BagPanel_SetProperty19:SetProperty;
      
      private var _899454819slot10:ItemSlot;
      
      public var _BagPanel_SetProperty20:SetProperty;
      
      public var _BagPanel_SetProperty21:SetProperty;
      
      public var _BagPanel_SetProperty22:SetProperty;
      
      public var _BagPanel_SetProperty23:SetProperty;
      
      public var _BagPanel_SetProperty24:SetProperty;
      
      public var _BagPanel_SetProperty25:SetProperty;
      
      public var _BagPanel_SetProperty26:SetProperty;
      
      public var _BagPanel_SetProperty28:SetProperty;
      
      public var _BagPanel_SetProperty27:SetProperty;
      
      private var _2043284991btnPetTrade:Button;
      
      public var _BagPanel_SetProperty31:SetProperty;
      
      public var _BagPanel_SetProperty33:SetProperty;
      
      public var _BagPanel_SetProperty34:SetProperty;
      
      public var _BagPanel_SetProperty35:SetProperty;
      
      private var _2113295282slot194:ItemSlot;
      
      public var _BagPanel_SetProperty38:SetProperty;
      
      public var _BagPanel_SetProperty39:SetProperty;
      
      private var _2009195353petTabHBox:HBox;
      
      public var _BagPanel_SetProperty36:SetProperty;
      
      public var _BagPanel_SetProperty37:SetProperty;
      
      public var _BagPanel_SetProperty30:SetProperty;
      
      public var _BagPanel_SetProperty32:SetProperty;
      
      private var _2113295339slot179:ItemSlot;
      
      public var _BagPanel_SetProperty29:SetProperty;
      
      private var _106556289pet13:ItemSlot;
      
      public var _BagPanel_SetProperty40:SetProperty;
      
      public var _BagPanel_SetProperty41:SetProperty;
      
      public var _BagPanel_SetProperty42:SetProperty;
      
      public var _BagPanel_SetProperty43:SetProperty;
      
      public var _BagPanel_SetProperty44:SetProperty;
      
      public var _BagPanel_SetProperty45:SetProperty;
      
      public var _BagPanel_SetProperty46:SetProperty;
      
      public var _BagPanel_SetProperty47:SetProperty;
      
      public var _BagPanel_SetProperty48:SetProperty;
      
      public var _BagPanel_SetProperty49:SetProperty;
      
      private var _2113294410slot268:ItemSlot;
      
      private var _133022078firstTile:Tile;
      
      public var _BagPanel_SetProperty50:SetProperty;
      
      public var _BagPanel_SetProperty51:SetProperty;
      
      public var _BagPanel_SetProperty52:SetProperty;
      
      public var _BagPanel_SetProperty53:SetProperty;
      
      public var _BagPanel_SetProperty54:SetProperty;
      
      public var _BagPanel_SetProperty55:SetProperty;
      
      public var _BagPanel_SetProperty57:SetProperty;
      
      public var _BagPanel_SetProperty58:SetProperty;
      
      public var _BagPanel_SetProperty59:SetProperty;
      
      private var _106556294pet18:ItemSlot;
      
      private var _2113295405slot155:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _BagPanel_SetProperty61:SetProperty;
      
      private var _2113295434slot147:ItemSlot;
      
      public var _BagPanel_SetProperty63:SetProperty;
      
      public var _BagPanel_SetProperty64:SetProperty;
      
      public var _BagPanel_SetProperty65:SetProperty;
      
      public var _BagPanel_SetProperty66:SetProperty;
      
      public var _BagPanel_SetProperty67:SetProperty;
      
      public var _BagPanel_SetProperty68:SetProperty;
      
      public var _BagPanel_SetProperty69:SetProperty;
      
      private var _899454600slot82:ItemSlot;
      
      private var _2113295463slot139:ItemSlot;
      
      public var _BagPanel_SetProperty70:SetProperty;
      
      public var _BagPanel_SetProperty71:SetProperty;
      
      public var _BagPanel_SetProperty72:SetProperty;
      
      public var _BagPanel_SetProperty73:SetProperty;
      
      public var _BagPanel_SetProperty74:SetProperty;
      
      public var _BagPanel_SetProperty76:SetProperty;
      
      public var _BagPanel_SetProperty77:SetProperty;
      
      public var _BagPanel_SetProperty78:SetProperty;
      
      public var _BagPanel_SetProperty79:SetProperty;
      
      private var _2113294473slot247:ItemSlot;
      
      private var _2113294444slot255:ItemSlot;
      
      private var _2113294415slot263:ItemSlot;
      
      private var _899454563slot98:ItemSlot;
      
      private var _1551294563btnTabBag2:BasicGlowButton;
      
      public var _BagPanel_SetProperty80:SetProperty;
      
      public var _BagPanel_SetProperty81:SetProperty;
      
      public var _BagPanel_SetProperty82:SetProperty;
      
      public var _BagPanel_SetProperty83:SetProperty;
      
      private var _2113295439slot142:ItemSlot;
      
      private var _2113295468slot134:ItemSlot;
      
      private var _2113295500slot123:ItemSlot;
      
      private var _2113295497slot126:ItemSlot;
      
      private var _2113294449slot250:ItemSlot;
      
      private var _2113294478slot242:ItemSlot;
      
      private var _2113294510slot231:ItemSlot;
      
      private var _899454694slot51:ItemSlot;
      
      private var _899454781slot27:ItemSlot;
      
      private var _899454753slot34:ItemSlot;
      
      private var _899454725slot41:ItemSlot;
      
      private var _899454812slot17:ItemSlot;
      
      private var _1123890648radioGoldBind:RadioButton;
      
      private var _899454688slot57:ItemSlot;
      
      private var _899454719slot47:ItemSlot;
      
      private var _550778331canvas3:Canvas;
      
      private var _1551294569btnTabBag8:BasicGlowButton;
      
      private var _2113295563slot102:ItemSlot;
      
      private var _2113295534slot110:ItemSlot;
      
      private var _2113294573slot210:ItemSlot;
      
      private var _2113295277slot199:ItemSlot;
      
      private var _goldLockFlag:* = true;
      
      private var _2113295314slot183:ItemSlot;
      
      private var _2113295343slot175:ItemSlot;
      
      private var _2113295372slot167:ItemSlot;
      
      private var _1055511382nineCanvas:Canvas;
      
      private var _1551715886btnTabPet4:BasicGlowButton;
      
      private var _18783867radioMoney:RadioButton;
      
      private var _2113295348slot170:ItemSlot;
      
      private var _2113295377slot162:ItemSlot;
      
      private var _3437306pet9:ItemSlot;
      
      private var _899454631slot72:ItemSlot;
      
      private var _2113294387slot270:ItemSlot;
      
      private var _2113294505slot236:ItemSlot;
      
      private var _2113294534slot228:ItemSlot;
      
      private var _899454594slot88:ItemSlot;
      
      private var _899454566slot95:ItemSlot;
      
      private var _899454625slot78:ItemSlot;
      
      private var _2113295529slot115:ItemSlot;
      
      private var _2113295472slot130:ItemSlot;
      
      private var _2113295558slot107:ItemSlot;
      
      private var _2113294539slot223:ItemSlot;
      
      private var _2113294568slot215:ItemSlot;
      
      private var _2113294600slot204:ItemSlot;
      
      private var _2113294597slot207:ItemSlot;
      
      private var _899454784slot24:ItemSlot;
      
      private var _899454756slot31:ItemSlot;
      
      private var _899454815slot14:ItemSlot;
      
      private var _bagSortTimer:*;
      
      private var _2113295309slot188:ItemSlot;
      
      private var _3437304pet7:ItemSlot;
      
      private var _2113295281slot195:ItemSlot;
      
      private var _1551294564btnTabBag3:BasicGlowButton;
      
      private var _3437298pet1:ItemSlot;
      
      private var _2113295404slot156:ItemSlot;
      
      private var _2113295286slot190:ItemSlot;
      
      private var _2113295433slot148:ItemSlot;
      
      private var _1671461938sixthCanvas:Canvas;
      
      private var _2113294414slot264:ItemSlot;
      
      private var _2050561200bagtitle:BasicTitleCanvas;
      
      private var _2113294443slot256:ItemSlot;
      
      private var _110363462tile4:Tile;
      
      private var _2113294472slot248:ItemSlot;
      
      private var _2113295409slot151:ItemSlot;
      
      private var _2113295438slot143:ItemSlot;
      
      private var _2113295467slot135:ItemSlot;
      
      private var _899454690slot55:ItemSlot;
      
      private var _899454662slot62:ItemSlot;
      
      private var _2113295496slot127:ItemSlot;
      
      private var _899454721slot45:ItemSlot;
      
      private var _2113294448slot251:ItemSlot;
      
      private var _2113294477slot243:ItemSlot;
      
      private var _899454597slot85:ItemSlot;
      
      private var _899454569slot92:ItemSlot;
      
      private var _899454656slot68:ItemSlot;
      
      private var _899454628slot75:ItemSlot;
      
      private var _3437302pet5:ItemSlot;
      
      private var _550778330canvas2:Canvas;
      
      private var _2113295533slot111:ItemSlot;
      
      private var _2113295562slot103:ItemSlot;
      
      private var _2113294572slot211:ItemSlot;
      
      private var _899454787slot21:ItemSlot;
      
      private var _109532661slot3:ItemSlot;
      
      private var _899454818slot11:ItemSlot;
      
      private var _1551715887btnTabPet5:BasicGlowButton;
      
      public var _BagPanel_SetStyle1:SetStyle;
      
      public var _BagPanel_SetStyle2:SetStyle;
      
      public var _BagPanel_SetStyle3:SetStyle;
      
      public var _BagPanel_SetStyle4:SetStyle;
      
      public var _BagPanel_SetStyle6:SetStyle;
      
      public var _BagPanel_SetStyle8:SetStyle;
      
      public var _BagPanel_SetStyle5:SetStyle;
      
      public var _BagPanel_SetStyle7:SetStyle;
      
      public var _BagPanel_SetStyle9:SetStyle;
      
      private var _1481837455eighthCanvas:Canvas;
      
      private var _110363459tile1:Tile;
      
      private var _2113295313slot184:ItemSlot;
      
      private var _2113295342slot176:ItemSlot;
      
      private var _110363464tile6:Tile;
      
      private var _2113295371slot168:ItemSlot;
      
      private var _2113294409slot269:ItemSlot;
      
      private var _3437300pet3:ItemSlot;
      
      private var _2113295347slot171:ItemSlot;
      
      private var _2113295376slot163:ItemSlot;
      
      private var _1452349770boxlabel3:BoxLabel;
      
      private var _899454562slot99:ItemSlot;
      
      private var _2113294504slot237:ItemSlot;
      
      private var _2113294533slot229:ItemSlot;
      
      private var _2113295528slot116:ItemSlot;
      
      private var _423866690secondTile:Tile;
      
      private var _2113295471slot131:ItemSlot;
      
      private var _2113295557slot108:ItemSlot;
      
      private var _899454780slot28:ItemSlot;
      
      private var _899454752slot35:ItemSlot;
      
      private var _899454724slot42:ItemSlot;
      
      private var _109532663slot5:ItemSlot;
      
      private var _899454693slot52:ItemSlot;
      
      private var _2113294509slot232:ItemSlot;
      
      private var _899454811slot18:ItemSlot;
      
      private var _2113294538slot224:ItemSlot;
      
      private var _2113294567slot216:ItemSlot;
      
      private var _2113294596slot208:ItemSlot;
      
      private var _899454687slot58:ItemSlot;
      
      private var _899454659slot65:ItemSlot;
      
      private var _899454718slot48:ItemSlot;
      
      private var _241352514button4:Button;
      
      private var _currentPage:int = 1;
      
      private var _2113294604slot200:ItemSlot;
      
      private var _1551294565btnTabBag4:BasicGlowButton;
      
      private var _110363466tile8:Tile;
      
      private var _2113295308slot189:ItemSlot;
      
      private var _106556286pet10:ItemSlot;
      
      private var _2113295280slot196:ItemSlot;
      
      private var _1452349771boxlabel4:BoxLabel;
      
      private var _106556291pet15:ItemSlot;
      
      private var petList:Object;
      
      private var _2113295285slot191:ItemSlot;
      
      private var _2113295403slot157:ItemSlot;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _2113295432slot149:ItemSlot;
      
      private var _1551715890btnTabPet8:BasicGlowButton;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _2113294471slot249:ItemSlot;
      
      private var _1551715882btnTabPet0:BasicGlowButton;
      
      private var _2113294413slot265:ItemSlot;
      
      private var _2113294442slot257:ItemSlot;
      
      private var _899454571slot90:ItemSlot;
      
      private var _899454630slot73:ItemSlot;
      
      private var _899454602slot80:ItemSlot;
      
      private var _109532665slot7:ItemSlot;
      
      private var _2113295437slot144:ItemSlot;
      
      private var _2113295408slot152:ItemSlot;
      
      private var _2113295495slot128:ItemSlot;
      
      private var _899454593slot89:ItemSlot;
      
      private var _899454565slot96:ItemSlot;
      
      private var _2113295466slot136:ItemSlot;
      
      private var _2113294418slot260:ItemSlot;
      
      private var _899454624slot79:ItemSlot;
      
      private var _2113294447slot252:ItemSlot;
      
      private var _2113294476slot244:ItemSlot;
      
      private var _1120322596basicglowbutton1:BasicGlowButton;
      
      private var _2113295503slot120:ItemSlot;
      
      private var _1551715888btnTabPet6:BasicGlowButton;
      
      private var _2113295532slot112:ItemSlot;
      
      private var _2113295561slot104:ItemSlot;
      
      private var _899454783slot25:ItemSlot;
      
      private var _899454755slot32:ItemSlot;
      
      private var _899454814slot15:ItemSlot;
      
      private var _2113294542slot220:ItemSlot;
      
      private var _2113294571slot212:ItemSlot;
      
      private var _1452349772boxlabel5:BoxLabel;
      
      private var _106556288pet12:ItemSlot;
      
      private var _899454749slot38:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _106556293pet17:ItemSlot;
      
      private var _550778334canvas6:Canvas;
      
      private var _1611488785fifthCanvas:Canvas;
      
      private var _2113295341slot177:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":278,
               "height":470,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"bagtitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas5",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":60,
                        "height":455,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"canvas6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"tnBag",
                                    "events":{"creationComplete":"__tnBag_creationComplete"},
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "focusEnabled":false,
                                          "height":195,
                                          "creationPolicy":"all",
                                          "percentWidth":100,
                                          "x":5,
                                          "y":5,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_BagPanel_Canvas3",
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
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot1",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2101};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot2",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2102};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot3",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2103};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot4",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2104};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot5",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2105};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot6",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2106};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot7",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2107};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot8",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2108};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot9",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2109};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot10",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2110};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot11",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2111};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot12",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2112};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot13",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2113};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot14",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2114};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot15",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2115};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot16",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2116};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot17",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2117};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot18",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2118};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot19",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2119};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot20",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2120};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot21",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2121};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot22",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2122};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot23",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2123};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot24",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2124};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot25",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2125};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot26",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2126};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot27",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2127};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot28",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2128};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot29",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2129};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot30",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2130};
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
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot31",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2131};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot32",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2132};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot33",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2133};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot34",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2134};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot35",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2135};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot36",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2136};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot37",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2137};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot38",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2138};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot39",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2139};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot40",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2140};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot41",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2141};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot42",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2142};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot43",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2143};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot44",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2144};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot45",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2145};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot46",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2146};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot47",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2147};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot48",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2148};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot49",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2149};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot50",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2150};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot51",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2151};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot52",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2152};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot53",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2153};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot54",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2154};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot55",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2155};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot56",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2156};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot57",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2157};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot58",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2158};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot59",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2159};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot60",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2160};
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
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot61",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2161};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot62",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2162};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot63",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2163};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot64",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2164};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot65",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2165};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot66",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2166};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot67",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2167};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot68",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2168};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot69",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2169};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot70",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2170};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot71",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2171};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot72",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2172};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot73",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2173};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot74",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2174};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot75",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2175};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot76",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2176};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot77",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2177};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot78",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2178};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot79",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2179};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot80",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2180};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot81",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2181};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot82",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2182};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot83",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2183};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot84",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2184};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot85",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2185};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot86",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2186};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot87",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2187};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot88",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2188};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot89",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2189};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot90",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2190};
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
                                                      "id":"tile4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 4;
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot91",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2191};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot92",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2192};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot93",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2193};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot94",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2194};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot95",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2195};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot96",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2196};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot97",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2197};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot98",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2198};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot99",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2199};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot100",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2200};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot101",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2201};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot102",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2202};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot103",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2203};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot104",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2204};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot105",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2205};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot106",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2206};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot107",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2207};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot108",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2208};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot109",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2209};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot110",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2210};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot111",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2211};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot112",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2212};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot113",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2213};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot114",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2214};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot115",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2215};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot116",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2216};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot117",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2217};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot118",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2218};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot119",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2219};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot120",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2220};
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
                                                      "id":"tile5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 4;
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot121",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2221};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot122",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2222};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot123",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2223};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot124",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2224};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot125",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2225};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot126",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2226};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot127",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2227};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot128",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2228};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot129",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2229};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot130",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2230};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot131",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2231};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot132",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2232};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot133",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2233};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot134",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2234};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot135",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2235};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot136",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2236};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot137",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2237};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot138",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2238};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot139",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2239};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot140",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2240};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot141",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2241};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot142",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2242};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot143",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2243};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot144",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2244};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot145",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2245};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot146",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2246};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot147",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2247};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot148",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2248};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot149",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2249};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot150",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2250};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"sixthCanvas",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "enabled":false,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Tile,
                                                      "id":"tile6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 4;
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot151",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2251};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot152",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2252};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot153",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2253};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot154",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2254};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot155",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2255};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot156",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2256};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot157",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2257};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot158",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2258};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot159",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2259};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot160",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2260};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot161",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2261};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot162",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2262};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot163",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2263};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot164",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2264};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot165",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2265};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot166",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2266};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot167",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2267};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot168",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2268};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot169",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2269};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot170",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2270};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot171",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2271};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot172",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2272};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot173",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2273};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot174",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2274};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot175",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2275};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot176",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2276};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot177",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2277};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot178",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2278};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot179",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2279};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot180",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2280};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"seventhCanvas",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "enabled":false,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Tile,
                                                      "id":"tile7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 4;
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot181",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2281};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot182",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2282};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot183",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2283};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot184",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2284};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot185",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2285};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot186",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2286};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot187",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2287};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot188",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2288};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot189",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2289};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot190",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2290};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot191",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2291};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot192",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2292};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot193",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2293};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot194",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2294};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot195",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2295};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot196",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2296};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot197",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2297};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot198",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2298};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot199",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2299};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot200",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2300};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot201",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2301};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot202",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2302};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot203",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2303};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot204",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2304};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot205",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2305};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot206",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2306};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot207",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2307};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot208",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2308};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot209",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2309};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot210",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2310};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"eighthCanvas",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "enabled":true,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Tile,
                                                      "id":"tile8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 4;
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot211",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2311};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot212",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2312};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot213",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2313};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot214",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2314};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot215",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2315};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot216",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2316};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot217",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2317};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot218",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2318};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot219",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2319};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot220",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2320};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot221",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2321};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot222",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2322};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot223",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2323};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot224",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2324};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot225",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2325};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot226",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2326};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot227",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2327};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot228",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2328};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot229",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2329};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot230",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2330};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot231",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2331};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot232",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2332};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot233",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2333};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot234",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2334};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot235",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2335};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot236",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2336};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot237",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2337};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot238",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2338};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot239",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2339};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot240",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2340};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"nineCanvas",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":"宠物装备",
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "enabled":true,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Tile,
                                                      "id":"tile9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 4;
                                                         this.horizontalGap = 4;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":6,
                                                            "y":1,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "direction":"horizontal",
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "styleName":"TileBagItem",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot241",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2341};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot242",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2342};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot243",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2343};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot244",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2344};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot245",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2345};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot246",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2346};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot247",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2347};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot248",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2348};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot249",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2349};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot250",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2350};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot251",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2351};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot252",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2352};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot253",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2353};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot254",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2354};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot255",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2355};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot256",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2356};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot257",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2357};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot258",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2358};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot259",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2359};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot260",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2360};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot261",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2361};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot262",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2362};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot263",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2363};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot264",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2364};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot265",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2365};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot266",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2366};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot267",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2367};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot268",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2368};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot269",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2369};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"slot270",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"index":2370};
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
                           "type":Button,
                           "id":"button1",
                           "events":{"click":"__button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":1,
                                 "y":304,
                                 "width":32,
                                 "height":32,
                                 "styleName":"BtnBagUse"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button2",
                           "events":{"click":"__button2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":43,
                                 "y":304,
                                 "width":32,
                                 "height":32,
                                 "styleName":"BtnBagDrop"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button3",
                           "events":{"click":"__button3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":84,
                                 "y":304,
                                 "width":32,
                                 "height":32,
                                 "styleName":"BtnBagDivide"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"button4",
                           "events":{"click":"__button4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":304,
                                 "width":32,
                                 "height":32,
                                 "styleName":"BtnBagRepair"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnPetTrade",
                           "events":{"click":"__btnPetTrade_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":304,
                                 "width":32,
                                 "height":32,
                                 "styleName":"BtnBagBind"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"buttonSort",
                           "events":{"click":"__buttonSort_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":205,
                                 "y":304,
                                 "width":32,
                                 "height":32,
                                 "styleName":"BtnBagSort"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"petTabHBox",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":-10,
                                 "y":205,
                                 "height":19,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet0",
                                    "events":{"click":"__btnTabPet0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet1",
                                    "events":{"click":"__btnTabPet1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet2",
                                    "events":{"click":"__btnTabPet2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet3",
                                    "events":{"click":"__btnTabPet3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet4",
                                    "events":{"click":"__btnTabPet4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet5",
                                    "events":{"click":"__btnTabPet5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet6",
                                    "events":{"click":"__btnTabPet6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet7",
                                    "events":{"click":"__btnTabPet7_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet8",
                                    "events":{"click":"__btnTabPet8_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnTabPet9",
                                    "events":{"click":"__btnTabPet9_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "styleName":"HorizontalTab",
                                          "width":25
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"firstPetCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":248,
                                 "height":120,
                                 "y":223,
                                 "styleName":"CanvasBorder",
                                 "focusEnabled":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Tile,
                                    "id":"tile1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 4;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":11,
                                          "y":3,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "direction":"horizontal",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "styleName":"TileBagItem",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet1",
                                             "events":{
                                                "click":"__pet1_click",
                                                "mouseDown":"__pet1_mouseDown",
                                                "rollOver":"__pet1_rollOver",
                                                "rollOut":"__pet1_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet2",
                                             "events":{
                                                "click":"__pet2_click",
                                                "mouseDown":"__pet2_mouseDown",
                                                "rollOver":"__pet2_rollOver",
                                                "rollOut":"__pet2_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet3",
                                             "events":{
                                                "click":"__pet3_click",
                                                "mouseDown":"__pet3_mouseDown",
                                                "rollOver":"__pet3_rollOver",
                                                "rollOut":"__pet3_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet4",
                                             "events":{
                                                "click":"__pet4_click",
                                                "mouseDown":"__pet4_mouseDown",
                                                "rollOver":"__pet4_rollOver",
                                                "rollOut":"__pet4_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet5",
                                             "events":{
                                                "click":"__pet5_click",
                                                "mouseDown":"__pet5_mouseDown",
                                                "rollOver":"__pet5_rollOver",
                                                "rollOut":"__pet5_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet6",
                                             "events":{
                                                "click":"__pet6_click",
                                                "mouseDown":"__pet6_mouseDown",
                                                "rollOver":"__pet6_rollOver",
                                                "rollOut":"__pet6_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet7",
                                             "events":{
                                                "click":"__pet7_click",
                                                "mouseDown":"__pet7_mouseDown",
                                                "rollOver":"__pet7_rollOver",
                                                "rollOut":"__pet7_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet8",
                                             "events":{
                                                "click":"__pet8_click",
                                                "mouseDown":"__pet8_mouseDown",
                                                "rollOver":"__pet8_rollOver",
                                                "rollOut":"__pet8_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet9",
                                             "events":{
                                                "click":"__pet9_click",
                                                "mouseDown":"__pet9_mouseDown",
                                                "rollOver":"__pet9_rollOver",
                                                "rollOut":"__pet9_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet10",
                                             "events":{
                                                "click":"__pet10_click",
                                                "mouseDown":"__pet10_mouseDown",
                                                "rollOver":"__pet10_rollOver",
                                                "rollOut":"__pet10_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet11",
                                             "events":{
                                                "click":"__pet11_click",
                                                "mouseDown":"__pet11_mouseDown",
                                                "rollOver":"__pet11_rollOver",
                                                "rollOut":"__pet11_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet12",
                                             "events":{
                                                "click":"__pet12_click",
                                                "mouseDown":"__pet12_mouseDown",
                                                "rollOver":"__pet12_rollOver",
                                                "rollOut":"__pet12_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet13",
                                             "events":{
                                                "click":"__pet13_click",
                                                "mouseDown":"__pet13_mouseDown",
                                                "rollOver":"__pet13_rollOver",
                                                "rollOut":"__pet13_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet14",
                                             "events":{
                                                "click":"__pet14_click",
                                                "mouseDown":"__pet14_mouseDown",
                                                "rollOver":"__pet14_rollOver",
                                                "rollOut":"__pet14_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet15",
                                             "events":{
                                                "click":"__pet15_click",
                                                "mouseDown":"__pet15_mouseDown",
                                                "rollOver":"__pet15_rollOver",
                                                "rollOut":"__pet15_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet16",
                                             "events":{
                                                "click":"__pet16_click",
                                                "mouseDown":"__pet16_mouseDown",
                                                "rollOver":"__pet16_rollOver",
                                                "rollOut":"__pet16_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet17",
                                             "events":{
                                                "click":"__pet17_click",
                                                "mouseDown":"__pet17_mouseDown",
                                                "rollOver":"__pet17_rollOver",
                                                "rollOut":"__pet17_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"pet18",
                                             "events":{
                                                "click":"__pet18_click",
                                                "mouseDown":"__pet18_mouseDown",
                                                "rollOver":"__pet18_rollOver",
                                                "rollOut":"__pet18_rollOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
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
                  "type":BasicGlowButton,
                  "id":"btnTabBag0",
                  "events":{
                     "dragDrop":"__btnTabBag0_dragDrop",
                     "dragEnter":"__btnTabBag0_dragEnter",
                     "click":"__btnTabBag0_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":40,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag1",
                  "events":{
                     "dragDrop":"__btnTabBag1_dragDrop",
                     "dragEnter":"__btnTabBag1_dragEnter",
                     "click":"__btnTabBag1_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":40,
                        "y":40,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag2",
                  "events":{
                     "dragDrop":"__btnTabBag2_dragDrop",
                     "dragEnter":"__btnTabBag2_dragEnter",
                     "click":"__btnTabBag2_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":65,
                        "y":40,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag3",
                  "events":{
                     "dragDrop":"__btnTabBag3_dragDrop",
                     "dragEnter":"__btnTabBag3_dragEnter",
                     "click":"__btnTabBag3_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":90,
                        "y":40,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag4",
                  "events":{
                     "dragDrop":"__btnTabBag4_dragDrop",
                     "dragEnter":"__btnTabBag4_dragEnter",
                     "click":"__btnTabBag4_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":115,
                        "y":40,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag5",
                  "events":{
                     "dragDrop":"__btnTabBag5_dragDrop",
                     "dragEnter":"__btnTabBag5_dragEnter",
                     "click":"__btnTabBag5_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":140,
                        "y":40,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag6",
                  "events":{
                     "dragDrop":"__btnTabBag6_dragDrop",
                     "dragEnter":"__btnTabBag6_dragEnter",
                     "click":"__btnTabBag6_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":165,
                        "y":40,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag7",
                  "events":{
                     "dragDrop":"__btnTabBag7_dragDrop",
                     "dragEnter":"__btnTabBag7_dragEnter",
                     "click":"__btnTabBag7_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":190,
                        "y":40,
                        "enabled":true,
                        "styleName":"HorizontalTab",
                        "width":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnTabBag8",
                  "events":{
                     "dragDrop":"__btnTabBag8_dragDrop",
                     "dragEnter":"__btnTabBag8_dragEnter",
                     "click":"__btnTabBag8_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":228,
                        "y":40,
                        "enabled":true,
                        "styleName":"HorizontalTab",
                        "width":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"basicglowbutton1",
                  "events":{"click":"__basicglowbutton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":262,
                        "y":67,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":298,
                        "height":20,
                        "width":214,
                        "x":12,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"button7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "styleName":"SilverBinded",
                                 "enabled":false,
                                 "width":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"radioMoneyBind",
                           "events":{"click":"__radioMoneyBind_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":-1,
                                 "groupName":"currencyRadioGroup1",
                                 "x":158
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"boxlabel3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":45,
                                 "y":0,
                                 "width":92,
                                 "height":18
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":319,
                        "height":20,
                        "width":214,
                        "x":11,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"silver",
                           "events":{"click":"__silver_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":319,
                                 "styleName":"SilverLocked"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"radioMoney",
                           "events":{"click":"__radioMoney_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "groupName":"currencyRadioGroup1",
                                 "x":159,
                                 "selected":true,
                                 "y":-2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"boxlabel4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":45,
                                 "y":0,
                                 "width":92,
                                 "height":18
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":340,
                        "height":20,
                        "width":214,
                        "x":11,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"button6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":20,
                                 "y":340,
                                 "styleName":"GoldBinded",
                                 "enabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"boxlabel5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":45,
                                 "y":0,
                                 "width":92,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"radioGoldBind",
                           "events":{"click":"__radioGoldBind_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":-1,
                                 "groupName":"currencyRadioGroup2",
                                 "x":159,
                                 "width":26.2
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":361,
                        "height":20,
                        "width":215,
                        "x":11,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"gold",
                           "events":{"click":"__gold_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":361,
                                 "styleName":"GoldLocked"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"boxlabel2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":45,
                                 "y":0,
                                 "width":92,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"radioGold",
                           "events":{"click":"__radioGold_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":-2,
                                 "groupName":"currencyRadioGroup2",
                                 "x":159
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _2113295370slot169:ItemSlot;
      
      private var _2113295312slot185:ItemSlot;
      
      public function BagPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 278;
         this.height = 470;
         this.styleName = "StandardContent";
         this.currentState = "normal";
         this.cacheAsBitmap = false;
         this.states = [_BagPanel_State1_c(),_BagPanel_State2_c(),_BagPanel_State3_c()];
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BagPanel._watcherSetupUtil = param1;
      }
      
      private function downHandler(param1:Event) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(currentState == "normal")
         {
            _loc2_.movable = true;
            return;
         }
         _loc2_.movable = false;
         if(_loc2_.type != GamePredef.TBL_ITEM_INSTANCE)
         {
            _core.sysMsg(Language.BAGPANEL_S[6]);
            return;
         }
         var _loc3_:Object = _core.getTemplateData(_loc2_.type,_loc2_.giid);
         if(Boolean(_loc3_) && _loc3_.skillId <= 0)
         {
            _core.sysMsg(Language.BAGPANEL_S[7]);
            return;
         }
         _core.item = _loc2_.slotData;
         _core.view.showSelect();
         param1.stopImmediatePropagation();
         visible = false;
      }
      
      private function _BagPanel_SetProperty63_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty63 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty63",_BagPanel_SetProperty63);
         return _loc1_;
      }
      
      private function _BagPanel_RemoveChild25_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild25 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild25",_BagPanel_RemoveChild25);
         return _loc1_;
      }
      
      public function __btnTabPet9_click(param1:MouseEvent) : void
      {
         setPetTab(9);
      }
      
      private function showTip(param1:MouseEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.styleName == "PetSlotLocked" && !_core.battleServer.inBattleServer)
         {
            tip = ToolTipManager.createToolTip(Language.BAGPANEL_S[26],param1.stageX + 10,param1.stageY + 10) as ToolTip;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gold() : Button
      {
         return this._3178592gold;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag7() : BasicGlowButton
      {
         return this._1551294568btnTabBag7;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag1() : BasicGlowButton
      {
         return this._1551294562btnTabBag1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag3() : BasicGlowButton
      {
         return this._1551294564btnTabBag3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag5() : BasicGlowButton
      {
         return this._1551294566btnTabBag5;
      }
      
      private function _BagPanel_RemoveChild9_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild9 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild9",_BagPanel_RemoveChild9);
         return _loc1_;
      }
      
      public function __btnTabBag5_click(param1:MouseEvent) : void
      {
         setBagTab(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag2() : BasicGlowButton
      {
         return this._1551294563btnTabBag2;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag4() : BasicGlowButton
      {
         return this._1551294565btnTabBag4;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag6() : BasicGlowButton
      {
         return this._1551294567btnTabBag6;
      }
      
      public function __pet7_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag0() : BasicGlowButton
      {
         return this._1551294561btnTabBag0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabBag8() : BasicGlowButton
      {
         return this._1551294569btnTabBag8;
      }
      
      private function _BagPanel_SetStyle3_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle3 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle3",_BagPanel_SetStyle3);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty50_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty50 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty50",_BagPanel_SetProperty50);
         return _loc1_;
      }
      
      private function petClear() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= GamePredef.MAX_PET_PER_PAGE)
         {
            this["pet" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      public function __pet8_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get thirdTile() : Tile
      {
         return this._585350987thirdTile;
      }
      
      private function _BagPanel_RemoveChild12_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild12 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild12",_BagPanel_RemoveChild12);
         return _loc1_;
      }
      
      public function set gold(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3178592gold;
         if(_loc2_ !== param1)
         {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",_loc2_,param1));
         }
      }
      
      public function set btnTabBag0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294561btnTabBag0;
         if(_loc2_ !== param1)
         {
            this._1551294561btnTabBag0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag0",_loc2_,param1));
         }
      }
      
      private function doUnlockMoneySilver(param1:Boolean) : void
      {
         if(param1)
         {
            silverLockFlag = false;
         }
      }
      
      public function set btnTabBag2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294563btnTabBag2;
         if(_loc2_ !== param1)
         {
            this._1551294563btnTabBag2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag2",_loc2_,param1));
         }
      }
      
      public function set btnTabBag4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294565btnTabBag4;
         if(_loc2_ !== param1)
         {
            this._1551294565btnTabBag4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag4",_loc2_,param1));
         }
      }
      
      public function set btnTabBag6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294567btnTabBag6;
         if(_loc2_ !== param1)
         {
            this._1551294567btnTabBag6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag6",_loc2_,param1));
         }
      }
      
      public function set btnTabBag3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294564btnTabBag3;
         if(_loc2_ !== param1)
         {
            this._1551294564btnTabBag3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag3",_loc2_,param1));
         }
      }
      
      public function set btnTabBag7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294568btnTabBag7;
         if(_loc2_ !== param1)
         {
            this._1551294568btnTabBag7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag7",_loc2_,param1));
         }
      }
      
      public function set btnTabBag5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294566btnTabBag5;
         if(_loc2_ !== param1)
         {
            this._1551294566btnTabBag5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag5",_loc2_,param1));
         }
      }
      
      public function __pet5_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_SetProperty72_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty72 = _loc1_;
         _loc1_.name = "text";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty72",_BagPanel_SetProperty72);
         return _loc1_;
      }
      
      public function showPet() : void
      {
         currentState = "pet";
         show();
      }
      
      private function _BagPanel_SetProperty19_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty19 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 14;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty19",_BagPanel_SetProperty19);
         return _loc1_;
      }
      
      private function _BagPanel_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "item";
         _loc1_.overrides = [_BagPanel_SetProperty59_i(),_BagPanel_SetProperty60_c(),_BagPanel_SetProperty61_i(),_BagPanel_RemoveChild1_i(),_BagPanel_RemoveChild2_i(),_BagPanel_RemoveChild3_i(),_BagPanel_RemoveChild4_i(),_BagPanel_RemoveChild5_i(),_BagPanel_RemoveChild6_i(),_BagPanel_RemoveChild7_i(),_BagPanel_RemoveChild8_i(),_BagPanel_RemoveChild9_i(),_BagPanel_RemoveChild10_i(),_BagPanel_RemoveChild11_i(),_BagPanel_SetProperty62_c(),_BagPanel_SetProperty63_i(),_BagPanel_SetStyle33_i(),_BagPanel_SetProperty64_i(),_BagPanel_SetProperty65_i(),_BagPanel_SetStyle34_i(),_BagPanel_SetProperty66_i(),_BagPanel_SetStyle35_i(),_BagPanel_SetStyle36_i(),_BagPanel_SetProperty67_i(),_BagPanel_SetStyle37_i(),_BagPanel_SetProperty68_i(),_BagPanel_SetProperty69_i(),_BagPanel_SetProperty70_i(),_BagPanel_SetProperty71_i()];
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc3_:ConsumPanel = null;
         var _loc4_:int = 0;
         var _loc2_:String = "";
         super.visible = param1;
         if(param1)
         {
            if(firstTimeFlag)
            {
               initView();
               firstTimeFlag = false;
            }
            petInit();
            if(Boolean(_core.player) && Boolean(!_core.player.enoughBag(1)) && fouthCanvas.enabled == false)
            {
               _loc3_ = ConsumPanel(_core.view.getUI(ViewManager.MAIN_CONSUMP));
               _loc4_ = int(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][325].gold);
               _loc2_ = Language.BAGPANEL_S[0];
               _loc3_.msg = _loc2_.replace("{gole}",_loc4_);
               _loc3_.useAble = true;
               _loc3_.closeWith(this);
               _loc3_.itemData = {
                  "type":29,
                  "id":325
               };
               if(this.x <= 400)
               {
                  _loc3_.x = this.x + 230;
               }
               else
               {
                  _loc3_.x = this.x - 200;
               }
               _loc3_.y = this.y + 100;
            }
         }
         else
         {
            currentState = "normal";
         }
      }
      
      public function set btnTabBag8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294569btnTabBag8;
         if(_loc2_ !== param1)
         {
            this._1551294569btnTabBag8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag8",_loc2_,param1));
         }
      }
      
      public function __pet11_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      public function __btnTabBag4_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,5);
      }
      
      private function _BagPanel_RemoveChild34_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild34 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild34",_BagPanel_RemoveChild34);
         return _loc1_;
      }
      
      private function _BagPanel_SetStyle17_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle17 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle17",_BagPanel_SetStyle17);
         return _loc1_;
      }
      
      public function __btnTabBag2_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,3);
      }
      
      public function set btnTabBag1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551294562btnTabBag1;
         if(_loc2_ !== param1)
         {
            this._1551294562btnTabBag1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabBag1",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      public function set slot11(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get secondTile() : Tile
      {
         return this._423866690secondTile;
      }
      
      public function set slot15(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot16(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function __pet15_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      public function set slot19(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set slot18(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild21_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild21 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild21",_BagPanel_RemoveChild21);
         return _loc1_;
      }
      
      private function _BagPanel_RemoveChild5_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild5 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild5",_BagPanel_RemoveChild5);
         return _loc1_;
      }
      
      public function set thirdTile(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._585350987thirdTile;
         if(_loc2_ !== param1)
         {
            this._585350987thirdTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thirdTile",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty81_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty81 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 248;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty81",_BagPanel_SetProperty81);
         return _loc1_;
      }
      
      public function set slot20(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      public function set slot24(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454784slot24;
         if(_loc2_ !== param1)
         {
            this._899454784slot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot24",_loc2_,param1));
         }
      }
      
      public function set slot21(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454787slot21;
         if(_loc2_ !== param1)
         {
            this._899454787slot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot21",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty28_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty28 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 347;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty28",_BagPanel_SetProperty28);
         return _loc1_;
      }
      
      public function set slot26(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454782slot26;
         if(_loc2_ !== param1)
         {
            this._899454782slot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot26",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioMoney() : RadioButton
      {
         return this._18783867radioMoney;
      }
      
      public function set slot25(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454783slot25;
         if(_loc2_ !== param1)
         {
            this._899454783slot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot25",_loc2_,param1));
         }
      }
      
      public function set slot29(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454779slot29;
         if(_loc2_ !== param1)
         {
            this._899454779slot29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot29",_loc2_,param1));
         }
      }
      
      public function set slot22(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454786slot22;
         if(_loc2_ !== param1)
         {
            this._899454786slot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot22",_loc2_,param1));
         }
      }
      
      public function set slot23(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454785slot23;
         if(_loc2_ !== param1)
         {
            this._899454785slot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot23",_loc2_,param1));
         }
      }
      
      public function __btnTabBag8_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,9);
      }
      
      public function set slot28(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454780slot28;
         if(_loc2_ !== param1)
         {
            this._899454780slot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot28",_loc2_,param1));
         }
      }
      
      public function __btnTabPet2_click(param1:MouseEvent) : void
      {
         setPetTab(2);
      }
      
      public function __pet8_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set slot27(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454781slot27;
         if(_loc2_ !== param1)
         {
            this._899454781slot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot27",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle26_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle26 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle26",_BagPanel_SetStyle26);
         return _loc1_;
      }
      
      public function set slot31(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454756slot31;
         if(_loc2_ !== param1)
         {
            this._899454756slot31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot31",_loc2_,param1));
         }
      }
      
      public function set slot32(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454755slot32;
         if(_loc2_ !== param1)
         {
            this._899454755slot32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot32",_loc2_,param1));
         }
      }
      
      public function set slot33(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454754slot33;
         if(_loc2_ !== param1)
         {
            this._899454754slot33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot33",_loc2_,param1));
         }
      }
      
      public function set slot35(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454752slot35;
         if(_loc2_ !== param1)
         {
            this._899454752slot35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot35",_loc2_,param1));
         }
      }
      
      public function set slot39(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454748slot39;
         if(_loc2_ !== param1)
         {
            this._899454748slot39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot39",_loc2_,param1));
         }
      }
      
      public function set slot36(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454751slot36;
         if(_loc2_ !== param1)
         {
            this._899454751slot36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot36",_loc2_,param1));
         }
      }
      
      public function set slot37(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454750slot37;
         if(_loc2_ !== param1)
         {
            this._899454750slot37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot37",_loc2_,param1));
         }
      }
      
      public function bagSort() : void
      {
         var func:Function = null;
         if(buttonSort.enabled == true)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_core.remote.call("bagSort",null))
                  {
                  }
                  buttonSort.enabled = false;
                  _bagSortTimer = new Timer(30000,1);
                  _bagSortTimer.addEventListener(TimerEvent.TIMER,sortButtonReset);
                  _bagSortTimer.start();
               }
            };
            Alert.show(Language.BAGPANEL_S[23],"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function set slot30(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454757slot30;
         if(_loc2_ !== param1)
         {
            this._899454757slot30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot30",_loc2_,param1));
         }
      }
      
      public function set slot38(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454749slot38;
         if(_loc2_ !== param1)
         {
            this._899454749slot38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot38",_loc2_,param1));
         }
      }
      
      public function set slot34(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454753slot34;
         if(_loc2_ !== param1)
         {
            this._899454753slot34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot34",_loc2_,param1));
         }
      }
      
      public function __pet1_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      private function _BagPanel_SetProperty15_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty15 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 85;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty15",_BagPanel_SetProperty15);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get fifthCanvas() : Canvas
      {
         return this._1611488785fifthCanvas;
      }
      
      public function getBagSlot(param1:*) : ItemSlot
      {
         return this["slot" + ToolKit.minus(param1,100)];
      }
      
      public function set slot40(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454726slot40;
         if(_loc2_ !== param1)
         {
            this._899454726slot40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot40",_loc2_,param1));
         }
      }
      
      public function set slot41(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454725slot41;
         if(_loc2_ !== param1)
         {
            this._899454725slot41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot41",_loc2_,param1));
         }
      }
      
      public function set slot43(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454723slot43;
         if(_loc2_ !== param1)
         {
            this._899454723slot43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot43",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild30_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild30 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild30",_BagPanel_RemoveChild30);
         return _loc1_;
      }
      
      public function set slot44(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454722slot44;
         if(_loc2_ !== param1)
         {
            this._899454722slot44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot44",_loc2_,param1));
         }
      }
      
      public function set slot45(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454721slot45;
         if(_loc2_ !== param1)
         {
            this._899454721slot45 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot45",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle13_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle13 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle13",_BagPanel_SetStyle13);
         return _loc1_;
      }
      
      public function set slot46(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454720slot46;
         if(_loc2_ !== param1)
         {
            this._899454720slot46 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot46",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPetTrade() : Button
      {
         return this._2043284991btnPetTrade;
      }
      
      public function set slot47(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454719slot47;
         if(_loc2_ !== param1)
         {
            this._899454719slot47 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot47",_loc2_,param1));
         }
      }
      
      public function set slot49(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454717slot49;
         if(_loc2_ !== param1)
         {
            this._899454717slot49 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot49",_loc2_,param1));
         }
      }
      
      public function set slot42(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454724slot42;
         if(_loc2_ !== param1)
         {
            this._899454724slot42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot42",_loc2_,param1));
         }
      }
      
      public function __tnBag_creationComplete(param1:FlexEvent) : void
      {
         tabComplete();
      }
      
      private function openPetSlot(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.OK)
         {
            if(goldLockFlag && ToolKit.isBigOrEqual(_core.player.gold,extendPetSlotPrice) && ToolKit.isBigThan(extendPetSlotPrice,_core.player.goldBind))
            {
               _core.sysMsg(Language.BAGPANEL_S[25]);
            }
            else
            {
               _core.remote.petOpenSlot();
            }
         }
      }
      
      public function __btnTabBag5_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,6);
      }
      
      private function _BagPanel_SetProperty37_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty37 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 6;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty37",_BagPanel_SetProperty37);
         return _loc1_;
      }
      
      public function __btnTabBag8_click(param1:MouseEvent) : void
      {
         setBagTab(8);
      }
      
      public function set slot51(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454694slot51;
         if(_loc2_ !== param1)
         {
            this._899454694slot51 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot51",_loc2_,param1));
         }
      }
      
      public function set slot52(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454693slot52;
         if(_loc2_ !== param1)
         {
            this._899454693slot52 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot52",_loc2_,param1));
         }
      }
      
      public function set slot50(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454695slot50;
         if(_loc2_ !== param1)
         {
            this._899454695slot50 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot50",_loc2_,param1));
         }
      }
      
      public function set slot54(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454691slot54;
         if(_loc2_ !== param1)
         {
            this._899454691slot54 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot54",_loc2_,param1));
         }
      }
      
      public function set slot55(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454690slot55;
         if(_loc2_ !== param1)
         {
            this._899454690slot55 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot55",_loc2_,param1));
         }
      }
      
      public function set slot48(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454718slot48;
         if(_loc2_ !== param1)
         {
            this._899454718slot48 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot48",_loc2_,param1));
         }
      }
      
      public function set slot56(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454689slot56;
         if(_loc2_ !== param1)
         {
            this._899454689slot56 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot56",_loc2_,param1));
         }
      }
      
      public function set slot57(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454688slot57;
         if(_loc2_ !== param1)
         {
            this._899454688slot57 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot57",_loc2_,param1));
         }
      }
      
      public function set slot58(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454687slot58;
         if(_loc2_ !== param1)
         {
            this._899454687slot58 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot58",_loc2_,param1));
         }
      }
      
      public function set slot59(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454686slot59;
         if(_loc2_ !== param1)
         {
            this._899454686slot59 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot59",_loc2_,param1));
         }
      }
      
      public function set slot53(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454692slot53;
         if(_loc2_ !== param1)
         {
            this._899454692slot53 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot53",_loc2_,param1));
         }
      }
      
      public function __radioMoneyBind_click(param1:MouseEvent) : void
      {
         changeMoneyType(param1);
      }
      
      private function _BagPanel_SetStyle35_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle35 = _loc1_;
         _loc1_.name = "verticalGap";
         _loc1_.value = 2.2;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle35",_BagPanel_SetStyle35);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty59_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty59 = _loc1_;
         _loc1_.name = "text";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty59",_BagPanel_SetProperty59);
         return _loc1_;
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
      
      private function _BagPanel_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild1",_BagPanel_RemoveChild1);
         return _loc1_;
      }
      
      public function __pet10_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set slot63(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454661slot63;
         if(_loc2_ !== param1)
         {
            this._899454661slot63 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot63",_loc2_,param1));
         }
      }
      
      public function set slot64(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454660slot64;
         if(_loc2_ !== param1)
         {
            this._899454660slot64 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot64",_loc2_,param1));
         }
      }
      
      public function set slot61(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454663slot61;
         if(_loc2_ !== param1)
         {
            this._899454663slot61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot61",_loc2_,param1));
         }
      }
      
      public function set slot65(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454659slot65;
         if(_loc2_ !== param1)
         {
            this._899454659slot65 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot65",_loc2_,param1));
         }
      }
      
      public function set slot62(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454662slot62;
         if(_loc2_ !== param1)
         {
            this._899454662slot62 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot62",_loc2_,param1));
         }
      }
      
      public function set slot67(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454657slot67;
         if(_loc2_ !== param1)
         {
            this._899454657slot67 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot67",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty24_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty24 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 22;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty24",_BagPanel_SetProperty24);
         return _loc1_;
      }
      
      public function set slot68(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454656slot68;
         if(_loc2_ !== param1)
         {
            this._899454656slot68 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot68",_loc2_,param1));
         }
      }
      
      public function set slot69(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454655slot69;
         if(_loc2_ !== param1)
         {
            this._899454655slot69 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot69",_loc2_,param1));
         }
      }
      
      public function set slot66(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454658slot66;
         if(_loc2_ !== param1)
         {
            this._899454658slot66 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot66",_loc2_,param1));
         }
      }
      
      public function set secondTile(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._423866690secondTile;
         if(_loc2_ !== param1)
         {
            this._423866690secondTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secondTile",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstPetCanvas() : Canvas
      {
         return this._1801006457firstPetCanvas;
      }
      
      public function set slot60(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454664slot60;
         if(_loc2_ !== param1)
         {
            this._899454664slot60 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot60",_loc2_,param1));
         }
      }
      
      public function set boxlabel2(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1452349769boxlabel2;
         if(_loc2_ !== param1)
         {
            this._1452349769boxlabel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boxlabel2",_loc2_,param1));
         }
      }
      
      public function set boxlabel3(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1452349770boxlabel3;
         if(_loc2_ !== param1)
         {
            this._1452349770boxlabel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boxlabel3",_loc2_,param1));
         }
      }
      
      public function set boxlabel4(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1452349771boxlabel4;
         if(_loc2_ !== param1)
         {
            this._1452349771boxlabel4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boxlabel4",_loc2_,param1));
         }
      }
      
      public function set boxlabel5(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1452349772boxlabel5;
         if(_loc2_ !== param1)
         {
            this._1452349772boxlabel5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boxlabel5",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle22_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle22 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle22",_BagPanel_SetStyle22);
         return _loc1_;
      }
      
      public function __pet14_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set slot70(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454633slot70;
         if(_loc2_ !== param1)
         {
            this._899454633slot70 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot70",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty9_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty9 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty9",_BagPanel_SetProperty9);
         return _loc1_;
      }
      
      public function set slot72(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454631slot72;
         if(_loc2_ !== param1)
         {
            this._899454631slot72 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot72",_loc2_,param1));
         }
      }
      
      public function set slot73(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454630slot73;
         if(_loc2_ !== param1)
         {
            this._899454630slot73 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot73",_loc2_,param1));
         }
      }
      
      public function __pet9_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set slot71(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454632slot71;
         if(_loc2_ !== param1)
         {
            this._899454632slot71 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot71",_loc2_,param1));
         }
      }
      
      public function set slot75(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454628slot75;
         if(_loc2_ !== param1)
         {
            this._899454628slot75 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot75",_loc2_,param1));
         }
      }
      
      public function set slot76(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454627slot76;
         if(_loc2_ !== param1)
         {
            this._899454627slot76 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot76",_loc2_,param1));
         }
      }
      
      public function set slot77(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454626slot77;
         if(_loc2_ !== param1)
         {
            this._899454626slot77 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot77",_loc2_,param1));
         }
      }
      
      public function set slot74(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454629slot74;
         if(_loc2_ !== param1)
         {
            this._899454629slot74 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot74",_loc2_,param1));
         }
      }
      
      public function set slot78(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454625slot78;
         if(_loc2_ !== param1)
         {
            this._899454625slot78 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot78",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty46_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty46 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty46",_BagPanel_SetProperty46);
         return _loc1_;
      }
      
      public function set slot79(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454624slot79;
         if(_loc2_ !== param1)
         {
            this._899454624slot79 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot79",_loc2_,param1));
         }
      }
      
      public function petInit() : void
      {
         var _loc1_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc7_:* = undefined;
         if(!_core.player)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["btnTabPet" + _loc1_].enabled = _core.player.petMaxNum + 1 > GamePredef.MAX_PET_PER_PAGE * _loc1_;
            _loc1_++;
         }
         var _loc2_:int = _core.player.petMaxNum - GamePredef.MAX_PET_PER_PAGE * (_currentPage - 1);
         var _loc3_:int = 1;
         while(_loc3_ <= GamePredef.MAX_PET_PER_PAGE)
         {
            if(_loc3_ <= _loc2_)
            {
               this["pet" + _loc3_].styleName = "TransparentSlot";
            }
            else
            {
               this["pet" + _loc3_].styleName = "PetSlotLocked";
            }
            _loc3_++;
         }
         petClear();
         petList = _core.player.petList;
         var _loc4_:Array = [];
         if(petList)
         {
            for each(_loc5_ in petList)
            {
               if(_loc5_)
               {
                  _loc4_.push(_loc5_);
               }
            }
         }
         _loc4_.sortOn(["tid","growRate"],[Array.DESCENDING | Array.NUMERIC,Array.DESCENDING | Array.NUMERIC]);
         if(_loc4_)
         {
            _loc1_ = 1;
            _loc6_ = 1;
            for each(_loc7_ in _loc4_)
            {
               if(Boolean(_loc7_) && Boolean(_loc1_ > GamePredef.MAX_PET_PER_PAGE * (_currentPage - 1)) && _loc1_ <= GamePredef.MAX_PET_PER_PAGE * _currentPage)
               {
                  if(_loc6_ > GamePredef.MAX_PET_PER_PAGE)
                  {
                     break;
                  }
                  if(_loc7_.inTrade)
                  {
                     this["pet" + _loc6_].clean();
                  }
                  else if(_loc7_.inAuction)
                  {
                     this["pet" + _loc6_].clean();
                  }
                  else
                  {
                     this["pet" + _loc6_].type = GamePredef.TBL_PET;
                     this["pet" + _loc6_].giid = _loc7_.id;
                     this["pet" + _loc6_].stackNum = 1;
                     this["pet" + _loc6_].slotData = _loc7_;
                  }
                  _loc6_++;
               }
               _loc1_++;
            }
         }
      }
      
      private function _BagPanel_SetProperty11_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty11 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 22;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty11",_BagPanel_SetProperty11);
         return _loc1_;
      }
      
      public function set slot80(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454602slot80;
         if(_loc2_ !== param1)
         {
            this._899454602slot80 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot80",_loc2_,param1));
         }
      }
      
      public function set slot81(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454601slot81;
         if(_loc2_ !== param1)
         {
            this._899454601slot81 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot81",_loc2_,param1));
         }
      }
      
      public function set slot82(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454600slot82;
         if(_loc2_ !== param1)
         {
            this._899454600slot82 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot82",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet1() : ItemSlot
      {
         return this._3437298pet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet2() : ItemSlot
      {
         return this._3437299pet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet3() : ItemSlot
      {
         return this._3437300pet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet4() : ItemSlot
      {
         return this._3437301pet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet5() : ItemSlot
      {
         return this._3437302pet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet6() : ItemSlot
      {
         return this._3437303pet6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet7() : ItemSlot
      {
         return this._3437304pet7;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet8() : ItemSlot
      {
         return this._3437305pet8;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet9() : ItemSlot
      {
         return this._3437306pet9;
      }
      
      [Bindable(event="propertyChange")]
      public function get radioGold() : RadioButton
      {
         return this._970616069radioGold;
      }
      
      private function _BagPanel_AddChild1_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _BagPanel_AddChild1 = _loc1_;
         _loc1_.position = "lastChild";
         BindingManager.executeBindings(this,"_BagPanel_AddChild1",_BagPanel_AddChild1);
         return _loc1_;
      }
      
      public function set slot85(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454597slot85;
         if(_loc2_ !== param1)
         {
            this._899454597slot85 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot85",_loc2_,param1));
         }
      }
      
      public function set slot89(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454593slot89;
         if(_loc2_ !== param1)
         {
            this._899454593slot89 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot89",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty68_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty68 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty68",_BagPanel_SetProperty68);
         return _loc1_;
      }
      
      public function set slot83(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454599slot83;
         if(_loc2_ !== param1)
         {
            this._899454599slot83 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot83",_loc2_,param1));
         }
      }
      
      public function set slot86(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454596slot86;
         if(_loc2_ !== param1)
         {
            this._899454596slot86 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot86",_loc2_,param1));
         }
      }
      
      public function set slot87(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454595slot87;
         if(_loc2_ !== param1)
         {
            this._899454595slot87 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot87",_loc2_,param1));
         }
      }
      
      public function set radioMoney(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._18783867radioMoney;
         if(_loc2_ !== param1)
         {
            this._18783867radioMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioMoney",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get silver() : Button
      {
         return this._902311155silver;
      }
      
      public function set firstTile(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._133022078firstTile;
         if(_loc2_ !== param1)
         {
            this._133022078firstTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstTile",_loc2_,param1));
         }
      }
      
      public function set slot84(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454598slot84;
         if(_loc2_ !== param1)
         {
            this._899454598slot84 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot84",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty33_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty33 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 89;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty33",_BagPanel_SetProperty33);
         return _loc1_;
      }
      
      public function set slot88(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454594slot88;
         if(_loc2_ !== param1)
         {
            this._899454594slot88 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot88",_loc2_,param1));
         }
      }
      
      public function __button3_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_DIVIDE);
      }
      
      public function set slot92(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454569slot92;
         if(_loc2_ !== param1)
         {
            this._899454569slot92 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot92",_loc2_,param1));
         }
      }
      
      public function set slot93(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454568slot93;
         if(_loc2_ !== param1)
         {
            this._899454568slot93 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot93",_loc2_,param1));
         }
      }
      
      public function set slot90(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454571slot90;
         if(_loc2_ !== param1)
         {
            this._899454571slot90 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot90",_loc2_,param1));
         }
      }
      
      private function tabDragDropHandler(param1:DragEvent, param2:Number) : void
      {
         var _loc3_:ItemSlot = param1.dragSource.dataForFormat("slot") as ItemSlot;
         _core.remote.moveItemToPage(_loc3_.index,GamePredef.PAGE_TYPE_BAG,param2);
      }
      
      public function set slot91(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454570slot91;
         if(_loc2_ !== param1)
         {
            this._899454570slot91 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot91",_loc2_,param1));
         }
      }
      
      public function set slot95(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454566slot95;
         if(_loc2_ !== param1)
         {
            this._899454566slot95 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot95",_loc2_,param1));
         }
      }
      
      public function set slot96(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454565slot96;
         if(_loc2_ !== param1)
         {
            this._899454565slot96 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot96",_loc2_,param1));
         }
      }
      
      public function set slot97(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454564slot97;
         if(_loc2_ !== param1)
         {
            this._899454564slot97 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot97",_loc2_,param1));
         }
      }
      
      public function set slot94(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454567slot94;
         if(_loc2_ !== param1)
         {
            this._899454567slot94 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot94",_loc2_,param1));
         }
      }
      
      public function set slot98(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454563slot98;
         if(_loc2_ !== param1)
         {
            this._899454563slot98 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot98",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle31_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle31 = _loc1_;
         _loc1_.name = "bottom";
         _loc1_.value = 68;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle31",_BagPanel_SetStyle31);
         return _loc1_;
      }
      
      public function set slot99(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._899454562slot99;
         if(_loc2_ !== param1)
         {
            this._899454562slot99 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot99",_loc2_,param1));
         }
      }
      
      public function __btnTabBag6_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,7);
      }
      
      [Bindable(event="propertyChange")]
      public function get tile1() : Tile
      {
         return this._110363459tile1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile4() : Tile
      {
         return this._110363462tile4;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile5() : Tile
      {
         return this._110363463tile5;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile6() : Tile
      {
         return this._110363464tile6;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile7() : Tile
      {
         return this._110363465tile7;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile8() : Tile
      {
         return this._110363466tile8;
      }
      
      public function __btnTabBag1_click(param1:MouseEvent) : void
      {
         setBagTab(1);
      }
      
      private function _BagPanel_SetStyle8_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle8 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle8",_BagPanel_SetStyle8);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile9() : Tile
      {
         return this._110363467tile9;
      }
      
      [Bindable(event="propertyChange")]
      public function get petTabHBox() : HBox
      {
         return this._2009195353petTabHBox;
      }
      
      private function _BagPanel_SetProperty55_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty55 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 1;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty55",_BagPanel_SetProperty55);
         return _loc1_;
      }
      
      public function __btnTabPet5_click(param1:MouseEvent) : void
      {
         setPetTab(5);
      }
      
      public function set fouthCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._162384312fouthCanvas;
         if(_loc2_ !== param1)
         {
            this._162384312fouthCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fouthCanvas",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty20_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty20 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 14;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty20",_BagPanel_SetProperty20);
         return _loc1_;
      }
      
      public function __pet6_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      public function disableUI() : void
      {
         this.button2.enabled = false;
         this.button3.enabled = false;
         this.button4.enabled = false;
         this.btnPetTrade.enabled = false;
         this.buttonSort.enabled = false;
         this.basicglowbutton1.visible = false;
      }
      
      public function __pet10_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_RemoveChild17_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild17 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild17",_BagPanel_RemoveChild17);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty77_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty77 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty77",_BagPanel_SetProperty77);
         return _loc1_;
      }
      
      public function __pet4_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function __pet11_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _BagPanel_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty5 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty5",_BagPanel_SetProperty5);
         return _loc1_;
      }
      
      public function showItem() : void
      {
         currentState = "item";
         show();
      }
      
      private function _BagPanel_SetProperty42_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty42 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty42",_BagPanel_SetProperty42);
         return _loc1_;
      }
      
      public function __btnTabBag3_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,4);
      }
      
      [Bindable(event="propertyChange")]
      public function get sixthCanvas() : Canvas
      {
         return this._1671461938sixthCanvas;
      }
      
      public function set fifthCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1611488785fifthCanvas;
         if(_loc2_ !== param1)
         {
            this._1611488785fifthCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fifthCanvas",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty64_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty64 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty64",_BagPanel_SetProperty64);
         return _loc1_;
      }
      
      public function set btnPetTrade(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2043284991btnPetTrade;
         if(_loc2_ !== param1)
         {
            this._2043284991btnPetTrade = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPetTrade",_loc2_,param1));
         }
      }
      
      public function __pet16_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_RemoveChild26_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild26 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild26",_BagPanel_RemoveChild26);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicglowbutton1() : BasicGlowButton
      {
         return this._1120322596basicglowbutton1;
      }
      
      private function _BagPanel_SetProperty51_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty51 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty51",_BagPanel_SetProperty51);
         return _loc1_;
      }
      
      public function __btnTabBag7_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,8);
      }
      
      private function _BagPanel_SetStyle4_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle4 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle4",_BagPanel_SetStyle4);
         return _loc1_;
      }
      
      public function __pet17_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get eighthCanvas() : Canvas
      {
         return this._1481837455eighthCanvas;
      }
      
      private function _BagPanel_RemoveChild13_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild13 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild13",_BagPanel_RemoveChild13);
         return _loc1_;
      }
      
      public function __radioGoldBind_click(param1:MouseEvent) : void
      {
         changeMoneyType(param1);
      }
      
      private function _BagPanel_SetProperty73_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty73 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 23;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty73",_BagPanel_SetProperty73);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty1 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty1",_BagPanel_SetProperty1);
         return _loc1_;
      }
      
      private function _BagPanel_State3_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "pet";
         _loc1_.overrides = [_BagPanel_SetProperty72_i(),_BagPanel_RemoveChild12_i(),_BagPanel_RemoveChild13_i(),_BagPanel_RemoveChild14_i(),_BagPanel_RemoveChild15_i(),_BagPanel_RemoveChild16_i(),_BagPanel_RemoveChild17_i(),_BagPanel_RemoveChild18_i(),_BagPanel_RemoveChild19_i(),_BagPanel_RemoveChild20_i(),_BagPanel_RemoveChild21_i(),_BagPanel_RemoveChild22_i(),_BagPanel_RemoveChild23_i(),_BagPanel_RemoveChild24_i(),_BagPanel_RemoveChild25_i(),_BagPanel_RemoveChild26_i(),_BagPanel_RemoveChild27_i(),_BagPanel_RemoveChild28_i(),_BagPanel_RemoveChild29_i(),_BagPanel_RemoveChild30_i(),_BagPanel_RemoveChild31_i(),_BagPanel_SetProperty73_i(),_BagPanel_SetProperty74_i(),_BagPanel_SetProperty75_c(),_BagPanel_RemoveChild32_i(),_BagPanel_AddChild1_i(),_BagPanel_AddChild2_i(),_BagPanel_RemoveChild33_i(),_BagPanel_RemoveChild34_i(),_BagPanel_AddChild3_i(),_BagPanel_SetProperty76_i(),_BagPanel_SetProperty77_i(),_BagPanel_SetProperty78_i(),_BagPanel_SetProperty79_i(),_BagPanel_SetProperty80_i(),_BagPanel_SetProperty81_i()
         ,_BagPanel_SetProperty82_i(),_BagPanel_SetProperty83_i()];
         return _loc1_;
      }
      
      public function __pet12_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _BagPanel_SetStyle18_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle18 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle18",_BagPanel_SetStyle18);
         return _loc1_;
      }
      
      public function __gold_click(param1:MouseEvent) : void
      {
         clickLock(2);
      }
      
      private function _BagPanel_SetProperty60_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "styleName";
         _loc1_.value = "StandardContent";
         return _loc1_;
      }
      
      private function setPetTab(param1:int) : void
      {
         _currentPage = param1 + 1;
         var _loc2_:int = 0;
         while(_loc2_ < GamePredef.MAX_PET_TAB)
         {
            if(_loc2_ == param1)
            {
               this["btnTabPet" + _loc2_].selected = true;
            }
            else
            {
               this["btnTabPet" + _loc2_].selected = false;
            }
            _loc2_++;
         }
         petInit();
      }
      
      public function __btnTabBag4_click(param1:MouseEvent) : void
      {
         setBagTab(4);
      }
      
      public function __btnTabPet8_click(param1:MouseEvent) : void
      {
         setPetTab(8);
      }
      
      public function set firstPetCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1801006457firstPetCanvas;
         if(_loc2_ !== param1)
         {
            this._1801006457firstPetCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstPetCanvas",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild22_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild22 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild22",_BagPanel_RemoveChild22);
         return _loc1_;
      }
      
      private function _BagPanel_RemoveChild6_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild6 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild6",_BagPanel_RemoveChild6);
         return _loc1_;
      }
      
      public function __pet9_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty82_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty82 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 100;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty82",_BagPanel_SetProperty82);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty29_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty29 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 169;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty29",_BagPanel_SetProperty29);
         return _loc1_;
      }
      
      public function __pet7_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      private function _BagPanel_SetStyle27_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle27 = _loc1_;
         _loc1_.name = "bottom";
         _loc1_.value = 20;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle27",_BagPanel_SetStyle27);
         return _loc1_;
      }
      
      public function get silverLockFlag() : Boolean
      {
         return _silverLockFlag;
      }
      
      private function _BagPanel_BasicGlowButton1_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = new BasicGlowButton();
         _BagPanel_BasicGlowButton1 = _loc1_;
         _loc1_.x = 138;
         _loc1_.y = 128;
         _loc1_.width = 100;
         _loc1_.styleName = "BtnNormalRed";
         _loc1_.height = 19;
         _loc1_.addEventListener("click",___BagPanel_BasicGlowButton1_click);
         _loc1_.id = "_BagPanel_BasicGlowButton1";
         BindingManager.executeBindings(this,"_BagPanel_BasicGlowButton1",_BagPanel_BasicGlowButton1);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function setBagTab(param1:int) : void
      {
         tnBag.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < GamePredef.MAX_BAG_TAB)
         {
            if(_loc2_ == param1)
            {
               this["btnTabBag" + _loc2_].selected = true;
            }
            else
            {
               this["btnTabBag" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      public function __btnTabBag8_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,9);
      }
      
      public function __basicglowbutton1_click(param1:MouseEvent) : void
      {
         showTempSlot();
      }
      
      public function __pet10_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      private function _BagPanel_SetProperty16_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty16 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 20;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty16",_BagPanel_SetProperty16);
         return _loc1_;
      }
      
      public function __pet1_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_RemoveChild31_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild31 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild31",_BagPanel_RemoveChild31);
         return _loc1_;
      }
      
      private function _BagPanel_SetStyle14_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle14 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle14",_BagPanel_SetStyle14);
         return _loc1_;
      }
      
      public function __pet13_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get radioGoldBind() : RadioButton
      {
         return this._1123890648radioGoldBind;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas3() : Canvas
      {
         return this._550778331canvas3;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas4() : Canvas
      {
         return this._550778332canvas4;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas5() : Canvas
      {
         return this._550778333canvas5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas6() : Canvas
      {
         return this._550778334canvas6;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas1() : Canvas
      {
         return this._550778329canvas1;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas2() : Canvas
      {
         return this._550778330canvas2;
      }
      
      private function _BagPanel_SetProperty38_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty38 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 347;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty38",_BagPanel_SetProperty38);
         return _loc1_;
      }
      
      public function set pet1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437298pet1;
         if(_loc2_ !== param1)
         {
            this._3437298pet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet1",_loc2_,param1));
         }
      }
      
      public function set pet2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437299pet2;
         if(_loc2_ !== param1)
         {
            this._3437299pet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet2",_loc2_,param1));
         }
      }
      
      public function set pet3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437300pet3;
         if(_loc2_ !== param1)
         {
            this._3437300pet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet3",_loc2_,param1));
         }
      }
      
      public function __btnPetTrade_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_BIND);
      }
      
      public function set pet5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437302pet5;
         if(_loc2_ !== param1)
         {
            this._3437302pet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet5",_loc2_,param1));
         }
      }
      
      public function set pet6(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437303pet6;
         if(_loc2_ !== param1)
         {
            this._3437303pet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet6",_loc2_,param1));
         }
      }
      
      public function set pet7(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437304pet7;
         if(_loc2_ !== param1)
         {
            this._3437304pet7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet7",_loc2_,param1));
         }
      }
      
      public function set pet8(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437305pet8;
         if(_loc2_ !== param1)
         {
            this._3437305pet8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      public function set pet9(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437306pet9;
         if(_loc2_ !== param1)
         {
            this._3437306pet9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ItemSlot
      {
         return this._109532661slot3;
      }
      
      public function set radioGold(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._970616069radioGold;
         if(_loc2_ !== param1)
         {
            this._970616069radioGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioGold",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : ItemSlot
      {
         return this._109532663slot5;
      }
      
      public function __pet18_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function set pet4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3437301pet4;
         if(_loc2_ !== param1)
         {
            this._3437301pet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : ItemSlot
      {
         return this._109532666slot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : ItemSlot
      {
         return this._109532662slot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ItemSlot
      {
         return this._109532664slot6;
      }
      
      private function _BagPanel_SetStyle36_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle36 = _loc1_;
         _loc1_.name = "verticalGap";
         _loc1_.value = 2.2;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle36",_BagPanel_SetStyle36);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ItemSlot
      {
         return this._109532667slot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : ItemSlot
      {
         return this._109532665slot7;
      }
      
      public function set silver(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._902311155silver;
         if(_loc2_ !== param1)
         {
            this._902311155silver = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"silver",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild2",_BagPanel_RemoveChild2);
         return _loc1_;
      }
      
      public function __pet8_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty25_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty25 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 120;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty25",_BagPanel_SetProperty25);
         return _loc1_;
      }
      
      public function __pet11_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function changeMoneyType(param1:Event) : void
      {
         switch(param1.currentTarget.id)
         {
            case "radioMoneyBind":
               radioMoney.enabled = false;
               radioMoneyBind.enabled = false;
               _core.remote.call("changeMoneyType",new Responder(onChangeMoneyType),1);
               break;
            case "radioMoney":
               radioMoney.enabled = false;
               radioMoneyBind.enabled = false;
               _core.remote.call("changeMoneyType",new Responder(onChangeMoneyType),2);
               break;
            case "radioGoldBind":
               radioGold.enabled = false;
               radioGoldBind.enabled = false;
               _core.remote.call("changeMoneyType",new Responder(onChangeMoneyType),3);
               break;
            case "radioGold":
               radioGold.enabled = false;
               radioGoldBind.enabled = false;
               _core.remote.call("changeMoneyType",new Responder(onChangeMoneyType),4);
         }
      }
      
      public function __pet7_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      public function __btnTabPet1_click(param1:MouseEvent) : void
      {
         setPetTab(1);
      }
      
      public function set tnBag(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110471982tnBag;
         if(_loc2_ !== param1)
         {
            this._110471982tnBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tnBag",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle23_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle23 = _loc1_;
         _loc1_.name = "textAlign";
         _loc1_.value = "left";
         BindingManager.executeBindings(this,"_BagPanel_SetStyle23",_BagPanel_SetStyle23);
         return _loc1_;
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            goldLockFlag = false;
         }
      }
      
      public function set slot100(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295565slot100;
         if(_loc2_ !== param1)
         {
            this._2113295565slot100 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot100",_loc2_,param1));
         }
      }
      
      public function set slot101(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295564slot101;
         if(_loc2_ !== param1)
         {
            this._2113295564slot101 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot101",_loc2_,param1));
         }
      }
      
      public function set slot102(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295563slot102;
         if(_loc2_ !== param1)
         {
            this._2113295563slot102 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot102",_loc2_,param1));
         }
      }
      
      public function onChangeMoneyType(param1:Object) : void
      {
         if(param1.flag)
         {
            switch(param1.num)
            {
               case 1:
                  GamePredef.GLOBAL_SETTING.defaultMoney = 1;
                  radioMoney.enabled = true;
                  radioMoneyBind.enabled = true;
                  break;
               case 2:
                  GamePredef.GLOBAL_SETTING.defaultMoney = 2;
                  radioMoney.enabled = true;
                  radioMoneyBind.enabled = true;
                  break;
               case 3:
                  setDefaultGold(1);
                  break;
               case 4:
                  setDefaultGold(2);
            }
         }
      }
      
      public function set slot103(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295562slot103;
         if(_loc2_ !== param1)
         {
            this._2113295562slot103 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot103",_loc2_,param1));
         }
      }
      
      public function set slot104(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295561slot104;
         if(_loc2_ !== param1)
         {
            this._2113295561slot104 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot104",_loc2_,param1));
         }
      }
      
      public function set slot105(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295560slot105;
         if(_loc2_ !== param1)
         {
            this._2113295560slot105 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot105",_loc2_,param1));
         }
      }
      
      public function set slot106(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295559slot106;
         if(_loc2_ !== param1)
         {
            this._2113295559slot106 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot106",_loc2_,param1));
         }
      }
      
      public function set slot107(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295558slot107;
         if(_loc2_ !== param1)
         {
            this._2113295558slot107 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot107",_loc2_,param1));
         }
      }
      
      public function set slot108(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295557slot108;
         if(_loc2_ !== param1)
         {
            this._2113295557slot108 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot108",_loc2_,param1));
         }
      }
      
      public function set slot109(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295556slot109;
         if(_loc2_ !== param1)
         {
            this._2113295556slot109 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot109",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty47_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty47 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty47",_BagPanel_SetProperty47);
         return _loc1_;
      }
      
      public function set tile1(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363459tile1;
         if(_loc2_ !== param1)
         {
            this._110363459tile1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile1",_loc2_,param1));
         }
      }
      
      public function __btnTabBag4_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,5);
      }
      
      public function set tile4(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363462tile4;
         if(_loc2_ !== param1)
         {
            this._110363462tile4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile4",_loc2_,param1));
         }
      }
      
      public function set tile5(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363463tile5;
         if(_loc2_ !== param1)
         {
            this._110363463tile5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile5",_loc2_,param1));
         }
      }
      
      public function set tile6(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363464tile6;
         if(_loc2_ !== param1)
         {
            this._110363464tile6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile6",_loc2_,param1));
         }
      }
      
      public function set tile8(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363466tile8;
         if(_loc2_ !== param1)
         {
            this._110363466tile8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile8",_loc2_,param1));
         }
      }
      
      public function set tile9(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363467tile9;
         if(_loc2_ !== param1)
         {
            this._110363467tile9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile9",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty12_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty12 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 120;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty12",_BagPanel_SetProperty12);
         return _loc1_;
      }
      
      public function set bagtitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2050561200bagtitle;
         if(_loc2_ !== param1)
         {
            this._2050561200bagtitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagtitle",_loc2_,param1));
         }
      }
      
      public function set tile7(param1:Tile) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110363465tile7;
         if(_loc2_ !== param1)
         {
            this._110363465tile7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile7",_loc2_,param1));
         }
      }
      
      public function set slot110(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295534slot110;
         if(_loc2_ !== param1)
         {
            this._2113295534slot110 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot110",_loc2_,param1));
         }
      }
      
      public function set slot111(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295533slot111;
         if(_loc2_ !== param1)
         {
            this._2113295533slot111 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot111",_loc2_,param1));
         }
      }
      
      public function set slot112(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295532slot112;
         if(_loc2_ !== param1)
         {
            this._2113295532slot112 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot112",_loc2_,param1));
         }
      }
      
      public function set slot113(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295531slot113;
         if(_loc2_ !== param1)
         {
            this._2113295531slot113 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot113",_loc2_,param1));
         }
      }
      
      public function set slot114(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295530slot114;
         if(_loc2_ !== param1)
         {
            this._2113295530slot114 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot114",_loc2_,param1));
         }
      }
      
      public function set slot115(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295529slot115;
         if(_loc2_ !== param1)
         {
            this._2113295529slot115 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot115",_loc2_,param1));
         }
      }
      
      public function set slot116(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295528slot116;
         if(_loc2_ !== param1)
         {
            this._2113295528slot116 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot116",_loc2_,param1));
         }
      }
      
      public function set petTabHBox(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2009195353petTabHBox;
         if(_loc2_ !== param1)
         {
            this._2009195353petTabHBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petTabHBox",_loc2_,param1));
         }
      }
      
      public function set slot118(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295526slot118;
         if(_loc2_ !== param1)
         {
            this._2113295526slot118 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot118",_loc2_,param1));
         }
      }
      
      public function set slot119(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295525slot119;
         if(_loc2_ !== param1)
         {
            this._2113295525slot119 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot119",_loc2_,param1));
         }
      }
      
      public function set slot117(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295527slot117;
         if(_loc2_ !== param1)
         {
            this._2113295527slot117 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot117",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle10_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle10 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle10",_BagPanel_SetStyle10);
         return _loc1_;
      }
      
      private function _BagPanel_AddChild2_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _BagPanel_AddChild2 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_BagPanel_BasicGlowButton1_i);
         BindingManager.executeBindings(this,"_BagPanel_AddChild2",_BagPanel_AddChild2);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty69_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty69 = _loc1_;
         _loc1_.name = "height";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty69",_BagPanel_SetProperty69);
         return _loc1_;
      }
      
      public function __pet17_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      public function __btnTabBag7_click(param1:MouseEvent) : void
      {
         setBagTab(7);
      }
      
      private function _BagPanel_SetProperty34_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty34 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 347;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty34",_BagPanel_SetProperty34);
         return _loc1_;
      }
      
      public function set slot121(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295502slot121;
         if(_loc2_ !== param1)
         {
            this._2113295502slot121 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot121",_loc2_,param1));
         }
      }
      
      public function set slot122(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295501slot122;
         if(_loc2_ !== param1)
         {
            this._2113295501slot122 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot122",_loc2_,param1));
         }
      }
      
      private function petDClickHankler(param1:Event) : void
      {
         if(param1.currentTarget.giid != -1 && param1.currentTarget.type != -1)
         {
            if(_core.view.getUI(ViewManager.PANEL_TRADE).visible)
            {
               _core.view.getUI(ViewManager.PANEL_TRADE).addPet(param1.currentTarget.giid);
               petInit();
            }
            else if(_core.view.getUI(ViewManager.PANEL_AUCTION).visible)
            {
               _core.view.getUI(ViewManager.PANEL_AUCTION).addItem(param1.currentTarget);
            }
            else if(_core.view.getUI(ViewManager.PANEL_PETFUNC).visible)
            {
               _core.view.getUI(ViewManager.PANEL_PETFUNC).addPet(param1.currentTarget);
            }
         }
      }
      
      public function set slot123(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295500slot123;
         if(_loc2_ !== param1)
         {
            this._2113295500slot123 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot123",_loc2_,param1));
         }
      }
      
      public function set slot124(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295499slot124;
         if(_loc2_ !== param1)
         {
            this._2113295499slot124 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot124",_loc2_,param1));
         }
      }
      
      public function set slot125(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295498slot125;
         if(_loc2_ !== param1)
         {
            this._2113295498slot125 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot125",_loc2_,param1));
         }
      }
      
      public function __pet14_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set slot127(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295496slot127;
         if(_loc2_ !== param1)
         {
            this._2113295496slot127 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot127",_loc2_,param1));
         }
      }
      
      public function set slot128(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295495slot128;
         if(_loc2_ !== param1)
         {
            this._2113295495slot128 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot128",_loc2_,param1));
         }
      }
      
      public function set slot129(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295494slot129;
         if(_loc2_ !== param1)
         {
            this._2113295494slot129 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot129",_loc2_,param1));
         }
      }
      
      public function set slot126(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295497slot126;
         if(_loc2_ !== param1)
         {
            this._2113295497slot126 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot126",_loc2_,param1));
         }
      }
      
      public function set slot120(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295503slot120;
         if(_loc2_ !== param1)
         {
            this._2113295503slot120 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot120",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle32_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle32 = _loc1_;
         _loc1_.name = "top";
         _loc1_.value = 60;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle32",_BagPanel_SetStyle32);
         return _loc1_;
      }
      
      public function set pet11(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556287pet11;
         if(_loc2_ !== param1)
         {
            this._106556287pet11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet11",_loc2_,param1));
         }
      }
      
      public function set pet12(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556288pet12;
         if(_loc2_ !== param1)
         {
            this._106556288pet12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet12",_loc2_,param1));
         }
      }
      
      public function set pet10(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556286pet10;
         if(_loc2_ !== param1)
         {
            this._106556286pet10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet10",_loc2_,param1));
         }
      }
      
      public function set pet14(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556290pet14;
         if(_loc2_ !== param1)
         {
            this._106556290pet14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet14",_loc2_,param1));
         }
      }
      
      public function set pet16(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556292pet16;
         if(_loc2_ !== param1)
         {
            this._106556292pet16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet16",_loc2_,param1));
         }
      }
      
      public function set pet13(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556289pet13;
         if(_loc2_ !== param1)
         {
            this._106556289pet13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet13",_loc2_,param1));
         }
      }
      
      public function set pet18(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556294pet18;
         if(_loc2_ !== param1)
         {
            this._106556294pet18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet18",_loc2_,param1));
         }
      }
      
      public function set pet15(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556291pet15;
         if(_loc2_ !== param1)
         {
            this._106556291pet15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet15",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle9_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle9 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle9",_BagPanel_SetStyle9);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty56_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 510;
         return _loc1_;
      }
      
      public function set slot131(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295471slot131;
         if(_loc2_ !== param1)
         {
            this._2113295471slot131 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot131",_loc2_,param1));
         }
      }
      
      public function set slot134(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295468slot134;
         if(_loc2_ !== param1)
         {
            this._2113295468slot134 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot134",_loc2_,param1));
         }
      }
      
      public function set slot132(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295470slot132;
         if(_loc2_ !== param1)
         {
            this._2113295470slot132 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot132",_loc2_,param1));
         }
      }
      
      public function set slot136(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295466slot136;
         if(_loc2_ !== param1)
         {
            this._2113295466slot136 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot136",_loc2_,param1));
         }
      }
      
      public function set slot133(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295469slot133;
         if(_loc2_ !== param1)
         {
            this._2113295469slot133 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot133",_loc2_,param1));
         }
      }
      
      public function set slot137(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295465slot137;
         if(_loc2_ !== param1)
         {
            this._2113295465slot137 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot137",_loc2_,param1));
         }
      }
      
      public function __pet17_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function set slot139(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295463slot139;
         if(_loc2_ !== param1)
         {
            this._2113295463slot139 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot139",_loc2_,param1));
         }
      }
      
      public function set slot130(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295472slot130;
         if(_loc2_ !== param1)
         {
            this._2113295472slot130 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot130",_loc2_,param1));
         }
      }
      
      public function __pet7_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function mouseAction(param1:MouseEvent, param2:int) : void
      {
         param1.stopImmediatePropagation();
         if(param2 == GamePredef.ACTION_REPAIR_NOWEAR)
         {
            if(param1.ctrlKey)
            {
               _core.remote.repairAll(1);
               return;
            }
         }
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[param2]);
         _core.view.mouseState = param2;
         _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_CHA;
      }
      
      private function _BagPanel_SetProperty21_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty21 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 85;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty21",_BagPanel_SetProperty21);
         return _loc1_;
      }
      
      public function set slot138(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295464slot138;
         if(_loc2_ !== param1)
         {
            this._2113295464slot138 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot138",_loc2_,param1));
         }
      }
      
      public function set slot135(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295467slot135;
         if(_loc2_ !== param1)
         {
            this._2113295467slot135 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot135",_loc2_,param1));
         }
      }
      
      public function set pet17(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106556293pet17;
         if(_loc2_ !== param1)
         {
            this._106556293pet17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet17",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild18_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild18 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild18",_BagPanel_RemoveChild18);
         return _loc1_;
      }
      
      public function get goldSelected() : Boolean
      {
         return radioGold.selected;
      }
      
      public function set slot140(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295441slot140;
         if(_loc2_ !== param1)
         {
            this._2113295441slot140 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot140",_loc2_,param1));
         }
      }
      
      public function set slot141(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295440slot141;
         if(_loc2_ !== param1)
         {
            this._2113295440slot141 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot141",_loc2_,param1));
         }
      }
      
      public function set slot142(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295439slot142;
         if(_loc2_ !== param1)
         {
            this._2113295439slot142 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot142",_loc2_,param1));
         }
      }
      
      public function set slot143(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295438slot143;
         if(_loc2_ !== param1)
         {
            this._2113295438slot143 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot143",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty78_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty78 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 228;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty78",_BagPanel_SetProperty78);
         return _loc1_;
      }
      
      public function set slot144(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295437slot144;
         if(_loc2_ !== param1)
         {
            this._2113295437slot144 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot144",_loc2_,param1));
         }
      }
      
      public function set slot145(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295436slot145;
         if(_loc2_ !== param1)
         {
            this._2113295436slot145 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot145",_loc2_,param1));
         }
      }
      
      public function set slot148(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295433slot148;
         if(_loc2_ !== param1)
         {
            this._2113295433slot148 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot148",_loc2_,param1));
         }
      }
      
      public function set slot149(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295432slot149;
         if(_loc2_ !== param1)
         {
            this._2113295432slot149 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot149",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty6_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty6 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 20;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty6",_BagPanel_SetProperty6);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty43_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty43 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty43",_BagPanel_SetProperty43);
         return _loc1_;
      }
      
      public function set slot147(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295434slot147;
         if(_loc2_ !== param1)
         {
            this._2113295434slot147 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot147",_loc2_,param1));
         }
      }
      
      public function set sixthCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1671461938sixthCanvas;
         if(_loc2_ !== param1)
         {
            this._1671461938sixthCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sixthCanvas",_loc2_,param1));
         }
      }
      
      public function set slot152(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295408slot152;
         if(_loc2_ !== param1)
         {
            this._2113295408slot152 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot152",_loc2_,param1));
         }
      }
      
      public function set slot151(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295409slot151;
         if(_loc2_ !== param1)
         {
            this._2113295409slot151 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot151",_loc2_,param1));
         }
      }
      
      public function set slot155(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295405slot155;
         if(_loc2_ !== param1)
         {
            this._2113295405slot155 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot155",_loc2_,param1));
         }
      }
      
      public function set slot156(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295404slot156;
         if(_loc2_ !== param1)
         {
            this._2113295404slot156 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot156",_loc2_,param1));
         }
      }
      
      public function set slot153(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295407slot153;
         if(_loc2_ !== param1)
         {
            this._2113295407slot153 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot153",_loc2_,param1));
         }
      }
      
      public function set slot158(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295402slot158;
         if(_loc2_ !== param1)
         {
            this._2113295402slot158 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot158",_loc2_,param1));
         }
      }
      
      public function set slot159(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295401slot159;
         if(_loc2_ !== param1)
         {
            this._2113295401slot159 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot159",_loc2_,param1));
         }
      }
      
      public function set slot157(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295403slot157;
         if(_loc2_ !== param1)
         {
            this._2113295403slot157 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot157",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty65_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty65 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty65",_BagPanel_SetProperty65);
         return _loc1_;
      }
      
      public function __pet13_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set slot154(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295406slot154;
         if(_loc2_ !== param1)
         {
            this._2113295406slot154 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot154",_loc2_,param1));
         }
      }
      
      public function set slot150(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295410slot150;
         if(_loc2_ !== param1)
         {
            this._2113295410slot150 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot150",_loc2_,param1));
         }
      }
      
      public function set slot146(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295435slot146;
         if(_loc2_ !== param1)
         {
            this._2113295435slot146 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot146",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty30_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty30 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 347;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty30",_BagPanel_SetProperty30);
         return _loc1_;
      }
      
      public function set slot161(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295378slot161;
         if(_loc2_ !== param1)
         {
            this._2113295378slot161 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot161",_loc2_,param1));
         }
      }
      
      public function set slot162(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295377slot162;
         if(_loc2_ !== param1)
         {
            this._2113295377slot162 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot162",_loc2_,param1));
         }
      }
      
      public function set slot163(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295376slot163;
         if(_loc2_ !== param1)
         {
            this._2113295376slot163 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot163",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild27_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild27 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild27",_BagPanel_RemoveChild27);
         return _loc1_;
      }
      
      public function set slot165(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295374slot165;
         if(_loc2_ !== param1)
         {
            this._2113295374slot165 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot165",_loc2_,param1));
         }
      }
      
      public function set slot166(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295373slot166;
         if(_loc2_ !== param1)
         {
            this._2113295373slot166 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot166",_loc2_,param1));
         }
      }
      
      public function __button2_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_DROP);
      }
      
      public function set slot169(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295370slot169;
         if(_loc2_ !== param1)
         {
            this._2113295370slot169 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot169",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonSort() : Button
      {
         return this._358524912buttonSort;
      }
      
      public function set seventhCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._315773959seventhCanvas;
         if(_loc2_ !== param1)
         {
            this._315773959seventhCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seventhCanvas",_loc2_,param1));
         }
      }
      
      public function __pet16_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function set slot167(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295372slot167;
         if(_loc2_ !== param1)
         {
            this._2113295372slot167 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot167",_loc2_,param1));
         }
      }
      
      public function set slot164(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295375slot164;
         if(_loc2_ !== param1)
         {
            this._2113295375slot164 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot164",_loc2_,param1));
         }
      }
      
      public function __btnTabBag0_click(param1:MouseEvent) : void
      {
         setBagTab(0);
      }
      
      public function __pet15_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function addSlotListener() : void
      {
         var _loc1_:int = GamePredef.MAX_BAG_TAB * 30;
         var _loc2_:int = 1;
         while(_loc2_ <= _loc1_)
         {
            this["slot" + _loc2_].addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
            this["slot" + _loc2_].addEventListener(MouseEvent.MOUSE_DOWN,downHandler);
            _loc2_++;
         }
      }
      
      public function set slot172(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295346slot172;
         if(_loc2_ !== param1)
         {
            this._2113295346slot172 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot172",_loc2_,param1));
         }
      }
      
      public function __btnTabPet4_click(param1:MouseEvent) : void
      {
         setPetTab(4);
      }
      
      public function set slot160(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295379slot160;
         if(_loc2_ !== param1)
         {
            this._2113295379slot160 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot160",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty52_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty52 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty52",_BagPanel_SetProperty52);
         return _loc1_;
      }
      
      public function set slot168(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295371slot168;
         if(_loc2_ !== param1)
         {
            this._2113295371slot168 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot168",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle5_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle5 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle5",_BagPanel_SetStyle5);
         return _loc1_;
      }
      
      public function set slot173(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295345slot173;
         if(_loc2_ !== param1)
         {
            this._2113295345slot173 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot173",_loc2_,param1));
         }
      }
      
      public function set slot177(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295341slot177;
         if(_loc2_ !== param1)
         {
            this._2113295341slot177 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot177",_loc2_,param1));
         }
      }
      
      public function set slot170(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295348slot170;
         if(_loc2_ !== param1)
         {
            this._2113295348slot170 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot170",_loc2_,param1));
         }
      }
      
      public function set slot178(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295340slot178;
         if(_loc2_ !== param1)
         {
            this._2113295340slot178 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot178",_loc2_,param1));
         }
      }
      
      public function __pet6_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function set slot179(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295339slot179;
         if(_loc2_ !== param1)
         {
            this._2113295339slot179 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot179",_loc2_,param1));
         }
      }
      
      public function set slot174(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295344slot174;
         if(_loc2_ !== param1)
         {
            this._2113295344slot174 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot174",_loc2_,param1));
         }
      }
      
      public function set slot175(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295343slot175;
         if(_loc2_ !== param1)
         {
            this._2113295343slot175 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot175",_loc2_,param1));
         }
      }
      
      public function set slot171(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295347slot171;
         if(_loc2_ !== param1)
         {
            this._2113295347slot171 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot171",_loc2_,param1));
         }
      }
      
      private function _BagPanel_RemoveChild14_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild14 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild14",_BagPanel_RemoveChild14);
         return _loc1_;
      }
      
      public function set basicglowbutton1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1120322596basicglowbutton1;
         if(_loc2_ !== param1)
         {
            this._1120322596basicglowbutton1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicglowbutton1",_loc2_,param1));
         }
      }
      
      public function __buttonSort_click(param1:MouseEvent) : void
      {
         bagSort();
      }
      
      private function _BagPanel_SetProperty74_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty74 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 40;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty74",_BagPanel_SetProperty74);
         return _loc1_;
      }
      
      public function set slot184(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295313slot184;
         if(_loc2_ !== param1)
         {
            this._2113295313slot184 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot184",_loc2_,param1));
         }
      }
      
      public function set slot181(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295316slot181;
         if(_loc2_ !== param1)
         {
            this._2113295316slot181 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot181",_loc2_,param1));
         }
      }
      
      public function set slot185(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295312slot185;
         if(_loc2_ !== param1)
         {
            this._2113295312slot185 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot185",_loc2_,param1));
         }
      }
      
      public function set slot182(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295315slot182;
         if(_loc2_ !== param1)
         {
            this._2113295315slot182 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot182",_loc2_,param1));
         }
      }
      
      public function set slot183(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295314slot183;
         if(_loc2_ !== param1)
         {
            this._2113295314slot183 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot183",_loc2_,param1));
         }
      }
      
      public function __pet3_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set slot180(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295317slot180;
         if(_loc2_ !== param1)
         {
            this._2113295317slot180 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot180",_loc2_,param1));
         }
      }
      
      public function set slot189(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295308slot189;
         if(_loc2_ !== param1)
         {
            this._2113295308slot189 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot189",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty2 = _loc1_;
         _loc1_.name = "styleName";
         _loc1_.value = "CanvasBorder";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty2",_BagPanel_SetProperty2);
         return _loc1_;
      }
      
      public function set slot187(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295310slot187;
         if(_loc2_ !== param1)
         {
            this._2113295310slot187 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot187",_loc2_,param1));
         }
      }
      
      public function set slot186(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295311slot186;
         if(_loc2_ !== param1)
         {
            this._2113295311slot186 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot186",_loc2_,param1));
         }
      }
      
      public function __pet2_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_SetStyle19_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle19 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle19",_BagPanel_SetStyle19);
         return _loc1_;
      }
      
      public function set slot188(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295309slot188;
         if(_loc2_ !== param1)
         {
            this._2113295309slot188 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot188",_loc2_,param1));
         }
      }
      
      public function set slot190(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295286slot190;
         if(_loc2_ !== param1)
         {
            this._2113295286slot190 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot190",_loc2_,param1));
         }
      }
      
      public function set slot176(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295342slot176;
         if(_loc2_ !== param1)
         {
            this._2113295342slot176 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot176",_loc2_,param1));
         }
      }
      
      public function set slot192(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295284slot192;
         if(_loc2_ !== param1)
         {
            this._2113295284slot192 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot192",_loc2_,param1));
         }
      }
      
      public function set slot193(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295283slot193;
         if(_loc2_ !== param1)
         {
            this._2113295283slot193 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot193",_loc2_,param1));
         }
      }
      
      public function quickShowTempSlot() : void
      {
         var func:Function = null;
         func = function(param1:FlexEvent):void
         {
            this.removeEventListener(FlexEvent.CREATION_COMPLETE,func);
            showTempSlot();
         };
         if(!this.initialized)
         {
            this.addEventListener(FlexEvent.CREATION_COMPLETE,func);
            this.visible = true;
         }
         else
         {
            this.visible = true;
            showTempSlot();
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
      public function get slot13() : ItemSlot
      {
         return this._899454816slot13;
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
      public function get slot17() : ItemSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : ItemSlot
      {
         return this._899454810slot19;
      }
      
      public function set slot196(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295280slot196;
         if(_loc2_ !== param1)
         {
            this._2113295280slot196 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot196",_loc2_,param1));
         }
      }
      
      public function set slot194(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295282slot194;
         if(_loc2_ !== param1)
         {
            this._2113295282slot194 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot194",_loc2_,param1));
         }
      }
      
      public function set slot191(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295285slot191;
         if(_loc2_ !== param1)
         {
            this._2113295285slot191 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot191",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : ItemSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : ItemSlot
      {
         return this._899454811slot18;
      }
      
      public function set slot199(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295277slot199;
         if(_loc2_ !== param1)
         {
            this._2113295277slot199 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot199",_loc2_,param1));
         }
      }
      
      public function set slot195(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295281slot195;
         if(_loc2_ !== param1)
         {
            this._2113295281slot195 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot195",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      private function _BagPanel_SetProperty61_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty61 = _loc1_;
         _loc1_.name = "styleName";
         _loc1_.value = "CanvasBorder";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty61",_BagPanel_SetProperty61);
         return _loc1_;
      }
      
      public function set slot198(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295278slot198;
         if(_loc2_ !== param1)
         {
            this._2113295278slot198 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot198",_loc2_,param1));
         }
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
      
      private function sortButtonReset(param1:TimerEvent = null) : void
      {
         buttonSort.enabled = true;
         if(_bagSortTimer)
         {
            _bagSortTimer.removeEventListener(TimerEvent.TIMER,sortButtonReset);
            _bagSortTimer = null;
         }
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
      
      public function set slot197(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113295279slot197;
         if(_loc2_ !== param1)
         {
            this._2113295279slot197 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot197",_loc2_,param1));
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
      public function get slot27() : ItemSlot
      {
         return this._899454781slot27;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot28() : ItemSlot
      {
         return this._899454780slot28;
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
      public function get slot20() : ItemSlot
      {
         return this._899454788slot20;
      }
      
      private function _BagPanel_RemoveChild23_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild23 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild23",_BagPanel_RemoveChild23);
         return _loc1_;
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
      
      public function set eighthCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1481837455eighthCanvas;
         if(_loc2_ !== param1)
         {
            this._1481837455eighthCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eighthCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot39() : ItemSlot
      {
         return this._899454748slot39;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot33() : ItemSlot
      {
         return this._899454754slot33;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot34() : ItemSlot
      {
         return this._899454753slot34;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot37() : ItemSlot
      {
         return this._899454750slot37;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot30() : ItemSlot
      {
         return this._899454757slot30;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot38() : ItemSlot
      {
         return this._899454749slot38;
      }
      
      private function _BagPanel_RemoveChild7_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild7 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild7",_BagPanel_RemoveChild7);
         return _loc1_;
      }
      
      public function __pet15_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty83_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty83 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty83",_BagPanel_SetProperty83);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot40() : ItemSlot
      {
         return this._899454726slot40;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot41() : ItemSlot
      {
         return this._899454725slot41;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot43() : ItemSlot
      {
         return this._899454723slot43;
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
      
      public function __pet8_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot48() : ItemSlot
      {
         return this._899454718slot48;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot42() : ItemSlot
      {
         return this._899454724slot42;
      }
      
      private function _BagPanel_SetStyle1_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle1 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle1",_BagPanel_SetStyle1);
         return _loc1_;
      }
      
      public function __pet12_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot49() : ItemSlot
      {
         return this._899454717slot49;
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
      
      private function _BagPanel_SetStyle28_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle28 = _loc1_;
         _loc1_.name = "bottom";
         _loc1_.value = 45;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle28",_BagPanel_SetStyle28);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot57() : ItemSlot
      {
         return this._899454688slot57;
      }
      
      public function __pet5_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function __pet16_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function __pet16_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot47() : ItemSlot
      {
         return this._899454719slot47;
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
      
      [Bindable(event="propertyChange")]
      public function get slot62() : ItemSlot
      {
         return this._899454662slot62;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot63() : ItemSlot
      {
         return this._899454661slot63;
      }
      
      private function _BagPanel_RemoveChild10_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild10 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild10",_BagPanel_RemoveChild10);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot67() : ItemSlot
      {
         return this._899454657slot67;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot69() : ItemSlot
      {
         return this._899454655slot69;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot64() : ItemSlot
      {
         return this._899454660slot64;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot66() : ItemSlot
      {
         return this._899454658slot66;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot68() : ItemSlot
      {
         return this._899454656slot68;
      }
      
      [Bindable(event="propertyChange")]
      public function get boxlabel2() : BoxLabel
      {
         return this._1452349769boxlabel2;
      }
      
      public function __btnTabBag5_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,6);
      }
      
      [Bindable(event="propertyChange")]
      public function get boxlabel3() : BoxLabel
      {
         return this._1452349770boxlabel3;
      }
      
      [Bindable(event="propertyChange")]
      public function get boxlabel4() : BoxLabel
      {
         return this._1452349771boxlabel4;
      }
      
      [Bindable(event="propertyChange")]
      public function get boxlabel5() : BoxLabel
      {
         return this._1452349772boxlabel5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot65() : ItemSlot
      {
         return this._899454659slot65;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot70() : ItemSlot
      {
         return this._899454633slot70;
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
      
      public function set nineCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1055511382nineCanvas;
         if(_loc2_ !== param1)
         {
            this._1055511382nineCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nineCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot75() : ItemSlot
      {
         return this._899454628slot75;
      }
      
      private function _BagPanel_SetProperty70_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty70 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 202;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty70",_BagPanel_SetProperty70);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot77() : ItemSlot
      {
         return this._899454626slot77;
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
      
      [Bindable(event="propertyChange")]
      public function get slot74() : ItemSlot
      {
         return this._899454629slot74;
      }
      
      private function _BagPanel_SetProperty17_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty17 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 14;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty17",_BagPanel_SetProperty17);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot76() : ItemSlot
      {
         return this._899454627slot76;
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
      
      [Bindable(event="propertyChange")]
      public function get slot82() : ItemSlot
      {
         return this._899454600slot82;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot83() : ItemSlot
      {
         return this._899454599slot83;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot84() : ItemSlot
      {
         return this._899454598slot84;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot85() : ItemSlot
      {
         return this._899454597slot85;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot86() : ItemSlot
      {
         return this._899454596slot86;
      }
      
      private function _BagPanel_RemoveChild32_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild32 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild32",_BagPanel_RemoveChild32);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot88() : ItemSlot
      {
         return this._899454594slot88;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot89() : ItemSlot
      {
         return this._899454593slot89;
      }
      
      public function setSlot(param1:Object) : void
      {
         _dm.initSlotData(param1);
         updateView();
      }
      
      private function _BagPanel_SetStyle15_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle15 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle15",_BagPanel_SetStyle15);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot87() : ItemSlot
      {
         return this._899454595slot87;
      }
      
      public function __pet18_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
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
      public function get slot94() : ItemSlot
      {
         return this._899454567slot94;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot95() : ItemSlot
      {
         return this._899454566slot95;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot96() : ItemSlot
      {
         return this._899454565slot96;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot91() : ItemSlot
      {
         return this._899454570slot91;
      }
      
      private function _BagPanel_SetProperty39_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty39 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty39",_BagPanel_SetProperty39);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot98() : ItemSlot
      {
         return this._899454563slot98;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot99() : ItemSlot
      {
         return this._899454562slot99;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot97() : ItemSlot
      {
         return this._899454564slot97;
      }
      
      public function __silver_click(param1:MouseEvent) : void
      {
         clickLock(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get fouthCanvas() : Canvas
      {
         return this._162384312fouthCanvas;
      }
      
      public function __pet1_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _BagPanel_SetStyle37_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle37 = _loc1_;
         _loc1_.name = "verticalGap";
         _loc1_.value = 2.2;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle37",_BagPanel_SetStyle37);
         return _loc1_;
      }
      
      public function __btnTabBag3_click(param1:MouseEvent) : void
      {
         setBagTab(3);
      }
      
      public function ___BagPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         returnPet();
      }
      
      public function __btnTabPet7_click(param1:MouseEvent) : void
      {
         setPetTab(7);
      }
      
      private function _BagPanel_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild3",_BagPanel_RemoveChild3);
         return _loc1_;
      }
      
      public function __pet14_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty26_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty26 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 120;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty26",_BagPanel_SetProperty26);
         return _loc1_;
      }
      
      private function showTempSlot() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT);
         _loc1_.startFollow(this);
         _loc1_.visible = !_loc1_.visible;
      }
      
      private function _BagPanel_SetStyle24_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle24 = _loc1_;
         _loc1_.name = "textAlign";
         _loc1_.value = "left";
         BindingManager.executeBindings(this,"_BagPanel_SetStyle24",_BagPanel_SetStyle24);
         return _loc1_;
      }
      
      public function __pet6_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function __pet4_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty48_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty48 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty48",_BagPanel_SetProperty48);
         return _loc1_;
      }
      
      public function __pet17_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _BagPanel_SetProperty13_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty13 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 85;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty13",_BagPanel_SetProperty13);
         return _loc1_;
      }
      
      private function _BagPanel_SetStyle11_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle11 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle11",_BagPanel_SetStyle11);
         return _loc1_;
      }
      
      private function _BagPanel_AddChild3_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _BagPanel_AddChild3 = _loc1_;
         _loc1_.position = "lastChild";
         BindingManager.executeBindings(this,"_BagPanel_AddChild3",_BagPanel_AddChild3);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty35_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty35 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 48;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty35",_BagPanel_SetProperty35);
         return _loc1_;
      }
      
      private function _BagPanel_SetStyle33_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle33 = _loc1_;
         _loc1_.name = "verticalGap";
         _loc1_.value = 2.2;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle33",_BagPanel_SetStyle33);
         return _loc1_;
      }
      
      public function set silverLockFlag(param1:Boolean) : *
      {
         _silverLockFlag = param1;
         if(_silverLockFlag)
         {
            silver.styleName = "SilverLocked";
         }
         else
         {
            silver.styleName = "SilverUnlock";
         }
      }
      
      public function clickLock(param1:int) : void
      {
         var sfunc:Function = null;
         var gfunc:Function = null;
         var id:int = param1;
         switch(id)
         {
            case 1:
               if(silverLockFlag)
               {
                  sfunc = function(param1:String):void
                  {
                     _core.remote.call("unlockMoney",new Responder(doUnlockMoneySilver),MD5.hash(param1));
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.BAGPANEL_S[21],sfunc);
               }
               else
               {
                  silverLockFlag = !silverLockFlag;
               }
               break;
            case 2:
               if(goldLockFlag)
               {
                  gfunc = function(param1:String):void
                  {
                     _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
               }
               else
               {
                  goldLockFlag = !goldLockFlag;
               }
         }
      }
      
      public function __pet2_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _BagPanel_SetProperty57_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty57 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty57",_BagPanel_SetProperty57);
         return _loc1_;
      }
      
      public function __pet13_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty22_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty22 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 22;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty22",_BagPanel_SetProperty22);
         return _loc1_;
      }
      
      private function _BagPanel_RemoveChild19_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild19 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild19",_BagPanel_RemoveChild19);
         return _loc1_;
      }
      
      public function updateView() : void
      {
         var _loc4_:Object = null;
         var _loc5_:ItemSlot = null;
         if(!tnBag)
         {
            return;
         }
         var _loc1_:Number = 1;
         var _loc2_:Number = _loc1_ + 30 * GamePredef.MAX_BAG_TAB - 1;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this["slot" + _loc3_].enabled = true;
            this["slot" + _loc3_].acceptable = true;
            _loc3_++;
         }
         for each(_loc4_ in _dm.sList)
         {
            if(ToolKit.isBigThan(_loc4_.sid,GamePredef.SLOT_SID_BAG[0]) && ToolKit.isSmallOrEqual(_loc4_.sid,GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum]) || ToolKit.isBigThan(_loc4_.sid,GamePredef.SLOT_SID_BAG[7]) && ToolKit.isSmallOrEqual(_loc4_.sid,GamePredef.SLOT_SID_BAG[8]) || ToolKit.isBigThan(_loc4_.sid,GamePredef.SLOT_SID_BAG[8]) && ToolKit.isSmallOrEqual(_loc4_.sid,GamePredef.SLOT_SID_BAG[9]))
            {
               _loc5_ = ItemSlot(_core.view.getSlot(_loc4_.sid));
               _loc5_.slotData = _loc4_;
               _loc5_.type = _loc4_.type;
               _loc5_.giid = _loc4_.itemId;
               _loc5_.stackNum = _loc4_.stackNum;
               if(ToolKit.isBigThan(_loc4_.sid,GamePredef.SLOT_SID_BAG[8]) && ToolKit.isSmallOrEqual(_loc4_.sid,GamePredef.SLOT_SID_BAG[9]) && ToolKit.isEqual(_loc4_.type,GamePredef.TBL_EQUIPT_INSTANCE) && ToolKit.isEqual(_loc4_.stackNum,0))
               {
                  _loc5_.enabled = false;
                  _loc5_.acceptable = false;
               }
            }
         }
         if(ToolKit.isEqual(_core.player.bagSlotNum,2))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = false;
            fouthCanvas.enabled = false;
            fifthCanvas.enabled = false;
            sixthCanvas.enabled = false;
            seventhCanvas.enabled = false;
            btnTabBag1.enabled = true;
            btnTabBag2.enabled = false;
            btnTabBag3.enabled = false;
            btnTabBag4.enabled = false;
            btnTabBag5.enabled = false;
            btnTabBag6.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bagSlotNum,3))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = false;
            fifthCanvas.enabled = false;
            sixthCanvas.enabled = false;
            seventhCanvas.enabled = false;
            btnTabBag1.enabled = true;
            btnTabBag2.enabled = true;
            btnTabBag3.enabled = false;
            btnTabBag4.enabled = false;
            btnTabBag5.enabled = false;
            btnTabBag6.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bagSlotNum,4))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = true;
            fifthCanvas.enabled = false;
            sixthCanvas.enabled = false;
            seventhCanvas.enabled = false;
            btnTabBag1.enabled = true;
            btnTabBag2.enabled = true;
            btnTabBag3.enabled = true;
            btnTabBag4.enabled = false;
            btnTabBag5.enabled = false;
            btnTabBag6.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bagSlotNum,5))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = true;
            fifthCanvas.enabled = true;
            sixthCanvas.enabled = false;
            seventhCanvas.enabled = false;
            btnTabBag1.enabled = true;
            btnTabBag2.enabled = true;
            btnTabBag3.enabled = true;
            btnTabBag4.enabled = true;
            btnTabBag5.enabled = false;
            btnTabBag6.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bagSlotNum,6))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = true;
            fifthCanvas.enabled = true;
            sixthCanvas.enabled = true;
            seventhCanvas.enabled = false;
            btnTabBag1.enabled = true;
            btnTabBag2.enabled = true;
            btnTabBag3.enabled = true;
            btnTabBag4.enabled = true;
            btnTabBag5.enabled = true;
            btnTabBag6.enabled = false;
         }
         else if(ToolKit.isEqual(_core.player.bagSlotNum,7))
         {
            secondCanvas.enabled = true;
            thirdCanvas.enabled = true;
            fouthCanvas.enabled = true;
            fifthCanvas.enabled = true;
            sixthCanvas.enabled = true;
            seventhCanvas.enabled = true;
            btnTabBag1.enabled = true;
            btnTabBag2.enabled = true;
            btnTabBag3.enabled = true;
            btnTabBag4.enabled = true;
            btnTabBag5.enabled = true;
            btnTabBag6.enabled = true;
         }
         else
         {
            secondCanvas.enabled = false;
            thirdCanvas.enabled = false;
            fouthCanvas.enabled = false;
            fifthCanvas.enabled = false;
            sixthCanvas.enabled = false;
            seventhCanvas.enabled = false;
            btnTabBag1.enabled = false;
            btnTabBag2.enabled = false;
            btnTabBag3.enabled = false;
            btnTabBag4.enabled = false;
            btnTabBag5.enabled = false;
            btnTabBag6.enabled = false;
         }
      }
      
      public function __btnTabPet0_click(param1:MouseEvent) : void
      {
         setPetTab(0);
      }
      
      private function _BagPanel_SetStyle20_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle20 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle20",_BagPanel_SetStyle20);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty79_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty79 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 10;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty79",_BagPanel_SetProperty79);
         return _loc1_;
      }
      
      public function __pet3_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_SetProperty7_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty7 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty7",_BagPanel_SetProperty7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot100() : ItemSlot
      {
         return this._2113295565slot100;
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
      public function get slot106() : ItemSlot
      {
         return this._2113295559slot106;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot101() : ItemSlot
      {
         return this._2113295564slot101;
      }
      
      public function __pet3_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_SetProperty44_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty44 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty44",_BagPanel_SetProperty44);
         return _loc1_;
      }
      
      public function set thirdCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._375587425thirdCanvas;
         if(_loc2_ !== param1)
         {
            this._375587425thirdCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thirdCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot107() : ItemSlot
      {
         return this._2113295558slot107;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot108() : ItemSlot
      {
         return this._2113295557slot108;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot109() : ItemSlot
      {
         return this._2113295556slot109;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot103() : ItemSlot
      {
         return this._2113295562slot103;
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
      public function get slot113() : ItemSlot
      {
         return this._2113295531slot113;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot114() : ItemSlot
      {
         return this._2113295530slot114;
      }
      
      public function enableUI() : void
      {
         this.button2.enabled = true;
         this.button3.enabled = true;
         this.button4.enabled = true;
         this.btnPetTrade.enabled = true;
         this.buttonSort.enabled = true;
         this.basicglowbutton1.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot116() : ItemSlot
      {
         return this._2113295528slot116;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot118() : ItemSlot
      {
         return this._2113295526slot118;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot119() : ItemSlot
      {
         return this._2113295525slot119;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot115() : ItemSlot
      {
         return this._2113295529slot115;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot110() : ItemSlot
      {
         return this._2113295534slot110;
      }
      
      public function __radioGold_click(param1:MouseEvent) : void
      {
         changeMoneyType(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bagtitle() : BasicTitleCanvas
      {
         return this._2050561200bagtitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot121() : ItemSlot
      {
         return this._2113295502slot121;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot122() : ItemSlot
      {
         return this._2113295501slot122;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot123() : ItemSlot
      {
         return this._2113295500slot123;
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
      
      public function __pet18_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot117() : ItemSlot
      {
         return this._2113295527slot117;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot124() : ItemSlot
      {
         return this._2113295499slot124;
      }
      
      private function _BagPanel_SetProperty66_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty66 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty66",_BagPanel_SetProperty66);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet10() : ItemSlot
      {
         return this._106556286pet10;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet11() : ItemSlot
      {
         return this._106556287pet11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot120() : ItemSlot
      {
         return this._2113295503slot120;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet14() : ItemSlot
      {
         return this._106556290pet14;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet15() : ItemSlot
      {
         return this._106556291pet15;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet16() : ItemSlot
      {
         return this._106556292pet16;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet17() : ItemSlot
      {
         return this._106556293pet17;
      }
      
      public function __btnTabBag0_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot127() : ItemSlot
      {
         return this._2113295496slot127;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot129() : ItemSlot
      {
         return this._2113295494slot129;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet18() : ItemSlot
      {
         return this._106556294pet18;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BagPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BagPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_BagPanelWatcherSetupUtil");
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
      
      private function addPetListener() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= GamePredef.MAX_PET_PER_PAGE)
         {
            this["pet" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,petDClickHankler);
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot133() : ItemSlot
      {
         return this._2113295469slot133;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet12() : ItemSlot
      {
         return this._106556288pet12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot139() : ItemSlot
      {
         return this._2113295463slot139;
      }
      
      private function _BagPanel_SetProperty31_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty31 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 130;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty31",_BagPanel_SetProperty31);
         return _loc1_;
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
      public function get slot137() : ItemSlot
      {
         return this._2113295465slot137;
      }
      
      public function __btnTabBag6_click(param1:MouseEvent) : void
      {
         setBagTab(6);
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
      
      [Bindable(event="propertyChange")]
      public function get slot134() : ItemSlot
      {
         return this._2113295468slot134;
      }
      
      private function _BagPanel_RemoveChild28_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild28 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild28",_BagPanel_RemoveChild28);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot128() : ItemSlot
      {
         return this._2113295495slot128;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot138() : ItemSlot
      {
         return this._2113295464slot138;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot130() : ItemSlot
      {
         return this._2113295472slot130;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet13() : ItemSlot
      {
         return this._106556289pet13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot140() : ItemSlot
      {
         return this._2113295441slot140;
      }
      
      public function set radioGoldBind(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1123890648radioGoldBind;
         if(_loc2_ !== param1)
         {
            this._1123890648radioGoldBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioGoldBind",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot142() : ItemSlot
      {
         return this._2113295439slot142;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot144() : ItemSlot
      {
         return this._2113295437slot144;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot146() : ItemSlot
      {
         return this._2113295435slot146;
      }
      
      public function set canvas3(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778331canvas3;
         if(_loc2_ !== param1)
         {
            this._550778331canvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot141() : ItemSlot
      {
         return this._2113295440slot141;
      }
      
      public function set canvas4(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778332canvas4;
         if(_loc2_ !== param1)
         {
            this._550778332canvas4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas4",_loc2_,param1));
         }
      }
      
      public function set canvas1(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778329canvas1;
         if(_loc2_ !== param1)
         {
            this._550778329canvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas1",_loc2_,param1));
         }
      }
      
      public function set canvas5(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778333canvas5;
         if(_loc2_ !== param1)
         {
            this._550778333canvas5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas5",_loc2_,param1));
         }
      }
      
      public function set canvas2(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778330canvas2;
         if(_loc2_ !== param1)
         {
            this._550778330canvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas2",_loc2_,param1));
         }
      }
      
      public function set canvas6(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778334canvas6;
         if(_loc2_ !== param1)
         {
            this._550778334canvas6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot147() : ItemSlot
      {
         return this._2113295434slot147;
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
      
      public function __pet9_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot145() : ItemSlot
      {
         return this._2113295436slot145;
      }
      
      [Bindable(event="propertyChange")]
      public function get tnBag() : ViewStack
      {
         return this._110471982tnBag;
      }
      
      private function _petDownHandler(param1:Object) : void
      {
         var handler:Function = null;
         var slot:Object = param1;
         if(slot.slotData.binded <= 0)
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_PET,slot.giid);
                  visible = false;
               }
            };
            Alert.show(Language.BAGPANEL_S[5],"",Alert.YES | Alert.NO,null,handler);
         }
         else
         {
            _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_PET,slot.giid);
            visible = false;
         }
      }
      
      public function __pet13_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_SetStyle6_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle6 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle6",_BagPanel_SetStyle6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot151() : ItemSlot
      {
         return this._2113295409slot151;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot152() : ItemSlot
      {
         return this._2113295408slot152;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot155() : ItemSlot
      {
         return this._2113295405slot155;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot156() : ItemSlot
      {
         return this._2113295404slot156;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot158() : ItemSlot
      {
         return this._2113295402slot158;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot159() : ItemSlot
      {
         return this._2113295401slot159;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot153() : ItemSlot
      {
         return this._2113295407slot153;
      }
      
      override public function initView() : void
      {
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,1))
         {
            radioMoneyBind.selected = true;
         }
         else if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,2))
         {
            radioMoney.selected = true;
         }
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultGold,1))
         {
            radioGoldBind.selected = true;
         }
         else if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultGold,2))
         {
            radioGold.selected = true;
         }
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(!_dm.sInited)
         {
            _core.remote.call("getInitSlot",new Responder(setSlot));
         }
         else
         {
            updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot150() : ItemSlot
      {
         return this._2113295410slot150;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot154() : ItemSlot
      {
         return this._2113295406slot154;
      }
      
      public function __pet9_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot157() : ItemSlot
      {
         return this._2113295403slot157;
      }
      
      public function set slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty53_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty53 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty53",_BagPanel_SetProperty53);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot160() : ItemSlot
      {
         return this._2113295379slot160;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot161() : ItemSlot
      {
         return this._2113295378slot161;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot162() : ItemSlot
      {
         return this._2113295377slot162;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot163() : ItemSlot
      {
         return this._2113295376slot163;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot164() : ItemSlot
      {
         return this._2113295375slot164;
      }
      
      public function __pet12_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot166() : ItemSlot
      {
         return this._2113295373slot166;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot169() : ItemSlot
      {
         return this._2113295370slot169;
      }
      
      public function set slot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seventhCanvas() : Canvas
      {
         return this._315773959seventhCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot167() : ItemSlot
      {
         return this._2113295372slot167;
      }
      
      public function __pet3_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot165() : ItemSlot
      {
         return this._2113295374slot165;
      }
      
      private function _BagPanel_RemoveChild15_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild15 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild15",_BagPanel_RemoveChild15);
         return _loc1_;
      }
      
      public function set slot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot168() : ItemSlot
      {
         return this._2113295371slot168;
      }
      
      public function set slot9(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot7(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function __btnTabBag6_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,7);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot171() : ItemSlot
      {
         return this._2113295347slot171;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot173() : ItemSlot
      {
         return this._2113295345slot173;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot174() : ItemSlot
      {
         return this._2113295344slot174;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot175() : ItemSlot
      {
         return this._2113295343slot175;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot176() : ItemSlot
      {
         return this._2113295342slot176;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot170() : ItemSlot
      {
         return this._2113295348slot170;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot178() : ItemSlot
      {
         return this._2113295340slot178;
      }
      
      private function _BagPanel_SetProperty75_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 218;
         return _loc1_;
      }
      
      public function set slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set slot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot177() : ItemSlot
      {
         return this._2113295341slot177;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot179() : ItemSlot
      {
         return this._2113295339slot179;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot172() : ItemSlot
      {
         return this._2113295346slot172;
      }
      
      public function __pet2_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function __pet12_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot180() : ItemSlot
      {
         return this._2113295317slot180;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot182() : ItemSlot
      {
         return this._2113295315slot182;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot184() : ItemSlot
      {
         return this._2113295313slot184;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot183() : ItemSlot
      {
         return this._2113295314slot183;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot185() : ItemSlot
      {
         return this._2113295312slot185;
      }
      
      private function _BagPanel_SetProperty40_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty40 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty40",_BagPanel_SetProperty40);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot181() : ItemSlot
      {
         return this._2113295316slot181;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot186() : ItemSlot
      {
         return this._2113295311slot186;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot187() : ItemSlot
      {
         return this._2113295310slot187;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot189() : ItemSlot
      {
         return this._2113295308slot189;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot190() : ItemSlot
      {
         return this._2113295286slot190;
      }
      
      private function _BagPanel_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty3 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty3",_BagPanel_SetProperty3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot193() : ItemSlot
      {
         return this._2113295283slot193;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot195() : ItemSlot
      {
         return this._2113295281slot195;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot196() : ItemSlot
      {
         return this._2113295280slot196;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot191() : ItemSlot
      {
         return this._2113295285slot191;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot192() : ItemSlot
      {
         return this._2113295284slot192;
      }
      
      public function set btnTabPet0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715882btnTabPet0;
         if(_loc2_ !== param1)
         {
            this._1551715882btnTabPet0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot188() : ItemSlot
      {
         return this._2113295309slot188;
      }
      
      public function set btnTabPet1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715883btnTabPet1;
         if(_loc2_ !== param1)
         {
            this._1551715883btnTabPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet1",_loc2_,param1));
         }
      }
      
      public function set btnTabPet5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715887btnTabPet5;
         if(_loc2_ !== param1)
         {
            this._1551715887btnTabPet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet5",_loc2_,param1));
         }
      }
      
      public function set btnTabPet2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715884btnTabPet2;
         if(_loc2_ !== param1)
         {
            this._1551715884btnTabPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet2",_loc2_,param1));
         }
      }
      
      public function set btnTabPet6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715888btnTabPet6;
         if(_loc2_ !== param1)
         {
            this._1551715888btnTabPet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet6",_loc2_,param1));
         }
      }
      
      public function set btnTabPet3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715885btnTabPet3;
         if(_loc2_ !== param1)
         {
            this._1551715885btnTabPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet3",_loc2_,param1));
         }
      }
      
      public function set btnTabPet7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715889btnTabPet7;
         if(_loc2_ !== param1)
         {
            this._1551715889btnTabPet7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot197() : ItemSlot
      {
         return this._2113295279slot197;
      }
      
      public function set btnTabPet4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715886btnTabPet4;
         if(_loc2_ !== param1)
         {
            this._1551715886btnTabPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet4",_loc2_,param1));
         }
      }
      
      public function set btnTabPet9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715891btnTabPet9;
         if(_loc2_ !== param1)
         {
            this._1551715891btnTabPet9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet9",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty62_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 280;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot199() : ItemSlot
      {
         return this._2113295277slot199;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot194() : ItemSlot
      {
         return this._2113295282slot194;
      }
      
      public function set btnTabPet8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1551715890btnTabPet8;
         if(_loc2_ !== param1)
         {
            this._1551715890btnTabPet8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTabPet8",_loc2_,param1));
         }
      }
      
      public function setDefaultGold(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               GamePredef.GLOBAL_SETTING.defaultGold = 1;
               if(Boolean(radioGold) && Boolean(radioGoldBind))
               {
                  radioGold.enabled = true;
                  radioGoldBind.enabled = true;
                  radioGoldBind.selected = true;
               }
               break;
            case 2:
               GamePredef.GLOBAL_SETTING.defaultGold = 2;
               if(Boolean(radioGold) && Boolean(radioGoldBind))
               {
                  radioGold.enabled = true;
                  radioGoldBind.enabled = true;
                  radioGold.selected = true;
               }
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP);
         _loc2_.setDefaultGold(param1);
      }
      
      public function __btnTabBag0_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot198() : ItemSlot
      {
         return this._2113295278slot198;
      }
      
      private function _BagPanel_RemoveChild24_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild24 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild24",_BagPanel_RemoveChild24);
         return _loc1_;
      }
      
      public function __button1_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_ITEM);
      }
      
      private function _BagPanel_RemoveChild8_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild8 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild8",_BagPanel_RemoveChild8);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get nineCanvas() : Canvas
      {
         return this._1055511382nineCanvas;
      }
      
      private function _BagPanel_SetStyle2_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle2 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle2",_BagPanel_SetStyle2);
         return _loc1_;
      }
      
      public function get silverSelected() : Boolean
      {
         return radioMoney.selected;
      }
      
      public function __btnTabPet3_click(param1:MouseEvent) : void
      {
         setPetTab(3);
      }
      
      private function _BagPanel_SetStyle29_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle29 = _loc1_;
         _loc1_.name = "bottom";
         _loc1_.value = 20;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle29",_BagPanel_SetStyle29);
         return _loc1_;
      }
      
      public function __pet11_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_RemoveChild11_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild11 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild11",_BagPanel_RemoveChild11);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty71_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty71 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 4;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty71",_BagPanel_SetProperty71);
         return _loc1_;
      }
      
      public function __pet2_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function __pet4_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function _BagPanel_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "normal";
         _loc1_.overrides = [_BagPanel_SetProperty1_i(),_BagPanel_SetProperty2_i(),_BagPanel_SetProperty3_i(),_BagPanel_SetProperty4_i(),_BagPanel_SetProperty5_i(),_BagPanel_SetProperty6_i(),_BagPanel_SetProperty7_i(),_BagPanel_SetProperty8_i(),_BagPanel_SetProperty9_i(),_BagPanel_SetStyle1_i(),_BagPanel_SetStyle2_i(),_BagPanel_SetStyle3_i(),_BagPanel_SetStyle4_i(),_BagPanel_SetStyle5_i(),_BagPanel_SetStyle6_i(),_BagPanel_SetStyle7_i(),_BagPanel_SetStyle8_i(),_BagPanel_SetStyle9_i(),_BagPanel_SetProperty10_i(),_BagPanel_SetStyle10_i(),_BagPanel_SetStyle11_i(),_BagPanel_SetProperty11_i(),_BagPanel_SetProperty12_i(),_BagPanel_SetProperty13_i(),_BagPanel_SetProperty14_i(),_BagPanel_SetStyle12_i(),_BagPanel_SetStyle13_i(),_BagPanel_SetProperty15_i(),_BagPanel_SetProperty16_i(),_BagPanel_SetStyle14_i(),_BagPanel_SetStyle15_i(),_BagPanel_SetProperty17_i(),_BagPanel_SetStyle16_i(),_BagPanel_SetProperty18_i(),_BagPanel_SetProperty19_i(),_BagPanel_SetProperty20_i(),_BagPanel_SetStyle17_i(),_BagPanel_SetStyle18_i()
         ,_BagPanel_SetProperty21_i(),_BagPanel_SetStyle19_i(),_BagPanel_SetProperty22_i(),_BagPanel_SetStyle20_i(),_BagPanel_SetStyle21_i(),_BagPanel_SetProperty23_i(),_BagPanel_SetProperty24_i(),_BagPanel_SetStyle22_i(),_BagPanel_SetProperty25_i(),_BagPanel_SetProperty26_i(),_BagPanel_SetStyle23_i(),_BagPanel_SetStyle24_i(),_BagPanel_SetStyle25_i(),_BagPanel_SetStyle26_i(),_BagPanel_SetStyle27_i(),_BagPanel_SetStyle28_i(),_BagPanel_SetStyle29_i(),_BagPanel_SetStyle30_i(),_BagPanel_SetProperty27_i(),_BagPanel_SetProperty28_i(),_BagPanel_SetProperty29_i(),_BagPanel_SetProperty30_i(),_BagPanel_SetProperty31_i(),_BagPanel_SetProperty32_i(),_BagPanel_SetProperty33_i(),_BagPanel_SetProperty34_i(),_BagPanel_SetProperty35_i(),_BagPanel_SetProperty36_i(),_BagPanel_SetProperty37_i(),_BagPanel_SetProperty38_i(),_BagPanel_SetStyle31_i(),_BagPanel_SetStyle32_i(),_BagPanel_SetProperty39_i(),_BagPanel_SetProperty40_i(),_BagPanel_SetProperty41_i(),_BagPanel_SetProperty42_i(),_BagPanel_SetProperty43_i(),_BagPanel_SetProperty44_i()
         ,_BagPanel_SetProperty45_i(),_BagPanel_SetProperty46_i(),_BagPanel_SetProperty47_i(),_BagPanel_SetProperty48_i(),_BagPanel_SetProperty49_i(),_BagPanel_SetProperty50_i(),_BagPanel_SetProperty51_i(),_BagPanel_SetProperty52_i(),_BagPanel_SetProperty53_i(),_BagPanel_SetProperty54_i(),_BagPanel_SetProperty55_i(),_BagPanel_SetProperty56_c(),_BagPanel_SetProperty57_i(),_BagPanel_SetProperty58_i()];
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty18_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty18 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 14;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty18",_BagPanel_SetProperty18);
         return _loc1_;
      }
      
      public function __pet1_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      private function _BagPanel_RemoveChild33_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild33 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild33",_BagPanel_RemoveChild33);
         return _loc1_;
      }
      
      override public function hide() : void
      {
         var _loc1_:PetCmdCanvas = null;
         var _loc2_:PlayerCmdCanvas = null;
         super.hide();
         if(_core.state == GamePredef.ST_CORE_BATTLE)
         {
            _loc1_ = PetCmdCanvas(_core.view.getUI(ViewManager.MAIN_BATTLE_PET));
            _loc1_.doCmd("btnAttack");
            _loc2_ = PlayerCmdCanvas(_core.view.getUI(ViewManager.MAIN_BATTLE_PLAYER));
            _loc2_.doCmd("btnAttack");
         }
      }
      
      private function _BagPanel_SetStyle16_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle16 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle16",_BagPanel_SetStyle16);
         return _loc1_;
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
         setBagTab(0);
         setPetTab(0);
         var _loc1_:Number = 1;
         while(_loc1_ <= GamePredef.MAX_PET_PER_PAGE)
         {
            this["pet" + _loc1_].styleName = "TransparentSlot";
            _loc1_++;
         }
         sortButtonReset();
         goldLockFlag = true;
      }
      
      private function _BagPanel_RemoveChild20_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild20 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild20",_BagPanel_RemoveChild20);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get thirdCanvas() : Canvas
      {
         return this._375587425thirdCanvas;
      }
      
      public function __btnTabBag1_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,2);
      }
      
      private function _BagPanel_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild4",_BagPanel_RemoveChild4);
         return _loc1_;
      }
      
      private function _BagPanel_SetProperty80_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty80 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 58;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty80",_BagPanel_SetProperty80);
         return _loc1_;
      }
      
      private function petDownHandler(param1:Event) : void
      {
         var slot:ItemSlot = null;
         var func:Function = null;
         var event:Event = param1;
         slot = ItemSlot(event.currentTarget);
         if(currentState != "pet")
         {
            slot.movable = true;
            return;
         }
         event.stopPropagation();
         slot.movable = false;
         if(slot.giid <= 0)
         {
            return;
         }
         if(Boolean(_core.battlePet) && slot.giid == _core.battlePet.id)
         {
            _core.sysMsg(Language.BAGPANEL_S[3]);
            return;
         }
         if(slot.slotData.creatureData.useLv > _core.player.level)
         {
            _core.sysMsg(Language.BAGPANEL_S[4]);
            return;
         }
         if(PetLogic.expToLv(slot.slotData.exp) - 5 > _core.player.level)
         {
            _core.sysMsg(Language.BAGPANEL_S[4]);
            return;
         }
         if(Boolean(_core.battlePet) && PetLogic.expToLv(_core.battlePet.exp) - 5 > _core.player.level)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _petDownHandler(slot);
               }
            };
            Alert.show(Language.PETMANAGERPANEL_S[27],"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            _petDownHandler(slot);
         }
      }
      
      private function _BagPanel_SetProperty27_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty27 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 210;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty27",_BagPanel_SetProperty27);
         return _loc1_;
      }
      
      private function returnPet() : void
      {
         if(currentState != "pet")
         {
            return;
         }
         if(_core.battlePet == null)
         {
            _core.sysMsg(Language.BAGPANEL_S[2]);
            return;
         }
         _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_PET,_core.battlePet.id);
      }
      
      public function set secondCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1180008724secondCanvas;
         if(_loc2_ !== param1)
         {
            this._1180008724secondCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secondCanvas",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle25_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle25 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle25",_BagPanel_SetStyle25);
         return _loc1_;
      }
      
      public function __pet15_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set slot200(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294604slot200;
         if(_loc2_ !== param1)
         {
            this._2113294604slot200 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot200",_loc2_,param1));
         }
      }
      
      public function __pet10_rollOut(param1:MouseEvent) : void
      {
         destroyTip(param1);
      }
      
      public function set slot201(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294603slot201;
         if(_loc2_ !== param1)
         {
            this._2113294603slot201 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot201",_loc2_,param1));
         }
      }
      
      public function set slot205(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294599slot205;
         if(_loc2_ !== param1)
         {
            this._2113294599slot205 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot205",_loc2_,param1));
         }
      }
      
      public function set slot202(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294602slot202;
         if(_loc2_ !== param1)
         {
            this._2113294602slot202 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot202",_loc2_,param1));
         }
      }
      
      public function set slot206(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294598slot206;
         if(_loc2_ !== param1)
         {
            this._2113294598slot206 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot206",_loc2_,param1));
         }
      }
      
      public function set slot207(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294597slot207;
         if(_loc2_ !== param1)
         {
            this._2113294597slot207 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot207",_loc2_,param1));
         }
      }
      
      public function set slot204(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294600slot204;
         if(_loc2_ !== param1)
         {
            this._2113294600slot204 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot204",_loc2_,param1));
         }
      }
      
      public function set slot208(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294596slot208;
         if(_loc2_ !== param1)
         {
            this._2113294596slot208 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot208",_loc2_,param1));
         }
      }
      
      public function set slot209(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294595slot209;
         if(_loc2_ !== param1)
         {
            this._2113294595slot209 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot209",_loc2_,param1));
         }
      }
      
      public function __pet4_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      private function _BagPanel_SetProperty49_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty49 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty49",_BagPanel_SetProperty49);
         return _loc1_;
      }
      
      public function set slot203(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294601slot203;
         if(_loc2_ !== param1)
         {
            this._2113294601slot203 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot203",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty14_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty14 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 120;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty14",_BagPanel_SetProperty14);
         return _loc1_;
      }
      
      public function set slot210(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294573slot210;
         if(_loc2_ !== param1)
         {
            this._2113294573slot210 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot210",_loc2_,param1));
         }
      }
      
      public function set slot211(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294572slot211;
         if(_loc2_ !== param1)
         {
            this._2113294572slot211 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot211",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet0() : BasicGlowButton
      {
         return this._1551715882btnTabPet0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet1() : BasicGlowButton
      {
         return this._1551715883btnTabPet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet3() : BasicGlowButton
      {
         return this._1551715885btnTabPet3;
      }
      
      public function __radioMoney_click(param1:MouseEvent) : void
      {
         changeMoneyType(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet5() : BasicGlowButton
      {
         return this._1551715887btnTabPet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet6() : BasicGlowButton
      {
         return this._1551715888btnTabPet6;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet7() : BasicGlowButton
      {
         return this._1551715889btnTabPet7;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet8() : BasicGlowButton
      {
         return this._1551715890btnTabPet8;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet4() : BasicGlowButton
      {
         return this._1551715886btnTabPet4;
      }
      
      public function set slot215(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294568slot215;
         if(_loc2_ !== param1)
         {
            this._2113294568slot215 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot215",_loc2_,param1));
         }
      }
      
      public function set slot219(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294564slot219;
         if(_loc2_ !== param1)
         {
            this._2113294564slot219 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot219",_loc2_,param1));
         }
      }
      
      public function set slot212(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294571slot212;
         if(_loc2_ !== param1)
         {
            this._2113294571slot212 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot212",_loc2_,param1));
         }
      }
      
      public function __pet5_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      public function set slot214(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294569slot214;
         if(_loc2_ !== param1)
         {
            this._2113294569slot214 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot214",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle12_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle12 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle12",_BagPanel_SetStyle12);
         return _loc1_;
      }
      
      private function destroyTip(param1:MouseEvent) : void
      {
         if(tip)
         {
            ToolTipManager.destroyToolTip(tip);
         }
         tip = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet9() : BasicGlowButton
      {
         return this._1551715891btnTabPet9;
      }
      
      public function set slot217(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294566slot217;
         if(_loc2_ !== param1)
         {
            this._2113294566slot217 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot217",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTabPet2() : BasicGlowButton
      {
         return this._1551715884btnTabPet2;
      }
      
      public function set slot218(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294565slot218;
         if(_loc2_ !== param1)
         {
            this._2113294565slot218 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot218",_loc2_,param1));
         }
      }
      
      public function __btnTabBag1_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,2);
      }
      
      public function set slot216(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294567slot216;
         if(_loc2_ !== param1)
         {
            this._2113294567slot216 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot216",_loc2_,param1));
         }
      }
      
      public function set slot213(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294570slot213;
         if(_loc2_ !== param1)
         {
            this._2113294570slot213 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot213",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty36_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty36 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 347;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty36",_BagPanel_SetProperty36);
         return _loc1_;
      }
      
      public function set slot220(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294542slot220;
         if(_loc2_ !== param1)
         {
            this._2113294542slot220 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot220",_loc2_,param1));
         }
      }
      
      public function set slot221(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294541slot221;
         if(_loc2_ !== param1)
         {
            this._2113294541slot221 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot221",_loc2_,param1));
         }
      }
      
      public function set slot223(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294539slot223;
         if(_loc2_ !== param1)
         {
            this._2113294539slot223 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot223",_loc2_,param1));
         }
      }
      
      public function __button4_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_REPAIR_NOWEAR);
      }
      
      public function set slot224(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294538slot224;
         if(_loc2_ !== param1)
         {
            this._2113294538slot224 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot224",_loc2_,param1));
         }
      }
      
      public function set slot225(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294537slot225;
         if(_loc2_ !== param1)
         {
            this._2113294537slot225 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot225",_loc2_,param1));
         }
      }
      
      public function goldDisable() : Boolean
      {
         if(radioGold.selected && goldLockFlag)
         {
            return true;
         }
         return false;
      }
      
      public function set slot226(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294536slot226;
         if(_loc2_ !== param1)
         {
            this._2113294536slot226 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot226",_loc2_,param1));
         }
      }
      
      public function set slot227(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294535slot227;
         if(_loc2_ !== param1)
         {
            this._2113294535slot227 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot227",_loc2_,param1));
         }
      }
      
      public function set slot228(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294534slot228;
         if(_loc2_ !== param1)
         {
            this._2113294534slot228 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot228",_loc2_,param1));
         }
      }
      
      public function set slot229(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294533slot229;
         if(_loc2_ !== param1)
         {
            this._2113294533slot229 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot229",_loc2_,param1));
         }
      }
      
      public function set slot222(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294540slot222;
         if(_loc2_ !== param1)
         {
            this._2113294540slot222 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot222",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetStyle34_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle34 = _loc1_;
         _loc1_.name = "verticalGap";
         _loc1_.value = 2.2;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle34",_BagPanel_SetStyle34);
         return _loc1_;
      }
      
      public function set button2(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._241352512button2;
         if(_loc2_ !== param1)
         {
            this._241352512button2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button2",_loc2_,param1));
         }
      }
      
      public function set button3(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._241352513button3;
         if(_loc2_ !== param1)
         {
            this._241352513button3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button3",_loc2_,param1));
         }
      }
      
      public function set button4(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._241352514button4;
         if(_loc2_ !== param1)
         {
            this._241352514button4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button4",_loc2_,param1));
         }
      }
      
      public function set button1(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._241352511button1;
         if(_loc2_ !== param1)
         {
            this._241352511button1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button1",_loc2_,param1));
         }
      }
      
      public function set button6(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._241352516button6;
         if(_loc2_ !== param1)
         {
            this._241352516button6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button6",_loc2_,param1));
         }
      }
      
      public function __pet14_mouseDown(param1:MouseEvent) : void
      {
         petDownHandler(param1);
      }
      
      public function __btnTabBag2_click(param1:MouseEvent) : void
      {
         setBagTab(2);
      }
      
      private function _BagPanel_SetProperty58_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty58 = _loc1_;
         _loc1_.name = "height";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty58",_BagPanel_SetProperty58);
         return _loc1_;
      }
      
      public function set button7(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._241352517button7;
         if(_loc2_ !== param1)
         {
            this._241352517button7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button7",_loc2_,param1));
         }
      }
      
      public function set slot231(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294510slot231;
         if(_loc2_ !== param1)
         {
            this._2113294510slot231 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot231",_loc2_,param1));
         }
      }
      
      public function set slot232(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294509slot232;
         if(_loc2_ !== param1)
         {
            this._2113294509slot232 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot232",_loc2_,param1));
         }
      }
      
      public function set slot233(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294508slot233;
         if(_loc2_ !== param1)
         {
            this._2113294508slot233 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot233",_loc2_,param1));
         }
      }
      
      public function set slot235(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294506slot235;
         if(_loc2_ !== param1)
         {
            this._2113294506slot235 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot235",_loc2_,param1));
         }
      }
      
      public function set slot236(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294505slot236;
         if(_loc2_ !== param1)
         {
            this._2113294505slot236 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot236",_loc2_,param1));
         }
      }
      
      public function set slot237(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294504slot237;
         if(_loc2_ !== param1)
         {
            this._2113294504slot237 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot237",_loc2_,param1));
         }
      }
      
      public function set slot230(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294511slot230;
         if(_loc2_ !== param1)
         {
            this._2113294511slot230 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot230",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty23_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty23 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 85;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty23",_BagPanel_SetProperty23);
         return _loc1_;
      }
      
      public function __btnTabBag2_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,3);
      }
      
      public function set slot238(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294503slot238;
         if(_loc2_ !== param1)
         {
            this._2113294503slot238 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot238",_loc2_,param1));
         }
      }
      
      public function set slot239(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294502slot239;
         if(_loc2_ !== param1)
         {
            this._2113294502slot239 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot239",_loc2_,param1));
         }
      }
      
      public function set radioMoneyBind(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._79343458radioMoneyBind;
         if(_loc2_ !== param1)
         {
            this._79343458radioMoneyBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioMoneyBind",_loc2_,param1));
         }
      }
      
      public function set slot234(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294507slot234;
         if(_loc2_ !== param1)
         {
            this._2113294507slot234 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot234",_loc2_,param1));
         }
      }
      
      public function __btnTabBag7_dragEnter(param1:DragEvent) : void
      {
         tabDragEnterHandler(param1,8);
      }
      
      public function __btnTabPet6_click(param1:MouseEvent) : void
      {
         setPetTab(6);
      }
      
      private function _BagPanel_SetStyle21_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle21 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle21",_BagPanel_SetStyle21);
         return _loc1_;
      }
      
      public function set slot240(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294480slot240;
         if(_loc2_ !== param1)
         {
            this._2113294480slot240 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot240",_loc2_,param1));
         }
      }
      
      public function set slot242(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294478slot242;
         if(_loc2_ !== param1)
         {
            this._2113294478slot242 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot242",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty8_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty8 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty8",_BagPanel_SetProperty8);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get secondCanvas() : Canvas
      {
         return this._1180008724secondCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot202() : ItemSlot
      {
         return this._2113294602slot202;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot204() : ItemSlot
      {
         return this._2113294600slot204;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot205() : ItemSlot
      {
         return this._2113294599slot205;
      }
      
      private function _BagPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BAGPANEL_U[5];
         _loc1_ = basicglowbutton1;
         _loc1_ = canvas6;
         _loc1_ = button7;
         _loc1_ = silver;
         _loc1_ = silver;
         _loc1_ = button6;
         _loc1_ = button6;
         _loc1_ = gold;
         _loc1_ = gold;
         _loc1_ = canvas2;
         _loc1_ = button7;
         _loc1_ = button7;
         _loc1_ = silver;
         _loc1_ = silver;
         _loc1_ = gold;
         _loc1_ = gold;
         _loc1_ = button6;
         _loc1_ = button6;
         _loc1_ = boxlabel3;
         _loc1_ = boxlabel3;
         _loc1_ = radioMoneyBind;
         _loc1_ = boxlabel4;
         _loc1_ = canvas2;
         _loc1_ = boxlabel3;
         _loc1_ = canvas1;
         _loc1_ = canvas1;
         _loc1_ = boxlabel4;
         _loc1_ = boxlabel4;
         _loc1_ = button7;
         _loc1_ = radioMoney;
         _loc1_ = radioMoneyBind;
         _loc1_ = radioMoneyBind;
         _loc1_ = radioMoney;
         _loc1_ = radioMoney;
         _loc1_ = radioGoldBind;
         _loc1_ = radioGold;
         _loc1_ = radioGoldBind;
         _loc1_ = radioGold;
         _loc1_ = boxlabel5;
         _loc1_ = boxlabel5;
         _loc1_ = boxlabel5;
         _loc1_ = radioGoldBind;
         _loc1_ = radioGold;
         _loc1_ = boxlabel2;
         _loc1_ = boxlabel2;
         _loc1_ = boxlabel2;
         _loc1_ = canvas4;
         _loc1_ = canvas3;
         _loc1_ = boxlabel5;
         _loc1_ = boxlabel2;
         _loc1_ = canvas4;
         _loc1_ = canvas3;
         _loc1_ = canvas1;
         _loc1_ = canvas2;
         _loc1_ = canvas3;
         _loc1_ = canvas4;
         _loc1_ = buttonSort;
         _loc1_ = buttonSort;
         _loc1_ = btnPetTrade;
         _loc1_ = btnPetTrade;
         _loc1_ = button4;
         _loc1_ = button4;
         _loc1_ = button3;
         _loc1_ = button3;
         _loc1_ = button2;
         _loc1_ = button2;
         _loc1_ = button1;
         _loc1_ = button1;
         _loc1_ = canvas5;
         _loc1_ = canvas5;
         _loc1_ = radioMoneyBind;
         _loc1_ = radioMoneyBind;
         _loc1_ = radioGoldBind;
         _loc1_ = radioGoldBind;
         _loc1_ = canvas4;
         _loc1_ = canvas4;
         _loc1_ = radioMoney;
         _loc1_ = radioMoney;
         _loc1_ = radioGold;
         _loc1_ = radioGold;
         _loc1_ = canvas3;
         _loc1_ = canvas3;
         _loc1_ = canvas2;
         _loc1_ = canvas2;
         _loc1_ = canvas1;
         _loc1_ = canvas1;
         _loc1_ = petTabHBox;
         _loc1_ = canvas5;
         _loc1_ = canvas5;
         _loc1_ = bagtitle;
         _loc1_ = Language.BAGPANEL_U[11];
         _loc1_ = canvas6;
         _loc1_ = canvas3;
         _loc1_ = canvas4;
         _loc1_ = canvas1;
         _loc1_ = canvas2;
         _loc1_ = btnPetTrade;
         _loc1_ = button1;
         _loc1_ = button2;
         _loc1_ = button3;
         _loc1_ = button4;
         _loc1_ = buttonSort;
         _loc1_ = petTabHBox;
         _loc1_ = tnBag;
         _loc1_ = firstTile;
         _loc1_ = firstTile;
         _loc1_ = secondTile;
         _loc1_ = secondTile;
         _loc1_ = thirdTile;
         _loc1_ = thirdTile;
         _loc1_ = tile4;
         _loc1_ = tile4;
         _loc1_ = tile5;
         _loc1_ = tile5;
         _loc1_ = canvas5;
         _loc1_ = canvas6;
         _loc1_ = firstTile;
         _loc1_ = bagtitle;
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = tnBag;
         _loc1_ = basicglowbutton1;
         _loc1_ = btnTabBag7;
         _loc1_ = btnTabBag6;
         _loc1_ = btnTabBag5;
         _loc1_ = btnTabBag4;
         _loc1_ = btnTabBag3;
         _loc1_ = btnTabBag2;
         _loc1_ = btnTabBag1;
         _loc1_ = btnTabBag0;
         _loc1_ = button1;
         _loc1_ = button2;
         _loc1_ = button3;
         _loc1_ = button4;
         _loc1_ = buttonSort;
         _loc1_ = btnPetTrade;
         _loc1_ = canvas2;
         _loc1_ = canvas1;
         _loc1_ = canvas4;
         _loc1_ = canvas3;
         _loc1_ = petTabHBox;
         _loc1_ = petTabHBox;
         _loc1_ = petTabHBox;
         _loc1_ = petTabHBox;
         _loc1_ = canvas5;
         _loc1_ = Language.BAGPANEL_U[4];
         _loc1_ = canvas6;
         _loc1_ = tile1;
         _loc1_ = firstPetCanvas;
         _loc1_ = tile1;
         _loc1_ = canvas6;
         _loc1_ = canvas6;
         _loc1_ = tile1;
         _loc1_ = tile1;
         _loc1_ = canvas5;
         _loc1_ = canvas6;
         _loc1_ = canvas6;
         _loc1_ = firstPetCanvas;
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[0];
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
         _loc1_ = Language.BAGPANEL_U[12];
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
         _loc1_ = Language.BAGPANEL_S[10];
         _loc1_ = Language.BAGPANEL_S[11];
         _loc1_ = Language.BAGPANEL_S[12];
         _loc1_ = Language.BAGPANEL_S[13];
         _loc1_ = Language.BAGPANEL_S[9];
         _loc1_ = Language.BAGPANEL_S[22];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Language.BAGPANEL_U[2];
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Language.BAGPANEL_U[15];
         _loc1_ = Language.BAGPANEL_U[16];
         _loc1_ = Language.BAGPANEL_U[17];
         _loc1_ = Language.BAGPANEL_U[18];
         _loc1_ = Language.BAGPANEL_U[19];
         _loc1_ = Language.BAGPANEL_U[20];
         _loc1_ = Language.BAGPANEL_U[21];
         _loc1_ = Language.BAGPANEL_U[12];
         _loc1_ = Language.BAGPANEL_U[13];
         _loc1_ = Language.BAGPANEL_U[6];
         _loc1_ = Language.BAGPANEL_S[14];
         _loc1_ = _core.player.moneyBind;
         _loc1_ = Language.BAGPANEL_S[19];
         _loc1_ = Language.BAGPANEL_S[15];
         _loc1_ = _core.player.money;
         _loc1_ = Language.BAGPANEL_U[8];
         _loc1_ = _core.player.goldBind;
         _loc1_ = Language.BAGPANEL_S[16];
         _loc1_ = Language.BAGPANEL_S[18];
         _loc1_ = _core.player.gold;
         _loc1_ = Language.BAGPANEL_S[17];
      }
      
      private function _BagPanel_SetProperty45_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty45 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty45",_BagPanel_SetProperty45);
         return _loc1_;
      }
      
      public function __pet5_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot207() : ItemSlot
      {
         return this._2113294597slot207;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot200() : ItemSlot
      {
         return this._2113294604slot200;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot201() : ItemSlot
      {
         return this._2113294603slot201;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot203() : ItemSlot
      {
         return this._2113294601slot203;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot206() : ItemSlot
      {
         return this._2113294598slot206;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot208() : ItemSlot
      {
         return this._2113294596slot208;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot209() : ItemSlot
      {
         return this._2113294595slot209;
      }
      
      public function set slot241(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294479slot241;
         if(_loc2_ !== param1)
         {
            this._2113294479slot241 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot241",_loc2_,param1));
         }
      }
      
      public function set slot247(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294473slot247;
         if(_loc2_ !== param1)
         {
            this._2113294473slot247 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot247",_loc2_,param1));
         }
      }
      
      public function set slot248(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294472slot248;
         if(_loc2_ !== param1)
         {
            this._2113294472slot248 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot248",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot210() : ItemSlot
      {
         return this._2113294573slot210;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot212() : ItemSlot
      {
         return this._2113294571slot212;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot213() : ItemSlot
      {
         return this._2113294570slot213;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot214() : ItemSlot
      {
         return this._2113294569slot214;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot215() : ItemSlot
      {
         return this._2113294568slot215;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot216() : ItemSlot
      {
         return this._2113294567slot216;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot217() : ItemSlot
      {
         return this._2113294566slot217;
      }
      
      public function silverDisable() : Boolean
      {
         if(radioMoney.selected && silverLockFlag)
         {
            return true;
         }
         return false;
      }
      
      private function _BagPanel_SetProperty10_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty10 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 22;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty10",_BagPanel_SetProperty10);
         return _loc1_;
      }
      
      public function set slot250(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294449slot250;
         if(_loc2_ !== param1)
         {
            this._2113294449slot250 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot250",_loc2_,param1));
         }
      }
      
      public function set slot243(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294477slot243;
         if(_loc2_ !== param1)
         {
            this._2113294477slot243 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot243",_loc2_,param1));
         }
      }
      
      public function set slot244(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294476slot244;
         if(_loc2_ !== param1)
         {
            this._2113294476slot244 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot244",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot211() : ItemSlot
      {
         return this._2113294572slot211;
      }
      
      public function set slot246(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294474slot246;
         if(_loc2_ !== param1)
         {
            this._2113294474slot246 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot246",_loc2_,param1));
         }
      }
      
      public function set slot252(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294447slot252;
         if(_loc2_ !== param1)
         {
            this._2113294447slot252 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot252",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot219() : ItemSlot
      {
         return this._2113294564slot219;
      }
      
      private function dClickHandler(param1:GameEvent) : void
      {
         var slot:ItemSlot = null;
         var temp:Object = null;
         var tradeP:* = undefined;
         var iData:Object = null;
         var itemTem:* = undefined;
         var panel:Object = null;
         var func:Function = null;
         var sellItem:Function = null;
         var event:GameEvent = param1;
         slot = ItemSlot(event.currentTarget);
         if(slot.giid < 0)
         {
            return;
         }
         switch(_core.player.actionState)
         {
            case GamePredef.ST_NORMAL:
               if(_core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).visible)
               {
                  itemTem = _core.getTemplateData(slot.slotData.type,slot.slotData.itemId);
                  if(ToolKit.ableToTemp(itemTem))
                  {
                     _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).putDirect(slot);
                     break;
                  }
                  if(ToolKit.ableTomxTemp(itemTem))
                  {
                     _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).putmxDirect(slot);
                     break;
                  }
               }
               temp = GameData.d[ToolKit.add(slot.slotData.type,1)][slot.slotData.tid];
               if(Boolean(temp && temp.kind == GamePredef.ITEM_KIND_PETEQU) && Boolean(temp.position >= GamePredef.PETEQU_POS_BEGIN) && temp.position <= GamePredef.PETEQU_POS_END)
               {
                  panel = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                  _core.remote.petEquipOn(panel.petData.id,slot.slotData.id);
               }
               else
               {
                  _core.player.useItem(GamePredef.MOUSE_TARGET_CHA,-1,slot.slotData.id,event.data.ctrlKey);
               }
               break;
            case GamePredef.ST_AUCTION:
               _core.view.getUI(ViewManager.PANEL_AUCTION).addItem(slot);
               break;
            case GamePredef.ST_TRADE:
               tradeP = _core.view.getUI(ViewManager.PANEL_TRADE);
               if(tradeP)
               {
                  tradeP.addItem(slot.slotData);
               }
               break;
            case GamePredef.ST_BANK:
               _core.remote.bagToBank(slot.slotData.sid,1);
               break;
            case GamePredef.ST_SHOPPING:
               iData = _core.data.getGameData(slot.slotData.type,slot.slotData.itemId);
               if(Boolean(iData) && iData.color > 2)
               {
                  if(_core.delPass)
                  {
                     if(event.data.ctrlKey)
                     {
                        sell(slot.slotData.id,_core.delPass);
                     }
                     else
                     {
                        func = function(param1:CloseEvent):void
                        {
                           if(param1.detail == Alert.YES)
                           {
                              sell(slot.slotData.id,_core.delPass);
                           }
                        };
                        Alert.show(Language.BAGPANEL_S[8],"",Alert.YES | Alert.NO,null,func);
                     }
                  }
                  else
                  {
                     sellItem = function(param1:String):void
                     {
                        var func:Function = null;
                        var result:String = param1;
                        if(event.data.ctrlKey)
                        {
                           sell(slot.slotData.id,MD5.hash(result));
                        }
                        else
                        {
                           func = function(param1:CloseEvent):void
                           {
                              if(param1.detail == Alert.YES)
                              {
                                 sell(slot.slotData.id,MD5.hash(result));
                              }
                           };
                           Alert.show(Language.BAGPANEL_S[8],"",Alert.YES | Alert.NO,null,func);
                        }
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.BAGPANEL_S[20],sellItem);
                  }
               }
               else if(event.data.ctrlKey)
               {
                  sell(slot.slotData.id);
               }
               else
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        sell(slot.slotData.id);
                     }
                  };
                  Alert.show(Language.BAGPANEL_S[8],"",Alert.YES | Alert.NO,null,func);
               }
         }
      }
      
      public function set slot251(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294448slot251;
         if(_loc2_ !== param1)
         {
            this._2113294448slot251 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot251",_loc2_,param1));
         }
      }
      
      public function set slot245(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294475slot245;
         if(_loc2_ !== param1)
         {
            this._2113294475slot245 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot245",_loc2_,param1));
         }
      }
      
      public function set slot256(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294443slot256;
         if(_loc2_ !== param1)
         {
            this._2113294443slot256 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot256",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot222() : ItemSlot
      {
         return this._2113294540slot222;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot224() : ItemSlot
      {
         return this._2113294538slot224;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot225() : ItemSlot
      {
         return this._2113294537slot225;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot226() : ItemSlot
      {
         return this._2113294536slot226;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot220() : ItemSlot
      {
         return this._2113294542slot220;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot221() : ItemSlot
      {
         return this._2113294541slot221;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot229() : ItemSlot
      {
         return this._2113294533slot229;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot223() : ItemSlot
      {
         return this._2113294539slot223;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot218() : ItemSlot
      {
         return this._2113294565slot218;
      }
      
      private function _BagPanel_SetProperty67_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty67 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty67",_BagPanel_SetProperty67);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get button1() : Button
      {
         return this._241352511button1;
      }
      
      [Bindable(event="propertyChange")]
      public function get button2() : Button
      {
         return this._241352512button2;
      }
      
      [Bindable(event="propertyChange")]
      public function get button3() : Button
      {
         return this._241352513button3;
      }
      
      [Bindable(event="propertyChange")]
      public function get button4() : Button
      {
         return this._241352514button4;
      }
      
      [Bindable(event="propertyChange")]
      public function get button6() : Button
      {
         return this._241352516button6;
      }
      
      [Bindable(event="propertyChange")]
      public function get button7() : Button
      {
         return this._241352517button7;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot227() : ItemSlot
      {
         return this._2113294535slot227;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot228() : ItemSlot
      {
         return this._2113294534slot228;
      }
      
      public function set slot255(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294444slot255;
         if(_loc2_ !== param1)
         {
            this._2113294444slot255 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot255",_loc2_,param1));
         }
      }
      
      public function set slot258(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294441slot258;
         if(_loc2_ !== param1)
         {
            this._2113294441slot258 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot258",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot230() : ItemSlot
      {
         return this._2113294511slot230;
      }
      
      private function sell(param1:Number, param2:String = null) : void
      {
         _core.remote.sellItem(param1,param2);
         var _loc3_:Function = _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum;
         setTimeout(_loc3_,2000);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot232() : ItemSlot
      {
         return this._2113294509slot232;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot233() : ItemSlot
      {
         return this._2113294508slot233;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot235() : ItemSlot
      {
         return this._2113294506slot235;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot236() : ItemSlot
      {
         return this._2113294505slot236;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot237() : ItemSlot
      {
         return this._2113294504slot237;
      }
      
      private function _BagPanel_SetProperty32_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty32 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 347;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty32",_BagPanel_SetProperty32);
         return _loc1_;
      }
      
      public function set slot253(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294446slot253;
         if(_loc2_ !== param1)
         {
            this._2113294446slot253 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot253",_loc2_,param1));
         }
      }
      
      public function set slot261(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294417slot261;
         if(_loc2_ !== param1)
         {
            this._2113294417slot261 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot261",_loc2_,param1));
         }
      }
      
      public function set slot254(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294445slot254;
         if(_loc2_ !== param1)
         {
            this._2113294445slot254 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot254",_loc2_,param1));
         }
      }
      
      public function __pet6_rollOver(param1:MouseEvent) : void
      {
         showTip(param1);
      }
      
      private function petClickHandler(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.styleName == "PetSlotLocked" && !_core.battleServer.inBattleServer)
         {
            _loc3_ = _core.getTemplateData(29,326);
            if(Boolean(_loc3_) && Boolean(_loc3_.gold))
            {
               extendPetSlotPrice = _loc3_.gold;
               _loc4_ = Language.BAGPANEL_S[24];
               _loc4_ = _loc4_.replace("{price}",extendPetSlotPrice);
               Alert.show(_loc4_,null,Alert.OK | Alert.CANCEL,this,openPetSlot);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioMoneyBind() : RadioButton
      {
         return this._79343458radioMoneyBind;
      }
      
      private function _BagPanel_RemoveChild29_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild29 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild29",_BagPanel_RemoveChild29);
         return _loc1_;
      }
      
      public function set slot262(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294416slot262;
         if(_loc2_ !== param1)
         {
            this._2113294416slot262 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot262",_loc2_,param1));
         }
      }
      
      public function set slot260(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294418slot260;
         if(_loc2_ !== param1)
         {
            this._2113294418slot260 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot260",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot234() : ItemSlot
      {
         return this._2113294507slot234;
      }
      
      public function set slot266(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294412slot266;
         if(_loc2_ !== param1)
         {
            this._2113294412slot266 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot266",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot238() : ItemSlot
      {
         return this._2113294503slot238;
      }
      
      public function set goldLockFlag(param1:Boolean) : void
      {
         _goldLockFlag = param1;
         if(_goldLockFlag)
         {
            gold.styleName = "GoldLocked";
         }
         else
         {
            gold.styleName = "GoldUnlock";
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP);
         _loc2_.setGoldLock(_goldLockFlag);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot240() : ItemSlot
      {
         return this._2113294480slot240;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot241() : ItemSlot
      {
         return this._2113294479slot241;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot242() : ItemSlot
      {
         return this._2113294478slot242;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot239() : ItemSlot
      {
         return this._2113294502slot239;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot246() : ItemSlot
      {
         return this._2113294474slot246;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot247() : ItemSlot
      {
         return this._2113294473slot247;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot231() : ItemSlot
      {
         return this._2113294510slot231;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot249() : ItemSlot
      {
         return this._2113294471slot249;
      }
      
      private function _BagPanel_SetStyle30_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle30 = _loc1_;
         _loc1_.name = "bottom";
         _loc1_.value = 45;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle30",_BagPanel_SetStyle30);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot243() : ItemSlot
      {
         return this._2113294477slot243;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot244() : ItemSlot
      {
         return this._2113294476slot244;
      }
      
      public function set slot264(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294414slot264;
         if(_loc2_ !== param1)
         {
            this._2113294414slot264 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot264",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot248() : ItemSlot
      {
         return this._2113294472slot248;
      }
      
      public function set slot249(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294471slot249;
         if(_loc2_ !== param1)
         {
            this._2113294471slot249 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot249",_loc2_,param1));
         }
      }
      
      public function set slot267(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294411slot267;
         if(_loc2_ !== param1)
         {
            this._2113294411slot267 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot267",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot245() : ItemSlot
      {
         return this._2113294475slot245;
      }
      
      private function _BagPanel_SetStyle7_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _BagPanel_SetStyle7 = _loc1_;
         _loc1_.name = "verticalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetStyle7",_BagPanel_SetStyle7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot250() : ItemSlot
      {
         return this._2113294449slot250;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot251() : ItemSlot
      {
         return this._2113294448slot251;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot252() : ItemSlot
      {
         return this._2113294447slot252;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot253() : ItemSlot
      {
         return this._2113294446slot253;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot254() : ItemSlot
      {
         return this._2113294445slot254;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot255() : ItemSlot
      {
         return this._2113294444slot255;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot256() : ItemSlot
      {
         return this._2113294443slot256;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot259() : ItemSlot
      {
         return this._2113294440slot259;
      }
      
      public function set slot268(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294410slot268;
         if(_loc2_ !== param1)
         {
            this._2113294410slot268 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot268",_loc2_,param1));
         }
      }
      
      public function set slot270(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294387slot270;
         if(_loc2_ !== param1)
         {
            this._2113294387slot270 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot270",_loc2_,param1));
         }
      }
      
      public function set slot263(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294415slot263;
         if(_loc2_ !== param1)
         {
            this._2113294415slot263 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot263",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty54_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty54 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty54",_BagPanel_SetProperty54);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot258() : ItemSlot
      {
         return this._2113294441slot258;
      }
      
      public function set slot257(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294442slot257;
         if(_loc2_ !== param1)
         {
            this._2113294442slot257 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot257",_loc2_,param1));
         }
      }
      
      public function set slot259(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294440slot259;
         if(_loc2_ !== param1)
         {
            this._2113294440slot259 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot259",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot257() : ItemSlot
      {
         return this._2113294442slot257;
      }
      
      public function set slot269(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294409slot269;
         if(_loc2_ !== param1)
         {
            this._2113294409slot269 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot269",_loc2_,param1));
         }
      }
      
      private function _BagPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bagtitle.text = param1;
         },"bagtitle.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return basicglowbutton1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty1.target = param1;
         },"_BagPanel_SetProperty1.target");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty2.target = param1;
         },"_BagPanel_SetProperty2.target");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return button7;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty3.target = param1;
         },"_BagPanel_SetProperty3.target");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return silver;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty4.target = param1;
         },"_BagPanel_SetProperty4.target");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return silver;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty5.target = param1;
         },"_BagPanel_SetProperty5.target");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return button6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty6.target = param1;
         },"_BagPanel_SetProperty6.target");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return button6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty7.target = param1;
         },"_BagPanel_SetProperty7.target");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return gold;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty8.target = param1;
         },"_BagPanel_SetProperty8.target");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return gold;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty9.target = param1;
         },"_BagPanel_SetProperty9.target");
         result[9] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas2;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle1.target = param1;
         },"_BagPanel_SetStyle1.target");
         result[10] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return button7;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle2.target = param1;
         },"_BagPanel_SetStyle2.target");
         result[11] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return button7;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle3.target = param1;
         },"_BagPanel_SetStyle3.target");
         result[12] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return silver;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle4.target = param1;
         },"_BagPanel_SetStyle4.target");
         result[13] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return silver;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle5.target = param1;
         },"_BagPanel_SetStyle5.target");
         result[14] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return gold;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle6.target = param1;
         },"_BagPanel_SetStyle6.target");
         result[15] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return gold;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle7.target = param1;
         },"_BagPanel_SetStyle7.target");
         result[16] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return button6;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle8.target = param1;
         },"_BagPanel_SetStyle8.target");
         result[17] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return button6;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle9.target = param1;
         },"_BagPanel_SetStyle9.target");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty10.target = param1;
         },"_BagPanel_SetProperty10.target");
         result[19] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return boxlabel3;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle10.target = param1;
         },"_BagPanel_SetStyle10.target");
         result[20] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioMoneyBind;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle11.target = param1;
         },"_BagPanel_SetStyle11.target");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty11.target = param1;
         },"_BagPanel_SetProperty11.target");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty12.target = param1;
         },"_BagPanel_SetProperty12.target");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty13.target = param1;
         },"_BagPanel_SetProperty13.target");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty14.target = param1;
         },"_BagPanel_SetProperty14.target");
         result[25] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas1;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle12.target = param1;
         },"_BagPanel_SetStyle12.target");
         result[26] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return boxlabel4;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle13.target = param1;
         },"_BagPanel_SetStyle13.target");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty15.target = param1;
         },"_BagPanel_SetProperty15.target");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return button7;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty16.target = param1;
         },"_BagPanel_SetProperty16.target");
         result[29] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioMoney;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle14.target = param1;
         },"_BagPanel_SetStyle14.target");
         result[30] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioMoneyBind;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle15.target = param1;
         },"_BagPanel_SetStyle15.target");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return radioMoneyBind;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty17.target = param1;
         },"_BagPanel_SetProperty17.target");
         result[32] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioMoney;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle16.target = param1;
         },"_BagPanel_SetStyle16.target");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return radioMoney;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty18.target = param1;
         },"_BagPanel_SetProperty18.target");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return radioGoldBind;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty19.target = param1;
         },"_BagPanel_SetProperty19.target");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return radioGold;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty20.target = param1;
         },"_BagPanel_SetProperty20.target");
         result[36] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioGoldBind;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle17.target = param1;
         },"_BagPanel_SetStyle17.target");
         result[37] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioGold;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle18.target = param1;
         },"_BagPanel_SetStyle18.target");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty21.target = param1;
         },"_BagPanel_SetProperty21.target");
         result[39] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return boxlabel5;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle19.target = param1;
         },"_BagPanel_SetStyle19.target");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty22.target = param1;
         },"_BagPanel_SetProperty22.target");
         result[41] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioGoldBind;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle20.target = param1;
         },"_BagPanel_SetStyle20.target");
         result[42] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return radioGold;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle21.target = param1;
         },"_BagPanel_SetStyle21.target");
         result[43] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty23.target = param1;
         },"_BagPanel_SetProperty23.target");
         result[44] = binding;
         binding = new Binding(this,function():Object
         {
            return boxlabel2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty24.target = param1;
         },"_BagPanel_SetProperty24.target");
         result[45] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return boxlabel2;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle22.target = param1;
         },"_BagPanel_SetStyle22.target");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty25.target = param1;
         },"_BagPanel_SetProperty25.target");
         result[47] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty26.target = param1;
         },"_BagPanel_SetProperty26.target");
         result[48] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return boxlabel5;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle23.target = param1;
         },"_BagPanel_SetStyle23.target");
         result[49] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return boxlabel2;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle24.target = param1;
         },"_BagPanel_SetStyle24.target");
         result[50] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas4;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle25.target = param1;
         },"_BagPanel_SetStyle25.target");
         result[51] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas3;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle26.target = param1;
         },"_BagPanel_SetStyle26.target");
         result[52] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas1;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle27.target = param1;
         },"_BagPanel_SetStyle27.target");
         result[53] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas2;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle28.target = param1;
         },"_BagPanel_SetStyle28.target");
         result[54] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas3;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle29.target = param1;
         },"_BagPanel_SetStyle29.target");
         result[55] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas4;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle30.target = param1;
         },"_BagPanel_SetStyle30.target");
         result[56] = binding;
         binding = new Binding(this,function():Object
         {
            return buttonSort;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty27.target = param1;
         },"_BagPanel_SetProperty27.target");
         result[57] = binding;
         binding = new Binding(this,function():Object
         {
            return buttonSort;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty28.target = param1;
         },"_BagPanel_SetProperty28.target");
         result[58] = binding;
         binding = new Binding(this,function():Object
         {
            return btnPetTrade;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty29.target = param1;
         },"_BagPanel_SetProperty29.target");
         result[59] = binding;
         binding = new Binding(this,function():Object
         {
            return btnPetTrade;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty30.target = param1;
         },"_BagPanel_SetProperty30.target");
         result[60] = binding;
         binding = new Binding(this,function():Object
         {
            return button4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty31.target = param1;
         },"_BagPanel_SetProperty31.target");
         result[61] = binding;
         binding = new Binding(this,function():Object
         {
            return button4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty32.target = param1;
         },"_BagPanel_SetProperty32.target");
         result[62] = binding;
         binding = new Binding(this,function():Object
         {
            return button3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty33.target = param1;
         },"_BagPanel_SetProperty33.target");
         result[63] = binding;
         binding = new Binding(this,function():Object
         {
            return button3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty34.target = param1;
         },"_BagPanel_SetProperty34.target");
         result[64] = binding;
         binding = new Binding(this,function():Object
         {
            return button2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty35.target = param1;
         },"_BagPanel_SetProperty35.target");
         result[65] = binding;
         binding = new Binding(this,function():Object
         {
            return button2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty36.target = param1;
         },"_BagPanel_SetProperty36.target");
         result[66] = binding;
         binding = new Binding(this,function():Object
         {
            return button1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty37.target = param1;
         },"_BagPanel_SetProperty37.target");
         result[67] = binding;
         binding = new Binding(this,function():Object
         {
            return button1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty38.target = param1;
         },"_BagPanel_SetProperty38.target");
         result[68] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas5;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle31.target = param1;
         },"_BagPanel_SetStyle31.target");
         result[69] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return canvas5;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle32.target = param1;
         },"_BagPanel_SetStyle32.target");
         result[70] = binding;
         binding = new Binding(this,function():Object
         {
            return radioMoneyBind;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty39.target = param1;
         },"_BagPanel_SetProperty39.target");
         result[71] = binding;
         binding = new Binding(this,function():Object
         {
            return radioMoneyBind;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty40.target = param1;
         },"_BagPanel_SetProperty40.target");
         result[72] = binding;
         binding = new Binding(this,function():Object
         {
            return radioGoldBind;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty41.target = param1;
         },"_BagPanel_SetProperty41.target");
         result[73] = binding;
         binding = new Binding(this,function():Object
         {
            return radioGoldBind;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty42.target = param1;
         },"_BagPanel_SetProperty42.target");
         result[74] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty43.target = param1;
         },"_BagPanel_SetProperty43.target");
         result[75] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty44.target = param1;
         },"_BagPanel_SetProperty44.target");
         result[76] = binding;
         binding = new Binding(this,function():Object
         {
            return radioMoney;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty45.target = param1;
         },"_BagPanel_SetProperty45.target");
         result[77] = binding;
         binding = new Binding(this,function():Object
         {
            return radioMoney;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty46.target = param1;
         },"_BagPanel_SetProperty46.target");
         result[78] = binding;
         binding = new Binding(this,function():Object
         {
            return radioGold;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty47.target = param1;
         },"_BagPanel_SetProperty47.target");
         result[79] = binding;
         binding = new Binding(this,function():Object
         {
            return radioGold;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty48.target = param1;
         },"_BagPanel_SetProperty48.target");
         result[80] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty49.target = param1;
         },"_BagPanel_SetProperty49.target");
         result[81] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas3;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty50.target = param1;
         },"_BagPanel_SetProperty50.target");
         result[82] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty51.target = param1;
         },"_BagPanel_SetProperty51.target");
         result[83] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas2;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty52.target = param1;
         },"_BagPanel_SetProperty52.target");
         result[84] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty53.target = param1;
         },"_BagPanel_SetProperty53.target");
         result[85] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty54.target = param1;
         },"_BagPanel_SetProperty54.target");
         result[86] = binding;
         binding = new Binding(this,function():Object
         {
            return petTabHBox;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty55.target = param1;
         },"_BagPanel_SetProperty55.target");
         result[87] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty57.target = param1;
         },"_BagPanel_SetProperty57.target");
         result[88] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty58.target = param1;
         },"_BagPanel_SetProperty58.target");
         result[89] = binding;
         binding = new Binding(this,function():Object
         {
            return bagtitle;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty59.target = param1;
         },"_BagPanel_SetProperty59.target");
         result[90] = binding;
         binding = new Binding(this,function():*
         {
            return Language.BAGPANEL_U[11];
         },function(param1:*):void
         {
            _BagPanel_SetProperty59.value = param1;
         },"_BagPanel_SetProperty59.value");
         result[91] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty61.target = param1;
         },"_BagPanel_SetProperty61.target");
         result[92] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas3;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild1.target = param1;
         },"_BagPanel_RemoveChild1.target");
         result[93] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas4;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild2.target = param1;
         },"_BagPanel_RemoveChild2.target");
         result[94] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild3.target = param1;
         },"_BagPanel_RemoveChild3.target");
         result[95] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas2;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild4.target = param1;
         },"_BagPanel_RemoveChild4.target");
         result[96] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnPetTrade;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild5.target = param1;
         },"_BagPanel_RemoveChild5.target");
         result[97] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild6.target = param1;
         },"_BagPanel_RemoveChild6.target");
         result[98] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button2;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild7.target = param1;
         },"_BagPanel_RemoveChild7.target");
         result[99] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button3;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild8.target = param1;
         },"_BagPanel_RemoveChild8.target");
         result[100] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button4;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild9.target = param1;
         },"_BagPanel_RemoveChild9.target");
         result[101] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return buttonSort;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild10.target = param1;
         },"_BagPanel_RemoveChild10.target");
         result[102] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petTabHBox;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild11.target = param1;
         },"_BagPanel_RemoveChild11.target");
         result[103] = binding;
         binding = new Binding(this,function():Object
         {
            return tnBag;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty63.target = param1;
         },"_BagPanel_SetProperty63.target");
         result[104] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return firstTile;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle33.target = param1;
         },"_BagPanel_SetStyle33.target");
         result[105] = binding;
         binding = new Binding(this,function():Object
         {
            return firstTile;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty64.target = param1;
         },"_BagPanel_SetProperty64.target");
         result[106] = binding;
         binding = new Binding(this,function():Object
         {
            return secondTile;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty65.target = param1;
         },"_BagPanel_SetProperty65.target");
         result[107] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return secondTile;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle34.target = param1;
         },"_BagPanel_SetStyle34.target");
         result[108] = binding;
         binding = new Binding(this,function():Object
         {
            return thirdTile;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty66.target = param1;
         },"_BagPanel_SetProperty66.target");
         result[109] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return thirdTile;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle35.target = param1;
         },"_BagPanel_SetStyle35.target");
         result[110] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return tile4;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle36.target = param1;
         },"_BagPanel_SetStyle36.target");
         result[111] = binding;
         binding = new Binding(this,function():Object
         {
            return tile4;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty67.target = param1;
         },"_BagPanel_SetProperty67.target");
         result[112] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return tile5;
         },function(param1:IStyleClient):void
         {
            _BagPanel_SetStyle37.target = param1;
         },"_BagPanel_SetStyle37.target");
         result[113] = binding;
         binding = new Binding(this,function():Object
         {
            return tile5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty68.target = param1;
         },"_BagPanel_SetProperty68.target");
         result[114] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty69.target = param1;
         },"_BagPanel_SetProperty69.target");
         result[115] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty70.target = param1;
         },"_BagPanel_SetProperty70.target");
         result[116] = binding;
         binding = new Binding(this,function():Object
         {
            return firstTile;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty71.target = param1;
         },"_BagPanel_SetProperty71.target");
         result[117] = binding;
         binding = new Binding(this,function():Object
         {
            return bagtitle;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty72.target = param1;
         },"_BagPanel_SetProperty72.target");
         result[118] = binding;
         binding = new Binding(this,function():*
         {
            return Language.BAGPANEL_U[2];
         },function(param1:*):void
         {
            _BagPanel_SetProperty72.value = param1;
         },"_BagPanel_SetProperty72.value");
         result[119] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return tnBag;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild12.target = param1;
         },"_BagPanel_RemoveChild12.target");
         result[120] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return basicglowbutton1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild13.target = param1;
         },"_BagPanel_RemoveChild13.target");
         result[121] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag7;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild14.target = param1;
         },"_BagPanel_RemoveChild14.target");
         result[122] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag6;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild15.target = param1;
         },"_BagPanel_RemoveChild15.target");
         result[123] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag5;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild16.target = param1;
         },"_BagPanel_RemoveChild16.target");
         result[124] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag4;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild17.target = param1;
         },"_BagPanel_RemoveChild17.target");
         result[125] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag3;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild18.target = param1;
         },"_BagPanel_RemoveChild18.target");
         result[126] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag2;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild19.target = param1;
         },"_BagPanel_RemoveChild19.target");
         result[127] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild20.target = param1;
         },"_BagPanel_RemoveChild20.target");
         result[128] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnTabBag0;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild21.target = param1;
         },"_BagPanel_RemoveChild21.target");
         result[129] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild22.target = param1;
         },"_BagPanel_RemoveChild22.target");
         result[130] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button2;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild23.target = param1;
         },"_BagPanel_RemoveChild23.target");
         result[131] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button3;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild24.target = param1;
         },"_BagPanel_RemoveChild24.target");
         result[132] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return button4;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild25.target = param1;
         },"_BagPanel_RemoveChild25.target");
         result[133] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return buttonSort;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild26.target = param1;
         },"_BagPanel_RemoveChild26.target");
         result[134] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return btnPetTrade;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild27.target = param1;
         },"_BagPanel_RemoveChild27.target");
         result[135] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas2;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild28.target = param1;
         },"_BagPanel_RemoveChild28.target");
         result[136] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild29.target = param1;
         },"_BagPanel_RemoveChild29.target");
         result[137] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas4;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild30.target = param1;
         },"_BagPanel_RemoveChild30.target");
         result[138] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas3;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild31.target = param1;
         },"_BagPanel_RemoveChild31.target");
         result[139] = binding;
         binding = new Binding(this,function():Object
         {
            return petTabHBox;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty73.target = param1;
         },"_BagPanel_SetProperty73.target");
         result[140] = binding;
         binding = new Binding(this,function():Object
         {
            return petTabHBox;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty74.target = param1;
         },"_BagPanel_SetProperty74.target");
         result[141] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petTabHBox;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild32.target = param1;
         },"_BagPanel_RemoveChild32.target");
         result[142] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petTabHBox;
         },function(param1:DisplayObject):void
         {
            _BagPanel_AddChild1.target = param1;
         },"_BagPanel_AddChild1.target");
         result[143] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return canvas5;
         },function(param1:UIComponent):void
         {
            _BagPanel_AddChild2.relativeTo = param1;
         },"_BagPanel_AddChild2.relativeTo");
         result[144] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BagPanel_BasicGlowButton1.label = param1;
         },"_BagPanel_BasicGlowButton1.label");
         result[145] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas6;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild33.target = param1;
         },"_BagPanel_RemoveChild33.target");
         result[146] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return tile1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_RemoveChild34.target = param1;
         },"_BagPanel_RemoveChild34.target");
         result[147] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return firstPetCanvas;
         },function(param1:UIComponent):void
         {
            _BagPanel_AddChild3.relativeTo = param1;
         },"_BagPanel_AddChild3.relativeTo");
         result[148] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return tile1;
         },function(param1:DisplayObject):void
         {
            _BagPanel_AddChild3.target = param1;
         },"_BagPanel_AddChild3.target");
         result[149] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty76.target = param1;
         },"_BagPanel_SetProperty76.target");
         result[150] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty77.target = param1;
         },"_BagPanel_SetProperty77.target");
         result[151] = binding;
         binding = new Binding(this,function():Object
         {
            return tile1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty78.target = param1;
         },"_BagPanel_SetProperty78.target");
         result[152] = binding;
         binding = new Binding(this,function():Object
         {
            return tile1;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty79.target = param1;
         },"_BagPanel_SetProperty79.target");
         result[153] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas5;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty80.target = param1;
         },"_BagPanel_SetProperty80.target");
         result[154] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty81.target = param1;
         },"_BagPanel_SetProperty81.target");
         result[155] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas6;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty82.target = param1;
         },"_BagPanel_SetProperty82.target");
         result[156] = binding;
         binding = new Binding(this,function():Object
         {
            return firstPetCanvas;
         },function(param1:Object):void
         {
            _BagPanel_SetProperty83.target = param1;
         },"_BagPanel_SetProperty83.target");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BagPanel_Canvas3.label = param1;
         },"_BagPanel_Canvas3.label");
         result[158] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[159] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[160] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[161] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[162] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[163] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[164] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[165] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[166] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[167] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[168] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[169] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[170] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[171] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[172] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[173] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[174] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[175] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[176] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot19.slotType = param1;
         },"slot19.slotType");
         result[177] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot20.slotType = param1;
         },"slot20.slotType");
         result[178] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot21.slotType = param1;
         },"slot21.slotType");
         result[179] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot22.slotType = param1;
         },"slot22.slotType");
         result[180] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot23.slotType = param1;
         },"slot23.slotType");
         result[181] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot24.slotType = param1;
         },"slot24.slotType");
         result[182] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot25.slotType = param1;
         },"slot25.slotType");
         result[183] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot26.slotType = param1;
         },"slot26.slotType");
         result[184] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot27.slotType = param1;
         },"slot27.slotType");
         result[185] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot28.slotType = param1;
         },"slot28.slotType");
         result[186] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot29.slotType = param1;
         },"slot29.slotType");
         result[187] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot30.slotType = param1;
         },"slot30.slotType");
         result[188] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            secondCanvas.label = param1;
         },"secondCanvas.label");
         result[189] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot31.slotType = param1;
         },"slot31.slotType");
         result[190] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot32.slotType = param1;
         },"slot32.slotType");
         result[191] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot33.slotType = param1;
         },"slot33.slotType");
         result[192] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot34.slotType = param1;
         },"slot34.slotType");
         result[193] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot35.slotType = param1;
         },"slot35.slotType");
         result[194] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot36.slotType = param1;
         },"slot36.slotType");
         result[195] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot37.slotType = param1;
         },"slot37.slotType");
         result[196] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot38.slotType = param1;
         },"slot38.slotType");
         result[197] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot39.slotType = param1;
         },"slot39.slotType");
         result[198] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot40.slotType = param1;
         },"slot40.slotType");
         result[199] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot41.slotType = param1;
         },"slot41.slotType");
         result[200] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot42.slotType = param1;
         },"slot42.slotType");
         result[201] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot43.slotType = param1;
         },"slot43.slotType");
         result[202] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot44.slotType = param1;
         },"slot44.slotType");
         result[203] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot45.slotType = param1;
         },"slot45.slotType");
         result[204] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot46.slotType = param1;
         },"slot46.slotType");
         result[205] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot47.slotType = param1;
         },"slot47.slotType");
         result[206] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot48.slotType = param1;
         },"slot48.slotType");
         result[207] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot49.slotType = param1;
         },"slot49.slotType");
         result[208] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot50.slotType = param1;
         },"slot50.slotType");
         result[209] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot51.slotType = param1;
         },"slot51.slotType");
         result[210] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot52.slotType = param1;
         },"slot52.slotType");
         result[211] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot53.slotType = param1;
         },"slot53.slotType");
         result[212] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot54.slotType = param1;
         },"slot54.slotType");
         result[213] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot55.slotType = param1;
         },"slot55.slotType");
         result[214] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot56.slotType = param1;
         },"slot56.slotType");
         result[215] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot57.slotType = param1;
         },"slot57.slotType");
         result[216] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot58.slotType = param1;
         },"slot58.slotType");
         result[217] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot59.slotType = param1;
         },"slot59.slotType");
         result[218] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot60.slotType = param1;
         },"slot60.slotType");
         result[219] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            thirdCanvas.label = param1;
         },"thirdCanvas.label");
         result[220] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot61.slotType = param1;
         },"slot61.slotType");
         result[221] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot62.slotType = param1;
         },"slot62.slotType");
         result[222] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot63.slotType = param1;
         },"slot63.slotType");
         result[223] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot64.slotType = param1;
         },"slot64.slotType");
         result[224] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot65.slotType = param1;
         },"slot65.slotType");
         result[225] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot66.slotType = param1;
         },"slot66.slotType");
         result[226] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot67.slotType = param1;
         },"slot67.slotType");
         result[227] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot68.slotType = param1;
         },"slot68.slotType");
         result[228] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot69.slotType = param1;
         },"slot69.slotType");
         result[229] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot70.slotType = param1;
         },"slot70.slotType");
         result[230] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot71.slotType = param1;
         },"slot71.slotType");
         result[231] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot72.slotType = param1;
         },"slot72.slotType");
         result[232] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot73.slotType = param1;
         },"slot73.slotType");
         result[233] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot74.slotType = param1;
         },"slot74.slotType");
         result[234] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot75.slotType = param1;
         },"slot75.slotType");
         result[235] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot76.slotType = param1;
         },"slot76.slotType");
         result[236] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot77.slotType = param1;
         },"slot77.slotType");
         result[237] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot78.slotType = param1;
         },"slot78.slotType");
         result[238] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot79.slotType = param1;
         },"slot79.slotType");
         result[239] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot80.slotType = param1;
         },"slot80.slotType");
         result[240] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot81.slotType = param1;
         },"slot81.slotType");
         result[241] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot82.slotType = param1;
         },"slot82.slotType");
         result[242] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot83.slotType = param1;
         },"slot83.slotType");
         result[243] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot84.slotType = param1;
         },"slot84.slotType");
         result[244] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot85.slotType = param1;
         },"slot85.slotType");
         result[245] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot86.slotType = param1;
         },"slot86.slotType");
         result[246] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot87.slotType = param1;
         },"slot87.slotType");
         result[247] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot88.slotType = param1;
         },"slot88.slotType");
         result[248] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot89.slotType = param1;
         },"slot89.slotType");
         result[249] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot90.slotType = param1;
         },"slot90.slotType");
         result[250] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fouthCanvas.label = param1;
         },"fouthCanvas.label");
         result[251] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot91.slotType = param1;
         },"slot91.slotType");
         result[252] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot92.slotType = param1;
         },"slot92.slotType");
         result[253] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot93.slotType = param1;
         },"slot93.slotType");
         result[254] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot94.slotType = param1;
         },"slot94.slotType");
         result[255] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot95.slotType = param1;
         },"slot95.slotType");
         result[256] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot96.slotType = param1;
         },"slot96.slotType");
         result[257] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot97.slotType = param1;
         },"slot97.slotType");
         result[258] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot98.slotType = param1;
         },"slot98.slotType");
         result[259] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot99.slotType = param1;
         },"slot99.slotType");
         result[260] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot100.slotType = param1;
         },"slot100.slotType");
         result[261] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot101.slotType = param1;
         },"slot101.slotType");
         result[262] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot102.slotType = param1;
         },"slot102.slotType");
         result[263] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot103.slotType = param1;
         },"slot103.slotType");
         result[264] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot104.slotType = param1;
         },"slot104.slotType");
         result[265] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot105.slotType = param1;
         },"slot105.slotType");
         result[266] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot106.slotType = param1;
         },"slot106.slotType");
         result[267] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot107.slotType = param1;
         },"slot107.slotType");
         result[268] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot108.slotType = param1;
         },"slot108.slotType");
         result[269] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot109.slotType = param1;
         },"slot109.slotType");
         result[270] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot110.slotType = param1;
         },"slot110.slotType");
         result[271] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot111.slotType = param1;
         },"slot111.slotType");
         result[272] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot112.slotType = param1;
         },"slot112.slotType");
         result[273] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot113.slotType = param1;
         },"slot113.slotType");
         result[274] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot114.slotType = param1;
         },"slot114.slotType");
         result[275] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot115.slotType = param1;
         },"slot115.slotType");
         result[276] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot116.slotType = param1;
         },"slot116.slotType");
         result[277] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot117.slotType = param1;
         },"slot117.slotType");
         result[278] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot118.slotType = param1;
         },"slot118.slotType");
         result[279] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot119.slotType = param1;
         },"slot119.slotType");
         result[280] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot120.slotType = param1;
         },"slot120.slotType");
         result[281] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fifthCanvas.label = param1;
         },"fifthCanvas.label");
         result[282] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot121.slotType = param1;
         },"slot121.slotType");
         result[283] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot122.slotType = param1;
         },"slot122.slotType");
         result[284] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot123.slotType = param1;
         },"slot123.slotType");
         result[285] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot124.slotType = param1;
         },"slot124.slotType");
         result[286] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot125.slotType = param1;
         },"slot125.slotType");
         result[287] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot126.slotType = param1;
         },"slot126.slotType");
         result[288] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot127.slotType = param1;
         },"slot127.slotType");
         result[289] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot128.slotType = param1;
         },"slot128.slotType");
         result[290] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot129.slotType = param1;
         },"slot129.slotType");
         result[291] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot130.slotType = param1;
         },"slot130.slotType");
         result[292] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot131.slotType = param1;
         },"slot131.slotType");
         result[293] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot132.slotType = param1;
         },"slot132.slotType");
         result[294] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot133.slotType = param1;
         },"slot133.slotType");
         result[295] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot134.slotType = param1;
         },"slot134.slotType");
         result[296] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot135.slotType = param1;
         },"slot135.slotType");
         result[297] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot136.slotType = param1;
         },"slot136.slotType");
         result[298] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot137.slotType = param1;
         },"slot137.slotType");
         result[299] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot138.slotType = param1;
         },"slot138.slotType");
         result[300] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot139.slotType = param1;
         },"slot139.slotType");
         result[301] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot140.slotType = param1;
         },"slot140.slotType");
         result[302] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot141.slotType = param1;
         },"slot141.slotType");
         result[303] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot142.slotType = param1;
         },"slot142.slotType");
         result[304] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot143.slotType = param1;
         },"slot143.slotType");
         result[305] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot144.slotType = param1;
         },"slot144.slotType");
         result[306] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot145.slotType = param1;
         },"slot145.slotType");
         result[307] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot146.slotType = param1;
         },"slot146.slotType");
         result[308] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot147.slotType = param1;
         },"slot147.slotType");
         result[309] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot148.slotType = param1;
         },"slot148.slotType");
         result[310] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot149.slotType = param1;
         },"slot149.slotType");
         result[311] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot150.slotType = param1;
         },"slot150.slotType");
         result[312] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sixthCanvas.label = param1;
         },"sixthCanvas.label");
         result[313] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot151.slotType = param1;
         },"slot151.slotType");
         result[314] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot152.slotType = param1;
         },"slot152.slotType");
         result[315] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot153.slotType = param1;
         },"slot153.slotType");
         result[316] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot154.slotType = param1;
         },"slot154.slotType");
         result[317] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot155.slotType = param1;
         },"slot155.slotType");
         result[318] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot156.slotType = param1;
         },"slot156.slotType");
         result[319] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot157.slotType = param1;
         },"slot157.slotType");
         result[320] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot158.slotType = param1;
         },"slot158.slotType");
         result[321] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot159.slotType = param1;
         },"slot159.slotType");
         result[322] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot160.slotType = param1;
         },"slot160.slotType");
         result[323] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot161.slotType = param1;
         },"slot161.slotType");
         result[324] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot162.slotType = param1;
         },"slot162.slotType");
         result[325] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot163.slotType = param1;
         },"slot163.slotType");
         result[326] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot164.slotType = param1;
         },"slot164.slotType");
         result[327] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot165.slotType = param1;
         },"slot165.slotType");
         result[328] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot166.slotType = param1;
         },"slot166.slotType");
         result[329] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot167.slotType = param1;
         },"slot167.slotType");
         result[330] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot168.slotType = param1;
         },"slot168.slotType");
         result[331] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot169.slotType = param1;
         },"slot169.slotType");
         result[332] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot170.slotType = param1;
         },"slot170.slotType");
         result[333] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot171.slotType = param1;
         },"slot171.slotType");
         result[334] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot172.slotType = param1;
         },"slot172.slotType");
         result[335] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot173.slotType = param1;
         },"slot173.slotType");
         result[336] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot174.slotType = param1;
         },"slot174.slotType");
         result[337] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot175.slotType = param1;
         },"slot175.slotType");
         result[338] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot176.slotType = param1;
         },"slot176.slotType");
         result[339] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot177.slotType = param1;
         },"slot177.slotType");
         result[340] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot178.slotType = param1;
         },"slot178.slotType");
         result[341] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot179.slotType = param1;
         },"slot179.slotType");
         result[342] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot180.slotType = param1;
         },"slot180.slotType");
         result[343] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            seventhCanvas.label = param1;
         },"seventhCanvas.label");
         result[344] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot181.slotType = param1;
         },"slot181.slotType");
         result[345] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot182.slotType = param1;
         },"slot182.slotType");
         result[346] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot183.slotType = param1;
         },"slot183.slotType");
         result[347] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot184.slotType = param1;
         },"slot184.slotType");
         result[348] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot185.slotType = param1;
         },"slot185.slotType");
         result[349] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot186.slotType = param1;
         },"slot186.slotType");
         result[350] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot187.slotType = param1;
         },"slot187.slotType");
         result[351] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot188.slotType = param1;
         },"slot188.slotType");
         result[352] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot189.slotType = param1;
         },"slot189.slotType");
         result[353] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot190.slotType = param1;
         },"slot190.slotType");
         result[354] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot191.slotType = param1;
         },"slot191.slotType");
         result[355] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot192.slotType = param1;
         },"slot192.slotType");
         result[356] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot193.slotType = param1;
         },"slot193.slotType");
         result[357] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot194.slotType = param1;
         },"slot194.slotType");
         result[358] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot195.slotType = param1;
         },"slot195.slotType");
         result[359] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot196.slotType = param1;
         },"slot196.slotType");
         result[360] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot197.slotType = param1;
         },"slot197.slotType");
         result[361] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot198.slotType = param1;
         },"slot198.slotType");
         result[362] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot199.slotType = param1;
         },"slot199.slotType");
         result[363] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot200.slotType = param1;
         },"slot200.slotType");
         result[364] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot201.slotType = param1;
         },"slot201.slotType");
         result[365] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot202.slotType = param1;
         },"slot202.slotType");
         result[366] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot203.slotType = param1;
         },"slot203.slotType");
         result[367] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot204.slotType = param1;
         },"slot204.slotType");
         result[368] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot205.slotType = param1;
         },"slot205.slotType");
         result[369] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot206.slotType = param1;
         },"slot206.slotType");
         result[370] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot207.slotType = param1;
         },"slot207.slotType");
         result[371] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot208.slotType = param1;
         },"slot208.slotType");
         result[372] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot209.slotType = param1;
         },"slot209.slotType");
         result[373] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot210.slotType = param1;
         },"slot210.slotType");
         result[374] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eighthCanvas.label = param1;
         },"eighthCanvas.label");
         result[375] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot211.slotType = param1;
         },"slot211.slotType");
         result[376] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot212.slotType = param1;
         },"slot212.slotType");
         result[377] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot213.slotType = param1;
         },"slot213.slotType");
         result[378] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot214.slotType = param1;
         },"slot214.slotType");
         result[379] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot215.slotType = param1;
         },"slot215.slotType");
         result[380] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot216.slotType = param1;
         },"slot216.slotType");
         result[381] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot217.slotType = param1;
         },"slot217.slotType");
         result[382] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot218.slotType = param1;
         },"slot218.slotType");
         result[383] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot219.slotType = param1;
         },"slot219.slotType");
         result[384] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot220.slotType = param1;
         },"slot220.slotType");
         result[385] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot221.slotType = param1;
         },"slot221.slotType");
         result[386] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot222.slotType = param1;
         },"slot222.slotType");
         result[387] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot223.slotType = param1;
         },"slot223.slotType");
         result[388] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot224.slotType = param1;
         },"slot224.slotType");
         result[389] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot225.slotType = param1;
         },"slot225.slotType");
         result[390] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot226.slotType = param1;
         },"slot226.slotType");
         result[391] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot227.slotType = param1;
         },"slot227.slotType");
         result[392] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot228.slotType = param1;
         },"slot228.slotType");
         result[393] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot229.slotType = param1;
         },"slot229.slotType");
         result[394] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot230.slotType = param1;
         },"slot230.slotType");
         result[395] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot231.slotType = param1;
         },"slot231.slotType");
         result[396] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot232.slotType = param1;
         },"slot232.slotType");
         result[397] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot233.slotType = param1;
         },"slot233.slotType");
         result[398] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot234.slotType = param1;
         },"slot234.slotType");
         result[399] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot235.slotType = param1;
         },"slot235.slotType");
         result[400] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot236.slotType = param1;
         },"slot236.slotType");
         result[401] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot237.slotType = param1;
         },"slot237.slotType");
         result[402] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot238.slotType = param1;
         },"slot238.slotType");
         result[403] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot239.slotType = param1;
         },"slot239.slotType");
         result[404] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot240.slotType = param1;
         },"slot240.slotType");
         result[405] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot241.slotType = param1;
         },"slot241.slotType");
         result[406] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot242.slotType = param1;
         },"slot242.slotType");
         result[407] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot243.slotType = param1;
         },"slot243.slotType");
         result[408] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot244.slotType = param1;
         },"slot244.slotType");
         result[409] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot245.slotType = param1;
         },"slot245.slotType");
         result[410] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot246.slotType = param1;
         },"slot246.slotType");
         result[411] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot247.slotType = param1;
         },"slot247.slotType");
         result[412] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot248.slotType = param1;
         },"slot248.slotType");
         result[413] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot249.slotType = param1;
         },"slot249.slotType");
         result[414] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot250.slotType = param1;
         },"slot250.slotType");
         result[415] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot251.slotType = param1;
         },"slot251.slotType");
         result[416] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot252.slotType = param1;
         },"slot252.slotType");
         result[417] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot253.slotType = param1;
         },"slot253.slotType");
         result[418] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot254.slotType = param1;
         },"slot254.slotType");
         result[419] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot255.slotType = param1;
         },"slot255.slotType");
         result[420] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot256.slotType = param1;
         },"slot256.slotType");
         result[421] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot257.slotType = param1;
         },"slot257.slotType");
         result[422] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot258.slotType = param1;
         },"slot258.slotType");
         result[423] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot259.slotType = param1;
         },"slot259.slotType");
         result[424] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot260.slotType = param1;
         },"slot260.slotType");
         result[425] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot261.slotType = param1;
         },"slot261.slotType");
         result[426] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot262.slotType = param1;
         },"slot262.slotType");
         result[427] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot263.slotType = param1;
         },"slot263.slotType");
         result[428] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot264.slotType = param1;
         },"slot264.slotType");
         result[429] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot265.slotType = param1;
         },"slot265.slotType");
         result[430] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot266.slotType = param1;
         },"slot266.slotType");
         result[431] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot267.slotType = param1;
         },"slot267.slotType");
         result[432] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot268.slotType = param1;
         },"slot268.slotType");
         result[433] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot269.slotType = param1;
         },"slot269.slotType");
         result[434] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot270.slotType = param1;
         },"slot270.slotType");
         result[435] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button1.toolTip = param1;
         },"button1.toolTip");
         result[436] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button2.toolTip = param1;
         },"button2.toolTip");
         result[437] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button3.toolTip = param1;
         },"button3.toolTip");
         result[438] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button4.toolTip = param1;
         },"button4.toolTip");
         result[439] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPetTrade.toolTip = param1;
         },"btnPetTrade.toolTip");
         result[440] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buttonSort.toolTip = param1;
         },"buttonSort.toolTip");
         result[441] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet0.label = param1;
         },"btnTabPet0.label");
         result[442] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet1.label = param1;
         },"btnTabPet1.label");
         result[443] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet2.label = param1;
         },"btnTabPet2.label");
         result[444] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet3.label = param1;
         },"btnTabPet3.label");
         result[445] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet4.label = param1;
         },"btnTabPet4.label");
         result[446] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet5.label = param1;
         },"btnTabPet5.label");
         result[447] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet6.label = param1;
         },"btnTabPet6.label");
         result[448] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet7.label = param1;
         },"btnTabPet7.label");
         result[449] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet8.label = param1;
         },"btnTabPet8.label");
         result[450] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabPet9.label = param1;
         },"btnTabPet9.label");
         result[451] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            firstPetCanvas.label = param1;
         },"firstPetCanvas.label");
         result[452] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet1.slotType = param1;
         },"pet1.slotType");
         result[453] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet2.slotType = param1;
         },"pet2.slotType");
         result[454] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet3.slotType = param1;
         },"pet3.slotType");
         result[455] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet4.slotType = param1;
         },"pet4.slotType");
         result[456] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet5.slotType = param1;
         },"pet5.slotType");
         result[457] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet6.slotType = param1;
         },"pet6.slotType");
         result[458] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet7.slotType = param1;
         },"pet7.slotType");
         result[459] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet8.slotType = param1;
         },"pet8.slotType");
         result[460] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet9.slotType = param1;
         },"pet9.slotType");
         result[461] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet10.slotType = param1;
         },"pet10.slotType");
         result[462] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet11.slotType = param1;
         },"pet11.slotType");
         result[463] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet12.slotType = param1;
         },"pet12.slotType");
         result[464] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet13.slotType = param1;
         },"pet13.slotType");
         result[465] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet14.slotType = param1;
         },"pet14.slotType");
         result[466] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet15.slotType = param1;
         },"pet15.slotType");
         result[467] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet16.slotType = param1;
         },"pet16.slotType");
         result[468] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet17.slotType = param1;
         },"pet17.slotType");
         result[469] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet18.slotType = param1;
         },"pet18.slotType");
         result[470] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag0.label = param1;
         },"btnTabBag0.label");
         result[471] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag1.label = param1;
         },"btnTabBag1.label");
         result[472] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag2.label = param1;
         },"btnTabBag2.label");
         result[473] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag3.label = param1;
         },"btnTabBag3.label");
         result[474] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag4.label = param1;
         },"btnTabBag4.label");
         result[475] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag5.label = param1;
         },"btnTabBag5.label");
         result[476] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag6.label = param1;
         },"btnTabBag6.label");
         result[477] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag7.label = param1;
         },"btnTabBag7.label");
         result[478] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTabBag8.label = param1;
         },"btnTabBag8.label");
         result[479] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button7.toolTip = param1;
         },"button7.toolTip");
         result[480] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            radioMoneyBind.toolTip = param1;
         },"radioMoneyBind.toolTip");
         result[481] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.moneyBind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            boxlabel3.text = param1;
         },"boxlabel3.text");
         result[482] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            silver.toolTip = param1;
         },"silver.toolTip");
         result[483] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            radioMoney.toolTip = param1;
         },"radioMoney.toolTip");
         result[484] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.money;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            boxlabel4.text = param1;
         },"boxlabel4.text");
         result[485] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button6.toolTip = param1;
         },"button6.toolTip");
         result[486] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.goldBind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            boxlabel5.text = param1;
         },"boxlabel5.text");
         result[487] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            radioGoldBind.toolTip = param1;
         },"radioGoldBind.toolTip");
         result[488] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gold.toolTip = param1;
         },"gold.toolTip");
         result[489] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.gold;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            boxlabel2.text = param1;
         },"boxlabel2.text");
         result[490] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.BAGPANEL_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            radioGold.toolTip = param1;
         },"radioGold.toolTip");
         result[491] = binding;
         return result;
      }
      
      public function __pet18_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot265() : ItemSlot
      {
         return this._2113294413slot265;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot260() : ItemSlot
      {
         return this._2113294418slot260;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot261() : ItemSlot
      {
         return this._2113294417slot261;
      }
      
      public function get goldLockFlag() : Boolean
      {
         return _goldLockFlag;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot263() : ItemSlot
      {
         return this._2113294415slot263;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot264() : ItemSlot
      {
         return this._2113294414slot264;
      }
      
      public function set slot265(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2113294413slot265;
         if(_loc2_ !== param1)
         {
            this._2113294413slot265 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot265",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot266() : ItemSlot
      {
         return this._2113294412slot266;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot267() : ItemSlot
      {
         return this._2113294411slot267;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot268() : ItemSlot
      {
         return this._2113294410slot268;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot269() : ItemSlot
      {
         return this._2113294409slot269;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot262() : ItemSlot
      {
         return this._2113294416slot262;
      }
      
      private function _BagPanel_RemoveChild16_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _BagPanel_RemoveChild16 = _loc1_;
         BindingManager.executeBindings(this,"_BagPanel_RemoveChild16",_BagPanel_RemoveChild16);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot270() : ItemSlot
      {
         return this._2113294387slot270;
      }
      
      private function _BagPanel_SetProperty76_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty76 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty76",_BagPanel_SetProperty76);
         return _loc1_;
      }
      
      public function __btnTabBag3_dragDrop(param1:DragEvent) : void
      {
         tabDragDropHandler(param1,4);
      }
      
      public function set buttonSort(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._358524912buttonSort;
         if(_loc2_ !== param1)
         {
            this._358524912buttonSort = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonSort",_loc2_,param1));
         }
      }
      
      private function _BagPanel_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty4 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_BagPanel_SetProperty4",_BagPanel_SetProperty4);
         return _loc1_;
      }
      
      private function tabComplete() : void
      {
         addSlotListener();
         addPetListener();
      }
      
      private function _BagPanel_SetProperty41_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _BagPanel_SetProperty41 = _loc1_;
         _loc1_.name = "y";
         BindingManager.executeBindings(this,"_BagPanel_SetProperty41",_BagPanel_SetProperty41);
         return _loc1_;
      }
   }
}

