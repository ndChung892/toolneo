package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HappyFrontLinePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1178662793item15:ItemSlot;
      
      private var happyFrontLineData:Object = {};
      
      public var _HappyFrontLinePanel_Image1:Image;
      
      private var _100525953item4:ItemSlot;
      
      private var _102850829left4:Image;
      
      private var _1106591637left15:Image;
      
      private var _1106591609left22:Image;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _1200599363right18:Image;
      
      private var resLightArr:Array = [4130220000697,4130220000698,4130220000699,4130220000700,4130220000701,4130220000702,4130220000703,4130220000704,4130220000705,4130220000706];
      
      private var _102850826left1:Image;
      
      private var _100525950item1:ItemSlot;
      
      private var _1106591640left12:Image;
      
      private var _1178662798item10:ItemSlot;
      
      private var _102850834left9:Image;
      
      private var happyFrontLineOneItemObj:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var resDarkArr:Array = [4130220000797,4130220000798,4130220000799,4130220000800,4130220000801,4130220000802,4130220000803,4130220000804,4130220000805,4130220000806];
      
      private var _102850831left6:Image;
      
      private var _1106591634left18:Image;
      
      private var _1106591606left25:Image;
      
      private var _1200599361right16:Image;
      
      private var _1982093501oneItem6:ItemSlot;
      
      private var _1982093503oneItem8:ItemSlot;
      
      private var _931102313right3:Image;
      
      private var _1200599359right14:Image;
      
      private var _1178662795item13:ItemSlot;
      
      private var lightGridNum:Number = 0;
      
      private var _core:Core = Core.getInstance();
      
      private var _1034521339lltOneItem:ItemSlot;
      
      private var _100525957item8:ItemSlot;
      
      private var _931102307right9:Image;
      
      private var _1106591639left13:Image;
      
      private var _1200599388right22:Image;
      
      private var _1200599357right12:Image;
      
      private var _1200599390right24:Image;
      
      private var _100525954item5:ItemSlot;
      
      private var _931102310right6:Image;
      
      private var _1106591642left10:Image;
      
      private var _1178662792item16:ItemSlot;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _1982093496oneItem1:ItemSlot;
      
      private var _1982093498oneItem3:ItemSlot;
      
      private var _102850827left2:Image;
      
      private var _100525951item2:ItemSlot;
      
      private var _2075718404leftResult:Image;
      
      private var _1106591636left16:Image;
      
      private var _1106591608left23:Image;
      
      private var _1200599386right20:Image;
      
      private var _931102315right1:Image;
      
      private var _1106591611left20:Image;
      
      private var _1200599355right10:Image;
      
      private var _1178662797item11:ItemSlot;
      
      private var _102850832left7:Image;
      
      private var _1200599364right19:Image;
      
      private var _931102309right7:Image;
      
      private var _1106591633left19:Image;
      
      private var _100525958item9:ItemSlot;
      
      private var _931102312right4:Image;
      
      private var _1178662794item14:ItemSlot;
      
      private var _1200599362right17:Image;
      
      private var _100525955item6:ItemSlot;
      
      private var _1106591638left14:Image;
      
      private var _1982093500oneItem5:ItemSlot;
      
      private var _102850828left3:Image;
      
      private var _100525952item3:ItemSlot;
      
      private var _1106591641left11:Image;
      
      private var _453021351rightResult:Image;
      
      public var _HappyFrontLinePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1982093502oneItem7:ItemSlot;
      
      private var _1200599358right13:Image;
      
      private var _1200599389right23:Image;
      
      private var _1982093504oneItem9:ItemSlot;
      
      private var happyFrontLineConf:Object = {};
      
      private var _1200599391right25:Image;
      
      private var _1200599360right15:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _102850833left8:Image;
      
      private var _1106591635left17:Image;
      
      private var _1106591607left24:Image;
      
      private var _98712998guize:Text;
      
      private var _931102314right2:Image;
      
      private var _1106591610left21:Image;
      
      private var _1178662796item12:ItemSlot;
      
      private var _102850830left5:Image;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1200599356right11:Image;
      
      private var _1982093495oneItem0:ItemSlot;
      
      private var _1982093497oneItem2:ItemSlot;
      
      private var _1200599387right21:Image;
      
      private var _1982093499oneItem4:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _931102308right8:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _931102311right5:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":670,
               "height":537,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_HappyFrontLinePanel_BasicTitleCanvas1",
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
                        "y":33
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
                        "y":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":53,
                        "width":650,
                        "height":470,
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "label":"Hornor",
                                 "y":53,
                                 "width":650,
                                 "height":470,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_HappyFrontLinePanel_Image1",
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
                                          "styleName":"CanvasBorder",
                                          "x":10,
                                          "y":10,
                                          "width":330,
                                          "height":450,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":36,
                                                   "y":152.5,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":36,
                                                   "y":193.5,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":36,
                                                   "y":236.5,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":36,
                                                   "y":277.5,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":36,
                                                   "y":319,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":82,
                                                   "y":361,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":361,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":361,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":361,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"oneItem9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":361,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HappyFrontLinePanel_Button1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":356,
                                                   "styleName":"happyFrontLineFresh",
                                                   "height":43,
                                                   "width":44
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HappyFrontLinePanel_Button2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":46,
                                                   "y":100,
                                                   "label":"随机开启",
                                                   "width":115,
                                                   "styleName":"BtnStdRed",
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HappyFrontLinePanel_Button3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":46,
                                                   "y":125,
                                                   "label":"开启奇数",
                                                   "width":115,
                                                   "styleName":"BtnStdRed",
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HappyFrontLinePanel_Button4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":100,
                                                   "label":"精确开启",
                                                   "width":115,
                                                   "styleName":"BtnStdRed",
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HappyFrontLinePanel_Button5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":125,
                                                   "label":"开启偶数",
                                                   "width":115,
                                                   "styleName":"BtnStdRed",
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":82,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":99,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":144,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":188,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":233,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":159,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":82,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":99,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":144,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":188,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":233,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":201,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":82,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":99,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":144,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":188,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":233,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":243,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":82,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":99,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":144,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":188,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":233,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":285,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":82,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":99,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":144,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":188,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":233,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"left25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"right25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":327,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"leftResult",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":148,
                                                   "y":45,
                                                   "height":34,
                                                   "width":17
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"rightResult",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":165,
                                                   "y":45,
                                                   "height":34,
                                                   "width":17
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
                                          "x":350,
                                          "y":10,
                                          "width":290,
                                          "height":168,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HappyFrontLinePanel_Button6_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":113,
                                                   "y":136,
                                                   "label":"LMới",
                                                   "styleName":"BtnStdRed",
                                                   "width":64,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"lltOneItem",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":128,
                                                   "y":74,
                                                   "movable":false
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
                                          "x":348,
                                          "y":186,
                                          "width":292,
                                          "height":274,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":60,
                                                   "y":54,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":106,
                                                   "y":54,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":152,
                                                   "y":54,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":198,
                                                   "y":54,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":60,
                                                   "y":98,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":106,
                                                   "y":98,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":152,
                                                   "y":98,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":198,
                                                   "y":98,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":60,
                                                   "y":142,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":106,
                                                   "y":142,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":152,
                                                   "y":142,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":198,
                                                   "y":142,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":60,
                                                   "y":186,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":106,
                                                   "y":186,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":152,
                                                   "y":186,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"item16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":198,
                                                   "y":186,
                                                   "movable":false
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
                                 "styleName":"CanvasBorder",
                                 "label":"Hornor",
                                 "y":53,
                                 "width":650,
                                 "height":470,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"guize",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 14;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":11,
                                          "width":630,
                                          "height":449
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
      
      private var _100525956item7:ItemSlot;
      
      public function HappyFrontLinePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 670;
         this.height = 537;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___HappyFrontLinePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HappyFrontLinePanel._watcherSetupUtil = param1;
      }
      
      public function set leftResult(param1:Image) : void
      {
         var _loc2_:Object = this._2075718404leftResult;
         if(_loc2_ !== param1)
         {
            this._2075718404leftResult = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftResult",_loc2_,param1));
         }
      }
      
      public function set lltOneItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1034521339lltOneItem;
         if(_loc2_ !== param1)
         {
            this._1034521339lltOneItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lltOneItem",_loc2_,param1));
         }
      }
      
      public function onHappyFrontLineFresh(param1:Number) : void
      {
         lltOneItem.type = GamePredef.TBL_ITEM_TEMPLATE;
         lltOneItem.giid = param1;
         lltOneItem.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1];
      }
      
      public function set left2(param1:Image) : void
      {
         var _loc2_:Object = this._102850827left2;
         if(_loc2_ !== param1)
         {
            this._102850827left2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left2",_loc2_,param1));
         }
      }
      
      public function set left3(param1:Image) : void
      {
         var _loc2_:Object = this._102850828left3;
         if(_loc2_ !== param1)
         {
            this._102850828left3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left3",_loc2_,param1));
         }
      }
      
      public function set left1(param1:Image) : void
      {
         var _loc2_:Object = this._102850826left1;
         if(_loc2_ !== param1)
         {
            this._102850826left1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left1",_loc2_,param1));
         }
      }
      
      public function set left5(param1:Image) : void
      {
         var _loc2_:Object = this._102850830left5;
         if(_loc2_ !== param1)
         {
            this._102850830left5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left5",_loc2_,param1));
         }
      }
      
      private function _HappyFrontLinePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.HAPPY_FRONT_LINE[0];
         _loc1_ = Language.HAPPY_FRONT_LINE[2];
         _loc1_ = Language.HAPPY_FRONT_LINE[3];
         _loc1_ = ResManager.getIconUrl(4130220000695);
         _loc1_ = Language.HAPPY_FRONT_LINE[10];
      }
      
      public function set left8(param1:Image) : void
      {
         var _loc2_:Object = this._102850833left8;
         if(_loc2_ !== param1)
         {
            this._102850833left8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left8",_loc2_,param1));
         }
      }
      
      public function set left9(param1:Image) : void
      {
         var _loc2_:Object = this._102850834left9;
         if(_loc2_ !== param1)
         {
            this._102850834left9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left9",_loc2_,param1));
         }
      }
      
      public function set left6(param1:Image) : void
      {
         var _loc2_:Object = this._102850831left6;
         if(_loc2_ !== param1)
         {
            this._102850831left6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left6",_loc2_,param1));
         }
      }
      
      public function set left4(param1:Image) : void
      {
         var _loc2_:Object = this._102850829left4;
         if(_loc2_ !== param1)
         {
            this._102850829left4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left4",_loc2_,param1));
         }
      }
      
      public function set left7(param1:Image) : void
      {
         var _loc2_:Object = this._102850832left7;
         if(_loc2_ !== param1)
         {
            this._102850832left7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left7",_loc2_,param1));
         }
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get left10() : Image
      {
         return this._1106591642left10;
      }
      
      [Bindable(event="propertyChange")]
      public function get left13() : Image
      {
         return this._1106591639left13;
      }
      
      [Bindable(event="propertyChange")]
      public function get left15() : Image
      {
         return this._1106591637left15;
      }
      
      [Bindable(event="propertyChange")]
      public function get left17() : Image
      {
         return this._1106591635left17;
      }
      
      [Bindable(event="propertyChange")]
      public function get left12() : Image
      {
         return this._1106591640left12;
      }
      
      [Bindable(event="propertyChange")]
      public function get item10() : ItemSlot
      {
         return this._1178662798item10;
      }
      
      public function ___HappyFrontLinePanel_Button4_click(param1:MouseEvent) : void
      {
         playHappyFrontLine(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get item15() : ItemSlot
      {
         return this._1178662793item15;
      }
      
      [Bindable(event="propertyChange")]
      public function get item16() : ItemSlot
      {
         return this._1178662792item16;
      }
      
      [Bindable(event="propertyChange")]
      public function get item11() : ItemSlot
      {
         return this._1178662797item11;
      }
      
      [Bindable(event="propertyChange")]
      public function get item12() : ItemSlot
      {
         return this._1178662796item12;
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
      public function get left11() : Image
      {
         return this._1106591641left11;
      }
      
      public function set right15(param1:Image) : void
      {
         var _loc2_:Object = this._1200599360right15;
         if(_loc2_ !== param1)
         {
            this._1200599360right15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right15",_loc2_,param1));
         }
      }
      
      public function set right12(param1:Image) : void
      {
         var _loc2_:Object = this._1200599357right12;
         if(_loc2_ !== param1)
         {
            this._1200599357right12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left14() : Image
      {
         return this._1106591638left14;
      }
      
      public function set right13(param1:Image) : void
      {
         var _loc2_:Object = this._1200599358right13;
         if(_loc2_ !== param1)
         {
            this._1200599358right13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item13() : ItemSlot
      {
         return this._1178662795item13;
      }
      
      [Bindable(event="propertyChange")]
      public function get item14() : ItemSlot
      {
         return this._1178662794item14;
      }
      
      [Bindable(event="propertyChange")]
      public function get left18() : Image
      {
         return this._1106591634left18;
      }
      
      [Bindable(event="propertyChange")]
      public function get left19() : Image
      {
         return this._1106591633left19;
      }
      
      [Bindable(event="propertyChange")]
      public function get left23() : Image
      {
         return this._1106591608left23;
      }
      
      [Bindable(event="propertyChange")]
      public function get left25() : Image
      {
         return this._1106591606left25;
      }
      
      public function set right17(param1:Image) : void
      {
         var _loc2_:Object = this._1200599362right17;
         if(_loc2_ !== param1)
         {
            this._1200599362right17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right17",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left20() : Image
      {
         return this._1106591611left20;
      }
      
      [Bindable(event="propertyChange")]
      public function get left21() : Image
      {
         return this._1106591610left21;
      }
      
      [Bindable(event="propertyChange")]
      public function get left16() : Image
      {
         return this._1106591636left16;
      }
      
      public function set right19(param1:Image) : void
      {
         var _loc2_:Object = this._1200599364right19;
         if(_loc2_ !== param1)
         {
            this._1200599364right19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right19",_loc2_,param1));
         }
      }
      
      public function set right16(param1:Image) : void
      {
         var _loc2_:Object = this._1200599361right16;
         if(_loc2_ !== param1)
         {
            this._1200599361right16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right16",_loc2_,param1));
         }
      }
      
      public function set right18(param1:Image) : void
      {
         var _loc2_:Object = this._1200599363right18;
         if(_loc2_ !== param1)
         {
            this._1200599363right18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right18",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left24() : Image
      {
         return this._1106591607left24;
      }
      
      public function set right11(param1:Image) : void
      {
         var _loc2_:Object = this._1200599356right11;
         if(_loc2_ !== param1)
         {
            this._1200599356right11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left22() : Image
      {
         return this._1106591609left22;
      }
      
      public function set right10(param1:Image) : void
      {
         var _loc2_:Object = this._1200599355right10;
         if(_loc2_ !== param1)
         {
            this._1200599355right10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right10",_loc2_,param1));
         }
      }
      
      public function set right14(param1:Image) : void
      {
         var _loc2_:Object = this._1200599359right14;
         if(_loc2_ !== param1)
         {
            this._1200599359right14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right14",_loc2_,param1));
         }
      }
      
      public function set right20(param1:Image) : void
      {
         var _loc2_:Object = this._1200599386right20;
         if(_loc2_ !== param1)
         {
            this._1200599386right20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right20",_loc2_,param1));
         }
      }
      
      public function ___HappyFrontLinePanel_Button1_click(param1:MouseEvent) : void
      {
         playHappyFrontLine(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem4() : ItemSlot
      {
         return this._1982093499oneItem4;
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem6() : ItemSlot
      {
         return this._1982093501oneItem6;
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem0() : ItemSlot
      {
         return this._1982093495oneItem0;
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem1() : ItemSlot
      {
         return this._1982093496oneItem1;
      }
      
      public function ___HappyFrontLinePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem7() : ItemSlot
      {
         return this._1982093502oneItem7;
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem8() : ItemSlot
      {
         return this._1982093503oneItem8;
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem9() : ItemSlot
      {
         return this._1982093504oneItem9;
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem2() : ItemSlot
      {
         return this._1982093497oneItem2;
      }
      
      public function set rightResult(param1:Image) : void
      {
         var _loc2_:Object = this._453021351rightResult;
         if(_loc2_ !== param1)
         {
            this._453021351rightResult = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightResult",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem5() : ItemSlot
      {
         return this._1982093500oneItem5;
      }
      
      public function set left11(param1:Image) : void
      {
         var _loc2_:Object = this._1106591641left11;
         if(_loc2_ !== param1)
         {
            this._1106591641left11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left11",_loc2_,param1));
         }
      }
      
      public function set left13(param1:Image) : void
      {
         var _loc2_:Object = this._1106591639left13;
         if(_loc2_ !== param1)
         {
            this._1106591639left13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left13",_loc2_,param1));
         }
      }
      
      public function set left10(param1:Image) : void
      {
         var _loc2_:Object = this._1106591642left10;
         if(_loc2_ !== param1)
         {
            this._1106591642left10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left10",_loc2_,param1));
         }
      }
      
      public function set left15(param1:Image) : void
      {
         var _loc2_:Object = this._1106591637left15;
         if(_loc2_ !== param1)
         {
            this._1106591637left15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left15",_loc2_,param1));
         }
      }
      
      public function set left17(param1:Image) : void
      {
         var _loc2_:Object = this._1106591635left17;
         if(_loc2_ !== param1)
         {
            this._1106591635left17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left17",_loc2_,param1));
         }
      }
      
      public function set left14(param1:Image) : void
      {
         var _loc2_:Object = this._1106591638left14;
         if(_loc2_ !== param1)
         {
            this._1106591638left14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left14",_loc2_,param1));
         }
      }
      
      public function set item11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662797item11;
         if(_loc2_ !== param1)
         {
            this._1178662797item11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item11",_loc2_,param1));
         }
      }
      
      public function set item12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662796item12;
         if(_loc2_ !== param1)
         {
            this._1178662796item12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item12",_loc2_,param1));
         }
      }
      
      public function set right24(param1:Image) : void
      {
         var _loc2_:Object = this._1200599390right24;
         if(_loc2_ !== param1)
         {
            this._1200599390right24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right24",_loc2_,param1));
         }
      }
      
      public function set item13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662795item13;
         if(_loc2_ !== param1)
         {
            this._1178662795item13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item13",_loc2_,param1));
         }
      }
      
      public function set item10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662798item10;
         if(_loc2_ !== param1)
         {
            this._1178662798item10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item10",_loc2_,param1));
         }
      }
      
      public function set left19(param1:Image) : void
      {
         var _loc2_:Object = this._1106591633left19;
         if(_loc2_ !== param1)
         {
            this._1106591633left19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left19",_loc2_,param1));
         }
      }
      
      public function set item15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662793item15;
         if(_loc2_ !== param1)
         {
            this._1178662793item15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item15",_loc2_,param1));
         }
      }
      
      public function set right21(param1:Image) : void
      {
         var _loc2_:Object = this._1200599387right21;
         if(_loc2_ !== param1)
         {
            this._1200599387right21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right21",_loc2_,param1));
         }
      }
      
      public function set left12(param1:Image) : void
      {
         var _loc2_:Object = this._1106591640left12;
         if(_loc2_ !== param1)
         {
            this._1106591640left12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left12",_loc2_,param1));
         }
      }
      
      public function set left18(param1:Image) : void
      {
         var _loc2_:Object = this._1106591634left18;
         if(_loc2_ !== param1)
         {
            this._1106591634left18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left18",_loc2_,param1));
         }
      }
      
      public function set item16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662792item16;
         if(_loc2_ !== param1)
         {
            this._1178662792item16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item16",_loc2_,param1));
         }
      }
      
      public function set item14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1178662794item14;
         if(_loc2_ !== param1)
         {
            this._1178662794item14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item14",_loc2_,param1));
         }
      }
      
      public function ___HappyFrontLinePanel_Button6_click(param1:MouseEvent) : void
      {
         playHappyFrontLine(6);
      }
      
      public function set item2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
      
      private function _HappyFrontLinePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HAPPY_FRONT_LINE[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HappyFrontLinePanel_BasicTitleCanvas1.text = param1;
         },"_HappyFrontLinePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HAPPY_FRONT_LINE[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HAPPY_FRONT_LINE[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000695);
         },function(param1:Object):void
         {
            _HappyFrontLinePanel_Image1.source = param1;
         },"_HappyFrontLinePanel_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HAPPY_FRONT_LINE[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            guize.text = param1;
         },"guize.text");
         result[4] = binding;
         return result;
      }
      
      public function set item3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525952item3;
         if(_loc2_ !== param1)
         {
            this._100525952item3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",_loc2_,param1));
         }
      }
      
      public function set item5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525954item5;
         if(_loc2_ !== param1)
         {
            this._100525954item5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",_loc2_,param1));
         }
      }
      
      public function set left16(param1:Image) : void
      {
         var _loc2_:Object = this._1106591636left16;
         if(_loc2_ !== param1)
         {
            this._1106591636left16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left16",_loc2_,param1));
         }
      }
      
      public function set item6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525955item6;
         if(_loc2_ !== param1)
         {
            this._100525955item6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",_loc2_,param1));
         }
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set item4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525953item4;
         if(_loc2_ !== param1)
         {
            this._100525953item4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",_loc2_,param1));
         }
      }
      
      public function set item8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525957item8;
         if(_loc2_ !== param1)
         {
            this._100525957item8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item8",_loc2_,param1));
         }
      }
      
      public function set item1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525950item1;
         if(_loc2_ !== param1)
         {
            this._100525950item1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",_loc2_,param1));
         }
      }
      
      public function set item9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525958item9;
         if(_loc2_ !== param1)
         {
            this._100525958item9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left4() : Image
      {
         return this._102850829left4;
      }
      
      public function set left22(param1:Image) : void
      {
         var _loc2_:Object = this._1106591609left22;
         if(_loc2_ !== param1)
         {
            this._1106591609left22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left22",_loc2_,param1));
         }
      }
      
      public function set item7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525956item7;
         if(_loc2_ !== param1)
         {
            this._100525956item7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item7",_loc2_,param1));
         }
      }
      
      private function playHappyFrontLine(param1:Number) : void
      {
         var typeNum:Number = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("playHappyFrontLine",null,typeNum);
            }
         };
         var tempStr:String = "";
         if(typeNum == 1)
         {
            tempStr = Language.HAPPY_FRONT_LINE[4].replace("{num}",happyFrontLineConf.suijiprice);
         }
         else if(typeNum == 2)
         {
            tempStr = Language.HAPPY_FRONT_LINE[5].replace("{num}",happyFrontLineConf.jingqueprice[lightGridNum]);
         }
         else if(typeNum == 3)
         {
            tempStr = Language.HAPPY_FRONT_LINE[6].replace("{num}",happyFrontLineConf.jishuprice);
         }
         else if(typeNum == 4)
         {
            tempStr = Language.HAPPY_FRONT_LINE[7].replace("{num}",happyFrontLineConf.oushuprice);
         }
         else if(typeNum == 5)
         {
            tempStr = Language.HAPPY_FRONT_LINE[8].replace("{num}",happyFrontLineConf.chongzhiprice);
         }
         else if(typeNum == 6)
         {
            tempStr = Language.HAPPY_FRONT_LINE[9].replace("{num}",happyFrontLineConf.freshprice);
         }
         Alert.show(tempStr,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set left21(param1:Image) : void
      {
         var _loc2_:Object = this._1106591610left21;
         if(_loc2_ !== param1)
         {
            this._1106591610left21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left21",_loc2_,param1));
         }
      }
      
      public function set left25(param1:Image) : void
      {
         var _loc2_:Object = this._1106591606left25;
         if(_loc2_ !== param1)
         {
            this._1106591606left25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left25",_loc2_,param1));
         }
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get left6() : Image
      {
         return this._102850831left6;
      }
      
      public function set left23(param1:Image) : void
      {
         var _loc2_:Object = this._1106591608left23;
         if(_loc2_ !== param1)
         {
            this._1106591608left23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left23",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left8() : Image
      {
         return this._102850833left8;
      }
      
      [Bindable(event="propertyChange")]
      public function get left2() : Image
      {
         return this._102850827left2;
      }
      
      [Bindable(event="propertyChange")]
      public function get left3() : Image
      {
         return this._102850828left3;
      }
      
      [Bindable(event="propertyChange")]
      public function get left7() : Image
      {
         return this._102850832left7;
      }
      
      public function set left24(param1:Image) : void
      {
         var _loc2_:Object = this._1106591607left24;
         if(_loc2_ !== param1)
         {
            this._1106591607left24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left24",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get left1() : Image
      {
         return this._102850826left1;
      }
      
      [Bindable(event="propertyChange")]
      public function get left5() : Image
      {
         return this._102850830left5;
      }
      
      [Bindable(event="propertyChange")]
      public function get lltOneItem() : ItemSlot
      {
         return this._1034521339lltOneItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get left9() : Image
      {
         return this._102850834left9;
      }
      
      public function set right22(param1:Image) : void
      {
         var _loc2_:Object = this._1200599388right22;
         if(_loc2_ !== param1)
         {
            this._1200599388right22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right22",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oneItem3() : ItemSlot
      {
         return this._1982093498oneItem3;
      }
      
      public function set right3(param1:Image) : void
      {
         var _loc2_:Object = this._931102313right3;
         if(_loc2_ !== param1)
         {
            this._931102313right3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right3",_loc2_,param1));
         }
      }
      
      public function set right5(param1:Image) : void
      {
         var _loc2_:Object = this._931102311right5;
         if(_loc2_ !== param1)
         {
            this._931102311right5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right5",_loc2_,param1));
         }
      }
      
      public function ___HappyFrontLinePanel_Button3_click(param1:MouseEvent) : void
      {
         playHappyFrontLine(3);
      }
      
      public function set right6(param1:Image) : void
      {
         var _loc2_:Object = this._931102310right6;
         if(_loc2_ !== param1)
         {
            this._931102310right6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right6",_loc2_,param1));
         }
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
      
      public function set right1(param1:Image) : void
      {
         var _loc2_:Object = this._931102315right1;
         if(_loc2_ !== param1)
         {
            this._931102315right1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right10() : Image
      {
         return this._1200599355right10;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftResult() : Image
      {
         return this._2075718404leftResult;
      }
      
      [Bindable(event="propertyChange")]
      public function get right13() : Image
      {
         return this._1200599358right13;
      }
      
      [Bindable(event="propertyChange")]
      public function get right14() : Image
      {
         return this._1200599359right14;
      }
      
      [Bindable(event="propertyChange")]
      public function get right15() : Image
      {
         return this._1200599360right15;
      }
      
      [Bindable(event="propertyChange")]
      public function get right17() : Image
      {
         return this._1200599362right17;
      }
      
      [Bindable(event="propertyChange")]
      public function get right12() : Image
      {
         return this._1200599357right12;
      }
      
      public function set right7(param1:Image) : void
      {
         var _loc2_:Object = this._931102309right7;
         if(_loc2_ !== param1)
         {
            this._931102309right7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right7",_loc2_,param1));
         }
      }
      
      public function set right8(param1:Image) : void
      {
         var _loc2_:Object = this._931102308right8;
         if(_loc2_ !== param1)
         {
            this._931102308right8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right18() : Image
      {
         return this._1200599363right18;
      }
      
      [Bindable(event="propertyChange")]
      public function get right11() : Image
      {
         return this._1200599356right11;
      }
      
      public function set guize(param1:Text) : void
      {
         var _loc2_:Object = this._98712998guize;
         if(_loc2_ !== param1)
         {
            this._98712998guize = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guize",_loc2_,param1));
         }
      }
      
      public function set right2(param1:Image) : void
      {
         var _loc2_:Object = this._931102314right2;
         if(_loc2_ !== param1)
         {
            this._931102314right2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right19() : Image
      {
         return this._1200599364right19;
      }
      
      public function set right25(param1:Image) : void
      {
         var _loc2_:Object = this._1200599391right25;
         if(_loc2_ !== param1)
         {
            this._1200599391right25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right25",_loc2_,param1));
         }
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
      public function get right16() : Image
      {
         return this._1200599361right16;
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
      public function get right21() : Image
      {
         return this._1200599387right21;
      }
      
      [Bindable(event="propertyChange")]
      public function get right22() : Image
      {
         return this._1200599388right22;
      }
      
      public function set left20(param1:Image) : void
      {
         var _loc2_:Object = this._1106591611left20;
         if(_loc2_ !== param1)
         {
            this._1106591611left20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right25() : Image
      {
         return this._1200599391right25;
      }
      
      [Bindable(event="propertyChange")]
      public function get right20() : Image
      {
         return this._1200599386right20;
      }
      
      public function set right23(param1:Image) : void
      {
         var _loc2_:Object = this._1200599389right23;
         if(_loc2_ !== param1)
         {
            this._1200599389right23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right23",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right24() : Image
      {
         return this._1200599390right24;
      }
      
      public function set right9(param1:Image) : void
      {
         var _loc2_:Object = this._931102307right9;
         if(_loc2_ !== param1)
         {
            this._931102307right9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right9",_loc2_,param1));
         }
      }
      
      public function set oneItem0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093495oneItem0;
         if(_loc2_ !== param1)
         {
            this._1982093495oneItem0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rightResult() : Image
      {
         return this._453021351rightResult;
      }
      
      public function set oneItem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093498oneItem3;
         if(_loc2_ !== param1)
         {
            this._1982093498oneItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem3",_loc2_,param1));
         }
      }
      
      public function set oneItem4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093499oneItem4;
         if(_loc2_ !== param1)
         {
            this._1982093499oneItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem4",_loc2_,param1));
         }
      }
      
      public function set oneItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093497oneItem2;
         if(_loc2_ !== param1)
         {
            this._1982093497oneItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item5() : ItemSlot
      {
         return this._100525954item5;
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemSlot
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemSlot
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item6() : ItemSlot
      {
         return this._100525955item6;
      }
      
      [Bindable(event="propertyChange")]
      public function get item7() : ItemSlot
      {
         return this._100525956item7;
      }
      
      [Bindable(event="propertyChange")]
      public function get item9() : ItemSlot
      {
         return this._100525958item9;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemSlot
      {
         return this._100525951item2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HappyFrontLinePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HappyFrontLinePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_HappyFrontLinePanelWatcherSetupUtil");
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
      
      public function set oneItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093496oneItem1;
         if(_loc2_ !== param1)
         {
            this._1982093496oneItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem1",_loc2_,param1));
         }
      }
      
      public function set right4(param1:Image) : void
      {
         var _loc2_:Object = this._931102312right4;
         if(_loc2_ !== param1)
         {
            this._931102312right4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item8() : ItemSlot
      {
         return this._100525957item8;
      }
      
      [Bindable(event="propertyChange")]
      public function get right1() : Image
      {
         return this._931102315right1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : ItemSlot
      {
         return this._100525953item4;
      }
      
      [Bindable(event="propertyChange")]
      public function get right7() : Image
      {
         return this._931102309right7;
      }
      
      public function set oneItem6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093501oneItem6;
         if(_loc2_ !== param1)
         {
            this._1982093501oneItem6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right6() : Image
      {
         return this._931102310right6;
      }
      
      public function set oneItem9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093504oneItem9;
         if(_loc2_ !== param1)
         {
            this._1982093504oneItem9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right23() : Image
      {
         return this._1200599389right23;
      }
      
      [Bindable(event="propertyChange")]
      public function get right9() : Image
      {
         return this._931102307right9;
      }
      
      public function set oneItem5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093500oneItem5;
         if(_loc2_ !== param1)
         {
            this._1982093500oneItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get guize() : Text
      {
         return this._98712998guize;
      }
      
      [Bindable(event="propertyChange")]
      public function get right4() : Image
      {
         return this._931102312right4;
      }
      
      public function set oneItem7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093502oneItem7;
         if(_loc2_ !== param1)
         {
            this._1982093502oneItem7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem7",_loc2_,param1));
         }
      }
      
      public function set oneItem8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1982093503oneItem8;
         if(_loc2_ !== param1)
         {
            this._1982093503oneItem8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneItem8",_loc2_,param1));
         }
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
      public function get right2() : Image
      {
         return this._931102314right2;
      }
      
      [Bindable(event="propertyChange")]
      public function get right3() : Image
      {
         return this._931102313right3;
      }
      
      [Bindable(event="propertyChange")]
      public function get right8() : Image
      {
         return this._931102308right8;
      }
      
      public function ___HappyFrontLinePanel_Button5_click(param1:MouseEvent) : void
      {
         playHappyFrontLine(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get right5() : Image
      {
         return this._931102311right5;
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      public function CZHappyFrontLineNum(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         happyFrontLineData = param1;
         lightGridNum = 0;
         for(_loc2_ in happyFrontLineData.allGrid)
         {
            _loc3_ = happyFrontLineData.allGrid[_loc2_] % 10;
            _loc4_ = (happyFrontLineData.allGrid[_loc2_] - _loc3_) / 10;
            this["left" + _loc2_].source = ResManager.getIconUrl(resDarkArr[_loc4_]);
            this["right" + _loc2_].source = ResManager.getIconUrl(resDarkArr[_loc3_]);
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initHappyFrontLineData",new Responder(onInitHappyFrontLineData));
      }
      
      public function ___HappyFrontLinePanel_Button2_click(param1:MouseEvent) : void
      {
         playHappyFrontLine(1);
      }
      
      public function freshHappyFrontLineNum(param1:Number, param2:Number, param3:Number) : void
      {
         leftResult.visible = true;
         rightResult.visible = true;
         lightGridNum = param3;
         if(param2 % 2 == 0)
         {
            delete happyFrontLineData.hadNotOuShuGrid[param1];
         }
         else
         {
            delete happyFrontLineData.hadNotJiShuGrid[param1];
         }
         var _loc4_:int = param2 % 10;
         var _loc5_:int = (param2 - _loc4_) / 10;
         leftResult.source = ResManager.getIconUrl(resLightArr[_loc5_]);
         rightResult.source = ResManager.getIconUrl(resLightArr[_loc4_]);
         if(param1 >= 1 && param1 <= 25)
         {
            this["left" + param1].source = ResManager.getIconUrl(resLightArr[_loc5_]);
            this["right" + param1].source = ResManager.getIconUrl(resLightArr[_loc4_]);
         }
      }
      
      private function onInitHappyFrontLineData(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         if(!param1)
         {
            return;
         }
         happyFrontLineData = param1.data;
         happyFrontLineConf = param1.conf;
         happyFrontLineOneItemObj = param1.oneitem;
         lightGridNum = happyFrontLineData.hadGridNum;
         if(happyFrontLineData.lastNum >= 0 && happyFrontLineData.lastNum <= 99)
         {
            leftResult.visible = true;
            rightResult.visible = true;
            _loc10_ = happyFrontLineData.lastNum % 10;
            _loc11_ = (happyFrontLineData.lastNum - _loc10_) / 10;
            leftResult.source = ResManager.getIconUrl(resLightArr[_loc11_]);
            rightResult.source = ResManager.getIconUrl(resLightArr[_loc10_]);
         }
         else
         {
            leftResult.visible = false;
            rightResult.visible = false;
         }
         var _loc2_:String = Language.HAPPY_FRONT_LINE[10].replace("{time1}",TimeUtil.dateTimeToString(new Date(happyFrontLineConf.start))).replace("{time2}",TimeUtil.dateTimeToString(new Date(happyFrontLineConf.end))).replace("{num1}",happyFrontLineConf.suijiprice).replace("{num2}",happyFrontLineConf.jishuprice).replace("{num3}",happyFrontLineConf.chongzhiprice).replace("{num4}",happyFrontLineConf.freshprice);
         var _loc3_:Number = 1;
         for(_loc4_ in happyFrontLineConf.iInfo)
         {
            if(happyFrontLineConf.iInfo[_loc4_].inc == 2)
            {
               this["item" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
               this["item" + _loc3_].giid = happyFrontLineConf.iInfo[_loc4_].iid;
               this["item" + _loc3_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][happyFrontLineConf.iInfo[_loc4_].iid];
               _loc3_++;
            }
            else if(happyFrontLineConf.iInfo[_loc4_].inc == 3)
            {
               _loc2_ += GameData.d[GamePredef.TBL_ITEM_TEMPLATE][happyFrontLineConf.iInfo[_loc4_].iid].name + "、";
            }
         }
         guize.htmlText = _loc2_.substr(0,_loc2_.length - 1) + "。";
         _loc5_ = 0;
         while(_loc5_ < 10)
         {
            this["oneItem" + _loc5_].type = GamePredef.TBL_ITEM_TEMPLATE;
            this["oneItem" + _loc5_].giid = happyFrontLineOneItemObj[_loc5_ + 1].iid;
            this["oneItem" + _loc5_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][happyFrontLineOneItemObj[_loc5_ + 1].iid];
            _loc5_++;
         }
         lltOneItem.type = GamePredef.TBL_ITEM_TEMPLATE;
         lltOneItem.giid = happyFrontLineData.lltItem;
         lltOneItem.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][happyFrontLineData.lltItem];
         var _loc6_:Object = happyFrontLineData.allGrid;
         for(_loc7_ in happyFrontLineData.hadNotJiShuGrid)
         {
            _loc12_ = Number(happyFrontLineData.hadNotJiShuGrid[_loc7_]);
            _loc13_ = _loc6_[_loc12_] % 10;
            _loc14_ = (_loc6_[_loc12_] - _loc13_) / 10;
            this["left" + _loc12_].source = ResManager.getIconUrl(resDarkArr[_loc14_]);
            this["right" + _loc12_].source = ResManager.getIconUrl(resDarkArr[_loc13_]);
            delete _loc6_[_loc7_];
         }
         for(_loc8_ in happyFrontLineData.hadNotOuShuGrid)
         {
            _loc15_ = Number(happyFrontLineData.hadNotOuShuGrid[_loc8_]);
            _loc16_ = _loc6_[_loc15_] % 10;
            _loc17_ = (_loc6_[_loc15_] - _loc16_) / 10;
            this["left" + _loc15_].source = ResManager.getIconUrl(resDarkArr[_loc17_]);
            this["right" + _loc15_].source = ResManager.getIconUrl(resDarkArr[_loc16_]);
            delete _loc6_[_loc8_];
         }
         for(_loc9_ in _loc6_)
         {
            _loc18_ = _loc6_[_loc9_] % 10;
            _loc19_ = (_loc6_[_loc9_] - _loc18_) / 10;
            this["left" + _loc9_].source = ResManager.getIconUrl(resLightArr[_loc19_]);
            this["right" + _loc9_].source = ResManager.getIconUrl(resLightArr[_loc18_]);
         }
      }
   }
}

