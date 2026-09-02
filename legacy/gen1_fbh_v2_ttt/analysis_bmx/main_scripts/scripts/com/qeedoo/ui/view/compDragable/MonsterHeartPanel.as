package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.MonsterHeartSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.comp.TipMonsterHeart;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MonsterHeartPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var countPerPage:uint = 18;
      
      private static var labelCountPerPage:uint = 9;
      
      private static var Max_Level:uint = 6;
      
      private static var displayNum:uint = 148;
      
      private static var BagTypeArr:Array = ["ren","shou","zhi","ji","mo","lon","te"];
      
      private static var MHUPMH_RATE:Object = {
         1:{
            1:0,
            2:25,
            3:50,
            4:75,
            5:100
         },
         2:{
            1:0,
            2:20,
            3:40,
            4:60,
            5:80
         },
         3:{
            1:0,
            2:15,
            3:30,
            4:45,
            5:60
         },
         4:{
            1:0,
            2:10,
            3:20,
            4:30,
            5:40
         },
         5:{
            1:0,
            2:1,
            3:5,
            4:10,
            5:20
         }
      };
      
      public static var JGZ_COLOR:Object = {
         0:"【Cấp 1】",
         1:"【Cấp 2】",
         6:"【Cấp 3】",
         11:"【Cấp 4】",
         16:"【Cấp 5】"
      };
      
      private static var HTYPE_NAME:Array = ["","Người","Thú","TV","Máy","Ma","Long","BOSS"];
      
      private static var fangxiangArr:Array = [1,2,0,2,1,0,0,1,2,0,2,1];
      
      private static var resIconArr:Array = [[4130220000708,4130220001028,4130220000908,4130220001018,4130220000808,4130220001038],[4130220000709,4130220001029,4130220000909,4130220001019,4130220000809,4130220001039],[4130220000707,4130220001027,4130220000907,4130220001017,4130220000807,4130220001037]];
      
      private static var levelIconArr:Array = [[4130220000727,4130220000728,4130220000729,4130220000730,4130220000731,4130220000727],[4130220000732,4130220000733,4130220000734,4130220000735,4130220000736,4130220000732],[4130220000737,4130220000738,4130220000739,4130220000740,4130220000741,4130220000737],[4130220000742,4130220000743,4130220000744,4130220000745,4130220000746,4130220000742],[4130220000747,4130220000748,4130220000749,4130220000750,4130220000751,4130220000747]];
      
      private var _61299297jinshiHeartSlot:MonsterHeartSlot;
      
      private var _339046421showMax2:Label;
      
      private var _514994608holeNum6:MonsterHeartSlot;
      
      private var _1919589879showName1:Label;
      
      private var _453832204showHeart5:Label;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _514994611holeNum3:MonsterHeartSlot;
      
      private var _344721025bagBtn3:BasicGlowButton;
      
      private var _397275891bagHole16:MonsterHeartSlot;
      
      private var _1409449289pageSelectLabel:PageSelector;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1919589872showName8:Label;
      
      private var _279430197afterUpSlot:MonsterHeartSlot;
      
      private var _453832207showHeart8:Label;
      
      private var choiceBox:int = 1;
      
      private var _core:Core = Core.getInstance();
      
      private var _1011903869mhTitle:BasicTitleCanvas;
      
      private var _338940989showPro3:Label;
      
      public var _MonsterHeartPanel_Image15:Image;
      
      public var _MonsterHeartPanel_Image16:Image;
      
      public var _MonsterHeartPanel_Image17:Image;
      
      public var _MonsterHeartPanel_Image18:Image;
      
      public var _MonsterHeartPanel_Image19:Image;
      
      private var _338940985showPro7:Label;
      
      private var _1892607996imLine4:Image;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _397275895bagHole12:MonsterHeartSlot;
      
      public var _MonsterHeartPanel_Image21:Image;
      
      private var _344721021bagBtn7:BasicGlowButton;
      
      public var _MonsterHeartPanel_Image20:Image;
      
      private var _1919589876showName4:Label;
      
      private var _2091025333bagHole3:MonsterHeartSlot;
      
      private var labelPageNo:uint = 0;
      
      private var _339046417showMax6:Label;
      
      private var _339046420showMax3:Label;
      
      private var _344721026bagBtn2:BasicGlowButton;
      
      private var _2003452392upSuccessRate:Label;
      
      private var _1892608000imLine8:Image;
      
      private var _514994607holeNum7:MonsterHeartSlot;
      
      private var _453832200showHeart1:Label;
      
      private var _2091301004needExpText:Label;
      
      private var _514994610holeNum4:MonsterHeartSlot;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _1054773958levelShowImage:Image;
      
      private var _397275892bagHole15:MonsterHeartSlot;
      
      private var _453832203showHeart4:Label;
      
      private var _1919589873showName7:Label;
      
      private var _1464427278showCombine4:Label;
      
      private var _changed:Boolean = false;
      
      private var _1892607997imLine5:Image;
      
      private var _1464427281showCombine1:Label;
      
      private var _338940988showPro4:Label;
      
      private var _344721022bagBtn6:BasicGlowButton;
      
      private var _338940991showPro1:Label;
      
      private var _338940984showPro8:Label;
      
      private var _1458694313imLine10:Image;
      
      private var _453832206showHeart7:Label;
      
      private var itemPageNo:uint = 0;
      
      private var _2091025329bagHole7:MonsterHeartSlot;
      
      private var _1333480055ifUseJinshiHeart:CheckBox;
      
      private var _2091025336bagHole0:MonsterHeartSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2091025332bagHole4:MonsterHeartSlot;
      
      private var _397275896bagHole11:MonsterHeartSlot;
      
      private var _1919589877showName3:Label;
      
      private var _344721027bagBtn1:BasicGlowButton;
      
      private var _1892608001imLine9:Image;
      
      private var _339046416showMax7:Label;
      
      private var _1450694496BagCanvas:Canvas;
      
      private var _1892607993imLine1:Image;
      
      private var _636843653upGradeJishu:NumericStepper;
      
      private var _514994613holeNum1:MonsterHeartSlot;
      
      private var _1280191633needUpSlot:MonsterHeartSlot;
      
      private var _1599588207resolveExp:Label;
      
      private var monsterHeartData:Object = {};
      
      private var _1892607998imLine6:Image;
      
      private var _344721023bagBtn5:BasicGlowButton;
      
      private var itemAC:ArrayCollection = new ArrayCollection();
      
      private var _397275893bagHole14:MonsterHeartSlot;
      
      private var _1600033182nowBoxLevelLab:Label;
      
      private var _338940987showPro5:Label;
      
      private var monsterHeartBagAdded:Boolean = false;
      
      private var _1919589874showName6:Label;
      
      private var _338940983showPro9:Label;
      
      private var _453832202showHeart3:Label;
      
      private var _338940990showPro2:Label;
      
      private var _1458694312imLine11:Image;
      
      private var _2091025328bagHole8:MonsterHeartSlot;
      
      private var choiceBag:int = 1;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _2091025335bagHole1:MonsterHeartSlot;
      
      private var _2091025331bagHole5:MonsterHeartSlot;
      
      private var _453832205showHeart6:Label;
      
      private var _1892607994imLine2:Image;
      
      private var _1730037146needExpLab:Label;
      
      private var _1464427277showCombine5:Label;
      
      private var _397275897bagHole10:MonsterHeartSlot;
      
      private var _339046415showMax8:Label;
      
      private var _1460564552haveExpLab:Label;
      
      private var _1919589878showName2:Label;
      
      private var _339046419showMax4:Label;
      
      private var _1464427280showCombine2:Label;
      
      private var _339046422showMax1:Label;
      
      private var _514994609holeNum5:MonsterHeartSlot;
      
      public var _MonsterHeartPanel_Image1:Image;
      
      private var _397275890bagHole17:MonsterHeartSlot;
      
      private var _453832208showHeart9:Label;
      
      private var _1952778762resolveSlot:MonsterHeartSlot;
      
      private var _1919589871showName9:Label;
      
      private var _514994612holeNum2:MonsterHeartSlot;
      
      private var _boxIndex:Number = 1;
      
      private var _1892607999imLine7:Image;
      
      private var _1573867231ifUseByGold:CheckBox;
      
      private var _344721024bagBtn4:BasicGlowButton;
      
      private var _338940986showPro6:Label;
      
      private var _397275894bagHole13:MonsterHeartSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _402246975resolveNumNS:NumericStepper;
      
      private var _1919589875showName5:Label;
      
      private var _1458694311imLine12:Image;
      
      private var _1273109611pageSelect:PageSelector;
      
      private var _2091025327bagHole9:MonsterHeartSlot;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _2091025334bagHole2:MonsterHeartSlot;
      
      private var _1892607995imLine3:Image;
      
      private var _2091025330bagHole6:MonsterHeartSlot;
      
      private var _1523019390maxResolveNum:Number = 999;
      
      private var bagData:Object = {};
      
      private var _453832201showHeart2:Label;
      
      private var _281628040nowRatioLab:Label;
      
      public var monsterHeartBag:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _339046418showMax5:Label;
      
      private var _1464427279showCombine3:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":720,
               "height":480,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"mhTitle",
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
                        "width":60,
                        "height":25,
                        "x":18,
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
                        "width":110,
                        "height":25,
                        "x":78,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn2",
                  "events":{"click":"__bangBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":60,
                        "height":25,
                        "x":188,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn1",
                  "events":{"click":"__bagBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "label":"Người",
                        "labelPlacement":"bottom",
                        "width":25,
                        "height":25,
                        "x":473,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn2",
                  "events":{"click":"__bagBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"Thú",
                        "labelPlacement":"bottom",
                        "width":25,
                        "height":25,
                        "x":498,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn3",
                  "events":{"click":"__bagBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"TV",
                        "labelPlacement":"bottom",
                        "width":25,
                        "height":25,
                        "x":523,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn4",
                  "events":{"click":"__bagBtn4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"Máy",
                        "labelPlacement":"bottom",
                        "width":25,
                        "height":25,
                        "x":548,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn5",
                  "events":{"click":"__bagBtn5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"Ma",
                        "labelPlacement":"bottom",
                        "width":25,
                        "height":25,
                        "x":573,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn6",
                  "events":{"click":"__bagBtn6_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"Long",
                        "labelPlacement":"bottom",
                        "width":25,
                        "height":25,
                        "x":598,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bagBtn7",
                  "events":{"click":"__bagBtn7_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "label":"BOSS",
                        "labelPlacement":"bottom",
                        "width":33,
                        "height":25,
                        "x":623,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":9,
                        "y":59,
                        "width":704,
                        "height":404,
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":59,
                                 "x":9,
                                 "width":704,
                                 "height":404,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MonsterHeartPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":704,
                                          "height":404
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "label":"Hornor",
                                          "y":0,
                                          "x":0,
                                          "width":450,
                                          "height":400,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"levelShowImage",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":56,
                                                   "y":37,
                                                   "width":40,
                                                   "height":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":30,
                                                   "x":64.5,
                                                   "width":321,
                                                   "height":346,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":49,
                                                            "y":40,
                                                            "width":105,
                                                            "height":69
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine12",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":162,
                                                            "y":233,
                                                            "width":105,
                                                            "height":69
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine9",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":165,
                                                            "y":169,
                                                            "width":102,
                                                            "height":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine11",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":52,
                                                            "y":228,
                                                            "width":102,
                                                            "height":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine8",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":52,
                                                            "y":174,
                                                            "width":102,
                                                            "height":69
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":162,
                                                            "y":103,
                                                            "width":105,
                                                            "height":69
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":163.5,
                                                            "y":37,
                                                            "width":102,
                                                            "height":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":52,
                                                            "y":97,
                                                            "width":102,
                                                            "height":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine7",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":17,
                                                            "height":113,
                                                            "x":260.5,
                                                            "y":114
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine10",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":17,
                                                            "height":113,
                                                            "x":152,
                                                            "y":174
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine6",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":17,
                                                            "height":113,
                                                            "x":41,
                                                            "y":114
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"imLine3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":17,
                                                            "height":113,
                                                            "x":152,
                                                            "y":53
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_MonsterHeartPanel_Image15",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":321,
                                                            "height":346,
                                                            "x":0,
                                                            "y":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":1,
                                                            "width":34,
                                                            "height":34,
                                                            "y":153,
                                                            "x":143
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":2,
                                                            "width":34,
                                                            "height":34,
                                                            "y":28,
                                                            "x":143
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":3,
                                                            "width":34,
                                                            "height":34,
                                                            "y":89,
                                                            "x":253
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":4,
                                                            "width":34,
                                                            "height":34,
                                                            "y":214,
                                                            "x":253
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":5,
                                                            "width":34,
                                                            "height":34,
                                                            "y":273,
                                                            "x":142
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum6",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":6,
                                                            "width":34,
                                                            "height":34,
                                                            "y":214,
                                                            "x":33
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MonsterHeartSlot,
                                                      "id":"holeNum7",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "monsterHeartHolePos":7,
                                                            "width":34,
                                                            "height":34,
                                                            "y":89,
                                                            "x":33
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MonsterHeartPanel_Button1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "4";
                                                this.verticalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"WspPageSelLeft"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MonsterHeartPanel_Button2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "4";
                                                this.verticalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"WspPageSelRight"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"needExpText",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":280,
                                                   "y":320,
                                                   "text":"Ma Năng cần：",
                                                   "width":91
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":280,
                                                   "y":341,
                                                   "text":"Ma Năng có：",
                                                   "width":91
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"needExpLab",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":374,
                                                   "y":320,
                                                   "text":"0",
                                                   "width":75
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"haveExpLab",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":374,
                                                   "y":341,
                                                   "width":75
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "events":{"click":"___MonsterHeartPanel_BasicGlowButton11_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":329,
                                                   "y":367,
                                                   "label":"Thăng cấp"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":17,
                                                   "y":350,
                                                   "text":"Cấp:"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"nowBoxLevelLab",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90,
                                                   "y":350,
                                                   "text":"Lv1"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":17,
                                                   "y":370,
                                                   "text":"Hệ số tăng:",
                                                   "width":89
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"nowRatioLab",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":370,
                                                   "text":"0%"
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
                                          "y":195,
                                          "width":250,
                                          "height":205,
                                          "x":453,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":98.5,
                                                   "y":10,
                                                   "text":"Tổ hợp tăng"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HRule,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":40,
                                                   "y":33,
                                                   "width":170
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":43,
                                                   "text":"Label",
                                                   "width":230
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":69,
                                                   "text":"Label",
                                                   "width":230
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":95,
                                                   "text":"Label",
                                                   "width":230
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":121,
                                                   "text":"Label",
                                                   "width":230
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":147,
                                                   "text":"Label",
                                                   "width":230
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
                                 "y":59,
                                 "x":9,
                                 "width":704,
                                 "height":404,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MonsterHeartPanel_Image16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":704,
                                          "height":404
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "x":0,
                                          "width":450,
                                          "height":404,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MonsterHeartPanel_Image17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":108,
                                                   "x":118,
                                                   "width":100,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MonsterHeartSlot,
                                             "id":"needUpSlot",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "isOpen":true,
                                                   "width":34,
                                                   "height":34,
                                                   "y":136,
                                                   "x":149
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MonsterHeartPanel_Image18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":108,
                                                   "x":248,
                                                   "width":100,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MonsterHeartSlot,
                                             "id":"afterUpSlot",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "isOpen":true,
                                                   "width":34,
                                                   "height":34,
                                                   "y":136,
                                                   "x":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MonsterHeartPanel_Image19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":226,
                                                   "x":180,
                                                   "width":100,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MonsterHeartSlot,
                                             "id":"jinshiHeartSlot",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "isOpen":true,
                                                   "width":34,
                                                   "height":34,
                                                   "y":254,
                                                   "x":210
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"upGradeJishu",
                                             "events":{"change":"__upGradeJishu_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":146,
                                                   "y":200,
                                                   "minimum":2,
                                                   "maximum":5,
                                                   "width":48.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":325,
                                                   "text":"Dung luyện thất bại không mất Ma Tâm"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":146,
                                                   "y":225,
                                                   "text":"Đặt Ma Tâm"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":192,
                                                   "y":110,
                                                   "text":"Thành công："
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"upSuccessRate",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":220,
                                                   "y":124,
                                                   "text":"0%"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___MonsterHeartPanel_BasicDelayButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":5000,
                                                   "styleName":"BtnStdRed",
                                                   "x":266.5,
                                                   "y":200,
                                                   "label":"Toàn bộ"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___MonsterHeartPanel_BasicDelayButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":5000,
                                                   "styleName":"BtnStdRed",
                                                   "x":200,
                                                   "y":175,
                                                   "label":"D.Luyện"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"ifUseByGold",
                                             "events":{"click":"__ifUseByGold_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":363,
                                                   "label":"Không đủ tự động mua (800 vàng)"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"ifUseJinshiHeart",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":142,
                                                   "y":345
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
                                          "label":"Hornor",
                                          "y":195,
                                          "width":247,
                                          "height":205,
                                          "x":454,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":48,
                                                   "y":152,
                                                   "text":"Phân giải nhận：",
                                                   "width":121
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 63855;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":48,
                                                   "y":168,
                                                   "text":"Ma Năng",
                                                   "width":62
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "events":{"click":"___MonsterHeartPanel_BasicDelayButton3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16382208;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":5000,
                                                   "styleName":"BtnStdRed",
                                                   "x":120,
                                                   "y":125,
                                                   "label":"Phân giải",
                                                   "width":75
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"resolveExp",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":115,
                                                   "y":168,
                                                   "text":"+0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"resolveNumNS",
                                             "events":{"change":"__resolveNumNS_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "minimum":1,
                                                   "maximum":9999,
                                                   "x":57,
                                                   "y":125,
                                                   "width":55
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MonsterHeartPanel_Image20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":30,
                                                   "x":68,
                                                   "width":100,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MonsterHeartSlot,
                                             "id":"resolveSlot",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "isOpen":true,
                                                   "width":34,
                                                   "height":34,
                                                   "x":99,
                                                   "y":58
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
                                 "y":59,
                                 "x":9,
                                 "width":702,
                                 "height":410,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MonsterHeartPanel_Image21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":702,
                                          "height":410
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":110,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":137,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":165,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":193,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":220,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":247,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":273,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":300,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showName9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":326,
                                          "text":"Label",
                                          "width":88,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":110,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":137,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":165,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":193,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":220,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":247,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":273,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":300,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showHeart9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":326,
                                          "text":"Label",
                                          "width":228,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":110,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":137,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":165,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":193,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":220,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":247,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":273,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":300,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showPro9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":409,
                                          "y":326,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":110,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":137,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":165,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":193,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":220,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":247,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":273,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":300,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"showMax9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":539,
                                          "y":326,
                                          "text":"Label",
                                          "width":120,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelectLabel",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":373,
                                          "x":276
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
                  "id":"BagCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "y":59,
                        "width":247,
                        "height":192,
                        "x":462,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":40,
                                 "x":15
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":40,
                                 "x":52
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":40,
                                 "x":89
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":40,
                                 "x":126
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":40,
                                 "x":163
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":40,
                                 "x":200
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":80,
                                 "x":15
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":80,
                                 "x":52
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":80,
                                 "x":89
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":80,
                                 "x":126
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":80,
                                 "x":163
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":80,
                                 "x":200
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":120,
                                 "x":15
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":120,
                                 "x":52
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":120,
                                 "x":89
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":120,
                                 "x":126
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":120,
                                 "x":163
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MonsterHeartSlot,
                           "id":"bagHole17",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "y":120,
                                 "x":200
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HRule,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":42,
                                 "y":29,
                                 "width":170
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "right";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":98.5,
                                 "y":4,
                                 "text":"Túi Ma Tâm"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelect",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":162,
                                 "x":50
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _339046414showMax9:Label;
      
      private var max_slot:uint = 180;
      
      public function MonsterHeartPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 720;
         this.height = 480;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___MonsterHeartPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MonsterHeartPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine1() : Image
      {
         return this._1892607993imLine1;
      }
      
      public function set imLine1(param1:Image) : void
      {
         var _loc2_:Object = this._1892607993imLine1;
         if(_loc2_ !== param1)
         {
            this._1892607993imLine1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine1",_loc2_,param1));
         }
      }
      
      private function upgradeMonsterHeartItem(param1:Boolean) : void
      {
         var type:Number;
         var typeName:String;
         var ifHaveItem:Boolean;
         var tempNumUp:Number = NaN;
         var giid:Number = NaN;
         var i:* = undefined;
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var gfunc:Function = null;
         var goldfunc:Function = null;
         var isAll:Boolean = param1;
         tempNumUp = upGradeJishu.value;
         if(tempNumUp < 2 || tempNumUp > 5)
         {
            return;
         }
         if(needUpSlot.giid < 0 || !needUpSlot.giid || !needUpSlot.slotData)
         {
            return;
         }
         giid = needUpSlot.giid;
         type = Number(needUpSlot.slotData.type);
         typeName = BagTypeArr[type - 1];
         ifHaveItem = false;
         for(i in bagData[typeName])
         {
            if(giid == bagData[typeName][i].itemId)
            {
               ifHaveItem = true;
               if(bagData[typeName][i].n < tempNumUp)
               {
                  Alert.show(Language.MONSTER_HEART[6],"",Alert.YES);
                  return;
               }
            }
         }
         if(ifUseJinshiHeart.selected && ifUseByGold.selected)
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            goldLockFlag = bagPanel.goldLockFlag;
            if(goldLockFlag || !bagPanel)
            {
               gfunc = function(param1:String):void
               {
                  _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
               return;
            }
         }
         if(!ifHaveItem)
         {
            Alert.show(Language.MONSTER_HEART[6],"",Alert.YES);
            return;
         }
         if(ifUseJinshiHeart.selected && !ifUseByGold.selected && _core.player.mhjingshi <= 0)
         {
            Alert.show(Language.MONSTER_HEART[7],"",Alert.YES);
            return;
         }
         if(ifUseJinshiHeart.selected && ifUseByGold.selected)
         {
            if(_core.player.gold < 800 && _core.player.mhjingshi <= 0)
            {
               Alert.show("Không đủ vàng","",Alert.YES);
               return;
            }
            goldfunc = function(param1:CloseEvent):void
            {
               var bagPanel:BagPanel = null;
               var goldLockFlag:Boolean = false;
               var gfunc:Function = null;
               var event:CloseEvent = param1;
               if(event.detail == Alert.YES)
               {
                  bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
                  goldLockFlag = bagPanel.goldLockFlag;
                  if(goldLockFlag || !bagPanel)
                  {
                     gfunc = function(param1:String):void
                     {
                        _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                     return;
                  }
                  _core.remote.call("upgradeMonsterHeartItem",null,isAll,giid,tempNumUp,ifUseJinshiHeart.selected,ifUseByGold.selected);
               }
            };
            Alert.show("Không đủ Tâm Tinh Thạch sẽ tự động dùng vàng để mua?","",Alert.YES | Alert.NO,null,goldfunc);
         }
         else
         {
            _core.remote.call("upgradeMonsterHeartItem",null,isAll,giid,tempNumUp,ifUseJinshiHeart.selected,ifUseByGold.selected);
         }
      }
      
      public function ___MonsterHeartPanel_Button2_click(param1:MouseEvent) : void
      {
         onPageSelect(2);
      }
      
      private function onInitMonsterHeartData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         monsterHeartData = param1["data"];
         bagData = param1["bag"];
         setImageLineVis();
         freshenOneBox();
         resolveSlot.clean();
         needUpSlot.clean();
         afterUpSlot.clean();
         jinshiHeartSlot.giid = 5884;
         jinshiHeartSlot.type = GamePredef.TBL_ITEM_TEMPLATE;
         jinshiHeartSlot.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][5884];
         freshenNeedExp();
         updataBagChange();
         labelUpdatePage();
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine2() : Image
      {
         return this._1892607994imLine2;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine3() : Image
      {
         return this._1892607995imLine3;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine4() : Image
      {
         return this._1892607996imLine4;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine8() : Image
      {
         return this._1892608000imLine8;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine9() : Image
      {
         return this._1892608001imLine9;
      }
      
      public function set imLine9(param1:Image) : void
      {
         var _loc2_:Object = this._1892608001imLine9;
         if(_loc2_ !== param1)
         {
            this._1892608001imLine9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine9",_loc2_,param1));
         }
      }
      
      public function set imLine5(param1:Image) : void
      {
         var _loc2_:Object = this._1892607997imLine5;
         if(_loc2_ !== param1)
         {
            this._1892607997imLine5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine5",_loc2_,param1));
         }
      }
      
      public function set imLine6(param1:Image) : void
      {
         var _loc2_:Object = this._1892607998imLine6;
         if(_loc2_ !== param1)
         {
            this._1892607998imLine6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine5() : Image
      {
         return this._1892607997imLine5;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine7() : Image
      {
         return this._1892607999imLine7;
      }
      
      public function set imLine8(param1:Image) : void
      {
         var _loc2_:Object = this._1892608000imLine8;
         if(_loc2_ !== param1)
         {
            this._1892608000imLine8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine8",_loc2_,param1));
         }
      }
      
      public function set showHeart2(param1:Label) : void
      {
         var _loc2_:Object = this._453832201showHeart2;
         if(_loc2_ !== param1)
         {
            this._453832201showHeart2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart2",_loc2_,param1));
         }
      }
      
      public function set showHeart6(param1:Label) : void
      {
         var _loc2_:Object = this._453832205showHeart6;
         if(_loc2_ !== param1)
         {
            this._453832205showHeart6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart6",_loc2_,param1));
         }
      }
      
      public function set resolveSlot(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._1952778762resolveSlot;
         if(_loc2_ !== param1)
         {
            this._1952778762resolveSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveSlot",_loc2_,param1));
         }
      }
      
      public function set showHeart7(param1:Label) : void
      {
         var _loc2_:Object = this._453832206showHeart7;
         if(_loc2_ !== param1)
         {
            this._453832206showHeart7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart7",_loc2_,param1));
         }
      }
      
      public function set showHeart4(param1:Label) : void
      {
         var _loc2_:Object = this._453832203showHeart4;
         if(_loc2_ !== param1)
         {
            this._453832203showHeart4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart4",_loc2_,param1));
         }
      }
      
      public function set showHeart1(param1:Label) : void
      {
         var _loc2_:Object = this._453832200showHeart1;
         if(_loc2_ !== param1)
         {
            this._453832200showHeart1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart1",_loc2_,param1));
         }
      }
      
      public function set showName1(param1:Label) : void
      {
         var _loc2_:Object = this._1919589879showName1;
         if(_loc2_ !== param1)
         {
            this._1919589879showName1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName1",_loc2_,param1));
         }
      }
      
      public function set showMax5(param1:Label) : void
      {
         var _loc2_:Object = this._339046418showMax5;
         if(_loc2_ !== param1)
         {
            this._339046418showMax5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax5",_loc2_,param1));
         }
      }
      
      public function set showHeart3(param1:Label) : void
      {
         var _loc2_:Object = this._453832202showHeart3;
         if(_loc2_ !== param1)
         {
            this._453832202showHeart3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart3",_loc2_,param1));
         }
      }
      
      public function set showHeart8(param1:Label) : void
      {
         var _loc2_:Object = this._453832207showHeart8;
         if(_loc2_ !== param1)
         {
            this._453832207showHeart8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart8",_loc2_,param1));
         }
      }
      
      public function set showHeart5(param1:Label) : void
      {
         var _loc2_:Object = this._453832204showHeart5;
         if(_loc2_ !== param1)
         {
            this._453832204showHeart5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart5",_loc2_,param1));
         }
      }
      
      public function set showName5(param1:Label) : void
      {
         var _loc2_:Object = this._1919589875showName5;
         if(_loc2_ !== param1)
         {
            this._1919589875showName5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax8() : Label
      {
         return this._339046415showMax8;
      }
      
      public function set imLine7(param1:Image) : void
      {
         var _loc2_:Object = this._1892607999imLine7;
         if(_loc2_ !== param1)
         {
            this._1892607999imLine7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine7",_loc2_,param1));
         }
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      public function set showHeart9(param1:Label) : void
      {
         var _loc2_:Object = this._453832208showHeart9;
         if(_loc2_ !== param1)
         {
            this._453832208showHeart9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHeart9",_loc2_,param1));
         }
      }
      
      public function set showName4(param1:Label) : void
      {
         var _loc2_:Object = this._1919589876showName4;
         if(_loc2_ !== param1)
         {
            this._1919589876showName4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName4",_loc2_,param1));
         }
      }
      
      public function set showName9(param1:Label) : void
      {
         var _loc2_:Object = this._1919589871showName9;
         if(_loc2_ !== param1)
         {
            this._1919589871showName9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax3() : Label
      {
         return this._339046420showMax3;
      }
      
      public function set showName6(param1:Label) : void
      {
         var _loc2_:Object = this._1919589874showName6;
         if(_loc2_ !== param1)
         {
            this._1919589874showName6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get afterUpSlot() : MonsterHeartSlot
      {
         return this._279430197afterUpSlot;
      }
      
      public function set showMax8(param1:Label) : void
      {
         var _loc2_:Object = this._339046415showMax8;
         if(_loc2_ !== param1)
         {
            this._339046415showMax8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax4() : Label
      {
         return this._339046419showMax4;
      }
      
      public function set showName8(param1:Label) : void
      {
         var _loc2_:Object = this._1919589872showName8;
         if(_loc2_ !== param1)
         {
            this._1919589872showName8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName8",_loc2_,param1));
         }
      }
      
      public function set showName3(param1:Label) : void
      {
         var _loc2_:Object = this._1919589877showName3;
         if(_loc2_ !== param1)
         {
            this._1919589877showName3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax9() : Label
      {
         return this._339046414showMax9;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole0() : MonsterHeartSlot
      {
         return this._2091025336bagHole0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole1() : MonsterHeartSlot
      {
         return this._2091025335bagHole1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole4() : MonsterHeartSlot
      {
         return this._2091025332bagHole4;
      }
      
      public function ___MonsterHeartPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         upgradeMonsterHeartItem(true);
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole6() : MonsterHeartSlot
      {
         return this._2091025330bagHole6;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole7() : MonsterHeartSlot
      {
         return this._2091025329bagHole7;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole2() : MonsterHeartSlot
      {
         return this._2091025334bagHole2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole3() : MonsterHeartSlot
      {
         return this._2091025333bagHole3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole5() : MonsterHeartSlot
      {
         return this._2091025331bagHole5;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole9() : MonsterHeartSlot
      {
         return this._2091025327bagHole9;
      }
      
      public function set showName2(param1:Label) : void
      {
         var _loc2_:Object = this._1919589878showName2;
         if(_loc2_ !== param1)
         {
            this._1919589878showName2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole8() : MonsterHeartSlot
      {
         return this._2091025328bagHole8;
      }
      
      public function changeResolveExp() : void
      {
         var _loc6_:* = undefined;
         if(resolveSlot.giid < 0 || !resolveSlot.giid || !resolveSlot.slotData)
         {
            return;
         }
         var _loc1_:Number = resolveSlot.giid;
         var _loc2_:Object = GameData.d[GamePredef.TBL_CREATUREH_HEART][_loc1_];
         var _loc3_:Number = resolveNumNS.value;
         var _loc4_:Number = Number(resolveSlot.slotData.type);
         var _loc5_:String = BagTypeArr[_loc4_ - 1];
         for(_loc6_ in bagData[_loc5_])
         {
            if(_loc1_ == bagData[_loc5_][_loc6_].itemId)
            {
               maxResolveNum = bagData[_loc5_][_loc6_].n;
            }
         }
         resolveExp.htmlText = "+" + Number(_loc2_.exp) * _loc3_;
      }
      
      public function __bagBtn1_click(param1:MouseEvent) : void
      {
         changeBagView(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelect() : PageSelector
      {
         return this._1273109611pageSelect;
      }
      
      public function set afterUpSlot(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._279430197afterUpSlot;
         if(_loc2_ !== param1)
         {
            this._279430197afterUpSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afterUpSlot",_loc2_,param1));
         }
      }
      
      public function set showName7(param1:Label) : void
      {
         var _loc2_:Object = this._1919589873showName7;
         if(_loc2_ !== param1)
         {
            this._1919589873showName7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showName7",_loc2_,param1));
         }
      }
      
      private function setMHSlotUpSuccessRate() : void
      {
         var _loc1_:Number = upGradeJishu.value;
         if(_loc1_ < 2 || _loc1_ > 5)
         {
            return;
         }
         if(needUpSlot.giid < 0 || !needUpSlot.giid || !needUpSlot.slotData)
         {
            return;
         }
         var _loc2_:Number = needUpSlot.giid;
         var _loc3_:Object = GameData.d[GamePredef.TBL_CREATUREH_HEART][_loc2_];
         var _loc4_:Number = Number(_loc3_.color) + 1;
         upSuccessRate.htmlText = MHUPMH_RATE[_loc4_][_loc1_] + "%";
      }
      
      public function set bagHole0(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025336bagHole0;
         if(_loc2_ !== param1)
         {
            this._2091025336bagHole0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveExp() : Label
      {
         return this._1599588207resolveExp;
      }
      
      public function set bagHole1(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025335bagHole1;
         if(_loc2_ !== param1)
         {
            this._2091025335bagHole1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole1",_loc2_,param1));
         }
      }
      
      public function set bagHole3(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025333bagHole3;
         if(_loc2_ !== param1)
         {
            this._2091025333bagHole3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole3",_loc2_,param1));
         }
      }
      
      public function set bagHole4(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025332bagHole4;
         if(_loc2_ !== param1)
         {
            this._2091025332bagHole4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole4",_loc2_,param1));
         }
      }
      
      public function set bagHole7(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025329bagHole7;
         if(_loc2_ !== param1)
         {
            this._2091025329bagHole7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole7",_loc2_,param1));
         }
      }
      
      public function set holeNum2(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994612holeNum2;
         if(_loc2_ !== param1)
         {
            this._514994612holeNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum2",_loc2_,param1));
         }
      }
      
      public function set bagHole8(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025328bagHole8;
         if(_loc2_ !== param1)
         {
            this._2091025328bagHole8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole8",_loc2_,param1));
         }
      }
      
      public function set bagHole5(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025331bagHole5;
         if(_loc2_ !== param1)
         {
            this._2091025331bagHole5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole5",_loc2_,param1));
         }
      }
      
      public function onUpgradeMonsterHeartBox(param1:Object) : void
      {
         monsterHeartData.heartBoxLev = param1;
         freshenNeedExp();
         setImageLineVis();
      }
      
      public function set holeNum5(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994609holeNum5;
         if(_loc2_ !== param1)
         {
            this._514994609holeNum5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum5",_loc2_,param1));
         }
      }
      
      public function set holeNum6(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994608holeNum6;
         if(_loc2_ !== param1)
         {
            this._514994608holeNum6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum6",_loc2_,param1));
         }
      }
      
      public function set bagHole9(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025327bagHole9;
         if(_loc2_ !== param1)
         {
            this._2091025327bagHole9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole9",_loc2_,param1));
         }
      }
      
      public function set bagHole6(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025330bagHole6;
         if(_loc2_ !== param1)
         {
            this._2091025330bagHole6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole6",_loc2_,param1));
         }
      }
      
      public function set holeNum1(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994613holeNum1;
         if(_loc2_ !== param1)
         {
            this._514994613holeNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum1",_loc2_,param1));
         }
      }
      
      public function set holeNum7(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994607holeNum7;
         if(_loc2_ !== param1)
         {
            this._514994607holeNum7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum7",_loc2_,param1));
         }
      }
      
      public function set holeNum4(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994610holeNum4;
         if(_loc2_ !== param1)
         {
            this._514994610holeNum4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum4",_loc2_,param1));
         }
      }
      
      public function set bagHole2(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._2091025334bagHole2;
         if(_loc2_ !== param1)
         {
            this._2091025334bagHole2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole2",_loc2_,param1));
         }
      }
      
      public function ___MonsterHeartPanel_Button1_click(param1:MouseEvent) : void
      {
         onPageSelect(1);
      }
      
      public function __bagBtn6_click(param1:MouseEvent) : void
      {
         changeBagView(6);
      }
      
      public function set holeNum3(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._514994611holeNum3;
         if(_loc2_ !== param1)
         {
            this._514994611holeNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeNum3",_loc2_,param1));
         }
      }
      
      public function set needExpLab(param1:Label) : void
      {
         var _loc2_:Object = this._1730037146needExpLab;
         if(_loc2_ !== param1)
         {
            this._1730037146needExpLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needExpLab",_loc2_,param1));
         }
      }
      
      public function set pageSelect(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1273109611pageSelect;
         if(_loc2_ !== param1)
         {
            this._1273109611pageSelect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelect",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine1() : Label
      {
         return this._1464427281showCombine1;
      }
      
      public function set nowRatioLab(param1:Label) : void
      {
         var _loc2_:Object = this._281628040nowRatioLab;
         if(_loc2_ !== param1)
         {
            this._281628040nowRatioLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowRatioLab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine4() : Label
      {
         return this._1464427278showCombine4;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine5() : Label
      {
         return this._1464427277showCombine5;
      }
      
      public function set ifUseJinshiHeart(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1333480055ifUseJinshiHeart;
         if(_loc2_ !== param1)
         {
            this._1333480055ifUseJinshiHeart = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ifUseJinshiHeart",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine2() : Label
      {
         return this._1464427280showCombine2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine3() : Label
      {
         return this._1464427279showCombine3;
      }
      
      private function changeBagView(param1:int) : void
      {
         choiceBag = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= 7)
         {
            this["bagBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bagBtn" + param1].selected = true;
         updataBagChange();
      }
      
      private function pageClear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < countPerPage)
         {
            this["bagHole" + _loc1_].reset();
            _loc1_++;
         }
      }
      
      private function set maxResolveNum(param1:Number) : void
      {
         var _loc2_:Object = this._1523019390maxResolveNum;
         if(_loc2_ !== param1)
         {
            this._1523019390maxResolveNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxResolveNum",_loc2_,param1));
         }
      }
      
      public function __ifUseByGold_click(param1:MouseEvent) : void
      {
         ifUseByGold_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole14() : MonsterHeartSlot
      {
         return this._397275893bagHole14;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      private function _MonsterHeartPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mhTitle.text = param1;
         },"mhTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000710);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image1.source = param1;
         },"_MonsterHeartPanel_Image1.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000709);
         },function(param1:Object):void
         {
            imLine1.source = param1;
         },"imLine1.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000709);
         },function(param1:Object):void
         {
            imLine12.source = param1;
         },"imLine12.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000707);
         },function(param1:Object):void
         {
            imLine9.source = param1;
         },"imLine9.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000707);
         },function(param1:Object):void
         {
            imLine11.source = param1;
         },"imLine11.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000709);
         },function(param1:Object):void
         {
            imLine8.source = param1;
         },"imLine8.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000709);
         },function(param1:Object):void
         {
            imLine5.source = param1;
         },"imLine5.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000707);
         },function(param1:Object):void
         {
            imLine2.source = param1;
         },"imLine2.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000707);
         },function(param1:Object):void
         {
            imLine4.source = param1;
         },"imLine4.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000708);
         },function(param1:Object):void
         {
            imLine7.source = param1;
         },"imLine7.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000708);
         },function(param1:Object):void
         {
            imLine10.source = param1;
         },"imLine10.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000708);
         },function(param1:Object):void
         {
            imLine6.source = param1;
         },"imLine6.source");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000708);
         },function(param1:Object):void
         {
            imLine3.source = param1;
         },"imLine3.source");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000717);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image15.source = param1;
         },"_MonsterHeartPanel_Image15.source");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum1.slotType = param1;
         },"holeNum1.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum2.slotType = param1;
         },"holeNum2.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum3.slotType = param1;
         },"holeNum3.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum4.slotType = param1;
         },"holeNum4.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum5.slotType = param1;
         },"holeNum5.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum6.slotType = param1;
         },"holeNum6.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BOX;
         },function(param1:int):void
         {
            holeNum7.slotType = param1;
         },"holeNum7.slotType");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.monsterHeart;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            haveExpLab.text = param1;
         },"haveExpLab.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000711);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image16.source = param1;
         },"_MonsterHeartPanel_Image16.source");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000716);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image17.source = param1;
         },"_MonsterHeartPanel_Image17.source");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_UP;
         },function(param1:int):void
         {
            needUpSlot.slotType = param1;
         },"needUpSlot.slotType");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000716);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image18.source = param1;
         },"_MonsterHeartPanel_Image18.source");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000716);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image19.source = param1;
         },"_MonsterHeartPanel_Image19.source");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[12].toString().replace("{num}",_core.player.mhjingshi);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ifUseJinshiHeart.label = param1;
         },"ifUseJinshiHeart.label");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000716);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image20.source = param1;
         },"_MonsterHeartPanel_Image20.source");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_RESOLVE;
         },function(param1:int):void
         {
            resolveSlot.slotType = param1;
         },"resolveSlot.slotType");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000718);
         },function(param1:Object):void
         {
            _MonsterHeartPanel_Image21.source = param1;
         },"_MonsterHeartPanel_Image21.source");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole0.slotType = param1;
         },"bagHole0.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole1.slotType = param1;
         },"bagHole1.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole2.slotType = param1;
         },"bagHole2.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole3.slotType = param1;
         },"bagHole3.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole4.slotType = param1;
         },"bagHole4.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole5.slotType = param1;
         },"bagHole5.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole6.slotType = param1;
         },"bagHole6.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole7.slotType = param1;
         },"bagHole7.slotType");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole8.slotType = param1;
         },"bagHole8.slotType");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole9.slotType = param1;
         },"bagHole9.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole10.slotType = param1;
         },"bagHole10.slotType");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole11.slotType = param1;
         },"bagHole11.slotType");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole12.slotType = param1;
         },"bagHole12.slotType");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole13.slotType = param1;
         },"bagHole13.slotType");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole14.slotType = param1;
         },"bagHole14.slotType");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole15.slotType = param1;
         },"bagHole15.slotType");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole16.slotType = param1;
         },"bagHole16.slotType");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONSTERHEART_BAG;
         },function(param1:int):void
         {
            bagHole17.slotType = param1;
         },"bagHole17.slotType");
         result[52] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole13() : MonsterHeartSlot
      {
         return this._397275894bagHole13;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole16() : MonsterHeartSlot
      {
         return this._397275891bagHole16;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole17() : MonsterHeartSlot
      {
         return this._397275890bagHole17;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole11() : MonsterHeartSlot
      {
         return this._397275896bagHole11;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole12() : MonsterHeartSlot
      {
         return this._397275895bagHole12;
      }
      
      public function set upGradeJishu(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._636843653upGradeJishu;
         if(_loc2_ !== param1)
         {
            this._636843653upGradeJishu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upGradeJishu",_loc2_,param1));
         }
      }
      
      private function labelUpdatePage() : void
      {
         pageSelectLabel.initPageSeletor(displayNum,labelCountPerPage);
         pageSelectLabel.pageNo = labelPageNo;
      }
      
      [Bindable(event="propertyChange")]
      public function get ifUseByGold() : CheckBox
      {
         return this._1573867231ifUseByGold;
      }
      
      public function set resolveExp(param1:Label) : void
      {
         var _loc2_:Object = this._1599588207resolveExp;
         if(_loc2_ !== param1)
         {
            this._1599588207resolveExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveExp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole15() : MonsterHeartSlot
      {
         return this._397275892bagHole15;
      }
      
      private function labelDrawPage(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc3_:int = 0;
         while(_loc3_ < labelCountPerPage)
         {
            _loc4_ = _loc3_ + 1;
            this["showName" + _loc4_].htmlText = "";
            this["showHeart" + _loc4_].htmlText = "";
            this["showPro" + _loc4_].htmlText = "";
            this["showMax" + _loc4_].htmlText = "";
            if(_loc3_ < param2)
            {
               _loc5_ = _dm.gameDataIndex[GamePredef.TBL_CREATUREH_COMBINE][param1 + _loc4_];
               for(_loc6_ in _loc5_)
               {
                  _loc7_ = _loc5_[_loc6_];
                  this["showName" + _loc4_].htmlText = _loc7_.name;
                  _loc8_ = _loc7_.typeCombine;
                  _loc9_ = _loc8_.split("|");
                  _loc10_ = Number(_loc9_[0]);
                  _loc11_ = HTYPE_NAME[_loc10_];
                  _loc12_ = 1;
                  while(_loc12_ < _loc9_.length)
                  {
                     _loc10_ = Number(_loc9_[_loc12_]);
                     _loc11_ += "+" + HTYPE_NAME[_loc10_];
                     _loc12_++;
                  }
                  this["showHeart" + _loc4_].htmlText = _loc11_;
                  _loc13_ = Number(_loc7_.propType1);
                  this["showPro" + _loc4_].htmlText = Language.TIP_MONSTER_H[_loc13_];
                  _loc14_ = Number(_loc7_.maxNum);
                  this["showMax" + _loc4_].htmlText = _loc14_ / 10000;
               }
            }
            _loc3_++;
         }
      }
      
      private function labelPageChange(param1:int, param2:int) : void
      {
         labelPageNo = pageSelectLabel.pageNo;
         labelDrawPage(param1,param2);
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveNumNS() : NumericStepper
      {
         return this._402246975resolveNumNS;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelShowImage() : Image
      {
         return this._1054773958levelShowImage;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelectLabel() : PageSelector
      {
         return this._1409449289pageSelectLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagHole10() : MonsterHeartSlot
      {
         return this._397275897bagHole10;
      }
      
      public function __bagBtn5_click(param1:MouseEvent) : void
      {
         changeBagView(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn1() : BasicGlowButton
      {
         return this._344721027bagBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn2() : BasicGlowButton
      {
         return this._344721026bagBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn3() : BasicGlowButton
      {
         return this._344721025bagBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn4() : BasicGlowButton
      {
         return this._344721024bagBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn5() : BasicGlowButton
      {
         return this._344721023bagBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn6() : BasicGlowButton
      {
         return this._344721022bagBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagBtn7() : BasicGlowButton
      {
         return this._344721021bagBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      [Bindable(event="propertyChange")]
      public function get mhTitle() : BasicTitleCanvas
      {
         return this._1011903869mhTitle;
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeView(2);
      }
      
      public function updateMonsterHeartBox(param1:Object) : void
      {
         if(param1)
         {
            monsterHeartData = param1;
            freshenOneBox();
            setImageLineVis();
            freshenNeedExp();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nowBoxLevelLab() : Label
      {
         return this._1600033182nowBoxLevelLab;
      }
      
      [Bindable(event="propertyChange")]
      public function get jinshiHeartSlot() : MonsterHeartSlot
      {
         return this._61299297jinshiHeartSlot;
      }
      
      [Bindable(event="propertyChange")]
      public function get haveExpLab() : Label
      {
         return this._1460564552haveExpLab;
      }
      
      private function resolveHeart() : void
      {
         var typeName:String;
         var resNum:Number;
         var type:Number;
         var giid:Number;
         var i:* = undefined;
         var gfunc:Function = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         resNum = resolveNumNS.value;
         if(resolveSlot.giid < 0 || !resolveSlot.giid || !resolveSlot.slotData)
         {
            return;
         }
         giid = resolveSlot.giid;
         type = Number(resolveSlot.slotData.type);
         typeName = BagTypeArr[type - 1];
         for(i in bagData[typeName])
         {
            if(giid == bagData[typeName][i].itemId)
            {
               if(bagData[typeName][i].n < resNum)
               {
                  Alert.show(Language.MONSTER_HEART[6],"",Alert.YES);
                  return;
               }
               _core.remote.call("resolveMonsterHeart",null,giid,resNum);
            }
         }
      }
      
      private function _MonsterHeartPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MONSTER_HEART[0];
         _loc1_ = Language.MONSTER_HEART[1];
         _loc1_ = Language.MONSTER_HEART[2];
         _loc1_ = Language.MONSTER_HEART[3];
         _loc1_ = ResManager.getIconUrl(4130220000710);
         _loc1_ = ResManager.getIconUrl(4130220000709);
         _loc1_ = ResManager.getIconUrl(4130220000709);
         _loc1_ = ResManager.getIconUrl(4130220000707);
         _loc1_ = ResManager.getIconUrl(4130220000707);
         _loc1_ = ResManager.getIconUrl(4130220000709);
         _loc1_ = ResManager.getIconUrl(4130220000709);
         _loc1_ = ResManager.getIconUrl(4130220000707);
         _loc1_ = ResManager.getIconUrl(4130220000707);
         _loc1_ = ResManager.getIconUrl(4130220000708);
         _loc1_ = ResManager.getIconUrl(4130220000708);
         _loc1_ = ResManager.getIconUrl(4130220000708);
         _loc1_ = ResManager.getIconUrl(4130220000708);
         _loc1_ = ResManager.getIconUrl(4130220000717);
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = Slot.SLOT_MONSTERHEART_BOX;
         _loc1_ = _core.player.monsterHeart;
         _loc1_ = ResManager.getIconUrl(4130220000711);
         _loc1_ = ResManager.getIconUrl(4130220000716);
         _loc1_ = Slot.SLOT_MONSTERHEART_UP;
         _loc1_ = ResManager.getIconUrl(4130220000716);
         _loc1_ = ResManager.getIconUrl(4130220000716);
         _loc1_ = Language.MONSTER_HEART[12].toString().replace("{num}",_core.player.mhjingshi);
         _loc1_ = ResManager.getIconUrl(4130220000716);
         _loc1_ = Slot.SLOT_MONSTERHEART_RESOLVE;
         _loc1_ = ResManager.getIconUrl(4130220000718);
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
         _loc1_ = Slot.SLOT_MONSTERHEART_BAG;
      }
      
      public function set showCombine2(param1:Label) : void
      {
         var _loc2_:Object = this._1464427280showCombine2;
         if(_loc2_ !== param1)
         {
            this._1464427280showCombine2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine2",_loc2_,param1));
         }
      }
      
      public function updateMonsterHeartBagByType(param1:Object, param2:Number) : void
      {
         if(initialized)
         {
            bagData = param1;
            if(param2 == choiceBag)
            {
               updataBagChange();
            }
         }
      }
      
      public function set showCombine1(param1:Label) : void
      {
         var _loc2_:Object = this._1464427281showCombine1;
         if(_loc2_ !== param1)
         {
            this._1464427281showCombine1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upSuccessRate() : Label
      {
         return this._2003452392upSuccessRate;
      }
      
      public function set showCombine4(param1:Label) : void
      {
         var _loc2_:Object = this._1464427278showCombine4;
         if(_loc2_ !== param1)
         {
            this._1464427278showCombine4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine4",_loc2_,param1));
         }
      }
      
      public function set showCombine5(param1:Label) : void
      {
         var _loc2_:Object = this._1464427277showCombine5;
         if(_loc2_ !== param1)
         {
            this._1464427277showCombine5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine5",_loc2_,param1));
         }
      }
      
      private function drawPage(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < countPerPage)
         {
            this["bagHole" + _loc3_].clean();
            if(_loc3_ < param2)
            {
               if(Boolean(itemAC[param1 + _loc3_]) && Boolean(itemAC[param1 + _loc3_].itemId) && Boolean(itemAC[param1 + _loc3_].n))
               {
                  this["bagHole" + _loc3_].monsterHeartBagPos = itemAC[param1 + _loc3_].id;
                  this["bagHole" + _loc3_].monsterHeartType = choiceBag;
                  this["bagHole" + _loc3_].type = GamePredef.TBL_CREATUREH_HEART;
                  this["bagHole" + _loc3_].giid = itemAC[param1 + _loc3_].itemId;
                  this["bagHole" + _loc3_].stackNum = itemAC[param1 + _loc3_].n;
                  this["bagHole" + _loc3_].slotData = GameData.d[GamePredef.TBL_CREATUREH_HEART][itemAC[param1 + _loc3_].itemId];
                  _loc4_ = _core.data.getGameData(131,itemAC[param1 + _loc3_].itemId);
                  (_loc4_) && _loc4_.color && this["bagHole" + _loc3_].setStyleName(_loc4_.color);
               }
            }
            _loc3_++;
         }
      }
      
      public function set showCombine3(param1:Label) : void
      {
         var _loc2_:Object = this._1464427279showCombine3;
         if(_loc2_ !== param1)
         {
            this._1464427279showCombine3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart1() : Label
      {
         return this._453832200showHeart1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart2() : Label
      {
         return this._453832201showHeart2;
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveSlot() : MonsterHeartSlot
      {
         return this._1952778762resolveSlot;
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart4() : Label
      {
         return this._453832203showHeart4;
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart6() : Label
      {
         return this._453832205showHeart6;
      }
      
      public function set bagHole10(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275897bagHole10;
         if(_loc2_ !== param1)
         {
            this._397275897bagHole10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole10",_loc2_,param1));
         }
      }
      
      private function upgradeBox() : void
      {
         var needExp:Number = NaN;
         var gold:Number = NaN;
         var choiceBoxLev:Number = Number(monsterHeartData.heartBoxLev[choiceBox]);
         var boxId:Number = choiceBox * 10 + choiceBoxLev;
         needExp = Number(GameData.d[GamePredef.TBL_CREATUREH_CONTAIN][boxId].exp);
         var func:Function = function(param1:CloseEvent):void
         {
            var bagPanel:BagPanel = null;
            var goldLockFlag:Boolean = false;
            var gfunc:Function = null;
            var event:CloseEvent = param1;
            if(event.detail == Alert.YES)
            {
               if(needExp > _core.player.monsterHeart)
               {
                  bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
                  goldLockFlag = bagPanel.goldLockFlag;
                  if(goldLockFlag || !bagPanel)
                  {
                     gfunc = function(param1:String):void
                     {
                        _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                     return;
                  }
               }
               _core.remote.call("upgradeMonsterHeartBox",null,_boxIndex);
            }
         };
         if(choiceBoxLev >= 6)
         {
            Alert.show("Đã max cấp","",Alert.YES);
            return;
         }
         if(needExp > _core.player.monsterHeart)
         {
            gold = Number(GameData.d[GamePredef.TBL_CREATUREH_CONTAIN][boxId].goldNum);
            Alert.show(Language.MONSTER_HEART[4].toString().replace("{num}",gold),"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            Alert.show(Language.MONSTER_HEART[5].toString().replace("{num}",needExp),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function set bagHole11(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275896bagHole11;
         if(_loc2_ !== param1)
         {
            this._397275896bagHole11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart3() : Label
      {
         return this._453832202showHeart3;
      }
      
      public function set bagHole12(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275895bagHole12;
         if(_loc2_ !== param1)
         {
            this._397275895bagHole12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole12",_loc2_,param1));
         }
      }
      
      public function set bagHole13(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275894bagHole13;
         if(_loc2_ !== param1)
         {
            this._397275894bagHole13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart7() : Label
      {
         return this._453832206showHeart7;
      }
      
      public function set bagHole14(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275893bagHole14;
         if(_loc2_ !== param1)
         {
            this._397275893bagHole14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart9() : Label
      {
         return this._453832208showHeart9;
      }
      
      [Bindable(event="propertyChange")]
      public function get showName2() : Label
      {
         return this._1919589878showName2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart5() : Label
      {
         return this._453832204showHeart5;
      }
      
      [Bindable(event="propertyChange")]
      public function get showName6() : Label
      {
         return this._1919589874showName6;
      }
      
      public function set bagHole15(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275892bagHole15;
         if(_loc2_ !== param1)
         {
            this._397275892bagHole15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showName9() : Label
      {
         return this._1919589871showName9;
      }
      
      public function set bagHole16(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275891bagHole16;
         if(_loc2_ !== param1)
         {
            this._397275891bagHole16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole16",_loc2_,param1));
         }
      }
      
      public function set bagHole17(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._397275890bagHole17;
         if(_loc2_ !== param1)
         {
            this._397275890bagHole17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagHole17",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showName4() : Label
      {
         return this._1919589876showName4;
      }
      
      [Bindable(event="propertyChange")]
      public function get showName5() : Label
      {
         return this._1919589875showName5;
      }
      
      [Bindable(event="propertyChange")]
      public function get showHeart8() : Label
      {
         return this._453832207showHeart8;
      }
      
      public function __bagBtn4_click(param1:MouseEvent) : void
      {
         changeBagView(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get showName1() : Label
      {
         return this._1919589879showName1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showName7() : Label
      {
         return this._1919589873showName7;
      }
      
      [Bindable(event="propertyChange")]
      public function get showName8() : Label
      {
         return this._1919589872showName8;
      }
      
      public function set ifUseByGold(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1573867231ifUseByGold;
         if(_loc2_ !== param1)
         {
            this._1573867231ifUseByGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ifUseByGold",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showName3() : Label
      {
         return this._1919589877showName3;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum1() : MonsterHeartSlot
      {
         return this._514994613holeNum1;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum3() : MonsterHeartSlot
      {
         return this._514994611holeNum3;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum4() : MonsterHeartSlot
      {
         return this._514994610holeNum4;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum5() : MonsterHeartSlot
      {
         return this._514994609holeNum5;
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum7() : MonsterHeartSlot
      {
         return this._514994607holeNum7;
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get needExpLab() : Label
      {
         return this._1730037146needExpLab;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum6() : MonsterHeartSlot
      {
         return this._514994608holeNum6;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeNum2() : MonsterHeartSlot
      {
         return this._514994612holeNum2;
      }
      
      public function set levelShowImage(param1:Image) : void
      {
         var _loc2_:Object = this._1054773958levelShowImage;
         if(_loc2_ !== param1)
         {
            this._1054773958levelShowImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelShowImage",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nowRatioLab() : Label
      {
         return this._281628040nowRatioLab;
      }
      
      private function changeView(param1:Number) : void
      {
         var _loc3_:int = 0;
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
         if(param1 == 2)
         {
            BagCanvas.visible = false;
            _loc3_ = 1;
            while(_loc3_ <= 7)
            {
               this["bagBtn" + _loc3_].visible = false;
               _loc3_++;
            }
         }
         else
         {
            BagCanvas.visible = true;
            _loc3_ = 1;
            while(_loc3_ <= 7)
            {
               this["bagBtn" + _loc3_].visible = true;
               _loc3_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ifUseJinshiHeart() : CheckBox
      {
         return this._1333480055ifUseJinshiHeart;
      }
      
      public function set resolveNumNS(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._402246975resolveNumNS;
         if(_loc2_ !== param1)
         {
            this._402246975resolveNumNS = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveNumNS",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upGradeJishu() : NumericStepper
      {
         return this._636843653upGradeJishu;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxResolveNum() : Number
      {
         return this._1523019390maxResolveNum;
      }
      
      public function set pageSelectLabel(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1409449289pageSelectLabel;
         if(_loc2_ !== param1)
         {
            this._1409449289pageSelectLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelectLabel",_loc2_,param1));
         }
      }
      
      private function updataBagChange() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc1_:String = BagTypeArr[choiceBag - 1];
         var _loc2_:Object = bagData[_loc1_];
         pageSelect.onPageChanged = pageChange;
         pageSelectLabel.onPageChanged = labelPageChange;
         pageSelect.onPageCleared = pageClear;
         itemAC.removeAll();
         for(_loc3_ in _loc2_)
         {
            _loc4_ = new Object();
            _loc4_.id = _loc3_;
            _loc4_.itemId = _loc2_[_loc3_].itemId;
            _loc4_.n = _loc2_[_loc3_].n;
            itemAC.addItem(_loc4_);
         }
         updatePage();
      }
      
      public function set imLine11(param1:Image) : void
      {
         var _loc2_:Object = this._1458694312imLine11;
         if(_loc2_ !== param1)
         {
            this._1458694312imLine11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine11",_loc2_,param1));
         }
      }
      
      public function set imLine10(param1:Image) : void
      {
         var _loc2_:Object = this._1458694313imLine10;
         if(_loc2_ !== param1)
         {
            this._1458694313imLine10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine10",_loc2_,param1));
         }
      }
      
      private function freshenOneBox() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         var _loc8_:* = undefined;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 7)
         {
            _loc2_ = choiceBox * 10 + _loc1_;
            _loc3_ = GameData.d[GamePredef.TBL_CREATUREH_POINT][_loc2_];
            this["holeNum" + _loc1_].reset();
            this["holeNum" + _loc1_].toolTip = "";
            this["holeNum" + _loc1_].monsterHeartBox = choiceBox;
            if(!monsterHeartData.hadActHole[choiceBox][_loc1_])
            {
               _loc4_ = Number(_loc3_.quality);
               _loc5_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc3_.itemId].name;
               _loc5_ = _loc5_ + JGZ_COLOR[_loc4_];
               _loc6_ = Number(_loc3_.goldnum);
               this["holeNum" + _loc1_].toolTip = Language.MONSTER_HEART[11].toString().replace("{name}",_loc5_).replace("{num}",_loc3_.num).replace("{gold}",_loc6_);
               this["holeNum" + _loc1_].setOpen(false);
            }
            else
            {
               this["holeNum" + _loc1_].setOpen(true);
               if(monsterHeartData.hadActHole[choiceBox][_loc1_] > 0)
               {
                  this["holeNum" + _loc1_].type = GamePredef.TBL_CREATUREH_HEART;
                  this["holeNum" + _loc1_].giid = monsterHeartData.hadActHole[choiceBox][_loc1_];
                  this["holeNum" + _loc1_].slotData = GameData.d[GamePredef.TBL_CREATUREH_HEART][monsterHeartData.hadActHole[choiceBox][_loc1_]];
                  _loc7_ = _core.data.getGameData(131,monsterHeartData.hadActHole[choiceBox][_loc1_]);
                  (_loc7_) && _loc7_.color && this["holeNum" + _loc1_].setStyleName(_loc7_.color);
               }
               else
               {
                  _loc8_ = choiceBox * 10 + _loc1_;
                  _loc9_ = Number(GameData.d[GamePredef.TBL_CREATUREH_POINT][_loc8_].type);
                  _loc10_ = Language.MONSTER_HEART[10];
                  if(_loc9_ < 0)
                  {
                     _loc10_ += "<font color=\'#00FF00\'>" + "Tất cả hệ" + "</font>";
                  }
                  else
                  {
                     _loc10_ += "<font color=\'#00FF00\'>" + TipMonsterHeart.MONHEART_TYPE[_loc9_] + "</font>";
                  }
                  this["holeNum" + _loc1_].toolTip = _loc10_;
               }
            }
            _loc1_++;
         }
      }
      
      public function set imLine12(param1:Image) : void
      {
         var _loc2_:Object = this._1458694311imLine12;
         if(_loc2_ !== param1)
         {
            this._1458694311imLine12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine12",_loc2_,param1));
         }
      }
      
      public function __upGradeJishu_change(param1:NumericStepperEvent) : void
      {
         setMHSlotUpSuccessRate();
      }
      
      public function ___MonsterHeartPanel_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         resolveHeart();
      }
      
      public function __resolveNumNS_change(param1:NumericStepperEvent) : void
      {
         changeResolveExp();
      }
      
      public function set needUpSlot(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._1280191633needUpSlot;
         if(_loc2_ !== param1)
         {
            this._1280191633needUpSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needUpSlot",_loc2_,param1));
         }
      }
      
      public function set BagCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1450694496BagCanvas;
         if(_loc2_ !== param1)
         {
            this._1450694496BagCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BagCanvas",_loc2_,param1));
         }
      }
      
      public function __bagBtn3_click(param1:MouseEvent) : void
      {
         changeBagView(3);
      }
      
      public function set needExpText(param1:Label) : void
      {
         var _loc2_:Object = this._2091301004needExpText;
         if(_loc2_ !== param1)
         {
            this._2091301004needExpText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needExpText",_loc2_,param1));
         }
      }
      
      public function set bagBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721027bagBtn1;
         if(_loc2_ !== param1)
         {
            this._344721027bagBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn1",_loc2_,param1));
         }
      }
      
      public function set bagBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721026bagBtn2;
         if(_loc2_ !== param1)
         {
            this._344721026bagBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn2",_loc2_,param1));
         }
      }
      
      public function set bagBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721025bagBtn3;
         if(_loc2_ !== param1)
         {
            this._344721025bagBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn3",_loc2_,param1));
         }
      }
      
      private function updatePage() : void
      {
         pageSelect.initPageSeletor(itemAC.length,countPerPage);
         pageSelect.pageNo = itemPageNo;
      }
      
      public function set bagBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721022bagBtn6;
         if(_loc2_ !== param1)
         {
            this._344721022bagBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn6",_loc2_,param1));
         }
      }
      
      protected function ifUseByGold_clickHandler(param1:MouseEvent) : void
      {
         if(ifUseByGold.selected && !ifUseJinshiHeart.selected)
         {
            ifUseJinshiHeart.selected = true;
         }
      }
      
      public function set bagBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721023bagBtn5;
         if(_loc2_ !== param1)
         {
            this._344721023bagBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn5",_loc2_,param1));
         }
      }
      
      public function set bagBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721021bagBtn7;
         if(_loc2_ !== param1)
         {
            this._344721021bagBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn7",_loc2_,param1));
         }
      }
      
      public function updateMonsterHeartPanel(param1:Object) : void
      {
         monsterHeartData = param1["data"];
         bagData = param1["bag"];
         setImageLineVis();
         freshenOneBox();
         freshenNeedExp();
         updataBagChange();
      }
      
      public function ___MonsterHeartPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
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
      
      public function set bagBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344721024bagBtn4;
         if(_loc2_ !== param1)
         {
            this._344721024bagBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagBtn4",_loc2_,param1));
         }
      }
      
      private function pageChange(param1:int, param2:int) : void
      {
         itemPageNo = pageSelect.pageNo;
         drawPage(param1,param2);
      }
      
      public function set mhTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1011903869mhTitle;
         if(_loc2_ !== param1)
         {
            this._1011903869mhTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mhTitle",_loc2_,param1));
         }
      }
      
      private function setImageLineVis() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = undefined;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Object = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:int = 0;
         var _loc23_:String = null;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:int = 0;
         var _loc1_:Number = choiceBox * 10 + 1;
         var _loc2_:String = GameData.d[GamePredef.TBL_CREATUREH_CONTAIN][_loc1_].line;
         var _loc3_:Array = _loc2_.split("|");
         var _loc4_:int = 1;
         while(_loc4_ <= 12)
         {
            this["imLine" + _loc4_].visible = false;
            _loc8_ = Number(fangxiangArr[_loc4_ - 1]);
            _loc9_ = Number(resIconArr[_loc8_][0]);
            this["imLine" + _loc4_].source = ResManager.getIconUrl(_loc9_);
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            this["imLine" + _loc3_[_loc5_]].visible = true;
            _loc5_++;
         }
         var _loc6_:int = 1;
         while(_loc6_ <= 5)
         {
            this["showCombine" + _loc6_].visible = false;
            _loc6_++;
         }
         var _loc7_:Object = monsterHeartData.hadActCombine[choiceBox];
         if(_loc7_)
         {
            _loc10_ = choiceBox * 10;
            _loc11_ = 1;
            for(_loc12_ in _loc7_)
            {
               _loc13_ = Math.floor(Number(_loc12_) / 100);
               if(_loc13_ != _loc10_)
               {
                  _loc10_ = _loc13_;
                  _loc14_ = Number(_loc12_) * 10 + Number(_loc7_[_loc12_].color);
                  _loc15_ = GameData.d[GamePredef.TBL_CREATUREH_COMBINE][_loc14_];
                  _loc16_ = _loc15_.lineCombine;
                  _loc17_ = _loc16_.split("|");
                  _loc18_ = choiceBox * 10 + Number(monsterHeartData.heartBoxLev[choiceBox]);
                  _loc19_ = Number(GameData.d[GamePredef.TBL_CREATUREH_CONTAIN][_loc18_].num);
                  _loc20_ = _loc19_ / 10000;
                  _loc21_ = Number(_loc7_[_loc12_].talent) / 10000;
                  _loc22_ = 0;
                  while(_loc22_ < _loc17_.length)
                  {
                     _loc26_ = Number(_loc17_[_loc22_]) - 1;
                     _loc8_ = Number(fangxiangArr[_loc26_]);
                     _loc27_ = _loc10_ % 10;
                     _loc9_ = Number(resIconArr[_loc8_][_loc27_]);
                     this["imLine" + _loc17_[_loc22_]].source = ResManager.getIconUrl(_loc9_);
                     _loc22_++;
                  }
                  _loc23_ = "<font color=\'#F9F900\'>" + _loc15_.name + "</font>";
                  _loc24_ = Number(_loc15_.propType1);
                  _loc25_ = Math.ceil(_loc21_ * _loc20_ * Number(_loc15_.pNum1));
                  this["showCombine" + _loc11_].visible = true;
                  switch(_loc24_)
                  {
                     case 1:
                     case 2:
                     case 4:
                     case 5:
                     case 6:
                     case 7:
                     case 8:
                     case 9:
                     case 10:
                     case 11:
                     case 12:
                     case 13:
                     case 14:
                     case 31:
                     case 32:
                     case 58:
                     case 61:
                     case 71:
                     case 34:
                     case 72:
                        this["showCombine" + _loc11_].htmlText = _loc23_ + "  " + "<font color=\'#00FFFF\'>" + Language.TIP_MONSTER_H[_loc24_] + _loc25_ / 10000 + "</font>";
                        break;
                     case 59:
                     case 60:
                     case 62:
                     case 63:
                        this["showCombine" + _loc11_].htmlText = _loc23_ + "  " + "<font color=\'#00FFFF\'>" + Language.TIP_MONSTER_H[_loc24_] + _loc25_ / 100 + "%" + "</font>";
                  }
                  _loc11_++;
               }
            }
         }
      }
      
      public function set jinshiHeartSlot(param1:MonsterHeartSlot) : void
      {
         var _loc2_:Object = this._61299297jinshiHeartSlot;
         if(_loc2_ !== param1)
         {
            this._61299297jinshiHeartSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jinshiHeartSlot",_loc2_,param1));
         }
      }
      
      public function set nowBoxLevelLab(param1:Label) : void
      {
         var _loc2_:Object = this._1600033182nowBoxLevelLab;
         if(_loc2_ !== param1)
         {
            this._1600033182nowBoxLevelLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowBoxLevelLab",_loc2_,param1));
         }
      }
      
      private function freshenNeedExp() : void
      {
         var _loc1_:Number = Number(monsterHeartData.heartBoxLev[choiceBox]);
         var _loc2_:Number = Number(levelIconArr[choiceBox - 1][_loc1_ - 1]);
         levelShowImage.source = ResManager.getIconUrl(_loc2_);
         var _loc3_:Number = choiceBox * 10 + monsterHeartData.heartBoxLev[choiceBox];
         var _loc4_:Object = GameData.d[GamePredef.TBL_CREATUREH_CONTAIN][_loc3_];
         var _loc5_:Number = Number(_loc4_.exp);
         if(monsterHeartData.heartBoxLev[choiceBox] == 6)
         {
            needExpText.visible = false;
            needExpLab.visible = false;
            nowBoxLevelLab.htmlText = "Lv" + monsterHeartData.heartBoxLev[choiceBox] + "（Max）";
         }
         else
         {
            needExpText.visible = true;
            needExpLab.visible = true;
            needExpLab.htmlText = _loc5_.toString();
            nowBoxLevelLab.htmlText = "Lv" + monsterHeartData.heartBoxLev[choiceBox];
         }
         nowRatioLab.htmlText = _loc4_.num / 100 - 100 + "%";
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
      public function get imLine12() : Image
      {
         return this._1458694311imLine12;
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
      
      public function set bangBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324754bangBtn2;
         if(_loc2_ !== param1)
         {
            this._1863324754bangBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine10() : Image
      {
         return this._1458694313imLine10;
      }
      
      public function ___MonsterHeartPanel_BasicGlowButton11_click(param1:MouseEvent) : void
      {
         upgradeBox();
      }
      
      [Bindable(event="propertyChange")]
      public function get BagCanvas() : Canvas
      {
         return this._1450694496BagCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine11() : Image
      {
         return this._1458694312imLine11;
      }
      
      [Bindable(event="propertyChange")]
      public function get needUpSlot() : MonsterHeartSlot
      {
         return this._1280191633needUpSlot;
      }
      
      public function set haveExpLab(param1:Label) : void
      {
         var _loc2_:Object = this._1460564552haveExpLab;
         if(_loc2_ !== param1)
         {
            this._1460564552haveExpLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"haveExpLab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needExpText() : Label
      {
         return this._2091301004needExpText;
      }
      
      public function set showPro1(param1:Label) : void
      {
         var _loc2_:Object = this._338940991showPro1;
         if(_loc2_ !== param1)
         {
            this._338940991showPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro1",_loc2_,param1));
         }
      }
      
      public function set showPro2(param1:Label) : void
      {
         var _loc2_:Object = this._338940990showPro2;
         if(_loc2_ !== param1)
         {
            this._338940990showPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro2",_loc2_,param1));
         }
      }
      
      public function set showPro3(param1:Label) : void
      {
         var _loc2_:Object = this._338940989showPro3;
         if(_loc2_ !== param1)
         {
            this._338940989showPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro3",_loc2_,param1));
         }
      }
      
      public function set showPro5(param1:Label) : void
      {
         var _loc2_:Object = this._338940987showPro5;
         if(_loc2_ !== param1)
         {
            this._338940987showPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro5",_loc2_,param1));
         }
      }
      
      public function set showPro6(param1:Label) : void
      {
         var _loc2_:Object = this._338940986showPro6;
         if(_loc2_ !== param1)
         {
            this._338940986showPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro6",_loc2_,param1));
         }
      }
      
      public function ___MonsterHeartPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         upgradeMonsterHeartItem(false);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MonsterHeartPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MonsterHeartPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MonsterHeartPanelWatcherSetupUtil");
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
      
      public function set showPro9(param1:Label) : void
      {
         var _loc2_:Object = this._338940983showPro9;
         if(_loc2_ !== param1)
         {
            this._338940983showPro9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro9",_loc2_,param1));
         }
      }
      
      public function set showPro7(param1:Label) : void
      {
         var _loc2_:Object = this._338940985showPro7;
         if(_loc2_ !== param1)
         {
            this._338940985showPro7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro7",_loc2_,param1));
         }
      }
      
      public function __bagBtn2_click(param1:MouseEvent) : void
      {
         changeBagView(2);
      }
      
      public function set showPro8(param1:Label) : void
      {
         var _loc2_:Object = this._338940984showPro8;
         if(_loc2_ !== param1)
         {
            this._338940984showPro8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro8",_loc2_,param1));
         }
      }
      
      private function onPageSelect(param1:int) : void
      {
         var _loc2_:* = int(5 + _boxIndex);
         if(param1 == 1)
         {
            _loc2_--;
            _boxIndex = _loc2_ % 5;
            if(_boxIndex == 0)
            {
               _boxIndex = 5;
            }
         }
         else
         {
            _loc2_++;
            _boxIndex = _loc2_ % 5;
            if(_boxIndex == 0)
            {
               _boxIndex = 5;
            }
         }
         choiceBox = _boxIndex;
         freshenNeedExp();
         freshenOneBox();
         setImageLineVis();
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      public function set showPro4(param1:Label) : void
      {
         var _loc2_:Object = this._338940988showPro4;
         if(_loc2_ !== param1)
         {
            this._338940988showPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPro4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro1() : Label
      {
         return this._338940991showPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro2() : Label
      {
         return this._338940990showPro2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro3() : Label
      {
         return this._338940989showPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro5() : Label
      {
         return this._338940987showPro5;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro6() : Label
      {
         return this._338940986showPro6;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro9() : Label
      {
         return this._338940983showPro9;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro4() : Label
      {
         return this._338940988showPro4;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro7() : Label
      {
         return this._338940985showPro7;
      }
      
      [Bindable(event="propertyChange")]
      public function get showPro8() : Label
      {
         return this._338940984showPro8;
      }
      
      public function set upSuccessRate(param1:Label) : void
      {
         var _loc2_:Object = this._2003452392upSuccessRate;
         if(_loc2_ !== param1)
         {
            this._2003452392upSuccessRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upSuccessRate",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initMonsterHeartData",new Responder(onInitMonsterHeartData));
      }
      
      public function set showMax2(param1:Label) : void
      {
         var _loc2_:Object = this._339046421showMax2;
         if(_loc2_ !== param1)
         {
            this._339046421showMax2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax2",_loc2_,param1));
         }
      }
      
      public function set showMax1(param1:Label) : void
      {
         var _loc2_:Object = this._339046422showMax1;
         if(_loc2_ !== param1)
         {
            this._339046422showMax1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax1",_loc2_,param1));
         }
      }
      
      public function set showMax7(param1:Label) : void
      {
         var _loc2_:Object = this._339046416showMax7;
         if(_loc2_ !== param1)
         {
            this._339046416showMax7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax7",_loc2_,param1));
         }
      }
      
      public function set showMax4(param1:Label) : void
      {
         var _loc2_:Object = this._339046419showMax4;
         if(_loc2_ !== param1)
         {
            this._339046419showMax4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax4",_loc2_,param1));
         }
      }
      
      public function set showMax9(param1:Label) : void
      {
         var _loc2_:Object = this._339046414showMax9;
         if(_loc2_ !== param1)
         {
            this._339046414showMax9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax9",_loc2_,param1));
         }
      }
      
      public function set showMax6(param1:Label) : void
      {
         var _loc2_:Object = this._339046417showMax6;
         if(_loc2_ !== param1)
         {
            this._339046417showMax6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax6",_loc2_,param1));
         }
      }
      
      public function set showMax3(param1:Label) : void
      {
         var _loc2_:Object = this._339046420showMax3;
         if(_loc2_ !== param1)
         {
            this._339046420showMax3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMax3",_loc2_,param1));
         }
      }
      
      public function updateMonsterHeartAfterUp(param1:Boolean, param2:Number) : void
      {
         if(param1)
         {
            _core.sysMidNote("Kết thúc dung luyện toàn bộ dung luyện Ma Tâm");
         }
         else if(param2 == 1)
         {
            _core.sysMidNote("Dung luyện thành công");
         }
         else
         {
            _core.sysMidNote("Dung luyện thất bại");
         }
         needUpSlot.stackNum = 1;
         afterUpSlot.stackNum = param2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax1() : Label
      {
         return this._339046422showMax1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax2() : Label
      {
         return this._339046421showMax2;
      }
      
      public function __bagBtn7_click(param1:MouseEvent) : void
      {
         changeBagView(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax5() : Label
      {
         return this._339046418showMax5;
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax6() : Label
      {
         return this._339046417showMax6;
      }
      
      [Bindable(event="propertyChange")]
      public function get showMax7() : Label
      {
         return this._339046416showMax7;
      }
      
      public function set imLine2(param1:Image) : void
      {
         var _loc2_:Object = this._1892607994imLine2;
         if(_loc2_ !== param1)
         {
            this._1892607994imLine2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine2",_loc2_,param1));
         }
      }
      
      public function setMHSlotAfterUp(param1:Number) : void
      {
         setMHSlotUpSuccessRate();
         var _loc2_:Object = GameData.d[GamePredef.TBL_CREATUREH_HEART][param1];
         var _loc3_:Number = Number(_loc2_.color) + 1;
         if(!_loc2_ || _loc3_ > 5)
         {
            return;
         }
         var _loc4_:Number = param1 + 1;
         afterUpSlot.clean();
         afterUpSlot.type = GamePredef.TBL_CREATUREH_HEART;
         afterUpSlot.giid = _loc4_;
         afterUpSlot.slotData = GameData.d[GamePredef.TBL_CREATUREH_HEART][_loc4_];
         var _loc5_:Object = _core.data.getGameData(131,_loc4_);
         (_loc5_) && _loc5_.color && afterUpSlot.setStyleName(_loc3_);
      }
      
      public function set imLine3(param1:Image) : void
      {
         var _loc2_:Object = this._1892607995imLine3;
         if(_loc2_ !== param1)
         {
            this._1892607995imLine3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imLine6() : Image
      {
         return this._1892607998imLine6;
      }
      
      public function set imLine4(param1:Image) : void
      {
         var _loc2_:Object = this._1892607996imLine4;
         if(_loc2_ !== param1)
         {
            this._1892607996imLine4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imLine4",_loc2_,param1));
         }
      }
   }
}

