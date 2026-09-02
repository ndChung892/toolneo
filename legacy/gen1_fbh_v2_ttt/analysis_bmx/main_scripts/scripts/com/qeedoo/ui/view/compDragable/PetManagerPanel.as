package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.logic.Battle;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicMultiLineButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PentagonCanvas;
   import com.qeedoo.ui.view.comp.PropertyBar;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.SkillUseSlot;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compBattle.PetCmdCanvas;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.TextInput;
   import mx.core.ClassFactory;
   import mx.core.DragSource;
   import mx.core.IUITextField;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetManagerPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PetManagerPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _169699452petFuncBtn5:BasicGlowButton;
      
      private var _692413227classImg:Image;
      
      private var _1091882814factor1:RoundedLabel;
      
      private var _900562943skill2:SkillUseSlot;
      
      private var selPetDataTemp:Object;
      
      private var _861878256basichortxtbutton5:BasicTxtButton;
      
      private var _1872627967finalSleep:TextInput;
      
      private var _1420795392addIntelligence:BoxLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1382596167finalResiPoison:TextInput;
      
      private var _1549420544delBtn1:BasicGlowButton;
      
      private var _464115109petLevel:RoundedLabel;
      
      private var _177868763styleAddName:String;
      
      private var followPetData:Object;
      
      private var _677962293petEqu5:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _933944003tarcanvas:SimpleCanvas;
      
      private var _1892385864finalResiSleep:TextInput;
      
      private var _1554141557tabBtn2:BasicMultiLineButton;
      
      private var _3034454btn2:BasicGlowButton;
      
      private var _805962357propertyPentagon:PentagonCanvas;
      
      private var petDataTemp:Object;
      
      private var _702954884aptIntelligence:BoxLabel;
      
      private var _99622dp2:Canvas;
      
      private const PROP_INT_KEY_ARR:Array = ["finalCombo","finalCounter","finalRebornRate","finalBreakReborn","finalDefy","finalResiDefy","finalResiCritical","finalDizzy","finalConfusion","finalSleep","finalPoison","finalRage","finalLight","finalResiDizzy","finalResiConfusion","finalResiSleep","finalResiPoison","finalResiLight","finalResiRage"];
      
      private var _19957965addBtnCanvas:Canvas;
      
      private var _550778331canvas3:Canvas;
      
      private var _1864769379minusStrengthButton:Button;
      
      private var _817036290addStrength:BoxLabel;
      
      private var _507317139growRate:BoxLabel;
      
      private var _839841132upBtn5:BasicGlowButton;
      
      private var _861878252basichortxtbutton1:BasicTxtButton;
      
      private var _850872420addAgility:BoxLabel;
      
      private var _355194339finalRage:TextInput;
      
      private var _708846363addEnergyButton:Button;
      
      private var followPetId:Number = -1;
      
      private var _1952151455critical:BoxLabel;
      
      private var petClassAC:ArrayCollection;
      
      private var _505171265openBtn1:BasicGlowButton;
      
      private var _1091882811factor4:RoundedLabel;
      
      private var _900562941skill4:SkillUseSlot;
      
      private var _2055403737aptStrengthEx:RoundedLabel;
      
      private var _169699448petFuncBtn1:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1588184269aptAgilityEx:RoundedLabel;
      
      private var _677962290petEqu8:ItemSlot;
      
      private var _1863068566minusEnergyButton:Button;
      
      private var selectedTabIndex:int = 0;
      
      private var _97632477mDefence:BoxLabel;
      
      private var _861878257basichortxtbutton6:BasicTxtButton;
      
      private var tempMultiple:int = 0;
      
      private var _1549420546delBtn3:BasicGlowButton;
      
      private var _1906307211finalResiDizzy:TextInput;
      
      private var _498964688finalConfusion:TextInput;
      
      private var _1218397274finalCounter:TextInput;
      
      private var Multiple:int = 1;
      
      private var _991700866petExp:BoxLabel;
      
      private var _677962295petEqu3:ItemSlot;
      
      private var _95758295dodge:BoxLabel;
      
      private var _1554141559tabBtn0:BasicMultiLineButton;
      
      public var _PetManagerPanel_Label1:Label;
      
      public var _PetManagerPanel_Label2:Label;
      
      public var _PetManagerPanel_Label3:Label;
      
      public var _PetManagerPanel_Label4:Label;
      
      public var _PetManagerPanel_Label5:Label;
      
      public var _PetManagerPanel_Label6:Label;
      
      public var _PetManagerPanel_Label10:Label;
      
      public var _PetManagerPanel_Label11:Label;
      
      public var _PetManagerPanel_Label12:Label;
      
      public var _PetManagerPanel_Label13:Label;
      
      public var _PetManagerPanel_Label14:Label;
      
      public var _PetManagerPanel_Label15:Label;
      
      public var _PetManagerPanel_Label16:Label;
      
      public var _PetManagerPanel_Label17:Label;
      
      public var _PetManagerPanel_Label18:Label;
      
      public var _PetManagerPanel_Label19:Label;
      
      public var _PetManagerPanel_Label7:Label;
      
      public var _PetManagerPanel_Label8:Label;
      
      public var _PetManagerPanel_Label9:Label;
      
      private var _505171264openBtn2:BasicGlowButton;
      
      private const PAGE_MAX_PET_NUM:int = 10;
      
      private var _14326624addStaminaButton:Button;
      
      private var _1046717375propertyBarMp:PropertyBar;
      
      public var _PetManagerPanel_Label20:Label;
      
      public var _PetManagerPanel_Label21:Label;
      
      public var _PetManagerPanel_Label22:Label;
      
      public var _PetManagerPanel_Label23:Label;
      
      public var _PetManagerPanel_Label24:Label;
      
      public var _PetManagerPanel_Label25:Label;
      
      public var _PetManagerPanel_Label26:Label;
      
      private var _1984280679finalResiConfusion:TextInput;
      
      private var _57704679finalReduceHurt2:TextInput;
      
      private var _169699451petFuncBtn4:BasicGlowButton;
      
      private var _801114956paixucb:CheckBox;
      
      private var view:ViewManager;
      
      private var petAC1:ArrayCollection;
      
      private var petAC2:ArrayCollection;
      
      private var petAC3:ArrayCollection;
      
      private var petAC4:ArrayCollection;
      
      private var petAC6:ArrayCollection;
      
      private var petAC7:ArrayCollection;
      
      private var _426146348addStrengthButton:Button;
      
      private var _395626106aptStrength:BoxLabel;
      
      private var _307382965showCanvas:CharactorShowCanvas;
      
      private var petAC5:ArrayCollection;
      
      private var _btnEnabled:Boolean = true;
      
      private var _839841135upBtn2:BasicGlowButton;
      
      private var pageAC:ArrayCollection;
      
      private var _861878253basichortxtbutton2:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton14:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton16:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton17:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton18:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton19:BasicTxtButton;
      
      private var _30739193attLastPoint:BoxLabel;
      
      private var _467845765finalBreakReborn:TextInput;
      
      private var _1887307336finalCombo:TextInput;
      
      public var _PetManagerPanel_BasicTxtButton20:BasicTxtButton;
      
      private var _1997577724finalPraDef:TextInput;
      
      private var _1091882813factor2:RoundedLabel;
      
      private var _106557218petMp:BoxLabel;
      
      private var _1270522743attEnergy:BoxLabel;
      
      public var _PetManagerPanel_RoundedLabel18:RoundedLabel;
      
      private var _900562944skill1:SkillUseSlot;
      
      private var _505171263openBtn3:BasicGlowButton;
      
      private var showPetTimer:Timer;
      
      private var _112005440vbox5:VBox;
      
      private var _1357563171aptStaminaEx:RoundedLabel;
      
      private var _677962292petEqu6:ItemSlot;
      
      private var _1453362841finalEnhPhyHurt:TextInput;
      
      private var _1023416178attStamina:BoxLabel;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1549420548delBtn5:BasicGlowButton;
      
      private var _1898937865finalResiLight:TextInput;
      
      public var _PetManagerPanel_BasicDelayButton2:BasicDelayButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _677962297petEqu1:ItemSlot;
      
      private var _112005436vbox1:VBox;
      
      private var _103315hit:BoxLabel;
      
      private var _991692313petNum:BoxLabel;
      
      private const PROP_PER_KEY_ARR:Array = ["finalReduceHurt1","finalReduceHurt2","finalEnhPhyHurt","finalEnhMagicHurt","finalPraDef","finalPraMagDef","finalCriticalDamage"];
      
      private var _908746316finalResiRage:TextInput;
      
      private var _550778330canvas2:Canvas;
      
      private var _237239562aptAgilityFinal:RoundedLabel;
      
      private var _839841133upBtn4:BasicGlowButton;
      
      private var _1879179968finalLight:TextInput;
      
      private var _1046717530propertyBarHp:PropertyBar;
      
      private var _1315489237starHbox:HBox;
      
      private var _505171262openBtn4:BasicGlowButton;
      
      private var _10889870addStamina:BoxLabel;
      
      public var _PetManagerPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _PetManagerPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _99621dp1:Canvas;
      
      public var _PetManagerPanel_BasicGlowButton5:BasicGlowButton;
      
      private var _57704678finalReduceHurt1:TextInput;
      
      private var _112005437vbox2:VBox;
      
      private var _344411274pettabBtn0:BasicGlowButton;
      
      private var _861878254basichortxtbutton3:BasicTxtButton;
      
      private var _473555694finalRebornRate:TextInput;
      
      private var _1751782644aptStaminaFinal:RoundedLabel;
      
      private var _534396457showPetFollowBtn:BasicGlowButton;
      
      private var _1940048781propertyCanvas:Canvas;
      
      public var _PetManagerPanel_Image4:Image;
      
      public var _PetManagerPanel_Image5:Array;
      
      private var _900562942skill3:SkillUseSlot;
      
      private var _1618724969aptEnergyFinal:RoundedLabel;
      
      private var _1606233953minusIntelligenceButton:Button;
      
      private var _74771179mAttack:BoxLabel;
      
      private var _354781098finalDefy:TextInput;
      
      private var _1091882815factor0:RoundedLabel;
      
      private var followPetIdCheck:int = -1;
      
      private var _908333075finalResiDefy:TextInput;
      
      private var _575917863elementImg:Image;
      
      private var _1549420545delBtn2:BasicGlowButton;
      
      private var _112005438vbox3:VBox;
      
      private var _169699450petFuncBtn3:BasicGlowButton;
      
      private var _677962294petEqu4:ItemSlot;
      
      private var _348170509aptEnergy:BoxLabel;
      
      public var petData:Object;
      
      private var _169699453petFuncBtn6:BasicGlowButton;
      
      private var _1554141558tabBtn1:BasicMultiLineButton;
      
      private var _505171261openBtn5:BasicGlowButton;
      
      private var petAC:ArrayCollection;
      
      private var _108251578bindImg:Image;
      
      private var _1991903918addIntelligenceButton:Button;
      
      private var _1582407209AddMultipleCheck:CheckBox;
      
      private var _1283394786finalResiCritical:TextInput;
      
      private var _579057063petDataList:List;
      
      private var _279478090addAgilityButton:Button;
      
      private var _1886549314finalDizzy:TextInput;
      
      private var _112005439vbox4:VBox;
      
      private var _1544916048defence:BoxLabel;
      
      private var _106557063petHp:BoxLabel;
      
      private var _314795602aptIntelligenceFinal:RoundedLabel;
      
      private var PET_STATE_ARR:Array = [{
         "label":Language.PETMANAGERPANEL_S[17],
         "state":1
      },{
         "label":Language.PETMANAGERPANEL_S[16],
         "state":3
      }];
      
      private var _1613040912petPageAc:ArrayCollection = new ArrayCollection();
      
      private var _839841136upBtn1:BasicGlowButton;
      
      private var _1595537735minusAgilityButton:Button;
      
      private var _1002706920simplecanvas2:SimpleCanvas;
      
      private var _1319279616attIntelligence:BoxLabel;
      
      private var _1318169611stateBtn:BasicDelayButton;
      
      private var _1167965741finalEnhMagicHurt:TextInput;
      
      private var _900562940skill5:SkillUseSlot;
      
      private var _1091882812factor3:RoundedLabel;
      
      private var _861878255basichortxtbutton4:BasicTxtButton;
      
      private var _974811045finalPraMagDef:TextInput;
      
      private var _405874039addEnergy:BoxLabel;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _456005657petClose:BoxLabel;
      
      private var _344201002xibieshai:ComboBox;
      
      private var _677962291petEqu7:ItemSlot;
      
      private var _1995090974finalPoison:TextInput;
      
      private var _1181680126attStrength:BoxLabel;
      
      private var _1549420547delBtn4:BasicGlowButton;
      
      private var _1064350886_PetManagerPanel_HBox1:HBox;
      
      private var _677962296petEqu2:ItemSlot;
      
      private var _504961010growRateAdd:RoundedLabel;
      
      private var _169699449petFuncBtn2:BasicGlowButton;
      
      private var _109641799speed:BoxLabel;
      
      private var _1229780311aptIntelligenceEx:RoundedLabel;
      
      private var _815424624aptStrengthFinal:RoundedLabel;
      
      private var _345262067xiebieshaidp:ArrayCollection = new ArrayCollection(["Tất cả","Hệ người","Hệ dã thú","Hệ thực vật","Hệ máy","Hệ ác ma","Hệ rồng","Hệ BOSS"]);
      
      private var _1543550368aptAgility:BoxLabel;
      
      private var _1889342449minusStaminaButton:Button;
      
      private var _183433628attAgility:BoxLabel;
      
      private var _344411275pettabBtn1:BasicGlowButton;
      
      private var _1911434378aptStamina:BoxLabel;
      
      private var _1040925444finalCriticalDamage:TextInput;
      
      mx_internal var _watchers:Array = [];
      
      private var _677761861petLife:BoxLabel;
      
      private var _3540562star:Repeater;
      
      private var _415587680aptEnergyEx:RoundedLabel;
      
      private var selPetData:Object;
      
      private var _3034456btn4:BasicGlowButton;
      
      private var _839841134upBtn3:BasicGlowButton;
      
      public var _PetManagerPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton9:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _PetManagerPanel_BasicTxtButton8:BasicTxtButton;
      
      private var _1407259064attack:BoxLabel;
      
      private var _1002706921simplecanvas3:SimpleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":626,
               "height":488,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetManagerPanel_BasicTitleCanvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "y":31,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"tarcanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "height":173,
                                 "width":135,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"showCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":63.5,
                                          "y":128.2,
                                          "height":13,
                                          "width":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"classImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":6,
                                          "width":16,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"elementImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":41,
                                          "y":6,
                                          "width":16,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"bindImg",
                                    "events":{"click":"__bindImg_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":24,
                                          "y":6,
                                          "width":16,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"petLevel",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "4";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":5,
                                          "width":63.5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"propertyCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":40,
                                          "height":18,
                                          "y":3,
                                          "x":43,
                                          "visible":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":PropertyBar,
                                             "id":"propertyBarHp",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                                this.cornerRadius = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "barCornerRadius":0,
                                                   "backColor":16777215,
                                                   "x":5,
                                                   "y":5,
                                                   "width":35,
                                                   "height":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PropertyBar,
                                             "id":"propertyBarMp",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                                this.cornerRadius = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "barCornerRadius":0,
                                                   "backColor":16777215,
                                                   "x":5,
                                                   "y":11,
                                                   "width":35,
                                                   "height":5
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PetManagerPanel_BasicGlowButton1",
                                    "events":{"click":"___PetManagerPanel_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":68,
                                          "y":144,
                                          "styleName":"BtnNormalRed",
                                          "width":57,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"stateBtn",
                                    "events":{"click":"__stateBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":10,
                                          "y":144,
                                          "styleName":"BtnNormalRed",
                                          "width":40,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetManagerPanel_BasicGlowButton2",
                           "events":{"click":"___PetManagerPanel_BasicGlowButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":34.5,
                                 "styleName":"BtnNormalRed",
                                 "x":155,
                                 "width":40,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn2",
                           "events":{"click":"__btn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":325,
                                 "y":34.5,
                                 "styleName":"BtnNormalRed",
                                 "width":40,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn4",
                           "events":{"click":"__btn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":34.5,
                                 "styleName":"BtnNormalRed",
                                 "x":240,
                                 "width":40,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PetManagerPanel_BasicGlowButton5",
                           "events":{"click":"___PetManagerPanel_BasicGlowButton5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":407,
                                 "y":34.5,
                                 "styleName":"BtnNormalRed",
                                 "width":40,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"showPetFollowBtn",
                           "events":{"click":"__showPetFollowBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":484.5,
                                 "y":34.5,
                                 "styleName":"BtnNormalRed",
                                 "width":40,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":16,
                                 "y":227,
                                 "width":128,
                                 "height":202,
                                 "styleName":"CSSBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"petDataList",
                                    "events":{
                                       "itemClick":"__petDataList_itemClick",
                                       "mouseDown":"__petDataList_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.right = "0";
                                       this.borderStyle = "none";
                                       this.left = "0";
                                       this.verticalCenter = "-3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "horizontalScrollPolicy":"off",
                                          "percentHeight":100,
                                          "itemRenderer":_PetManagerPanel_ClassFactory1_c()
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"petClose",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":548,
                                 "y":13.5,
                                 "width":65,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"petLife",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":395.5,
                                 "width":97,
                                 "y":13.5,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"petExp",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":198.5,
                                 "y":13.5,
                                 "width":145,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":429,
                                 "width":126,
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"paixucb",
                           "events":{"click":"__paixucb_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 0;
                              this.paddingRight = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":206,
                                 "width":61,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"petNum",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":18,
                                 "y":206,
                                 "x":73
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetManagerPanel_BasicTxtButton1",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":154.5,
                                 "y":13.5,
                                 "width":37,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetManagerPanel_BasicTxtButton2",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":351.5,
                                 "y":13.5,
                                 "width":37,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PetManagerPanel_BasicTxtButton3",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":500,
                                 "y":13.5,
                                 "width":37,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"pettabBtn0",
                           "events":{"click":"__pettabBtn0_click"},
                           "stylesFactory":function():void
                           {
                              this.top = "56";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":267,
                                 "width":100,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"pettabBtn1",
                           "events":{"click":"__pettabBtn1_click"},
                           "stylesFactory":function():void
                           {
                              this.top = "56";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":167,
                                 "width":100,
                                 "selected":true,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"dp1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":157,
                                 "y":75,
                                 "width":458,
                                 "height":370,
                                 "styleName":"CanvasBorder",
                                 "visible":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 4;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":140,
                                          "height":351,
                                          "x":171,
                                          "y":7,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Liên kích",
                                                            "toolTip":"Khi tấn công vật lý có tỉ lệ nhất định được tiếp tục tấn công, đồng thời ảnh hưởng đến % liên kích (như skill Nhịp Đập Trái Tim、Hồng Liên Xung Trảm)"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalCombo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":55,
                                                            "text":"Phản kích",
                                                            "toolTip":"Khi chịu sát thương chí mạng có xác suất phản kích vật lý vào đối phương",
                                                            "x":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalCounter",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Miễn tử",
                                                            "toolTip":"Khi chịu sát thương chí mạng sẽ có xác suất không chết, chỉ có tác dụng 1 lần trong trận"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalRebornRate",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Phá kích",
                                                            "toolTip":"Giảm tỉ lệ miễn tử của đối phương"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalBreakReborn",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"XPN",
                                                            "toolTip":"Xác suất tạo buff XPN và miễn sát thương"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalDefy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng xuyên",
                                                            "toolTip":"Giảm tỉ lệ xuyên phòng ngự"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiDefy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Bạo kích",
                                                            "toolTip":"Giảm tỉ lệ bị bạo kích"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiCritical",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tỉ lệ bạo",
                                                            "toolTip":"Tăng sát thương bạo kích"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalCriticalDamage",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Miễn STVL",
                                                            "toolTip":"Giảm sát thương vật lý, làm đối phương không thể xuyên phòng ngự"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalReduceHurt1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label10",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Miễn STMP",
                                                            "toolTip":"Giảm sát thương ma pháp, làm đối phương không thể xuyên phòng ngự"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalReduceHurt2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tăng STVL cuối",
                                                            "toolTip":"Tăng STVL cuối"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalEnhPhyHurt",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label12",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tăng STMP cuối",
                                                            "toolTip":"Tăng STMP cuối"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalEnhMagicHurt",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label13",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Giảm STVL cuối",
                                                            "toolTip":"Giảm STVL cuối, làm đối phương không thể xuyên phòng ngự"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalPraDef",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label14",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Giảm STMP cuối",
                                                            "toolTip":"Giảm STMP cuối, làm đối phương không thể xuyên phòng ngự"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalPraMagDef",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 4;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":140,
                                          "height":351,
                                          "x":312,
                                          "y":7,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label15",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Choáng chính xác",
                                                            "toolTip":"Tăng tỉ lệ buff choáng chính xác"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalDizzy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label16",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Loạn chính xác",
                                                            "toolTip":"Tăng tỉ lệ buff loạn chính xác"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalConfusion",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label17",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tăng tỉ lệ buff hóa thạch chính xác",
                                                            "toolTip":"Tăng tỉ lệ buff hóa thạch chính xác"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalLight",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label18",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tăng tỉ lệ buff hôn mê chính xác",
                                                            "toolTip":"Tăng tỉ lệ buff hôn mê chính xác"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalSleep",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label19",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tăng tỉ lệ buff trúng độc chính xác",
                                                            "toolTip":"Tăng tỉ lệ buff trúng độc chính xác"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalPoison",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label20",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Tăng tỉ lệ buff trào phúng chính xác",
                                                            "toolTip":"Tăng tỉ lệ buff trào phúng chính xác"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalRage",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label21",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng choáng",
                                                            "toolTip":"Giảm tỉ lệ choáng"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiDizzy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label22",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng loạn",
                                                            "toolTip":"Giảm tỉ lệ loạn"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiConfusion",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label23",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng hóa thạch",
                                                            "toolTip":"Giảm tỉ lệ hóa thạch"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiLight",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label24",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng hôn mê",
                                                            "toolTip":"Giảm tỉ lệ hôn mê"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiSleep",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label25",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng độc",
                                                            "toolTip":"Giảm tỉ lệ trúng độc"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiPoison",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
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
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetManagerPanel_Label26",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":55,
                                                            "text":"Kháng trào phúng",
                                                            "toolTip":"Giảm tỉ lệ trào phúng"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"finalResiRage",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":56,
                                                            "text":"12.32%",
                                                            "height":20,
                                                            "width":73,
                                                            "editable":false
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attStrength",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":9,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attAgility",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":53,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attStamina",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":31,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attIntelligence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":75,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attEnergy",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":97,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attLastPoint",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "width":35,
                                          "y":119
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"addStrength",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91,
                                          "y":9,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"addAgility",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91,
                                          "y":53,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"addStamina",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91,
                                          "y":31,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"addIntelligence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91,
                                          "y":75,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"addEnergy",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91,
                                          "y":97,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"AddMultipleCheck",
                                    "events":{"change":"__AddMultipleCheck_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91,
                                          "y":119,
                                          "width":24,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":103,
                                          "y":121,
                                          "width":61,
                                          "height":20,
                                          "label":"*10"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"addBtnCanvas",
                                    "stylesFactory":function():void
                                    {
                                       this.disabledOverlayAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":118,
                                          "y":7,
                                          "width":48,
                                          "height":140,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addStrengthButton",
                                             "events":{"buttonDown":"__addStrengthButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":7,
                                                   "y":1.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusStrengthButton",
                                             "events":{"buttonDown":"__minusStrengthButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":27,
                                                   "y":1.5,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addAgilityButton",
                                             "events":{"buttonDown":"__addAgilityButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":7,
                                                   "y":45.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusAgilityButton",
                                             "events":{"buttonDown":"__minusAgilityButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":27,
                                                   "y":45.5,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addStaminaButton",
                                             "events":{"buttonDown":"__addStaminaButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":7,
                                                   "y":23.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusStaminaButton",
                                             "events":{"buttonDown":"__minusStaminaButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":27,
                                                   "y":23.5,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addIntelligenceButton",
                                             "events":{"buttonDown":"__addIntelligenceButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":7,
                                                   "y":67.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusIntelligenceButton",
                                             "events":{"buttonDown":"__minusIntelligenceButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":27,
                                                   "y":67.5,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addEnergyButton",
                                             "events":{"buttonDown":"__addEnergyButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":7,
                                                   "y":89.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusEnergyButton",
                                             "events":{"buttonDown":"__minusEnergyButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":27,
                                                   "y":89.5,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"_PetManagerPanel_BasicDelayButton2",
                                             "events":{"click":"___PetManagerPanel_BasicDelayButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":114,
                                                   "x":6,
                                                   "styleName":"BtnNormalRed",
                                                   "width":40,
                                                   "height":19
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton5",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":9,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton6",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":31,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton7",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":53,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton8",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":75,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton9",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":97,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton10",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":119,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"petHp",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":145,
                                          "width":110,
                                          "x":54,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"petMp",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":167,
                                          "width":110,
                                          "x":54,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attack",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":191,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"mAttack",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":213,
                                          "text":"",
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"defence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":235,
                                          "text":"",
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"mDefence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":257,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"hit",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":279,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"critical",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":345,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"speed",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":323,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"dodge",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":54,
                                          "y":301,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton11",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":145,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton12",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":167,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton13",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":191,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton14",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":213,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton15",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":235,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton16",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":257,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton17",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":279,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton18",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":301,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton19",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":323,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PetManagerPanel_BasicTxtButton20",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":345,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"dp2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":157,
                                 "y":75,
                                 "width":458,
                                 "height":370,
                                 "styleName":"CanvasBorder",
                                 "visible":true,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetManagerPanel_Image4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":34,
                                          "y":64
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"factor0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15361583;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":80,
                                          "y":65
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"factor1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 14689269;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":125,
                                          "y":101
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"factor2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16081443;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":109,
                                          "y":152
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"factor3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 2329845;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":51,
                                          "y":152
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"factor4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 9301547;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"canvas3",
                                    "events":{"creationComplete":"__canvas3_creationComplete"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":232,
                                          "width":222,
                                          "height":118,
                                          "x":226,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":600,
                                                   "y":14,
                                                   "x":10,
                                                   "slotType":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":601,
                                                   "y":14,
                                                   "x":67,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":602,
                                                   "y":14,
                                                   "x":124,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":603,
                                                   "y":14,
                                                   "x":179,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":604,
                                                   "y":74,
                                                   "x":10,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":605,
                                                   "y":74,
                                                   "x":67,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":606,
                                                   "y":74,
                                                   "x":124,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"petEqu8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":607,
                                                   "y":74,
                                                   "x":179,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"petFuncBtn1",
                                    "events":{"click":"__petFuncBtn1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":166,
                                          "y":11,
                                          "styleName":"BtnStdRed",
                                          "width":50.9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"petFuncBtn2",
                                    "events":{"click":"__petFuncBtn2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":167,
                                          "y":48,
                                          "styleName":"BtnStdRed",
                                          "width":50.9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"petFuncBtn3",
                                    "events":{"click":"__petFuncBtn3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":167,
                                          "y":82,
                                          "styleName":"BtnStdRed",
                                          "width":50.9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"petFuncBtn4",
                                    "events":{"click":"__petFuncBtn4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":166,
                                          "y":116,
                                          "styleName":"BtnStdRed",
                                          "width":50.9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"petFuncBtn5",
                                    "events":{"click":"__petFuncBtn5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":167,
                                          "y":153,
                                          "styleName":"BtnStdRed",
                                          "width":50.9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"petFuncBtn6",
                                    "events":{"click":"__petFuncBtn6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":167,
                                          "y":189,
                                          "styleName":"BtnStdRed",
                                          "width":50.9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"canvas2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":220,
                                          "y":10,
                                          "width":236,
                                          "height":230,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicMultiLineButton,
                                             "id":"tabBtn0",
                                             "events":{"click":"__tabBtn0_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":4,
                                                   "y":3,
                                                   "styleName":"VerticalTab",
                                                   "selected":true,
                                                   "height":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicMultiLineButton,
                                             "id":"tabBtn1",
                                             "events":{"click":"__tabBtn1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":4,
                                                   "y":69,
                                                   "styleName":"VerticalTab",
                                                   "height":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicMultiLineButton,
                                             "id":"tabBtn2",
                                             "events":{"click":"__tabBtn2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":4,
                                                   "y":135,
                                                   "styleName":"VerticalTab",
                                                   "height":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SimpleCanvas,
                                             "id":"simplecanvas3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":SkillUseSlot,
                                                      "id":"skill1",
                                                      "events":{
                                                         "click":"__skill1_click",
                                                         "creationComplete":"__skill1_creationComplete"
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":2.5,
                                                            "y":2,
                                                            "height":41,
                                                            "currentState":"pet",
                                                            "skillType":"pet",
                                                            "width":150
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SkillUseSlot,
                                                      "id":"skill2",
                                                      "events":{
                                                         "click":"__skill2_click",
                                                         "creationComplete":"__skill2_creationComplete"
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":2.5,
                                                            "y":44,
                                                            "height":41,
                                                            "currentState":"pet",
                                                            "skillType":"pet",
                                                            "width":150
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SkillUseSlot,
                                                      "id":"skill3",
                                                      "events":{
                                                         "click":"__skill3_click",
                                                         "creationComplete":"__skill3_creationComplete"
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":2.5,
                                                            "y":86,
                                                            "height":41,
                                                            "currentState":"pet",
                                                            "skillType":"pet",
                                                            "width":150
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SkillUseSlot,
                                                      "id":"skill4",
                                                      "events":{
                                                         "click":"__skill4_click",
                                                         "creationComplete":"__skill4_creationComplete"
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":2.5,
                                                            "y":128,
                                                            "height":41,
                                                            "currentState":"pet",
                                                            "skillType":"pet",
                                                            "width":150
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SkillUseSlot,
                                                      "id":"skill5",
                                                      "events":{
                                                         "click":"__skill5_click",
                                                         "creationComplete":"__skill5_creationComplete"
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":2.5,
                                                            "y":170,
                                                            "height":41,
                                                            "currentState":"pet",
                                                            "skillType":"pet",
                                                            "width":150
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "id":"vbox1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalAlign = "center";
                                                         this.verticalGap = 1;
                                                         this.verticalAlign = "middle";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":160,
                                                            "y":3,
                                                            "width":50,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"delBtn1",
                                                               "events":{"click":"__delBtn1_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalRed",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"upBtn1",
                                                               "events":{"click":"__upBtn1_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalBlue",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"openBtn1",
                                                               "events":{"click":"__openBtn1_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalGreen",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "id":"vbox2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalAlign = "center";
                                                         this.verticalGap = 1;
                                                         this.verticalAlign = "middle";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":160,
                                                            "y":45,
                                                            "width":50,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"delBtn2",
                                                               "events":{"click":"__delBtn2_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalRed",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"upBtn2",
                                                               "events":{"click":"__upBtn2_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalBlue",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"openBtn2",
                                                               "events":{"click":"__openBtn2_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalGreen",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "id":"vbox3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalAlign = "center";
                                                         this.verticalGap = 1;
                                                         this.verticalAlign = "middle";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":160,
                                                            "y":87,
                                                            "width":50,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"delBtn3",
                                                               "events":{"click":"__delBtn3_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalRed",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"upBtn3",
                                                               "events":{"click":"__upBtn3_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalBlue",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"openBtn3",
                                                               "events":{"click":"__openBtn3_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalGreen",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "id":"vbox4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalAlign = "center";
                                                         this.verticalGap = 1;
                                                         this.verticalAlign = "middle";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":160,
                                                            "y":129,
                                                            "width":50,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"delBtn4",
                                                               "events":{"click":"__delBtn4_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalRed",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"upBtn4",
                                                               "events":{"click":"__upBtn4_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalBlue",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"openBtn4",
                                                               "events":{"click":"__openBtn4_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalGreen",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "id":"vbox5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalAlign = "center";
                                                         this.verticalGap = 1;
                                                         this.verticalAlign = "middle";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":160,
                                                            "y":171,
                                                            "width":50,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"delBtn5",
                                                               "events":{"click":"__delBtn5_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalRed",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"upBtn5",
                                                               "events":{"click":"__upBtn5_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalBlue",
                                                                     "width":40.6,
                                                                     "height":19
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":BasicGlowButton,
                                                               "id":"openBtn5",
                                                               "events":{"click":"__openBtn5_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnNormalGreen",
                                                                     "width":40.6,
                                                                     "height":19
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
                                    "type":BoxLabel,
                                    "id":"growRate",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":84,
                                          "y":223,
                                          "width":134
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"growRateAdd",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":159,
                                          "y":223,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"aptStrength",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":84,
                                          "y":245,
                                          "width":134
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"aptAgility",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":84,
                                          "y":266,
                                          "width":134
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"aptStamina",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":84,
                                          "y":288,
                                          "width":134
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"aptIntelligence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":84,
                                          "y":310,
                                          "width":134
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"aptEnergy",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":84,
                                          "y":332,
                                          "width":134
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptStrengthEx",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":123,
                                          "y":245,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptAgilityEx",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":123,
                                          "y":266,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptStaminaEx",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":123,
                                          "y":288,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptIntelligenceEx",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":123,
                                          "y":310,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptEnergyEx",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":123,
                                          "y":332,
                                          "width":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptStrengthFinal",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":159,
                                          "y":245,
                                          "width":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptAgilityFinal",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":159,
                                          "y":267,
                                          "width":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptStaminaFinal",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":159,
                                          "y":288,
                                          "width":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptIntelligenceFinal",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":159,
                                          "y":310,
                                          "width":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"aptEnergyFinal",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":159,
                                          "y":332,
                                          "width":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"basichortxtbutton1",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":18,
                                          "y":223,
                                          "width":66,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"basichortxtbutton2",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":18,
                                          "y":245,
                                          "width":66,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"basichortxtbutton3",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":18,
                                          "y":266,
                                          "width":66,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"basichortxtbutton4",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":18,
                                          "y":288,
                                          "width":66,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"basichortxtbutton5",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":18,
                                          "y":311,
                                          "width":66,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"basichortxtbutton6",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":18,
                                          "y":332,
                                          "width":66,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SimpleCanvas,
                                    "id":"simplecanvas2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":105,
                                          "height":138.5,
                                          "y":52,
                                          "x":46,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":PentagonCanvas,
                                             "id":"propertyPentagon",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":86,
                                                   "height":91,
                                                   "x":0,
                                                   "y":19,
                                                   "lineShow":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "id":"starHbox",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":130,
                                                   "y":-10,
                                                   "x":-12,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Repeater,
                                                      "id":"star",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"childDescriptors":[new UIComponentDescriptor({
                                                            "type":Image,
                                                            "id":"_PetManagerPanel_Image5",
                                                            "propertiesFactory":function():Object
                                                            {
                                                               return {
                                                                  "width":9,
                                                                  "height":9
                                                               };
                                                            }
                                                         })]};
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
                           "type":ComboBox,
                           "id":"xibieshai",
                           "events":{"change":"__xibieshai_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":54,
                                 "y":183,
                                 "width":90,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_PetManagerPanel_RoundedLabel18",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 0;
                              this.paddingRight = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":187,
                                 "width":61,
                                 "height":18
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function PetManagerPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 626;
         this.height = 488;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetManagerPanel._watcherSetupUtil = param1;
      }
      
      public function set attIntelligence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1319279616attIntelligence;
         if(_loc2_ !== param1)
         {
            this._1319279616attIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attIntelligence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn2() : BasicGlowButton
      {
         return this._1549420545delBtn2;
      }
      
      public function set delBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420545delBtn2;
         if(_loc2_ !== param1)
         {
            this._1549420545delBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn4() : BasicGlowButton
      {
         return this._1549420547delBtn4;
      }
      
      public function set addStrength(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._817036290addStrength;
         if(_loc2_ !== param1)
         {
            this._817036290addStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStrength",_loc2_,param1));
         }
      }
      
      public function set delBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420547delBtn4;
         if(_loc2_ !== param1)
         {
            this._1549420547delBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn4",_loc2_,param1));
         }
      }
      
      public function set delBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420548delBtn5;
         if(_loc2_ !== param1)
         {
            this._1549420548delBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn3() : BasicGlowButton
      {
         return this._1549420546delBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill4() : SkillUseSlot
      {
         return this._900562941skill4;
      }
      
      public function set delBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420546delBtn3;
         if(_loc2_ !== param1)
         {
            this._1549420546delBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn3",_loc2_,param1));
         }
      }
      
      public function set skill4(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562941skill4;
         if(_loc2_ !== param1)
         {
            this._900562941skill4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn1() : BasicGlowButton
      {
         return this._1549420544delBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill2() : SkillUseSlot
      {
         return this._900562943skill2;
      }
      
      public function set skill2(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562943skill2;
         if(_loc2_ !== param1)
         {
            this._900562943skill2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn5() : BasicGlowButton
      {
         return this._1549420548delBtn5;
      }
      
      [Bindable(event="propertyChange")]
      private function get styleAddName() : String
      {
         return this._177868763styleAddName;
      }
      
      public function set stateBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1318169611stateBtn;
         if(_loc2_ !== param1)
         {
            this._1318169611stateBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateBtn",_loc2_,param1));
         }
      }
      
      public function set skill5(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562940skill5;
         if(_loc2_ !== param1)
         {
            this._900562940skill5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petClose() : BoxLabel
      {
         return this._456005657petClose;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiDefy() : TextInput
      {
         return this._908333075finalResiDefy;
      }
      
      [Bindable(event="propertyChange")]
      public function get growRateAdd() : RoundedLabel
      {
         return this._504961010growRateAdd;
      }
      
      [Bindable(event="propertyChange")]
      private function get xiebieshaidp() : ArrayCollection
      {
         return this._345262067xiebieshaidp;
      }
      
      private function petDataListClick() : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         if(petAC.length == 0)
         {
            viewClear();
            clearView();
            return;
         }
         if(petDataList.selectedItem == null)
         {
            viewClear();
            clearView();
            return;
         }
         selPetData = petDataList.selectedItem.petData;
         if(selPetData.state == PET_STATE_ARR[0]["state"])
         {
            stateBtn.label = PET_STATE_ARR[0]["label"];
         }
         else
         {
            stateBtn.label = PET_STATE_ARR[1]["label"];
         }
         stateBtn.toolTip = stateBtn.label;
         showSelPet();
         setAddStyleName();
         minusStrengthButton.styleName = "BtnReduce2";
         minusAgilityButton.styleName = "BtnReduce2";
         minusStaminaButton.styleName = "BtnReduce2";
         minusIntelligenceButton.styleName = "BtnReduce2";
         minusEnergyButton.styleName = "BtnReduce2";
         if(selPetData.state == 1)
         {
            detailUpdateView(selPetData.property,true);
         }
         else if(selPetData.state != 1)
         {
            detailUpdateView(selPetData.property);
         }
         var _loc1_:String = "";
         petData = petDataList.selectedItem.petData;
         if(petData)
         {
            clearView();
            petDataTemp = petData.creatureData;
            propertyPentagon.setName = ["　","　","　","　","　"];
            propertyPentagon.showProperty(10000,[Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0),Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0),Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0),Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0),Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0)],[Number(Math.round((Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0) + Number(petData.aptStrengthEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptAgility) + (petData.property.aptAgilityhEvolution ? Number(petData
            .property.aptAgilityEvolution) : 0) + Number(petData.aptAgilityEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0) + Number(petData.aptStaminaEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0) + Number(petData.aptIntelligenceEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0) + Number(petData.aptEnergyEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))))]);
            aptStrength.text = String(Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0));
            aptAgility.text = String(Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0));
            aptStamina.text = String(Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0));
            aptIntelligence.text = String(Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0));
            aptEnergy.text = String(Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0));
            aptStrengthEx.text = "+" + (petData.aptStrengthEx || 0);
            aptAgilityEx.text = "+" + (petData.aptAgilityEx || 0);
            aptStaminaEx.text = "+" + (petData.aptStaminaEx || 0);
            aptIntelligenceEx.text = "+" + (petData.aptIntelligenceEx || 0);
            aptEnergyEx.text = "+" + (petData.aptEnergyEx || 0);
            growRate.text = (Math.round(petData.property.growRate * 100) / 100).toString();
            aptStrengthFinal.text = "=> " + String(Math.round((Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0) + Number(petData.aptStrengthEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptAgilityFinal.text = "=> " + String(Math.round((Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0) + Number(petData.aptAgilityEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptStaminaFinal.text = "=> " + String(Math.round((Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0) + Number(petData.aptStaminaEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptIntelligenceFinal.text = "=> " + String(Math.round((Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0) + Number(petData.aptIntelligenceEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptEnergyFinal.text = "=> " + String(Math.round((Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0) + Number(petData.aptEnergyEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            growRateAdd.text = "+  " + (Math.round(petData.property.growRateAdd * 100) / 100).toString();
            aptStrength.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptStrength + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0);
            aptAgility.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptAgility + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0);
            aptStamina.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptStamina + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0);
            aptIntelligence.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptIntelligence + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0);
            aptEnergy.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptEnergy + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0);
            aptStrengthEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptStrengthEx || 0);
            aptAgilityEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptAgilityEx || 0);
            aptStaminaEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptStaminaEx || 0);
            aptIntelligenceEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptIntelligenceEx || 0);
            aptEnergyEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptEnergyEx || 0);
            aptStrengthFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0) + Number(petData.aptStrengthEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptAgilityFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0) + Number(petData.aptAgilityEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptStaminaFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0) + Number(petData.aptStaminaEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptIntelligenceFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0) + Number(petData.aptIntelligenceEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            aptEnergyFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0) + Number(petData.aptEnergyEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ <= 11)
            {
               _loc2_[_loc3_] = ResManager.ICON_PET_STAR_DARK;
               if(ToolKit.isSmallOrEqual(_loc3_ + 1,petData.upgradeNum))
               {
                  _loc2_[_loc3_] = ResManager.ICON_PET_STAR_LIGHT;
               }
               _loc3_++;
            }
            star.dataProvider = _loc2_;
            _loc1_ = Language.PETPANEL_S[0];
            _loc1_ = _loc1_.replace("{upgradeNum}",petData.upgradeNum);
            starHbox.toolTip = _loc1_;
            _loc4_ = 1;
            while(_loc4_ <= GamePredef.PETEQU_NUM)
            {
               if(ToolKit.isBigThan(petData["equ" + _loc4_],0))
               {
                  _loc5_ = Number(petData["equ" + _loc4_]);
                  _loc6_ = _core.data.getSlot({"id":_loc5_});
                  _loc7_ = Number(petData["equ" + _loc4_]);
                  if(_loc7_ < 0)
                  {
                     this["petEqu" + _loc4_].giid = -1;
                     this["petEqu" + _loc4_].restore();
                  }
                  else if(_loc6_)
                  {
                     this["petEqu" + _loc4_].type = _loc6_.type;
                     this["petEqu" + _loc4_].giid = _loc6_.itemId;
                  }
               }
               else
               {
                  this["petEqu" + _loc4_].giid = -1;
                  this["petEqu" + _loc4_].restore();
               }
               _loc4_++;
            }
            drawSkillSlots(selectedTabIndex);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill3() : SkillUseSlot
      {
         return this._900562942skill3;
      }
      
      public function set finalResiDefy(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._908333075finalResiDefy;
         if(_loc2_ !== param1)
         {
            this._908333075finalResiDefy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiDefy",_loc2_,param1));
         }
      }
      
      public function set growRateAdd(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._504961010growRateAdd;
         if(_loc2_ !== param1)
         {
            this._504961010growRateAdd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growRateAdd",_loc2_,param1));
         }
      }
      
      public function set delBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420544delBtn1;
         if(_loc2_ !== param1)
         {
            this._1549420544delBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn1",_loc2_,param1));
         }
      }
      
      private function skillTabBtnClick(param1:int) : void
      {
         drawSkillSlots(param1);
         selectedTabIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= 2)
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
      
      public function __minusStaminaButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set petClose(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._456005657petClose;
         if(_loc2_ !== param1)
         {
            this._456005657petClose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petClose",_loc2_,param1));
         }
      }
      
      public function __skill5_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get skill1() : SkillUseSlot
      {
         return this._900562944skill1;
      }
      
      public function set finalPoison(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1995090974finalPoison;
         if(_loc2_ !== param1)
         {
            this._1995090974finalPoison = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalPoison",_loc2_,param1));
         }
      }
      
      public function set skill3(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562942skill3;
         if(_loc2_ !== param1)
         {
            this._900562942skill3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill3",_loc2_,param1));
         }
      }
      
      public function openGuardPanel() : void
      {
         if(_core.player.level < 50)
         {
            Alert.show(Language.PANEL_PETGUARD[10],"",Alert.YES,null,null);
            return;
         }
         var _loc1_:Object = this._core.view.getUI(ViewManager.PANEL_PETGUARD);
         if(_loc1_)
         {
            _loc1_.openGuardPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get speed() : BoxLabel
      {
         return this._109641799speed;
      }
      
      public function set skill1(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562944skill1;
         if(_loc2_ !== param1)
         {
            this._900562944skill1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill5() : SkillUseSlot
      {
         return this._900562940skill5;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalPraMagDef() : TextInput
      {
         return this._974811045finalPraMagDef;
      }
      
      [Bindable(event="propertyChange")]
      public function get addAgility() : BoxLabel
      {
         return this._850872420addAgility;
      }
      
      private function cancelPetFollow() : void
      {
         _core.remote.call("cancelPetFollow",new Responder(cancelPetFollowHandler),_core.getShowPetId());
      }
      
      [Bindable(event="propertyChange")]
      public function get aptEnergyFinal() : RoundedLabel
      {
         return this._1618724969aptEnergyFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiConfusion() : TextInput
      {
         return this._1984280679finalResiConfusion;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn2() : BasicGlowButton
      {
         return this._169699449petFuncBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn3() : BasicGlowButton
      {
         return this._169699450petFuncBtn3;
      }
      
      private function _PetManagerPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PetManagerPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn1() : BasicGlowButton
      {
         return this._169699448petFuncBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn5() : BasicGlowButton
      {
         return this._169699452petFuncBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn6() : BasicGlowButton
      {
         return this._169699453petFuncBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get petExp() : BoxLabel
      {
         return this._991700866petExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn4() : BasicGlowButton
      {
         return this._169699451petFuncBtn4;
      }
      
      public function set propertyBarMp(param1:PropertyBar) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1046717375propertyBarMp;
         if(_loc2_ !== param1)
         {
            this._1046717375propertyBarMp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyBarMp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attStamina() : BoxLabel
      {
         return this._1023416178attStamina;
      }
      
      private function showPetFollowBtnReset(param1:TimerEvent) : void
      {
         showPetFollowBtn.enabled = true;
         if(showPetTimer)
         {
            showPetTimer.removeEventListener(TimerEvent.TIMER,showPetFollowBtnReset);
            showPetTimer = null;
         }
      }
      
      public function set defence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1544916048defence;
         if(_loc2_ !== param1)
         {
            this._1544916048defence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defence",_loc2_,param1));
         }
      }
      
      public function __delBtn1_click(param1:MouseEvent) : void
      {
         delSkill(1);
      }
      
      public function set speed(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109641799speed;
         if(_loc2_ !== param1)
         {
            this._109641799speed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addAgilityButton() : Button
      {
         return this._279478090addAgilityButton;
      }
      
      public function set finalPraMagDef(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._974811045finalPraMagDef;
         if(_loc2_ !== param1)
         {
            this._974811045finalPraMagDef = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalPraMagDef",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get factor0() : RoundedLabel
      {
         return this._1091882815factor0;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor1() : RoundedLabel
      {
         return this._1091882814factor1;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor2() : RoundedLabel
      {
         return this._1091882813factor2;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor3() : RoundedLabel
      {
         return this._1091882812factor3;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor4() : RoundedLabel
      {
         return this._1091882811factor4;
      }
      
      public function set addAgility(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._850872420addAgility;
         if(_loc2_ !== param1)
         {
            this._850872420addAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addAgility",_loc2_,param1));
         }
      }
      
      public function set aptEnergyFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1618724969aptEnergyFinal;
         if(_loc2_ !== param1)
         {
            this._1618724969aptEnergyFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptEnergyFinal",_loc2_,param1));
         }
      }
      
      public function set minusEnergyButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1863068566minusEnergyButton;
         if(_loc2_ !== param1)
         {
            this._1863068566minusEnergyButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusEnergyButton",_loc2_,param1));
         }
      }
      
      public function set finalResiConfusion(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1984280679finalResiConfusion;
         if(_loc2_ !== param1)
         {
            this._1984280679finalResiConfusion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiConfusion",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStrengthEx() : RoundedLabel
      {
         return this._2055403737aptStrengthEx;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         super.visible = param1;
         if(param1)
         {
            if(firstTimeFlag)
            {
               initView();
               followPetId = -1;
            }
            if(Boolean(petDataList) && Boolean(petDataList.selectedItem))
            {
               switchFollowButton(petDataList.selectedItem.petData.id == _core.getShowPetId());
            }
            if(xibieshai.selectedIndex == 0)
            {
               if(Boolean(petAC && petAC.length > 0) && Boolean(selPetData) && !petDataList.selectedItem)
               {
                  _loc2_ = 0;
                  while(_loc2_ <= petAC.length)
                  {
                     if(_loc2_ >= PAGE_MAX_PET_NUM)
                     {
                        pageSelector.pageNo = _loc2_ / PAGE_MAX_PET_NUM;
                        petDataList.selectedIndex = _loc2_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                     }
                     else
                     {
                        pageSelector.pageNo = 0;
                        petDataList.selectedIndex = _loc2_;
                     }
                     if(petDataList.selectedItem.petData.id == selPetData.id)
                     {
                        petDataListClick();
                        break;
                     }
                     _loc2_++;
                  }
               }
            }
            else
            {
               _loc3_ = this["petAC" + xibieshai.selectedIndex];
               if(Boolean(_loc3_ && _loc3_.length > 0) && Boolean(selPetData) && !petDataList.selectedItem)
               {
                  _loc2_ = 0;
                  while(_loc2_ <= _loc3_.length)
                  {
                     if(_loc2_ >= PAGE_MAX_PET_NUM)
                     {
                        pageSelector.pageNo = _loc2_ / PAGE_MAX_PET_NUM;
                        petDataList.selectedIndex = _loc2_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                     }
                     else
                     {
                        pageSelector.pageNo = 0;
                        petDataList.selectedIndex = _loc2_;
                     }
                     if(petDataList.selectedItem.petData.id == selPetData.id)
                     {
                        petDataListClick();
                        break;
                     }
                     _loc2_++;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalReduceHurt1() : TextInput
      {
         return this._57704678finalReduceHurt1;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalReduceHurt2() : TextInput
      {
         return this._57704679finalReduceHurt2;
      }
      
      public function __openBtn5_click(param1:MouseEvent) : void
      {
         openSkill(5);
      }
      
      public function set petFuncBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699449petFuncBtn2;
         if(_loc2_ !== param1)
         {
            this._169699449petFuncBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn2",_loc2_,param1));
         }
      }
      
      public function __petFuncBtn4_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(5);
      }
      
      public function set petFuncBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699450petFuncBtn3;
         if(_loc2_ !== param1)
         {
            this._169699450petFuncBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn3",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699452petFuncBtn5;
         if(_loc2_ !== param1)
         {
            this._169699452petFuncBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn5",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699451petFuncBtn4;
         if(_loc2_ !== param1)
         {
            this._169699451petFuncBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn4",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699448petFuncBtn1;
         if(_loc2_ !== param1)
         {
            this._169699448petFuncBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn1",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699453petFuncBtn6;
         if(_loc2_ !== param1)
         {
            this._169699453petFuncBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn6",_loc2_,param1));
         }
      }
      
      public function set petExp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._991700866petExp;
         if(_loc2_ !== param1)
         {
            this._991700866petExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petExp",_loc2_,param1));
         }
      }
      
      private function _PetManagerPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTitleCanvas1.text = param1;
         },"_PetManagerPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicGlowButton1.label = param1;
         },"_PetManagerPanel_BasicGlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            stateBtn.toolTip = param1;
         },"stateBtn.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            stateBtn.label = param1;
         },"stateBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicGlowButton2.toolTip = param1;
         },"_PetManagerPanel_BasicGlowButton2.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicGlowButton2.label = param1;
         },"_PetManagerPanel_BasicGlowButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2.toolTip = param1;
         },"btn2.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2.label = param1;
         },"btn2.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn4.toolTip = param1;
         },"btn4.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn4.label = param1;
         },"btn4.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicGlowButton5.toolTip = param1;
         },"_PetManagerPanel_BasicGlowButton5.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicGlowButton5.label = param1;
         },"_PetManagerPanel_BasicGlowButton5.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showPetFollowBtn.label = param1;
         },"showPetFollowBtn.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGERPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showPetFollowBtn.toolTip = param1;
         },"showPetFollowBtn.toolTip");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return petPageAc;
         },function(param1:Object):void
         {
            petDataList.dataProvider = param1;
         },"petDataList.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            paixucb.toolTip = param1;
         },"paixucb.toolTip");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            paixucb.label = param1;
         },"paixucb.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton1.label = param1;
         },"_PetManagerPanel_BasicTxtButton1.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton2.label = param1;
         },"_PetManagerPanel_BasicTxtButton2.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton3.label = param1;
         },"_PetManagerPanel_BasicTxtButton3.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pettabBtn0.label = param1;
         },"pettabBtn0.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pettabBtn1.label = param1;
         },"pettabBtn1.label");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label1.filters = param1;
         },"_PetManagerPanel_Label1.filters");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label2.filters = param1;
         },"_PetManagerPanel_Label2.filters");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label3.filters = param1;
         },"_PetManagerPanel_Label3.filters");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label4.filters = param1;
         },"_PetManagerPanel_Label4.filters");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label5.filters = param1;
         },"_PetManagerPanel_Label5.filters");
         result[26] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label6.filters = param1;
         },"_PetManagerPanel_Label6.filters");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label7.filters = param1;
         },"_PetManagerPanel_Label7.filters");
         result[28] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label8.filters = param1;
         },"_PetManagerPanel_Label8.filters");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label9.filters = param1;
         },"_PetManagerPanel_Label9.filters");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label10.filters = param1;
         },"_PetManagerPanel_Label10.filters");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label11.filters = param1;
         },"_PetManagerPanel_Label11.filters");
         result[32] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label12.filters = param1;
         },"_PetManagerPanel_Label12.filters");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label13.filters = param1;
         },"_PetManagerPanel_Label13.filters");
         result[34] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label14.filters = param1;
         },"_PetManagerPanel_Label14.filters");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label15.filters = param1;
         },"_PetManagerPanel_Label15.filters");
         result[36] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label16.filters = param1;
         },"_PetManagerPanel_Label16.filters");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label17.filters = param1;
         },"_PetManagerPanel_Label17.filters");
         result[38] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label18.filters = param1;
         },"_PetManagerPanel_Label18.filters");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label19.filters = param1;
         },"_PetManagerPanel_Label19.filters");
         result[40] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label20.filters = param1;
         },"_PetManagerPanel_Label20.filters");
         result[41] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label21.filters = param1;
         },"_PetManagerPanel_Label21.filters");
         result[42] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label22.filters = param1;
         },"_PetManagerPanel_Label22.filters");
         result[43] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label23.filters = param1;
         },"_PetManagerPanel_Label23.filters");
         result[44] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label24.filters = param1;
         },"_PetManagerPanel_Label24.filters");
         result[45] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label25.filters = param1;
         },"_PetManagerPanel_Label25.filters");
         result[46] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetManagerPanel_Label26.filters = param1;
         },"_PetManagerPanel_Label26.filters");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attStrength.toolTip = param1;
         },"attStrength.toolTip");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_AGI;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attAgility.toolTip = param1;
         },"attAgility.toolTip");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STA;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attStamina.toolTip = param1;
         },"attStamina.toolTip");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_INT;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attIntelligence.toolTip = param1;
         },"attIntelligence.toolTip");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_SPR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attEnergy.toolTip = param1;
         },"attEnergy.toolTip");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.AADPROPCHECK;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            AddMultipleCheck.toolTip = param1;
         },"AddMultipleCheck.toolTip");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addStrengthButton.toolTip = param1;
         },"addStrengthButton.toolTip");
         result[54] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addStrengthButton.styleName = param1;
         },"addStrengthButton.styleName");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            minusStrengthButton.toolTip = param1;
         },"minusStrengthButton.toolTip");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addAgilityButton.toolTip = param1;
         },"addAgilityButton.toolTip");
         result[57] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addAgilityButton.styleName = param1;
         },"addAgilityButton.styleName");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            minusAgilityButton.toolTip = param1;
         },"minusAgilityButton.toolTip");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addStaminaButton.toolTip = param1;
         },"addStaminaButton.toolTip");
         result[60] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addStaminaButton.styleName = param1;
         },"addStaminaButton.styleName");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            minusStaminaButton.toolTip = param1;
         },"minusStaminaButton.toolTip");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addIntelligenceButton.toolTip = param1;
         },"addIntelligenceButton.toolTip");
         result[63] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addIntelligenceButton.styleName = param1;
         },"addIntelligenceButton.styleName");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            minusIntelligenceButton.toolTip = param1;
         },"minusIntelligenceButton.toolTip");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addEnergyButton.toolTip = param1;
         },"addEnergyButton.toolTip");
         result[66] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addEnergyButton.styleName = param1;
         },"addEnergyButton.styleName");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            minusEnergyButton.toolTip = param1;
         },"minusEnergyButton.toolTip");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicDelayButton2.label = param1;
         },"_PetManagerPanel_BasicDelayButton2.label");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton5.toolTip = param1;
         },"_PetManagerPanel_BasicTxtButton5.toolTip");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton5.label = param1;
         },"_PetManagerPanel_BasicTxtButton5.label");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STA;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton6.toolTip = param1;
         },"_PetManagerPanel_BasicTxtButton6.toolTip");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton6.label = param1;
         },"_PetManagerPanel_BasicTxtButton6.label");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_AGI;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton7.toolTip = param1;
         },"_PetManagerPanel_BasicTxtButton7.toolTip");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton7.label = param1;
         },"_PetManagerPanel_BasicTxtButton7.label");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_INT;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton8.toolTip = param1;
         },"_PetManagerPanel_BasicTxtButton8.toolTip");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton8.label = param1;
         },"_PetManagerPanel_BasicTxtButton8.label");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_SPR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton9.toolTip = param1;
         },"_PetManagerPanel_BasicTxtButton9.toolTip");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton9.label = param1;
         },"_PetManagerPanel_BasicTxtButton9.label");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton10.label = param1;
         },"_PetManagerPanel_BasicTxtButton10.label");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton11.label = param1;
         },"_PetManagerPanel_BasicTxtButton11.label");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton12.label = param1;
         },"_PetManagerPanel_BasicTxtButton12.label");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton13.label = param1;
         },"_PetManagerPanel_BasicTxtButton13.label");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton14.label = param1;
         },"_PetManagerPanel_BasicTxtButton14.label");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton15.label = param1;
         },"_PetManagerPanel_BasicTxtButton15.label");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton16.label = param1;
         },"_PetManagerPanel_BasicTxtButton16.label");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton17.label = param1;
         },"_PetManagerPanel_BasicTxtButton17.label");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton18.label = param1;
         },"_PetManagerPanel_BasicTxtButton18.label");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton19.label = param1;
         },"_PetManagerPanel_BasicTxtButton19.label");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_BasicTxtButton20.label = param1;
         },"_PetManagerPanel_BasicTxtButton20.label");
         result[90] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PET_PENTAGON;
         },function(param1:Object):void
         {
            _PetManagerPanel_Image4.source = param1;
         },"_PetManagerPanel_Image4.source");
         result[91] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor0.text = param1;
         },"factor0.text");
         result[92] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor0.filters = param1;
         },"factor0.filters");
         result[93] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor1.text = param1;
         },"factor1.text");
         result[94] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor1.filters = param1;
         },"factor1.filters");
         result[95] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor2.text = param1;
         },"factor2.text");
         result[96] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor2.filters = param1;
         },"factor2.filters");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor3.text = param1;
         },"factor3.text");
         result[98] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor3.filters = param1;
         },"factor3.filters");
         result[99] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor4.text = param1;
         },"factor4.text");
         result[100] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor4.filters = param1;
         },"factor4.filters");
         result[101] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu1.text = param1;
         },"petEqu1.text");
         result[102] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu1.type = param1;
         },"petEqu1.type");
         result[103] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu1.acceptType = param1;
         },"petEqu1.acceptType");
         result[104] = binding;
         binding = new Binding(this,function():Array
         {
            return [50];
         },function(param1:Array):void
         {
            petEqu1.acceptPos = param1;
         },"petEqu1.acceptPos");
         result[105] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu2.text = param1;
         },"petEqu2.text");
         result[106] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu2.type = param1;
         },"petEqu2.type");
         result[107] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu2.acceptType = param1;
         },"petEqu2.acceptType");
         result[108] = binding;
         binding = new Binding(this,function():Array
         {
            return [51];
         },function(param1:Array):void
         {
            petEqu2.acceptPos = param1;
         },"petEqu2.acceptPos");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu3.text = param1;
         },"petEqu3.text");
         result[110] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu3.type = param1;
         },"petEqu3.type");
         result[111] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu3.acceptType = param1;
         },"petEqu3.acceptType");
         result[112] = binding;
         binding = new Binding(this,function():Array
         {
            return [52];
         },function(param1:Array):void
         {
            petEqu3.acceptPos = param1;
         },"petEqu3.acceptPos");
         result[113] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu4.text = param1;
         },"petEqu4.text");
         result[114] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu4.type = param1;
         },"petEqu4.type");
         result[115] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu4.acceptType = param1;
         },"petEqu4.acceptType");
         result[116] = binding;
         binding = new Binding(this,function():Array
         {
            return [53];
         },function(param1:Array):void
         {
            petEqu4.acceptPos = param1;
         },"petEqu4.acceptPos");
         result[117] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu5.text = param1;
         },"petEqu5.text");
         result[118] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu5.type = param1;
         },"petEqu5.type");
         result[119] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu5.acceptType = param1;
         },"petEqu5.acceptType");
         result[120] = binding;
         binding = new Binding(this,function():Array
         {
            return [54];
         },function(param1:Array):void
         {
            petEqu5.acceptPos = param1;
         },"petEqu5.acceptPos");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu6.text = param1;
         },"petEqu6.text");
         result[122] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu6.type = param1;
         },"petEqu6.type");
         result[123] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu6.acceptType = param1;
         },"petEqu6.acceptType");
         result[124] = binding;
         binding = new Binding(this,function():Array
         {
            return [55];
         },function(param1:Array):void
         {
            petEqu6.acceptPos = param1;
         },"petEqu6.acceptPos");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[56];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu7.text = param1;
         },"petEqu7.text");
         result[126] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu7.type = param1;
         },"petEqu7.type");
         result[127] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu7.acceptType = param1;
         },"petEqu7.acceptType");
         result[128] = binding;
         binding = new Binding(this,function():Array
         {
            return [56];
         },function(param1:Array):void
         {
            petEqu7.acceptPos = param1;
         },"petEqu7.acceptPos");
         result[129] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.EQUIP_POSITION[57];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu8.text = param1;
         },"petEqu8.text");
         result[130] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu8.type = param1;
         },"petEqu8.type");
         result[131] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu8.acceptType = param1;
         },"petEqu8.acceptType");
         result[132] = binding;
         binding = new Binding(this,function():Array
         {
            return [57];
         },function(param1:Array):void
         {
            petEqu8.acceptPos = param1;
         },"petEqu8.acceptPos");
         result[133] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn1.label = param1;
         },"petFuncBtn1.label");
         result[134] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn1.enabled = param1;
         },"petFuncBtn1.enabled");
         result[135] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn2.label = param1;
         },"petFuncBtn2.label");
         result[136] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn2.enabled = param1;
         },"petFuncBtn2.enabled");
         result[137] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn3.label = param1;
         },"petFuncBtn3.label");
         result[138] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn3.enabled = param1;
         },"petFuncBtn3.enabled");
         result[139] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn4.label = param1;
         },"petFuncBtn4.label");
         result[140] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn4.enabled = param1;
         },"petFuncBtn4.enabled");
         result[141] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn5.label = param1;
         },"petFuncBtn5.label");
         result[142] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn5.enabled = param1;
         },"petFuncBtn5.enabled");
         result[143] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn6.label = param1;
         },"petFuncBtn6.label");
         result[144] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn6.enabled = param1;
         },"petFuncBtn6.enabled");
         result[145] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[146] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[147] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[148] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            simplecanvas3.label = param1;
         },"simplecanvas3.label");
         result[149] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn1.label = param1;
         },"delBtn1.label");
         result[150] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn1.enabled = param1;
         },"delBtn1.enabled");
         result[151] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn1.label = param1;
         },"upBtn1.label");
         result[152] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn1.enabled = param1;
         },"upBtn1.enabled");
         result[153] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn1.label = param1;
         },"openBtn1.label");
         result[154] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn1.enabled = param1;
         },"openBtn1.enabled");
         result[155] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn2.label = param1;
         },"delBtn2.label");
         result[156] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn2.enabled = param1;
         },"delBtn2.enabled");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn2.label = param1;
         },"upBtn2.label");
         result[158] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn2.enabled = param1;
         },"upBtn2.enabled");
         result[159] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn2.label = param1;
         },"openBtn2.label");
         result[160] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn2.enabled = param1;
         },"openBtn2.enabled");
         result[161] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn3.label = param1;
         },"delBtn3.label");
         result[162] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn3.enabled = param1;
         },"delBtn3.enabled");
         result[163] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn3.label = param1;
         },"upBtn3.label");
         result[164] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn3.enabled = param1;
         },"upBtn3.enabled");
         result[165] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn3.label = param1;
         },"openBtn3.label");
         result[166] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn3.enabled = param1;
         },"openBtn3.enabled");
         result[167] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn4.label = param1;
         },"delBtn4.label");
         result[168] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn4.enabled = param1;
         },"delBtn4.enabled");
         result[169] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn4.label = param1;
         },"upBtn4.label");
         result[170] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn4.enabled = param1;
         },"upBtn4.enabled");
         result[171] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn4.label = param1;
         },"openBtn4.label");
         result[172] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn4.enabled = param1;
         },"openBtn4.enabled");
         result[173] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn5.label = param1;
         },"delBtn5.label");
         result[174] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn5.enabled = param1;
         },"delBtn5.enabled");
         result[175] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn5.label = param1;
         },"upBtn5.label");
         result[176] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn5.enabled = param1;
         },"upBtn5.enabled");
         result[177] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn5.label = param1;
         },"openBtn5.label");
         result[178] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn5.enabled = param1;
         },"openBtn5.enabled");
         result[179] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            growRate.toolTip = param1;
         },"growRate.toolTip");
         result[180] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            growRateAdd.toolTip = param1;
         },"growRateAdd.toolTip");
         result[181] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptStrength + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStrength.toolTip = param1;
         },"aptStrength.toolTip");
         result[182] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptAgility + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptAgility.toolTip = param1;
         },"aptAgility.toolTip");
         result[183] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptStamina + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStamina.toolTip = param1;
         },"aptStamina.toolTip");
         result[184] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptIntelligence + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptIntelligence.toolTip = param1;
         },"aptIntelligence.toolTip");
         result[185] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptEnergy + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptEnergy.toolTip = param1;
         },"aptEnergy.toolTip");
         result[186] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptStrengthEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStrengthEx.toolTip = param1;
         },"aptStrengthEx.toolTip");
         result[187] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptAgilityEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptAgilityEx.toolTip = param1;
         },"aptAgilityEx.toolTip");
         result[188] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptStaminaEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStaminaEx.toolTip = param1;
         },"aptStaminaEx.toolTip");
         result[189] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptIntelligenceEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptIntelligenceEx.toolTip = param1;
         },"aptIntelligenceEx.toolTip");
         result[190] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptEnergyEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptEnergyEx.toolTip = param1;
         },"aptEnergyEx.toolTip");
         result[191] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStrength) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStrengthFinal.toolTip = param1;
         },"aptStrengthFinal.toolTip");
         result[192] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptAgility) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptAgilityFinal.toolTip = param1;
         },"aptAgilityFinal.toolTip");
         result[193] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStamina) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStaminaFinal.toolTip = param1;
         },"aptStaminaFinal.toolTip");
         result[194] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptIntelligence) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptIntelligenceFinal.toolTip = param1;
         },"aptIntelligenceFinal.toolTip");
         result[195] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptEnergy) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptEnergyFinal.toolTip = param1;
         },"aptEnergyFinal.toolTip");
         result[196] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton1.label = param1;
         },"basichortxtbutton1.label");
         result[197] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEPREDEF_S[511];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton1.toolTip = param1;
         },"basichortxtbutton1.toolTip");
         result[198] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton2.label = param1;
         },"basichortxtbutton2.label");
         result[199] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEPREDEF_S[512];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton2.toolTip = param1;
         },"basichortxtbutton2.toolTip");
         result[200] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton3.label = param1;
         },"basichortxtbutton3.label");
         result[201] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEPREDEF_S[513];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton3.toolTip = param1;
         },"basichortxtbutton3.toolTip");
         result[202] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton4.label = param1;
         },"basichortxtbutton4.label");
         result[203] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEPREDEF_S[514];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton4.toolTip = param1;
         },"basichortxtbutton4.toolTip");
         result[204] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton5.label = param1;
         },"basichortxtbutton5.label");
         result[205] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEPREDEF_S[515];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton5.toolTip = param1;
         },"basichortxtbutton5.toolTip");
         result[206] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton6.label = param1;
         },"basichortxtbutton6.label");
         result[207] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEPREDEF_S[516];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton6.toolTip = param1;
         },"basichortxtbutton6.toolTip");
         result[208] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            simplecanvas2.label = param1;
         },"simplecanvas2.label");
         result[209] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return star.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _PetManagerPanel_Image5[param2[0]].source = param1;
         },"_PetManagerPanel_Image5.source");
         result[210] = binding;
         binding = new Binding(this,function():Object
         {
            return xiebieshaidp;
         },function(param1:Object):void
         {
            xibieshai.dataProvider = param1;
         },"xibieshai.dataProvider");
         result[211] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_RoundedLabel18.toolTip = param1;
         },"_PetManagerPanel_RoundedLabel18.toolTip");
         result[212] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETMANAGEPRANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetManagerPanel_RoundedLabel18.text = param1;
         },"_PetManagerPanel_RoundedLabel18.text");
         result[213] = binding;
         return result;
      }
      
      private function useSkill(param1:MouseEvent) : void
      {
         var _loc2_:SkillUseSlot = SkillUseSlot(param1.currentTarget);
         drag(_loc2_,param1);
      }
      
      public function __minusAgilityButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get aptEnergy() : BoxLabel
      {
         return this._348170509aptEnergy;
      }
      
      public function showPetSoulPanel() : void
      {
         if(_core.player.level < 80)
         {
            Alert.show(Language.PET_SOUL_S[36],"",Alert.YES,null,null);
            return;
         }
         var _loc1_:Object = this._core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc1_)
         {
            _loc1_.visible = true;
            _loc1_.selectedPetId = this.selPetData.id;
         }
      }
      
      public function set aptStamina(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1911434378aptStamina;
         if(_loc2_ !== param1)
         {
            this._1911434378aptStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStamina",_loc2_,param1));
         }
      }
      
      public function set pettabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._344411275pettabBtn1;
         if(_loc2_ !== param1)
         {
            this._344411275pettabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pettabBtn1",_loc2_,param1));
         }
      }
      
      public function set attEnergy(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1270522743attEnergy;
         if(_loc2_ !== param1)
         {
            this._1270522743attEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attEnergy",_loc2_,param1));
         }
      }
      
      public function set pettabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._344411274pettabBtn0;
         if(_loc2_ !== param1)
         {
            this._344411274pettabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pettabBtn0",_loc2_,param1));
         }
      }
      
      public function set attStamina(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1023416178attStamina;
         if(_loc2_ !== param1)
         {
            this._1023416178attStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attStamina",_loc2_,param1));
         }
      }
      
      public function ___PetManagerPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_ITEM);
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox1() : VBox
      {
         return this._112005436vbox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox2() : VBox
      {
         return this._112005437vbox2;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox3() : VBox
      {
         return this._112005438vbox3;
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         deletePet();
      }
      
      [Bindable(event="propertyChange")]
      public function get minusAgilityButton() : Button
      {
         return this._1595537735minusAgilityButton;
      }
      
      public function set _PetManagerPanel_HBox1(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1064350886_PetManagerPanel_HBox1;
         if(_loc2_ !== param1)
         {
            this._1064350886_PetManagerPanel_HBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PetManagerPanel_HBox1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox5() : VBox
      {
         return this._112005440vbox5;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox4() : VBox
      {
         return this._112005439vbox4;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalEnhPhyHurt() : TextInput
      {
         return this._1453362841finalEnhPhyHurt;
      }
      
      public function set paixucb(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._801114956paixucb;
         if(_loc2_ !== param1)
         {
            this._801114956paixucb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paixucb",_loc2_,param1));
         }
      }
      
      public function set addAgilityButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._279478090addAgilityButton;
         if(_loc2_ !== param1)
         {
            this._279478090addAgilityButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addAgilityButton",_loc2_,param1));
         }
      }
      
      public function __skill5_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function __pettabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      public function set petLife(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677761861petLife;
         if(_loc2_ !== param1)
         {
            this._677761861petLife = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petLife",_loc2_,param1));
         }
      }
      
      public function set factor0(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882815factor0;
         if(_loc2_ !== param1)
         {
            this._1091882815factor0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor0",_loc2_,param1));
         }
      }
      
      public function set factor1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882814factor1;
         if(_loc2_ !== param1)
         {
            this._1091882814factor1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor1",_loc2_,param1));
         }
      }
      
      public function onRefreshPetProp(param1:Number, param2:Object) : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.petList))
         {
            if(_core.player.petList[param1])
            {
               _core.player.petList[param1].property = param2;
               updateView(param1);
               if(_core.player.petList[param1].state == 1)
               {
                  detailUpdateView(param2,true);
               }
               else if(selPetData.state != 1)
               {
                  detailUpdateView(param2);
               }
            }
         }
      }
      
      public function set factor3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882812factor3;
         if(_loc2_ !== param1)
         {
            this._1091882812factor3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStrength() : BoxLabel
      {
         return this._395626106aptStrength;
      }
      
      public function set factor4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882811factor4;
         if(_loc2_ !== param1)
         {
            this._1091882811factor4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor4",_loc2_,param1));
         }
      }
      
      public function set factor2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882813factor2;
         if(_loc2_ !== param1)
         {
            this._1091882813factor2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor2",_loc2_,param1));
         }
      }
      
      public function __upBtn3_click(param1:MouseEvent) : void
      {
         upSkill(3);
      }
      
      private function showMainPetCanvas() : void
      {
         var _loc1_:* = undefined;
         if(_core.player.petList)
         {
            for each(_loc1_ in _core.player.petList)
            {
               if(Boolean(_loc1_) && _loc1_ != undefined)
               {
                  if(_loc1_.state == 1)
                  {
                     _core.view.getUI(ViewManager.MAIN_PET).showPet(_loc1_);
                     return;
                  }
               }
            }
            _core.view.getUI(ViewManager.MAIN_PET).showPet(null);
         }
      }
      
      public function set aptStrengthEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2055403737aptStrengthEx;
         if(_loc2_ !== param1)
         {
            this._2055403737aptStrengthEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStrengthEx",_loc2_,param1));
         }
      }
      
      public function __petDataList_itemClick(param1:ListEvent) : void
      {
         petDataListClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get finalCombo() : TextInput
      {
         return this._1887307336finalCombo;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            petPageAc.addItem(pageAC.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      public function set finalReduceHurt2(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._57704679finalReduceHurt2;
         if(_loc2_ !== param1)
         {
            this._57704679finalReduceHurt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalReduceHurt2",_loc2_,param1));
         }
      }
      
      public function set finalReduceHurt1(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._57704678finalReduceHurt1;
         if(_loc2_ !== param1)
         {
            this._57704678finalReduceHurt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalReduceHurt1",_loc2_,param1));
         }
      }
      
      public function __skill2_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get AddMultipleCheck() : CheckBox
      {
         return this._1582407209AddMultipleCheck;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalEnhMagicHurt() : TextInput
      {
         return this._1167965741finalEnhMagicHurt;
      }
      
      [Bindable(event="propertyChange")]
      public function get petNum() : BoxLabel
      {
         return this._991692313petNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiLight() : TextInput
      {
         return this._1898937865finalResiLight;
      }
      
      [Bindable(event="propertyChange")]
      public function get addIntelligence() : BoxLabel
      {
         return this._1420795392addIntelligence;
      }
      
      public function ___PetManagerPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         changeProperty();
      }
      
      private function cancelPetFollowHandler(param1:Object) : void
      {
         if(param1)
         {
            _core.setShowPetId(-1);
            switchFollowButton(false);
         }
      }
      
      private function set petPageAc(param1:ArrayCollection) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1613040912petPageAc;
         if(_loc2_ !== param1)
         {
            this._1613040912petPageAc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petPageAc",_loc2_,param1));
         }
      }
      
      private function _PetManagerPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PETMANAGEPRANEL_U[7];
         _loc1_ = Language.PETMANAGEPRANEL_U[29];
         _loc1_ = Language.PETMANAGEPRANEL_U[0];
         _loc1_ = Language.PETMANAGEPRANEL_U[0];
         _loc1_ = Language.PETMANAGERPANEL_S[28];
         _loc1_ = Language.PETMANAGERPANEL_S[28];
         _loc1_ = Language.PETMANAGERPANEL_S[18];
         _loc1_ = Language.PETMANAGEPRANEL_U[2];
         _loc1_ = Language.PETMANAGERPANEL_S[20];
         _loc1_ = Language.PETMANAGEPRANEL_U[4];
         _loc1_ = Language.PETMANAGERPANEL_S[21];
         _loc1_ = Language.PETMANAGEPRANEL_U[5];
         _loc1_ = Language.PETMANAGERPANEL_S[23];
         _loc1_ = Language.PETMANAGERPANEL_S[26];
         _loc1_ = petPageAc;
         _loc1_ = Language.PETMANAGEPRANEL_U[31];
         _loc1_ = Language.PETMANAGEPRANEL_U[30];
         _loc1_ = Language.PETMANAGEPRANEL_U[9];
         _loc1_ = Language.PETMANAGEPRANEL_U[10];
         _loc1_ = Language.PETMANAGEPRANEL_U[11];
         _loc1_ = Language.PETPANEL_U[31];
         _loc1_ = Language.PETPANEL_U[10];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = GamePredef.PROP_STR;
         _loc1_ = GamePredef.PROP_AGI;
         _loc1_ = GamePredef.PROP_STA;
         _loc1_ = GamePredef.PROP_INT;
         _loc1_ = GamePredef.PROP_SPR;
         _loc1_ = GamePredef.AADPROPCHECK;
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = styleAddName;
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = styleAddName;
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = styleAddName;
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = styleAddName;
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = styleAddName;
         _loc1_ = Language.PETMANAGEPRANEL_U[28];
         _loc1_ = Language.PETMANAGEPRANEL_U[6];
         _loc1_ = GamePredef.PROP_STR;
         _loc1_ = Language.PETMANAGEPRANEL_U[16];
         _loc1_ = GamePredef.PROP_STA;
         _loc1_ = Language.PETMANAGEPRANEL_U[18];
         _loc1_ = GamePredef.PROP_AGI;
         _loc1_ = Language.PETMANAGEPRANEL_U[20];
         _loc1_ = GamePredef.PROP_INT;
         _loc1_ = Language.PETMANAGEPRANEL_U[22];
         _loc1_ = GamePredef.PROP_SPR;
         _loc1_ = Language.PETMANAGEPRANEL_U[24];
         _loc1_ = Language.PETMANAGEPRANEL_U[26];
         _loc1_ = Language.PETMANAGEPRANEL_U[12];
         _loc1_ = Language.PETMANAGEPRANEL_U[14];
         _loc1_ = Language.PETMANAGEPRANEL_U[13];
         _loc1_ = Language.PETMANAGEPRANEL_U[15];
         _loc1_ = Language.PETMANAGEPRANEL_U[17];
         _loc1_ = Language.PETMANAGEPRANEL_U[19];
         _loc1_ = Language.PETMANAGEPRANEL_U[21];
         _loc1_ = Language.PETMANAGEPRANEL_U[23];
         _loc1_ = Language.PETMANAGEPRANEL_U[25];
         _loc1_ = Language.PETMANAGEPRANEL_U[27];
         _loc1_ = ResManager.PET_PENTAGON;
         _loc1_ = Language.CHARSELECTCANVAS_U[17];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[18];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[19];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[20];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[21];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = GamePredef.EQUIP_POSITION[50];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [50];
         _loc1_ = GamePredef.EQUIP_POSITION[51];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [51];
         _loc1_ = GamePredef.EQUIP_POSITION[52];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [52];
         _loc1_ = GamePredef.EQUIP_POSITION[53];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [53];
         _loc1_ = GamePredef.EQUIP_POSITION[54];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [54];
         _loc1_ = GamePredef.EQUIP_POSITION[55];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [55];
         _loc1_ = GamePredef.EQUIP_POSITION[56];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [56];
         _loc1_ = GamePredef.EQUIP_POSITION[57];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [57];
         _loc1_ = Language.PETPANEL_U[0];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[1];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[2];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[3];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[22];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[24];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[7];
         _loc1_ = Language.PETPANEL_U[8];
         _loc1_ = Language.PETPANEL_U[9];
         _loc1_ = Language.PETPANEL_U[19];
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_S[12];
         _loc1_ = Language.PETPANEL_S[13];
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptStrength + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptAgility + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptStamina + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptIntelligence + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptEnergy + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptStrengthEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptAgilityEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptStaminaEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptIntelligenceEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptEnergyEx || 0);
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStrength) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptAgility) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStamina) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptIntelligence) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptEnergy) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0))));
         _loc1_ = Language.PETPANEL_U[11];
         _loc1_ = Language.GAMEPREDEF_S[511];
         _loc1_ = Language.PETPANEL_U[12];
         _loc1_ = Language.GAMEPREDEF_S[512];
         _loc1_ = Language.PETPANEL_U[13];
         _loc1_ = Language.GAMEPREDEF_S[513];
         _loc1_ = Language.PETPANEL_U[14];
         _loc1_ = Language.GAMEPREDEF_S[514];
         _loc1_ = Language.PETPANEL_U[15];
         _loc1_ = Language.GAMEPREDEF_S[515];
         _loc1_ = Language.PETPANEL_U[16];
         _loc1_ = Language.GAMEPREDEF_S[516];
         _loc1_ = Language.PETPANEL_U[18];
         _loc1_ = star.currentItem;
         _loc1_ = xiebieshaidp;
         _loc1_ = Language.PETMANAGEPRANEL_U[32];
         _loc1_ = Language.PETMANAGEPRANEL_U[33];
      }
      
      public function set finalRebornRate(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._473555694finalRebornRate;
         if(_loc2_ !== param1)
         {
            this._473555694finalRebornRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalRebornRate",_loc2_,param1));
         }
      }
      
      private function openSkill(param1:int) : void
      {
         var num:int = 0;
         var func:Function = null;
         var index:int = param1;
         index = selectedTabIndex * 5 + index;
         var str:String = "";
         if(Boolean(petData) && ToolKit.isEqual(petData["skill" + index],-1))
         {
            if(ToolKit.isBigThan(index,5))
            {
               num = GamePredef.GOLD_PET_SKILLOPEN[index] * GamePredef.GOLD_PET_SKILLOPEN_Q[petDataTemp.qLevel];
               if(Boolean(_core.player.enoughMoneyAuto(2,num)) || Boolean(_core.player.enoughMoneyAuto(2,num)))
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.petOpenSkill(petData.id,index);
                     }
                  };
                  str = Language.PETPANEL_S[8];
                  str = str.replace("{num}",num);
                  Alert.show(str,"",3,this,func);
               }
               else
               {
                  str = Language.PETPANEL_S[10];
                  str = str.replace("{num}",num);
                  _core.sysMsg(str);
               }
            }
         }
      }
      
      public function petAllowToShow(param1:MouseEvent) : void
      {
         if(!petDataList.selectedItem)
         {
            return;
         }
         var _loc2_:Number = Number(petDataList.selectedItem.petData.id);
         if(_core.getShowPetId() != _loc2_)
         {
            switchFollowButton(false);
         }
         else
         {
            switchFollowButton(true);
         }
      }
      
      public function set mAttack(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._74771179mAttack;
         if(_loc2_ !== param1)
         {
            this._74771179mAttack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mAttack",_loc2_,param1));
         }
      }
      
      public function set aptEnergy(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._348170509aptEnergy;
         if(_loc2_ !== param1)
         {
            this._348170509aptEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptEnergy",_loc2_,param1));
         }
      }
      
      public function __xibieshai_change(param1:ListEvent) : void
      {
         classTypeSelect();
      }
      
      public function set dp1(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._99621dp1;
         if(_loc2_ !== param1)
         {
            this._99621dp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dp1",_loc2_,param1));
         }
      }
      
      public function set dp2(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._99622dp2;
         if(_loc2_ !== param1)
         {
            this._99622dp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dp2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgility() : BoxLabel
      {
         return this._1543550368aptAgility;
      }
      
      public function __bindImg_click(param1:MouseEvent) : void
      {
         bindedPet();
      }
      
      public function set vbox1(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005436vbox1;
         if(_loc2_ !== param1)
         {
            this._112005436vbox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox1",_loc2_,param1));
         }
      }
      
      public function __minusIntelligenceButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set finalLight(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1879179968finalLight;
         if(_loc2_ !== param1)
         {
            this._1879179968finalLight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalLight",_loc2_,param1));
         }
      }
      
      public function getPetEquSuitNum(param1:Number) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         if(petData != null)
         {
            _loc2_ = {};
            _loc3_ = 1;
            while(_loc3_ <= GamePredef.PETEQU_NUM - 2)
            {
               _loc4_ = Number(petData["equ" + _loc3_]);
               if(_loc4_ > 0)
               {
                  _loc5_ = _core.data.getSlot({"id":_loc4_});
                  _loc6_ = _core.data.getData(_loc5_.type,_loc5_.itemId);
                  if(_loc6_.color >= 2)
                  {
                     _loc7_ = _core.getTemplateData(_loc5_.type,_loc5_.itemId);
                     if(_loc7_)
                     {
                        _loc8_ = int(_loc7_.suitId);
                        if(_loc2_[_loc8_] == null)
                        {
                           _loc2_[_loc8_] = [];
                        }
                        if(_loc2_[_loc8_][_loc6_.color] == null)
                        {
                           _loc2_[_loc8_][_loc6_.color] = 0;
                        }
                        _loc2_[_loc8_][_loc6_.color] += 1;
                     }
                  }
               }
               _loc3_++;
            }
            if(_loc2_[param1])
            {
               return _loc2_[param1];
            }
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get addEnergy() : BoxLabel
      {
         return this._405874039addEnergy;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn2() : BasicGlowButton
      {
         return this._839841135upBtn2;
      }
      
      public function set tarcanvas(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933944003tarcanvas;
         if(_loc2_ !== param1)
         {
            this._933944003tarcanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tarcanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn4() : BasicGlowButton
      {
         return this._839841133upBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalBreakReborn() : TextInput
      {
         return this._467845765finalBreakReborn;
      }
      
      public function set vbox4(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005439vbox4;
         if(_loc2_ !== param1)
         {
            this._112005439vbox4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox4",_loc2_,param1));
         }
      }
      
      public function __openBtn3_click(param1:MouseEvent) : void
      {
         openSkill(3);
      }
      
      public function __delBtn4_click(param1:MouseEvent) : void
      {
         delSkill(4);
      }
      
      public function __petFuncBtn2_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(1);
      }
      
      public function set vbox2(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005437vbox2;
         if(_loc2_ !== param1)
         {
            this._112005437vbox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addStamina() : BoxLabel
      {
         return this._10889870addStamina;
      }
      
      public function set vbox3(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005438vbox3;
         if(_loc2_ !== param1)
         {
            this._112005438vbox3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptEnergyEx() : RoundedLabel
      {
         return this._415587680aptEnergyEx;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn3() : BasicGlowButton
      {
         return this._839841134upBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyPentagon() : PentagonCanvas
      {
         return this._805962357propertyPentagon;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn5() : BasicGlowButton
      {
         return this._839841132upBtn5;
      }
      
      public function set addIntelligenceButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1991903918addIntelligenceButton;
         if(_loc2_ !== param1)
         {
            this._1991903918addIntelligenceButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addIntelligenceButton",_loc2_,param1));
         }
      }
      
      public function set minusAgilityButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1595537735minusAgilityButton;
         if(_loc2_ !== param1)
         {
            this._1595537735minusAgilityButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusAgilityButton",_loc2_,param1));
         }
      }
      
      private function viewClear() : void
      {
         showCanvas.url = null;
         propertyBarHp.valueMax = 0;
         propertyBarHp.value = 0;
         propertyBarMp.valueMax = 0;
         propertyBarMp.value = 0;
         propertyCanvas.toolTip = "";
         petHp.text = "";
         petMp.text = "";
         petClose.text = "";
      }
      
      public function set vbox5(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005440vbox5;
         if(_loc2_ !== param1)
         {
            this._112005440vbox5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox5",_loc2_,param1));
         }
      }
      
      public function set aptIntelligenceEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1229780311aptIntelligenceEx;
         if(_loc2_ !== param1)
         {
            this._1229780311aptIntelligenceEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptIntelligenceEx",_loc2_,param1));
         }
      }
      
      public function set btn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn1() : BasicGlowButton
      {
         return this._839841136upBtn1;
      }
      
      public function set btn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas() : CharactorShowCanvas
      {
         return this._307382965showCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalDizzy() : TextInput
      {
         return this._1886549314finalDizzy;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn1() : BasicGlowButton
      {
         return this._505171265openBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn2() : BasicGlowButton
      {
         return this._505171264openBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn3() : BasicGlowButton
      {
         return this._505171263openBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn5() : BasicGlowButton
      {
         return this._505171261openBtn5;
      }
      
      private function drawSkillSlots(param1:int) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 5)
         {
            this["skill" + _loc2_].clean();
            _loc3_ = param1 * 5 + _loc2_;
            if(ToolKit.isBigThan(petData["skill" + _loc3_],0))
            {
               _loc4_ = _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + _loc3_]);
               this["skill" + _loc2_].giid = petData["skill" + _loc3_];
               this["skill" + _loc2_].enabled = currentState == "skill" && _loc4_.kind == 2 ? false : true;
               this["delBtn" + _loc2_].visible = true;
               this["upBtn" + _loc2_].visible = true;
               if(ToolKit.isBigOrEqual(_loc4_.level,3))
               {
                  this["upBtn" + _loc2_].enabled = false;
               }
               else
               {
                  this["upBtn" + _loc2_].enabled = true;
               }
               this["openBtn" + _loc2_].visible = false;
               this["delBtn" + _loc2_].includeInLayout = true;
               this["upBtn" + _loc2_].includeInLayout = true;
               this["openBtn" + _loc2_].includeInLayout = false;
            }
            else if(ToolKit.isEqual(petData["skill" + _loc3_],0))
            {
               this["skill" + _loc2_].enabled = true;
               this["delBtn" + _loc2_].visible = false;
               this["upBtn" + _loc2_].visible = false;
               this["openBtn" + _loc2_].visible = false;
               this["delBtn" + _loc2_].includeInLayout = false;
               this["upBtn" + _loc2_].includeInLayout = false;
               this["openBtn" + _loc2_].includeInLayout = false;
            }
            else if(ToolKit.isEqual(petData["skill" + _loc3_],-1))
            {
               if(_loc3_ >= 6 || currentState == "skill")
               {
                  this["skill" + _loc2_].enabled = false;
                  this["openBtn" + _loc2_].visible = true;
                  this["openBtn" + _loc2_].includeInLayout = true;
               }
               else
               {
                  this["skill" + _loc2_].enabled = true;
                  this["openBtn" + _loc2_].visible = false;
                  this["openBtn" + _loc2_].includeInLayout = false;
               }
               this["delBtn" + _loc2_].visible = false;
               this["upBtn" + _loc2_].visible = false;
               this["delBtn" + _loc2_].includeInLayout = false;
               this["upBtn" + _loc2_].includeInLayout = false;
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn4() : BasicGlowButton
      {
         return this._505171262openBtn4;
      }
      
      public function set finalEnhPhyHurt(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1453362841finalEnhPhyHurt;
         if(_loc2_ !== param1)
         {
            this._1453362841finalEnhPhyHurt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalEnhPhyHurt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStaminaEx() : RoundedLabel
      {
         return this._1357563171aptStaminaEx;
      }
      
      public function __skill3_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(2);
      }
      
      public function __upBtn1_click(param1:MouseEvent) : void
      {
         upSkill(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgilityFinal() : RoundedLabel
      {
         return this._237239562aptAgilityFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStaminaFinal() : RoundedLabel
      {
         return this._1751782644aptStaminaFinal;
      }
      
      public function updateView(param1:Number = -1) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:Class = null;
         var _loc7_:* = undefined;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.battlePet = null;
         petAC = new ArrayCollection();
         petAC1 = new ArrayCollection();
         petAC2 = new ArrayCollection();
         petAC3 = new ArrayCollection();
         petAC4 = new ArrayCollection();
         petAC5 = new ArrayCollection();
         petAC6 = new ArrayCollection();
         petAC7 = new ArrayCollection();
         var _loc2_:int = 0;
         if(_core.player.petList)
         {
            for each(_loc5_ in _core.player.petList)
            {
               if(!(Boolean(_loc5_) && Boolean(_loc5_.creatureData)))
               {
                  continue;
               }
               _loc2_++;
               if(_loc5_.state == 1)
               {
                  _loc6_ = ResManager.ICON_PET_BATTLE;
                  _core.battlePet = _loc5_;
                  _loc7_ = _core.view.getUI(ViewManager.MAIN_AUTO_EXP);
                  if(_loc7_ != null)
                  {
                     _loc7_.selectExpType();
                  }
               }
               else if(_loc5_.state == 2)
               {
                  _loc6_ = ResManager.ICON_PET_FOLLOW;
               }
               else
               {
                  _loc6_ = ResManager.ICON_PET_STANDBY;
               }
               petAC.addItem({
                  "id":_loc5_.id,
                  "text":_loc5_.petName,
                  "level":PetLogic.expToLv(_loc5_.exp),
                  "icon":_loc6_,
                  "sort1":_loc5_.tid,
                  "sort2":_loc5_.growRate,
                  "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                  "petData":_loc5_
               });
               switch(int(_loc5_.creatureData.classId))
               {
                  case 1:
                     petAC1.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
                     break;
                  case 2:
                     petAC2.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
                     break;
                  case 3:
                     petAC3.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
                     break;
                  case 4:
                     petAC4.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
                     break;
                  case 5:
                     petAC5.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
                     break;
                  case 6:
                     petAC6.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
                     break;
                  case 7:
                     petAC7.addItem({
                        "id":_loc5_.id,
                        "text":_loc5_.petName,
                        "level":PetLogic.expToLv(_loc5_.exp),
                        "icon":_loc6_,
                        "sort1":_loc5_.tid,
                        "sort2":_loc5_.growRate,
                        "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc5_.growRate)],
                        "petData":_loc5_
                     });
               }
            }
         }
         var _loc3_:Sort = new Sort();
         if(paixucb.selected)
         {
            _loc3_.fields = [new SortField("sort2",true,true,true),new SortField("sort1",true,true,true)];
         }
         else
         {
            _loc3_.fields = [new SortField("sort1",true,true,true),new SortField("sort2",true,true,true)];
         }
         if(xibieshai.selectedIndex == 0)
         {
            petAC.sort = _loc3_;
            petAC.refresh();
            initPageSelector(petAC);
         }
         else
         {
            this["petAC" + xibieshai.selectedIndex].sort = _loc3_;
            this["petAC" + xibieshai.selectedIndex].refresh();
            initPageSelector(this["petAC" + xibieshai.selectedIndex]);
         }
         if(xibieshai.selectedIndex == 0)
         {
            petNum.text = _loc2_.toString() + "/" + _core.player.petMaxNum;
         }
         else
         {
            petNum.text = this["petAC" + xibieshai.selectedIndex].length.toString() + "/" + _core.player.petMaxNum;
         }
         propertyBarHp.frontColor = GamePredef.PROPERTY_COLOR_HP;
         propertyBarMp.frontColor = GamePredef.PROPERTY_COLOR_MP;
         if(xibieshai.selectedIndex == 0)
         {
            if(petAC.length > 0)
            {
               if(param1 == -1)
               {
                  _loc8_ = 0;
                  while(_loc8_ <= petAC.length)
                  {
                     petDataList.selectedIndex = _loc8_;
                     if(_loc8_ >= PAGE_MAX_PET_NUM)
                     {
                        pageSelector.pageNo = _loc8_ / PAGE_MAX_PET_NUM;
                        petDataList.selectedIndex = _loc8_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                     }
                     else
                     {
                        pageSelector.pageNo = 0;
                        petDataList.selectedIndex = _loc8_;
                     }
                     if(petDataList.selectedItem.petData.state == 1)
                     {
                        _core.view.getUI(ViewManager.MAIN_PET).showPet(petDataList.selectedItem.petData);
                        break;
                     }
                     _loc8_++;
                  }
               }
               else if(param1 > 0)
               {
                  _loc9_ = 0;
                  while(_loc9_ <= petAC.length)
                  {
                     if(_loc9_ >= PAGE_MAX_PET_NUM)
                     {
                        pageSelector.pageNo = _loc9_ / PAGE_MAX_PET_NUM;
                        petDataList.selectedIndex = _loc9_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                     }
                     else
                     {
                        pageSelector.pageNo = 0;
                        petDataList.selectedIndex = _loc9_;
                     }
                     if(petDataList.selectedItem.petData.id == param1)
                     {
                        break;
                     }
                     _loc9_++;
                  }
               }
            }
         }
         else if(this["petAC" + xibieshai.selectedIndex].length > 0)
         {
            if(param1 == -1)
            {
               _loc8_ = 0;
               while(_loc8_ <= this["petAC" + xibieshai.selectedIndex].length)
               {
                  petDataList.selectedIndex = _loc8_;
                  if(_loc8_ >= PAGE_MAX_PET_NUM)
                  {
                     pageSelector.pageNo = _loc8_ / PAGE_MAX_PET_NUM;
                     petDataList.selectedIndex = _loc8_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                  }
                  else
                  {
                     pageSelector.pageNo = 0;
                     petDataList.selectedIndex = _loc8_;
                  }
                  if(petDataList.selectedItem.petData.state == 1)
                  {
                     _core.view.getUI(ViewManager.MAIN_PET).showPet(petDataList.selectedItem.petData);
                     break;
                  }
                  _loc8_++;
               }
            }
            else if(param1 > 0)
            {
               _loc9_ = 0;
               while(_loc9_ <= this["petAC" + xibieshai.selectedIndex].length)
               {
                  if(_loc9_ >= PAGE_MAX_PET_NUM)
                  {
                     pageSelector.pageNo = _loc9_ / PAGE_MAX_PET_NUM;
                     petDataList.selectedIndex = _loc9_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                  }
                  else
                  {
                     pageSelector.pageNo = 0;
                     petDataList.selectedIndex = _loc9_;
                  }
                  if(petDataList.selectedItem.petData.id == param1)
                  {
                     break;
                  }
                  _loc9_++;
               }
            }
         }
         showMainPetCanvas();
         petDataListClick();
         var _loc4_:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         if(_loc4_)
         {
            _loc4_.initView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attLastPoint() : BoxLabel
      {
         return this._30739193attLastPoint;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalCriticalDamage() : TextInput
      {
         return this._1040925444finalCriticalDamage;
      }
      
      public function set aptIntelligence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._702954884aptIntelligence;
         if(_loc2_ !== param1)
         {
            this._702954884aptIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptIntelligence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addEnergyButton() : Button
      {
         return this._708846363addEnergyButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiCritical() : TextInput
      {
         return this._1283394786finalResiCritical;
      }
      
      public function set aptStrength(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._395626106aptStrength;
         if(_loc2_ !== param1)
         {
            this._395626106aptStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStrength",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get classImg() : Image
      {
         return this._692413227classImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgilityEx() : RoundedLabel
      {
         return this._1588184269aptAgilityEx;
      }
      
      private function initPetEquListen() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= GamePredef.PETEQU_NUM)
         {
            this["petEqu" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,doubleClickHandler);
            _loc1_++;
         }
      }
      
      public function set petLevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._464115109petLevel;
         if(_loc2_ !== param1)
         {
            this._464115109petLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petLevel",_loc2_,param1));
         }
      }
      
      public function set petDataList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._579057063petDataList;
         if(_loc2_ !== param1)
         {
            this._579057063petDataList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petDataList",_loc2_,param1));
         }
      }
      
      public function enableUI() : void
      {
         this.btn2.enabled = true;
         this.btn4.enabled = true;
         this._btnEnabled = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStaminaButton() : Button
      {
         return this._14326624addStaminaButton;
      }
      
      public function onPetEquipOn(param1:Number, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:ItemSlot = null;
         var _loc7_:* = undefined;
         if(param3 > 0)
         {
            _loc5_ = _core.data.getSlot({"id":param3});
            if((Boolean(_loc5_)) && Boolean(_loc5_.type == GamePredef.TBL_EQUIPT_INSTANCE) && _loc5_.stackNum == 0)
            {
               _loc5_.stackNum = 1;
               _loc6_ = _core.view.getUI(ViewManager.PANEL_BAG).getBagSlot(_loc5_.sid);
               if(_loc6_)
               {
                  _loc6_.stackNum = 1;
                  _loc6_.enabled = true;
                  _loc6_.acceptable = true;
               }
            }
         }
         _loc5_ = _core.data.getSlot({"id":param4});
         if((Boolean(_loc5_)) && Boolean(_loc5_.type == GamePredef.TBL_EQUIPT_INSTANCE) && _loc5_.stackNum == 1)
         {
            this["petEqu" + param2].type = _loc5_.type;
            this["petEqu" + param2].giid = _loc5_.itemId;
            _core.data.updateSlot(_loc5_);
            _loc7_ = _core.view.getSlot(_loc5_.sid);
            _loc7_ && _loc7_.clean();
         }
      }
      
      private function onSetSpeText(param1:Object) : void
      {
         var _loc2_:String = param1["key"];
         var _loc3_:String = Number(param1["value"]).toFixed(2);
         (this[_loc2_] as TextInput).text = _loc3_ + "%";
      }
      
      public function set finalCombo(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1887307336finalCombo;
         if(_loc2_ !== param1)
         {
            this._1887307336finalCombo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalCombo",_loc2_,param1));
         }
      }
      
      public function disableUI() : void
      {
         this.btn2.enabled = false;
         this.btn4.enabled = false;
         this._btnEnabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyCanvas() : Canvas
      {
         return this._1940048781propertyCanvas;
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
         var target:PetManagerPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetManagerPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetManagerPanelWatcherSetupUtil");
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
      public function get growRate() : BoxLabel
      {
         return this._507317139growRate;
      }
      
      public function set petEqu4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962294petEqu4;
         if(_loc2_ !== param1)
         {
            this._677962294petEqu4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu4",_loc2_,param1));
         }
      }
      
      public function set petEqu1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962297petEqu1;
         if(_loc2_ !== param1)
         {
            this._677962297petEqu1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu1",_loc2_,param1));
         }
      }
      
      public function set petEqu5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962293petEqu5;
         if(_loc2_ !== param1)
         {
            this._677962293petEqu5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu5",_loc2_,param1));
         }
      }
      
      private function switchFollowButton(param1:Boolean) : void
      {
         showPetFollowBtn.selected = param1;
         if(!showPetFollowBtn.selected)
         {
            showPetFollowBtn.label = Language.PETMANAGERPANEL_S[23];
         }
         else
         {
            showPetFollowBtn.label = Language.PETMANAGERPANEL_S[25];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hit() : BoxLabel
      {
         return this._103315hit;
      }
      
      public function set petEqu8(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962290petEqu8;
         if(_loc2_ !== param1)
         {
            this._677962290petEqu8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu8",_loc2_,param1));
         }
      }
      
      private function updatePetAutoBattleSet(param1:Object = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         _core.clearPetBattleSetting();
         if(!param1)
         {
            param1 = _core.battlePet;
         }
         if(!param1 || !param1.pi)
         {
            return;
         }
         var _loc2_:Object = param1.pi;
         for(_loc3_ in _loc2_)
         {
            GamePredef.GLOBAL_SETTING[_loc3_] = _loc2_[_loc3_];
         }
         _loc4_ = _core.view.getUI(ViewManager.PANEL_BATTLESET);
         if(_loc4_.initialized)
         {
            _loc4_.updatePetSetting();
         }
      }
      
      public function set petEqu6(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962292petEqu6;
         if(_loc2_ !== param1)
         {
            this._677962292petEqu6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu6",_loc2_,param1));
         }
      }
      
      public function set petEqu7(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962291petEqu7;
         if(_loc2_ !== param1)
         {
            this._677962291petEqu7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalCounter() : TextInput
      {
         return this._1218397274finalCounter;
      }
      
      public function set AddMultipleCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1582407209AddMultipleCheck;
         if(_loc2_ !== param1)
         {
            this._1582407209AddMultipleCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AddMultipleCheck",_loc2_,param1));
         }
      }
      
      public function set addStrengthButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._426146348addStrengthButton;
         if(_loc2_ !== param1)
         {
            this._426146348addStrengthButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStrengthButton",_loc2_,param1));
         }
      }
      
      public function set starHbox(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1315489237starHbox;
         if(_loc2_ !== param1)
         {
            this._1315489237starHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starHbox",_loc2_,param1));
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
      
      public function set finalEnhMagicHurt(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1167965741finalEnhMagicHurt;
         if(_loc2_ !== param1)
         {
            this._1167965741finalEnhMagicHurt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalEnhMagicHurt",_loc2_,param1));
         }
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
      public function get finalResiSleep() : TextInput
      {
         return this._1892385864finalResiSleep;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStrengthFinal() : RoundedLabel
      {
         return this._815424624aptStrengthFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyBarHp() : PropertyBar
      {
         return this._1046717530propertyBarHp;
      }
      
      public function set petEqu3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962295petEqu3;
         if(_loc2_ !== param1)
         {
            this._677962295petEqu3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu3",_loc2_,param1));
         }
      }
      
      private function showSelPet() : void
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         if(selPetData)
         {
            selPetDataTemp = selPetData.creatureData;
            if(!selPetDataTemp)
            {
               return;
            }
            _loc2_ = ResManager.getResUrl(selPetDataTemp.resCode);
            if(showCanvas.url != _loc2_)
            {
               showCanvas.url = _loc2_;
            }
            showCanvas.color = selPetData.colorCode ? Number(selPetData.colorCode) : Number(selPetDataTemp.colorCode);
            selPetData.property.finalHp = int(selPetData.property.finalHp);
            selPetData.currentHp = int(selPetData.currentHp);
            selPetData.property.finalMp = int(selPetData.property.finalMp);
            selPetData.currentMp = int(selPetData.currentMp);
            selPetData.property.finalSp = int(selPetData.property.finalSp);
            propertyBarHp.valueMax = selPetData.property.finalHp;
            propertyBarHp.value = selPetData.currentHp;
            propertyBarMp.valueMax = selPetData.property.finalMp;
            propertyBarMp.value = selPetData.currentMp;
            propertyCanvas.toolTip = "HP:" + propertyBarHp.value + "/" + propertyBarHp.valueMax + "\nMP:" + propertyBarMp.value + "/" + propertyBarMp.valueMax;
            classImg.source = ResManager.CREATURE_CLASS[selPetDataTemp.classId];
            classImg.toolTip = GamePredef.CREATURE_QLEVEL[selPetDataTemp.qLevel] + GamePredef.CREATURE_CLASS_INFO[selPetDataTemp.classId];
            elementImg.source = ResManager.ELEMENT_KIND[selPetData.element];
            elementImg.toolTip = GamePredef.ELEMENT_INFO[selPetData.element];
            if(ToolKit.isEqual(selPetData.binded,1))
            {
               bindImg.source = ResManager.ICON_BIND_YES;
               bindImg.toolTip = Language.PETMANAGERPANEL_S[11];
            }
            else
            {
               bindImg.source = ResManager.ICON_BIND_NO;
               bindImg.toolTip = Language.PETMANAGERPANEL_S[12];
            }
            selPetData.level = PetLogic.expToLv(selPetData.exp);
            petHp.text = selPetData.currentHp + "/" + selPetData.property.finalHp;
            petMp.text = selPetData.currentMp + "/" + selPetData.property.finalMp;
            petExp.text = (Number(selPetData.exp) - PetLogic.lvToExp(selPetData.level)).toString() + "/" + PetLogic.lvUpExp(selPetData.level).toString();
            petLevel.text = Language.PETMANAGERPANEL_S[13] + selPetData.level.toString();
            petClose.text = selPetData.close;
            petLife.text = selPetData.life;
            attack.text = int(selPetData.property.finalAttack).toString();
            mAttack.text = int(selPetData.property.finalMAttack).toString();
            defence.text = int(selPetData.property.finalDefence).toString();
            mDefence.text = int(selPetData.property.finalMDefence).toString();
            hit.text = int(selPetData.property.finalHit).toString();
            critical.text = int(selPetData.property.finalCritical).toString();
            dodge.text = int(selPetData.property.finalDodge).toString();
            speed.text = int(selPetData.property.finalSpeed).toString();
            attStrength.text = int(selPetData.property.finalStrength).toString();
            attAgility.text = int(selPetData.property.finalAgility).toString();
            attStamina.text = int(selPetData.property.finalStamina).toString();
            attIntelligence.text = int(selPetData.property.finalIntelligence).toString();
            attEnergy.text = int(selPetData.property.finalEnergy).toString();
            attLastPoint.text = int(selPetData.property.lastPoint).toString();
            _loc1_ = selPetData.property;
            addStrength.text = "";
            addAgility.text = "";
            addStamina.text = "";
            addIntelligence.text = "";
            addEnergy.text = "";
            if(Number(_loc1_.lastPoint) > 0)
            {
               addBtnCanvas.enabled = true;
            }
            else
            {
               addBtnCanvas.enabled = false;
            }
         }
      }
      
      public function set finalRage(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._355194339finalRage;
         if(_loc2_ !== param1)
         {
            this._355194339finalRage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalRage",_loc2_,param1));
         }
      }
      
      public function set petEqu2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962296petEqu2;
         if(_loc2_ !== param1)
         {
            this._677962296petEqu2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu2",_loc2_,param1));
         }
      }
      
      public function onDelPet(param1:Number) : void
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         if(_core.player.petList)
         {
            if(_core.player.petList[param1])
            {
               _loc2_ = Language.PETMANAGERPANEL_S[15];
               _loc2_ = _loc2_.replace("{color}",GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(_core.player.petList[param1].growRate)]);
               _loc2_ = _loc2_.replace("{petName}",_core.player.petList[param1].petName);
               _core.sysBlueMsg(_loc2_);
            }
            delete _core.player.petList[param1];
            updateView();
            _core.view.getUI(ViewManager.PANEL_BAG).petInit();
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
            if(_loc3_)
            {
               _loc3_.updatePetList();
            }
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         var _loc1_:Rectangle = new Rectangle(0,0,135,173);
         tarcanvas.scrollRect = _loc1_;
         _core.remote.call("initViewPetMngP",new Responder(onInitViewPetMngP));
      }
      
      public function set petNum(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._991692313petNum;
         if(_loc2_ !== param1)
         {
            this._991692313petNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petNum",_loc2_,param1));
         }
      }
      
      public function __addIntelligenceButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function __openBtn1_click(param1:MouseEvent) : void
      {
         openSkill(1);
      }
      
      public function __delBtn2_click(param1:MouseEvent) : void
      {
         delSkill(2);
      }
      
      public function set finalResiLight(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1898937865finalResiLight;
         if(_loc2_ !== param1)
         {
            this._1898937865finalResiLight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiLight",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minusStaminaButton() : Button
      {
         return this._1889342449minusStaminaButton;
      }
      
      private function changeNameClick() : void
      {
         if(Boolean(petDataList) && Boolean(petDataList.selectedItem))
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PETMANAGERPANEL_S[0],Language.PETMANAGERPANEL_S[1],changePetName,petDataList.selectedItem.text,12);
         }
      }
      
      public function __skill3_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function set finalPraDef(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1997577724finalPraDef;
         if(_loc2_ !== param1)
         {
            this._1997577724finalPraDef = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalPraDef",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addStrength() : BoxLabel
      {
         return this._817036290addStrength;
      }
      
      public function set attStrength(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1181680126attStrength;
         if(_loc2_ !== param1)
         {
            this._1181680126attStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attStrength",_loc2_,param1));
         }
      }
      
      public function set addIntelligence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1420795392addIntelligence;
         if(_loc2_ !== param1)
         {
            this._1420795392addIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addIntelligence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stateBtn() : BasicDelayButton
      {
         return this._1318169611stateBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get attIntelligence() : BoxLabel
      {
         return this._1319279616attIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalPoison() : TextInput
      {
         return this._1995090974finalPoison;
      }
      
      public function __petFuncBtn5_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(6);
      }
      
      public function ___PetManagerPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         openGuardPanel();
      }
      
      public function __stateBtn_click(param1:MouseEvent) : void
      {
         changePetState();
         nextGuide();
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyBarMp() : PropertyBar
      {
         return this._1046717375propertyBarMp;
      }
      
      [Bindable(event="propertyChange")]
      public function get defence() : BoxLabel
      {
         return this._1544916048defence;
      }
      
      public function set showPetFollowBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._534396457showPetFollowBtn;
         if(_loc2_ !== param1)
         {
            this._534396457showPetFollowBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPetFollowBtn",_loc2_,param1));
         }
      }
      
      public function __skill1_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get minusEnergyButton() : Button
      {
         return this._1863068566minusEnergyButton;
      }
      
      private function classTypeSelect() : void
      {
         updateView();
      }
      
      private function upSkill(param1:int) : void
      {
         var skillData:Object = null;
         var func:Function = null;
         var func2:Function = null;
         var index:int = param1;
         index = selectedTabIndex * 5 + index;
         var str:String = "";
         if(Boolean(petData) && ToolKit.isBigThan(petData["skill" + index],0))
         {
            skillData = _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + index]);
            if(skillData)
            {
               if(ToolKit.isBigOrEqual(skillData.level,3))
               {
                  _core.sysMsg(Language.PETPANEL_S[3]);
               }
               else if(ToolKit.isEqual(skillData.level,1))
               {
                  if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel],1))
                  {
                     func = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.petUpSkill(petData.id,index);
                        }
                     };
                     str = Language.PETPANEL_S[4];
                     str = str.replace("{skillData.name}",skillData.name);
                     Alert.show(str,"",3,this,func);
                  }
                  else
                  {
                     str = Language.PETPANEL_S[5];
                     str = str.replace("{petSkillUpItem}",TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel]));
                     _core.sysMsg(str);
                  }
               }
               else if(ToolKit.isEqual(skillData.level,2))
               {
                  if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel],3))
                  {
                     func2 = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.petUpSkill(petData.id,index);
                        }
                     };
                     str = Language.PETPANEL_S[6];
                     str = str.replace("{skillData.name}",skillData.name);
                     Alert.show(str,"",3,this,func2);
                  }
                  else
                  {
                     str = Language.PETPANEL_S[7];
                     str = str.replace("{petSkillUpItem}",TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel]));
                     _core.sysMsg(str);
                  }
               }
            }
         }
      }
      
      public function onUpdatePet(param1:Number, param2:String, param3:String) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = undefined;
         var _loc9_:Object = null;
         var _loc4_:String = "";
         if(Boolean(_core.player) && Boolean(_core.player.petList) && Boolean(_core.player.petList[param1]))
         {
            if(param2 == "exp")
            {
               _loc5_ = Number(param3) - _core.player.petList[param1].exp;
               if(_loc5_ > 0)
               {
                  _loc4_ = Language.PETMANAGERPANEL_S[6];
                  _loc4_ = _loc4_.replace("{petName}",_core.player.petList[param1].petName);
                  _loc4_ = _loc4_.replace("{exp}",Number(param3) - _core.player.petList[param1].exp);
                  _core.sysBlueMsg(_loc4_);
               }
               _loc6_ = PetLogic.expToLv(Number(param3));
               _loc7_ = PetLogic.expToLv(_core.player.petList[param1].exp);
               if(_loc7_ < _loc6_)
               {
                  _loc4_ = Language.PETMANAGERPANEL_S[8];
                  _loc4_ = _loc4_.replace("{petName}",_core.player.petList[param1].petName);
                  _loc4_ = _loc4_.replace("{newLv}",_loc6_);
                  _core.sysBlueMsg(_loc4_);
               }
            }
            _core.player.petList[param1][param2] = param3;
            updateView(param1);
            if(param2 == "state" && ToolKit.isEqual(param3,1))
            {
               updatePetAutoBattleSet();
            }
            if(param2 == "state" && (ToolKit.isEqual(param3,1) || ToolKit.isEqual(param3,3)))
            {
               _loc8_ = _core.view.getUI(ViewManager.PANEL_FINDBACK);
               if(_loc8_.visible)
               {
                  _loc8_.resetPetMoney();
               }
            }
            if(_core.player.petList[param1]["state"] == 1 && _core.player.state == GamePredef.ST_BATTLE)
            {
               if(param2 == "currentMp")
               {
                  _core.battlePet = _core.player.petList[param1];
                  _core.battlePet.skillAddMp = true;
               }
            }
            if(param2 == "state" || param2 == "petName")
            {
               _loc9_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
               if(_loc9_)
               {
                  _loc9_.updatePetList();
               }
            }
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get attEnergy() : BoxLabel
      {
         return this._1270522743attEnergy;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStamina() : BoxLabel
      {
         return this._1911434378aptStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get pettabBtn1() : BasicGlowButton
      {
         return this._344411275pettabBtn1;
      }
      
      public function set finalResiPoison(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1382596167finalResiPoison;
         if(_loc2_ !== param1)
         {
            this._1382596167finalResiPoison = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiPoison",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pettabBtn0() : BasicGlowButton
      {
         return this._344411274pettabBtn0;
      }
      
      public function set finalResiRage(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._908746316finalResiRage;
         if(_loc2_ !== param1)
         {
            this._908746316finalResiRage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiRage",_loc2_,param1));
         }
      }
      
      public function set bindImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108251578bindImg;
         if(_loc2_ !== param1)
         {
            this._108251578bindImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindImg",_loc2_,param1));
         }
      }
      
      public function set attack(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1407259064attack;
         if(_loc2_ !== param1)
         {
            this._1407259064attack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attack",_loc2_,param1));
         }
      }
      
      private function _changePetState(param1:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc2_:String = "";
         if(param1 == 1)
         {
            if(PetLogic.expToLv(petDataList.selectedItem.petData.exp) - 5 > _core.player.level)
            {
               Alert.show(Language.PETMANAGERPANEL_S[2],"",Alert.OK);
               return;
            }
            _loc3_ = _core.data.gameData[GamePredef.TBL_CREATURE][petDataList.selectedItem.petData.tid];
            if(!_loc3_ || _loc3_.useLv > _core.player.level)
            {
               _loc2_ = Language.PETMANAGERPANEL_S[3];
               _loc2_ = _loc2_.replace("{useLv}",_loc3_.useLv);
               Alert.show(_loc2_,"",Alert.OK);
               return;
            }
            if(petDataList.selectedItem.petData.binded == 0)
            {
               Alert.show(Language.PETMANAGERPANEL_S[5],"",3,this,stateHandler);
               return;
            }
            for each(_loc4_ in _core.player.petList)
            {
               if(_loc4_.state == 1)
               {
                  _core.remote.changePetState(_loc4_.id,3);
               }
            }
         }
         else if(param1 == 2)
         {
            for each(_loc5_ in _core.player.petList)
            {
               if(_loc5_.state == 2)
               {
                  _core.remote.changePetState(_loc5_.id,3);
               }
            }
         }
         _core.remote.changePetState(petDataList.selectedItem.petData.id,param1);
      }
      
      public function set aptIntelligenceFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._314795602aptIntelligenceFinal;
         if(_loc2_ !== param1)
         {
            this._314795602aptIntelligenceFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptIntelligenceFinal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _PetManagerPanel_HBox1() : HBox
      {
         return this._1064350886_PetManagerPanel_HBox1;
      }
      
      public function set star(param1:Repeater) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3540562star;
         if(_loc2_ !== param1)
         {
            this._3540562star = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",_loc2_,param1));
         }
      }
      
      public function changeSelectPet(param1:Object) : void
      {
         this.petData = param1;
      }
      
      public function __pettabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get paixucb() : CheckBox
      {
         return this._801114956paixucb;
      }
      
      public function __upBtn4_click(param1:MouseEvent) : void
      {
         upSkill(4);
      }
      
      private function initPageSelector(param1:*) : void
      {
         var _loc2_:int = 0;
         pageAC = param1;
         pageSelector.lastBtnLabel = Language.PAGE_SELECTOR[2];
         pageSelector.nextBtnLabel = Language.PAGE_SELECTOR[3];
         pageSelector.btnLastPage.width = 32;
         pageSelector.btnNextPage.width = 32;
         if(pageAC.length >= PAGE_MAX_PET_NUM)
         {
            _loc2_ = PAGE_MAX_PET_NUM;
         }
         else
         {
            _loc2_ = pageAC.length;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            petPageAc.addItem(pageAC.getItemAt(_loc3_));
            _loc3_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(pageAC.length,PAGE_MAX_PET_NUM);
      }
      
      public function set aptAgility(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1543550368aptAgility;
         if(_loc2_ !== param1)
         {
            this._1543550368aptAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgility",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petLife() : BoxLabel
      {
         return this._677761861petLife;
      }
      
      public function set attAgility(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._183433628attAgility;
         if(_loc2_ !== param1)
         {
            this._183433628attAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attAgility",_loc2_,param1));
         }
      }
      
      public function set propertyPentagon(param1:PentagonCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._805962357propertyPentagon;
         if(_loc2_ !== param1)
         {
            this._805962357propertyPentagon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyPentagon",_loc2_,param1));
         }
      }
      
      private function skillLevelClicked(param1:GameDataEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc2_:Core = Core.getInstance();
         if(_loc2_.state == GamePredef.ST_CORE_BATTLE && _loc2_.cmdState == GamePredef.ST_BATTLE_SKILL)
         {
            _loc3_ = int(param1.data.level);
            _loc4_ = param1.data.skill;
            if(_loc2_.checkSkillRequire(_loc4_,true,true))
            {
               _loc2_.skill = _loc4_;
               _loc2_.skillLevel = _loc3_;
               if(!ToolKit.isEqual(_loc4_.targetType,Battle.SKILL_TARGET_TYPE_SELF_PLAYER) && !ToolKit.isEqual(_loc4_.targetType,Battle.SKILL_TARGET_TYPE_SELF_PET))
               {
                  _loc2_.view.showSelect();
               }
               visible = false;
            }
         }
         else
         {
            drag(param1.data.slot,param1.data.event,param1.data.level);
         }
      }
      
      private function addEL(param1:Event) : void
      {
         var _loc2_:SkillUseSlot = SkillUseSlot(param1.currentTarget);
         _loc2_.addEventListener(GameDataEvent.SKILL_LEVEL_CLICKED,skillLevelClicked);
      }
      
      public function set finalBreakReborn(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._467845765finalBreakReborn;
         if(_loc2_ !== param1)
         {
            this._467845765finalBreakReborn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalBreakReborn",_loc2_,param1));
         }
      }
      
      private function delSkill(param1:int) : void
      {
         var skillData:Object = null;
         var _delSkill:Function = null;
         var func:Function = null;
         var index:int = param1;
         index = selectedTabIndex * 5 + index;
         if(Boolean(petData) && ToolKit.isBigThan(petData["skill" + index],0))
         {
            if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_DEL,1))
            {
               skillData = _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + index]);
               if(skillData)
               {
                  _delSkill = function(param1:String):void
                  {
                     var _loc2_:String = null;
                     if(param1)
                     {
                        _loc2_ = MD5.hash(param1);
                        _core.remote.petDelSkill(petData.id,index,_loc2_);
                     }
                  };
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        if(_core.delPass)
                        {
                           _core.remote.petDelSkill(petData.id,index,_core.delPass);
                        }
                        else
                        {
                           _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.PETPANEL_U[23],_delSkill);
                        }
                     }
                  };
                  Alert.show(Language.PETPANEL_S[1] + skillData.name + "?","",3,this,func);
               }
            }
            else
            {
               _core.sysMsg(Language.PETPANEL_S[2] + TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_DEL) + "x1!");
            }
         }
      }
      
      public function set petHp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106557063petHp;
         if(_loc2_ !== param1)
         {
            this._106557063petHp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petHp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get petPageAc() : ArrayCollection
      {
         return this._1613040912petPageAc;
      }
      
      public function set addEnergy(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._405874039addEnergy;
         if(_loc2_ !== param1)
         {
            this._405874039addEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addEnergy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mAttack() : BoxLabel
      {
         return this._74771179mAttack;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalRebornRate() : TextInput
      {
         return this._473555694finalRebornRate;
      }
      
      public function set tabBtn1(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set tabBtn0(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set upBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841135upBtn2;
         if(_loc2_ !== param1)
         {
            this._839841135upBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn2",_loc2_,param1));
         }
      }
      
      public function set upBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841134upBtn3;
         if(_loc2_ !== param1)
         {
            this._839841134upBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dp1() : Canvas
      {
         return this._99621dp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get dp2() : Canvas
      {
         return this._99622dp2;
      }
      
      public function set upBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841136upBtn1;
         if(_loc2_ !== param1)
         {
            this._839841136upBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn1",_loc2_,param1));
         }
      }
      
      public function set upBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841132upBtn5;
         if(_loc2_ !== param1)
         {
            this._839841132upBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn5",_loc2_,param1));
         }
      }
      
      public function set addStamina(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10889870addStamina;
         if(_loc2_ !== param1)
         {
            this._10889870addStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStamina",_loc2_,param1));
         }
      }
      
      public function set upBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841133upBtn4;
         if(_loc2_ !== param1)
         {
            this._839841133upBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn4",_loc2_,param1));
         }
      }
      
      private function drag(param1:SkillUseSlot, param2:MouseEvent, param3:int = 0) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:* = undefined;
         var _loc4_:Image = Image(param1.skillSlot.itemIcon);
         var _loc5_:DragSource = new DragSource();
         _loc5_.addData(_loc4_,"image");
         if(param1.skillSlot.type == GamePredef.TBL_SKILL)
         {
            if(param2.target is Button)
            {
               _loc8_ = Number(Button(param2.target).id.substr(3,Button(param2.target).id.length));
               if(_loc8_ > 0 && _loc8_ < 10)
               {
                  _loc9_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_core.data.gameData[GamePredef.TBL_SKILL][param1.skillSlot.slotData.id].codeName];
                  for each(_loc10_ in _loc9_)
                  {
                     if(_loc10_.level == _loc8_)
                     {
                        param1.skillSlot.giid = _loc10_.id;
                        break;
                     }
                  }
               }
            }
         }
         _loc5_.addData(param1.skillSlot,"slot");
         _loc5_.addData(param3,"level");
         var _loc6_:Image = new Image();
         _loc6_.source = _loc4_.source;
         _loc6_.height = _loc4_.height;
         _loc6_.width = _loc4_.width;
         _loc6_.x = _loc4_.x;
         _loc6_.y = _loc4_.y;
         var _loc7_:int = 0;
         if(param3 > 0)
         {
            _loc7_ = -78 - param3 * 16;
         }
         DragManager.doDrag(_loc4_,_loc5_,param2,_loc6_,_loc7_,0,0.5);
      }
      
      public function __minusStrengthButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set tabBtn2(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tarcanvas() : SimpleCanvas
      {
         return this._933944003tarcanvas;
      }
      
      public function set aptEnergyEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._415587680aptEnergyEx;
         if(_loc2_ !== param1)
         {
            this._415587680aptEnergyEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptEnergyEx",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         var _loc2_:PetCmdCanvas = null;
         super.hide();
         var _loc1_:Core = Core.getInstance();
         if(_loc1_.state == GamePredef.ST_CORE_BATTLE)
         {
            _loc2_ = PetCmdCanvas(_loc1_.view.getUI(ViewManager.MAIN_BATTLE_PET));
            _loc2_.doCmd("btnAttack");
         }
      }
      
      public function reset() : void
      {
         var _loc1_:Object = null;
         firstTimeFlag = true;
         for each(_loc1_ in this)
         {
            if(_loc1_ is BoxLabel)
            {
               _loc1_.text = "";
            }
         }
      }
      
      public function __addStaminaButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : BasicGlowButton
      {
         return this._3034454btn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptIntelligenceEx() : RoundedLabel
      {
         return this._1229780311aptIntelligenceEx;
      }
      
      [Bindable(event="propertyChange")]
      public function get addIntelligenceButton() : Button
      {
         return this._1991903918addIntelligenceButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : BasicGlowButton
      {
         return this._3034456btn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalLight() : TextInput
      {
         return this._1879179968finalLight;
      }
      
      public function set showCanvas(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._307382965showCanvas;
         if(_loc2_ !== param1)
         {
            this._307382965showCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas",_loc2_,param1));
         }
      }
      
      private function buttonClick(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         switch(param1.currentTarget.id)
         {
            case "addStrengthButton":
               if(Number(attLastPoint.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < Multiple)
               {
                  tempMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc2_ = Number(addStrength.text);
               _loc2_ += tempMultiple;
               addStrength.text = _loc2_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempMultiple;
               attLastPoint.text = _loc7_.toString();
               minusStrengthButton.styleName = "BtnReduce";
               break;
            case "addAgilityButton":
               if(Number(attLastPoint.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < Multiple)
               {
                  tempMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc3_ = Number(addAgility.text);
               _loc3_ += tempMultiple;
               addAgility.text = _loc3_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempMultiple;
               attLastPoint.text = _loc7_.toString();
               minusAgilityButton.styleName = "BtnReduce";
               break;
            case "addStaminaButton":
               if(Number(attLastPoint.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < Multiple)
               {
                  tempMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc4_ = Number(addStamina.text);
               _loc4_ = _loc4_ + tempMultiple;
               addStamina.text = _loc4_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempMultiple;
               attLastPoint.text = _loc7_.toString();
               minusStaminaButton.styleName = "BtnReduce";
               break;
            case "addIntelligenceButton":
               if(Number(attLastPoint.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < Multiple)
               {
                  tempMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc5_ = Number(addIntelligence.text);
               _loc5_ = _loc5_ + tempMultiple;
               addIntelligence.text = _loc5_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempMultiple;
               attLastPoint.text = _loc7_.toString();
               minusIntelligenceButton.styleName = "BtnReduce";
               break;
            case "addEnergyButton":
               if(Number(attLastPoint.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < Multiple)
               {
                  tempMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc6_ = Number(addEnergy.text);
               _loc6_ = _loc6_ + tempMultiple;
               addEnergy.text = _loc6_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempMultiple;
               attLastPoint.text = _loc7_.toString();
               minusEnergyButton.styleName = "BtnReduce";
               break;
            case "minusStrengthButton":
               if(Number(addStrength.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(addStrength.text) && Number(addStrength.text) < Multiple)
               {
                  tempMultiple = Number(addStrength.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc2_ = Number(addStrength.text);
               _loc2_ -= tempMultiple;
               addStrength.text = _loc2_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc2_ < tempMultiple)
               {
                  minusStrengthButton.styleName = "BtnReduce2";
               }
               break;
            case "minusAgilityButton":
               if(Number(addAgility.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(addAgility.text) && Number(addAgility.text) < Multiple)
               {
                  tempMultiple = Number(addAgility.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc3_ = Number(addAgility.text);
               _loc3_ -= tempMultiple;
               addAgility.text = _loc3_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc3_ < tempMultiple)
               {
                  minusAgilityButton.styleName = "BtnReduce2";
               }
               break;
            case "minusStaminaButton":
               if(Number(addStamina.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(addStamina.text) && Number(addStamina.text) < Multiple)
               {
                  tempMultiple = Number(addStamina.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc4_ = Number(addStamina.text);
               _loc4_ = _loc4_ - tempMultiple;
               addStamina.text = _loc4_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc4_ < tempMultiple)
               {
                  minusStaminaButton.styleName = "BtnReduce2";
               }
               break;
            case "minusIntelligenceButton":
               if(Number(addIntelligence.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(addIntelligence.text) && Number(addIntelligence.text) < Multiple)
               {
                  tempMultiple = Number(addIntelligence.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc5_ = Number(addIntelligence.text);
               _loc5_ = _loc5_ - tempMultiple;
               addIntelligence.text = _loc5_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc5_ < tempMultiple)
               {
                  minusIntelligenceButton.styleName = "BtnReduce2";
               }
               break;
            case "minusEnergyButton":
               if(Number(addEnergy.text) >= Multiple)
               {
                  tempMultiple = Multiple;
               }
               else if(0 < Number(addEnergy.text) && Number(addEnergy.text) < Multiple)
               {
                  tempMultiple = Number(addEnergy.text);
               }
               else
               {
                  tempMultiple = 0;
               }
               _loc6_ = Number(addEnergy.text);
               _loc6_ = _loc6_ - tempMultiple;
               addEnergy.text = _loc6_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc6_ < tempMultiple)
               {
                  minusEnergyButton.styleName = "BtnReduce2";
               }
         }
         setAddStyleName();
      }
      
      private function stateHandler(param1:CloseEvent) : void
      {
         var _loc2_:Object = null;
         if(param1.detail == Alert.YES)
         {
            for each(_loc2_ in _core.player.petList)
            {
               if(_loc2_.state == 1)
               {
                  _core.remote.changePetState(_loc2_.id,3);
               }
            }
            _core.remote.changePetState(petDataList.selectedItem.petData.id,1);
         }
      }
      
      public function set finalDizzy(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1886549314finalDizzy;
         if(_loc2_ !== param1)
         {
            this._1886549314finalDizzy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalDizzy",_loc2_,param1));
         }
      }
      
      public function getSpecPetEquSuitNum(param1:int) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(petData != null)
         {
            _loc2_ = null;
            _loc3_ = GamePredef.PETEQU_NUM - 1;
            while(_loc3_ <= GamePredef.PETEQU_NUM)
            {
               _loc4_ = Number(petData["equ" + _loc3_]);
               if(_loc4_ > 0)
               {
                  _loc5_ = _core.data.getSlot({"id":_loc4_});
                  _loc6_ = _core.data.getData(_loc5_.type,_loc5_.itemId);
                  if(_loc6_)
                  {
                     _loc7_ = _core.getTemplateData(GamePredef.TBL_EQUIPT_TEMPLATE,_loc6_.tid);
                     if(_loc7_.suitId == param1)
                     {
                        if(_loc6_.color >= 2)
                        {
                           if(_loc2_ == null)
                           {
                              _loc2_ = {};
                           }
                           if(_loc2_[_loc6_.color] == null)
                           {
                              _loc2_[_loc6_.color] = 0;
                           }
                           _loc2_[_loc6_.color] += 1;
                        }
                     }
                  }
               }
               _loc3_++;
            }
            return _loc2_;
         }
         return null;
      }
      
      public function set openBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171261openBtn5;
         if(_loc2_ !== param1)
         {
            this._505171261openBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn5",_loc2_,param1));
         }
      }
      
      public function set openBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171264openBtn2;
         if(_loc2_ !== param1)
         {
            this._505171264openBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn2",_loc2_,param1));
         }
      }
      
      public function set openBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171263openBtn3;
         if(_loc2_ !== param1)
         {
            this._505171263openBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptIntelligence() : BoxLabel
      {
         return this._702954884aptIntelligence;
      }
      
      public function set openBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171265openBtn1;
         if(_loc2_ !== param1)
         {
            this._505171265openBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn1",_loc2_,param1));
         }
      }
      
      public function set openBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171262openBtn4;
         if(_loc2_ !== param1)
         {
            this._505171262openBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn4",_loc2_,param1));
         }
      }
      
      public function __petFuncBtn3_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(2);
      }
      
      private function changeProperty() : void
      {
         if(!selPetData)
         {
            return;
         }
         var _loc1_:Core = Core.getInstance();
         _loc1_.remote.changePetProperty(selPetData.id,{
            "addStrength":addStrength.text,
            "addAgility":addAgility.text,
            "addStamina":addStamina.text,
            "addIntelligence":addIntelligence.text,
            "addEnergy":addEnergy.text
         });
         addStrength.text = "";
         addAgility.text = "";
         addStamina.text = "";
         addIntelligence.text = "";
         addEnergy.text = "";
         setAddStyleName();
         minusStrengthButton.styleName = "BtnReduce2";
         minusAgilityButton.styleName = "BtnReduce2";
         minusStaminaButton.styleName = "BtnReduce2";
         minusIntelligenceButton.styleName = "BtnReduce2";
         minusEnergyButton.styleName = "BtnReduce2";
      }
      
      [Bindable(event="propertyChange")]
      public function get petDataList() : List
      {
         return this._579057063petDataList;
      }
      
      public function __openBtn4_click(param1:MouseEvent) : void
      {
         openSkill(4);
      }
      
      public function __delBtn5_click(param1:MouseEvent) : void
      {
         delSkill(5);
      }
      
      public function set aptStaminaEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1357563171aptStaminaEx;
         if(_loc2_ !== param1)
         {
            this._1357563171aptStaminaEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStaminaEx",_loc2_,param1));
         }
      }
      
      public function setAddStyleName() : void
      {
         if(Number(attLastPoint.text) > 0)
         {
            styleAddName = "BtnAdd";
         }
         else
         {
            styleAddName = "BtnAdd2";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu1() : ItemSlot
      {
         return this._677962297petEqu1;
      }
      
      public function __minusEnergyButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu4() : ItemSlot
      {
         return this._677962294petEqu4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu5() : ItemSlot
      {
         return this._677962293petEqu5;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu6() : ItemSlot
      {
         return this._677962292petEqu6;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu7() : ItemSlot
      {
         return this._677962291petEqu7;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu8() : ItemSlot
      {
         return this._677962290petEqu8;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu2() : ItemSlot
      {
         return this._677962296petEqu2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu3() : ItemSlot
      {
         return this._677962295petEqu3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petLevel() : RoundedLabel
      {
         return this._464115109petLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get starHbox() : HBox
      {
         return this._1315489237starHbox;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas2() : Canvas
      {
         return this._550778330canvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStrengthButton() : Button
      {
         return this._426146348addStrengthButton;
      }
      
      private function bindedPet() : void
      {
         var func:Function = null;
         var tempNameStr:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         if(petDataList.selectedItem.petData.binded == 0)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("bindedPetByPlayer",null,petDataList.selectedItem.petData.id);
               }
            };
            tempNameStr = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(petDataList.selectedItem.petData.growRate)] + "\'>" + petDataList.selectedItem.petData.petName + "</font>";
            msg = Language.PETMANAGERPANEL_S[29].toString().replace("{petName}",tempNameStr);
            _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = msg;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
      }
      
      public function set aptAgilityFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._237239562aptAgilityFinal;
         if(_loc2_ !== param1)
         {
            this._237239562aptAgilityFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgilityFinal",_loc2_,param1));
         }
      }
      
      public function set attLastPoint(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._30739193attLastPoint;
         if(_loc2_ !== param1)
         {
            this._30739193attLastPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attLastPoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas3() : Canvas
      {
         return this._550778331canvas3;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalRage() : TextInput
      {
         return this._355194339finalRage;
      }
      
      public function onPetEquipOff(param1:Number, param2:int, param3:Number) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:ItemSlot = null;
         _loc4_ = _core.data.getSlot({"id":param3});
         if((Boolean(_loc4_)) && Boolean(_loc4_.type == GamePredef.TBL_EQUIPT_INSTANCE) && _loc4_.stackNum == 0)
         {
            _loc4_.stackNum = 1;
            this["petEqu" + param2].giid = -1;
            this["petEqu" + param2].restore();
            _loc5_ = _core.view.getUI(ViewManager.PANEL_BAG).getBagSlot(_loc4_.sid);
            if(_loc5_)
            {
               _loc5_.stackNum = 1;
               _loc5_.enabled = true;
               _loc5_.acceptable = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalPraDef() : TextInput
      {
         return this._1997577724finalPraDef;
      }
      
      [Bindable(event="propertyChange")]
      public function get attStrength() : BoxLabel
      {
         return this._1181680126attStrength;
      }
      
      public function set finalCriticalDamage(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1040925444finalCriticalDamage;
         if(_loc2_ !== param1)
         {
            this._1040925444finalCriticalDamage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalCriticalDamage",_loc2_,param1));
         }
      }
      
      public function set finalSleep(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1872627967finalSleep;
         if(_loc2_ !== param1)
         {
            this._1872627967finalSleep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalSleep",_loc2_,param1));
         }
      }
      
      public function set aptStaminaFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1751782644aptStaminaFinal;
         if(_loc2_ !== param1)
         {
            this._1751782644aptStaminaFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStaminaFinal",_loc2_,param1));
         }
      }
      
      public function __skill4_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function __addStrengthButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get showPetFollowBtn() : BasicGlowButton
      {
         return this._534396457showPetFollowBtn;
      }
      
      public function __skill4_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function set addEnergyButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._708846363addEnergyButton;
         if(_loc2_ !== param1)
         {
            this._708846363addEnergyButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addEnergyButton",_loc2_,param1));
         }
      }
      
      public function __upBtn2_click(param1:MouseEvent) : void
      {
         upSkill(2);
      }
      
      public function detailUpdateView(param1:Object = null, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!initialized)
         {
            callLater(detailUpdateView,[param1]);
            return;
         }
         for(_loc3_ in PROP_INT_KEY_ARR)
         {
            _loc4_ = PROP_INT_KEY_ARR[_loc3_];
            (this[_loc4_] as TextInput).text = Number(param1[_loc4_]).toFixed(2);
         }
         for(_loc3_ in PROP_PER_KEY_ARR)
         {
            _loc4_ = PROP_PER_KEY_ARR[_loc3_];
            if(_loc4_ == "finalPraDef")
            {
               if(param2)
               {
                  _core.remote.call("getFinalPraDefPet",new Responder(onSetSpeText),_loc4_,Number(param1[_loc4_]),_core.cid);
               }
               else
               {
                  (this[_loc4_] as TextInput).text = Number(param1[_loc4_]).toFixed(2) + "%";
               }
            }
            else if(_loc4_ == "finalPraMagDef")
            {
               if(param2)
               {
                  _core.remote.call("finalPraMagDefPet",new Responder(onSetSpeText),_loc4_,Number(param1[_loc4_]),_core.cid);
               }
               else
               {
                  (this[_loc4_] as TextInput).text = Number(param1[_loc4_]).toFixed(2) + "%";
               }
            }
            else
            {
               (this[_loc4_] as TextInput).text = Number(param1[_loc4_]).toFixed(2) + "%";
            }
         }
      }
      
      public function set finalResiCritical(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1283394786finalResiCritical;
         if(_loc2_ !== param1)
         {
            this._1283394786finalResiCritical = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiCritical",_loc2_,param1));
         }
      }
      
      public function __addAgilityButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiPoison() : TextInput
      {
         return this._1382596167finalResiPoison;
      }
      
      [Bindable(event="propertyChange")]
      public function get attack() : BoxLabel
      {
         return this._1407259064attack;
      }
      
      public function set petMp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106557218petMp;
         if(_loc2_ !== param1)
         {
            this._106557218petMp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petMp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiRage() : TextInput
      {
         return this._908746316finalResiRage;
      }
      
      [Bindable(event="propertyChange")]
      public function get bindImg() : Image
      {
         return this._108251578bindImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptIntelligenceFinal() : RoundedLabel
      {
         return this._314795602aptIntelligenceFinal;
      }
      
      public function set xibieshai(param1:ComboBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._344201002xibieshai;
         if(_loc2_ !== param1)
         {
            this._344201002xibieshai = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xibieshai",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : Repeater
      {
         return this._3540562star;
      }
      
      public function __paixucb_click(param1:MouseEvent) : void
      {
         paixuselectHandler(param1);
      }
      
      public function set finalConfusion(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._498964688finalConfusion;
         if(_loc2_ !== param1)
         {
            this._498964688finalConfusion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalConfusion",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attAgility() : BoxLabel
      {
         return this._183433628attAgility;
      }
      
      public function set classImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._692413227classImg;
         if(_loc2_ !== param1)
         {
            this._692413227classImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classImg",_loc2_,param1));
         }
      }
      
      public function set mDefence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._97632477mDefence;
         if(_loc2_ !== param1)
         {
            this._97632477mDefence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mDefence",_loc2_,param1));
         }
      }
      
      public function set addBtnCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._19957965addBtnCanvas;
         if(_loc2_ !== param1)
         {
            this._19957965addBtnCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addBtnCanvas",_loc2_,param1));
         }
      }
      
      public function __petDataList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set elementImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._575917863elementImg;
         if(_loc2_ !== param1)
         {
            this._575917863elementImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementImg",_loc2_,param1));
         }
      }
      
      public function onInitViewPetMngP(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         firstTimeFlag = false;
         for each(_loc2_ in param1)
         {
            if(_loc2_)
            {
               for(_loc4_ in _loc2_.data)
               {
                  if(!(_loc4_ == "pi" || _loc4_ == "soulInfo"))
                  {
                     _loc2_[_loc4_] = _loc2_.data[_loc4_];
                  }
               }
            }
            _loc2_.creatureData = _core.data.getGameData(GamePredef.TBL_CREATURE,_loc2_.data.tid);
            delete _loc2_.data;
         }
         _core.player.petList = param1;
         updateView();
         updatePetAutoBattleSet();
         petDataList.addEventListener(MouseEvent.CLICK,petAllowToShow);
         _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc3_)
         {
            _loc3_.updateView();
         }
      }
      
      public function __addEnergyButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function changePetName(param1:String) : void
      {
         var _loc2_:Object = null;
         if(_core.haveSpecialStr(param1))
         {
            Alert.show(Language.CHARACTORPANEL_S[11],"");
            return;
         }
         if(_core.haveBadWord(param1))
         {
            Alert.show(Language.CHARACTORPANEL_S[11],"");
            return;
         }
         if(param1 != "" && param1 != petDataList.selectedItem.text)
         {
            _core.remote.changePetName(petDataList.selectedItem.id,param1);
         }
         else if(param1 == "")
         {
            _loc2_ = _core.getTemplateData(GamePredef.TBL_CREATURE,petDataList.selectedItem.petData.tid);
            if(Boolean(_loc2_) && param1 != _loc2_.name)
            {
               _core.remote.changePetName(petDataList.selectedItem.id,_loc2_.name);
            }
         }
      }
      
      public function set aptAgilityEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1588184269aptAgilityEx;
         if(_loc2_ !== param1)
         {
            this._1588184269aptAgilityEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgilityEx",_loc2_,param1));
         }
      }
      
      public function changePetState(param1:int = 0) : void
      {
         var state:int = 0;
         var label:String = null;
         var btPet:Object = null;
         var i:* = undefined;
         var func:Function = null;
         var _state:int = param1;
         if(petDataList.selectedItem)
         {
            state = -1;
            label = "";
            if(_state)
            {
               if(petDataList.selectedItem.petData.state == _state)
               {
                  return;
               }
               state = _state;
               for(i in PET_STATE_ARR)
               {
                  if(state == PET_STATE_ARR[i]["state"])
                  {
                     label = PET_STATE_ARR[i]["label"];
                  }
               }
            }
            else if(petDataList.selectedItem.petData.state == PET_STATE_ARR[0]["state"])
            {
               label = PET_STATE_ARR[1]["label"];
               state = int(PET_STATE_ARR[1]["state"]);
            }
            else
            {
               label = PET_STATE_ARR[0]["label"];
               state = int(PET_STATE_ARR[0]["state"]);
            }
            btPet = _core.battlePet;
            if(Boolean(btPet) && PetLogic.expToLv(btPet.exp) - 5 > _core.player.level)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     stateBtn.label = label;
                     _changePetState(state);
                  }
               };
               Alert.show(Language.PETMANAGERPANEL_S[27],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               stateBtn.label = label;
               _changePetState(state);
            }
            stateBtn.toolTip = stateBtn.label;
         }
      }
      
      private function clearPage() : void
      {
         petPageAc.removeAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get petHp() : BoxLabel
      {
         return this._106557063petHp;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicMultiLineButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicMultiLineButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function clearView() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 5)
         {
            this["skill" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicMultiLineButton
      {
         return this._1554141557tabBtn2;
      }
      
      private function openPetFuncPanel(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:ItemSlot = null;
         if(param1 == 7)
         {
            if(_core.player.level < 120)
            {
               _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[112]);
               return;
            }
            _loc2_ = Number(petData.tid);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_EVOLUTION);
            if(_loc3_)
            {
               _loc3_.open(_loc2_);
            }
         }
         else
         {
            _loc4_ = new ItemSlot();
            _loc4_.type = GamePredef.TBL_PET;
            _loc4_.slotType = Slot.SLOT_PET;
            _loc4_.giid = petData.id;
            _loc4_.stackNum = 1;
            _loc4_.slotData = petData;
            _core.view.getUI(ViewManager.PANEL_PETFUNC).putPet(_loc4_,param1);
         }
      }
      
      public function set minusIntelligenceButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1606233953minusIntelligenceButton;
         if(_loc2_ !== param1)
         {
            this._1606233953minusIntelligenceButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusIntelligenceButton",_loc2_,param1));
         }
      }
      
      public function set minusStrengthButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1864769379minusStrengthButton;
         if(_loc2_ !== param1)
         {
            this._1864769379minusStrengthButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusStrengthButton",_loc2_,param1));
         }
      }
      
      public function set addStaminaButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._14326624addStaminaButton;
         if(_loc2_ !== param1)
         {
            this._14326624addStaminaButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStaminaButton",_loc2_,param1));
         }
      }
      
      public function set finalResiDizzy(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1906307211finalResiDizzy;
         if(_loc2_ !== param1)
         {
            this._1906307211finalResiDizzy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiDizzy",_loc2_,param1));
         }
      }
      
      public function __canvas3_creationComplete(param1:FlexEvent) : void
      {
         initPetEquListen();
      }
      
      [Bindable(event="propertyChange")]
      public function get finalSleep() : TextInput
      {
         return this._1872627967finalSleep;
      }
      
      private function doubleClickHandler(param1:GameEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _core.remote.petEquipOff(petData.id,_loc2_.giid);
      }
      
      public function set propertyCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1940048781propertyCanvas;
         if(_loc2_ !== param1)
         {
            this._1940048781propertyCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyCanvas",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petMp() : BoxLabel
      {
         return this._106557218petMp;
      }
      
      [Bindable(event="propertyChange")]
      public function get mDefence() : BoxLabel
      {
         return this._97632477mDefence;
      }
      
      public function set growRate(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._507317139growRate;
         if(_loc2_ !== param1)
         {
            this._507317139growRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growRate",_loc2_,param1));
         }
      }
      
      public function set aptStrengthFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._815424624aptStrengthFinal;
         if(_loc2_ !== param1)
         {
            this._815424624aptStrengthFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStrengthFinal",_loc2_,param1));
         }
      }
      
      public function __openBtn2_click(param1:MouseEvent) : void
      {
         openSkill(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get xibieshai() : ComboBox
      {
         return this._344201002xibieshai;
      }
      
      public function set hit(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103315hit;
         if(_loc2_ !== param1)
         {
            this._103315hit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hit",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get elementImg() : Image
      {
         return this._575917863elementImg;
      }
      
      public function __petFuncBtn1_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get addBtnCanvas() : Canvas
      {
         return this._19957965addBtnCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalConfusion() : TextInput
      {
         return this._498964688finalConfusion;
      }
      
      public function __AddMultipleCheck_change(param1:Event) : void
      {
         if(AddMultipleCheck.selected)
         {
            Multiple = 10;
         }
         else
         {
            Multiple = 1;
         }
      }
      
      private function paixuselectHandler(param1:Event) : void
      {
         updateView();
      }
      
      private function mouseAction(param1:Event, param2:int) : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
         {
            _core.sysMidMsg(Language.MAZE_INFO_PANEL_U[13]);
            return;
         }
         if(Boolean(petDataList.selectedItem) && Boolean(selPetData))
         {
            _core.view.getUI(ViewManager.PANEL_BAG).visible = true;
            param1.stopImmediatePropagation();
            if(_core.state == GamePredef.ST_BATTLE)
            {
               return;
            }
            _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[param2]);
            _core.view.mouseState = param2;
            _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_PET;
            _core.view.mousePetId = petDataList.selectedItem.petData.id;
         }
      }
      
      private function skillGetLevel(param1:Number, param2:int) : Object
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc3_:Object = GameData.d[GamePredef.TBL_SKILL][param1];
         if(param2 > 0)
         {
            _loc4_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_loc3_.codeName];
            for each(_loc5_ in _loc4_)
            {
               if(Number(_loc5_.level) == Number(param2))
               {
                  _loc3_ = _loc5_;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      public function tabBtnClick(param1:int) : void
      {
         if(param1 == 0)
         {
            dp1.visible = true;
            dp2.visible = false;
            pettabBtn0.selected = true;
            pettabBtn1.selected = false;
         }
         else
         {
            dp2.visible = true;
            dp1.visible = false;
            pettabBtn1.selected = true;
            pettabBtn0.selected = false;
         }
      }
      
      public function __delBtn3_click(param1:MouseEvent) : void
      {
         delSkill(3);
      }
      
      public function set critical(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1952151455critical;
         if(_loc2_ !== param1)
         {
            this._1952151455critical = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"critical",_loc2_,param1));
         }
      }
      
      public function set finalCounter(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1218397274finalCounter;
         if(_loc2_ !== param1)
         {
            this._1218397274finalCounter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalCounter",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minusIntelligenceButton() : Button
      {
         return this._1606233953minusIntelligenceButton;
      }
      
      public function set finalDefy(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._354781098finalDefy;
         if(_loc2_ !== param1)
         {
            this._354781098finalDefy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalDefy",_loc2_,param1));
         }
      }
      
      public function set propertyBarHp(param1:PropertyBar) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1046717530propertyBarHp;
         if(_loc2_ !== param1)
         {
            this._1046717530propertyBarHp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyBarHp",_loc2_,param1));
         }
      }
      
      public function __petFuncBtn6_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get minusStrengthButton() : Button
      {
         return this._1864769379minusStrengthButton;
      }
      
      private function startPetFollow() : void
      {
         var _loc1_:Number = Number(petDataList.selectedItem.petData.id);
         followPetIdCheck = _loc1_;
         _core.remote.call("startPetFollow",new Responder(startPetFollowHandler),_loc1_,_core.getShowPetId());
      }
      
      public function set finalResiSleep(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1892385864finalResiSleep;
         if(_loc2_ !== param1)
         {
            this._1892385864finalResiSleep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiSleep",_loc2_,param1));
         }
      }
      
      private function deletePet() : void
      {
         var pid:Number = NaN;
         var delFunc:Function = null;
         var msg:String = null;
         var htmlmsg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var i:* = undefined;
         if(Boolean(petDataList.selectedItem) && Boolean(selPetData))
         {
            if(Boolean(selPetData.soulInfo) && Boolean(selPetData.soulInfo["data"]))
            {
               for(i in selPetData.soulInfo["data"])
               {
                  if(selPetData.soulInfo["data"][i])
                  {
                     Alert.show(Language.PET_SOUL_S[50],"",Alert.YES,null,null);
                     return;
                  }
               }
            }
            pid = Number(petDataList.selectedItem.petData.id);
            delFunc = function(param1:CloseEvent):void
            {
               var delPetFunc:Function = null;
               var e:CloseEvent = param1;
               if(e.detail == Alert.YES)
               {
                  if(petDataList.selectedItem.petData.growRate > GamePredef.PET_GROWRATE_NUM[1])
                  {
                     delPetFunc = function(param1:String):void
                     {
                        var _loc2_:String = null;
                        if(param1)
                        {
                           _loc2_ = MD5.hash(param1);
                           _core.remote.delPetByClient(pid,_loc2_);
                        }
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.PETMANAGERPANEL_S[22],delPetFunc);
                  }
                  else
                  {
                     _core.remote.delPetByClient(pid);
                  }
               }
            };
            msg = Language.PETMANAGERPANEL_S[14] + "(" + petDataList.selectedItem.petData.petName + ")";
            htmlmsg = Language.PETMANAGERPANEL_S[14] + "(<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(petDataList.selectedItem.petData.growRate)] + "\'>" + petDataList.selectedItem.petData.petName + "</font>)";
            _alert = Alert.show(msg,"",3,this,delFunc);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = htmlmsg;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiDizzy() : TextInput
      {
         return this._1906307211finalResiDizzy;
      }
      
      public function ___PetManagerPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         showPetSoulPanel();
      }
      
      public function onAddPet(param1:Object) : void
      {
         var _loc3_:* = undefined;
         if(_core.player.petList == null)
         {
            _core.player.petList = {};
         }
         if(param1)
         {
            for(_loc3_ in param1.data)
            {
               if(!(_loc3_ == "pi" || _loc3_ == "soulInfo"))
               {
                  param1[_loc3_] = param1.data[_loc3_];
               }
            }
         }
         param1.creatureData = _core.data.getGameData(GamePredef.TBL_CREATURE,param1.data.tid);
         delete param1.data;
         _core.player.petList[param1.id] = param1;
         _core.sysBlueMsg(Language.PETMANAGERPANEL_S[10] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET] + "|" + param1.id + "|" + param1.creatureData.name + "|" + _core.basic.colorByGrowRate(param1.growRate) + "|0|0]");
         updateView();
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc2_)
         {
            _loc2_.updatePetList();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get critical() : BoxLabel
      {
         return this._1952151455critical;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalDefy() : TextInput
      {
         return this._354781098finalDefy;
      }
      
      public function set dodge(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._95758295dodge;
         if(_loc2_ !== param1)
         {
            this._95758295dodge = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodge",_loc2_,param1));
         }
      }
      
      public function __skill1_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function __btn4_click(param1:MouseEvent) : void
      {
         changeNameClick();
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(1);
      }
      
      private function set styleAddName(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._177868763styleAddName;
         if(_loc2_ !== param1)
         {
            this._177868763styleAddName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"styleAddName",_loc2_,param1));
         }
      }
      
      public function nextGuide() : void
      {
      }
      
      public function __skill2_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function set simplecanvas2(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1002706920simplecanvas2;
         if(_loc2_ !== param1)
         {
            this._1002706920simplecanvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simplecanvas2",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878252basichortxtbutton1;
         if(_loc2_ !== param1)
         {
            this._861878252basichortxtbutton1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton1",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878253basichortxtbutton2;
         if(_loc2_ !== param1)
         {
            this._861878253basichortxtbutton2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton2",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878254basichortxtbutton3;
         if(_loc2_ !== param1)
         {
            this._861878254basichortxtbutton3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton3",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton4(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878255basichortxtbutton4;
         if(_loc2_ !== param1)
         {
            this._861878255basichortxtbutton4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton4",_loc2_,param1));
         }
      }
      
      private function changePetFollow() : void
      {
         var _loc1_:Number = NaN;
         if(showPetFollowBtn.enabled)
         {
            _loc1_ = Number(petDataList.selectedItem.petData.id);
            if(_loc1_ != _core.getShowPetId())
            {
               startPetFollow();
            }
            else
            {
               cancelPetFollow();
            }
            showPetFollowBtn.enabled = false;
            showPetTimer = new Timer(5000,1);
            showPetTimer.addEventListener(TimerEvent.TIMER,showPetFollowBtnReset);
            showPetTimer.start();
         }
      }
      
      public function set basichortxtbutton6(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878257basichortxtbutton6;
         if(_loc2_ !== param1)
         {
            this._861878257basichortxtbutton6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dodge() : BoxLabel
      {
         return this._95758295dodge;
      }
      
      public function set basichortxtbutton5(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878256basichortxtbutton5;
         if(_loc2_ !== param1)
         {
            this._861878256basichortxtbutton5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get simplecanvas2() : SimpleCanvas
      {
         return this._1002706920simplecanvas2;
      }
      
      public function __showPetFollowBtn_click(param1:MouseEvent) : void
      {
         changePetFollow();
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton2() : BasicTxtButton
      {
         return this._861878253basichortxtbutton2;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton3() : BasicTxtButton
      {
         return this._861878254basichortxtbutton3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton4() : BasicTxtButton
      {
         return this._861878255basichortxtbutton4;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton5() : BasicTxtButton
      {
         return this._861878256basichortxtbutton5;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton6() : BasicTxtButton
      {
         return this._861878257basichortxtbutton6;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton1() : BasicTxtButton
      {
         return this._861878252basichortxtbutton1;
      }
      
      public function set simplecanvas3(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1002706921simplecanvas3;
         if(_loc2_ !== param1)
         {
            this._1002706921simplecanvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simplecanvas3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get simplecanvas3() : SimpleCanvas
      {
         return this._1002706921simplecanvas3;
      }
      
      public function set minusStaminaButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1889342449minusStaminaButton;
         if(_loc2_ !== param1)
         {
            this._1889342449minusStaminaButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusStaminaButton",_loc2_,param1));
         }
      }
      
      private function startPetFollowHandler(param1:Object) : void
      {
         if(param1)
         {
            _core.setShowPetId(followPetIdCheck);
            switchFollowButton(true);
         }
      }
      
      public function __upBtn5_click(param1:MouseEvent) : void
      {
         upSkill(5);
      }
      
      private function set xiebieshaidp(param1:ArrayCollection) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._345262067xiebieshaidp;
         if(_loc2_ !== param1)
         {
            this._345262067xiebieshaidp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xiebieshaidp",_loc2_,param1));
         }
      }
   }
}

