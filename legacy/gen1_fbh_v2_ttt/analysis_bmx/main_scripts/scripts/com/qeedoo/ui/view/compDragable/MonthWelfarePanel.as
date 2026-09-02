package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.MonthWelfareLBCanvas;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Rotate;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MonthWelfarePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1491390272myLotto:LinkTextArea;
      
      private var endZPRad:Number = 0;
      
      private var _115759uiC:Image;
      
      private var count:Number = 0;
      
      private var _86709745zpitem8:ItemSlot;
      
      private var _808329852vsFlop:ViewStack;
      
      private var monthWelfareConf:Object = {};
      
      private var _86709744zpitem9:ItemSlot;
      
      private var zpItemArr:Array = new Array();
      
      private var timer:Timer = new Timer(50);
      
      private var _1606965032zpitem10:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var itemList:ArrayCollection = new ArrayCollection();
      
      private var _3588577uiC0:Image;
      
      private var _1606289880endtime:Label;
      
      private var _1537286028guajiNum:TextInput;
      
      private var monthWelfareZpItem:Object = {};
      
      private var _86709752zpitem1:ItemSlot;
      
      public var _MonthWelfarePanel_Image1:Image;
      
      private var _core:Core = Core.getInstance();
      
      public var _MonthWelfarePanel_Image4:Image;
      
      private var run:Boolean = false;
      
      private var timer1:Timer = new Timer(3000);
      
      private var _3756vb:VBox;
      
      private var _86709749zpitem4:ItemSlot;
      
      private var _1134658361keynum:Button;
      
      mx_internal var _watchers:Array = [];
      
      private var _86709751zpitem2:ItemSlot;
      
      private var _1682357501changeAngle:Rotate;
      
      public var _MonthWelfarePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _MonthWelfarePanel_BasicGlowButton5:BasicGlowButton;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _86709748zpitem5:ItemSlot;
      
      private var monthWelfareData:Object = {};
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _86709750zpitem3:ItemSlot;
      
      private var _1982241108BagBtn:BasicGlowButton;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var ChildArr:Array = new Array();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _92960979angle:Number = 18;
      
      private var _789140625helpinfo:Label;
      
      private var _86709747zpitem6:ItemSlot;
      
      private var MonthWelfareCanvasObj:Object = {};
      
      private var _92271712zpcsnum:Label;
      
      private var _133638349turnAll1:DelayButton;
      
      private var _2128341457starttime:Label;
      
      private var monthWelfareArr:Array = new Array();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":670,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MonthWelfarePanel_BasicTitleCanvas1",
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
                  "type":BasicGlowButton,
                  "id":"bangBtn2",
                  "events":{"click":"__bangBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":70,
                        "x":158,
                        "y":35
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
                        "width":650,
                        "height":380,
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
                                    "id":"_MonthWelfarePanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":2.5,
                                          "width":645,
                                          "height":375
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"uiC0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":10,
                                          "width":346,
                                          "height":343
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"uiC",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":93,
                                          "y":102,
                                          "width":160,
                                          "height":160
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
                                          "x":123,
                                          "y":132,
                                          "width":100,
                                          "height":100,
                                          "styleName":"manjiujianBtn"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":423,
                                          "y":63,
                                          "width":200,
                                          "height":210,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":LinkTextArea,
                                             "id":"myLotto",
                                             "events":{"valueCommit":"__myLotto_valueCommit"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.top = "5";
                                                this.right = "5";
                                                this.bottom = "0";
                                                this.color = 16766720;
                                                this.fontSize = 14;
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selectable":false,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"auto"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"BagBtn",
                                    "events":{"click":"__BagBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":560,
                                          "y":3,
                                          "width":83
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_MonthWelfarePanel_BasicGlowButton5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":480,
                                          "y":40,
                                          "width":80,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"guajiNum",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":280,
                                          "y":297,
                                          "width":38
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___MonthWelfarePanel_Button1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":257,
                                          "y":318,
                                          "styleName":"monthWelfareKaiShi",
                                          "width":116,
                                          "height":62
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":308,
                                          "y":269,
                                          "text":"一键挂机",
                                          "width":57
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___MonthWelfarePanel_Button2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":326,
                                          "y":288,
                                          "styleName":"monthWelfareMax",
                                          "width":34,
                                          "height":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"endtime",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":384,
                                          "y":325,
                                          "text":"Label",
                                          "width":239
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"starttime",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":384,
                                          "y":308,
                                          "text":"Label",
                                          "width":239
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":157,
                                          "y":62,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":216,
                                          "y":81,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":132,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":194,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":219,
                                          "y":245,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":158,
                                          "y":265,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":97,
                                          "y":245,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":62,
                                          "y":194,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":62,
                                          "y":130,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"zpitem10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":99,
                                          "y":81,
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
                                    "id":"_MonthWelfarePanel_Image4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":2.5,
                                          "width":645,
                                          "height":375
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vb",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.top = "0";
                                       this.verticalGap = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "minHeight":0,
                                          "minWidth":0,
                                          "verticalScrollPolicy":"on",
                                          "horizontalScrollPolicy":"off",
                                          "x":0
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
                                    "type":Label,
                                    "id":"helpinfo",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":630,
                                          "height":360
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
                  "id":"zpcsnum",
                  "stylesFactory":function():void
                  {
                     this.color = 16766720;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":537,
                        "y":35,
                        "text":"可转动次数：",
                        "width":123,
                        "visible":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"keynum",
                  "events":{"click":"__keynum_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":512,
                        "y":32,
                        "width":130,
                        "height":23,
                        "styleName":"changtiao",
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _86709746zpitem7:ItemSlot;
      
      public function MonthWelfarePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 670;
         this.height = 450;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         _MonthWelfarePanel_Rotate1_i();
         this.addEventListener("creationComplete",___MonthWelfarePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MonthWelfarePanel._watcherSetupUtil = param1;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem2() : ItemSlot
      {
         return this._86709751zpitem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem4() : ItemSlot
      {
         return this._86709749zpitem4;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem5() : ItemSlot
      {
         return this._86709748zpitem5;
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
      
      [Bindable(event="propertyChange")]
      public function get zpitem7() : ItemSlot
      {
         return this._86709746zpitem7;
      }
      
      public function set zpitem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709752zpitem1;
         if(_loc2_ !== param1)
         {
            this._86709752zpitem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem3() : ItemSlot
      {
         return this._86709750zpitem3;
      }
      
      public function __keynum_click(param1:MouseEvent) : void
      {
         ongetMonthWelfareZK();
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
      
      public function set zpitem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709751zpitem2;
         if(_loc2_ !== param1)
         {
            this._86709751zpitem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem2",_loc2_,param1));
         }
      }
      
      private function ongetMonthWelfareZK() : void
      {
         _core.remote.call("getMonthWelfareZK",new Responder(showMonthWelfareZK));
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem6() : ItemSlot
      {
         return this._86709747zpitem6;
      }
      
      public function set zpitem4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709749zpitem4;
         if(_loc2_ !== param1)
         {
            this._86709749zpitem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem4",_loc2_,param1));
         }
      }
      
      public function set zpitem5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709748zpitem5;
         if(_loc2_ !== param1)
         {
            this._86709748zpitem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem5",_loc2_,param1));
         }
      }
      
      public function set zpitem6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709747zpitem6;
         if(_loc2_ !== param1)
         {
            this._86709747zpitem6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem6",_loc2_,param1));
         }
      }
      
      public function set zpitem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709750zpitem3;
         if(_loc2_ !== param1)
         {
            this._86709750zpitem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeAngle() : Rotate
      {
         return this._1682357501changeAngle;
      }
      
      [Bindable(event="propertyChange")]
      public function get endtime() : Label
      {
         return this._1606289880endtime;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem1() : ItemSlot
      {
         return this._86709752zpitem1;
      }
      
      public function set zpitem7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709746zpitem7;
         if(_loc2_ !== param1)
         {
            this._86709746zpitem7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem7",_loc2_,param1));
         }
      }
      
      public function set zpitem8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709745zpitem8;
         if(_loc2_ !== param1)
         {
            this._86709745zpitem8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starttime() : Label
      {
         return this._2128341457starttime;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem8() : ItemSlot
      {
         return this._86709745zpitem8;
      }
      
      [Bindable(event="propertyChange")]
      public function get uiC() : Image
      {
         return this._115759uiC;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem10() : ItemSlot
      {
         return this._1606965032zpitem10;
      }
      
      [Bindable(event="propertyChange")]
      public function get zpitem9() : ItemSlot
      {
         return this._86709744zpitem9;
      }
      
      public function set zpitem9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._86709744zpitem9;
         if(_loc2_ !== param1)
         {
            this._86709744zpitem9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem9",_loc2_,param1));
         }
      }
      
      private function _MonthWelfarePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MONTH_WELFARE_PANEL[0];
         _loc1_ = Language.MONTH_WELFARE_PANEL[12];
         _loc1_ = Language.MONTH_WELFARE_PANEL[13];
         _loc1_ = Language.MONTH_WELFARE_PANEL[14];
         _loc1_ = uiC;
         _loc1_ = angle - 18;
         _loc1_ = angle;
         _loc1_ = ResManager.getIconUrl(4130220000573);
         _loc1_ = ResManager.getIconUrl(4130220000513);
         _loc1_ = ResManager.getIconUrl(4130220000512);
         _loc1_ = Language.MONTH_WELFARE_PANEL[16];
         _loc1_ = Language.MONTH_WELFARE_PANEL[15];
         _loc1_ = ResManager.getIconUrl(4130220000573);
      }
      
      [Bindable(event="propertyChange")]
      public function get myLotto() : LinkTextArea
      {
         return this._1491390272myLotto;
      }
      
      public function set zpcsnum(param1:Label) : void
      {
         var _loc2_:Object = this._92271712zpcsnum;
         if(_loc2_ !== param1)
         {
            this._92271712zpcsnum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpcsnum",_loc2_,param1));
         }
      }
      
      public function set endtime(param1:Label) : void
      {
         var _loc2_:Object = this._1606289880endtime;
         if(_loc2_ !== param1)
         {
            this._1606289880endtime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endtime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get BagBtn() : BasicGlowButton
      {
         return this._1982241108BagBtn;
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      public function set zpitem10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1606965032zpitem10;
         if(_loc2_ !== param1)
         {
            this._1606965032zpitem10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zpitem10",_loc2_,param1));
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
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      public function set starttime(param1:Label) : void
      {
         var _loc2_:Object = this._2128341457starttime;
         if(_loc2_ !== param1)
         {
            this._2128341457starttime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starttime",_loc2_,param1));
         }
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
      
      public function ___MonthWelfarePanel_Button1_click(param1:MouseEvent) : void
      {
         playMonthWelfareTurnTableAll();
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
      
      private function onInitMonthWelfareData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:MonthWelfareLBCanvas = null;
         var _loc12_:Array = null;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         if(param1)
         {
            if(param1["data"])
            {
               monthWelfareData = param1["data"];
               zpcsnum.htmlText = Language.MONTH_WELFARE_PANEL[21].replace("{num}",monthWelfareData.zpnum);
               keynum.label = Language.MONTH_WELFARE_PANEL[23].replace("{num}",monthWelfareData.Keynum);
               keynum.enabled = true;
               if(monthWelfareData.Keynum <= 0)
               {
                  keynum.enabled = false;
               }
               monthWelfareArr = new Array();
               for(_loc4_ in monthWelfareData.HadItemArr)
               {
                  monthWelfareArr.push(monthWelfareData.HadItemArr[_loc4_]);
               }
               _loc5_ = monthWelfareArr.length;
               _loc6_ = "";
               _loc7_ = "获得1个";
               _loc8_ = 0;
               myLotto.htmlText = "";
               _loc3_ = 0;
               while(_loc3_ < _loc5_)
               {
                  _loc9_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][monthWelfareArr[_loc3_].haditem.iid];
                  if(_loc9_)
                  {
                     _loc8_ = Number(_loc9_.color);
                  }
                  if(_loc8_ < 0)
                  {
                     _loc8_ = 0;
                  }
                  _loc6_ = _loc7_ + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc8_] + "\'>" + _loc9_.name + "</font><br/>";
                  myLotto.htmlText += _loc6_;
                  _loc3_++;
               }
            }
            if(param1["conf"])
            {
               monthWelfareConf = param1["conf"];
               starttime.text = Language.MONTH_WELFARE_PANEL[17].replace("{time}",TimeUtil.dateTimeToString(new Date(monthWelfareConf.start)));
               endtime.text = Language.MONTH_WELFARE_PANEL[18].replace("{time}",TimeUtil.dateTimeToString(new Date(monthWelfareConf.end)));
               helpinfo.htmlText = Language.MONTH_WELFARE_PANEL[24].replace("{num}",Number(monthWelfareConf.integralonce) * 10);
            }
            if(param1["zpitem"])
            {
               monthWelfareZpItem = param1["zpitem"];
               zpItemArr = new Array();
               _loc10_ = 0;
               _loc3_ = 1;
               while(_loc3_ <= 10)
               {
                  zpItemArr[_loc3_] = {};
                  zpItemArr[_loc3_].r = _loc10_;
                  _loc10_ += 36;
                  zpItemArr[_loc3_].iid = monthWelfareZpItem[_loc3_].iid;
                  this["zpitem" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["zpitem" + _loc3_].giid = monthWelfareZpItem[_loc3_].iid;
                  this["zpitem" + _loc3_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][monthWelfareZpItem[_loc3_].iid];
                  _loc3_++;
               }
            }
            _loc2_ = monthWelfareConf.iInfo;
            vb.removeAllChildren();
            _loc3_ = 1;
            while(_loc3_ <= 3)
            {
               _loc11_ = new MonthWelfareLBCanvas();
               _loc12_ = [];
               _loc13_ = [];
               _loc14_ = [];
               _loc15_ = [];
               for(_loc16_ in _loc2_)
               {
                  if(Boolean(_loc2_[_loc16_]) && _loc2_[_loc16_].inc == _loc3_)
                  {
                     _loc12_.push(_loc2_[_loc16_].iid);
                     _loc13_.push(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_[_loc16_].iid].name);
                     _loc14_.push(_loc2_[_loc16_].price);
                     for(_loc17_ in monthWelfareData.xgnum)
                     {
                        if(monthWelfareData.xgnum[_loc17_].iid == _loc2_[_loc16_].iid)
                        {
                           _loc15_.push(monthWelfareData.xgnum[_loc17_].num);
                           break;
                        }
                     }
                  }
               }
               _loc11_.ZKShow = getShowZK(_loc3_);
               _loc11_.Leixin = _loc3_;
               _loc11_.ItemArr = _loc12_;
               _loc11_.LabArr = _loc13_;
               _loc11_.YuanJiaArr = _loc14_;
               _loc11_.XGnumArr = _loc15_;
               vb.addChild(_loc11_);
               ChildArr[_loc3_] = _loc11_;
               _loc3_++;
            }
         }
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
      
      public function ___MonthWelfarePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get guajiNum() : TextInput
      {
         return this._1537286028guajiNum;
      }
      
      private function showMonthWelfareZK(param1:Object) : void
      {
         var _loc4_:MonthWelfareLBCanvas = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(!param1)
         {
            return;
         }
         monthWelfareData = param1;
         var _loc2_:Object = monthWelfareConf.iInfo;
         vb.removeAllChildren();
         var _loc3_:Number = 1;
         while(_loc3_ <= 3)
         {
            _loc4_ = new MonthWelfareLBCanvas();
            _loc5_ = [];
            _loc6_ = [];
            _loc7_ = [];
            _loc8_ = [];
            for(_loc9_ in _loc2_)
            {
               if(Boolean(_loc2_[_loc9_]) && _loc2_[_loc9_].inc == _loc3_)
               {
                  _loc5_.push(_loc2_[_loc9_].iid);
                  _loc6_.push(GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_[_loc9_].iid].name);
                  _loc7_.push(_loc2_[_loc9_].price);
                  for(_loc10_ in monthWelfareData.xgnum)
                  {
                     if(monthWelfareData.xgnum[_loc10_].iid == _loc2_[_loc9_].iid)
                     {
                        _loc8_.push(monthWelfareData.xgnum[_loc10_].num);
                        break;
                     }
                  }
               }
            }
            _loc4_.ZKShow = getShowZK(_loc3_);
            _loc4_.Leixin = _loc3_;
            _loc4_.ItemArr = _loc5_;
            _loc4_.LabArr = _loc6_;
            _loc4_.YuanJiaArr = _loc7_;
            _loc4_.XGnumArr = _loc8_;
            vb.addChild(_loc4_);
            ChildArr[_loc3_] = _loc4_;
            _loc3_++;
         }
         keynum.label = Language.MONTH_WELFARE_PANEL[23].replace("{num}",monthWelfareData.Keynum);
         if(monthWelfareData.Keynum <= 0)
         {
            keynum.enabled = false;
         }
         Alert.show("本次使用折扣钥匙获得" + "\n" + "稀有道具折扣：" + getShowZK(1) + "\n" + "精品道具折扣：" + getShowZK(2) + "\n" + "超值道具折扣：" + getShowZK(3));
      }
      
      public function __turnAll1_click(param1:MouseEvent) : void
      {
         playMonthWelfareTurnTable();
      }
      
      private function setSlot() : void
      {
      }
      
      private function addDataToList() : ArrayCollection
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Object = monthWelfareConf["iInfo"] ? monthWelfareConf["iInfo"] : null;
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
      
      private function moveTurnTable(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
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
            if(ToolKit.isEqual((angle - 18) % 360,endZPRad))
            {
               changeAngle.stop();
               run = false;
               if(timer.running)
               {
                  timer.stop();
               }
               if(timer.hasEventListener(TimerEvent.TIMER))
               {
                  timer.removeEventListener(TimerEvent.TIMER,moveTurnTable);
               }
               _loc2_ = "";
               _loc3_ = "获得1个";
               _loc4_ = 0;
               myLotto.htmlText = "";
               for(_loc5_ in monthWelfareArr)
               {
                  _loc6_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][monthWelfareArr[_loc5_].haditem.iid];
                  if(_loc6_)
                  {
                     _loc4_ = Number(_loc6_.color);
                  }
                  if(_loc4_ < 0)
                  {
                     _loc4_ = 0;
                  }
                  _loc2_ = _loc3_ + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc4_] + "\'>" + _loc6_.name + "</font><br/>";
                  myLotto.htmlText += _loc2_;
               }
            }
         }
      }
      
      public function onMWTurnTable(param1:Object, param2:Object) : void
      {
         var _loc3_:* = undefined;
         if(initialized)
         {
            monthWelfareData = param2;
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
            for(_loc3_ in zpItemArr)
            {
               if(ToolKit.isEqual(zpItemArr[_loc3_].iid,param1.iid))
               {
                  endZPRad = zpItemArr[_loc3_].r;
                  break;
               }
            }
            zpcsnum.htmlText = Language.MONTH_WELFARE_PANEL[21].replace("{num}",monthWelfareData.zpnum);
            keynum.label = Language.MONTH_WELFARE_PANEL[23].replace("{num}",monthWelfareData.Keynum);
            if(monthWelfareData.Keynum > 0)
            {
               keynum.enabled = true;
            }
            timer.addEventListener(TimerEvent.TIMER,moveTurnTable);
            timer.start();
         }
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
         if(param1 == 0)
         {
            zpcsnum.visible = true;
            keynum.visible = false;
         }
         if(param1 == 1)
         {
            zpcsnum.visible = false;
            keynum.visible = true;
         }
         if(param1 == 2)
         {
            zpcsnum.visible = false;
            keynum.visible = false;
         }
      }
      
      public function set keynum(param1:Button) : void
      {
         var _loc2_:Object = this._1134658361keynum;
         if(_loc2_ !== param1)
         {
            this._1134658361keynum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keynum",_loc2_,param1));
         }
      }
      
      public function set myLotto(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1491390272myLotto;
         if(_loc2_ !== param1)
         {
            this._1491390272myLotto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLotto",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      public function onbuyMonthWelfareClient(param1:Object, param2:Number) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(initialized)
         {
            _loc3_ = ChildArr[param2].ItemArr;
            _loc4_ = ChildArr[param2].XGnumArr;
            for(_loc5_ in _loc3_)
            {
               if(_loc3_[_loc5_] == param1.iid)
               {
                  _loc4_[_loc5_] = param1.num;
               }
            }
            ChildArr[param2].ItemArr = _loc3_;
            ChildArr[param2].XGnumArr = _loc4_;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MonthWelfarePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MonthWelfarePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MonthWelfarePanelWatcherSetupUtil");
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
      
      private function _MonthWelfarePanel_Rotate1_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         changeAngle = _loc1_;
         BindingManager.executeBindings(this,"changeAngle",changeAngle);
         return _loc1_;
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeView(2);
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
      
      public function ___MonthWelfarePanel_Button2_click(param1:MouseEvent) : void
      {
         getZPMaxNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get zpcsnum() : Label
      {
         return this._92271712zpcsnum;
      }
      
      public function set BagBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1982241108BagBtn;
         if(_loc2_ !== param1)
         {
            this._1982241108BagBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BagBtn",_loc2_,param1));
         }
      }
      
      public function __myLotto_valueCommit(param1:FlexEvent) : void
      {
         myLotto.verticalScrollPosition = myLotto.maxVerticalScrollPosition;
      }
      
      public function onbroadCastMonthWelfareMsg(param1:Array) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(initialized)
         {
            if(param1.length == 0)
            {
               return;
            }
            if(param1.length >= 10)
            {
               monthWelfareArr = param1.splice(param1.length - 10,10);
            }
            else
            {
               _loc2_ = param1.length;
               _loc3_ = monthWelfareArr.length + _loc2_ - 10;
               if(_loc3_ > 0)
               {
                  monthWelfareArr.splice(0,_loc3_);
               }
               _loc4_ = 0;
               while(_loc4_ < param1.length)
               {
                  monthWelfareArr.push(param1[_loc4_]);
                  _loc4_++;
               }
            }
         }
      }
      
      private function getZPMaxNum() : void
      {
         if(monthWelfareData.zpnum < 0)
         {
            return;
         }
         guajiNum.text = monthWelfareData.zpnum;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      public function __BagBtn_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_MONTHWELFARE_BAG);
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
      public function get helpinfo() : Label
      {
         return this._789140625helpinfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      private function showItemShop() : void
      {
         if(initialized)
         {
            itemList.removeAll();
            itemList = addDataToList();
            setSlot();
         }
      }
      
      private function _MonthWelfarePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MonthWelfarePanel_BasicTitleCanvas1.text = param1;
         },"_MonthWelfarePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return uiC;
         },function(param1:Object):void
         {
            changeAngle.target = param1;
         },"changeAngle.target");
         result[4] = binding;
         binding = new Binding(this,function():Number
         {
            return angle - 18;
         },function(param1:Number):void
         {
            changeAngle.angleFrom = param1;
         },"changeAngle.angleFrom");
         result[5] = binding;
         binding = new Binding(this,function():Number
         {
            return angle;
         },function(param1:Number):void
         {
            changeAngle.angleTo = param1;
         },"changeAngle.angleTo");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000573);
         },function(param1:Object):void
         {
            _MonthWelfarePanel_Image1.source = param1;
         },"_MonthWelfarePanel_Image1.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000513);
         },function(param1:Object):void
         {
            uiC0.source = param1;
         },"uiC0.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000512);
         },function(param1:Object):void
         {
            uiC.source = param1;
         },"uiC.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            BagBtn.label = param1;
         },"BagBtn.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MonthWelfarePanel_BasicGlowButton5.label = param1;
         },"_MonthWelfarePanel_BasicGlowButton5.label");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000573);
         },function(param1:Object):void
         {
            _MonthWelfarePanel_Image4.source = param1;
         },"_MonthWelfarePanel_Image4.source");
         result[12] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get turnAll1() : DelayButton
      {
         return this._133638349turnAll1;
      }
      
      [Bindable(event="propertyChange")]
      public function get keynum() : Button
      {
         return this._1134658361keynum;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
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
         _core.remote.call("initMonthWelfarePanelData",new Responder(onInitMonthWelfareData));
      }
      
      [Bindable(event="propertyChange")]
      public function get vb() : VBox
      {
         return this._3756vb;
      }
      
      public function set helpinfo(param1:Label) : void
      {
         var _loc2_:Object = this._789140625helpinfo;
         if(_loc2_ !== param1)
         {
            this._789140625helpinfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpinfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get angle() : Number
      {
         return this._92960979angle;
      }
      
      private function getShowZK(param1:Number) : Number
      {
         if(param1 == 1)
         {
            return monthWelfareData.zk.XY;
         }
         if(param1 == 2)
         {
            return monthWelfareData.zk.JP;
         }
         if(param1 == 3)
         {
            return monthWelfareData.zk.CZ;
         }
         return 0;
      }
      
      public function set guajiNum(param1:TextInput) : void
      {
         var _loc2_:Object = this._1537286028guajiNum;
         if(_loc2_ !== param1)
         {
            this._1537286028guajiNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guajiNum",_loc2_,param1));
         }
      }
      
      private function playMonthWelfareTurnTable() : void
      {
         if(run)
         {
            _core.sysMsg(Language.MONTH_WELFARE_PANEL[19]);
            return;
         }
         if(ToolKit.isSmallOrEqual(monthWelfareData.zpnum,0))
         {
            _core.sysMsg(Language.MONTH_WELFARE_PANEL[20]);
            return;
         }
         _core.remote.call("playMonthWelfareTurnTableOne",null);
      }
      
      private function playMonthWelfareTurnTableAll() : void
      {
         var _loc1_:* = Number(guajiNum.text);
         if(run)
         {
            _core.sysMsg(Language.MONTH_WELFARE_PANEL[19]);
            return;
         }
         if(ToolKit.isSmallOrEqual(monthWelfareData.zpnum,0))
         {
            _core.sysMsg(Language.MONTH_WELFARE_PANEL[20]);
            return;
         }
         if(_loc1_ <= 0 || _loc1_ - Math.floor(_loc1_) != 0)
         {
            _core.sysMsg(Language.MONTH_WELFARE_PANEL[22]);
            return;
         }
         _core.remote.call("playMonthWelfareTurnTableAll",null,_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiC0() : Image
      {
         return this._3588577uiC0;
      }
   }
}

