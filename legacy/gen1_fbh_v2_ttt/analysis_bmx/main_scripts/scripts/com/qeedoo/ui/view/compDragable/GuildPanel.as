package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ColoredBackgroundDataGrid;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedButton;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.DataGrid;
   import mx.controls.Menu;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DataGridEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1341543168memberGrid:ColoredBackgroundDataGrid;
      
      private var _881418178tabBar:HBox;
      
      public var _GuildPanel_Canvas1:Canvas;
      
      private var _549292407canDel2:CheckBox;
      
      public var _GuildPanel_Canvas4:Canvas;
      
      public var _GuildPanel_Canvas5:Canvas;
      
      public var _GuildPanel_Canvas6:Canvas;
      
      public var _GuildPanel_Canvas7:Canvas;
      
      private var _104584971name6:TextInput;
      
      private var _710472971searchText:TextInput;
      
      private var applyAc:ArrayCollection;
      
      private var guildListUpdated:* = false;
      
      private var _24161407canQuest3:CheckBox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1563800885guildSlotNum:RoundedLabel;
      
      private const PAGE_MAX_ITEM_NUM:int = 11;
      
      private var _104584967name2:TextInput;
      
      private var _core:Core = Core.getInstance();
      
      private var _1848510178guildName:String = GamePredef.GUILD_GUILDNAME;
      
      private var _2076042284applyGrid:DataGrid;
      
      public var _GuildPanel_DataGridColumn1:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn2:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn3:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn4:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn5:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn6:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn7:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn8:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn9:DataGridColumn;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var skillDataProvider:ArrayCollection = new ArrayCollection();
      
      private var _146922665canInfo5:CheckBox;
      
      private var _549201826canAdd3:CheckBox;
      
      private var _1848788631guildDuty:String = GamePredef.GUILD_MYDUTY;
      
      public var selfGuildMemberData:Object;
      
      private var _137738233canSlot5:CheckBox;
      
      public var _GuildPanel_BasicGlowButton4:BasicGlowButton;
      
      public var _GuildPanel_BasicGlowButton5:BasicGlowButton;
      
      public var _GuildPanel_BasicGlowButton1:BasicGlowButton;
      
      private var addMemberData:Object;
      
      private var lastUpdateMemberTime:Number = 0;
      
      private var _549292408canDel3:CheckBox;
      
      private var _637124376canDeleteGuild:Boolean = false;
      
      private var _41312720titleCanvas:BasicTitleCanvas;
      
      private var _549292410canDel5:CheckBox;
      
      private var _24161404canQuest6:CheckBox;
      
      private var _151317969canDuty5:CheckBox;
      
      private var _151317972canDuty2:CheckBox;
      
      private var _104584968name3:TextInput;
      
      private var applyList:Array;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var monthsList:Array = [{
         "label":"Sổ bang",
         "data":0
      },{
         "label":"Tên bang",
         "data":1
      }];
      
      private var _447179019myGuildInfo:TextArea;
      
      private var _1654542610monthCombo:ComboBox;
      
      public var _GuildPanel_RoundedLabel10:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel11:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel12:RoundedLabel;
      
      private var UPDATE_GUILD_MEMBER_INTERVAL:int = 30000;
      
      private var _24161408canQuest2:CheckBox;
      
      private var desc_memberNumber:Boolean = true;
      
      public var _GuildPanel_RoundedLabel22:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel23:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel24:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel26:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel27:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel28:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel29:RoundedLabel;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var desc_id:Boolean = true;
      
      public var _GuildPanel_RoundedLabel30:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel31:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel32:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel33:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel34:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel35:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel36:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel37:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel38:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel39:RoundedLabel;
      
      private var _549201827canAdd4:CheckBox;
      
      private var desc_leaderName:Boolean = true;
      
      private var _146922668canInfo2:CheckBox;
      
      private var _840150678settingRankInfo:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel40:RoundedLabel;
      
      private var _146922664canInfo6:CheckBox;
      
      public var myGuild:Object;
      
      private var newLeaderId:String;
      
      private var _104584969name4:TextInput;
      
      public var skillDevData:Object = null;
      
      private var _1848702503guildGrid:DataGrid;
      
      private var _549292409canDel4:CheckBox;
      
      private var _549292411canDel6:CheckBox;
      
      private var _137738232canSlot6:CheckBox;
      
      private var _137738236canSlot2:CheckBox;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _151317968canDuty6:CheckBox;
      
      private var _164888176myGuildLeader:RoundedLabel;
      
      public var _GuildPanel_TextArea2:TextArea;
      
      private var _151317971canDuty3:CheckBox;
      
      private var _24161405canQuest5:CheckBox;
      
      private var _447042350myGuildName:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel4:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel5:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel6:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel7:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel8:RoundedLabel;
      
      public var _GuildPanel_RoundedLabel9:RoundedLabel;
      
      private var memberList:Object;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _2088152754noGuild:Canvas;
      
      private var _1068679758normalContrib:RoundedLabel;
      
      private var _549201828canAdd5:CheckBox;
      
      private var _146922667canInfo3:CheckBox;
      
      private var firstTimeFlag:int = 0;
      
      private var _118704505hasGuild:Canvas;
      
      private var _1550462972deleteG:BasicGlowButton;
      
      private var guildRank:Object;
      
      private var _137738235canSlot3:CheckBox;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      private var _124463890settingRankButton:BasicGlowButton;
      
      private var myGuildMemberAC:ArrayCollection;
      
      public var _GuildPanel_DataGridColumn10:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn11:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn12:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn13:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn14:DataGridColumn;
      
      public var _GuildPanel_DataGridColumn15:DataGridColumn;
      
      private var _151317970canDuty4:CheckBox;
      
      private var newMemberData:Object;
      
      private var _770250966donateContrib:RoundedLabel;
      
      private var _1306563286guildExp:RoundedLabel;
      
      public var guildList:Object;
      
      private var _24161406canQuest4:CheckBox;
      
      private var _1306549598guildTab:ViewStack;
      
      private var _742881793changeNameBtn:RoundedButton;
      
      private var guildAC:ArrayCollection;
      
      private var _1469746035guildMoney:RoundedLabel;
      
      private var _549201829canAdd6:CheckBox;
      
      private var _1644260060guildLeader:String = GamePredef.GUILD_LEADERNAME;
      
      public var guildAR:Array;
      
      private var _104584970name5:TextInput;
      
      private var desc_name:Boolean = true;
      
      private var _792913466pageGuildAC:ArrayCollection = new ArrayCollection();
      
      private var _1023362504canEditInfo:Boolean = false;
      
      mx_internal var _watchers:Array = [];
      
      private var _146922666canInfo4:CheckBox;
      
      private var guildMemberListUpdated:* = false;
      
      private var _107947992quitG:BasicGlowButton;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _669642010memLimit:RoundedLabel;
      
      private var _1470959791guildLevel:RoundedLabel;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _137738234canSlot4:CheckBox;
      
      private var _1126216770txtGuildID:RoundedLabel;
      
      private var _549201825canAdd2:CheckBox;
      
      private var _104584966name1:TextInput;
      
      mx_internal var _bindings:Array = [];
      
      private var _1077788303memNum:RoundedLabel;
      
      private var _1778179988searchBtn:BasicDelayButton;
      
      public var joinGuildFlag:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":480,
               "height":354,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"titleCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {"helpFunc":openGuildHelp};
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"guildTab",
                  "events":{"mouseMove":"__guildTab_mouseMove"},
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
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GuildPanel_Canvas1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "autoLayout":true,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"hasGuild",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":HBox,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":267,
                                                   "x":373
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"myGuildInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "solid";
                                                this.backgroundAlpha = 0;
                                                this.left = "37";
                                                this.right = "57";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "editable":false,
                                                   "height":59,
                                                   "y":173
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"myGuildName",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":206,
                                                   "y":19,
                                                   "x":33.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"myGuildLeader",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":206,
                                                   "y":43,
                                                   "x":33.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"myDuty",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":197,
                                                   "y":121,
                                                   "x":33.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedButton,
                                             "id":"changeNameBtn",
                                             "events":{"click":"__changeNameBtn_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "x":420,
                                                   "y":265,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33.5,
                                                   "y":69,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":19,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":69,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":95,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33.5,
                                                   "y":95,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":44,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":121,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":147,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33.5,
                                                   "y":147,
                                                   "width":65
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"guildMoney",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":107,
                                                   "y":72,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"guildExp",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":69,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"guildSlotNum",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":107,
                                                   "y":95,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"memLimit",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":95,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"normalContrib",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":121,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"donateContrib",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":147,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"memNum",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":44,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"guildLevel",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":19,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"txtGuildID",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":107,
                                                   "y":147,
                                                   "width":121.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_GuildPanel_BasicGlowButton1",
                                             "events":{"click":"___GuildPanel_BasicGlowButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33.5,
                                                   "y":235,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"deleteG",
                                             "events":{"click":"__deleteG_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":235,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"quitG",
                                             "events":{
                                                "click":"__quitG_click",
                                                "creationComplete":"__quitG_creationComplete"
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":235,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"noGuild",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "visible":false,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_GuildPanel_BasicGlowButton4",
                                             "events":{"click":"___GuildPanel_BasicGlowButton4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33.5,
                                                   "y":50,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_GuildPanel_BasicGlowButton5",
                                             "events":{"click":"___GuildPanel_BasicGlowButton5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33.5,
                                                   "y":100,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":140,
                                                   "y":53
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_GuildPanel_RoundedLabel23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":140,
                                                   "y":103
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"_GuildPanel_TextArea2",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "37";
                                                this.right = "57";
                                                this.borderStyle = "none";
                                                this.color = 16777215;
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":150,
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
                           "type":Canvas,
                           "id":"_GuildPanel_Canvas4",
                           "events":{"show":"___GuildPanel_Canvas4_show"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ColoredBackgroundDataGrid,
                                    "id":"memberGrid",
                                    "events":{"itemDoubleClick":"__memberGrid_itemDoubleClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "rowColorFunction":rowColors,
                                          "columns":[_GuildPanel_DataGridColumn1_i(),_GuildPanel_DataGridColumn2_i(),_GuildPanel_DataGridColumn3_i(),_GuildPanel_DataGridColumn4_i(),_GuildPanel_DataGridColumn5_i(),_GuildPanel_DataGridColumn6_i(),_GuildPanel_DataGridColumn7_i()]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel24",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.bottom = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":408.5,
                                          "height":18,
                                          "x":20
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GuildPanel_Canvas5",
                           "events":{"show":"___GuildPanel_Canvas5_show"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"guildGrid",
                                    "events":{"itemDoubleClick":"__guildGrid_itemDoubleClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "doubleClickEnabled":true,
                                          "columns":[_GuildPanel_DataGridColumn8_i(),_GuildPanel_DataGridColumn9_i(),_GuildPanel_DataGridColumn10_i(),_GuildPanel_DataGridColumn11_i()]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelector",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "7";
                                       this.horizontalCenter = "0";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GuildPanel_Canvas6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"settingRankInfo",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "13.45";
                                       this.bottom = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":30,
                                          "width":387.33334
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"settingRankButton",
                                    "events":{"click":"__settingRankButton_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "10";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":266.7,
                                          "x":421.35,
                                          "styleName":"BtnNormalRed",
                                          "width":40,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":27
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":130,
                                          "y":27
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":264,
                                          "y":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":294,
                                          "y":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel30",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":324,
                                          "y":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel31",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":354,
                                          "y":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel32",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":384,
                                          "y":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel33",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":414,
                                          "y":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel34",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":66.8
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel35",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":96.8
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel36",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":126.8
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel37",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":156.8
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel38",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":186.8
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel39",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26.7,
                                          "y":216.8
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "enabled":false,
                                          "x":270,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "enabled":false,
                                          "x":300,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "enabled":false,
                                          "x":330,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "enabled":false,
                                          "x":360,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "enabled":false,
                                          "x":390,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selected":true,
                                          "enabled":false,
                                          "x":420,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"name1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98.05,
                                          "y":65.8,
                                          "width":130,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"name2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98.05,
                                          "y":95.8,
                                          "width":130,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"name3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98,
                                          "y":125.8,
                                          "width":130,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"name4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98.05,
                                          "y":155.8,
                                          "width":130,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"name5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98.05,
                                          "y":185.8,
                                          "width":130,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"name6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98.05,
                                          "y":215.8,
                                          "width":130,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canAdd2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":270,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canQuest2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":300,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canSlot2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":330,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canInfo2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":360,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDel2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDuty2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":420,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canAdd3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":270,
                                          "y":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canQuest3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":300,
                                          "y":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canSlot3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":330,
                                          "y":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canInfo3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":360,
                                          "y":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDel3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDuty3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":420,
                                          "y":130
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canAdd4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":270,
                                          "y":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canQuest4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":300,
                                          "y":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canSlot4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":330,
                                          "y":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canInfo4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":360,
                                          "y":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDel4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDuty4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":420,
                                          "y":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canAdd5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":270,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canQuest5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":300,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canSlot5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":330,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canInfo5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":360,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDel5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDuty5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":420,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canAdd6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "x":270,
                                          "y":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canQuest6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "x":300,
                                          "y":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canSlot6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "x":330,
                                          "y":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canInfo6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "x":360,
                                          "y":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDel6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "x":390,
                                          "y":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"canDuty6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "x":420,
                                          "y":220
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GuildPanel_Canvas7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"applyGrid",
                                    "events":{"itemDoubleClick":"__applyGrid_itemDoubleClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "doubleClickEnabled":true,
                                          "columns":[_GuildPanel_DataGridColumn12_i(),_GuildPanel_DataGridColumn13_i(),_GuildPanel_DataGridColumn14_i(),_GuildPanel_DataGridColumn15_i()]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_GuildPanel_RoundedLabel40",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.bottom = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":408.5,
                                          "height":18,
                                          "x":20
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
                  "id":"tabBar",
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
                                 "width":42.6,
                                 "height":20.5
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
                                 "width":42.6,
                                 "height":20.5
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
                                 "width":42.6,
                                 "height":20.5
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
                                 "width":60,
                                 "height":20.5
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
                                 "width":42.6,
                                 "height":20.5
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ComboBox,
                  "id":"monthCombo",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.color = 16515000;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "labelField":"label",
                        "x":260,
                        "y":38,
                        "width":65,
                        "height":22
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"searchText",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "true";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "x":327,
                        "y":38,
                        "width":100,
                        "height":21.5,
                        "text":""
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"searchBtn",
                  "events":{"click":"__searchBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":5000,
                        "visible":false,
                        "width":30,
                        "styleName":"BtnStdRed",
                        "x":429,
                        "y":37.5
                     };
                  }
               })]
            };
         }
      });
      
      private var myRank:Object;
      
      private var _1060501854myDuty:RoundedLabel;
      
      public function GuildPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 480;
         this.height = 354;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildPanel._watcherSetupUtil = param1;
      }
      
      public function set changeNameBtn(param1:RoundedButton) : void
      {
         var _loc2_:Object = this._742881793changeNameBtn;
         if(_loc2_ !== param1)
         {
            this._742881793changeNameBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeNameBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canSlot4() : CheckBox
      {
         return this._137738234canSlot4;
      }
      
      public function set canSlot2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._137738236canSlot2;
         if(_loc2_ !== param1)
         {
            this._137738236canSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSlot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canSlot2() : CheckBox
      {
         return this._137738236canSlot2;
      }
      
      public function set canSlot3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._137738235canSlot3;
         if(_loc2_ !== param1)
         {
            this._137738235canSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSlot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canSlot5() : CheckBox
      {
         return this._137738233canSlot5;
      }
      
      private function _GuildPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "normalContrib";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn7",_GuildPanel_DataGridColumn7);
         return _loc1_;
      }
      
      private function setNormalGuildInfoView() : void
      {
         var _loc2_:* = undefined;
         hasGuild.visible = true;
         noGuild.visible = false;
         if(ToolKit.isEqual(selfGuildMemberData.rank,1))
         {
            canDeleteGuild = true;
         }
         else
         {
            canDeleteGuild = false;
         }
         if(ToolKit.isEqual(myRank.canInfo,1))
         {
            canEditInfo = true;
         }
         else
         {
            canEditInfo = false;
         }
         guildName = GamePredef.GUILD_GUILDNAME + "   " + myGuild.name;
         guildLeader = GamePredef.GUILD_LEADERNAME + "   " + myGuild.ln;
         myGuildInfo.htmlText = Language.GUILDPANEL_S[0] + myGuild.guildInfo;
         guildDuty = GamePredef.GUILD_MYDUTY + "   " + myRank.name;
         guildMoney.text = myGuild.money;
         guildExp.text = myGuild.exp;
         guildSlotNum.text = myGuild.bagSlotNum;
         memLimit.text = myGuild.memLimit;
         normalContrib.text = selfGuildMemberData.normalContrib;
         donateContrib.text = selfGuildMemberData.donateContrib;
         if(normalContrib.text == "NaN")
         {
            normalContrib.text = "0";
         }
         if(donateContrib.text == "NaN")
         {
            donateContrib.text = "0";
         }
         guildLevel.text = myGuild.level;
         var _loc1_:Number = 0;
         for(_loc2_ in this.memberList)
         {
            if(memberList[_loc2_] != null)
            {
               _loc1_++;
            }
         }
         if(guildList != null)
         {
            this.guildList[selfGuildMemberData.gid]["memberNumber"] = _loc1_;
            guildListUpdated = true;
         }
         memNum.text = _loc1_.toString();
         txtGuildID.text = myGuild.id;
      }
      
      public function set canSlot6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._137738232canSlot6;
         if(_loc2_ !== param1)
         {
            this._137738232canSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSlot6",_loc2_,param1));
         }
      }
      
      public function ___GuildPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      public function set canSlot4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._137738234canSlot4;
         if(_loc2_ !== param1)
         {
            this._137738234canSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSlot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canSlot3() : CheckBox
      {
         return this._137738235canSlot3;
      }
      
      public function onUpdateGuildRank(param1:int, param2:Object) : void
      {
         var _loc3_:Object = null;
         if(selfGuildMemberData)
         {
            if(selfGuildMemberData.gid == param1)
            {
               for each(_loc3_ in guildRank)
               {
                  if(_loc3_.rank > 1)
                  {
                     _loc3_.canAdd = param2["canAdd" + _loc3_.rank];
                     _loc3_.canQuest = param2["canQuest" + _loc3_.rank];
                     _loc3_.canSlot = param2["canSlot" + _loc3_.rank];
                     _loc3_.canInfo = param2["canInfo" + _loc3_.rank];
                     _loc3_.canDel = param2["canDel" + _loc3_.rank];
                     _loc3_.canDuty = param2["canDuty" + _loc3_.rank];
                  }
                  _loc3_.name = param2["name" + _loc3_.rank];
                  if(ToolKit.isEqual(_loc3_.rank,myRank.rank))
                  {
                     myRank = _loc3_;
                  }
               }
               updateView();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canSlot6() : CheckBox
      {
         return this._137738232canSlot6;
      }
      
      public function set canSlot5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._137738233canSlot5;
         if(_loc2_ !== param1)
         {
            this._137738233canSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSlot5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBar() : HBox
      {
         return this._881418178tabBar;
      }
      
      public function onUpdateGuildProperty(param1:Object) : *
      {
         var _loc2_:* = undefined;
         if(myGuild == null)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            myGuild[_loc2_] = param1[_loc2_];
         }
         updateGuildInfoView();
      }
      
      private function _GuildPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "donateContrib";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn6",_GuildPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function set canDuty2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._151317972canDuty2;
         if(_loc2_ !== param1)
         {
            this._151317972canDuty2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDuty2",_loc2_,param1));
         }
      }
      
      public function set canDuty3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._151317971canDuty3;
         if(_loc2_ !== param1)
         {
            this._151317971canDuty3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDuty3",_loc2_,param1));
         }
      }
      
      public function set canDuty4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._151317970canDuty4;
         if(_loc2_ !== param1)
         {
            this._151317970canDuty4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDuty4",_loc2_,param1));
         }
      }
      
      public function set canDuty5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._151317969canDuty5;
         if(_loc2_ !== param1)
         {
            this._151317969canDuty5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDuty5",_loc2_,param1));
         }
      }
      
      public function onInitGuildList(param1:Object) : *
      {
         if(param1)
         {
            this.guildList = param1;
            updateGuildListView();
         }
      }
      
      private function memberGridClick() : void
      {
         var _loc3_:Object = null;
         var _loc1_:Number = Number(memberGrid.selectedItem.rank);
         var _loc2_:Array = new Array();
         if(_core.player.id != memberGrid.selectedItem.id)
         {
            _loc2_.push({"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO},{"label":GamePredef.MENU_ADDF});
            if(myRank.canDuty == 1 && memberGrid.selectedItem.rank != -1 && memberGrid.selectedItem.rank != 1)
            {
               _loc2_.push({"type":"separator"});
               for each(_loc3_ in guildRank)
               {
                  if(_loc3_.rank > 1)
                  {
                     _loc2_.push({
                        "label":GamePredef.GUILD_DUTY + _loc3_.name,
                        "rank":_loc3_.rank
                     });
                  }
               }
            }
            if(memberGrid.selectedItem.rank != -1 && memberGrid.selectedItem.rank != 1 && myRank.canDel == 1)
            {
               _loc2_.push({"type":"separator"},{"label":GamePredef.GUILD_KICK});
            }
            if(memberGrid.selectedItem.rank != -1 && selfGuildMemberData.rank == 1 && _core.player.id == myGuild.cid)
            {
               _loc2_.push({"type":"separator"},{"label":GamePredef.GUILD_DEMISE});
            }
            menuPop(_loc2_,menuClickHandler);
         }
      }
      
      public function ___GuildPanel_Canvas5_show(param1:FlexEvent) : void
      {
         showGuildList();
      }
      
      public function set canDuty6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._151317968canDuty6;
         if(_loc2_ !== param1)
         {
            this._151317968canDuty6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDuty6",_loc2_,param1));
         }
      }
      
      private function menuPop(param1:Array, param2:Function) : void
      {
         var _loc3_:Menu = CustomMenu.createMenu(null,param1);
         _loc3_.show(stage.mouseX,stage.mouseY);
         _loc3_.addEventListener(MenuEvent.ITEM_CLICK,param2);
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      private function setNoGuildInfoView() : void
      {
         hasGuild.visible = false;
         noGuild.visible = true;
      }
      
      private function _GuildPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "status";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn5",_GuildPanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function set tabBar(param1:HBox) : void
      {
         var _loc2_:Object = this._881418178tabBar;
         if(_loc2_ !== param1)
         {
            this._881418178tabBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBar",_loc2_,param1));
         }
      }
      
      public function showContribPanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_GUILDCONTRIB);
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         if(!_loc1_.visible)
         {
            _loc1_.show();
            _loc2_.show();
            _loc2_.startFollow(_loc1_);
         }
         else
         {
            if(!_loc2_.visible)
            {
               _loc2_.show();
            }
            _loc2_.startFollow(_loc1_);
         }
      }
      
      public function onUpdateGuildInfo(param1:Object) : void
      {
         myGuild = param1;
         _core.player.guild = param1;
         updateGuildInfoView();
         if(ToolKit.isEqual(param1.updateType,2))
         {
            _core.view.getUI(ViewManager.PANEL_GUILDWAREHOUSE).updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get guildMoney() : RoundedLabel
      {
         return this._1469746035guildMoney;
      }
      
      public function __guildTab_mouseMove(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function showGuildList() : *
      {
         if(guildList == null)
         {
            _core.remote.initGuildList();
         }
         else if(guildListUpdated)
         {
            updateGuildListView();
         }
      }
      
      private function guildBagSlotUp() : void
      {
         if(checkIfLeader() == false)
         {
            Alert.show(Language.GUILDPANEL_U[14],"");
            return;
         }
         _core.remote.call("addGuildBankSlotNum",null,myGuild.id);
      }
      
      public function updateButtonBar() : void
      {
      }
      
      public function updateGuildMemberView() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Sort = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         myGuildMemberAC = new ArrayCollection();
         myGuildMemberAC.removeAll();
         if(selfGuildMemberData != null && selfGuildMemberData.rank != -1)
         {
            if(myGuild == null)
            {
               return;
            }
            for each(_loc1_ in memberList)
            {
               if(_loc1_ != undefined && _loc1_ != null)
               {
                  _loc3_ = new String();
                  _loc4_ = new String();
                  _loc5_ = 6;
                  if(_loc1_.rank != -1)
                  {
                     for each(_loc8_ in guildRank)
                     {
                        if(_loc8_.rank == _loc1_.rank)
                        {
                           _loc4_ = _loc8_.name;
                           _loc5_ = int(_loc1_.rank);
                           break;
                        }
                     }
                     if(_loc1_.status)
                     {
                        _loc3_ = GamePredef.GUILD_ONLINE;
                     }
                     else
                     {
                        _loc3_ = GamePredef.GUILD_OFFLINE;
                     }
                     _loc6_ = String(_loc1_.note).split("|");
                     _loc7_ = "";
                     if(_loc6_[1])
                     {
                        _loc7_ = _core.data.getGameDataList(GamePredef.TBL_CLASS)[_loc6_[1]].name;
                     }
                     if(!_loc1_.normalContrib)
                     {
                        _loc1_.normalContrib = 0;
                     }
                     if(!_loc1_.donateContrib)
                     {
                        _loc1_.donateContrib = 0;
                     }
                     myGuildMemberAC.addItem({
                        "tableId":_loc1_.id,
                        "id":_loc1_.cid,
                        "sort1":_loc5_,
                        "name":_loc6_[0],
                        "rank":_loc1_.rank,
                        "duty":_loc4_,
                        "memberClass":_loc7_,
                        "level":_core.basic.expToLevel(_loc6_[2]),
                        "status":_loc3_,
                        "normalContrib":Number(_loc1_.normalContrib),
                        "donateContrib":Number(_loc1_.donateContrib)
                     });
                  }
               }
            }
            _loc2_ = new Sort();
            _loc2_.fields = [new SortField("sort1",true,false),new SortField("level",true,true,true)];
            myGuildMemberAC.sort = _loc2_;
            myGuildMemberAC.refresh();
         }
         else if(selfGuildMemberData == !null && selfGuildMemberData.rank == -1)
         {
            myGuildMemberAC.refresh();
         }
         memberGrid.dataProvider = myGuildMemberAC;
         memberGrid.validateNow();
         guildMemberListUpdated = false;
      }
      
      private function _GuildPanel_DataGridColumn15_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn15 = _loc1_;
         _loc1_.dataField = "status";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn15",_GuildPanel_DataGridColumn15);
         return _loc1_;
      }
      
      private function initPageSelector() : void
      {
         var _loc1_:int = 0;
         if(guildAC.length >= PAGE_MAX_ITEM_NUM)
         {
            _loc1_ = PAGE_MAX_ITEM_NUM;
         }
         else
         {
            _loc1_ = guildAC.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            pageGuildAC.addItem(guildAC.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(guildAC.length,PAGE_MAX_ITEM_NUM);
      }
      
      public function ___GuildPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         _core.view.getUI(ViewManager.PANEL_ADDGUILD).visible = true;
      }
      
      private function _GuildPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn4",_GuildPanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function getGuildSkillList() : ArrayCollection
      {
         var _loc3_:* = undefined;
         var _loc1_:Object = DataManager.getInstance().gameDataIndex3[GamePredef.TBL_SKILL][4];
         var _loc2_:ArrayCollection = new ArrayCollection();
         for(_loc3_ in _loc1_)
         {
            if(ToolKit.isEqual(_loc1_[_loc3_].level,1))
            {
               _loc2_.addItem(_loc1_[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public function __applyGrid_itemDoubleClick(param1:ListEvent) : void
      {
         applyGridClick();
      }
      
      public function __guildGrid_itemDoubleClick(param1:ListEvent) : void
      {
         guildGridClick();
      }
      
      public function onAddGuildMember(param1:Object) : void
      {
         if(param1.cid == _core.player.id)
         {
            joinGuildFlag = 0;
            initView();
         }
         else if(selfGuildMemberData)
         {
            if(param1.gid == selfGuildMemberData.gid)
            {
               memberList[param1.id] = param1;
               applyList.push(param1);
               updateView();
               guildMemberListUpdated = true;
            }
         }
      }
      
      private function joinGuild(param1:Number) : void
      {
         var _loc2_:String = "";
         if(joinGuildFlag == 1)
         {
            Alert.show(Language.GUILDPANEL_S[8],"",Alert.OK);
            return;
         }
         if(selfGuildMemberData == null)
         {
            addMemberData = {"gid":param1};
            _loc2_ = Language.GUILDPANEL_S[9];
            _loc2_ = _loc2_.replace("{name}",guildGrid.selectedItem.name);
            Alert.show(_loc2_,"",3,this,addGuildMember);
         }
         else
         {
            Alert.show(GamePredef.GUILD_ONLYONE,"",Alert.OK);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myGuildName() : RoundedLabel
      {
         return this._447042350myGuildName;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         super.visible = param1;
         if(param1 && firstTimeFlag != 0)
         {
            _loc2_ = new Date().getTime() - lastUpdateMemberTime;
            if(_loc2_ > UPDATE_GUILD_MEMBER_INTERVAL)
            {
               _core.remote.call("getGuildMemberList",new Responder(onGetGuildMember));
               lastUpdateMemberTime = new Date().getTime();
            }
         }
         if(param1 && firstTimeFlag == 0)
         {
            initView();
            firstTimeFlag = 1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get settingRankButton() : BasicGlowButton
      {
         return this._124463890settingRankButton;
      }
      
      private function _GuildPanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn14 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn14",_GuildPanel_DataGridColumn14);
         return _loc1_;
      }
      
      public function updateRankView() : void
      {
         guildSetting();
      }
      
      private function _GuildPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "memberClass";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn3",_GuildPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function addGuildMember(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            if(ToolKit.isBigOrEqual(Number(_core.player.level),30))
            {
               joinGuildFlag = 1;
            }
            _core.remote.addGuildMember(addMemberData);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get memberGrid() : ColoredBackgroundDataGrid
      {
         return this._1341543168memberGrid;
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
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function set guildMoney(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1469746035guildMoney;
         if(_loc2_ !== param1)
         {
            this._1469746035guildMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildMoney",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get guildName() : String
      {
         return this._1848510178guildName;
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
      
      public function guildFull() : void
      {
         _core.sysMsg(Language.GUILDPANEL_S[10]);
         joinGuildFlag = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildExp() : RoundedLabel
      {
         return this._1306563286guildExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildSlotNum() : RoundedLabel
      {
         return this._1563800885guildSlotNum;
      }
      
      public function __searchBtn_click(param1:MouseEvent) : void
      {
         searchGuild();
      }
      
      private function _GuildPanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn13 = _loc1_;
         _loc1_.dataField = "memberClass";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn13",_GuildPanel_DataGridColumn13);
         return _loc1_;
      }
      
      public function onUpdateGuild(param1:int, param2:String, param3:String) : void
      {
         var _loc4_:* = undefined;
         if(guildList != null)
         {
            for each(_loc4_ in guildList)
            {
               if(Boolean(_loc4_) && _loc4_.id == param1)
               {
                  _loc4_[param2] = param3;
               }
            }
            guildListUpdated = true;
         }
         if(param2 == "name")
         {
            myGuild.name = param3;
            changeNameBtn.visible = false;
         }
         updateView();
      }
      
      public function reset() : void
      {
         var _loc1_:int = 0;
         if(initialized)
         {
            selfGuildMemberData = null;
            guildAC = null;
            myGuildMemberAC = null;
            myGuild = null;
            myRank = null;
            guildRank = null;
            memberList = null;
            firstTimeFlag = 0;
            guildListUpdated = false;
            guildMemberListUpdated = false;
            joinGuildFlag = 0;
            memberGrid.dataProvider = null;
            guildList = null;
            _loc1_ = 2;
            while(_loc1_ < 6)
            {
               this["canAdd" + _loc1_].selected = false;
               this["canQuest" + _loc1_].selected = false;
               this["canSlot" + _loc1_].selected = false;
               this["canInfo" + _loc1_].selected = false;
               this["canDel" + _loc1_].selected = false;
               this["canDuty" + _loc1_].selected = false;
               _loc1_++;
            }
         }
      }
      
      public function set guildTab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1306549598guildTab;
         if(_loc2_ !== param1)
         {
            this._1306549598guildTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildTab",_loc2_,param1));
         }
      }
      
      private function _GuildPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "duty";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn2",_GuildPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function set noGuild(param1:Canvas) : void
      {
         var _loc2_:Object = this._2088152754noGuild;
         if(_loc2_ !== param1)
         {
            this._2088152754noGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noGuild",_loc2_,param1));
         }
      }
      
      public function set myDuty(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1060501854myDuty;
         if(_loc2_ !== param1)
         {
            this._1060501854myDuty = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myDuty",_loc2_,param1));
         }
      }
      
      public function updateGuildApplyListView() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         if(myRank == null || myRank.canAdd != 1)
         {
            return;
         }
         if(applyAc == null)
         {
            applyAc = new ArrayCollection();
         }
         else
         {
            applyAc.removeAll();
         }
         for(_loc1_ in applyList)
         {
            _loc2_ = applyList[_loc1_];
            _loc3_ = _loc2_.note.split("|");
            _loc4_ = _core.data.getGameDataList(GamePredef.TBL_CLASS)[_loc3_[1]].name;
            _loc5_ = null;
            if(_loc2_.status)
            {
               _loc5_ = GamePredef.GUILD_ONLINE;
            }
            else
            {
               _loc5_ = GamePredef.GUILD_OFFLINE;
            }
            applyAc.addItem({
               "tableId":_loc2_.id,
               "id":_loc2_.cid,
               "name":_loc3_[0],
               "memberClass":_loc4_,
               "level":_core.basic.expToLevel(_loc3_[2]),
               "status":_loc5_
            });
         }
         applyGrid.dataProvider = applyAc;
      }
      
      [Bindable(event="propertyChange")]
      private function get guildDuty() : String
      {
         return this._1848788631guildDuty;
      }
      
      [Bindable(event="propertyChange")]
      public function get settingRankInfo() : RoundedLabel
      {
         return this._840150678settingRankInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get canDel4() : CheckBox
      {
         return this._549292409canDel4;
      }
      
      [Bindable(event="propertyChange")]
      public function get canDel3() : CheckBox
      {
         return this._549292408canDel3;
      }
      
      private function _GuildPanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn12 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn12",_GuildPanel_DataGridColumn12);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get canDel5() : CheckBox
      {
         return this._549292410canDel5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canDel6() : CheckBox
      {
         return this._549292411canDel6;
      }
      
      private function _GuildPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn1",_GuildPanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get hasGuild() : Canvas
      {
         return this._118704505hasGuild;
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabClick(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get canDel2() : CheckBox
      {
         return this._549292407canDel2;
      }
      
      [Bindable(event="propertyChange")]
      public function get myGuildLeader() : RoundedLabel
      {
         return this._164888176myGuildLeader;
      }
      
      private function btnEditInfoClick() : void
      {
         var _loc1_:InputPanel = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
         _loc1_.showInput(Language.GUILDPANEL_S[12],Language.GUILDPANEL_S[13],editInfo);
      }
      
      public function set myGuildName(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._447042350myGuildName;
         if(_loc2_ !== param1)
         {
            this._447042350myGuildName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myGuildName",_loc2_,param1));
         }
      }
      
      private function checkIfLeader() : Boolean
      {
         if(selfGuildMemberData == null || myGuild == null)
         {
            return false;
         }
         return ToolKit.isEqual(selfGuildMemberData.rank,1);
      }
      
      public function showGuildWarehousePanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_GUILDWAREHOUSE);
         if(!_loc1_.visible)
         {
            _loc1_.show();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get memNum() : RoundedLabel
      {
         return this._1077788303memNum;
      }
      
      private function set guildLeader(param1:String) : void
      {
         var _loc2_:Object = this._1644260060guildLeader;
         if(_loc2_ !== param1)
         {
            this._1644260060guildLeader = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildLeader",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get normalContrib() : RoundedLabel
      {
         return this._1068679758normalContrib;
      }
      
      public function __memberGrid_itemDoubleClick(param1:ListEvent) : void
      {
         memberGridClick();
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            pageGuildAC.addItem(guildAC.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      public function onDelGuild(param1:int) : void
      {
         var _loc2_:* = undefined;
         if(guildList != null)
         {
            for(_loc2_ in guildList)
            {
               if(guildList[_loc2_].id == param1)
               {
                  delete guildList[_loc2_];
                  break;
               }
            }
            guildListUpdated = true;
         }
         if(selfGuildMemberData != null && ToolKit.isEqual(selfGuildMemberData.gid,param1))
         {
            Alert.show(Language.GUILDPANEL_U[24],"",Alert.OK);
            memberList = null;
            applyList = null;
            myRank = null;
            myGuild = null;
            _core.player.guild = null;
            selfGuildMemberData = null;
            _core.view.getUI(ViewManager.PANEL_GUILDWAREHOUSE).reset();
            guildMemberListUpdated = true;
         }
         updateView();
      }
      
      private function guildLevelUp() : void
      {
         if(checkIfLeader() == false)
         {
            Alert.show(Language.GUILDPANEL_U[14],"");
            return;
         }
         _core.remote.call("guildLevelUp",null,myGuild.id);
      }
      
      [Bindable(event="propertyChange")]
      private function get pageGuildAC() : ArrayCollection
      {
         return this._792913466pageGuildAC;
      }
      
      private function setWaitGuildInfoView() : void
      {
         guildName = GamePredef.GUILD_GUILDNAME + myGuild.name;
         guildLeader = GamePredef.GUILD_ONCHECK;
         guildDuty = "";
         myGuildInfo.text = "";
         guildMoney.text = "";
         guildExp.text = "";
         guildSlotNum.text = "";
         memLimit.text = "";
         normalContrib.text = "";
         donateContrib.text = "";
         guildLevel.text = "";
         memNum.text = "";
         txtGuildID.text = "";
         hasGuild.visible = true;
         noGuild.visible = false;
         if(ToolKit.isEqual(selfGuildMemberData.rank,1))
         {
            canDeleteGuild = true;
         }
         else
         {
            canDeleteGuild = false;
         }
         if(Boolean(myRank) && ToolKit.isEqual(myRank.canInfo,1))
         {
            canEditInfo = true;
         }
         else
         {
            canEditInfo = false;
         }
      }
      
      private function editInfo(param1:String) : void
      {
         if(selfGuildMemberData)
         {
            _core.remote.updateGuildNotice(selfGuildMemberData.gid,param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get guildGrid() : DataGrid
      {
         return this._1848702503guildGrid;
      }
      
      public function set monthCombo(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1654542610monthCombo;
         if(_loc2_ !== param1)
         {
            this._1654542610monthCombo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monthCombo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get canEditInfo() : Boolean
      {
         return this._1023362504canEditInfo;
      }
      
      private function _GuildPanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn11 = _loc1_;
         _loc1_.dataField = "memberNumber";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn11",_GuildPanel_DataGridColumn11);
         return _loc1_;
      }
      
      public function set settingRankButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._124463890settingRankButton;
         if(_loc2_ !== param1)
         {
            this._124463890settingRankButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"settingRankButton",_loc2_,param1));
         }
      }
      
      private function _GuildPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUILDPANEL_U[9];
         _loc1_ = Language.GUILDPANEL_U[5];
         _loc1_ = guildName;
         _loc1_ = guildLeader;
         _loc1_ = guildDuty;
         _loc1_ = Language.GUILDPANEL_S[23];
         _loc1_ = Language.GUILDPANEL_U[27];
         _loc1_ = Language.GUILDPANEL_U[28];
         _loc1_ = Language.GUILDPANEL_U[29];
         _loc1_ = Language.GUILDPANEL_U[30];
         _loc1_ = Language.GUILDPANEL_U[31];
         _loc1_ = Language.GUILDPANEL_U[32];
         _loc1_ = Language.GUILDPANEL_U[33];
         _loc1_ = Language.GUILDPANEL_U[34];
         _loc1_ = Language.GUILDPANEL_U[35];
         _loc1_ = Language.GUILDPANEL_U[37];
         _loc1_ = canEditInfo;
         _loc1_ = Language.GUILDPANEL_U[38];
         _loc1_ = canDeleteGuild;
         _loc1_ = Language.GUILDPANEL_U[39];
         _loc1_ = !canDeleteGuild;
         _loc1_ = Language.GUILDPANEL_U[40];
         _loc1_ = Language.GUILDPANEL_U[41];
         _loc1_ = Language.GUILDPANEL_S[106];
         _loc1_ = Language.GUILDPANEL_S[107];
         _loc1_ = Language.GUILDPANEL_S[108];
         _loc1_ = Language.GUILDPANEL_U[6];
         _loc1_ = Language.GUILDPANEL_S[24];
         _loc1_ = Language.GUILDPANEL_S[25];
         _loc1_ = Language.GUILDPANEL_S[26];
         _loc1_ = Language.GUILDPANEL_S[27];
         _loc1_ = Language.GUILDPANEL_S[28];
         _loc1_ = Language.GUILDPANEL_S[63];
         _loc1_ = Language.GUILDPANEL_S[64];
         _loc1_ = Language.GUILDPANEL_S[29];
         _loc1_ = Language.GUILDPANEL_U[7];
         _loc1_ = pageGuildAC;
         _loc1_ = Language.GUILDPANEL_S[101];
         _loc1_ = Language.GUILDPANEL_S[30];
         _loc1_ = Language.GUILDPANEL_S[31];
         _loc1_ = Language.GUILDPANEL_S[32];
         _loc1_ = Language.GUILDPANEL_U[8];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.GUILDPANEL_S[35];
         _loc1_ = Language.GUILDPANEL_S[36];
         _loc1_ = Language.GUILDPANEL_S[38];
         _loc1_ = Language.GUILDPANEL_S[39];
         _loc1_ = Language.GUILDPANEL_S[40];
         _loc1_ = Language.GUILDPANEL_S[41];
         _loc1_ = Language.GUILDPANEL_S[42];
         _loc1_ = Language.GUILDPANEL_S[43];
         _loc1_ = Language.GUILDPANEL_S[44];
         _loc1_ = Language.GUILDPANEL_S[45];
         _loc1_ = Language.GUILDPANEL_S[46];
         _loc1_ = Language.GUILDPANEL_S[47];
         _loc1_ = Language.GUILDPANEL_S[48];
         _loc1_ = Language.GUILDPANEL_S[49];
         _loc1_ = Language.GUILDPANEL_S[50];
         _loc1_ = Language.GUILDPANEL_S[51];
         _loc1_ = Language.GUILDPANEL_S[51];
         _loc1_ = Language.GUILDPANEL_S[51];
         _loc1_ = Language.GUILDPANEL_S[51];
         _loc1_ = Language.GUILDPANEL_S[52];
         _loc1_ = Language.GUILDPANEL_U[10];
         _loc1_ = Language.GUILDPANEL_S[24];
         _loc1_ = Language.GUILDPANEL_S[26];
         _loc1_ = Language.GUILDPANEL_S[27];
         _loc1_ = Language.GUILDPANEL_S[28];
         _loc1_ = Language.GUILDPANEL_S[33];
         _loc1_ = Language.GUILDPANEL_U[5];
         _loc1_ = Language.GUILDPANEL_U[6];
         _loc1_ = Language.GUILDPANEL_U[8];
         _loc1_ = Language.GUILDPANEL_U[10];
         _loc1_ = Language.GUILDPANEL_U[7];
         _loc1_ = monthsList;
         _loc1_ = Language.GUILDPANEL_U[43];
      }
      
      public function __changeNameBtn_click(param1:MouseEvent) : void
      {
         changeGuildName();
      }
      
      public function set myGuildInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._447179019myGuildInfo;
         if(_loc2_ !== param1)
         {
            this._447179019myGuildInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myGuildInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleCanvas() : BasicTitleCanvas
      {
         return this._41312720titleCanvas;
      }
      
      private function showGuildMemberList() : *
      {
         if(guildMemberListUpdated)
         {
            updateGuildMemberView();
         }
      }
      
      public function onConfirmGuildApply(param1:Object) : void
      {
         var mem:* = undefined;
         var i:* = undefined;
         var member:Object = param1;
         if(member == null)
         {
            return;
         }
         try
         {
            if(guildList != null)
            {
               guildList[member.gid]["memberNumber"] = Number(guildList[member.gid]["memberNumber"]) + 1;
               guildListUpdated = true;
            }
            if(selfGuildMemberData != null && selfGuildMemberData.gid == member.gid)
            {
               if(selfGuildMemberData.id == member.tableId)
               {
                  initView();
                  return;
               }
               for each(mem in memberList)
               {
                  if(mem.id == member.tableId)
                  {
                     mem.rank = 6;
                  }
               }
               guildMemberListUpdated = true;
               if(myRank.canAdd == 1)
               {
                  for(i in applyList)
                  {
                     if(applyList[i].id == member.tableId)
                     {
                        delete applyList[i];
                     }
                  }
               }
            }
         }
         catch(e:Error)
         {
         }
         updateView();
      }
      
      private function _GuildPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn10 = _loc1_;
         _loc1_.dataField = "leaderName";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn10",_GuildPanel_DataGridColumn10);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeNameBtn() : RoundedButton
      {
         return this._742881793changeNameBtn;
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
      
      public function set memLimit(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._669642010memLimit;
         if(_loc2_ !== param1)
         {
            this._669642010memLimit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"memLimit",_loc2_,param1));
         }
      }
      
      public function set name1(param1:TextInput) : void
      {
         var _loc2_:Object = this._104584966name1;
         if(_loc2_ !== param1)
         {
            this._104584966name1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name1",_loc2_,param1));
         }
      }
      
      public function set name2(param1:TextInput) : void
      {
         var _loc2_:Object = this._104584967name2;
         if(_loc2_ !== param1)
         {
            this._104584967name2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name2",_loc2_,param1));
         }
      }
      
      public function set memberGrid(param1:ColoredBackgroundDataGrid) : void
      {
         var _loc2_:Object = this._1341543168memberGrid;
         if(_loc2_ !== param1)
         {
            this._1341543168memberGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"memberGrid",_loc2_,param1));
         }
      }
      
      public function set name3(param1:TextInput) : void
      {
         var _loc2_:Object = this._104584968name3;
         if(_loc2_ !== param1)
         {
            this._104584968name3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name3",_loc2_,param1));
         }
      }
      
      public function set name4(param1:TextInput) : void
      {
         var _loc2_:Object = this._104584969name4;
         if(_loc2_ !== param1)
         {
            this._104584969name4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name4",_loc2_,param1));
         }
      }
      
      private function applyGridClick() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push({"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO},{"label":GamePredef.MENU_ADDF},{"label":GamePredef.GUILD_ALLOW},{"label":GamePredef.GUILD_REFUSE});
         menuPop(_loc1_,applyClickHandler);
      }
      
      public function set name6(param1:TextInput) : void
      {
         var _loc2_:Object = this._104584971name6;
         if(_loc2_ !== param1)
         {
            this._104584971name6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name6",_loc2_,param1));
         }
      }
      
      private function confirmGuildApply(param1:CloseEvent) : void
      {
         if(param1 != null && param1.detail == Alert.YES)
         {
            _core.remote.confirmGuildApply(newMemberData);
         }
      }
      
      private function _GuildPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            titleCanvas.text = param1;
         },"titleCanvas.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_Canvas1.label = param1;
         },"_GuildPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = guildName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myGuildName.text = param1;
         },"myGuildName.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = guildLeader;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myGuildLeader.text = param1;
         },"myGuildLeader.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = guildDuty;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myDuty.text = param1;
         },"myDuty.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeNameBtn.label = param1;
         },"changeNameBtn.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel4.text = param1;
         },"_GuildPanel_RoundedLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel5.text = param1;
         },"_GuildPanel_RoundedLabel5.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel6.text = param1;
         },"_GuildPanel_RoundedLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel7.text = param1;
         },"_GuildPanel_RoundedLabel7.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel8.text = param1;
         },"_GuildPanel_RoundedLabel8.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel9.text = param1;
         },"_GuildPanel_RoundedLabel9.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel10.text = param1;
         },"_GuildPanel_RoundedLabel10.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel11.text = param1;
         },"_GuildPanel_RoundedLabel11.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel12.text = param1;
         },"_GuildPanel_RoundedLabel12.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_BasicGlowButton1.label = param1;
         },"_GuildPanel_BasicGlowButton1.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canEditInfo;
         },function(param1:Boolean):void
         {
            _GuildPanel_BasicGlowButton1.enabled = param1;
         },"_GuildPanel_BasicGlowButton1.enabled");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            deleteG.label = param1;
         },"deleteG.label");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canDeleteGuild;
         },function(param1:Boolean):void
         {
            deleteG.visible = param1;
         },"deleteG.visible");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            quitG.label = param1;
         },"quitG.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !canDeleteGuild;
         },function(param1:Boolean):void
         {
            quitG.visible = param1;
         },"quitG.visible");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_BasicGlowButton4.label = param1;
         },"_GuildPanel_BasicGlowButton4.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_BasicGlowButton5.label = param1;
         },"_GuildPanel_BasicGlowButton5.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[106];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel22.text = param1;
         },"_GuildPanel_RoundedLabel22.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[107];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel23.text = param1;
         },"_GuildPanel_RoundedLabel23.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[108];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_TextArea2.text = param1;
         },"_GuildPanel_TextArea2.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_Canvas4.label = param1;
         },"_GuildPanel_Canvas4.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn1.headerText = param1;
         },"_GuildPanel_DataGridColumn1.headerText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn2.headerText = param1;
         },"_GuildPanel_DataGridColumn2.headerText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn3.headerText = param1;
         },"_GuildPanel_DataGridColumn3.headerText");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn4.headerText = param1;
         },"_GuildPanel_DataGridColumn4.headerText");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn5.headerText = param1;
         },"_GuildPanel_DataGridColumn5.headerText");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[63];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn6.headerText = param1;
         },"_GuildPanel_DataGridColumn6.headerText");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[64];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn7.headerText = param1;
         },"_GuildPanel_DataGridColumn7.headerText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel24.text = param1;
         },"_GuildPanel_RoundedLabel24.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_Canvas5.label = param1;
         },"_GuildPanel_Canvas5.label");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return pageGuildAC;
         },function(param1:Object):void
         {
            guildGrid.dataProvider = param1;
         },"guildGrid.dataProvider");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[101];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn8.headerText = param1;
         },"_GuildPanel_DataGridColumn8.headerText");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn9.headerText = param1;
         },"_GuildPanel_DataGridColumn9.headerText");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn10.headerText = param1;
         },"_GuildPanel_DataGridColumn10.headerText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn11.headerText = param1;
         },"_GuildPanel_DataGridColumn11.headerText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_Canvas6.label = param1;
         },"_GuildPanel_Canvas6.label");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            settingRankButton.label = param1;
         },"settingRankButton.label");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel26.text = param1;
         },"_GuildPanel_RoundedLabel26.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel27.text = param1;
         },"_GuildPanel_RoundedLabel27.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel28.text = param1;
         },"_GuildPanel_RoundedLabel28.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel28.toolTip = param1;
         },"_GuildPanel_RoundedLabel28.toolTip");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel29.text = param1;
         },"_GuildPanel_RoundedLabel29.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel29.toolTip = param1;
         },"_GuildPanel_RoundedLabel29.toolTip");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel30.text = param1;
         },"_GuildPanel_RoundedLabel30.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel30.toolTip = param1;
         },"_GuildPanel_RoundedLabel30.toolTip");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel31.text = param1;
         },"_GuildPanel_RoundedLabel31.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel31.toolTip = param1;
         },"_GuildPanel_RoundedLabel31.toolTip");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel32.text = param1;
         },"_GuildPanel_RoundedLabel32.text");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel32.toolTip = param1;
         },"_GuildPanel_RoundedLabel32.toolTip");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel33.text = param1;
         },"_GuildPanel_RoundedLabel33.text");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel33.toolTip = param1;
         },"_GuildPanel_RoundedLabel33.toolTip");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel34.text = param1;
         },"_GuildPanel_RoundedLabel34.text");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel35.text = param1;
         },"_GuildPanel_RoundedLabel35.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel36.text = param1;
         },"_GuildPanel_RoundedLabel36.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel37.text = param1;
         },"_GuildPanel_RoundedLabel37.text");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel38.text = param1;
         },"_GuildPanel_RoundedLabel38.text");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel39.text = param1;
         },"_GuildPanel_RoundedLabel39.text");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_Canvas7.label = param1;
         },"_GuildPanel_Canvas7.label");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn12.headerText = param1;
         },"_GuildPanel_DataGridColumn12.headerText");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn13.headerText = param1;
         },"_GuildPanel_DataGridColumn13.headerText");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn14.headerText = param1;
         },"_GuildPanel_DataGridColumn14.headerText");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_DataGridColumn15.headerText = param1;
         },"_GuildPanel_DataGridColumn15.headerText");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildPanel_RoundedLabel40.text = param1;
         },"_GuildPanel_RoundedLabel40.text");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[73] = binding;
         binding = new Binding(this,function():Object
         {
            return monthsList;
         },function(param1:Object):void
         {
            monthCombo.dataProvider = param1;
         },"monthCombo.dataProvider");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            searchBtn.label = param1;
         },"searchBtn.label");
         result[75] = binding;
         return result;
      }
      
      public function set name5(param1:TextInput) : void
      {
         var _loc2_:Object = this._104584970name5;
         if(_loc2_ !== param1)
         {
            this._104584970name5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canDuty3() : CheckBox
      {
         return this._151317971canDuty3;
      }
      
      [Bindable(event="propertyChange")]
      public function get canDuty5() : CheckBox
      {
         return this._151317969canDuty5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canDuty2() : CheckBox
      {
         return this._151317972canDuty2;
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabClick(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get canDuty6() : CheckBox
      {
         return this._151317968canDuty6;
      }
      
      private function set guildName(param1:String) : void
      {
         var _loc2_:Object = this._1848510178guildName;
         if(_loc2_ !== param1)
         {
            this._1848510178guildName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canDuty4() : CheckBox
      {
         return this._151317970canDuty4;
      }
      
      private function kickGuildMember(param1:int) : void
      {
         var id:int = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.kickGuildMember(id);
            }
         };
         Alert.show(Language.GUILDPANEL_S[104],"",Alert.YES | Alert.NO,null,func);
      }
      
      private function set canDeleteGuild(param1:Boolean) : void
      {
         var _loc2_:Object = this._637124376canDeleteGuild;
         if(_loc2_ !== param1)
         {
            this._637124376canDeleteGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDeleteGuild",_loc2_,param1));
         }
      }
      
      private function updateGuildLeader(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES && Boolean(selfGuildMemberData))
         {
            _core.remote.demiseTo(newLeaderId);
         }
      }
      
      public function set donateContrib(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._770250966donateContrib;
         if(_loc2_ !== param1)
         {
            this._770250966donateContrib = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"donateContrib",_loc2_,param1));
         }
      }
      
      public function set guildExp(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1306563286guildExp;
         if(_loc2_ !== param1)
         {
            this._1306563286guildExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildExp",_loc2_,param1));
         }
      }
      
      private function setQuitStyle() : void
      {
         quitG.setStyle("upSkin",quitG.getStyle("disabledSkin"));
      }
      
      public function set guildSlotNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1563800885guildSlotNum;
         if(_loc2_ !== param1)
         {
            this._1563800885guildSlotNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildSlotNum",_loc2_,param1));
         }
      }
      
      private function clearPage() : void
      {
         pageGuildAC.removeAll();
      }
      
      public function __quitG_click(param1:MouseEvent) : void
      {
         quitGuild();
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
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      public function __quitG_creationComplete(param1:FlexEvent) : void
      {
         setQuitStyle();
      }
      
      public function set guildLevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1470959791guildLevel;
         if(_loc2_ !== param1)
         {
            this._1470959791guildLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildLevel",_loc2_,param1));
         }
      }
      
      public function onAddGuildRank(param1:Object) : void
      {
         _dm.addNewData(GamePredef.TBL_GUILD_RANK,param1);
      }
      
      private function delGuild() : void
      {
         var _alert:Alert = null;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.delGuild();
            }
         };
         var htmlMsg:String = Language.GUILDPANEL_S[103];
         var msg:String = htmlMsg.replace(/<font(.*?)>/g,"");
         msg = msg.replace(/<\/font>/g,"");
         msg = msg.replace(/<b>/g,"");
         msg = msg.replace(/<\/b>/g,"");
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
         var tf:IUITextField = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlMsg;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function set canInfo2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._146922668canInfo2;
         if(_loc2_ !== param1)
         {
            this._146922668canInfo2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canInfo2",_loc2_,param1));
         }
      }
      
      public function set canInfo6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._146922664canInfo6;
         if(_loc2_ !== param1)
         {
            this._146922664canInfo6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canInfo6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noGuild() : Canvas
      {
         return this._2088152754noGuild;
      }
      
      public function set canInfo4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._146922666canInfo4;
         if(_loc2_ !== param1)
         {
            this._146922666canInfo4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canInfo4",_loc2_,param1));
         }
      }
      
      public function set canInfo5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._146922665canInfo5;
         if(_loc2_ !== param1)
         {
            this._146922665canInfo5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canInfo5",_loc2_,param1));
         }
      }
      
      public function onInitViewGuildP(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         this.selfGuildMemberData = null;
         this.myGuild = null;
         this.memberList = null;
         this.guildRank = null;
         this.myRank = null;
         for each(_loc2_ in param1.memberList)
         {
            if(_loc2_.cid == _core.player.id)
            {
               selfGuildMemberData = _loc2_;
               break;
            }
         }
         if(selfGuildMemberData != null)
         {
            this.myGuild = param1.myGuild;
            _core.player.guild = this.myGuild;
            _core.player.gData = this.selfGuildMemberData;
            this.memberList = param1.memberList;
            this.guildRank = param1.guildRank;
            this.applyList = param1.applyList;
            this.skillDevData = param1.skillDevData;
            if(selfGuildMemberData.rank == -1)
            {
               quitG.label = Language.GUILDPANEL_U[42];
            }
            else
            {
               quitG.label = Language.GUILDPANEL_U[39];
            }
         }
         guildMemberListUpdated = true;
         for each(_loc3_ in guildRank)
         {
            if(_loc3_.rank == selfGuildMemberData.rank)
            {
               myRank = _loc3_;
            }
         }
         updateView();
      }
      
      private function openGuildHelp() : void
      {
         var _loc1_:HelpPanel = HelpPanel(_core.view.getUI(ViewManager.PANEL_HELP));
         if(!_loc1_.visible)
         {
            _loc1_.show();
            _loc1_.selectGuildHelp();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get guildTab() : ViewStack
      {
         return this._1306549598guildTab;
      }
      
      public function set canInfo3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._146922667canInfo3;
         if(_loc2_ !== param1)
         {
            this._146922667canInfo3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canInfo3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myDuty() : RoundedLabel
      {
         return this._1060501854myDuty;
      }
      
      public function onAddGuild(param1:Object) : void
      {
         if(guildList != null)
         {
            guildList[param1.id] = param1;
            guildListUpdated = true;
         }
      }
      
      private function set guildDuty(param1:String) : void
      {
         var _loc2_:Object = this._1848788631guildDuty;
         if(_loc2_ !== param1)
         {
            this._1848788631guildDuty = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildDuty",_loc2_,param1));
         }
      }
      
      public function set settingRankInfo(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._840150678settingRankInfo;
         if(_loc2_ !== param1)
         {
            this._840150678settingRankInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"settingRankInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get guildLeader() : String
      {
         return this._1644260060guildLeader;
      }
      
      private function guildSetting() : void
      {
         var _loc1_:Object = null;
         if(!myRank)
         {
         }
         for each(_loc1_ in guildRank)
         {
            if(_loc1_.rank > 1 && _loc1_.rank < 6)
            {
               this["canAdd" + _loc1_.rank].selected = _loc1_.canAdd == 1 ? true : false;
               this["canQuest" + _loc1_.rank].selected = _loc1_.canQuest == 1 ? true : false;
               this["canSlot" + _loc1_.rank].selected = _loc1_.canSlot == 1 ? true : false;
               this["canInfo" + _loc1_.rank].selected = _loc1_.canInfo == 1 ? true : false;
               this["canDel" + _loc1_.rank].selected = _loc1_.canDel == 1 ? true : false;
               this["canDuty" + _loc1_.rank].selected = _loc1_.canDuty == 1 ? true : false;
            }
            this["name" + _loc1_.rank].text = _loc1_.name;
         }
         if(Boolean(selfGuildMemberData) && selfGuildMemberData.rank == 1)
         {
            settingRankInfo.htmlText = GamePredef.GUILD_ISLEADER;
            settingRankButton.visible = true;
         }
         else
         {
            settingRankInfo.htmlText = GamePredef.GUILD_ISNOTLEADER;
            settingRankButton.visible = false;
         }
      }
      
      public function set memNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1077788303memNum;
         if(_loc2_ !== param1)
         {
            this._1077788303memNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"memNum",_loc2_,param1));
         }
      }
      
      private function quitGuild() : void
      {
         var func:Function = null;
         var htmlMsg:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         if(selfGuildMemberData)
         {
            if(Boolean(myRank) && ToolKit.isEqual(myRank.rank,1))
            {
               _core.sysMsg(Language.GUILDPANEL_S[11]);
               return;
            }
            func = function(param1:CloseEvent):void
            {
               if(!param1 || param1.detail == Alert.YES)
               {
                  _core.remote.quitGuild(selfGuildMemberData.id);
               }
            };
            if(selfGuildMemberData.rank == -1)
            {
               func(null);
            }
            else
            {
               htmlMsg = Language.GUILDPANEL_S[105];
               msg = htmlMsg.replace(/<font(.*?)>/g,"");
               msg = msg.replace(/<\/font>/g,"");
               msg = msg.replace(/<b>/g,"");
               msg = msg.replace(/<\/b>/g,"");
               _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
               tf = _alert.mx_internal::alertForm.mx_internal::textField;
               tf.htmlText = htmlMsg;
               tf.filters = GamePredef.FILTER_TEXT1;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get memLimit() : RoundedLabel
      {
         return this._669642010memLimit;
      }
      
      private function tabClick(param1:uint) : void
      {
         tabBtn0.selected = false;
         tabBtn1.selected = false;
         tabBtn2.selected = false;
         tabBtn3.selected = false;
         tabBtn4.selected = false;
         this["tabBtn" + param1].selected = true;
         guildTab.selectedIndex = param1;
         if(param1 == 2)
         {
            searchText.visible = true;
            monthCombo.visible = true;
            searchBtn.visible = true;
         }
         else
         {
            searchText.visible = false;
            monthCombo.visible = false;
            searchBtn.visible = false;
         }
      }
      
      public function set canDel2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549292407canDel2;
         if(_loc2_ !== param1)
         {
            this._549292407canDel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDel2",_loc2_,param1));
         }
      }
      
      public function set canDel3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549292408canDel3;
         if(_loc2_ !== param1)
         {
            this._549292408canDel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDel3",_loc2_,param1));
         }
      }
      
      public function set canDel4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549292409canDel4;
         if(_loc2_ !== param1)
         {
            this._549292409canDel4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDel4",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      public function onGetGuildMember(param1:Object) : void
      {
         guildMemberListUpdated = true;
         this.memberList = param1;
         if(tabBtn1.selected)
         {
            updateGuildMemberView();
         }
      }
      
      public function set canQuest2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._24161408canQuest2;
         if(_loc2_ !== param1)
         {
            this._24161408canQuest2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canQuest2",_loc2_,param1));
         }
      }
      
      public function set hasGuild(param1:Canvas) : void
      {
         var _loc2_:Object = this._118704505hasGuild;
         if(_loc2_ !== param1)
         {
            this._118704505hasGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasGuild",_loc2_,param1));
         }
      }
      
      public function set canQuest3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._24161407canQuest3;
         if(_loc2_ !== param1)
         {
            this._24161407canQuest3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canQuest3",_loc2_,param1));
         }
      }
      
      public function set canQuest4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._24161406canQuest4;
         if(_loc2_ !== param1)
         {
            this._24161406canQuest4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canQuest4",_loc2_,param1));
         }
      }
      
      public function set canDel6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549292411canDel6;
         if(_loc2_ !== param1)
         {
            this._549292411canDel6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDel6",_loc2_,param1));
         }
      }
      
      public function set canQuest5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._24161405canQuest5;
         if(_loc2_ !== param1)
         {
            this._24161405canQuest5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canQuest5",_loc2_,param1));
         }
      }
      
      private function guildMenuHandler(param1:MenuEvent) : *
      {
         if(param1.label == Language.GUILDPANEL_U[1])
         {
            initView();
         }
         else if(param1.label == Language.GUILDPANEL_U[0])
         {
            btnEditInfoClick();
         }
         else if(param1.label == Language.GUILDPANEL_U[2])
         {
            _core.view.getUI(ViewManager.PANEL_ADDGUILD).visible = true;
         }
         else if(param1.label == Language.GUILDPANEL_U[3])
         {
            quitGuild();
         }
         else if(param1.label == Language.GUILDPANEL_U[4])
         {
            delGuild();
         }
         else if(param1.label == Language.GUILDPANEL_U[16])
         {
            if(!ToolKit.isEqual(_core.lineInfo.guild,1))
            {
               Alert.show(Language.GUILDPANEL_U[25],"");
            }
            else
            {
               showContribPanel();
            }
         }
         else if(param1.label == Language.GUILDPANEL_U[17])
         {
            if(!ToolKit.isEqual(_core.lineInfo.guild,1))
            {
               Alert.show(Language.GUILDPANEL_U[25],"");
            }
            else
            {
               showGuildWarehousePanel();
            }
         }
         else if(param1.label == Language.GUILDPANEL_U[18])
         {
            guildMMLimitUp();
         }
         else if(param1.label == Language.GUILDPANEL_U[19])
         {
            guildBagSlotUp();
         }
         else if(param1.label == Language.GUILDPANEL_U[20])
         {
            guildLevelUp();
         }
      }
      
      public function set canQuest6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._24161404canQuest6;
         if(_loc2_ !== param1)
         {
            this._24161404canQuest6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canQuest6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name4() : TextInput
      {
         return this._104584969name4;
      }
      
      [Bindable(event="propertyChange")]
      public function get name5() : TextInput
      {
         return this._104584970name5;
      }
      
      public function set canDel5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549292410canDel5;
         if(_loc2_ !== param1)
         {
            this._549292410canDel5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canDel5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myGuildInfo() : TextArea
      {
         return this._447179019myGuildInfo;
      }
      
      public function updateView() : void
      {
         var _loc1_:String = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(this.visible && guildTab.selectedIndex == 2)
         {
            showGuildList();
         }
         if(this.visible && guildTab.selectedIndex == 1)
         {
            showGuildMemberList();
         }
         updateButtonBar();
         updateGuildInfoView();
         organizeTabVisibility();
         updateGuildApplyListView();
         updateRankView();
         if(myGuild)
         {
            _loc1_ = myGuild.name;
            if((_loc1_.indexOf(Language.GUILDPANEL_S[1]) >= 0 || _loc1_.indexOf("☆") > 0) && selfGuildMemberData.rank == 1)
            {
               changeNameBtn.visible = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name3() : TextInput
      {
         return this._104584968name3;
      }
      
      [Bindable(event="propertyChange")]
      public function get monthCombo() : ComboBox
      {
         return this._1654542610monthCombo;
      }
      
      [Bindable(event="propertyChange")]
      public function get name6() : TextInput
      {
         return this._104584971name6;
      }
      
      private function getExpToLevelUp() : Number
      {
         return 1000;
      }
      
      public function ___GuildPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         btnEditInfoClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get name2() : TextInput
      {
         return this._104584967name2;
      }
      
      public function onDelGuildMember(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(selfGuildMemberData)
         {
            if(!ToolKit.isEqual(param1.type,GamePredef.TYPE_REFUSE) && !ToolKit.isEqual(param1.type,GamePredef.TYPE_GIVEUP))
            {
               if(guildList != null)
               {
                  guildList[param1.gid]["memberNumber"] = Number(guildList[param1.gid]["memberNumber"]) - 1;
                  guildListUpdated = true;
               }
            }
            if(ToolKit.isEqual(selfGuildMemberData.id,param1.id))
            {
               _core.player.guild = null;
               _core.view.getUI(ViewManager.PANEL_GUILDWAREHOUSE).reset();
               initView();
               return;
            }
            delete memberList[param1.id];
            for(_loc2_ in applyList)
            {
               if(ToolKit.isEqual(applyList[_loc2_].id,param1.id))
               {
                  delete applyList[_loc2_];
               }
            }
            guildMemberListUpdated = true;
         }
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get searchText() : TextInput
      {
         return this._710472971searchText;
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
      
      public function set myGuildLeader(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._164888176myGuildLeader;
         if(_loc2_ !== param1)
         {
            this._164888176myGuildLeader = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myGuildLeader",_loc2_,param1));
         }
      }
      
      public function searchGuild() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Boolean = false;
         if(searchText.text == "")
         {
            this.updateGuildListView();
         }
         else
         {
            guildAC = new ArrayCollection();
            for each(_loc1_ in guildList)
            {
               if(_loc1_)
               {
                  _loc2_ = false;
                  if(monthCombo.selectedItem.data == 1)
                  {
                     if(_loc1_.name.indexOf(searchText.text) >= 0 || searchText.text == "")
                     {
                        _loc2_ = true;
                     }
                  }
                  else if(monthCombo.selectedItem.data == 0)
                  {
                     if(_loc1_.id == searchText.text || searchText.text == "")
                     {
                        _loc2_ = true;
                     }
                  }
                  if(_loc2_)
                  {
                     guildAC.addItem({
                        "id":Number(_loc1_.id),
                        "name":_loc1_.name,
                        "leaderName":_loc1_.ln,
                        "leaderId":_loc1_.cid,
                        "memberNumber":_loc1_.memberNumber
                     });
                  }
               }
            }
            initPageSelector();
            guildListUpdated = false;
         }
      }
      
      private function applyClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:String = "";
         if(guildTab.selectedIndex != 4)
         {
            return;
         }
         if(param1.index == 0)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(applyGrid.selectedItem.name);
         }
         else if(param1.index == 1)
         {
            ChatPanelUtil.createChatPanel(applyGrid.selectedItem.id);
         }
         else if(param1.index == 2)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(applyGrid.selectedItem.id);
         }
         else if(param1.index == 3)
         {
            _core.addFriend(applyGrid.selectedItem.name);
         }
         else if(param1.label == GamePredef.GUILD_ALLOW)
         {
            newMemberData = new Object();
            newMemberData.tableId = applyGrid.selectedItem.tableId;
            newMemberData.newData = 6;
            newMemberData.updateType = "rank";
            _loc2_ = Language.GUILDPANEL_S[2];
            _loc2_ = _loc2_.replace("{name}",applyGrid.selectedItem.name);
            Alert.show(_loc2_,"",Alert.YES | Alert.NO,this,confirmGuildApply);
         }
         else if(param1.label == GamePredef.GUILD_REFUSE)
         {
            refuseGuildMember(applyGrid.selectedItem.tableId);
         }
      }
      
      public function __settingRankButton_click(param1:MouseEvent) : void
      {
         Alert.show(Language.GUILDPANEL_S[34],"",3,this,updateGuildRank);
      }
      
      [Bindable(event="propertyChange")]
      private function get canDeleteGuild() : Boolean
      {
         return this._637124376canDeleteGuild;
      }
      
      public function updateGuildListView() : void
      {
         var _loc1_:Object = null;
         guildAC = new ArrayCollection();
         for each(_loc1_ in guildList)
         {
            guildAC.addItem({
               "id":Number(_loc1_.id),
               "name":_loc1_.name,
               "leaderName":_loc1_.ln,
               "leaderId":_loc1_.cid,
               "memberNumber":_loc1_.memberNumber
            });
         }
         initPageSelector();
         guildListUpdated = false;
      }
      
      public function updateGuildInfoView() : void
      {
         if(selfGuildMemberData != null && selfGuildMemberData.rank != -1)
         {
            if(myGuild == null)
            {
               return;
            }
            setNormalGuildInfoView();
         }
         else if(selfGuildMemberData != null && selfGuildMemberData.rank == -1)
         {
            setWaitGuildInfoView();
         }
         else if(selfGuildMemberData == null)
         {
            setNoGuildInfoView();
         }
      }
      
      private function guildGridClick() : void
      {
         menuPop([{"label":GamePredef.GUILD_JOIN},{"label":GamePredef.GUILD_LEADERINFO}],menuClickHandler);
      }
      
      [Bindable(event="propertyChange")]
      public function get name1() : TextInput
      {
         return this._104584966name1;
      }
      
      public function set searchBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1778179988searchBtn;
         if(_loc2_ !== param1)
         {
            this._1778179988searchBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchBtn",_loc2_,param1));
         }
      }
      
      public function set canAdd2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549201825canAdd2;
         if(_loc2_ !== param1)
         {
            this._549201825canAdd2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAdd2",_loc2_,param1));
         }
      }
      
      public function set canAdd4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549201827canAdd4;
         if(_loc2_ !== param1)
         {
            this._549201827canAdd4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAdd4",_loc2_,param1));
         }
      }
      
      public function set canAdd5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549201828canAdd5;
         if(_loc2_ !== param1)
         {
            this._549201828canAdd5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAdd5",_loc2_,param1));
         }
      }
      
      public function set canAdd6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549201829canAdd6;
         if(_loc2_ !== param1)
         {
            this._549201829canAdd6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAdd6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get donateContrib() : RoundedLabel
      {
         return this._770250966donateContrib;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildLevel() : RoundedLabel
      {
         return this._1470959791guildLevel;
      }
      
      public function set canAdd3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._549201826canAdd3;
         if(_loc2_ !== param1)
         {
            this._549201826canAdd3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAdd3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canInfo4() : CheckBox
      {
         return this._146922666canInfo4;
      }
      
      [Bindable(event="propertyChange")]
      public function get canInfo5() : CheckBox
      {
         return this._146922665canInfo5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canInfo6() : CheckBox
      {
         return this._146922664canInfo6;
      }
      
      [Bindable(event="propertyChange")]
      public function get canInfo3() : CheckBox
      {
         return this._146922667canInfo3;
      }
      
      private function guildMMLimitUp() : void
      {
         if(checkIfLeader() == false)
         {
            Alert.show(Language.GUILDPANEL_U[14],"");
            return;
         }
         _core.remote.call("addMaxGuildMemberNum",null,myGuild.id);
      }
      
      public function onUpdateNumProp(param1:Object) : void
      {
         if(selfGuildMemberData == null || myGuild == null)
         {
            return;
         }
         var _loc2_:Number = Number(param1.type);
         switch(_loc2_)
         {
            case GamePredef.GUILD_EXP:
               myGuild.exp = Number(myGuild.exp) + Number(param1.num);
               updateGuildInfoView();
               break;
            case GamePredef.GUILD_MONEY:
               myGuild.money = Number(myGuild.money) + Number(param1.num);
               updateGuildInfoView();
               break;
            case GamePredef.DONATE_CONTRIB:
               if(Number(param1.cid) == Number(_core.player.id))
               {
                  selfGuildMemberData.donateContrib = Number(selfGuildMemberData.donateContrib) + Number(param1.num);
                  _core.player.gData.donateContrib = selfGuildMemberData.donateContrib;
                  updateGuildInfoView();
               }
               break;
            case GamePredef.NORMAL_CONTRIB:
               if(Number(param1.cid) == Number(_core.player.id))
               {
                  selfGuildMemberData.normalContrib = Number(selfGuildMemberData.normalContrib) + Number(param1.num);
                  _core.player.gData.normalContrib = selfGuildMemberData.normalContrib;
                  updateGuildInfoView();
               }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canInfo2() : CheckBox
      {
         return this._146922668canInfo2;
      }
      
      public function onChangeGuildName(param1:String) : void
      {
         var _loc2_:* = undefined;
         changeNameBtn.visible = false;
         if(this.myGuild != null)
         {
            this.myGuild.name = param1;
            updateGuildInfoView();
         }
         if(_core.player.guild != null)
         {
            _core.player.guild.name = param1;
         }
         if(guildList != null)
         {
            for each(_loc2_ in guildList)
            {
               if(_loc2_ != undefined)
               {
                  if(_loc2_.id == this.myGuild.id)
                  {
                     _loc2_.name = param1;
                  }
               }
            }
            guildListUpdated = true;
         }
         _core.sysMsg(String(Language.GUILDPANEL_S[102]).replace("{name}",param1));
      }
      
      private function handleHeaderRelease(param1:DataGridEvent) : void
      {
         var _loc5_:int = 0;
         param1.preventDefault();
         if(!guildAC)
         {
            return;
         }
         var _loc2_:SortField = new SortField();
         _loc2_.name = param1.dataField;
         _loc2_.numeric = true;
         if(this["desc_" + param1.dataField])
         {
            _loc2_.descending = false;
            this["desc_" + param1.dataField] = false;
         }
         else
         {
            _loc2_.descending = true;
            this["desc_" + param1.dataField] = true;
         }
         var _loc3_:Sort = new Sort();
         _loc3_.fields = [_loc2_];
         guildAC.sort = _loc3_;
         guildAC.refresh();
         var _loc4_:int = pageSelector.pageNo * PAGE_MAX_ITEM_NUM;
         if(pageSelector.pageNo == pageSelector.pageCount - 1)
         {
            _loc5_ = guildAC.length - 1;
         }
         else
         {
            _loc5_ = _loc4_ + PAGE_MAX_ITEM_NUM - 1;
         }
         pageGuildAC.removeAll();
         var _loc6_:int = _loc4_;
         while(_loc6_ <= _loc5_)
         {
            pageGuildAC.addItem(guildAC.getItemAt(_loc6_));
            _loc6_++;
         }
      }
      
      private function changeGuildName() : void
      {
         var func:Function;
         var gName:String = myGuild.name;
         if(gName.indexOf(Language.GUILDPANEL_S[14]) < 0 && selfGuildMemberData.rank != 1)
         {
            trace("不能免费改名或者没权限");
            return;
         }
         func = function(param1:String):void
         {
            var _loc2_:Number = NaN;
            var _loc3_:* = undefined;
            if(_core.haveSpecialStr(param1) || _core.haveBadWord(param1))
            {
               Alert.show(Language.GUILDPANEL_S[15],"",Alert.OK);
            }
            else if(param1.length < 2)
            {
               Alert.show(Language.GUILDPANEL_S[16],"",Alert.OK);
            }
            else if(param1.length > 10)
            {
               Alert.show(Language.GUILDPANEL_S[17],"",Alert.OK);
            }
            else
            {
               _loc2_ = 0;
               if(guildList != null)
               {
                  for each(_loc3_ in guildList)
                  {
                     if(_loc3_ != undefined)
                     {
                        if(_loc3_.name == param1)
                        {
                           _loc2_ = 1;
                        }
                     }
                  }
               }
               if(_loc2_ == 1)
               {
                  Alert.show(GamePredef.GUILD_EXISTGUILD,"",Alert.OK);
               }
               else
               {
                  _core.remote.changeGuildName(param1);
               }
            }
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.GUILDPANEL_S[18],"",func);
      }
      
      [Bindable(event="propertyChange")]
      public function get canQuest2() : CheckBox
      {
         return this._24161408canQuest2;
      }
      
      [Bindable(event="propertyChange")]
      public function get canQuest3() : CheckBox
      {
         return this._24161407canQuest3;
      }
      
      [Bindable(event="propertyChange")]
      public function get canQuest4() : CheckBox
      {
         return this._24161406canQuest4;
      }
      
      public function set normalContrib(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1068679758normalContrib;
         if(_loc2_ !== param1)
         {
            this._1068679758normalContrib = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalContrib",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canQuest5() : CheckBox
      {
         return this._24161405canQuest5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canQuest6() : CheckBox
      {
         return this._24161404canQuest6;
      }
      
      private function set pageGuildAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._792913466pageGuildAC;
         if(_loc2_ !== param1)
         {
            this._792913466pageGuildAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageGuildAC",_loc2_,param1));
         }
      }
      
      private function _GuildPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn9",_GuildPanel_DataGridColumn9);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get searchBtn() : BasicDelayButton
      {
         return this._1778179988searchBtn;
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
         var target:GuildPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuildPanelWatcherSetupUtil");
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
      
      public function set txtGuildID(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1126216770txtGuildID;
         if(_loc2_ !== param1)
         {
            this._1126216770txtGuildID = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtGuildID",_loc2_,param1));
         }
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:Number = NaN;
         if(guildTab.selectedIndex == 1)
         {
            if(!memberGrid.selectedItem)
            {
               return;
            }
            if(param1.index == 0)
            {
               _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(memberGrid.selectedItem.name);
            }
            else if(param1.index == 1)
            {
               ChatPanelUtil.createChatPanel(memberGrid.selectedItem.id);
            }
            else if(param1.index == 2)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(memberGrid.selectedItem.id);
            }
            else if(param1.index == 3)
            {
               _core.addFriend(memberGrid.selectedItem.name);
            }
            else if(param1.label == GamePredef.GUILD_KICK && memberGrid.selectedItem.rank != -1 && memberGrid.selectedItem.rank != 1 && myRank.canDel == 1)
            {
               kickGuildMember(memberGrid.selectedItem.tableId);
            }
            else if(param1.label == GamePredef.GUILD_DEMISE && memberGrid.selectedItem.rank != -1 && selfGuildMemberData.rank == 1 && _core.player.id == myGuild.cid)
            {
               Alert.show(Language.GUILDPANEL_S[4].replace("{item}",param1.item.label).replace("{name}",memberGrid.selectedItem.name),"",3,this,updateGuildLeader);
               newLeaderId = memberGrid.selectedItem.id;
            }
            else
            {
               newMemberData = new Object();
               _loc2_ = 2;
               while(_loc2_ <= 6)
               {
                  if(param1.item.rank == _loc2_)
                  {
                     newMemberData.tableId = memberGrid.selectedItem.tableId;
                     newMemberData.newData = _loc2_;
                     newMemberData.updateType = "rank";
                     Alert.show(Language.GUILDPANEL_S[6].replace("{item}",param1.item.label).replace("{name}",memberGrid.selectedItem.name),"",3,this,updateGuildMember);
                  }
                  _loc2_++;
               }
            }
         }
         else if(guildTab.selectedIndex == 2)
         {
            if(!guildGrid.selectedItem)
            {
               return;
            }
            if(param1.index == 0)
            {
               joinGuild(guildGrid.selectedItem.id);
            }
            else if(param1.index == 1)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(guildGrid.selectedItem.leaderId);
            }
         }
         Menu(param1.target).removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      [Bindable(event="propertyChange")]
      public function get canAdd3() : CheckBox
      {
         return this._549201826canAdd3;
      }
      
      [Bindable(event="propertyChange")]
      public function get canAdd4() : CheckBox
      {
         return this._549201827canAdd4;
      }
      
      private function organizeTabVisibility() : void
      {
         if(myRank == null || myRank.canAdd != 1)
         {
            if(tabBar.contains(tabBtn4))
            {
               tabBar.removeChild(tabBtn4);
            }
         }
         else if(myRank != null && myRank.canAdd == 1)
         {
            if(!tabBar.contains(tabBtn4))
            {
               tabBar.addChild(tabBtn4);
               tabBar.setChildIndex(tabBtn4,4);
            }
         }
      }
      
      public function __deleteG_click(param1:MouseEvent) : void
      {
         delGuild();
      }
      
      [Bindable(event="propertyChange")]
      public function get canAdd5() : CheckBox
      {
         return this._549201828canAdd5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canAdd6() : CheckBox
      {
         return this._549201829canAdd6;
      }
      
      public function set applyGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2076042284applyGrid;
         if(_loc2_ !== param1)
         {
            this._2076042284applyGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"applyGrid",_loc2_,param1));
         }
      }
      
      public function set guildGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1848702503guildGrid;
         if(_loc2_ !== param1)
         {
            this._1848702503guildGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildGrid",_loc2_,param1));
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      public function getGuildPrivateSkillData(param1:Function) : void
      {
         _core.remote.call("getGuildPrivateSkillData",new Responder(param1));
      }
      
      public function set quitG(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._107947992quitG;
         if(_loc2_ !== param1)
         {
            this._107947992quitG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quitG",_loc2_,param1));
         }
      }
      
      public function set titleCanvas(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._41312720titleCanvas;
         if(_loc2_ !== param1)
         {
            this._41312720titleCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleCanvas",_loc2_,param1));
         }
      }
      
      private function refuseGuildMember(param1:int) : void
      {
         _core.remote.refuseGuildMember(param1);
      }
      
      public function onDemise(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(myGuild != null && myGuild.id == param1.gid)
         {
            if(selfGuildMemberData.cid == param1.newCid)
            {
               selfGuildMemberData.rank = 1;
               for each(_loc3_ in guildRank)
               {
                  if(_loc3_.rank == 1)
                  {
                     myRank = _loc3_;
                     break;
                  }
               }
            }
            else if(selfGuildMemberData.cid == param1.oldCid)
            {
               selfGuildMemberData.rank = 6;
               for each(_loc3_ in guildRank)
               {
                  if(_loc3_.rank == 6)
                  {
                     myRank = _loc3_;
                     break;
                  }
               }
            }
            myGuild.cid = param1.newCid;
            myGuild.ln = param1.ln;
            for each(_loc2_ in memberList)
            {
               if(_loc2_.cid == param1.newCid)
               {
                  _loc2_.rank = 1;
               }
               else if(_loc2_.cid == param1.oldCid)
               {
                  _loc2_.rank = 6;
               }
            }
            guildMemberListUpdated = true;
         }
         if(guildList != null)
         {
            for each(_loc4_ in guildList)
            {
               if(_loc4_.id == param1.gid)
               {
                  _loc4_.cid = param1.newCid;
                  _loc4_.ln = param1.ln;
                  break;
               }
            }
            guildListUpdated = true;
         }
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get canAdd2() : CheckBox
      {
         return this._549201825canAdd2;
      }
      
      public function onUpdateGuildMember(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(selfGuildMemberData != null)
         {
            for each(_loc2_ in memberList)
            {
               if(_loc2_.id == param1.tableId)
               {
                  _loc2_[param1.updateType] = param1.newData;
               }
            }
            guildMemberListUpdated = true;
            if(param1.updateType == "rank")
            {
               if(ToolKit.isEqual(param1.tableId,selfGuildMemberData.id))
               {
                  selfGuildMemberData.rank = param1.newData;
                  for each(_loc3_ in guildRank)
                  {
                     if(ToolKit.isEqual(_loc3_.rank,selfGuildMemberData.rank))
                     {
                        myRank = _loc3_;
                     }
                  }
               }
            }
            updateView();
         }
      }
      
      private function set canEditInfo(param1:Boolean) : void
      {
         var _loc2_:Object = this._1023362504canEditInfo;
         if(_loc2_ !== param1)
         {
            this._1023362504canEditInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canEditInfo",_loc2_,param1));
         }
      }
      
      private function _GuildPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GuildPanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "id";
         BindingManager.executeBindings(this,"_GuildPanel_DataGridColumn8",_GuildPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function ___GuildPanel_Canvas4_show(param1:FlexEvent) : void
      {
         showGuildMemberList();
      }
      
      [Bindable(event="propertyChange")]
      public function get applyGrid() : DataGrid
      {
         return this._2076042284applyGrid;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.initViewGuildP();
         guildGrid.addEventListener(DataGridEvent.HEADER_RELEASE,handleHeaderRelease);
         searchText.visible = false;
         monthCombo.visible = false;
         searchBtn.visible = false;
         if(guildTab.selectedIndex == 2)
         {
            showGuildList();
            searchText.visible = true;
            monthCombo.visible = true;
            searchBtn.visible = true;
         }
         else if(guildTab.selectedIndex == 1)
         {
            showGuildMemberList();
         }
         titleCanvas.btnHelp.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtGuildID() : RoundedLabel
      {
         return this._1126216770txtGuildID;
      }
      
      [Bindable(event="propertyChange")]
      public function get quitG() : BasicGlowButton
      {
         return this._107947992quitG;
      }
      
      private function updateGuildMember(param1:CloseEvent = null) : void
      {
         if(Boolean(param1) && param1.detail == Alert.YES)
         {
            _core.remote.updateGuildMember(newMemberData);
         }
         if(param1 == null)
         {
            _core.remote.updateGuildMember(newMemberData);
         }
      }
      
      private function rowColors(param1:Object, param2:Number, param3:Number, param4:uint) : uint
      {
         var _loc5_:uint = param4;
         if(param1 != null && param1.status == GamePredef.GUILD_ONLINE)
         {
            _loc5_ = GamePredef.GUILD_ONLINE_COLOR;
         }
         if(param1 != null && param1.status == GamePredef.GUILD_OFFLINE)
         {
            _loc5_ = GamePredef.GUILD_OFFLINE_COLOR;
         }
         if(param1 != null && param1.duty == GamePredef.GUILD_UNVERIFIED)
         {
            _loc5_ = GamePredef.GUILD_ONCHECK_COLOR;
         }
         return _loc5_;
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteG() : BasicGlowButton
      {
         return this._1550462972deleteG;
      }
      
      private function updateGuildRank(param1:CloseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(Boolean(myRank) && ToolKit.isEqual(myRank.rank,1))
         {
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               if(Boolean(this["name" + _loc2_]) && _core.haveBadWord(this["name" + _loc2_].text))
               {
                  return;
               }
               _loc2_++;
            }
            if(param1.detail == Alert.YES)
            {
               _loc3_ = new Object();
               for each(_loc4_ in guildRank)
               {
                  if(_loc4_.rank > 1 && _loc4_.rank < 6)
                  {
                     _loc3_["canAdd" + _loc4_.rank] = this["canAdd" + _loc4_.rank].selected ? 1 : 0;
                     _loc3_["canQuest" + _loc4_.rank] = this["canQuest" + _loc4_.rank].selected ? 1 : 0;
                     _loc3_["canSlot" + _loc4_.rank] = this["canSlot" + _loc4_.rank].selected ? 1 : 0;
                     _loc3_["canInfo" + _loc4_.rank] = this["canInfo" + _loc4_.rank].selected ? 1 : 0;
                     _loc3_["canDel" + _loc4_.rank] = this["canDel" + _loc4_.rank].selected ? 1 : 0;
                     _loc3_["canDuty" + _loc4_.rank] = this["canDuty" + _loc4_.rank].selected ? 1 : 0;
                  }
                  _loc3_["rankId" + _loc4_.rank] = _loc4_.id;
                  _loc3_["name" + _loc4_.rank] = this["name" + _loc4_.rank].text;
               }
               _core.remote.updateGuildRank(_loc3_);
            }
            else
            {
               updateView();
            }
         }
         else
         {
            _core.sysMidNote(Language.GUILDPANEL_S[7]);
         }
      }
      
      public function set deleteG(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1550462972deleteG;
         if(_loc2_ !== param1)
         {
            this._1550462972deleteG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteG",_loc2_,param1));
         }
      }
   }
}

