package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DailySignInPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1757036852numberleft37:Image;
      
      private var _2071124149surpriseDayItem1:ItemSlot;
      
      private var resNumber:Array = [4130220000885,4130220000886,4130220000887,4130220000888,4130220000889,4130220000890,4130220000891,4130220000892,4130220000896,4130220000895];
      
      private var _496582453imbackground36:Image;
      
      private var _496582422imbackground26:Image;
      
      private var _221232623numberright31:Image;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _2023086287imsignin7:Image;
      
      private var _2023086291imsignin3:Image;
      
      private var _1932526115numberright6:Image;
      
      private var dateNow:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1708834411imsignin16:Image;
      
      private var _875332321consumeLimit:RoundedLabel;
      
      private var _1032778572critNum:Number = 0;
      
      private var _221232617numberright37:Image;
      
      private var _1757036786numberleft13:Image;
      
      private var _1757036846numberleft31:Image;
      
      private var _221232654numberright21:Image;
      
      private var _1757036818numberleft24:Image;
      
      private var _496582387imbackground12:Image;
      
      public var _DailySignInPanel_Image1:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var _1757036821numberleft27:Image;
      
      private var _221232592numberright41:Image;
      
      private var _221232680numberright16:Image;
      
      private var _496582455imbackground38:Image;
      
      private var _496582424imbackground28:Image;
      
      private var _2094228774imbackground8:Image;
      
      private var _1708834441imsignin25:Image;
      
      private var _1708834414imsignin19:Image;
      
      private var _221232648numberright27:Image;
      
      private var _221232685numberright11:Image;
      
      private var _1932526109numberright0:Image;
      
      private var _893311866textSurpriseDay:Text;
      
      private var _1708834406imsignin11:Image;
      
      private var _749415270numberleft6:Image;
      
      private var _496582391imbackground16:Image;
      
      private var _1932526112numberright3:Image;
      
      private var _2094228768imbackground2:Image;
      
      private var _1708834471imsignin34:Image;
      
      private var _1708834444imsignin28:Image;
      
      private var _1757036783numberleft10:Image;
      
      private var _749415273numberleft9:Image;
      
      private var _1757036815numberleft21:Image;
      
      private var _221232679numberright17:Image;
      
      private var _1914146189lbNowCirtical:Label;
      
      private var _496582389imbackground14:Image;
      
      private var _1708834436imsignin20:Image;
      
      private var _221232621numberright33:Image;
      
      private var _1708834409imsignin14:Image;
      
      private var _1757036854numberleft39:Image;
      
      private var _749415265numberleft1:Image;
      
      private var _1708834474imsignin37:Image;
      
      public var _DailySignInPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _221232615numberright39:Image;
      
      private var _221232652numberright23:Image;
      
      private var _749415268numberleft4:Image;
      
      private var _1708834439imsignin23:Image;
      
      private var _860835146lbNowData:Label;
      
      private var _496582450imbackground33:Image;
      
      private var _496582393imbackground18:Image;
      
      private var _2023086288imsignin6:Image;
      
      private var _1932526117numberright8:Image;
      
      private var _2023086292imsignin2:Image;
      
      private var _2094228772imbackground6:Image;
      
      private var _1757036876numberleft40:Image;
      
      public var _DailySignInPanel_BasicGlowButton5:BasicGlowButton;
      
      private var _1757036848numberleft33:Image;
      
      private var _221232646numberright29:Image;
      
      private var _221232683numberright13:Image;
      
      private var _1757036788numberleft15:Image;
      
      private var _496582479imbackground41:Image;
      
      private var _496582448imbackground31:Image;
      
      private var _496582417imbackground21:Image;
      
      private var _1708834469imsignin32:Image;
      
      private var _1757036791numberleft18:Image;
      
      private var _455359180everyDayItem:ItemSlot;
      
      private var _1757036851numberleft36:Image;
      
      private var _1757036823numberleft29:Image;
      
      private var _2094228766imbackground0:Image;
      
      private var _1708834410imsignin15:Image;
      
      private var _221232677numberright19:Image;
      
      private var _1708834499imsignin41:Image;
      
      private var _221232624numberright30:Image;
      
      private var _1932526114numberright5:Image;
      
      private var _496582452imbackground35:Image;
      
      private var _496582421imbackground25:Image;
      
      private var _1708834440imsignin24:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1708834413imsignin18:Image;
      
      private var _1757036785numberleft12:Image;
      
      private var _1757036845numberleft30:Image;
      
      private var _1757036817numberleft23:Image;
      
      private var _221232650numberright25:Image;
      
      private var _2071124148surpriseDayItem2:ItemSlot;
      
      private var _2071124146surpriseDayItem4:ItemSlot;
      
      public var _DailySignInPanel_Label1:Label;
      
      private var _221232618numberright36:Image;
      
      private var _1708834405imsignin10:Image;
      
      private var _221232655numberright20:Image;
      
      private var _939184532buttonSignIn:Button;
      
      private var _496582419imbackground23:Image;
      
      private var _1757036820numberleft26:Image;
      
      private var _1708834470imsignin33:Image;
      
      private var _2023086285imsignin9:Image;
      
      private var _2094228770imbackground4:Image;
      
      private var _1622748191textLuckyDay:Text;
      
      private var _1708834443imsignin27:Image;
      
      private var _749415271numberleft7:Image;
      
      private var _221232593numberright40:Image;
      
      private var _496582386imbackground11:Image;
      
      private var _221232681numberright15:Image;
      
      private var _2094228775imbackground9:Image;
      
      private var _1708834408imsignin13:Image;
      
      private var _221232649numberright26:Image;
      
      private var _221232686numberright10:Image;
      
      private var _1932526111numberright2:Image;
      
      private var _496582454imbackground37:Image;
      
      private var _1708834473imsignin36:Image;
      
      private var _496582423imbackground27:Image;
      
      private var _1757036814numberleft20:Image;
      
      private var _2094228769imbackground3:Image;
      
      private var _749415266numberleft2:Image;
      
      private var _2023086289imsignin5:Image;
      
      private var _2023086293imsignin1:Image;
      
      private var _1708834438imsignin22:Image;
      
      private var _221232622numberright32:Image;
      
      private var _1757036853numberleft38:Image;
      
      private var _496582390imbackground15:Image;
      
      private var _749415269numberleft5:Image;
      
      private var _1708834476imsignin39:Image;
      
      private var _496582388imbackground13:Image;
      
      private var _1708834468imsignin31:Image;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _221232616numberright38:Image;
      
      private var _1932526116numberright7:Image;
      
      private var firstDay:Number = 0;
      
      private var _221232653numberright22:Image;
      
      private var _2043717127buttonGetAward:BasicGlowButton;
      
      private var _496582425imbackground29:Image;
      
      private var _496582456imbackground39:Image;
      
      private var _1757036787numberleft14:Image;
      
      private var _1757036847numberleft32:Image;
      
      private var _1757036819numberleft25:Image;
      
      private var _1708834498imsignin40:Image;
      
      private var _2094228773imbackground7:Image;
      
      private var _1757036790numberleft17:Image;
      
      private var _1757036850numberleft35:Image;
      
      private var _221232647numberright28:Image;
      
      private var _221232684numberright12:Image;
      
      private var _1757036822numberleft28:Image;
      
      private var _496582392imbackground17:Image;
      
      private var _1708834412imsignin17:Image;
      
      private var _2023086286imsignin8:Image;
      
      private var dailySignInActConf:Object = {};
      
      private var _2023086290imsignin4:Image;
      
      private var _1790492452btnUpCirtical:BasicGlowButton;
      
      private var _496582478imbackground40:Image;
      
      private var _2094228767imbackground1:Image;
      
      private var _496582447imbackground30:Image;
      
      private var _496582416imbackground20:Image;
      
      private var _221232620numberright34:Image;
      
      private var _1932526113numberright4:Image;
      
      private var _221232678numberright18:Image;
      
      private var _1708834442imsignin26:Image;
      
      private var _1757036784numberleft11:Image;
      
      private var _1757036816numberleft22:Image;
      
      private var _1708834407imsignin12:Image;
      
      private var _749415272numberleft8:Image;
      
      private var _221232651numberright24:Image;
      
      private var _496582451imbackground34:Image;
      
      private var _496582420imbackground24:Image;
      
      private var _496582394imbackground19:Image;
      
      private var _2023086294imsignin0:Image;
      
      public var _DailySignInPanel_Text3:Text;
      
      private var _1708834472imsignin35:Image;
      
      private var _1878711376playRule:Text;
      
      private var _1708834445imsignin29:Image;
      
      private var dailySignInActData:Object = {};
      
      private var _749415264numberleft0:Image;
      
      private var _496582449imbackground32:Image;
      
      private var _496582418imbackground22:Image;
      
      private var _1708834437imsignin21:Image;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _221232619numberright35:Image;
      
      private var _2094228771imbackground5:Image;
      
      private var _1932526110numberright1:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _221232682numberright14:Image;
      
      private var weakArr:Array = ["","1","2","3","4","5","6","7"];
      
      private var _749415267numberleft3:Image;
      
      private var _1932526118numberright9:Image;
      
      private var _1708834475imsignin38:Image;
      
      private var _1757036877numberleft41:Image;
      
      private var _1757036789numberleft16:Image;
      
      private var _496582385imbackground10:Image;
      
      private var _2071124147surpriseDayItem3:ItemSlot;
      
      private var _1757036849numberleft34:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _1708834467imsignin30:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":710,
               "height":470,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_DailySignInPanel_BasicTitleCanvas1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn0",
                  "events":{"click":"__bangBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "labelPlacement":"bottom",
                        "width":70,
                        "x":20,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn1",
                  "events":{"click":"__bangBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":70,
                        "x":89,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"consumeLimit",
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.textAlign = "right";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":35,
                        "text":""
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":55,
                        "width":690,
                        "height":390,
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":690,
                                 "height":390,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_DailySignInPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":441,
                                          "y":10,
                                          "width":245,
                                          "height":370,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DailySignInPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"everyDayItem",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"SlotDailySignIn",
                                                   "x":171,
                                                   "y":10,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"textSurpriseDay",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":58,
                                                   "width":225,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"surpriseDayItem5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"SlotDailySignIn",
                                                   "x":202,
                                                   "y":106,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"surpriseDayItem4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"SlotDailySignIn",
                                                   "x":154,
                                                   "y":106,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"surpriseDayItem3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"SlotDailySignIn",
                                                   "x":106,
                                                   "y":106,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"surpriseDayItem2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"SlotDailySignIn",
                                                   "x":58,
                                                   "y":106,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"surpriseDayItem1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"SlotDailySignIn",
                                                   "x":10,
                                                   "y":106,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"textLuckyDay",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":158,
                                                   "width":225,
                                                   "height":88
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"buttonGetAward",
                                             "events":{"click":"__buttonGetAward_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":92.75,
                                                   "y":230,
                                                   "width":69.5,
                                                   "height":32
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"_DailySignInPanel_Text3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":278,
                                                   "width":225,
                                                   "height":39
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"buttonSignIn",
                                             "events":{"click":"__buttonSignIn_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":52.5,
                                                   "y":317,
                                                   "styleName":"dailySignInDoBtn",
                                                   "width":140,
                                                   "height":53
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lbNowData",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 15;
                                       this.textAlign = "center";
                                       this.color = 16382208;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":130,
                                          "y":10,
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lbNowCirtical",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.textAlign = "right";
                                       this.color = 16382208;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":360
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnUpCirtical",
                                    "events":{"click":"__btnUpCirtical_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":232.75,
                                          "y":348,
                                          "width":91.5,
                                          "height":32
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_DailySignInPanel_BasicGlowButton5",
                                    "events":{"click":"___DailySignInPanel_BasicGlowButton5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":347.5,
                                          "y":348,
                                          "width":69.5,
                                          "height":32
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":77,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":117,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":157,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":197,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground30",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground31",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground32",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground33",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground34",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":237,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground35",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground36",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground37",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground38",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground39",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground40",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imbackground41",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":365,
                                          "y":277,
                                          "width":53,
                                          "height":37
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":203,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":313,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":368,
                                          "y":72,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":203,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":313,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":368,
                                          "y":112,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":203,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":313,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":368,
                                          "y":152,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":203,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":313,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":368,
                                          "y":192,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin30",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin31",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":203,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin32",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin33",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":313,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin34",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":368,
                                          "y":232,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin35",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin36",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin37",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin38",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":203,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin39",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":258,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin40",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":313,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imsignin41",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":368,
                                          "y":272,
                                          "width":46,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":59,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":169,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":212,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":224,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":267,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":279,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":322,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":334,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":377,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389,
                                          "y":87,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":59,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":169,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":212,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":224,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":267,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":279,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":322,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":334,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":377,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389,
                                          "y":127,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":59,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":169,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":212,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":224,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":267,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":279,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":322,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":334,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":377,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389,
                                          "y":167,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":59,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":169,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":212,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":224,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":267,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":279,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":322,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":334,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":377,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389,
                                          "y":207,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":59,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft30",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright30",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":169,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft31",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":212,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright31",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":224,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft32",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":267,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright32",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":279,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft33",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":322,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright33",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":334,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft34",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":377,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright34",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389,
                                          "y":247,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft35",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright35",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":59,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft36",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright36",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft37",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright37",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":169,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft38",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":212,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright38",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":224,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft39",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":267,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright39",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":279,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft40",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":322,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright40",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":334,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberleft41",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":377,
                                          "y":287,
                                          "width":14,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"numberright41",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389,
                                          "y":287,
                                          "width":14,
                                          "height":18
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
                                 "styleName":"CanvasBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":690,
                                 "height":390,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"playRule",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":670,
                                          "height":370
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
      
      private var _1757036792numberleft19:Image;
      
      private var _2071124145surpriseDayItem5:ItemSlot;
      
      public function DailySignInPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 710;
         this.height = 470;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___DailySignInPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailySignInPanel._watcherSetupUtil = param1;
      }
      
      public function set numberright23(param1:Image) : void
      {
         var _loc2_:Object = this._221232652numberright23;
         if(_loc2_ !== param1)
         {
            this._221232652numberright23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright23",_loc2_,param1));
         }
      }
      
      public function set numberright28(param1:Image) : void
      {
         var _loc2_:Object = this._221232647numberright28;
         if(_loc2_ !== param1)
         {
            this._221232647numberright28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright28",_loc2_,param1));
         }
      }
      
      public function set textLuckyDay(param1:Text) : void
      {
         var _loc2_:Object = this._1622748191textLuckyDay;
         if(_loc2_ !== param1)
         {
            this._1622748191textLuckyDay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLuckyDay",_loc2_,param1));
         }
      }
      
      private function setBtnsEnable() : void
      {
         var _loc1_:Number = Number(dailySignInActData.getAwardTime.day) + 7 - Number(dailySignInActConf.luckyDay);
         if(dailySignInActData.getAwardTime.day > 0 && dateNow.date == dailySignInActData.getAwardTime.day && !dailySignInActData.getAwardTime.flag && Boolean(ifSignInAll(dateNow.date)))
         {
            buttonGetAward.enabled = true;
         }
         else
         {
            buttonGetAward.enabled = false;
         }
         if(dailySignInActData.actDays[dateNow.date])
         {
            buttonSignIn.enabled = false;
         }
         else
         {
            buttonSignIn.enabled = true;
         }
      }
      
      public function set numberright29(param1:Image) : void
      {
         var _loc2_:Object = this._221232646numberright29;
         if(_loc2_ !== param1)
         {
            this._221232646numberright29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright29",_loc2_,param1));
         }
      }
      
      public function set numberright21(param1:Image) : void
      {
         var _loc2_:Object = this._221232654numberright21;
         if(_loc2_ !== param1)
         {
            this._221232654numberright21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright21",_loc2_,param1));
         }
      }
      
      public function set numberright17(param1:Image) : void
      {
         var _loc2_:Object = this._221232679numberright17;
         if(_loc2_ !== param1)
         {
            this._221232679numberright17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright17",_loc2_,param1));
         }
      }
      
      public function set numberright31(param1:Image) : void
      {
         var _loc2_:Object = this._221232623numberright31;
         if(_loc2_ !== param1)
         {
            this._221232623numberright31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright31",_loc2_,param1));
         }
      }
      
      public function set numberright30(param1:Image) : void
      {
         var _loc2_:Object = this._221232624numberright30;
         if(_loc2_ !== param1)
         {
            this._221232624numberright30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright30",_loc2_,param1));
         }
      }
      
      public function set numberright34(param1:Image) : void
      {
         var _loc2_:Object = this._221232620numberright34;
         if(_loc2_ !== param1)
         {
            this._221232620numberright34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright34",_loc2_,param1));
         }
      }
      
      public function set numberright35(param1:Image) : void
      {
         var _loc2_:Object = this._221232619numberright35;
         if(_loc2_ !== param1)
         {
            this._221232619numberright35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright35",_loc2_,param1));
         }
      }
      
      public function set numberright33(param1:Image) : void
      {
         var _loc2_:Object = this._221232621numberright33;
         if(_loc2_ !== param1)
         {
            this._221232621numberright33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright33",_loc2_,param1));
         }
      }
      
      public function set numberright37(param1:Image) : void
      {
         var _loc2_:Object = this._221232617numberright37;
         if(_loc2_ !== param1)
         {
            this._221232617numberright37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright37",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textLuckyDay() : Text
      {
         return this._1622748191textLuckyDay;
      }
      
      public function set critNum(param1:Number) : void
      {
         var _loc2_:Object = this._1032778572critNum;
         if(_loc2_ !== param1)
         {
            this._1032778572critNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"critNum",_loc2_,param1));
         }
      }
      
      public function set numberright38(param1:Image) : void
      {
         var _loc2_:Object = this._221232616numberright38;
         if(_loc2_ !== param1)
         {
            this._221232616numberright38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright38",_loc2_,param1));
         }
      }
      
      public function set numberright39(param1:Image) : void
      {
         var _loc2_:Object = this._221232615numberright39;
         if(_loc2_ !== param1)
         {
            this._221232615numberright39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright39",_loc2_,param1));
         }
      }
      
      public function set numberright36(param1:Image) : void
      {
         var _loc2_:Object = this._221232618numberright36;
         if(_loc2_ !== param1)
         {
            this._221232618numberright36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright36",_loc2_,param1));
         }
      }
      
      public function set numberright1(param1:Image) : void
      {
         var _loc2_:Object = this._1932526110numberright1;
         if(_loc2_ !== param1)
         {
            this._1932526110numberright1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright1",_loc2_,param1));
         }
      }
      
      public function set numberright0(param1:Image) : void
      {
         var _loc2_:Object = this._1932526109numberright0;
         if(_loc2_ !== param1)
         {
            this._1932526109numberright0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright0",_loc2_,param1));
         }
      }
      
      public function set numberright4(param1:Image) : void
      {
         var _loc2_:Object = this._1932526113numberright4;
         if(_loc2_ !== param1)
         {
            this._1932526113numberright4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright4",_loc2_,param1));
         }
      }
      
      public function set numberright5(param1:Image) : void
      {
         var _loc2_:Object = this._1932526114numberright5;
         if(_loc2_ !== param1)
         {
            this._1932526114numberright5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright5",_loc2_,param1));
         }
      }
      
      public function set numberright32(param1:Image) : void
      {
         var _loc2_:Object = this._221232622numberright32;
         if(_loc2_ !== param1)
         {
            this._221232622numberright32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright32",_loc2_,param1));
         }
      }
      
      public function set numberright3(param1:Image) : void
      {
         var _loc2_:Object = this._1932526112numberright3;
         if(_loc2_ !== param1)
         {
            this._1932526112numberright3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright3",_loc2_,param1));
         }
      }
      
      public function set numberright2(param1:Image) : void
      {
         var _loc2_:Object = this._1932526111numberright2;
         if(_loc2_ !== param1)
         {
            this._1932526111numberright2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright2",_loc2_,param1));
         }
      }
      
      public function set numberright7(param1:Image) : void
      {
         var _loc2_:Object = this._1932526116numberright7;
         if(_loc2_ !== param1)
         {
            this._1932526116numberright7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playRule() : Text
      {
         return this._1878711376playRule;
      }
      
      public function set numberright8(param1:Image) : void
      {
         var _loc2_:Object = this._1932526117numberright8;
         if(_loc2_ !== param1)
         {
            this._1932526117numberright8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright8",_loc2_,param1));
         }
      }
      
      public function set numberright6(param1:Image) : void
      {
         var _loc2_:Object = this._1932526115numberright6;
         if(_loc2_ !== param1)
         {
            this._1932526115numberright6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright6",_loc2_,param1));
         }
      }
      
      public function set numberright40(param1:Image) : void
      {
         var _loc2_:Object = this._221232593numberright40;
         if(_loc2_ !== param1)
         {
            this._221232593numberright40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright40",_loc2_,param1));
         }
      }
      
      public function set numberright41(param1:Image) : void
      {
         var _loc2_:Object = this._221232592numberright41;
         if(_loc2_ !== param1)
         {
            this._221232592numberright41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright41",_loc2_,param1));
         }
      }
      
      public function set numberright9(param1:Image) : void
      {
         var _loc2_:Object = this._1932526118numberright9;
         if(_loc2_ !== param1)
         {
            this._1932526118numberright9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textSurpriseDay() : Text
      {
         return this._893311866textSurpriseDay;
      }
      
      public function set playRule(param1:Text) : void
      {
         var _loc2_:Object = this._1878711376playRule;
         if(_loc2_ !== param1)
         {
            this._1878711376playRule = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playRule",_loc2_,param1));
         }
      }
      
      private function getAward() : void
      {
         _core.remote.call("dailySignInActGetAward",new Responder(onDailySignInActGetAward));
      }
      
      public function set imsignin11(param1:Image) : void
      {
         var _loc2_:Object = this._1708834406imsignin11;
         if(_loc2_ !== param1)
         {
            this._1708834406imsignin11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin11",_loc2_,param1));
         }
      }
      
      public function __btnUpCirtical_click(param1:MouseEvent) : void
      {
         upCirticalProbablity();
      }
      
      public function set imsignin10(param1:Image) : void
      {
         var _loc2_:Object = this._1708834405imsignin10;
         if(_loc2_ !== param1)
         {
            this._1708834405imsignin10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin10",_loc2_,param1));
         }
      }
      
      public function set imsignin14(param1:Image) : void
      {
         var _loc2_:Object = this._1708834409imsignin14;
         if(_loc2_ !== param1)
         {
            this._1708834409imsignin14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin14",_loc2_,param1));
         }
      }
      
      public function setBtnsDailySignInAct(param1:Object) : void
      {
         dailySignInActData = param1;
         setBtnsEnable();
      }
      
      public function set imsignin15(param1:Image) : void
      {
         var _loc2_:Object = this._1708834410imsignin15;
         if(_loc2_ !== param1)
         {
            this._1708834410imsignin15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin15",_loc2_,param1));
         }
      }
      
      public function set imsignin19(param1:Image) : void
      {
         var _loc2_:Object = this._1708834414imsignin19;
         if(_loc2_ !== param1)
         {
            this._1708834414imsignin19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin19",_loc2_,param1));
         }
      }
      
      public function set imsignin18(param1:Image) : void
      {
         var _loc2_:Object = this._1708834413imsignin18;
         if(_loc2_ !== param1)
         {
            this._1708834413imsignin18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin18",_loc2_,param1));
         }
      }
      
      public function ___DailySignInPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function oninitDailySignInActConsumeLimit(param1:Number) : void
      {
         consumeLimit.text = "";
         var _loc2_:* = int(param1);
         if(_loc2_ >= 0)
         {
            consumeLimit.text = "Trong thời gian sự kiện số vàng và điểm thưởng tiêu phí tích lũy:" + _loc2_;
         }
      }
      
      public function set imsignin17(param1:Image) : void
      {
         var _loc2_:Object = this._1708834412imsignin17;
         if(_loc2_ !== param1)
         {
            this._1708834412imsignin17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin17",_loc2_,param1));
         }
      }
      
      public function set imsignin13(param1:Image) : void
      {
         var _loc2_:Object = this._1708834408imsignin13;
         if(_loc2_ !== param1)
         {
            this._1708834408imsignin13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin13",_loc2_,param1));
         }
      }
      
      public function set imsignin16(param1:Image) : void
      {
         var _loc2_:Object = this._1708834411imsignin16;
         if(_loc2_ !== param1)
         {
            this._1708834411imsignin16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin16",_loc2_,param1));
         }
      }
      
      public function set imsignin12(param1:Image) : void
      {
         var _loc2_:Object = this._1708834407imsignin12;
         if(_loc2_ !== param1)
         {
            this._1708834407imsignin12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft12() : Image
      {
         return this._1757036785numberleft12;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft13() : Image
      {
         return this._1757036786numberleft13;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft14() : Image
      {
         return this._1757036787numberleft14;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft15() : Image
      {
         return this._1757036788numberleft15;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft11() : Image
      {
         return this._1757036784numberleft11;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft19() : Image
      {
         return this._1757036792numberleft19;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft17() : Image
      {
         return this._1757036790numberleft17;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft16() : Image
      {
         return this._1757036789numberleft16;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set imsignin20(param1:Image) : void
      {
         var _loc2_:Object = this._1708834436imsignin20;
         if(_loc2_ !== param1)
         {
            this._1708834436imsignin20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin20",_loc2_,param1));
         }
      }
      
      public function set imsignin21(param1:Image) : void
      {
         var _loc2_:Object = this._1708834437imsignin21;
         if(_loc2_ !== param1)
         {
            this._1708834437imsignin21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin21",_loc2_,param1));
         }
      }
      
      public function set imsignin22(param1:Image) : void
      {
         var _loc2_:Object = this._1708834438imsignin22;
         if(_loc2_ !== param1)
         {
            this._1708834438imsignin22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin22",_loc2_,param1));
         }
      }
      
      public function set imsignin23(param1:Image) : void
      {
         var _loc2_:Object = this._1708834439imsignin23;
         if(_loc2_ !== param1)
         {
            this._1708834439imsignin23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin23",_loc2_,param1));
         }
      }
      
      public function set imsignin24(param1:Image) : void
      {
         var _loc2_:Object = this._1708834440imsignin24;
         if(_loc2_ !== param1)
         {
            this._1708834440imsignin24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin24",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft10() : Image
      {
         return this._1757036783numberleft10;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft25() : Image
      {
         return this._1757036819numberleft25;
      }
      
      public function set imsignin26(param1:Image) : void
      {
         var _loc2_:Object = this._1708834442imsignin26;
         if(_loc2_ !== param1)
         {
            this._1708834442imsignin26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin26",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft20() : Image
      {
         return this._1757036814numberleft20;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft22() : Image
      {
         return this._1757036816numberleft22;
      }
      
      public function set imsignin25(param1:Image) : void
      {
         var _loc2_:Object = this._1708834441imsignin25;
         if(_loc2_ !== param1)
         {
            this._1708834441imsignin25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin25",_loc2_,param1));
         }
      }
      
      public function set imsignin29(param1:Image) : void
      {
         var _loc2_:Object = this._1708834445imsignin29;
         if(_loc2_ !== param1)
         {
            this._1708834445imsignin29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin29",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft26() : Image
      {
         return this._1757036820numberleft26;
      }
      
      public function set imsignin27(param1:Image) : void
      {
         var _loc2_:Object = this._1708834443imsignin27;
         if(_loc2_ !== param1)
         {
            this._1708834443imsignin27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin27",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get consumeLimit() : RoundedLabel
      {
         return this._875332321consumeLimit;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground3() : Image
      {
         return this._2094228769imbackground3;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground0() : Image
      {
         return this._2094228766imbackground0;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground2() : Image
      {
         return this._2094228768imbackground2;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground4() : Image
      {
         return this._2094228770imbackground4;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground5() : Image
      {
         return this._2094228771imbackground5;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground7() : Image
      {
         return this._2094228773imbackground7;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground8() : Image
      {
         return this._2094228774imbackground8;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground1() : Image
      {
         return this._2094228767imbackground1;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft29() : Image
      {
         return this._1757036823numberleft29;
      }
      
      public function set imsignin28(param1:Image) : void
      {
         var _loc2_:Object = this._1708834444imsignin28;
         if(_loc2_ !== param1)
         {
            this._1708834444imsignin28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin28",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft21() : Image
      {
         return this._1757036815numberleft21;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground6() : Image
      {
         return this._2094228772imbackground6;
      }
      
      [Bindable(event="propertyChange")]
      public function get everyDayItem() : ItemSlot
      {
         return this._455359180everyDayItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground9() : Image
      {
         return this._2094228775imbackground9;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft27() : Image
      {
         return this._1757036821numberleft27;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft28() : Image
      {
         return this._1757036822numberleft28;
      }
      
      private function setLuckyDayCongLab() : void
      {
         var _loc1_:int = firstDay;
         if(_loc1_ == 0)
         {
            _loc1_ = 7;
         }
         var _loc2_:Number = 8 - _loc1_;
         var _loc3_:Number = _loc2_ - 7 + Number(dailySignInActConf.luckyDay) > 0 ? _loc2_ - 7 + Number(dailySignInActConf.luckyDay) : _loc2_ + Number(dailySignInActConf.luckyDay);
         var _loc4_:int = 1;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            if(dateNow.date <= _loc3_ + 7 * _loc5_)
            {
               _loc4_ = _loc5_ + 1;
               break;
            }
            _loc5_++;
         }
         textLuckyDay.htmlText = Language.DAILY_SIGNIN[3].replace("{day1}",weakArr[dailySignInActConf.luckyDay]).replace("{point}",dailySignInActConf.luckyPoint[_loc4_]).replace("{gold}",dailySignInActConf.luckyGold[_loc4_]);
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft37() : Image
      {
         return this._1757036852numberleft37;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft30() : Image
      {
         return this._1757036845numberleft30;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft18() : Image
      {
         return this._1757036791numberleft18;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft24() : Image
      {
         return this._1757036818numberleft24;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft34() : Image
      {
         return this._1757036849numberleft34;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft35() : Image
      {
         return this._1757036850numberleft35;
      }
      
      private function getTheFirstDayByMonth(param1:Number, param2:Number) : Number
      {
         var _loc3_:Date = new Date(param1,param2,1);
         return _loc3_.getDay();
      }
      
      public function onDailySignInActDoSignin(param1:Object) : *
      {
         if(!param1)
         {
            return;
         }
         dailySignInActData = param1["data"];
         critNum = dailySignInActData.crit;
         var _loc2_:int = firstDay + param1["date"] - 1;
         this["imsignin" + _loc2_].source = ResManager.getIconUrl(4130220000884);
         if(dailySignInActData.actDays[dateNow.date])
         {
            buttonSignIn.enabled = false;
         }
         setBtnsEnable();
      }
      
      public function set imsignin30(param1:Image) : void
      {
         var _loc2_:Object = this._1708834467imsignin30;
         if(_loc2_ !== param1)
         {
            this._1708834467imsignin30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin30",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft32() : Image
      {
         return this._1757036847numberleft32;
      }
      
      public function set imsignin32(param1:Image) : void
      {
         var _loc2_:Object = this._1708834469imsignin32;
         if(_loc2_ !== param1)
         {
            this._1708834469imsignin32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin32",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft36() : Image
      {
         return this._1757036851numberleft36;
      }
      
      public function set imsignin33(param1:Image) : void
      {
         var _loc2_:Object = this._1708834470imsignin33;
         if(_loc2_ !== param1)
         {
            this._1708834470imsignin33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin33",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft38() : Image
      {
         return this._1757036853numberleft38;
      }
      
      public function set imsignin31(param1:Image) : void
      {
         var _loc2_:Object = this._1708834468imsignin31;
         if(_loc2_ !== param1)
         {
            this._1708834468imsignin31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin31",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft40() : Image
      {
         return this._1757036876numberleft40;
      }
      
      public function set imsignin34(param1:Image) : void
      {
         var _loc2_:Object = this._1708834471imsignin34;
         if(_loc2_ !== param1)
         {
            this._1708834471imsignin34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin34",_loc2_,param1));
         }
      }
      
      public function set imsignin38(param1:Image) : void
      {
         var _loc2_:Object = this._1708834475imsignin38;
         if(_loc2_ !== param1)
         {
            this._1708834475imsignin38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin38",_loc2_,param1));
         }
      }
      
      public function set imsignin39(param1:Image) : void
      {
         var _loc2_:Object = this._1708834476imsignin39;
         if(_loc2_ !== param1)
         {
            this._1708834476imsignin39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin39",_loc2_,param1));
         }
      }
      
      public function set imsignin36(param1:Image) : void
      {
         var _loc2_:Object = this._1708834473imsignin36;
         if(_loc2_ !== param1)
         {
            this._1708834473imsignin36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin36",_loc2_,param1));
         }
      }
      
      public function set imsignin37(param1:Image) : void
      {
         var _loc2_:Object = this._1708834474imsignin37;
         if(_loc2_ !== param1)
         {
            this._1708834474imsignin37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin37",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft33() : Image
      {
         return this._1757036848numberleft33;
      }
      
      [Bindable(event="propertyChange")]
      public function get lbNowData() : Label
      {
         return this._860835146lbNowData;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft23() : Image
      {
         return this._1757036817numberleft23;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft31() : Image
      {
         return this._1757036846numberleft31;
      }
      
      public function set imsignin35(param1:Image) : void
      {
         var _loc2_:Object = this._1708834472imsignin35;
         if(_loc2_ !== param1)
         {
            this._1708834472imsignin35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin35",_loc2_,param1));
         }
      }
      
      public function set textSurpriseDay(param1:Text) : void
      {
         var _loc2_:Object = this._893311866textSurpriseDay;
         if(_loc2_ !== param1)
         {
            this._893311866textSurpriseDay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textSurpriseDay",_loc2_,param1));
         }
      }
      
      public function set imsignin41(param1:Image) : void
      {
         var _loc2_:Object = this._1708834499imsignin41;
         if(_loc2_ !== param1)
         {
            this._1708834499imsignin41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin41",_loc2_,param1));
         }
      }
      
      public function set imsignin40(param1:Image) : void
      {
         var _loc2_:Object = this._1708834498imsignin40;
         if(_loc2_ !== param1)
         {
            this._1708834498imsignin40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin40",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lbNowCirtical() : Label
      {
         return this._1914146189lbNowCirtical;
      }
      
      private function onInitDailySignInActData(param1:Object) : void
      {
         var _loc7_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(!param1)
         {
            return;
         }
         dateNow = param1["time"];
         dailySignInActConf = param1["conf"];
         dailySignInActData = param1["data"];
         firstDay = getTheFirstDayByMonth(dateNow.year,dateNow.month - 1);
         var _loc2_:Number = getTheDaysNumberByMonth(dateNow.year,dateNow.month);
         lbNowData.htmlText = Language.DAILY_SIGNIN[8].replace("{year}",dateNow.year).replace("{month}",dateNow.month);
         textSurpriseDay.htmlText = Language.DAILY_SIGNIN[2].replace("{day}",weakArr[dailySignInActConf.surpriseDay]);
         setLuckyDayCongLab();
         var _loc3_:Object = {};
         var _loc4_:int = 1;
         var _loc5_:int = 1;
         var _loc6_:String = Language.DAILY_SIGNIN[5];
         for(_loc7_ in dailySignInActConf.iInfo)
         {
            if(dailySignInActConf.iInfo[_loc7_].inc == 1)
            {
               if(_loc5_ <= 1)
               {
                  everyDayItem.type = GamePredef.TBL_ITEM_TEMPLATE;
                  everyDayItem.giid = dailySignInActConf.iInfo[_loc7_].iid;
                  everyDayItem.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][dailySignInActConf.iInfo[_loc7_].iid];
                  everyDayItem.stackNum = dailySignInActConf.iInfo[_loc7_].number;
                  _loc5_++;
               }
            }
            else if(dailySignInActConf.iInfo[_loc7_].inc == 2)
            {
               if(_loc4_ <= 5)
               {
                  this["surpriseDayItem" + _loc4_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["surpriseDayItem" + _loc4_].giid = dailySignInActConf.iInfo[_loc7_].iid;
                  this["surpriseDayItem" + _loc4_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][dailySignInActConf.iInfo[_loc7_].iid];
                  this["surpriseDayItem" + _loc4_].stackNum = dailySignInActConf.iInfo[_loc7_].number;
                  _loc4_++;
               }
            }
            else if(dailySignInActConf.iInfo[_loc7_].inc == 4)
            {
               _loc6_ += GameData.d[GamePredef.TBL_ITEM_TEMPLATE][dailySignInActConf.iInfo[_loc7_].iid].name + "*" + dailySignInActConf.iInfo[_loc7_].number + "、";
            }
         }
         playRule.htmlText = _loc6_.substr(0,_loc6_.length - 1) + "。";
         if(dailySignInActConf.closeOnKey == 0)
         {
            setButtonUpCircle(false);
         }
         else
         {
            setButtonUpCircle(true);
         }
         var _loc8_:int = 0;
         while(_loc8_ < 42)
         {
            this["numberleft" + _loc8_].source = null;
            this["numberright" + _loc8_].source = null;
            this["imbackground" + _loc8_].source = null;
            this["imsignin" + _loc8_].source = null;
            _loc8_++;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc2_)
         {
            _loc10_ = firstDay + _loc9_;
            _loc11_ = (_loc9_ + 1) / 10;
            _loc12_ = (_loc9_ + 1) % 10;
            this["numberleft" + _loc10_].source = ResManager.getIconUrl(resNumber[_loc11_]);
            this["numberright" + _loc10_].source = ResManager.getIconUrl(resNumber[_loc12_]);
            if(_loc10_ % 7 == dailySignInActConf.surpriseDay % 7)
            {
               this["imbackground" + _loc10_].source = ResManager.getIconUrl(4130220000881);
            }
            else if(_loc10_ % 7 == dailySignInActConf.luckyDay % 7)
            {
               this["imbackground" + _loc10_].source = ResManager.getIconUrl(4130220000880);
            }
            if(dailySignInActData.actDays[_loc9_ + 1])
            {
               this["imsignin" + _loc10_].source = ResManager.getIconUrl(4130220000884);
            }
            _loc9_++;
         }
         setBtnsEnable();
         critNum = dailySignInActData.crit;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft41() : Image
      {
         return this._1757036877numberleft41;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonSignIn() : Button
      {
         return this._939184532buttonSignIn;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft39() : Image
      {
         return this._1757036854numberleft39;
      }
      
      private function setButtonUpCircle(param1:Boolean) : void
      {
         lbNowCirtical.visible = param1;
         btnUpCirtical.visible = param1;
      }
      
      private function toRetroactive() : void
      {
         var func:Function;
         if(ifSignInAll(Number(dateNow.date) - 1))
         {
            Alert.show(Language.DAILY_SIGNIN[17].toString(),"",Alert.YES);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("dailySignInActRetroactive",null);
            }
         };
         Alert.show(Language.DAILY_SIGNIN[13].toString().replace("{num}",dailySignInActConf.retroactivePrice),"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      private function upCirticalProbablity() : void
      {
         var func:Function;
         if(!dailySignInActConf)
         {
            return;
         }
         if(critNum >= 100)
         {
            Alert.show(Language.DAILY_SIGNIN[16].toString(),"",Alert.YES);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("dailySignInUpActCrit",null);
            }
         };
         Alert.show(Language.DAILY_SIGNIN[14].toString().replace("{num}",dailySignInActConf.critPrice),"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright12() : Image
      {
         return this._221232684numberright12;
      }
      
      private function getTheDaysNumberByMonth(param1:Number, param2:Number) : Number
      {
         var _loc3_:Date = new Date(param1,param2);
         return _loc3_.dateUTC;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright14() : Image
      {
         return this._221232682numberright14;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright19() : Image
      {
         return this._221232677numberright19;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright13() : Image
      {
         return this._221232683numberright13;
      }
      
      private function onDailySignInActGetAward(param1:Number) : void
      {
         if(param1)
         {
            buttonGetAward.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright16() : Image
      {
         return this._221232680numberright16;
      }
      
      public function set numberleft11(param1:Image) : void
      {
         var _loc2_:Object = this._1757036784numberleft11;
         if(_loc2_ !== param1)
         {
            this._1757036784numberleft11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright10() : Image
      {
         return this._221232686numberright10;
      }
      
      private function ifSignInAll(param1:Number) : *
      {
         var _loc2_:Object = dailySignInActData.actDays;
         var _loc3_:Number = getTheFirstDateThisMonth();
         var _loc4_:Number = _loc3_;
         while(_loc4_ <= param1)
         {
            if(!_loc2_[_loc4_])
            {
               return false;
            }
            _loc4_++;
         }
         return true;
      }
      
      public function set imbackground12(param1:Image) : void
      {
         var _loc2_:Object = this._496582387imbackground12;
         if(_loc2_ !== param1)
         {
            this._496582387imbackground12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground12",_loc2_,param1));
         }
      }
      
      public function set imbackground13(param1:Image) : void
      {
         var _loc2_:Object = this._496582388imbackground13;
         if(_loc2_ !== param1)
         {
            this._496582388imbackground13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground13",_loc2_,param1));
         }
      }
      
      public function set imbackground10(param1:Image) : void
      {
         var _loc2_:Object = this._496582385imbackground10;
         if(_loc2_ !== param1)
         {
            this._496582385imbackground10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground10",_loc2_,param1));
         }
      }
      
      public function set imbackground14(param1:Image) : void
      {
         var _loc2_:Object = this._496582389imbackground14;
         if(_loc2_ !== param1)
         {
            this._496582389imbackground14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground14",_loc2_,param1));
         }
      }
      
      public function set numberleft10(param1:Image) : void
      {
         var _loc2_:Object = this._1757036783numberleft10;
         if(_loc2_ !== param1)
         {
            this._1757036783numberleft10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft10",_loc2_,param1));
         }
      }
      
      public function set imbackground16(param1:Image) : void
      {
         var _loc2_:Object = this._496582391imbackground16;
         if(_loc2_ !== param1)
         {
            this._496582391imbackground16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground16",_loc2_,param1));
         }
      }
      
      public function set numberleft15(param1:Image) : void
      {
         var _loc2_:Object = this._1757036788numberleft15;
         if(_loc2_ !== param1)
         {
            this._1757036788numberleft15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft15",_loc2_,param1));
         }
      }
      
      public function set numberleft12(param1:Image) : void
      {
         var _loc2_:Object = this._1757036785numberleft12;
         if(_loc2_ !== param1)
         {
            this._1757036785numberleft12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft12",_loc2_,param1));
         }
      }
      
      public function set imbackground11(param1:Image) : void
      {
         var _loc2_:Object = this._496582386imbackground11;
         if(_loc2_ !== param1)
         {
            this._496582386imbackground11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground11",_loc2_,param1));
         }
      }
      
      public function set numberleft14(param1:Image) : void
      {
         var _loc2_:Object = this._1757036787numberleft14;
         if(_loc2_ !== param1)
         {
            this._1757036787numberleft14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright25() : Image
      {
         return this._221232650numberright25;
      }
      
      public function set imbackground17(param1:Image) : void
      {
         var _loc2_:Object = this._496582392imbackground17;
         if(_loc2_ !== param1)
         {
            this._496582392imbackground17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground17",_loc2_,param1));
         }
      }
      
      public function set numberleft13(param1:Image) : void
      {
         var _loc2_:Object = this._1757036786numberleft13;
         if(_loc2_ !== param1)
         {
            this._1757036786numberleft13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft13",_loc2_,param1));
         }
      }
      
      public function set numberleft18(param1:Image) : void
      {
         var _loc2_:Object = this._1757036791numberleft18;
         if(_loc2_ !== param1)
         {
            this._1757036791numberleft18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft18",_loc2_,param1));
         }
      }
      
      public function set numberleft19(param1:Image) : void
      {
         var _loc2_:Object = this._1757036792numberleft19;
         if(_loc2_ !== param1)
         {
            this._1757036792numberleft19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft19",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonGetAward() : BasicGlowButton
      {
         return this._2043717127buttonGetAward;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright17() : Image
      {
         return this._221232679numberright17;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright28() : Image
      {
         return this._221232647numberright28;
      }
      
      public function set imbackground18(param1:Image) : void
      {
         var _loc2_:Object = this._496582393imbackground18;
         if(_loc2_ !== param1)
         {
            this._496582393imbackground18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground18",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright22() : Image
      {
         return this._221232653numberright22;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright24() : Image
      {
         return this._221232651numberright24;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright26() : Image
      {
         return this._221232649numberright26;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright15() : Image
      {
         return this._221232681numberright15;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright31() : Image
      {
         return this._221232623numberright31;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright21() : Image
      {
         return this._221232654numberright21;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright35() : Image
      {
         return this._221232619numberright35;
      }
      
      public function set numberleft16(param1:Image) : void
      {
         var _loc2_:Object = this._1757036789numberleft16;
         if(_loc2_ !== param1)
         {
            this._1757036789numberleft16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright38() : Image
      {
         return this._221232616numberright38;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright27() : Image
      {
         return this._221232648numberright27;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright34() : Image
      {
         return this._221232620numberright34;
      }
      
      public function set numberleft20(param1:Image) : void
      {
         var _loc2_:Object = this._1757036814numberleft20;
         if(_loc2_ !== param1)
         {
            this._1757036814numberleft20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft20",_loc2_,param1));
         }
      }
      
      public function set imbackground20(param1:Image) : void
      {
         var _loc2_:Object = this._496582416imbackground20;
         if(_loc2_ !== param1)
         {
            this._496582416imbackground20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground20",_loc2_,param1));
         }
      }
      
      public function set imbackground19(param1:Image) : void
      {
         var _loc2_:Object = this._496582394imbackground19;
         if(_loc2_ !== param1)
         {
            this._496582394imbackground19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground19",_loc2_,param1));
         }
      }
      
      public function set imbackground21(param1:Image) : void
      {
         var _loc2_:Object = this._496582417imbackground21;
         if(_loc2_ !== param1)
         {
            this._496582417imbackground21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright6() : Image
      {
         return this._1932526115numberright6;
      }
      
      public function set imbackground15(param1:Image) : void
      {
         var _loc2_:Object = this._496582390imbackground15;
         if(_loc2_ !== param1)
         {
            this._496582390imbackground15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground15",_loc2_,param1));
         }
      }
      
      public function set imbackground24(param1:Image) : void
      {
         var _loc2_:Object = this._496582420imbackground24;
         if(_loc2_ !== param1)
         {
            this._496582420imbackground24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground24",_loc2_,param1));
         }
      }
      
      public function set numberleft23(param1:Image) : void
      {
         var _loc2_:Object = this._1757036817numberleft23;
         if(_loc2_ !== param1)
         {
            this._1757036817numberleft23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft23",_loc2_,param1));
         }
      }
      
      public function set imbackground22(param1:Image) : void
      {
         var _loc2_:Object = this._496582418imbackground22;
         if(_loc2_ !== param1)
         {
            this._496582418imbackground22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground22",_loc2_,param1));
         }
      }
      
      public function set imbackground26(param1:Image) : void
      {
         var _loc2_:Object = this._496582422imbackground26;
         if(_loc2_ !== param1)
         {
            this._496582422imbackground26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground26",_loc2_,param1));
         }
      }
      
      public function set imbackground23(param1:Image) : void
      {
         var _loc2_:Object = this._496582419imbackground23;
         if(_loc2_ !== param1)
         {
            this._496582419imbackground23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground23",_loc2_,param1));
         }
      }
      
      public function set imbackground27(param1:Image) : void
      {
         var _loc2_:Object = this._496582423imbackground27;
         if(_loc2_ !== param1)
         {
            this._496582423imbackground27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground27",_loc2_,param1));
         }
      }
      
      public function set numberleft22(param1:Image) : void
      {
         var _loc2_:Object = this._1757036816numberleft22;
         if(_loc2_ !== param1)
         {
            this._1757036816numberleft22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft22",_loc2_,param1));
         }
      }
      
      public function set numberleft24(param1:Image) : void
      {
         var _loc2_:Object = this._1757036818numberleft24;
         if(_loc2_ !== param1)
         {
            this._1757036818numberleft24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft24",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright32() : Image
      {
         return this._221232622numberright32;
      }
      
      public function set numberleft25(param1:Image) : void
      {
         var _loc2_:Object = this._1757036819numberleft25;
         if(_loc2_ !== param1)
         {
            this._1757036819numberleft25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft25",_loc2_,param1));
         }
      }
      
      public function set imbackground28(param1:Image) : void
      {
         var _loc2_:Object = this._496582424imbackground28;
         if(_loc2_ !== param1)
         {
            this._496582424imbackground28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground28",_loc2_,param1));
         }
      }
      
      public function set imbackground25(param1:Image) : void
      {
         var _loc2_:Object = this._496582421imbackground25;
         if(_loc2_ !== param1)
         {
            this._496582421imbackground25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground25",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright23() : Image
      {
         return this._221232652numberright23;
      }
      
      public function set consumeLimit(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._875332321consumeLimit;
         if(_loc2_ !== param1)
         {
            this._875332321consumeLimit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumeLimit",_loc2_,param1));
         }
      }
      
      private function getTheFirstDateThisMonth() : *
      {
         var _loc1_:Date = new Date(dailySignInActConf.start);
         var _loc2_:* = _loc1_.getMonth() + 1;
         var _loc3_:* = _loc1_.getFullYear();
         if(_loc3_ == dailySignInActData.actYear && _loc2_ == dailySignInActData.actMonth)
         {
            return _loc1_.getDate();
         }
         return 1;
      }
      
      public function set imbackground29(param1:Image) : void
      {
         var _loc2_:Object = this._496582425imbackground29;
         if(_loc2_ !== param1)
         {
            this._496582425imbackground29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground29",_loc2_,param1));
         }
      }
      
      public function set imbackground3(param1:Image) : void
      {
         var _loc2_:Object = this._2094228769imbackground3;
         if(_loc2_ !== param1)
         {
            this._2094228769imbackground3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground3",_loc2_,param1));
         }
      }
      
      public function set imbackground0(param1:Image) : void
      {
         var _loc2_:Object = this._2094228766imbackground0;
         if(_loc2_ !== param1)
         {
            this._2094228766imbackground0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground0",_loc2_,param1));
         }
      }
      
      public function set imbackground1(param1:Image) : void
      {
         var _loc2_:Object = this._2094228767imbackground1;
         if(_loc2_ !== param1)
         {
            this._2094228767imbackground1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground1",_loc2_,param1));
         }
      }
      
      public function set imbackground5(param1:Image) : void
      {
         var _loc2_:Object = this._2094228771imbackground5;
         if(_loc2_ !== param1)
         {
            this._2094228771imbackground5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground5",_loc2_,param1));
         }
      }
      
      public function set imbackground2(param1:Image) : void
      {
         var _loc2_:Object = this._2094228768imbackground2;
         if(_loc2_ !== param1)
         {
            this._2094228768imbackground2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright30() : Image
      {
         return this._221232624numberright30;
      }
      
      public function set imbackground7(param1:Image) : void
      {
         var _loc2_:Object = this._2094228773imbackground7;
         if(_loc2_ !== param1)
         {
            this._2094228773imbackground7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground7",_loc2_,param1));
         }
      }
      
      public function set imbackground4(param1:Image) : void
      {
         var _loc2_:Object = this._2094228770imbackground4;
         if(_loc2_ !== param1)
         {
            this._2094228770imbackground4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground4",_loc2_,param1));
         }
      }
      
      public function set numberleft29(param1:Image) : void
      {
         var _loc2_:Object = this._1757036823numberleft29;
         if(_loc2_ !== param1)
         {
            this._1757036823numberleft29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft29",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright40() : Image
      {
         return this._221232593numberright40;
      }
      
      public function set imsignin0(param1:Image) : void
      {
         var _loc2_:Object = this._2023086294imsignin0;
         if(_loc2_ !== param1)
         {
            this._2023086294imsignin0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin0",_loc2_,param1));
         }
      }
      
      public function set imbackground9(param1:Image) : void
      {
         var _loc2_:Object = this._2094228775imbackground9;
         if(_loc2_ !== param1)
         {
            this._2094228775imbackground9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground9",_loc2_,param1));
         }
      }
      
      public function set btnUpCirtical(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1790492452btnUpCirtical;
         if(_loc2_ !== param1)
         {
            this._1790492452btnUpCirtical = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnUpCirtical",_loc2_,param1));
         }
      }
      
      public function set numberleft28(param1:Image) : void
      {
         var _loc2_:Object = this._1757036822numberleft28;
         if(_loc2_ !== param1)
         {
            this._1757036822numberleft28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft28",_loc2_,param1));
         }
      }
      
      public function set imsignin3(param1:Image) : void
      {
         var _loc2_:Object = this._2023086291imsignin3;
         if(_loc2_ !== param1)
         {
            this._2023086291imsignin3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin3",_loc2_,param1));
         }
      }
      
      public function set imbackground8(param1:Image) : void
      {
         var _loc2_:Object = this._2094228774imbackground8;
         if(_loc2_ !== param1)
         {
            this._2094228774imbackground8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground8",_loc2_,param1));
         }
      }
      
      public function set imsignin4(param1:Image) : void
      {
         var _loc2_:Object = this._2023086290imsignin4;
         if(_loc2_ !== param1)
         {
            this._2023086290imsignin4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin4",_loc2_,param1));
         }
      }
      
      public function set imbackground30(param1:Image) : void
      {
         var _loc2_:Object = this._496582447imbackground30;
         if(_loc2_ !== param1)
         {
            this._496582447imbackground30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground30",_loc2_,param1));
         }
      }
      
      public function set imsignin2(param1:Image) : void
      {
         var _loc2_:Object = this._2023086292imsignin2;
         if(_loc2_ !== param1)
         {
            this._2023086292imsignin2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin2",_loc2_,param1));
         }
      }
      
      public function set imbackground31(param1:Image) : void
      {
         var _loc2_:Object = this._496582448imbackground31;
         if(_loc2_ !== param1)
         {
            this._496582448imbackground31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground31",_loc2_,param1));
         }
      }
      
      public function set numberleft26(param1:Image) : void
      {
         var _loc2_:Object = this._1757036820numberleft26;
         if(_loc2_ !== param1)
         {
            this._1757036820numberleft26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft26",_loc2_,param1));
         }
      }
      
      public function set imbackground32(param1:Image) : void
      {
         var _loc2_:Object = this._496582449imbackground32;
         if(_loc2_ !== param1)
         {
            this._496582449imbackground32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground32",_loc2_,param1));
         }
      }
      
      public function set numberleft27(param1:Image) : void
      {
         var _loc2_:Object = this._1757036821numberleft27;
         if(_loc2_ !== param1)
         {
            this._1757036821numberleft27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft27",_loc2_,param1));
         }
      }
      
      public function set imbackground33(param1:Image) : void
      {
         var _loc2_:Object = this._496582450imbackground33;
         if(_loc2_ !== param1)
         {
            this._496582450imbackground33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground33",_loc2_,param1));
         }
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      public function set imbackground34(param1:Image) : void
      {
         var _loc2_:Object = this._496582451imbackground34;
         if(_loc2_ !== param1)
         {
            this._496582451imbackground34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground34",_loc2_,param1));
         }
      }
      
      public function set everyDayItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._455359180everyDayItem;
         if(_loc2_ !== param1)
         {
            this._455359180everyDayItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"everyDayItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin14() : Image
      {
         return this._1708834409imsignin14;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin11() : Image
      {
         return this._1708834406imsignin11;
      }
      
      public function set imbackground38(param1:Image) : void
      {
         var _loc2_:Object = this._496582455imbackground38;
         if(_loc2_ !== param1)
         {
            this._496582455imbackground38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground38",_loc2_,param1));
         }
      }
      
      private function _DailySignInPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DAILY_SIGNIN[0];
         _loc1_ = Language.DAILY_SIGNIN[6];
         _loc1_ = Language.DAILY_SIGNIN[7];
         _loc1_ = ResManager.getIconUrl(4130220000883);
         _loc1_ = Language.DAILY_SIGNIN[1];
         _loc1_ = ResManager.getIconUrl(4130220000882);
         _loc1_ = Language.DAILY_SIGNIN[2];
         _loc1_ = Language.DAILY_SIGNIN[3];
         _loc1_ = Language.DAILY_SIGNIN[10];
         _loc1_ = Language.DAILY_SIGNIN[4];
         _loc1_ = Language.DAILY_SIGNIN[8];
         _loc1_ = Language.DAILY_SIGNIN[9].replace("{num}",critNum);
         _loc1_ = Language.DAILY_SIGNIN[11];
         _loc1_ = Language.DAILY_SIGNIN[12];
      }
      
      public function set imbackground36(param1:Image) : void
      {
         var _loc2_:Object = this._496582453imbackground36;
         if(_loc2_ !== param1)
         {
            this._496582453imbackground36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground36",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin16() : Image
      {
         return this._1708834411imsignin16;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin10() : Image
      {
         return this._1708834405imsignin10;
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin12() : Image
      {
         return this._1708834407imsignin12;
      }
      
      public function set imbackground35(param1:Image) : void
      {
         var _loc2_:Object = this._496582452imbackground35;
         if(_loc2_ !== param1)
         {
            this._496582452imbackground35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground35",_loc2_,param1));
         }
      }
      
      public function set imsignin1(param1:Image) : void
      {
         var _loc2_:Object = this._2023086293imsignin1;
         if(_loc2_ !== param1)
         {
            this._2023086293imsignin1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin15() : Image
      {
         return this._1708834410imsignin15;
      }
      
      public function updateDailySignInActCrit(param1:Number) : *
      {
         critNum = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin19() : Image
      {
         return this._1708834414imsignin19;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin13() : Image
      {
         return this._1708834408imsignin13;
      }
      
      public function set imbackground6(param1:Image) : void
      {
         var _loc2_:Object = this._2094228772imbackground6;
         if(_loc2_ !== param1)
         {
            this._2094228772imbackground6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin18() : Image
      {
         return this._1708834413imsignin18;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin22() : Image
      {
         return this._1708834438imsignin22;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin23() : Image
      {
         return this._1708834439imsignin23;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin25() : Image
      {
         return this._1708834441imsignin25;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin26() : Image
      {
         return this._1708834442imsignin26;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin21() : Image
      {
         return this._1708834437imsignin21;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin29() : Image
      {
         return this._1708834445imsignin29;
      }
      
      public function set imbackground37(param1:Image) : void
      {
         var _loc2_:Object = this._496582454imbackground37;
         if(_loc2_ !== param1)
         {
            this._496582454imbackground37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground37",_loc2_,param1));
         }
      }
      
      public function ___DailySignInPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         toRetroactive();
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright0() : Image
      {
         return this._1932526109numberright0;
      }
      
      public function set imsignin8(param1:Image) : void
      {
         var _loc2_:Object = this._2023086286imsignin8;
         if(_loc2_ !== param1)
         {
            this._2023086286imsignin8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin8",_loc2_,param1));
         }
      }
      
      public function set lbNowData(param1:Label) : void
      {
         var _loc2_:Object = this._860835146lbNowData;
         if(_loc2_ !== param1)
         {
            this._860835146lbNowData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbNowData",_loc2_,param1));
         }
      }
      
      public function set numberleft17(param1:Image) : void
      {
         var _loc2_:Object = this._1757036790numberleft17;
         if(_loc2_ !== param1)
         {
            this._1757036790numberleft17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft17",_loc2_,param1));
         }
      }
      
      public function set surpriseDayItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2071124149surpriseDayItem1;
         if(_loc2_ !== param1)
         {
            this._2071124149surpriseDayItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"surpriseDayItem1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin24() : Image
      {
         return this._1708834440imsignin24;
      }
      
      private function _DailySignInPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailySignInPanel_BasicTitleCanvas1.text = param1;
         },"_DailySignInPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000883);
         },function(param1:Object):void
         {
            _DailySignInPanel_Image1.source = param1;
         },"_DailySignInPanel_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailySignInPanel_Label1.text = param1;
         },"_DailySignInPanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000882);
         },function(param1:Object):void
         {
            everyDayItem.setStyle("backgroundImage",param1);
         },"everyDayItem.backgroundImage");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            textSurpriseDay.text = param1;
         },"textSurpriseDay.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            textLuckyDay.text = param1;
         },"textLuckyDay.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buttonGetAward.label = param1;
         },"buttonGetAward.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailySignInPanel_Text3.text = param1;
         },"_DailySignInPanel_Text3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lbNowData.text = param1;
         },"lbNowData.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[9].replace("{num}",critNum);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lbNowCirtical.text = param1;
         },"lbNowCirtical.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnUpCirtical.label = param1;
         },"btnUpCirtical.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILY_SIGNIN[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailySignInPanel_BasicGlowButton5.label = param1;
         },"_DailySignInPanel_BasicGlowButton5.label");
         result[13] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin27() : Image
      {
         return this._1708834443imsignin27;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin28() : Image
      {
         return this._1708834444imsignin28;
      }
      
      public function set imbackground39(param1:Image) : void
      {
         var _loc2_:Object = this._496582456imbackground39;
         if(_loc2_ !== param1)
         {
            this._496582456imbackground39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground39",_loc2_,param1));
         }
      }
      
      public function set imbackground41(param1:Image) : void
      {
         var _loc2_:Object = this._496582479imbackground41;
         if(_loc2_ !== param1)
         {
            this._496582479imbackground41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground41",_loc2_,param1));
         }
      }
      
      public function set imsignin9(param1:Image) : void
      {
         var _loc2_:Object = this._2023086285imsignin9;
         if(_loc2_ !== param1)
         {
            this._2023086285imsignin9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin9",_loc2_,param1));
         }
      }
      
      public function set numberleft37(param1:Image) : void
      {
         var _loc2_:Object = this._1757036852numberleft37;
         if(_loc2_ !== param1)
         {
            this._1757036852numberleft37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft37",_loc2_,param1));
         }
      }
      
      public function set imbackground40(param1:Image) : void
      {
         var _loc2_:Object = this._496582478imbackground40;
         if(_loc2_ !== param1)
         {
            this._496582478imbackground40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imbackground40",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin17() : Image
      {
         return this._1708834412imsignin17;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin20() : Image
      {
         return this._1708834436imsignin20;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin34() : Image
      {
         return this._1708834471imsignin34;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin35() : Image
      {
         return this._1708834472imsignin35;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin36() : Image
      {
         return this._1708834473imsignin36;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin31() : Image
      {
         return this._1708834468imsignin31;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin32() : Image
      {
         return this._1708834469imsignin32;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin33() : Image
      {
         return this._1708834470imsignin33;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright39() : Image
      {
         return this._221232615numberright39;
      }
      
      public function set numberleft31(param1:Image) : void
      {
         var _loc2_:Object = this._1757036846numberleft31;
         if(_loc2_ !== param1)
         {
            this._1757036846numberleft31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft31",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin37() : Image
      {
         return this._1708834474imsignin37;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin39() : Image
      {
         return this._1708834476imsignin39;
      }
      
      public function set imsignin6(param1:Image) : void
      {
         var _loc2_:Object = this._2023086288imsignin6;
         if(_loc2_ !== param1)
         {
            this._2023086288imsignin6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin6",_loc2_,param1));
         }
      }
      
      public function set imsignin7(param1:Image) : void
      {
         var _loc2_:Object = this._2023086287imsignin7;
         if(_loc2_ !== param1)
         {
            this._2023086287imsignin7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright29() : Image
      {
         return this._221232646numberright29;
      }
      
      public function set numberleft35(param1:Image) : void
      {
         var _loc2_:Object = this._1757036850numberleft35;
         if(_loc2_ !== param1)
         {
            this._1757036850numberleft35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft35",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin38() : Image
      {
         return this._1708834475imsignin38;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin30() : Image
      {
         return this._1708834467imsignin30;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright36() : Image
      {
         return this._221232618numberright36;
      }
      
      public function set imsignin5(param1:Image) : void
      {
         var _loc2_:Object = this._2023086289imsignin5;
         if(_loc2_ !== param1)
         {
            this._2023086289imsignin5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imsignin5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin41() : Image
      {
         return this._1708834499imsignin41;
      }
      
      public function set numberleft2(param1:Image) : void
      {
         var _loc2_:Object = this._749415266numberleft2;
         if(_loc2_ !== param1)
         {
            this._749415266numberleft2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft2",_loc2_,param1));
         }
      }
      
      public function set numberleft4(param1:Image) : void
      {
         var _loc2_:Object = this._749415268numberleft4;
         if(_loc2_ !== param1)
         {
            this._749415268numberleft4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft4",_loc2_,param1));
         }
      }
      
      public function set numberleft5(param1:Image) : void
      {
         var _loc2_:Object = this._749415269numberleft5;
         if(_loc2_ !== param1)
         {
            this._749415269numberleft5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright5() : Image
      {
         return this._1932526114numberright5;
      }
      
      public function set numberleft0(param1:Image) : void
      {
         var _loc2_:Object = this._749415264numberleft0;
         if(_loc2_ !== param1)
         {
            this._749415264numberleft0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin40() : Image
      {
         return this._1708834498imsignin40;
      }
      
      public function set numberleft9(param1:Image) : void
      {
         var _loc2_:Object = this._749415273numberleft9;
         if(_loc2_ !== param1)
         {
            this._749415273numberleft9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright37() : Image
      {
         return this._221232617numberright37;
      }
      
      public function set numberleft3(param1:Image) : void
      {
         var _loc2_:Object = this._749415267numberleft3;
         if(_loc2_ !== param1)
         {
            this._749415267numberleft3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft3",_loc2_,param1));
         }
      }
      
      public function set numberleft36(param1:Image) : void
      {
         var _loc2_:Object = this._1757036851numberleft36;
         if(_loc2_ !== param1)
         {
            this._1757036851numberleft36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft36",_loc2_,param1));
         }
      }
      
      public function set numberleft1(param1:Image) : void
      {
         var _loc2_:Object = this._749415265numberleft1;
         if(_loc2_ !== param1)
         {
            this._749415265numberleft1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft1",_loc2_,param1));
         }
      }
      
      public function set numberleft21(param1:Image) : void
      {
         var _loc2_:Object = this._1757036815numberleft21;
         if(_loc2_ !== param1)
         {
            this._1757036815numberleft21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft21",_loc2_,param1));
         }
      }
      
      public function set numberleft39(param1:Image) : void
      {
         var _loc2_:Object = this._1757036854numberleft39;
         if(_loc2_ !== param1)
         {
            this._1757036854numberleft39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft39",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright7() : Image
      {
         return this._1932526116numberright7;
      }
      
      public function set numberleft32(param1:Image) : void
      {
         var _loc2_:Object = this._1757036847numberleft32;
         if(_loc2_ !== param1)
         {
            this._1757036847numberleft32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft32",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright9() : Image
      {
         return this._1932526118numberright9;
      }
      
      public function set numberleft33(param1:Image) : void
      {
         var _loc2_:Object = this._1757036848numberleft33;
         if(_loc2_ !== param1)
         {
            this._1757036848numberleft33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft33",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright33() : Image
      {
         return this._221232621numberright33;
      }
      
      public function set numberleft34(param1:Image) : void
      {
         var _loc2_:Object = this._1757036849numberleft34;
         if(_loc2_ !== param1)
         {
            this._1757036849numberleft34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft34",_loc2_,param1));
         }
      }
      
      public function set numberleft8(param1:Image) : void
      {
         var _loc2_:Object = this._749415272numberleft8;
         if(_loc2_ !== param1)
         {
            this._749415272numberleft8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright11() : Image
      {
         return this._221232685numberright11;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright41() : Image
      {
         return this._221232592numberright41;
      }
      
      public function set numberleft38(param1:Image) : void
      {
         var _loc2_:Object = this._1757036853numberleft38;
         if(_loc2_ !== param1)
         {
            this._1757036853numberleft38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft38",_loc2_,param1));
         }
      }
      
      public function set numberleft30(param1:Image) : void
      {
         var _loc2_:Object = this._1757036845numberleft30;
         if(_loc2_ !== param1)
         {
            this._1757036845numberleft30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft30",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground10() : Image
      {
         return this._496582385imbackground10;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground14() : Image
      {
         return this._496582389imbackground14;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground16() : Image
      {
         return this._496582391imbackground16;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground12() : Image
      {
         return this._496582387imbackground12;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground13() : Image
      {
         return this._496582388imbackground13;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground18() : Image
      {
         return this._496582393imbackground18;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground15() : Image
      {
         return this._496582390imbackground15;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright1() : Image
      {
         return this._1932526110numberright1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground19() : Image
      {
         return this._496582394imbackground19;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground11() : Image
      {
         return this._496582386imbackground11;
      }
      
      public function set numberleft40(param1:Image) : void
      {
         var _loc2_:Object = this._1757036876numberleft40;
         if(_loc2_ !== param1)
         {
            this._1757036876numberleft40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft40",_loc2_,param1));
         }
      }
      
      public function set numberleft41(param1:Image) : void
      {
         var _loc2_:Object = this._1757036877numberleft41;
         if(_loc2_ !== param1)
         {
            this._1757036877numberleft41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft41",_loc2_,param1));
         }
      }
      
      public function set surpriseDayItem4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2071124146surpriseDayItem4;
         if(_loc2_ !== param1)
         {
            this._2071124146surpriseDayItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"surpriseDayItem4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground17() : Image
      {
         return this._496582392imbackground17;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground21() : Image
      {
         return this._496582417imbackground21;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground23() : Image
      {
         return this._496582419imbackground23;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground24() : Image
      {
         return this._496582420imbackground24;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground20() : Image
      {
         return this._496582416imbackground20;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground28() : Image
      {
         return this._496582424imbackground28;
      }
      
      public function __buttonSignIn_click(param1:MouseEvent) : void
      {
         signIn();
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground29() : Image
      {
         return this._496582425imbackground29;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground22() : Image
      {
         return this._496582418imbackground22;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground26() : Image
      {
         return this._496582422imbackground26;
      }
      
      public function set buttonSignIn(param1:Button) : void
      {
         var _loc2_:Object = this._939184532buttonSignIn;
         if(_loc2_ !== param1)
         {
            this._939184532buttonSignIn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonSignIn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin0() : Image
      {
         return this._2023086294imsignin0;
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin4() : Image
      {
         return this._2023086290imsignin4;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground27() : Image
      {
         return this._496582423imbackground27;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground31() : Image
      {
         return this._496582448imbackground31;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground32() : Image
      {
         return this._496582449imbackground32;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground33() : Image
      {
         return this._496582450imbackground33;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground35() : Image
      {
         return this._496582452imbackground35;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground36() : Image
      {
         return this._496582453imbackground36;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground30() : Image
      {
         return this._496582447imbackground30;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground25() : Image
      {
         return this._496582421imbackground25;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground39() : Image
      {
         return this._496582456imbackground39;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin8() : Image
      {
         return this._2023086286imsignin8;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground34() : Image
      {
         return this._496582451imbackground34;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnUpCirtical() : BasicGlowButton
      {
         return this._1790492452btnUpCirtical;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground37() : Image
      {
         return this._496582454imbackground37;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground38() : Image
      {
         return this._496582455imbackground38;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin7() : Image
      {
         return this._2023086287imsignin7;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin1() : Image
      {
         return this._2023086293imsignin1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin3() : Image
      {
         return this._2023086291imsignin3;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin5() : Image
      {
         return this._2023086289imsignin5;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin9() : Image
      {
         return this._2023086285imsignin9;
      }
      
      [Bindable(event="propertyChange")]
      public function get surpriseDayItem2() : ItemSlot
      {
         return this._2071124148surpriseDayItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get surpriseDayItem3() : ItemSlot
      {
         return this._2071124147surpriseDayItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground40() : Image
      {
         return this._496582478imbackground40;
      }
      
      [Bindable(event="propertyChange")]
      public function get imbackground41() : Image
      {
         return this._496582479imbackground41;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright4() : Image
      {
         return this._1932526113numberright4;
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin6() : Image
      {
         return this._2023086288imsignin6;
      }
      
      public function set lbNowCirtical(param1:Label) : void
      {
         var _loc2_:Object = this._1914146189lbNowCirtical;
         if(_loc2_ !== param1)
         {
            this._1914146189lbNowCirtical = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbNowCirtical",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright8() : Image
      {
         return this._1932526117numberright8;
      }
      
      public function set bangBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324756bangBtn0;
         if(_loc2_ !== param1)
         {
            this._1863324756bangBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imsignin2() : Image
      {
         return this._2023086292imsignin2;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright18() : Image
      {
         return this._221232678numberright18;
      }
      
      public function set vsFlop(param1:ViewStack) : void
      {
         var _loc2_:Object = this._808329852vsFlop;
         if(_loc2_ !== param1)
         {
            this._808329852vsFlop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsFlop",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get surpriseDayItem5() : ItemSlot
      {
         return this._2071124145surpriseDayItem5;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft3() : Image
      {
         return this._749415267numberleft3;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft5() : Image
      {
         return this._749415269numberleft5;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft6() : Image
      {
         return this._749415270numberleft6;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft0() : Image
      {
         return this._749415264numberleft0;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft1() : Image
      {
         return this._749415265numberleft1;
      }
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright3() : Image
      {
         return this._1932526112numberright3;
      }
      
      public function set surpriseDayItem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2071124147surpriseDayItem3;
         if(_loc2_ !== param1)
         {
            this._2071124147surpriseDayItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"surpriseDayItem3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get surpriseDayItem1() : ItemSlot
      {
         return this._2071124149surpriseDayItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft8() : Image
      {
         return this._749415272numberleft8;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft9() : Image
      {
         return this._749415273numberleft9;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft2() : Image
      {
         return this._749415266numberleft2;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright20() : Image
      {
         return this._221232655numberright20;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft4() : Image
      {
         return this._749415268numberleft4;
      }
      
      public function set numberleft6(param1:Image) : void
      {
         var _loc2_:Object = this._749415270numberleft6;
         if(_loc2_ !== param1)
         {
            this._749415270numberleft6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft6",_loc2_,param1));
         }
      }
      
      public function set numberleft7(param1:Image) : void
      {
         var _loc2_:Object = this._749415271numberleft7;
         if(_loc2_ !== param1)
         {
            this._749415271numberleft7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberleft7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get critNum() : Number
      {
         return this._1032778572critNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get surpriseDayItem4() : ItemSlot
      {
         return this._2071124146surpriseDayItem4;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberleft7() : Image
      {
         return this._749415271numberleft7;
      }
      
      public function set surpriseDayItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2071124148surpriseDayItem2;
         if(_loc2_ !== param1)
         {
            this._2071124148surpriseDayItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"surpriseDayItem2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberright2() : Image
      {
         return this._1932526111numberright2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DailySignInPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailySignInPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DailySignInPanelWatcherSetupUtil");
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
      
      public function set numberright10(param1:Image) : void
      {
         var _loc2_:Object = this._221232686numberright10;
         if(_loc2_ !== param1)
         {
            this._221232686numberright10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright10",_loc2_,param1));
         }
      }
      
      public function set numberright11(param1:Image) : void
      {
         var _loc2_:Object = this._221232685numberright11;
         if(_loc2_ !== param1)
         {
            this._221232685numberright11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright11",_loc2_,param1));
         }
      }
      
      public function __buttonGetAward_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      public function set numberright13(param1:Image) : void
      {
         var _loc2_:Object = this._221232683numberright13;
         if(_loc2_ !== param1)
         {
            this._221232683numberright13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      public function set numberright12(param1:Image) : void
      {
         var _loc2_:Object = this._221232684numberright12;
         if(_loc2_ !== param1)
         {
            this._221232684numberright12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright12",_loc2_,param1));
         }
      }
      
      public function set numberright14(param1:Image) : void
      {
         var _loc2_:Object = this._221232682numberright14;
         if(_loc2_ !== param1)
         {
            this._221232682numberright14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright14",_loc2_,param1));
         }
      }
      
      public function set numberright19(param1:Image) : void
      {
         var _loc2_:Object = this._221232677numberright19;
         if(_loc2_ !== param1)
         {
            this._221232677numberright19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright19",_loc2_,param1));
         }
      }
      
      public function set numberright16(param1:Image) : void
      {
         var _loc2_:Object = this._221232680numberright16;
         if(_loc2_ !== param1)
         {
            this._221232680numberright16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      public function set numberright15(param1:Image) : void
      {
         var _loc2_:Object = this._221232681numberright15;
         if(_loc2_ !== param1)
         {
            this._221232681numberright15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright15",_loc2_,param1));
         }
      }
      
      public function set numberright18(param1:Image) : void
      {
         var _loc2_:Object = this._221232678numberright18;
         if(_loc2_ !== param1)
         {
            this._221232678numberright18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright18",_loc2_,param1));
         }
      }
      
      public function set surpriseDayItem5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2071124145surpriseDayItem5;
         if(_loc2_ !== param1)
         {
            this._2071124145surpriseDayItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"surpriseDayItem5",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initDailySignInActData",new Responder(onInitDailySignInActData));
         _core.remote.call("initDailySignInActConsumeLimit",null);
      }
      
      private function signIn() : void
      {
         _core.remote.call("dailySignInActDoSignin",new Responder(onDailySignInActDoSignin));
      }
      
      public function set numberright22(param1:Image) : void
      {
         var _loc2_:Object = this._221232653numberright22;
         if(_loc2_ !== param1)
         {
            this._221232653numberright22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright22",_loc2_,param1));
         }
      }
      
      public function set numberright24(param1:Image) : void
      {
         var _loc2_:Object = this._221232651numberright24;
         if(_loc2_ !== param1)
         {
            this._221232651numberright24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright24",_loc2_,param1));
         }
      }
      
      public function set numberright26(param1:Image) : void
      {
         var _loc2_:Object = this._221232649numberright26;
         if(_loc2_ !== param1)
         {
            this._221232649numberright26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright26",_loc2_,param1));
         }
      }
      
      public function set numberright20(param1:Image) : void
      {
         var _loc2_:Object = this._221232655numberright20;
         if(_loc2_ !== param1)
         {
            this._221232655numberright20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright20",_loc2_,param1));
         }
      }
      
      public function set buttonGetAward(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2043717127buttonGetAward;
         if(_loc2_ !== param1)
         {
            this._2043717127buttonGetAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGetAward",_loc2_,param1));
         }
      }
      
      public function set numberright25(param1:Image) : void
      {
         var _loc2_:Object = this._221232650numberright25;
         if(_loc2_ !== param1)
         {
            this._221232650numberright25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright25",_loc2_,param1));
         }
      }
      
      public function set numberright27(param1:Image) : void
      {
         var _loc2_:Object = this._221232648numberright27;
         if(_loc2_ !== param1)
         {
            this._221232648numberright27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberright27",_loc2_,param1));
         }
      }
   }
}

