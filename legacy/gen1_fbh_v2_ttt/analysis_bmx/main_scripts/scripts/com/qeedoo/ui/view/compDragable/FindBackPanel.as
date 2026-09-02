package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Alert;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FindBackPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2015112679refreshBanner:ComboBox;
      
      private var _3236049img4:Image;
      
      private var _164873553radiogroup5:RadioButtonGroup;
      
      private var _1110417470label6:Label;
      
      private var _63203276label22:Label;
      
      private var _3236052img7:Image;
      
      private var _63203121label72:Label;
      
      private var _2079535684Canvas4:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1110417475label1:Label;
      
      private var _63203245label32:Label;
      
      private var _2085022877btnFind2:DelayButton;
      
      private var xuanshangExp:Number = 0;
      
      private var _2085022879btnFind4:DelayButton;
      
      private var xuanshangColor:Number = 0;
      
      private var _2085022880btnFind5:DelayButton;
      
      private var findBackExpType2:int = 1;
      
      private var findBackExpType3:int = 1;
      
      private var findBackExpType4:int = 1;
      
      private var _1110417469label7:Label;
      
      private var findBackExpType6:int = 1;
      
      private var findBackExpType1:int = 1;
      
      private var _3236048img3:Image;
      
      private var _2085022882btnFind7:DelayButton;
      
      private var _2079535682Canvas6:Canvas;
      
      private var findBackExpType7:int = 1;
      
      private var _898049649vb_quest:VBox;
      
      private var _1110417472label4:Label;
      
      private var _63203214label42:Label;
      
      private var _63203184label51:Label;
      
      private var _3236051img6:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var _164873552radiogroup4:RadioButtonGroup;
      
      private var findBackExpType5:int = 1;
      
      private var xuanshangRefreshNum:Number = 0;
      
      private var _164873555radiogroup7:RadioButtonGroup;
      
      private var _63203153label61:Label;
      
      private var _2079535687Canvas1:Canvas;
      
      private var _63203307label12:Label;
      
      private var _3236047img2:Image;
      
      private var _63203277label21:Label;
      
      private var _1110417474label2:Label;
      
      private var _63203122label71:Label;
      
      private var _3236050img5:Image;
      
      private var _2079535685Canvas3:Canvas;
      
      private var _63203246label31:Label;
      
      public var _FindBackPanel_Label13:Label;
      
      public var _FindBackPanel_Label17:Label;
      
      private var _164873551radiogroup3:RadioButtonGroup;
      
      private var basicCostArr:Array = [10,5,10,30,30,5,5];
      
      private var _1110417471label5:Label;
      
      public var _FindBackPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _FindBackPanel_Label21:Label;
      
      private var findBackNumArr:Array = new Array();
      
      public var _FindBackPanel_Label25:Label;
      
      private var goldRate:Number = 1;
      
      private var _2085022878btnFind3:DelayButton;
      
      private var _164873554radiogroup6:RadioButtonGroup;
      
      private var _2079535683Canvas5:Canvas;
      
      private var _2085022876btnFind1:DelayButton;
      
      private var _63203215label41:Label;
      
      private var _3236046img1:Image;
      
      private var _2085022881btnFind6:DelayButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _2079535681Canvas7:Canvas;
      
      private var _164873549radiogroup1:RadioButtonGroup;
      
      private var moneyRate:Number = 1;
      
      private var basicMoneyCostArr:Array = [200000,100000,400000,300000,300000,0,100000];
      
      private var _63203183label52:Label;
      
      private var xuanshangNum:Number = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _63203308label11:Label;
      
      private var _1110417473label3:Label;
      
      public var _FindBackPanel_Label1:Label;
      
      public var _FindBackPanel_Label5:Label;
      
      public var _FindBackPanel_Label9:Label;
      
      private var _164873550radiogroup2:RadioButtonGroup;
      
      private var awardNum:Array = [1,2,8,12,20,2];
      
      mx_internal var _bindings:Array = [];
      
      private var bannerIds:Array = [1330,1331,1332,1333,1335,731];
      
      private var _63203152label62:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":600,
               "height":470,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FindBackPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.left = "10";
                     this.bottom = "20";
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "horizontalScrollPolicy":"off",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vb_quest",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 1;
                                       this.right = "5";
                                       this.left = "5";
                                       this.top = "0";
                                       this.bottom = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "horizontalScrollPolicy":"off",
                                          "width":560,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.top = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup1",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup1",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label12",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind1",
                                                      "events":{"click":"__btnFind1_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":470,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas2",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup2",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup2",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label21",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label22",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind2",
                                                      "events":{"click":"__btnFind2_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":470,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas3",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup3",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup3",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label31",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label32",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind3",
                                                      "events":{"click":"__btnFind3_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":470,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas4",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label13",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup4",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup4",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label41",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label42",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind4",
                                                      "events":{"click":"__btnFind4_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":470,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas5",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label17",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup5",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup5",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label51",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label52",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind5",
                                                      "events":{"click":"__btnFind5_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":470,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas6",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label21",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup6",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup6",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label61",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label62",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind6",
                                                      "events":{"click":"__btnFind6_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":470,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"Canvas7",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":545,
                                                   "horizontalScrollPolicy":"off",
                                                   "height":120,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_FindBackPanel_Label25",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                         this.top = "3";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"img7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.verticalCenter = "6";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":60,
                                                            "height":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":48,
                                                            "groupName":"radiogroup7",
                                                            "value":1,
                                                            "selected":true,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":110,
                                                            "y":78,
                                                            "groupName":"radiogroup7",
                                                            "value":2,
                                                            "width":17
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label71",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":48
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label72",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":78
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ComboBox,
                                                      "id":"refreshBanner",
                                                      "events":{"change":"__refreshBanner_change"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":350,
                                                            "y":48,
                                                            "width":150,
                                                            "rowCount":6
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"label7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120,
                                                            "y":18,
                                                            "width":330
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"btnFind7",
                                                      "events":{"click":"__btnFind7_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":450,
                                                            "y":18,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "height":20
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
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _2079535686Canvas2:Canvas;
      
      public function FindBackPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 470;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         _FindBackPanel_RadioButtonGroup1_i();
         _FindBackPanel_RadioButtonGroup2_i();
         _FindBackPanel_RadioButtonGroup3_i();
         _FindBackPanel_RadioButtonGroup4_i();
         _FindBackPanel_RadioButtonGroup5_i();
         _FindBackPanel_RadioButtonGroup6_i();
         _FindBackPanel_RadioButtonGroup7_i();
         this.addEventListener("creationComplete",___FindBackPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FindBackPanel._watcherSetupUtil = param1;
      }
      
      public function __radiogroup7_change(param1:Event) : void
      {
         selectExpType(7);
      }
      
      public function __btnFind1_click(param1:MouseEvent) : void
      {
         findBack(1);
      }
      
      private function _FindBackPanel_RadioButtonGroup6_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup6 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup6_change);
         _loc1_.initialized(this,"radiogroup6");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get label12() : Label
      {
         return this._63203307label12;
      }
      
      private function _FindBackPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FINDBACK_PANEL_U[0];
         _loc1_ = Language.FINDBACK_PANEL_U[1];
         _loc1_ = ResManager.getIconUrl(4130220000001);
         _loc1_ = Language.FINDBACK_PANEL_U[7];
         _loc1_ = Language.FINDBACK_PANEL_U[8];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
         _loc1_ = Language.FINDBACK_PANEL_U[19];
         _loc1_ = Language.FINDBACK_PANEL_U[2];
         _loc1_ = ResManager.getIconUrl(4130220000004);
         _loc1_ = Language.FINDBACK_PANEL_U[9];
         _loc1_ = Language.FINDBACK_PANEL_U[10];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
         _loc1_ = Language.FINDBACK_PANEL_U[19];
         _loc1_ = Language.FINDBACK_PANEL_U[3];
         _loc1_ = ResManager.getIconUrl(4130220000012);
         _loc1_ = Language.FINDBACK_PANEL_U[11];
         _loc1_ = Language.FINDBACK_PANEL_U[12];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
         _loc1_ = Language.FINDBACK_PANEL_U[19];
         _loc1_ = Language.FINDBACK_PANEL_U[4];
         _loc1_ = ResManager.getIconUrl(4130220000002);
         _loc1_ = Language.FINDBACK_PANEL_U[13];
         _loc1_ = Language.FINDBACK_PANEL_U[14];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
         _loc1_ = Language.FINDBACK_PANEL_U[19];
         _loc1_ = Language.FINDBACK_PANEL_U[5];
         _loc1_ = ResManager.getIconUrl(4130220000003);
         _loc1_ = Language.FINDBACK_PANEL_U[15];
         _loc1_ = Language.FINDBACK_PANEL_U[16];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
         _loc1_ = Language.FINDBACK_PANEL_U[19];
         _loc1_ = Language.FINDBACK_PANEL_U[6];
         _loc1_ = ResManager.getIconUrl(4130220000006);
         _loc1_ = Language.FINDBACK_PANEL_U[17];
         _loc1_ = Language.FINDBACK_PANEL_U[18];
         _loc1_ = Language.FINDBACK_PANEL_U[21];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
         _loc1_ = Language.FINDBACK_PANEL_U[6];
         _loc1_ = ResManager.getIconUrl(4130220000006);
         _loc1_ = Language.FINDBACK_PANEL_U[17];
         _loc1_ = Language.FINDBACK_PANEL_U[18];
         _loc1_ = Language.FINDBACK_PANEL_U[22];
         _loc1_ = Language.FINDBACK_PANEL_U[20];
      }
      
      [Bindable(event="propertyChange")]
      public function get label11() : Label
      {
         return this._63203308label11;
      }
      
      public function set label11(param1:Label) : void
      {
         var _loc2_:Object = this._63203308label11;
         if(_loc2_ !== param1)
         {
            this._63203308label11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label11",_loc2_,param1));
         }
      }
      
      public function set label12(param1:Label) : void
      {
         var _loc2_:Object = this._63203307label12;
         if(_loc2_ !== param1)
         {
            this._63203307label12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label22() : Label
      {
         return this._63203276label22;
      }
      
      [Bindable(event="propertyChange")]
      public function get label21() : Label
      {
         return this._63203277label21;
      }
      
      public function resetVB() : void
      {
         vb_quest.removeAllChildren();
      }
      
      public function __radiogroup5_change(param1:Event) : void
      {
         selectExpType(5);
      }
      
      public function __btnFind6_click(param1:MouseEvent) : void
      {
         findBack(6);
      }
      
      public function findBack(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         switch(param1)
         {
            case 1:
               _loc2_ = Math.ceil(findBackNumArr[0] * basicMoneyCostArr[0]);
               _loc3_ = Math.ceil(findBackNumArr[0] * basicCostArr[0]);
               if(_core.player.level < 70)
               {
                  return;
               }
               if(findBackExpType1 == 1)
               {
                  if(!_core.player.enoughMoney("money",_loc2_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[2]);
                     return;
                  }
               }
               else if(findBackExpType1 == 2)
               {
                  if(!_core.player.enoughMoney("gold",_loc3_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[1]);
                     return;
                  }
               }
               _core.remote.call("findBackXiuXing",new Responder(onFind),findBackExpType1);
               break;
            case 2:
               _loc2_ = Math.ceil(findBackNumArr[1] * basicMoneyCostArr[1]);
               _loc3_ = Math.ceil(findBackNumArr[1] * basicCostArr[1]);
               if(findBackExpType2 == 1)
               {
                  if(!_core.player.enoughMoney("money",_loc2_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[2]);
                     return;
                  }
               }
               else if(findBackExpType2 == 2)
               {
                  if(!_core.player.enoughMoney("gold",_loc3_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[1]);
                     return;
                  }
               }
               _core.remote.call("findBackXueYuan",new Responder(onFind),findBackExpType2);
               break;
            case 3:
               if(!_core.battlePet)
               {
                  _core.sysMidNote(Language.FINDBACK_PANEL_U[36]);
                  return;
               }
               if(Number(_core.battlePet.level) >= Number(Number(_core.player.level) + 5))
               {
                  _core.sysMidNote(Language.FINDBACK_PANEL_U[39]);
                  return;
               }
               _loc2_ = Math.ceil(findBackNumArr[2] * basicMoneyCostArr[2]);
               _loc3_ = Math.ceil(findBackNumArr[2] * basicCostArr[2]);
               if(findBackExpType3 == 1)
               {
                  if(!_core.player.enoughMoney("money",_loc2_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[2]);
                     return;
                  }
               }
               else if(findBackExpType3 == 2)
               {
                  if(!_core.player.enoughMoney("gold",_loc3_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[1]);
                     return;
                  }
               }
               _core.remote.call("findBackChongWu",new Responder(onFind),findBackExpType3);
               break;
            case 4:
               _loc2_ = Math.ceil(findBackNumArr[3] * basicMoneyCostArr[3]);
               _loc3_ = Math.ceil(findBackNumArr[3] * basicCostArr[3]);
               if(findBackExpType4 == 1)
               {
                  if(!_core.player.enoughMoney("money",_loc2_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[2]);
                     return;
                  }
               }
               else if(findBackExpType4 == 2)
               {
                  if(!_core.player.enoughMoney("gold",_loc3_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[1]);
                     return;
                  }
               }
               _core.remote.call("findBackPanJun",new Responder(onFind),findBackExpType4);
               break;
            case 5:
               _loc2_ = Math.ceil(findBackNumArr[4] * basicMoneyCostArr[4]);
               _loc3_ = Math.ceil(findBackNumArr[4] * basicCostArr[4]);
               if(findBackExpType5 == 1)
               {
                  if(!_core.player.enoughMoney("money",_loc2_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[2]);
                     return;
                  }
               }
               else if(findBackExpType5 == 2)
               {
                  if(!_core.player.enoughMoney("gold",_loc3_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[1]);
                     return;
                  }
               }
               _core.remote.call("findBackFeiMo",new Responder(onFind),findBackExpType5);
               break;
            case 6:
               _core.remote.call("findBackXuanShangFree",new Responder(onFind),findBackExpType6);
               break;
            case 7:
               _loc4_ = Number(refreshBanner.selectedItem.color);
               if(_loc4_ == -1)
               {
                  _core.sysMsg(Language.FINDBACK_PANEL_U[29]);
                  return;
               }
               _loc5_ = int(_core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,bannerIds[_loc4_]).num);
               if(_loc5_ <= 0)
               {
                  _core.sysMsg(Language.FINDBACK_PANEL_U[35]);
                  return;
               }
               _loc2_ = Math.ceil(basicMoneyCostArr[6]);
               _loc3_ = Math.ceil(basicCostArr[6]);
               if(findBackExpType7 == 1)
               {
                  if(!_core.player.enoughMoney("money",_loc2_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[2]);
                     return;
                  }
               }
               else if(findBackExpType7 == 2)
               {
                  if(!_core.player.enoughMoney("gold",_loc3_))
                  {
                     _core.sysMidNote(Language.GUILDCONTRIBPANEL_U[1]);
                     return;
                  }
               }
               _core.remote.call("findBackXuanShangByBanner",new Responder(onFind),findBackExpType7,_loc4_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label31() : Label
      {
         return this._63203246label31;
      }
      
      private function _FindBackPanel_RadioButtonGroup5_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup5 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup5_change);
         _loc1_.initialized(this,"radiogroup5");
         return _loc1_;
      }
      
      public function selectExpType(param1:int) : void
      {
         if(this.visible)
         {
            switch(param1)
            {
               case 1:
                  findBackExpType1 = uint(radiogroup1.selectedValue);
               case 2:
                  findBackExpType2 = uint(radiogroup2.selectedValue);
               case 3:
                  findBackExpType3 = uint(radiogroup3.selectedValue);
               case 4:
                  findBackExpType4 = uint(radiogroup4.selectedValue);
               case 5:
                  findBackExpType5 = uint(radiogroup5.selectedValue);
               case 6:
                  findBackExpType6 = uint(radiogroup6.selectedValue);
               case 7:
                  findBackExpType7 = uint(radiogroup7.selectedValue);
            }
         }
      }
      
      public function onFind(param1:Object) : *
      {
         var _loc7_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = int(param1.type);
         var _loc3_:int = int(param1.num);
         var _loc4_:String = Language.FINDBACK_PANEL_U[19].toString();
         var _loc5_:int = int(param1.exp);
         if(_loc2_ != 6)
         {
            if(this["Canvas" + _loc2_].parent)
            {
               vb_quest.removeChild(this["Canvas" + _loc2_]);
            }
         }
         else
         {
            if(this["Canvas" + _loc2_].parent)
            {
               vb_quest.removeChild(this["Canvas" + _loc2_]);
            }
            if(this["Canvas7"].parent)
            {
               vb_quest.removeChild(this["Canvas7"]);
            }
            xuanshangRefreshNum = param1.refresh;
            xuanshangColor = param1.color;
            xuanshangNum = _loc3_;
            xuanshangExp = _loc5_;
            if(_loc3_ < 10)
            {
               vb_quest.addChild(this["Canvas6"]);
               findBackNumArr[5] = 10 - xuanshangNum;
            }
            else if(_loc3_ == 10 && xuanshangRefreshNum < 4)
            {
               vb_quest.addChild(this["Canvas7"]);
               findBackNumArr[6] = 10;
               _loc7_ = "";
               if(xuanshangColor == 5)
               {
                  _loc7_ = Language.FINDBACK_PANEL_U[41];
               }
               else
               {
                  _loc7_ = Language.FINDBACK_PANEL_U[30 + xuanshangColor];
               }
               this["label" + 7].htmlText = Language.FINDBACK_PANEL_U[22].toString().replace("{num}",4 - xuanshangRefreshNum).replace("{exp}",_loc5_ * awardNum[xuanshangColor]).replace("{color}",_loc7_);
            }
         }
         var _loc6_:int = 0;
         while(_loc6_ < 7)
         {
            if(this["Canvas" + (_loc6_ + 1)].parent)
            {
               if(_loc6_ < 5)
               {
                  this["label" + (_loc6_ + 1) + "1"].htmlText = Language.FINDBACK_PANEL_U[7 + _loc6_ * 2].toString().replace("{num}",Math.ceil(findBackNumArr[_loc6_] * basicMoneyCostArr[_loc6_]));
                  this["label" + (_loc6_ + 1) + "2"].htmlText = Language.FINDBACK_PANEL_U[8 + _loc6_ * 2].toString().replace("{num}",Math.ceil(findBackNumArr[_loc6_] * basicCostArr[_loc6_]));
               }
               else
               {
                  this["label" + (_loc6_ + 1) + "1"].htmlText = Language.FINDBACK_PANEL_U[17].toString().replace("{num}",Math.ceil(basicMoneyCostArr[_loc6_]));
                  this["label" + (_loc6_ + 1) + "2"].htmlText = Language.FINDBACK_PANEL_U[18].toString().replace("{num}",Math.ceil(basicCostArr[_loc6_]));
               }
            }
            _loc6_++;
         }
         resetPetMoney();
      }
      
      public function set label21(param1:Label) : void
      {
         var _loc2_:Object = this._63203277label21;
         if(_loc2_ !== param1)
         {
            this._63203277label21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label32() : Label
      {
         return this._63203245label32;
      }
      
      public function set label22(param1:Label) : void
      {
         var _loc2_:Object = this._63203276label22;
         if(_loc2_ !== param1)
         {
            this._63203276label22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label22",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label41() : Label
      {
         return this._63203215label41;
      }
      
      [Bindable(event="propertyChange")]
      public function get label42() : Label
      {
         return this._63203214label42;
      }
      
      public function __btnFind3_click(param1:MouseEvent) : void
      {
         findBack(3);
      }
      
      public function __radiogroup3_change(param1:Event) : void
      {
         selectExpType(3);
      }
      
      public function setFindBackInfo(param1:Object) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:String = null;
         if(!param1 || !param1.num || !param1.exp)
         {
            return;
         }
         var _loc2_:Object = param1.num;
         var _loc3_:Object = param1.exp;
         var _loc4_:Array = new Array();
         var _loc5_:Array = new Array();
         var _loc6_:Boolean = true;
         xuanshangExp = param1["exp"]["xuanshang"] ? Number(param1["exp"]["xuanshang"]) : 0;
         _loc7_ = 0;
         while(_loc7_ < 5)
         {
            _loc8_ = 0;
            if(_loc7_ == 0 && _core.player.level < 70)
            {
               _loc8_ = GamePredef.FINDBACK_TYPE_XIUXING_NUM;
               _loc5_[_loc7_] = 0;
            }
            else
            {
               _loc8_ = Number(_loc2_[GamePredef.FINDBACK_TYPES[_loc7_]]);
               _loc5_[_loc7_] = Number(_loc3_[GamePredef.FINDBACK_TYPES[_loc7_]]);
            }
            switch(_loc7_)
            {
               case 0:
                  _loc4_[0] = GamePredef.FINDBACK_TYPE_XIUXING_NUM - _loc8_;
                  break;
               case 1:
                  _loc4_[1] = GamePredef.FINDBACK_TYPE_XUEYUAN_NUM - _loc8_;
                  break;
               case 2:
                  _loc4_[2] = GamePredef.FINDBACK_TYPE_CHONGWU_NUM - _loc8_;
                  break;
               case 3:
                  _loc4_[3] = GamePredef.FINDBACK_TYPE_PANJUN_NUM - _loc8_;
                  break;
               case 4:
                  _loc4_[4] = GamePredef.FINDBACK_TYPE_FEIMO_NUM - _loc8_;
            }
            findBackNumArr[_loc7_] = _loc4_[_loc7_];
            if(_loc4_[_loc7_] > 0)
            {
               _loc6_ = false;
            }
            _loc7_++;
         }
         _loc5_[5] = Number(_loc3_[GamePredef.FINDBACK_TYPES[5]]);
         xuanshangNum = Number(_loc2_["xuanshang_num"]);
         xuanshangRefreshNum = Number(_loc2_["xuanshang_refresh"]);
         xuanshangColor = Number(_loc2_["xuanshang_color"]);
         if(!(xuanshangNum == 10 && xuanshangRefreshNum == 4))
         {
            _loc6_ = false;
         }
         if(_loc6_)
         {
            Alert.show(Language.FINDBACK_PANEL_U[38]);
            this.visible = false;
            return;
         }
         resetVB();
         _loc7_ = 0;
         while(_loc7_ < 5)
         {
            if(_loc4_[_loc7_] > 0)
            {
               vb_quest.addChild(this["Canvas" + (_loc7_ + 1)]);
               this["btnFind" + (_loc7_ + 1)].enabled = true;
               if(_loc7_ == 0 && _core.player.level < 70)
               {
                  if(this["Canvas" + (_loc7_ + 1)].parent)
                  {
                     vb_quest.removeChild(this["Canvas" + (_loc7_ + 1)]);
                  }
               }
            }
            else if(this["Canvas" + (_loc7_ + 1)].parent)
            {
               vb_quest.removeChild(this["Canvas" + (_loc7_ + 1)]);
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < 5)
         {
            _loc10_ = Language.FINDBACK_PANEL_U[19].toString();
            this["label" + (_loc7_ + 1)].htmlText = _loc10_.replace("{num}",_loc4_[_loc7_]).replace("{exp}",Math.floor(_loc5_[_loc7_]));
            _loc7_++;
         }
         _loc9_ = "";
         if(xuanshangColor == 5)
         {
            _loc9_ = Language.FINDBACK_PANEL_U[41];
         }
         else
         {
            _loc9_ = Language.FINDBACK_PANEL_U[30 + xuanshangColor];
         }
         if(xuanshangNum < 10)
         {
            vb_quest.addChild(this["Canvas6"]);
            this["label6"].htmlText = Language.FINDBACK_PANEL_U[21].toString().replace("{num}",10 - xuanshangNum).replace("{exp}",Math.floor(_loc5_[5] * awardNum[xuanshangColor])).replace("{color}",_loc9_);
            findBackNumArr[5] = 10 - xuanshangNum;
         }
         else if(xuanshangNum == 10)
         {
            if(xuanshangRefreshNum < 4)
            {
               vb_quest.addChild(this["Canvas7"]);
               this["label7"].htmlText = Language.FINDBACK_PANEL_U[22].toString().replace("{num}",4 - xuanshangRefreshNum).replace("{exp}",Math.floor(_loc5_[5] * awardNum[xuanshangColor])).replace("{color}",_loc9_);
               selectBanner(false);
               refreshBanner.selectedIndex = xuanshangColor + 1;
               findBackNumArr[6] = 10;
            }
         }
         _loc7_ = 0;
         while(_loc7_ < 7)
         {
            if(this["Canvas" + (_loc7_ + 1)].parent)
            {
               if(_loc7_ < 5)
               {
                  this["label" + (_loc7_ + 1) + "1"].htmlText = Language.FINDBACK_PANEL_U[7 + _loc7_ * 2].toString().replace("{num}",Math.ceil(findBackNumArr[_loc7_] * basicMoneyCostArr[_loc7_]));
                  this["label" + (_loc7_ + 1) + "2"].htmlText = Language.FINDBACK_PANEL_U[8 + _loc7_ * 2].toString().replace("{num}",Math.ceil(findBackNumArr[_loc7_] * basicCostArr[_loc7_]));
               }
               else
               {
                  this["label" + (_loc7_ + 1) + "1"].htmlText = Language.FINDBACK_PANEL_U[17].toString().replace("{num}",Math.ceil(basicMoneyCostArr[_loc7_]));
                  this["label" + (_loc7_ + 1) + "2"].htmlText = Language.FINDBACK_PANEL_U[18].toString().replace("{num}",Math.ceil(basicCostArr[_loc7_]));
               }
            }
            _loc7_++;
         }
         resetPetMoney();
      }
      
      [Bindable(event="propertyChange")]
      public function get label52() : Label
      {
         return this._63203183label52;
      }
      
      private function _FindBackPanel_RadioButtonGroup4_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup4 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup4_change);
         _loc1_.initialized(this,"radiogroup4");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get label51() : Label
      {
         return this._63203184label51;
      }
      
      public function set radiogroup1(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873549radiogroup1;
         if(_loc2_ !== param1)
         {
            this._164873549radiogroup1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind2() : DelayButton
      {
         return this._2085022877btnFind2;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind4() : DelayButton
      {
         return this._2085022879btnFind4;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind6() : DelayButton
      {
         return this._2085022881btnFind6;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind1() : DelayButton
      {
         return this._2085022876btnFind1;
      }
      
      public function set label31(param1:Label) : void
      {
         var _loc2_:Object = this._63203246label31;
         if(_loc2_ !== param1)
         {
            this._63203246label31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label31",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind3() : DelayButton
      {
         return this._2085022878btnFind3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind5() : DelayButton
      {
         return this._2085022880btnFind5;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFind7() : DelayButton
      {
         return this._2085022882btnFind7;
      }
      
      [Bindable(event="propertyChange")]
      public function get label61() : Label
      {
         return this._63203153label61;
      }
      
      [Bindable(event="propertyChange")]
      public function get label62() : Label
      {
         return this._63203152label62;
      }
      
      public function set radiogroup5(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873553radiogroup5;
         if(_loc2_ !== param1)
         {
            this._164873553radiogroup5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup5",_loc2_,param1));
         }
      }
      
      public function set radiogroup6(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873554radiogroup6;
         if(_loc2_ !== param1)
         {
            this._164873554radiogroup6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup6",_loc2_,param1));
         }
      }
      
      public function set radiogroup2(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873550radiogroup2;
         if(_loc2_ !== param1)
         {
            this._164873550radiogroup2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup2",_loc2_,param1));
         }
      }
      
      public function set label32(param1:Label) : void
      {
         var _loc2_:Object = this._63203245label32;
         if(_loc2_ !== param1)
         {
            this._63203245label32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label32",_loc2_,param1));
         }
      }
      
      public function set radiogroup4(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873552radiogroup4;
         if(_loc2_ !== param1)
         {
            this._164873552radiogroup4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup4",_loc2_,param1));
         }
      }
      
      public function __radiogroup1_change(param1:Event) : void
      {
         selectExpType(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get img1() : Image
      {
         return this._3236046img1;
      }
      
      [Bindable(event="propertyChange")]
      public function get img2() : Image
      {
         return this._3236047img2;
      }
      
      [Bindable(event="propertyChange")]
      public function get img5() : Image
      {
         return this._3236050img5;
      }
      
      [Bindable(event="propertyChange")]
      public function get img6() : Image
      {
         return this._3236051img6;
      }
      
      [Bindable(event="propertyChange")]
      public function get img7() : Image
      {
         return this._3236052img7;
      }
      
      [Bindable(event="propertyChange")]
      public function get label71() : Label
      {
         return this._63203122label71;
      }
      
      [Bindable(event="propertyChange")]
      public function get label72() : Label
      {
         return this._63203121label72;
      }
      
      [Bindable(event="propertyChange")]
      public function get img3() : Image
      {
         return this._3236048img3;
      }
      
      private function _FindBackPanel_RadioButtonGroup3_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup3 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup3_change);
         _loc1_.initialized(this,"radiogroup3");
         return _loc1_;
      }
      
      public function set radiogroup7(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873555radiogroup7;
         if(_loc2_ !== param1)
         {
            this._164873555radiogroup7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img4() : Image
      {
         return this._3236049img4;
      }
      
      public function set label41(param1:Label) : void
      {
         var _loc2_:Object = this._63203215label41;
         if(_loc2_ !== param1)
         {
            this._63203215label41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label41",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1 && _core.player.level < 50)
         {
            Alert.show(Language.FINDBACK_PANEL_U[37]);
            return;
         }
         super.visible = param1;
         if(param1)
         {
            _core.remote.call("getFindBackData",new Responder(setFindBackInfo));
         }
      }
      
      public function __refreshBanner_change(param1:ListEvent) : void
      {
         selectBanner(true);
      }
      
      public function set radiogroup3(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._164873551radiogroup3;
         if(_loc2_ !== param1)
         {
            this._164873551radiogroup3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup3",_loc2_,param1));
         }
      }
      
      public function set label42(param1:Label) : void
      {
         var _loc2_:Object = this._63203214label42;
         if(_loc2_ !== param1)
         {
            this._63203214label42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label42",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         if(_core.player.level < 50)
         {
            Alert.show(Language.FINDBACK_PANEL_U[37]);
            return;
         }
         this.visible = true;
      }
      
      public function __btnFind5_click(param1:MouseEvent) : void
      {
         findBack(5);
      }
      
      private function _FindBackPanel_RadioButtonGroup2_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup2 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup2_change);
         _loc1_.initialized(this,"radiogroup2");
         return _loc1_;
      }
      
      public function __radiogroup6_change(param1:Event) : void
      {
         selectExpType(6);
      }
      
      public function set vb_quest(param1:VBox) : void
      {
         var _loc2_:Object = this._898049649vb_quest;
         if(_loc2_ !== param1)
         {
            this._898049649vb_quest = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vb_quest",_loc2_,param1));
         }
      }
      
      public function set label52(param1:Label) : void
      {
         var _loc2_:Object = this._63203183label52;
         if(_loc2_ !== param1)
         {
            this._63203183label52 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label52",_loc2_,param1));
         }
      }
      
      public function set label51(param1:Label) : void
      {
         var _loc2_:Object = this._63203184label51;
         if(_loc2_ !== param1)
         {
            this._63203184label51 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label51",_loc2_,param1));
         }
      }
      
      public function set btnFind2(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022877btnFind2;
         if(_loc2_ !== param1)
         {
            this._2085022877btnFind2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind2",_loc2_,param1));
         }
      }
      
      public function set btnFind4(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022879btnFind4;
         if(_loc2_ !== param1)
         {
            this._2085022879btnFind4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind4",_loc2_,param1));
         }
      }
      
      public function set btnFind1(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022876btnFind1;
         if(_loc2_ !== param1)
         {
            this._2085022876btnFind1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind1",_loc2_,param1));
         }
      }
      
      public function set btnFind5(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022880btnFind5;
         if(_loc2_ !== param1)
         {
            this._2085022880btnFind5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind5",_loc2_,param1));
         }
      }
      
      private function selectBanner(param1:Boolean) : void
      {
         if(refreshBanner.selectedIndex == 0)
         {
            return;
         }
         var _loc2_:int = int(_core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,bannerIds[refreshBanner.selectedIndex - 1]).num);
         if(_loc2_ == 0)
         {
            if(param1)
            {
               Alert.show(Language.FINDBACK_PANEL_U[35]);
            }
            btnFind7.enabled = false;
         }
         else
         {
            btnFind7.enabled = true;
         }
         var _loc3_:String = "";
         if(refreshBanner.selectedIndex == 6)
         {
            _loc3_ = Language.FINDBACK_PANEL_U[41];
         }
         else
         {
            _loc3_ = Language.FINDBACK_PANEL_U[30 + refreshBanner.selectedIndex - 1];
         }
         this["label" + 7].htmlText = Language.FINDBACK_PANEL_U[22].toString().replace("{num}",4 - xuanshangRefreshNum).replace("{exp}",xuanshangExp * awardNum[refreshBanner.selectedIndex - 1]).replace("{color}",_loc3_);
         this["label71"].htmlText = Language.FINDBACK_PANEL_U[17].toString().replace("{num}",Math.ceil(basicMoneyCostArr[6]));
         this["label72"].htmlText = Language.FINDBACK_PANEL_U[18].toString().replace("{num}",Math.ceil(basicCostArr[6]));
      }
      
      public function set btnFind6(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022881btnFind6;
         if(_loc2_ !== param1)
         {
            this._2085022881btnFind6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind6",_loc2_,param1));
         }
      }
      
      public function set btnFind3(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022878btnFind3;
         if(_loc2_ !== param1)
         {
            this._2085022878btnFind3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind3",_loc2_,param1));
         }
      }
      
      public function ___FindBackPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup2() : RadioButtonGroup
      {
         return this._164873550radiogroup2;
      }
      
      private function _FindBackPanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup1 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup1_change);
         _loc1_.initialized(this,"radiogroup1");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup5() : RadioButtonGroup
      {
         return this._164873553radiogroup5;
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup6() : RadioButtonGroup
      {
         return this._164873554radiogroup6;
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup1() : RadioButtonGroup
      {
         return this._164873549radiogroup1;
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup3() : RadioButtonGroup
      {
         return this._164873551radiogroup3;
      }
      
      public function resetPetMoney() : *
      {
         if(Canvas3.parent)
         {
            this["label31"].htmlText = Language.FINDBACK_PANEL_U[11].toString().replace("{num}",Math.ceil(findBackNumArr[2] * basicMoneyCostArr[2]));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup7() : RadioButtonGroup
      {
         return this._164873555radiogroup7;
      }
      
      private function _FindBackPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_BasicTitleCanvas1.text = param1;
         },"_FindBackPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label1.htmlText = param1;
         },"_FindBackPanel_Label1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000001);
         },function(param1:Object):void
         {
            img1.source = param1;
         },"img1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label11.htmlText = param1;
         },"label11.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label12.htmlText = param1;
         },"label12.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind1.label = param1;
         },"btnFind1.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label1.htmlText = param1;
         },"label1.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label5.htmlText = param1;
         },"_FindBackPanel_Label5.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000004);
         },function(param1:Object):void
         {
            img2.source = param1;
         },"img2.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label21.htmlText = param1;
         },"label21.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label22.htmlText = param1;
         },"label22.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind2.label = param1;
         },"btnFind2.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label2.htmlText = param1;
         },"label2.htmlText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label9.htmlText = param1;
         },"_FindBackPanel_Label9.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000012);
         },function(param1:Object):void
         {
            img3.source = param1;
         },"img3.source");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label31.htmlText = param1;
         },"label31.htmlText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label32.htmlText = param1;
         },"label32.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind3.label = param1;
         },"btnFind3.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label3.htmlText = param1;
         },"label3.htmlText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label13.htmlText = param1;
         },"_FindBackPanel_Label13.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000002);
         },function(param1:Object):void
         {
            img4.source = param1;
         },"img4.source");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label41.htmlText = param1;
         },"label41.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label42.htmlText = param1;
         },"label42.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind4.label = param1;
         },"btnFind4.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label4.htmlText = param1;
         },"label4.htmlText");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label17.htmlText = param1;
         },"_FindBackPanel_Label17.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000003);
         },function(param1:Object):void
         {
            img5.source = param1;
         },"img5.source");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label51.htmlText = param1;
         },"label51.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label52.htmlText = param1;
         },"label52.htmlText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind5.label = param1;
         },"btnFind5.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label5.htmlText = param1;
         },"label5.htmlText");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label21.htmlText = param1;
         },"_FindBackPanel_Label21.htmlText");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000006);
         },function(param1:Object):void
         {
            img6.source = param1;
         },"img6.source");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label61.htmlText = param1;
         },"label61.htmlText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label62.htmlText = param1;
         },"label62.htmlText");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label6.htmlText = param1;
         },"label6.htmlText");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind6.label = param1;
         },"btnFind6.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FindBackPanel_Label25.htmlText = param1;
         },"_FindBackPanel_Label25.htmlText");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000006);
         },function(param1:Object):void
         {
            img7.source = param1;
         },"img7.source");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label71.htmlText = param1;
         },"label71.htmlText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label72.htmlText = param1;
         },"label72.htmlText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label7.htmlText = param1;
         },"label7.htmlText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FINDBACK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnFind7.label = param1;
         },"btnFind7.label");
         result[42] = binding;
         return result;
      }
      
      public function __btnFind2_click(param1:MouseEvent) : void
      {
         findBack(2);
      }
      
      public function __radiogroup4_change(param1:Event) : void
      {
         selectExpType(4);
      }
      
      public function set label61(param1:Label) : void
      {
         var _loc2_:Object = this._63203153label61;
         if(_loc2_ !== param1)
         {
            this._63203153label61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label61",_loc2_,param1));
         }
      }
      
      public function set btnFind7(param1:DelayButton) : void
      {
         var _loc2_:Object = this._2085022882btnFind7;
         if(_loc2_ !== param1)
         {
            this._2085022882btnFind7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFind7",_loc2_,param1));
         }
      }
      
      public function set label62(param1:Label) : void
      {
         var _loc2_:Object = this._63203152label62;
         if(_loc2_ !== param1)
         {
            this._63203152label62 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label62",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup4() : RadioButtonGroup
      {
         return this._164873552radiogroup4;
      }
      
      public function set Canvas1(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535687Canvas1;
         if(_loc2_ !== param1)
         {
            this._2079535687Canvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas1",_loc2_,param1));
         }
      }
      
      public function set Canvas3(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535685Canvas3;
         if(_loc2_ !== param1)
         {
            this._2079535685Canvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas3",_loc2_,param1));
         }
      }
      
      public function set Canvas4(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535684Canvas4;
         if(_loc2_ !== param1)
         {
            this._2079535684Canvas4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas4",_loc2_,param1));
         }
      }
      
      public function set Canvas5(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535683Canvas5;
         if(_loc2_ !== param1)
         {
            this._2079535683Canvas5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas5",_loc2_,param1));
         }
      }
      
      public function set Canvas2(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535686Canvas2;
         if(_loc2_ !== param1)
         {
            this._2079535686Canvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas2",_loc2_,param1));
         }
      }
      
      public function set Canvas7(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535681Canvas7;
         if(_loc2_ !== param1)
         {
            this._2079535681Canvas7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas7",_loc2_,param1));
         }
      }
      
      public function set label1(param1:Label) : void
      {
         var _loc2_:Object = this._1110417475label1;
         if(_loc2_ !== param1)
         {
            this._1110417475label1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label1",_loc2_,param1));
         }
      }
      
      public function set label5(param1:Label) : void
      {
         var _loc2_:Object = this._1110417471label5;
         if(_loc2_ !== param1)
         {
            this._1110417471label5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label5",_loc2_,param1));
         }
      }
      
      public function set label3(param1:Label) : void
      {
         var _loc2_:Object = this._1110417473label3;
         if(_loc2_ !== param1)
         {
            this._1110417473label3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label3",_loc2_,param1));
         }
      }
      
      public function set label7(param1:Label) : void
      {
         var _loc2_:Object = this._1110417469label7;
         if(_loc2_ !== param1)
         {
            this._1110417469label7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label7",_loc2_,param1));
         }
      }
      
      public function set label4(param1:Label) : void
      {
         var _loc2_:Object = this._1110417472label4;
         if(_loc2_ !== param1)
         {
            this._1110417472label4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label4",_loc2_,param1));
         }
      }
      
      public function __btnFind7_click(param1:MouseEvent) : void
      {
         findBack(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get vb_quest() : VBox
      {
         return this._898049649vb_quest;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FindBackPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FindBackPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FindBackPanelWatcherSetupUtil");
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
      
      public function set Canvas6(param1:Canvas) : void
      {
         var _loc2_:Object = this._2079535682Canvas6;
         if(_loc2_ !== param1)
         {
            this._2079535682Canvas6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Canvas6",_loc2_,param1));
         }
      }
      
      public function set img1(param1:Image) : void
      {
         var _loc2_:Object = this._3236046img1;
         if(_loc2_ !== param1)
         {
            this._3236046img1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img1",_loc2_,param1));
         }
      }
      
      public function set img2(param1:Image) : void
      {
         var _loc2_:Object = this._3236047img2;
         if(_loc2_ !== param1)
         {
            this._3236047img2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2",_loc2_,param1));
         }
      }
      
      public function set img3(param1:Image) : void
      {
         var _loc2_:Object = this._3236048img3;
         if(_loc2_ !== param1)
         {
            this._3236048img3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img3",_loc2_,param1));
         }
      }
      
      public function __radiogroup2_change(param1:Event) : void
      {
         selectExpType(2);
      }
      
      public function set img4(param1:Image) : void
      {
         var _loc2_:Object = this._3236049img4;
         if(_loc2_ !== param1)
         {
            this._3236049img4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img4",_loc2_,param1));
         }
      }
      
      public function set label71(param1:Label) : void
      {
         var _loc2_:Object = this._63203122label71;
         if(_loc2_ !== param1)
         {
            this._63203122label71 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label71",_loc2_,param1));
         }
      }
      
      public function set label72(param1:Label) : void
      {
         var _loc2_:Object = this._63203121label72;
         if(_loc2_ !== param1)
         {
            this._63203121label72 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label72",_loc2_,param1));
         }
      }
      
      public function set label2(param1:Label) : void
      {
         var _loc2_:Object = this._1110417474label2;
         if(_loc2_ !== param1)
         {
            this._1110417474label2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label2",_loc2_,param1));
         }
      }
      
      public function set img5(param1:Image) : void
      {
         var _loc2_:Object = this._3236050img5;
         if(_loc2_ !== param1)
         {
            this._3236050img5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img5",_loc2_,param1));
         }
      }
      
      public function set img6(param1:Image) : void
      {
         var _loc2_:Object = this._3236051img6;
         if(_loc2_ !== param1)
         {
            this._3236051img6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img6",_loc2_,param1));
         }
      }
      
      public function set img7(param1:Image) : void
      {
         var _loc2_:Object = this._3236052img7;
         if(_loc2_ !== param1)
         {
            this._3236052img7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img7",_loc2_,param1));
         }
      }
      
      public function set label6(param1:Label) : void
      {
         var _loc2_:Object = this._1110417470label6;
         if(_loc2_ !== param1)
         {
            this._1110417470label6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas1() : Canvas
      {
         return this._2079535687Canvas1;
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas2() : Canvas
      {
         return this._2079535686Canvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas3() : Canvas
      {
         return this._2079535685Canvas3;
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas4() : Canvas
      {
         return this._2079535684Canvas4;
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas5() : Canvas
      {
         return this._2079535683Canvas5;
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas7() : Canvas
      {
         return this._2079535681Canvas7;
      }
      
      [Bindable(event="propertyChange")]
      public function get label5() : Label
      {
         return this._1110417471label5;
      }
      
      [Bindable(event="propertyChange")]
      public function get label7() : Label
      {
         return this._1110417469label7;
      }
      
      [Bindable(event="propertyChange")]
      public function get label3() : Label
      {
         return this._1110417473label3;
      }
      
      [Bindable(event="propertyChange")]
      public function get label4() : Label
      {
         return this._1110417472label4;
      }
      
      public function __btnFind4_click(param1:MouseEvent) : void
      {
         findBack(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get label6() : Label
      {
         return this._1110417470label6;
      }
      
      [Bindable(event="propertyChange")]
      public function get Canvas6() : Canvas
      {
         return this._2079535682Canvas6;
      }
      
      public function set refreshBanner(param1:ComboBox) : void
      {
         var _loc2_:Object = this._2015112679refreshBanner;
         if(_loc2_ !== param1)
         {
            this._2015112679refreshBanner = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshBanner",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.addItem({
            "color":-1,
            "label":Language.FINDBACK_PANEL_U[23]
         });
         _loc1_.addItem({
            "color":0,
            "label":Language.FINDBACK_PANEL_U[24]
         });
         _loc1_.addItem({
            "color":1,
            "label":Language.FINDBACK_PANEL_U[25]
         });
         _loc1_.addItem({
            "color":2,
            "label":Language.FINDBACK_PANEL_U[26]
         });
         _loc1_.addItem({
            "color":3,
            "label":Language.FINDBACK_PANEL_U[27]
         });
         _loc1_.addItem({
            "color":4,
            "label":Language.FINDBACK_PANEL_U[28]
         });
         _loc1_.addItem({
            "color":5,
            "label":Language.FINDBACK_PANEL_U[40]
         });
         refreshBanner.dataProvider = _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get label2() : Label
      {
         return this._1110417474label2;
      }
      
      private function _FindBackPanel_RadioButtonGroup7_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup7 = _loc1_;
         _loc1_.addEventListener("change",__radiogroup7_change);
         _loc1_.initialized(this,"radiogroup7");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshBanner() : ComboBox
      {
         return this._2015112679refreshBanner;
      }
      
      [Bindable(event="propertyChange")]
      public function get label1() : Label
      {
         return this._1110417475label1;
      }
   }
}

