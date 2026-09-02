package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ManJiuJianOneCanvas;
   import com.qeedoo.ui.view.comp.ManJiuJianOneCartCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Rotate;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ManJiuJianPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var chardata:Object = {};
      
      private var _1367590590cart13:ManJiuJianOneCanvas;
      
      private var needFlush:Boolean;
      
      private var _94431510cart6:ManJiuJianOneCanvas;
      
      private var _1354258014cpadd6:NumericStepper;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _983418489cpres17:Image;
      
      private var arrstr:String = "";
      
      private var _983418491cpres19:Image;
      
      private var _1353750145cpres2:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var endCpRad:Number = 0;
      
      private var _98663cp4:Label;
      
      private var _3588577uiC0:Image;
      
      private var _alert:Alert;
      
      private var _1354258019cpadd1:NumericStepper;
      
      private var _1353750139cpres8:Image;
      
      private var _1367590589cart14:ManJiuJianOneCanvas;
      
      private var _3060404cpn5:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _94431506cart2:ManJiuJianOneCanvas;
      
      private var _1353854116cpnum5:Label;
      
      private var _1682357501changeAngle:Rotate;
      
      private var _983418485cpres13:Image;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _98664cp5:Label;
      
      private var _94431511cart7:ManJiuJianOneCanvas;
      
      private var _980195288cpnum10:Label;
      
      private var _3185ct:Label;
      
      private var _98784ct1:Label;
      
      private var _loadCid:Number = 0;
      
      private var _1065040308msgLab:Label;
      
      private var _1354258013cpadd7:NumericStepper;
      
      private var _133638349turnAll1:DelayButton;
      
      private var _3060403cpn4:Label;
      
      private var arrpush:Array = new Array();
      
      private var _1353750144cpres3:Image;
      
      private var count:Number = 0;
      
      private var _98665cp6:Label;
      
      private var _1354258018cpadd2:NumericStepper;
      
      private var _1353750138cpres9:Image;
      
      private var _98785ct2:Label;
      
      public var _ManJiuJianPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _94431507cart3:ManJiuJianOneCanvas;
      
      private var _94431512cart8:ManJiuJianOneCanvas;
      
      private var _1353854115cpnum6:Label;
      
      private var _98666cp7:Label;
      
      private var _3060402cpn3:Label;
      
      private var _1969543397titleWrapper:Canvas;
      
      private var _983418486cpres14:Image;
      
      private var _98786ct3:Label;
      
      private var timer1:Timer = new Timer(3000);
      
      private var _1354258012cpadd8:NumericStepper;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var cartObj:Object = {};
      
      private var _926303115titleWrapper0:Canvas;
      
      private var _1353750143cpres4:Image;
      
      private var _1367590593cart10:ManJiuJianOneCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _94431508cart4:ManJiuJianOneCanvas;
      
      private var _98667cp8:Label;
      
      private var _133638348turnAll0:DelayButton;
      
      private var _1354258017cpadd3:NumericStepper;
      
      private var _98787ct4:Label;
      
      private var _1353854120cpnum1:Label;
      
      private var _3060401cpn2:Label;
      
      private var _94431513cart9:ManJiuJianOneCanvas;
      
      private var _983418482cpres10:Image;
      
      private var _115759uiC:Image;
      
      private var _1353854114cpnum7:Label;
      
      private var _1377570494buySpe:DelayButton;
      
      private var _98668cp9:Label;
      
      private var _873453352title0:Label;
      
      private var _3058508cp10:Label;
      
      private var sver:Number;
      
      private var itemList:ArrayCollection = new ArrayCollection();
      
      private var _1353854119cpnum2:Label;
      
      private var _1354258011cpadd9:NumericStepper;
      
      private var _983418487cpres15:Image;
      
      private var _1105287949lftLab:Label;
      
      private var _100361836intro:IntroText;
      
      private var _3060400cpn1:Label;
      
      private var _94431509cart5:ManJiuJianOneCanvas;
      
      private var _3242771item:ItemSlot;
      
      private var arr:Array = new Array();
      
      private var _3060408cpn9:Label;
      
      private var _1367590592cart11:ManJiuJianOneCanvas;
      
      private var _1353750142cpres5:Image;
      
      private var run:Boolean = false;
      
      private var _1183750331intro1:IntroText;
      
      private var _3756vb:VBox;
      
      private var _1354258016cpadd4:NumericStepper;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var cpArr:Array = new Array();
      
      private var _1353854113cpnum8:Label;
      
      private var _94872448cpn10:Label;
      
      private var _983418483cpres11:Image;
      
      private var _3060407cpn8:Label;
      
      private var _965520412turnAll:DelayButton;
      
      private var _967674419cpadd10:NumericStepper;
      
      public var _ManJiuJianPanel_Label14:Label;
      
      public var _ManJiuJianPanel_Label15:Label;
      
      public var _ManJiuJianPanel_Label16:Label;
      
      private var _1353854118cpnum3:Label;
      
      private var _983418513cpres20:Image;
      
      private var conf:Object = {};
      
      public var _ManJiuJianPanel_Label20:Label;
      
      private var _98660cp1:Label;
      
      public var _ManJiuJianPanel_Label24:Label;
      
      public var _ManJiuJianPanel_Label28:Label;
      
      private var _1353750141cpres6:Image;
      
      private var _1367590591cart12:ManJiuJianOneCanvas;
      
      private var timer:Timer = new Timer(50);
      
      private var _108616myt:Label;
      
      private var _983418488cpres16:Image;
      
      private var _94431504cart0:ManJiuJianOneCanvas;
      
      public var _ManJiuJianPanel_Label32:Label;
      
      public var _ManJiuJianPanel_Label36:Label;
      
      private var _readIndex:Number = 0;
      
      private var _1354258015cpadd5:NumericStepper;
      
      private var _983418490cpres18:Image;
      
      public var _ManJiuJianPanel_Label40:Label;
      
      public var _ManJiuJianPanel_Label44:Label;
      
      public var _ManJiuJianPanel_Label48:Label;
      
      public var _ManJiuJianPanel_Image1:Image;
      
      private var _3060406cpn7:Label;
      
      private var _1353750146cpres1:Image;
      
      public var _ManJiuJianPanel_Label52:Label;
      
      private var _98661cp2:Label;
      
      public var _ManJiuJianPanel_Label56:Label;
      
      public var _ManJiuJianPanel_Label57:Label;
      
      public var _ManJiuJianPanel_Label58:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1353854112cpnum9:Label;
      
      private var ver:Number;
      
      private var _607339634pageSelector:PageSelector;
      
      public var _ManJiuJianPanel_Label62:Label;
      
      public var _ManJiuJianPanel_Label63:Label;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _983418484cpres12:Image;
      
      private var _92960979angle:Number = 0;
      
      private var _1353854117cpnum4:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _94431505cart1:ManJiuJianOneCanvas;
      
      private var _98662cp3:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ManJiuJianPanel_BasicTitleCanvas1"
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
                        "width":82,
                        "x":20,
                        "y":40
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
                        "width":82,
                        "x":102,
                        "y":40
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
                        "width":82,
                        "x":184,
                        "y":40
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn3",
                  "events":{"click":"__bangBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":82,
                        "x":266,
                        "y":40
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":60,
                        "width":679.95,
                        "height":420,
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":679.95,
                                 "height":420,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_ManJiuJianPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":1,
                                          "y":1,
                                          "percentWidth":100,
                                          "percentHeight":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"uiC0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":33,
                                          "width":350,
                                          "height":350
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"uiC",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":107,
                                          "y":128,
                                          "width":160,
                                          "height":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":173,
                                          "y":88,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":234,
                                          "y":108,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":400.95,
                                          "y":283,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":506.95,
                                          "y":283,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":558.95,
                                          "y":283,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":611.95,
                                          "y":283,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":400.95,
                                          "y":340,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":506.95,
                                          "y":340,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":558.95,
                                          "y":340,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":611.95,
                                          "y":340,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":454.95,
                                          "y":340,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":272,
                                          "y":159,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":273,
                                          "y":222,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":236,
                                          "y":274,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":174,
                                          "y":295,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":113,
                                          "y":274,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":76,
                                          "y":222,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":76,
                                          "y":158,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":114,
                                          "y":107,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"turnAll1",
                                    "events":{"click":"__turnAll1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":136.5,
                                          "y":158.7,
                                          "width":100,
                                          "height":100,
                                          "styleName":"manjiujianBtn"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"msgLab",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":1,
                                          "y":10,
                                          "width":680,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"turnAll",
                                    "events":{"click":"__turnAll_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":256,
                                          "y":390,
                                          "width":100,
                                          "height":23,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"buySpe",
                                    "events":{"click":"__buySpe_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":490,
                                          "y":193,
                                          "width":65,
                                          "height":23,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lftLab",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 13;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98,
                                          "y":392,
                                          "width":142
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":505,
                                          "y":153,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"cpres12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":454.95,
                                          "y":283,
                                          "width":35,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389.95,
                                          "y":320,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":444.95,
                                          "y":320,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":499.95,
                                          "y":320,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":551.95,
                                          "y":320,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":604.95,
                                          "y":320,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":389.95,
                                          "y":377,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":444.95,
                                          "y":377,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":499.95,
                                          "y":377,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":551.95,
                                          "y":377,
                                          "width":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cpnum10",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":604.95,
                                          "y":377,
                                          "width":56
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":679.95,
                                 "height":420,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":7,
                                          "width":665,
                                          "height":320,
                                          "x":7,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":33,
                                                   "x":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":33,
                                                   "x":136
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":33,
                                                   "x":268
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":33,
                                                   "x":400
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":33,
                                                   "x":532
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":120,
                                                   "x":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":120,
                                                   "x":136
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":120,
                                                   "x":268
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":120,
                                                   "x":400
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":120,
                                                   "x":532
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":207,
                                                   "x":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":207,
                                                   "x":136
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":207,
                                                   "x":268
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":207,
                                                   "x":400
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ManJiuJianOneCanvas,
                                             "id":"cart14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":207,
                                                   "x":532
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelector,
                                             "id":"pageSelector",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "5";
                                                this.horizontalCenter = "0";
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":330,
                                          "width":665,
                                          "height":90,
                                          "x":6.95,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"intro1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":679.95,
                                 "height":420,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":7,
                                          "width":665,
                                          "height":180,
                                          "x":7,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"titleWrapper",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":15,
                                                   "y":3,
                                                   "styleName":"StandardTitle"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"title0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":4,
                                                   "styleName":"LabelTitle",
                                                   "width":115,
                                                   "x":275
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ManJiuJianPanel_Label14",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":80,
                                                   "height":20,
                                                   "y":27,
                                                   "x":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ManJiuJianPanel_Label15",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":90,
                                                   "height":20,
                                                   "y":27,
                                                   "x":300
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ManJiuJianPanel_Label16",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":94,
                                                   "height":20,
                                                   "y":27,
                                                   "x":144
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "id":"vb",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "height":130,
                                                   "horizontalScrollPolicy":"off",
                                                   "x":10,
                                                   "y":45
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":189,
                                          "width":665,
                                          "height":160,
                                          "x":7,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":"Hornor",
                                                   "y":30,
                                                   "width":466,
                                                   "height":125,
                                                   "x":30,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":1
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":33,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":1
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":66,
                                                            "width":37,
                                                            "height":20,
                                                            "y":1
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label20",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":96,
                                                            "width":77,
                                                            "height":20,
                                                            "y":1
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd1",
                                                      "events":{"change":"__cpadd1_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":161,
                                                            "y":1,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":236,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":269,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":301,
                                                            "width":37,
                                                            "height":20,
                                                            "y":2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label24",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":331,
                                                            "width":78,
                                                            "height":20,
                                                            "y":2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd2",
                                                      "events":{"change":"__cpadd2_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":396,
                                                            "y":2,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":25
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":33,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":25
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":66,
                                                            "width":37,
                                                            "height":20,
                                                            "y":25
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label28",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":96,
                                                            "width":77,
                                                            "height":20,
                                                            "y":25
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd3",
                                                      "events":{"change":"__cpadd3_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":161,
                                                            "y":25,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":236,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":28
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":269,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":26
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":301,
                                                            "width":37,
                                                            "height":20,
                                                            "y":26
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label32",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":331,
                                                            "width":78,
                                                            "height":20,
                                                            "y":26
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd4",
                                                      "events":{"change":"__cpadd4_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":396,
                                                            "y":26,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":49
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":33,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":49
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":66,
                                                            "width":37,
                                                            "height":20,
                                                            "y":49
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label36",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":96,
                                                            "width":77,
                                                            "height":20,
                                                            "y":49
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd5",
                                                      "events":{"change":"__cpadd5_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":161,
                                                            "y":49,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":76
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":33,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":66,
                                                            "width":37,
                                                            "height":20,
                                                            "y":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label40",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":96,
                                                            "width":77,
                                                            "height":20,
                                                            "y":74
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd7",
                                                      "events":{"change":"__cpadd7_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":161,
                                                            "y":74,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":236,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":51
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":269,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":301,
                                                            "width":37,
                                                            "height":20,
                                                            "y":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label44",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":331,
                                                            "width":78,
                                                            "height":20,
                                                            "y":50
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd6",
                                                      "events":{"change":"__cpadd6_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":396,
                                                            "y":52,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":236,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":77
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":269,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":76
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":301,
                                                            "width":37,
                                                            "height":20,
                                                            "y":76
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label48",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":331,
                                                            "width":78,
                                                            "height":20,
                                                            "y":76
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd8",
                                                      "events":{"change":"__cpadd8_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":396,
                                                            "y":76,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":1,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":34,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":67,
                                                            "width":37,
                                                            "height":20,
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label52",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":97,
                                                            "width":76,
                                                            "height":20,
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd9",
                                                      "events":{"change":"__cpadd9_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":162,
                                                            "y":99,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cp10",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":236,
                                                            "width":42,
                                                            "height":20,
                                                            "text":"50",
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":269,
                                                            "width":39,
                                                            "height":20,
                                                            "text":"元 共",
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"cpn10",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65535;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":301,
                                                            "width":37,
                                                            "height":20,
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_ManJiuJianPanel_Label56",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":331,
                                                            "width":78,
                                                            "height":20,
                                                            "y":99
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"cpadd10",
                                                      "events":{"change":"__cpadd10_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":396,
                                                            "y":99,
                                                            "minimum":0,
                                                            "maximum":999999,
                                                            "width":62,
                                                            "height":20
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ManJiuJianPanel_Label57",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 13;
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":494,
                                                   "y":47,
                                                   "width":180,
                                                   "height":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ManJiuJianPanel_Label58",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 13;
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":485,
                                                   "y":83,
                                                   "width":189,
                                                   "height":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"ct",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16711680;
                                                this.textAlign = "center";
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":532,
                                                   "y":83,
                                                   "width":64,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"myt",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65382;
                                                this.textAlign = "center";
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":528,
                                                   "y":47,
                                                   "width":64,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"title",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":5,
                                                   "styleName":"LabelTitle",
                                                   "width":115,
                                                   "x":275
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"titleWrapper0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":15,
                                                   "y":6,
                                                   "styleName":"StandardTitle"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"turnAll0",
                                    "events":{"click":"__turnAll0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":307.45,
                                          "y":394,
                                          "width":65,
                                          "height":23,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_ManJiuJianPanel_Label62",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":145,
                                          "y":348,
                                          "width":493,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_ManJiuJianPanel_Label63",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                       this.fontSize = 13;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":244,
                                          "y":373,
                                          "width":213,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":186,
                                          "y":348,
                                          "width":40,
                                          "text":"0"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65382;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":275,
                                          "y":373,
                                          "width":84,
                                          "text":"0"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":284,
                                          "y":348,
                                          "width":84,
                                          "text":"0"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                       this.fontSize = 12;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":440,
                                          "y":347,
                                          "width":84,
                                          "text":"0"
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":679.95,
                                 "height":420,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"intro",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100
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
      
      private var _3060405cpn6:Label;
      
      private var _110371416title:Label;
      
      private var _1353750140cpres7:Image;
      
      public function ManJiuJianPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 500;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         _ManJiuJianPanel_Rotate1_i();
         this.addEventListener("creationComplete",___ManJiuJianPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ManJiuJianPanel._watcherSetupUtil = param1;
      }
      
      private function getManJiuJianItemPtByTid2(param1:*) : Number
      {
         var _loc2_:* = undefined;
         if(Boolean(conf) && Boolean(conf.iInfo))
         {
            for(_loc2_ in conf.iInfo)
            {
               if(ToolKit.isEqual(conf.iInfo[_loc2_].iid,param1))
               {
                  return conf.iInfo[_loc2_].pt ? Number(conf.iInfo[_loc2_].pt) : 0;
               }
            }
         }
         return 0;
      }
      
      private function _ManJiuJianPanel_Rotate1_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         changeAngle = _loc1_;
         BindingManager.executeBindings(this,"changeAngle",changeAngle);
         return _loc1_;
      }
      
      public function __buySpe_click(param1:MouseEvent) : void
      {
         buyManJiuJianSpecialItem();
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
      
      public function __cpadd5_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get uiC() : Image
      {
         return this._115759uiC;
      }
      
      public function __turnAll0_click(param1:MouseEvent) : void
      {
         buyCartItems();
      }
      
      private function buyManJiuJianSpecialItem() : void
      {
         var str:String;
         var goldLockFlag:Boolean;
         var tf:IUITextField;
         var bagPanel:BagPanel;
         var handler:Function = null;
         var gfunc:Function = null;
         if(chardata.lt[conf.sid])
         {
            _core.sysMsg(Language.MANJIUJIAN_PANEL[22]);
            return;
         }
         bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         goldLockFlag = bagPanel.goldLockFlag;
         if(goldLockFlag || !bagPanel)
         {
            _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyManJiuJianSpecialItem",null);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.MANJIUJIAN_PANEL[29].replace("{num}",conf.sp);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      [Bindable(event="propertyChange")]
      public function get myt() : Label
      {
         return this._108616myt;
      }
      
      public function set uiC(param1:Image) : void
      {
         var _loc2_:Object = this._115759uiC;
         if(_loc2_ !== param1)
         {
            this._115759uiC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiC",_loc2_,param1));
         }
      }
      
      public function set cpadd10(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._967674419cpadd10;
         if(_loc2_ !== param1)
         {
            this._967674419cpadd10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd10",_loc2_,param1));
         }
      }
      
      public function resetCartPage() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Number = NaN;
         var _loc3_:ManJiuJianOneCartCanvas = null;
         if(needFlush)
         {
            vb.removeAllChildren();
            for(_loc1_ in cartObj)
            {
               if(cartObj[_loc1_])
               {
                  _loc2_ = cartObj[_loc1_] * getManJiuJianItemPtByTid2(_loc1_);
                  if(_loc2_)
                  {
                     _loc3_ = new ManJiuJianOneCartCanvas();
                     _loc3_.ItemId = _loc1_;
                     _loc3_.BuyCount = cartObj[_loc1_];
                     _loc3_.Point = _loc2_;
                     vb.addChild(_loc3_);
                  }
               }
            }
            countCart();
            changeCpNum();
            needFlush = false;
         }
      }
      
      public function ___ManJiuJianPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get ct() : Label
      {
         return this._3185ct;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleWrapper0() : Canvas
      {
         return this._926303115titleWrapper0;
      }
      
      public function onbroadCastManJiuJianMsg(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(run)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               if(param1[_loc3_].n == _core.player.name)
               {
                  arrpush.push(param1[_loc3_]);
               }
               else
               {
                  _loc2_.push(param1[_loc3_]);
               }
               _loc3_++;
            }
            param1 = _loc2_;
         }
         if(param1.length == 0)
         {
            return;
         }
         if(param1.length >= 5)
         {
            arr = param1.splice(param1.length - 5,5);
         }
         else
         {
            _loc4_ = param1.length;
            _loc5_ = arr.length + _loc4_ - 5;
            if(_loc5_)
            {
               arr.splice(0,_loc5_);
            }
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               arr.push(param1[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      private function moveTurnTable(param1:Event) : void
      {
         ++count;
         if(count <= 60)
         {
            changeAngle.stop();
            angle += 18;
            changeAngle.play();
         }
         else if(count <= 50)
         {
            if(count % 2 == 0)
            {
               changeAngle.stop();
               angle += 18;
               changeAngle.play();
            }
         }
         else if(count % 3 == 0)
         {
            changeAngle.stop();
            angle += 18;
            changeAngle.play();
            if(ToolKit.isEqual((angle - 18) % 360,endCpRad))
            {
               changeAngle.stop();
               run = false;
               onbroadCastManJiuJianMsg(arrpush);
               resetCp(false);
               arrpush = new Array();
               if(timer.running)
               {
                  timer.stop();
               }
               if(timer.hasEventListener(TimerEvent.TIMER))
               {
                  timer.removeEventListener(TimerEvent.TIMER,moveTurnTable);
               }
            }
         }
      }
      
      public function set myt(param1:Label) : void
      {
         var _loc2_:Object = this._108616myt;
         if(_loc2_ !== param1)
         {
            this._108616myt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myt",_loc2_,param1));
         }
      }
      
      public function set msgLab(param1:Label) : void
      {
         var _loc2_:Object = this._1065040308msgLab;
         if(_loc2_ !== param1)
         {
            this._1065040308msgLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"msgLab",_loc2_,param1));
         }
      }
      
      private function buyCartItems() : void
      {
         var bagPanel:BagPanel;
         var str:String;
         var tf:IUITextField;
         var goldLockFlag:Boolean;
         var cpstr:String = null;
         var itemstr:String = null;
         var iid:* = undefined;
         var handler:Function = null;
         var cp:Number = NaN;
         var buyItemNum:Number = NaN;
         var limitNum:Number = NaN;
         var gfunc:Function = null;
         cpstr = "";
         itemstr = "";
         var minusMoney:Number = 0;
         var allMoney:Number = 0;
         var i:Number = 1;
         while(i <= 10)
         {
            cp = Number(conf["cp" + i]);
            if(ToolKit.isBigThan(this["cpadd" + i].value,0) && ToolKit.isSmallOrEqual(this["cpadd" + i].value,chardata.cp[cp]))
            {
               cpstr = cpstr + "|" + cp + "-" + this["cpadd" + i].value;
               minusMoney += cp * Number(this["cpadd" + i].value);
            }
            else if(ToolKit.isSmallThan(this["cpadd" + i].value,0) || ToolKit.isBigThan(this["cpadd" + i].value,chardata.cp[cp]))
            {
               return;
            }
            i++;
         }
         for(iid in cartObj)
         {
            buyItemNum = getManJiuJianItemNumByTid(iid);
            limitNum = getManJiuJianItemNumByTid2(iid);
            if(ToolKit.isSmallThan(limitNum,ToolKit.add(buyItemNum,cartObj[iid])))
            {
               return;
            }
            itemstr = itemstr + "|" + iid + "-" + cartObj[iid];
            allMoney += getManJiuJianItemPtByTid2(iid) * Number(cartObj[iid]);
         }
         if(itemstr.indexOf("|") >= 0)
         {
            itemstr = itemstr.substr(1,itemstr.length - 1);
         }
         if(cpstr.indexOf("|") >= 0)
         {
            cpstr = cpstr.substr(1,cpstr.length - 1);
         }
         bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         goldLockFlag = bagPanel.goldLockFlag;
         if(goldLockFlag || !bagPanel)
         {
            _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyManJiuJianItem",null,itemstr,cpstr);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.MANJIUJIAN_PANEL[29].replace("{num}",ct4.text);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function set title(param1:Label) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function __cpadd1_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get turnAll0() : DelayButton
      {
         return this._133638348turnAll0;
      }
      
      [Bindable(event="propertyChange")]
      public function get turnAll1() : DelayButton
      {
         return this._133638349turnAll1;
      }
      
      public function onUpdateManJiuJianTurnTableTime(param1:Number) : void
      {
         if(initialized)
         {
            chardata.ft = param1;
            lftLab.htmlText = Language.MANJIUJIAN_PANEL[5].replace("{num}",chardata.ft);
         }
      }
      
      private function countCart() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         for(_loc3_ in cartObj)
         {
            _loc6_ = getManJiuJianItemNumByTid(_loc3_);
            _loc7_ = getManJiuJianItemNumByTid2(_loc3_);
            _loc1_ = ToolKit.add(_loc1_,getManJiuJianItemPtByTid2(_loc3_) * Number(cartObj[_loc3_]));
            _loc2_ = ToolKit.add(_loc2_,Number(cartObj[_loc3_]));
         }
         ct1.text = String(_loc2_);
         ct2.text = String(_loc1_);
         _loc4_ = Number(myt.text) ? Number(myt.text) : 0;
         var _loc5_:Number = Number(ct.text) ? Number(ct.text) : 0;
         ct3.text = _loc4_ > _loc5_ ? String(_loc5_ * 10) : String(_loc4_ * 10);
         ct4.text = String(ToolKit.minus(_loc1_,Number(ct3.text) ? Number(ct3.text) : 0) > 0 ? ToolKit.minus(_loc1_,Number(ct3.text) ? Number(ct3.text) : 0) : 0);
      }
      
      [Bindable(event="propertyChange")]
      public function get angle() : Number
      {
         return this._92960979angle;
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         changeView(3);
      }
      
      public function set ct(param1:Label) : void
      {
         var _loc2_:Object = this._3185ct;
         if(_loc2_ !== param1)
         {
            this._3185ct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct",_loc2_,param1));
         }
      }
      
      public function set cpres10(param1:Image) : void
      {
         var _loc2_:Object = this._983418482cpres10;
         if(_loc2_ !== param1)
         {
            this._983418482cpres10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres10",_loc2_,param1));
         }
      }
      
      public function set cpres11(param1:Image) : void
      {
         var _loc2_:Object = this._983418483cpres11;
         if(_loc2_ !== param1)
         {
            this._983418483cpres11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres11",_loc2_,param1));
         }
      }
      
      public function set intro(param1:IntroText) : void
      {
         var _loc2_:Object = this._100361836intro;
         if(_loc2_ !== param1)
         {
            this._100361836intro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intro",_loc2_,param1));
         }
      }
      
      public function set cpres12(param1:Image) : void
      {
         var _loc2_:Object = this._983418484cpres12;
         if(_loc2_ !== param1)
         {
            this._983418484cpres12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres12",_loc2_,param1));
         }
      }
      
      public function set cpres13(param1:Image) : void
      {
         var _loc2_:Object = this._983418485cpres13;
         if(_loc2_ !== param1)
         {
            this._983418485cpres13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres13",_loc2_,param1));
         }
      }
      
      public function set cpres15(param1:Image) : void
      {
         var _loc2_:Object = this._983418487cpres15;
         if(_loc2_ !== param1)
         {
            this._983418487cpres15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres15",_loc2_,param1));
         }
      }
      
      public function set cpres16(param1:Image) : void
      {
         var _loc2_:Object = this._983418488cpres16;
         if(_loc2_ !== param1)
         {
            this._983418488cpres16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres16",_loc2_,param1));
         }
      }
      
      public function set titleWrapper0(param1:Canvas) : void
      {
         var _loc2_:Object = this._926303115titleWrapper0;
         if(_loc2_ !== param1)
         {
            this._926303115titleWrapper0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleWrapper0",_loc2_,param1));
         }
      }
      
      public function set cpres17(param1:Image) : void
      {
         var _loc2_:Object = this._983418489cpres17;
         if(_loc2_ !== param1)
         {
            this._983418489cpres17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres17",_loc2_,param1));
         }
      }
      
      public function set cpres14(param1:Image) : void
      {
         var _loc2_:Object = this._983418486cpres14;
         if(_loc2_ !== param1)
         {
            this._983418486cpres14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres14",_loc2_,param1));
         }
      }
      
      public function set cpres19(param1:Image) : void
      {
         var _loc2_:Object = this._983418491cpres19;
         if(_loc2_ !== param1)
         {
            this._983418491cpres19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres19",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lftLab() : Label
      {
         return this._1105287949lftLab;
      }
      
      [Bindable(event="propertyChange")]
      public function get title0() : Label
      {
         return this._873453352title0;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set cpres18(param1:Image) : void
      {
         var _loc2_:Object = this._983418490cpres18;
         if(_loc2_ !== param1)
         {
            this._983418490cpres18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres18",_loc2_,param1));
         }
      }
      
      public function __cpadd6_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get cart0() : ManJiuJianOneCanvas
      {
         return this._94431504cart0;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart1() : ManJiuJianOneCanvas
      {
         return this._94431505cart1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart3() : ManJiuJianOneCanvas
      {
         return this._94431507cart3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart4() : ManJiuJianOneCanvas
      {
         return this._94431508cart4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart5() : ManJiuJianOneCanvas
      {
         return this._94431509cart5;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart7() : ManJiuJianOneCanvas
      {
         return this._94431511cart7;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart8() : ManJiuJianOneCanvas
      {
         return this._94431512cart8;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart2() : ManJiuJianOneCanvas
      {
         return this._94431506cart2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart6() : ManJiuJianOneCanvas
      {
         return this._94431510cart6;
      }
      
      public function set cpres20(param1:Image) : void
      {
         var _loc2_:Object = this._983418513cpres20;
         if(_loc2_ !== param1)
         {
            this._983418513cpres20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cart9() : ManJiuJianOneCanvas
      {
         return this._94431513cart9;
      }
      
      private function _ManJiuJianPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MANJIUJIAN_PANEL[0];
         _loc1_ = Language.MANJIUJIAN_PANEL[1];
         _loc1_ = Language.MANJIUJIAN_PANEL[2];
         _loc1_ = Language.MANJIUJIAN_PANEL[3];
         _loc1_ = Language.MANJIUJIAN_PANEL[4];
         _loc1_ = uiC;
         _loc1_ = angle - 18;
         _loc1_ = angle;
         _loc1_ = ResManager.getIconUrl(4130220000514);
         _loc1_ = ResManager.getIconUrl(4130220000513);
         _loc1_ = ResManager.getIconUrl(4130220000512);
         _loc1_ = Language.MANJIUJIAN_PANEL[26];
         _loc1_ = Language.MANJIUJIAN_PANEL[27];
         _loc1_ = Language.MANJIUJIAN_PANEL[17];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.MANJIUJIAN_PANEL[18];
         _loc1_ = Language.MANJIUJIAN_PANEL[20];
         _loc1_ = Language.MANJIUJIAN_PANEL[19];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[15];
         _loc1_ = Language.MANJIUJIAN_PANEL[11];
         _loc1_ = Language.MANJIUJIAN_PANEL[12];
         _loc1_ = Language.MANJIUJIAN_PANEL[21];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.MANJIUJIAN_PANEL[27];
         _loc1_ = Language.MANJIUJIAN_PANEL[13];
         _loc1_ = Language.MANJIUJIAN_PANEL[14];
      }
      
      private function _ManJiuJianPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_BasicTitleCanvas1.text = param1;
         },"_ManJiuJianPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return uiC;
         },function(param1:Object):void
         {
            changeAngle.target = param1;
         },"changeAngle.target");
         result[5] = binding;
         binding = new Binding(this,function():Number
         {
            return angle - 18;
         },function(param1:Number):void
         {
            changeAngle.angleFrom = param1;
         },"changeAngle.angleFrom");
         result[6] = binding;
         binding = new Binding(this,function():Number
         {
            return angle;
         },function(param1:Number):void
         {
            changeAngle.angleTo = param1;
         },"changeAngle.angleTo");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000514);
         },function(param1:Object):void
         {
            _ManJiuJianPanel_Image1.source = param1;
         },"_ManJiuJianPanel_Image1.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000513);
         },function(param1:Object):void
         {
            uiC0.source = param1;
         },"uiC0.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000512);
         },function(param1:Object):void
         {
            uiC.source = param1;
         },"uiC.source");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            turnAll.label = param1;
         },"turnAll.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buySpe.label = param1;
         },"buySpe.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title0.text = param1;
         },"title0.text");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            title0.filters = param1;
         },"title0.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label14.text = param1;
         },"_ManJiuJianPanel_Label14.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label15.text = param1;
         },"_ManJiuJianPanel_Label15.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label16.text = param1;
         },"_ManJiuJianPanel_Label16.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label20.text = param1;
         },"_ManJiuJianPanel_Label20.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label24.text = param1;
         },"_ManJiuJianPanel_Label24.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label28.text = param1;
         },"_ManJiuJianPanel_Label28.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label32.text = param1;
         },"_ManJiuJianPanel_Label32.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label36.text = param1;
         },"_ManJiuJianPanel_Label36.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label40.text = param1;
         },"_ManJiuJianPanel_Label40.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label44.text = param1;
         },"_ManJiuJianPanel_Label44.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label48.text = param1;
         },"_ManJiuJianPanel_Label48.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label52.text = param1;
         },"_ManJiuJianPanel_Label52.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label56.text = param1;
         },"_ManJiuJianPanel_Label56.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label57.text = param1;
         },"_ManJiuJianPanel_Label57.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label58.text = param1;
         },"_ManJiuJianPanel_Label58.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            title.filters = param1;
         },"title.filters");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            turnAll0.label = param1;
         },"turnAll0.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label62.text = param1;
         },"_ManJiuJianPanel_Label62.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ManJiuJianPanel_Label63.text = param1;
         },"_ManJiuJianPanel_Label63.text");
         result[34] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart10() : ManJiuJianOneCanvas
      {
         return this._1367590593cart10;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart12() : ManJiuJianOneCanvas
      {
         return this._1367590591cart12;
      }
      
      [Bindable(event="propertyChange")]
      public function get buySpe() : DelayButton
      {
         return this._1377570494buySpe;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart14() : ManJiuJianOneCanvas
      {
         return this._1367590589cart14;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart11() : ManJiuJianOneCanvas
      {
         return this._1367590592cart11;
      }
      
      [Bindable(event="propertyChange")]
      public function get cart13() : ManJiuJianOneCanvas
      {
         return this._1367590590cart13;
      }
      
      public function runBroadMsg(param1:Event) : void
      {
         if(arr.length == 0)
         {
            return;
         }
         if(arr.length == 1)
         {
            msgLab.text = Language.MANJIUJIAN_PANEL[28].replace("{name}",arr[_readIndex].n).replace("{num}",arr[_readIndex].cp);
         }
         else
         {
            msgLab.text = Language.MANJIUJIAN_PANEL[28].replace("{name}",arr[_readIndex].n).replace("{num}",arr[_readIndex].cp);
            ++_readIndex;
            if(_readIndex >= arr.length)
            {
               _readIndex = 0;
            }
         }
      }
      
      private function getManJiuJianItemNumByTid2(param1:*) : Number
      {
         var _loc2_:* = undefined;
         if(Boolean(conf) && Boolean(conf.iInfo))
         {
            for(_loc2_ in conf.iInfo)
            {
               if(ToolKit.isEqual(conf.iInfo[_loc2_].iid,param1))
               {
                  return conf.iInfo[_loc2_].lt ? Number(conf.iInfo[_loc2_].lt) : 0;
               }
            }
         }
         return 0;
      }
      
      public function set vb(param1:VBox) : void
      {
         var _loc2_:Object = this._3756vb;
         if(_loc2_ !== param1)
         {
            this._3756vb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vb",_loc2_,param1));
         }
      }
      
      public function set cpn1(param1:Label) : void
      {
         var _loc2_:Object = this._3060400cpn1;
         if(_loc2_ !== param1)
         {
            this._3060400cpn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn1",_loc2_,param1));
         }
      }
      
      public function set cpn2(param1:Label) : void
      {
         var _loc2_:Object = this._3060401cpn2;
         if(_loc2_ !== param1)
         {
            this._3060401cpn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cp2() : Label
      {
         return this._98661cp2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cp3() : Label
      {
         return this._98662cp3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cp4() : Label
      {
         return this._98663cp4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cp6() : Label
      {
         return this._98665cp6;
      }
      
      [Bindable(event="propertyChange")]
      public function get cp7() : Label
      {
         return this._98666cp7;
      }
      
      [Bindable(event="propertyChange")]
      public function get cp9() : Label
      {
         return this._98668cp9;
      }
      
      public function set cpn4(param1:Label) : void
      {
         var _loc2_:Object = this._3060403cpn4;
         if(_loc2_ !== param1)
         {
            this._3060403cpn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn4",_loc2_,param1));
         }
      }
      
      public function set cpn8(param1:Label) : void
      {
         var _loc2_:Object = this._3060407cpn8;
         if(_loc2_ !== param1)
         {
            this._3060407cpn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cp5() : Label
      {
         return this._98664cp5;
      }
      
      public function set cpn9(param1:Label) : void
      {
         var _loc2_:Object = this._3060408cpn9;
         if(_loc2_ !== param1)
         {
            this._3060408cpn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn9",_loc2_,param1));
         }
      }
      
      public function set cpn6(param1:Label) : void
      {
         var _loc2_:Object = this._3060405cpn6;
         if(_loc2_ !== param1)
         {
            this._3060405cpn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn6",_loc2_,param1));
         }
      }
      
      public function onInitManJiuJianPanelData(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(_loadCid != _core.player.id)
         {
            _core.remote.call("initManJiuJianPanelData",new Responder(onInitManJiuJianPanelData),null,null);
            _loadCid = _core.player.id;
            return;
         }
         if(param1)
         {
            if(param1["mjjArr"])
            {
               arr = new Array();
            }
            if(param1["mjjData"])
            {
               chardata = param1["mjjData"];
               lftLab.htmlText = Language.MANJIUJIAN_PANEL[5].replace("{num}",chardata.ft);
            }
            if(param1["mjjConf"])
            {
               conf = param1["mjjConf"];
               ver = conf.ver;
               sver = conf.sver;
               showItemShop();
               intro.htmlText = conf.des;
               intro1.htmlText = conf.sdes;
               cpArr = new Array();
               _loc2_ = 0;
               _loc3_ = 1;
               while(_loc3_ <= 10)
               {
                  cpArr[_loc3_] = {};
                  cpArr[_loc3_].r = _loc2_;
                  _loc2_ += 36;
                  cpArr[_loc3_].cp = conf["cp" + _loc3_];
                  if(conf["res" + _loc3_])
                  {
                     this["cpres" + _loc3_].source = ResManager.getIconUrl(conf["res" + _loc3_]);
                     this["cpres" + ToolKit.add(10,_loc3_)].source = ResManager.getIconUrl(conf["res" + _loc3_]);
                  }
                  if(Boolean(chardata.cp) && Boolean(chardata.cp[conf["cp" + _loc3_]]))
                  {
                     this["cpnum" + _loc3_].text = Number(chardata.cp[conf["cp" + _loc3_]]);
                  }
                  else
                  {
                     this["cpnum" + _loc3_].text = "0";
                  }
                  _loc3_++;
               }
               item.type = GamePredef.TBL_ITEM_TEMPLATE;
               item.giid = conf.sid;
               item.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][conf.sid];
            }
            resetCp(false);
            if(timer1.running)
            {
               timer1.stop();
            }
            if(timer1.hasEventListener(TimerEvent.TIMER))
            {
               timer1.removeEventListener(TimerEvent.TIMER,runBroadMsg);
            }
            timer1.addEventListener(TimerEvent.TIMER,runBroadMsg);
            timer1.start();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cp8() : Label
      {
         return this._98667cp8;
      }
      
      public function set cpn7(param1:Label) : void
      {
         var _loc2_:Object = this._3060406cpn7;
         if(_loc2_ !== param1)
         {
            this._3060406cpn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cp1() : Label
      {
         return this._98660cp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres1() : Image
      {
         return this._1353750146cpres1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres2() : Image
      {
         return this._1353750145cpres2;
      }
      
      private function setSlot() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < 15)
         {
            _loc2_ = _loc1_;
            if(_loc1_ < itemList.length)
            {
               this["cart" + _loc2_].Point = itemList[_loc1_].point;
               this["cart" + _loc2_].ItemId = itemList[_loc1_].giid;
               this["cart" + _loc2_].slotData();
               this["cart" + _loc2_].setLimit(itemList[_loc1_].limit,ToolKit.add(getManJiuJianItemNumByTid(itemList[_loc1_].giid),cartObj[itemList[_loc1_].giid] ? cartObj[itemList[_loc1_].giid] : 0));
               this["cart" + _loc2_].visible = true;
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres6() : Image
      {
         return this._1353750141cpres6;
      }
      
      private function addDataToList() : ArrayCollection
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Object = conf["iInfo"] ? conf["iInfo"] : null;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ != null)
            {
               _loc4_ = new Object();
               _loc4_.type = _loc3_.tid;
               _loc4_.giid = _loc3_.iid;
               _loc4_.point = _loc3_.pt;
               _loc4_.limit = _loc3_.lt;
               _loc1_.addItem(_loc4_);
            }
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres8() : Image
      {
         return this._1353750139cpres8;
      }
      
      public function set cpn3(param1:Label) : void
      {
         var _loc2_:Object = this._3060402cpn3;
         if(_loc2_ !== param1)
         {
            this._3060402cpn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres3() : Image
      {
         return this._1353750144cpres3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres4() : Image
      {
         return this._1353750143cpres4;
      }
      
      public function __turnAll_click(param1:MouseEvent) : void
      {
         playManJiuJianTurnTableAll();
      }
      
      public function __cpadd2_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres7() : Image
      {
         return this._1353750140cpres7;
      }
      
      public function set cpn5(param1:Label) : void
      {
         var _loc2_:Object = this._3060404cpn5;
         if(_loc2_ !== param1)
         {
            this._3060404cpn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn5",_loc2_,param1));
         }
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeView(2);
      }
      
      public function set turnAll0(param1:DelayButton) : void
      {
         var _loc2_:Object = this._133638348turnAll0;
         if(_loc2_ !== param1)
         {
            this._133638348turnAll0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"turnAll0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres5() : Image
      {
         return this._1353750142cpres5;
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd1() : NumericStepper
      {
         return this._1354258019cpadd1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd2() : NumericStepper
      {
         return this._1354258018cpadd2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd3() : NumericStepper
      {
         return this._1354258017cpadd3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd5() : NumericStepper
      {
         return this._1354258015cpadd5;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd6() : NumericStepper
      {
         return this._1354258014cpadd6;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd7() : NumericStepper
      {
         return this._1354258013cpadd7;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd8() : NumericStepper
      {
         return this._1354258012cpadd8;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd9() : NumericStepper
      {
         return this._1354258011cpadd9;
      }
      
      public function set angle(param1:Number) : void
      {
         var _loc2_:Object = this._92960979angle;
         if(_loc2_ !== param1)
         {
            this._92960979angle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"angle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd4() : NumericStepper
      {
         return this._1354258016cpadd4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres9() : Image
      {
         return this._1353750138cpres9;
      }
      
      public function set turnAll1(param1:DelayButton) : void
      {
         var _loc2_:Object = this._133638349turnAll1;
         if(_loc2_ !== param1)
         {
            this._133638349turnAll1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"turnAll1",_loc2_,param1));
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            _loc5_ = _loc4_;
            if(_loc3_ < itemList.length)
            {
               this["cart" + _loc5_].Point = itemList[_loc3_].point;
               this["cart" + _loc5_].ItemId = itemList[_loc3_].giid;
               this["cart" + _loc5_].slotData();
               this["cart" + _loc5_].setLimit(itemList[_loc3_].limit,ToolKit.add(getManJiuJianItemNumByTid(itemList[_loc3_].giid),cartObj[itemList[_loc3_].giid] ? cartObj[itemList[_loc3_].giid] : 0));
               this["cart" + _loc5_].visible = true;
            }
            _loc4_++;
         }
      }
      
      public function set title0(param1:Label) : void
      {
         var _loc2_:Object = this._873453352title0;
         if(_loc2_ !== param1)
         {
            this._873453352title0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title0",_loc2_,param1));
         }
      }
      
      public function removeCart(param1:Number) : void
      {
         if(cartObj[param1])
         {
            delete cartObj[param1];
         }
         needFlush = true;
         resetCartPage();
         pageSelector.refreshPage();
      }
      
      [Bindable(event="propertyChange")]
      public function get ct2() : Label
      {
         return this._98785ct2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct3() : Label
      {
         return this._98786ct3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct4() : Label
      {
         return this._98787ct4;
      }
      
      public function set lftLab(param1:Label) : void
      {
         var _loc2_:Object = this._1105287949lftLab;
         if(_loc2_ !== param1)
         {
            this._1105287949lftLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lftLab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ct1() : Label
      {
         return this._98784ct1;
      }
      
      public function __cpadd7_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get uiC0() : Image
      {
         return this._3588577uiC0;
      }
      
      public function set changeAngle(param1:Rotate) : void
      {
         var _loc2_:Object = this._1682357501changeAngle;
         if(_loc2_ !== param1)
         {
            this._1682357501changeAngle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeAngle",_loc2_,param1));
         }
      }
      
      public function changeCpNum() : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc1_:Number = 0;
         _loc2_ = 1;
         while(_loc2_ <= 10)
         {
            _loc1_ = ToolKit.add(_loc1_,conf["cp" + _loc2_] * Number(this["cpadd" + _loc2_].value));
            _loc2_++;
         }
         var _loc3_:Number = 0;
         for(_loc4_ in cartObj)
         {
            _loc6_ = getManJiuJianItemNumByTid(_loc4_);
            _loc7_ = getManJiuJianItemNumByTid2(_loc4_);
            _loc3_ = ToolKit.add(_loc3_,getManJiuJianItemPtByTid2(_loc4_) * Number(cartObj[_loc4_]));
         }
         _loc5_ = 0;
         _loc2_ = 1;
         while(_loc2_ <= 10)
         {
            if(ToolKit.isSmallThan(_loc3_,conf["s" + _loc2_]))
            {
               break;
            }
            _loc5_ = Number(conf["p" + _loc2_]);
            _loc2_++;
         }
         ct.text = String(_loc5_);
         myt.text = String(_loc1_);
         ct3.text = String((_loc5_ > _loc1_ ? _loc1_ : _loc5_) * 10);
         ct4.text = String(ToolKit.minus(_loc3_,Number(ct3.text)) > 0 ? ToolKit.minus(_loc3_,Number(ct3.text)) : 0);
      }
      
      public function resetCp(param1:Boolean) : void
      {
         var _loc3_:String = null;
         var _loc2_:Number = 1;
         while(_loc2_ <= 10)
         {
            _loc3_ = conf["cp" + _loc2_];
            this["cp" + _loc2_].text = _loc3_;
            this["cpn" + _loc2_].text = chardata.cp[_loc3_] ? chardata.cp[_loc3_] : "0";
            this["cpadd" + _loc2_].maximum = chardata.cp[_loc3_] ? chardata.cp[_loc3_] : "0";
            this["cpnum" + _loc2_].text = Boolean(chardata.cp) && Boolean(chardata.cp[Number(_loc3_)]) ? chardata.cp[Number(_loc3_)] : "0";
            if(param1)
            {
               this["cpadd" + _loc2_].value = "0";
            }
            _loc2_++;
         }
      }
      
      public function set cart0(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431504cart0;
         if(_loc2_ !== param1)
         {
            this._94431504cart0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart0",_loc2_,param1));
         }
      }
      
      public function set cart1(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431505cart1;
         if(_loc2_ !== param1)
         {
            this._94431505cart1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart1",_loc2_,param1));
         }
      }
      
      public function set cart3(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431507cart3;
         if(_loc2_ !== param1)
         {
            this._94431507cart3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart3",_loc2_,param1));
         }
      }
      
      public function set cart4(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431508cart4;
         if(_loc2_ !== param1)
         {
            this._94431508cart4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart4",_loc2_,param1));
         }
      }
      
      public function set item(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      public function set cart8(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431512cart8;
         if(_loc2_ !== param1)
         {
            this._94431512cart8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart8",_loc2_,param1));
         }
      }
      
      public function set cart5(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431509cart5;
         if(_loc2_ !== param1)
         {
            this._94431509cart5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart5",_loc2_,param1));
         }
      }
      
      private function playManJiuJianTurnTableAll() : void
      {
         if(run)
         {
            _core.sysMsg(Language.MANJIUJIAN_PANEL[24]);
            return;
         }
         if(ToolKit.isSmallOrEqual(chardata.ft,0))
         {
            _core.sysMsg(Language.MANJIUJIAN_PANEL[25]);
            return;
         }
         _core.remote.call("playManJiuJianTurnTableAll",null);
      }
      
      public function set cart7(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431511cart7;
         if(_loc2_ !== param1)
         {
            this._94431511cart7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart7",_loc2_,param1));
         }
      }
      
      public function set titleWrapper(param1:Canvas) : void
      {
         var _loc2_:Object = this._1969543397titleWrapper;
         if(_loc2_ !== param1)
         {
            this._1969543397titleWrapper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleWrapper",_loc2_,param1));
         }
      }
      
      public function onTurnTable(param1:Number, param2:Object, param3:Number) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(initialized)
         {
            run = true;
            if(timer.running)
            {
               timer.stop();
            }
            if(timer.hasEventListener(TimerEvent.TIMER))
            {
               timer.removeEventListener(TimerEvent.TIMER,moveTurnTable);
            }
            count = 0;
            for(_loc4_ in cpArr)
            {
               if(ToolKit.isEqual(cpArr[_loc4_].cp,param1))
               {
                  endCpRad = cpArr[_loc4_].r;
                  break;
               }
            }
            if(param2)
            {
               for(_loc5_ in param2)
               {
                  chardata.cp[_loc5_] = param2[_loc5_];
               }
            }
            else
            {
               if(!chardata.cp[param1])
               {
                  chardata.cp[param1] = 0;
               }
               chardata.cp[param1] = ToolKit.add(chardata.cp[param1],1);
            }
            chardata.ft = param3;
            lftLab.htmlText = Language.MANJIUJIAN_PANEL[5].replace("{num}",chardata.ft);
            timer.addEventListener(TimerEvent.TIMER,moveTurnTable);
            timer.start();
         }
      }
      
      public function set cart6(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431510cart6;
         if(_loc2_ !== param1)
         {
            this._94431510cart6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart6",_loc2_,param1));
         }
      }
      
      public function set cart2(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431506cart2;
         if(_loc2_ !== param1)
         {
            this._94431506cart2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart2",_loc2_,param1));
         }
      }
      
      public function set cart9(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._94431513cart9;
         if(_loc2_ !== param1)
         {
            this._94431513cart9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpadd10() : NumericStepper
      {
         return this._967674419cpadd10;
      }
      
      public function onUpdateManJiuJianLimitItemAll(param1:Object, param2:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(initialized)
         {
            for(_loc3_ in param1)
            {
               chardata.lt[_loc3_] = param1[_loc3_];
            }
            for(_loc4_ in param2)
            {
               chardata.cp[_loc4_] = param2[_loc4_];
            }
            cartObj = {};
            needFlush = true;
            resetCartPage();
            resetCp(true);
            pageSelector.refreshPage();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get msgLab() : Label
      {
         return this._1065040308msgLab;
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : Label
      {
         return this._110371416title;
      }
      
      [Bindable(event="propertyChange")]
      public function get intro() : IntroText
      {
         return this._100361836intro;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres10() : Image
      {
         return this._983418482cpres10;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres11() : Image
      {
         return this._983418483cpres11;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres12() : Image
      {
         return this._983418484cpres12;
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
         if(param1 == 2)
         {
            resetCartPage();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres14() : Image
      {
         return this._983418486cpres14;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres16() : Image
      {
         return this._983418488cpres16;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres18() : Image
      {
         return this._983418490cpres18;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres19() : Image
      {
         return this._983418491cpres19;
      }
      
      public function __cpadd3_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      public function set cart11(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._1367590592cart11;
         if(_loc2_ !== param1)
         {
            this._1367590592cart11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart11",_loc2_,param1));
         }
      }
      
      public function set cart12(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._1367590591cart12;
         if(_loc2_ !== param1)
         {
            this._1367590591cart12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart12",_loc2_,param1));
         }
      }
      
      private function clearPage() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < 15)
         {
            _loc2_ = _loc1_;
            this["cart" + _loc2_].visible = false;
            _loc1_++;
         }
      }
      
      public function set cart14(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._1367590589cart14;
         if(_loc2_ !== param1)
         {
            this._1367590589cart14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres15() : Image
      {
         return this._983418487cpres15;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres17() : Image
      {
         return this._983418489cpres17;
      }
      
      public function set buySpe(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1377570494buySpe;
         if(_loc2_ !== param1)
         {
            this._1377570494buySpe = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buySpe",_loc2_,param1));
         }
      }
      
      public function onUpdateManJiuJianLimitItem(param1:Number, param2:Number) : void
      {
         if(initialized)
         {
            chardata.lt[param1] = param2;
            if(param1 != conf.sid)
            {
               pageSelector.refreshPage();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres13() : Image
      {
         return this._983418485cpres13;
      }
      
      public function set cp10(param1:Label) : void
      {
         var _loc2_:Object = this._3058508cp10;
         if(_loc2_ !== param1)
         {
            this._3058508cp10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp10",_loc2_,param1));
         }
      }
      
      public function set intro1(param1:IntroText) : void
      {
         var _loc2_:Object = this._1183750331intro1;
         if(_loc2_ !== param1)
         {
            this._1183750331intro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intro1",_loc2_,param1));
         }
      }
      
      public function set cart13(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._1367590590cart13;
         if(_loc2_ !== param1)
         {
            this._1367590590cart13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpres20() : Image
      {
         return this._983418513cpres20;
      }
      
      public function set cart10(param1:ManJiuJianOneCanvas) : void
      {
         var _loc2_:Object = this._1367590593cart10;
         if(_loc2_ !== param1)
         {
            this._1367590593cart10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cart10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vb() : VBox
      {
         return this._3756vb;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn1() : Label
      {
         return this._3060400cpn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn4() : Label
      {
         return this._3060403cpn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn6() : Label
      {
         return this._3060405cpn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn7() : Label
      {
         return this._3060406cpn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn8() : Label
      {
         return this._3060407cpn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn2() : Label
      {
         return this._3060401cpn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn3() : Label
      {
         return this._3060402cpn3;
      }
      
      public function set cpnum7(param1:Label) : void
      {
         var _loc2_:Object = this._1353854114cpnum7;
         if(_loc2_ !== param1)
         {
            this._1353854114cpnum7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum7",_loc2_,param1));
         }
      }
      
      public function set cpnum4(param1:Label) : void
      {
         var _loc2_:Object = this._1353854117cpnum4;
         if(_loc2_ !== param1)
         {
            this._1353854117cpnum4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum4",_loc2_,param1));
         }
      }
      
      public function set cpnum8(param1:Label) : void
      {
         var _loc2_:Object = this._1353854113cpnum8;
         if(_loc2_ !== param1)
         {
            this._1353854113cpnum8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn9() : Label
      {
         return this._3060408cpn9;
      }
      
      public function set cpnum2(param1:Label) : void
      {
         var _loc2_:Object = this._1353854119cpnum2;
         if(_loc2_ !== param1)
         {
            this._1353854119cpnum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum2",_loc2_,param1));
         }
      }
      
      public function showItemShop() : void
      {
         if(initialized)
         {
            itemList.removeAll();
            itemList = addDataToList();
            setSlot();
            pageSelector.onPageChanged = onPageChanged;
            pageSelector.onPageCleared = clearPage;
            pageSelector.initPageSeletor(itemList.length,15);
         }
      }
      
      public function set cpnum5(param1:Label) : void
      {
         var _loc2_:Object = this._1353854116cpnum5;
         if(_loc2_ !== param1)
         {
            this._1353854116cpnum5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum5",_loc2_,param1));
         }
      }
      
      public function set cp1(param1:Label) : void
      {
         var _loc2_:Object = this._98660cp1;
         if(_loc2_ !== param1)
         {
            this._98660cp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp1",_loc2_,param1));
         }
      }
      
      public function set cpnum6(param1:Label) : void
      {
         var _loc2_:Object = this._1353854115cpnum6;
         if(_loc2_ !== param1)
         {
            this._1353854115cpnum6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum6",_loc2_,param1));
         }
      }
      
      public function set cp2(param1:Label) : void
      {
         var _loc2_:Object = this._98661cp2;
         if(_loc2_ !== param1)
         {
            this._98661cp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp2",_loc2_,param1));
         }
      }
      
      public function __cpadd8_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      public function set cp3(param1:Label) : void
      {
         var _loc2_:Object = this._98662cp3;
         if(_loc2_ !== param1)
         {
            this._98662cp3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp3",_loc2_,param1));
         }
      }
      
      public function set cp4(param1:Label) : void
      {
         var _loc2_:Object = this._98663cp4;
         if(_loc2_ !== param1)
         {
            this._98663cp4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp4",_loc2_,param1));
         }
      }
      
      public function set cpnum9(param1:Label) : void
      {
         var _loc2_:Object = this._1353854112cpnum9;
         if(_loc2_ !== param1)
         {
            this._1353854112cpnum9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum9",_loc2_,param1));
         }
      }
      
      public function set cp5(param1:Label) : void
      {
         var _loc2_:Object = this._98664cp5;
         if(_loc2_ !== param1)
         {
            this._98664cp5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp5",_loc2_,param1));
         }
      }
      
      public function set cp6(param1:Label) : void
      {
         var _loc2_:Object = this._98665cp6;
         if(_loc2_ !== param1)
         {
            this._98665cp6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp6",_loc2_,param1));
         }
      }
      
      public function set cp7(param1:Label) : void
      {
         var _loc2_:Object = this._98666cp7;
         if(_loc2_ !== param1)
         {
            this._98666cp7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp7",_loc2_,param1));
         }
      }
      
      public function set cp8(param1:Label) : void
      {
         var _loc2_:Object = this._98667cp8;
         if(_loc2_ !== param1)
         {
            this._98667cp8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp8",_loc2_,param1));
         }
      }
      
      public function set cp9(param1:Label) : void
      {
         var _loc2_:Object = this._98668cp9;
         if(_loc2_ !== param1)
         {
            this._98668cp9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp9",_loc2_,param1));
         }
      }
      
      public function set cpnum1(param1:Label) : void
      {
         var _loc2_:Object = this._1353854120cpnum1;
         if(_loc2_ !== param1)
         {
            this._1353854120cpnum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn5() : Label
      {
         return this._3060404cpn5;
      }
      
      public function set cpnum3(param1:Label) : void
      {
         var _loc2_:Object = this._1353854118cpnum3;
         if(_loc2_ !== param1)
         {
            this._1353854118cpnum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum3",_loc2_,param1));
         }
      }
      
      public function set cpres2(param1:Image) : void
      {
         var _loc2_:Object = this._1353750145cpres2;
         if(_loc2_ !== param1)
         {
            this._1353750145cpres2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres2",_loc2_,param1));
         }
      }
      
      public function set cpn10(param1:Label) : void
      {
         var _loc2_:Object = this._94872448cpn10;
         if(_loc2_ !== param1)
         {
            this._94872448cpn10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpn10",_loc2_,param1));
         }
      }
      
      public function set cpres4(param1:Image) : void
      {
         var _loc2_:Object = this._1353750143cpres4;
         if(_loc2_ !== param1)
         {
            this._1353750143cpres4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeAngle() : Rotate
      {
         return this._1682357501changeAngle;
      }
      
      public function set cpres6(param1:Image) : void
      {
         var _loc2_:Object = this._1353750141cpres6;
         if(_loc2_ !== param1)
         {
            this._1353750141cpres6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres6",_loc2_,param1));
         }
      }
      
      public function set cpres3(param1:Image) : void
      {
         var _loc2_:Object = this._1353750144cpres3;
         if(_loc2_ !== param1)
         {
            this._1353750144cpres3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres3",_loc2_,param1));
         }
      }
      
      public function set cpres7(param1:Image) : void
      {
         var _loc2_:Object = this._1353750140cpres7;
         if(_loc2_ !== param1)
         {
            this._1353750140cpres7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres7",_loc2_,param1));
         }
      }
      
      public function set cpres8(param1:Image) : void
      {
         var _loc2_:Object = this._1353750139cpres8;
         if(_loc2_ !== param1)
         {
            this._1353750139cpres8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres8",_loc2_,param1));
         }
      }
      
      public function set cpres9(param1:Image) : void
      {
         var _loc2_:Object = this._1353750138cpres9;
         if(_loc2_ !== param1)
         {
            this._1353750138cpres9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres9",_loc2_,param1));
         }
      }
      
      public function set cpres5(param1:Image) : void
      {
         var _loc2_:Object = this._1353750142cpres5;
         if(_loc2_ !== param1)
         {
            this._1353750142cpres5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleWrapper() : Canvas
      {
         return this._1969543397titleWrapper;
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      public function __cpadd10_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      public function set cpres1(param1:Image) : void
      {
         var _loc2_:Object = this._1353750146cpres1;
         if(_loc2_ !== param1)
         {
            this._1353750146cpres1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpres1",_loc2_,param1));
         }
      }
      
      private function playManJiuJianTurnTable() : void
      {
         if(run)
         {
            _core.sysMsg(Language.MANJIUJIAN_PANEL[24]);
            return;
         }
         if(ToolKit.isSmallOrEqual(chardata.ft,0))
         {
            _core.sysMsg(Language.MANJIUJIAN_PANEL[25]);
            return;
         }
         _core.remote.call("playManJiuJianTurnTableOne",null);
      }
      
      public function set cpadd1(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258019cpadd1;
         if(_loc2_ !== param1)
         {
            this._1354258019cpadd1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd1",_loc2_,param1));
         }
      }
      
      public function set cpadd2(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258018cpadd2;
         if(_loc2_ !== param1)
         {
            this._1354258018cpadd2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd2",_loc2_,param1));
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
      
      public function set cpadd5(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258015cpadd5;
         if(_loc2_ !== param1)
         {
            this._1354258015cpadd5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd5",_loc2_,param1));
         }
      }
      
      private function getManJiuJianItemNumByTid(param1:*) : Number
      {
         if(Boolean(chardata) && Boolean(chardata.lt))
         {
            return chardata.lt[param1] ? Number(chardata.lt[param1]) : 0;
         }
         return 0;
      }
      
      public function set cpadd8(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258012cpadd8;
         if(_loc2_ !== param1)
         {
            this._1354258012cpadd8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd8",_loc2_,param1));
         }
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
      
      public function set cpadd6(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258014cpadd6;
         if(_loc2_ !== param1)
         {
            this._1354258014cpadd6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cp10() : Label
      {
         return this._3058508cp10;
      }
      
      public function set cpadd3(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258017cpadd3;
         if(_loc2_ !== param1)
         {
            this._1354258017cpadd3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd3",_loc2_,param1));
         }
      }
      
      public function __cpadd4_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
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
      
      public function set cpadd9(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258011cpadd9;
         if(_loc2_ !== param1)
         {
            this._1354258011cpadd9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd9",_loc2_,param1));
         }
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
      public function get cpnum4() : Label
      {
         return this._1353854117cpnum4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum1() : Label
      {
         return this._1353854120cpnum1;
      }
      
      public function addCart(param1:Number) : void
      {
         var _loc2_:Number = ToolKit.minus(getManJiuJianItemNumByTid2(param1),getManJiuJianItemNumByTid(param1));
         _loc2_ = ToolKit.minus(_loc2_,cartObj[param1] ? cartObj[param1] : 0);
         if(ToolKit.isSmallOrEqual(_loc2_,0))
         {
            _core.sysMsg(Language.MANJIUJIAN_PANEL[22]);
            return;
         }
         if(!cartObj[param1])
         {
            cartObj[param1] = 0;
         }
         cartObj[param1] = ToolKit.add(cartObj[param1],1);
         pageSelector.refreshPage();
         needFlush = true;
      }
      
      public function set cpadd4(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258016cpadd4;
         if(_loc2_ !== param1)
         {
            this._1354258016cpadd4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd4",_loc2_,param1));
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
      
      public function set bangBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324753bangBtn3;
         if(_loc2_ !== param1)
         {
            this._1863324753bangBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum8() : Label
      {
         return this._1353854113cpnum8;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum9() : Label
      {
         return this._1353854112cpnum9;
      }
      
      public function set cpadd7(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1354258013cpadd7;
         if(_loc2_ !== param1)
         {
            this._1354258013cpadd7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpadd7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum3() : Label
      {
         return this._1353854118cpnum3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum6() : Label
      {
         return this._1353854115cpnum6;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum2() : Label
      {
         return this._1353854119cpnum2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum5() : Label
      {
         return this._1353854116cpnum5;
      }
      
      public function __turnAll1_click(param1:MouseEvent) : void
      {
         playManJiuJianTurnTable();
      }
      
      [Bindable(event="propertyChange")]
      public function get cpn10() : Label
      {
         return this._94872448cpn10;
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum7() : Label
      {
         return this._1353854114cpnum7;
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
         var target:ManJiuJianPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ManJiuJianPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ManJiuJianPanelWatcherSetupUtil");
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
      public function get intro1() : IntroText
      {
         return this._1183750331intro1;
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
      
      public function set cpnum10(param1:Label) : void
      {
         var _loc2_:Object = this._980195288cpnum10;
         if(_loc2_ !== param1)
         {
            this._980195288cpnum10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpnum10",_loc2_,param1));
         }
      }
      
      public function __cpadd9_change(param1:NumericStepperEvent) : void
      {
         changeCpNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn3() : BasicGlowButton
      {
         return this._1863324753bangBtn3;
      }
      
      public function set ct2(param1:Label) : void
      {
         var _loc2_:Object = this._98785ct2;
         if(_loc2_ !== param1)
         {
            this._98785ct2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct2",_loc2_,param1));
         }
      }
      
      public function set ct3(param1:Label) : void
      {
         var _loc2_:Object = this._98786ct3;
         if(_loc2_ !== param1)
         {
            this._98786ct3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct3",_loc2_,param1));
         }
      }
      
      public function set ct4(param1:Label) : void
      {
         var _loc2_:Object = this._98787ct4;
         if(_loc2_ !== param1)
         {
            this._98787ct4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct4",_loc2_,param1));
         }
      }
      
      public function set ct1(param1:Label) : void
      {
         var _loc2_:Object = this._98784ct1;
         if(_loc2_ !== param1)
         {
            this._98784ct1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct1",_loc2_,param1));
         }
      }
      
      public function set turnAll(param1:DelayButton) : void
      {
         var _loc2_:Object = this._965520412turnAll;
         if(_loc2_ !== param1)
         {
            this._965520412turnAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"turnAll",_loc2_,param1));
         }
      }
      
      public function set uiC0(param1:Image) : void
      {
         var _loc2_:Object = this._3588577uiC0;
         if(_loc2_ !== param1)
         {
            this._3588577uiC0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiC0",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initManJiuJianPanelData",new Responder(onInitManJiuJianPanelData),ver,sver);
      }
      
      [Bindable(event="propertyChange")]
      public function get cpnum10() : Label
      {
         return this._980195288cpnum10;
      }
      
      [Bindable(event="propertyChange")]
      public function get turnAll() : DelayButton
      {
         return this._965520412turnAll;
      }
   }
}

