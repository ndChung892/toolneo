package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.TreasureSlot;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TreasurePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3463n5:Label;
      
      private var _1141924040shopSlot15:TreasureSlot;
      
      private var _3524p4:Label;
      
      private var _3647t3:Label;
      
      public var _TreasurePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3773vs:ViewStack;
      
      private var _2115046236shopSlot8:TreasureSlot;
      
      private var _2115046240shopSlot4:TreasureSlot;
      
      private var _97826bt4:Button;
      
      private var _3650t6:Label;
      
      private var _3459n1:Label;
      
      private var _3309i6:ItemSlot;
      
      private var _3462n4:Label;
      
      private var _3523p3:Label;
      
      private var _3646t2:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1141924043shopSlot12:TreasureSlot;
      
      private var _2115046238shopSlot6:TreasureSlot;
      
      private var _2062978849idInfoCanvas:Canvas;
      
      private var _2115046242shopSlot2:TreasureSlot;
      
      private var _960253463idSystemAll:Canvas;
      
      private var _alert:Alert;
      
      private var _3308i5:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _3461n3:Label;
      
      private var _97827bt5:Button;
      
      private const ITEM_COUNT_PER_PAGE:int = 20;
      
      private var _3645t1:Label;
      
      private var _3522p2:Label;
      
      private var _2115046244shopSlot0:TreasureSlot;
      
      public var _TreasurePanel_RoundedLabel2:RoundedLabel;
      
      public var treasureMsgArr:Array = new Array();
      
      private var _1141924038shopSlot17:TreasureSlot;
      
      private var _3307i4:ItemSlot;
      
      private var _3460n2:Label;
      
      private var _3521p1:Label;
      
      private var _1141924041shopSlot14:TreasureSlot;
      
      private var _1102666777linkTA:LinkTextArea;
      
      private var _277229570idTabCanvas0:BasicGlowButton;
      
      private var _loadcid:Number = 0;
      
      private var _97828bt6:Button;
      
      private var _1133422559idReflashTime0:RoundedLabel;
      
      private var _3306i3:ItemSlot;
      
      private var _2115046235shopSlot9:TreasureSlot;
      
      private var _97823bt1:Button;
      
      private var _1141924044shopSlot11:TreasureSlot;
      
      private var _582286198introCon:IntroText;
      
      private var TreasureItemObj:Object = new Object();
      
      private var freObj:Object = new Object();
      
      private var _upTime:Number = 0;
      
      private var _isRenRen:Boolean = false;
      
      private var _3305i2:ItemSlot;
      
      private var _1141924036shopSlot19:TreasureSlot;
      
      private var _277229568idTabCanvas2:BasicGlowButton;
      
      private var _2115046237shopSlot7:TreasureSlot;
      
      private var _2115046241shopSlot3:TreasureSlot;
      
      private var _1266436477freBtn:BasicDelayButton;
      
      private var _2016333467idSystemAllTile:Tile;
      
      private var _97824bt2:Button;
      
      private var _fm:Number = 0;
      
      private var shopItemList:ArrayCollection = new ArrayCollection();
      
      private var _3304i1:ItemSlot;
      
      private var _ft:Number = 0;
      
      private var _1141924039shopSlot16:TreasureSlot;
      
      private var _2115046239shopSlot5:TreasureSlot;
      
      private var _2115046243shopSlot1:TreasureSlot;
      
      private var _1141924042shopSlot13:TreasureSlot;
      
      private var _3649t5:Label;
      
      private var _3526p6:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1560582673idReflashTime:RoundedLabel;
      
      private var _277229569idTabCanvas1:BasicGlowButton;
      
      private var _97825bt3:Button;
      
      private var _1141924045shopSlot10:TreasureSlot;
      
      private var _3525p5:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _fmt:String = "p";
      
      private var _133132290idReflash:Canvas;
      
      private var _3464n6:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _1141924037shopSlot18:TreasureSlot;
      
      private var _3648t4:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":570,
               "height":358,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TreasurePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":358,
                        "x":0,
                        "y":0,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 0;
                              this.left = "45";
                              this.top = "40";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"HTabWrapper"};
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"vs",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.left = "10";
                              this.right = "10";
                              this.top = "60";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"idReflash",
                                 "events":{"mouseDown":"__idReflash_mouseDown"},
                                 "stylesFactory":function():void
                                 {
                                    this.top = "60";
                                    this.left = "10";
                                    this.right = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "height":274,
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"i1",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":38,
                                                "y":19,
                                                "movable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"i2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":145,
                                                "y":19,
                                                "movable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"i3",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":240,
                                                "y":19,
                                                "movable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"i4",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":38,
                                                "y":123,
                                                "movable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"i5",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":145,
                                                "y":123,
                                                "movable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ItemSlot,
                                          "id":"i6",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":240,
                                                "y":123,
                                                "movable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"idReflashTime",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.bottom = "15";
                                             this.color = 16777215;
                                             this.fontSize = 12;
                                             this.textAlign = "center";
                                             this.fontStyle = "normal";
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"width":117};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicDelayButton,
                                          "id":"freBtn",
                                          "events":{"click":"__freBtn_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "enabled":false,
                                                "clickDelay":3000,
                                                "styleName":"BtnStdRed",
                                                "label":"",
                                                "width":142,
                                                "x":182
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "stylesFactory":function():void
                                          {
                                             this.right = "5";
                                             this.top = "10";
                                             this.bottom = "18";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":213,
                                                "styleName":"CanvasBorder",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":RoundedLabel,
                                                   "id":"_TreasurePanel_RoundedLabel2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.top = "8";
                                                      this.color = 16777215;
                                                      this.horizontalCenter = "0";
                                                      this.fontSize = 14;
                                                      this.textAlign = "center";
                                                      this.fontStyle = "normal";
                                                      this.fontWeight = "bold";
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":LinkTextArea,
                                                   "id":"linkTA",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.backgroundAlpha = 0.3;
                                                      this.backgroundColor = 0;
                                                      this.borderStyle = "none";
                                                      this.color = 16774324;
                                                      this.bottom = "5";
                                                      this.left = "2";
                                                      this.right = "2";
                                                      this.top = "30";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "editable":false,
                                                         "enabled":true,
                                                         "selectable":false
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Button,
                                          "id":"bt1",
                                          "events":{"click":"__bt1_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"BtnStdRed",
                                                "x":33,
                                                "y":95,
                                                "width":47
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Button,
                                          "id":"bt2",
                                          "events":{"click":"__bt2_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"BtnStdRed",
                                                "x":140,
                                                "y":95,
                                                "width":47
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Button,
                                          "id":"bt3",
                                          "events":{"click":"__bt3_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"BtnStdRed",
                                                "x":244,
                                                "y":95,
                                                "width":47
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Button,
                                          "id":"bt4",
                                          "events":{"click":"__bt4_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"BtnStdRed",
                                                "x":33,
                                                "y":204,
                                                "width":47
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Button,
                                          "id":"bt5",
                                          "events":{"click":"__bt5_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"BtnStdRed",
                                                "x":140,
                                                "y":204,
                                                "width":47
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Button,
                                          "id":"bt6",
                                          "events":{"click":"__bt6_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"BtnStdRed",
                                                "x":244,
                                                "y":204,
                                                "width":47
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"t1",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":71
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"p1",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":45,
                                                "y":71,
                                                "text":"Label"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"t2",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":117,
                                                "y":71
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"p2",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":152,
                                                "y":71,
                                                "text":"Label"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"t3",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":221,
                                                "y":71
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"p3",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":256,
                                                "y":71,
                                                "text":"Label"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"t4",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":175
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"p4",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":45,
                                                "y":175,
                                                "text":"Label"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"t5",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":117,
                                                "y":175
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"p5",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":152,
                                                "y":175,
                                                "text":"Label"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"t6",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":221,
                                                "y":175
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"p6",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 11;
                                             this.color = 16777215;
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":256,
                                                "y":175,
                                                "text":"Label"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"n1",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":55
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"n2",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":117,
                                                "y":55
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"n3",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":221,
                                                "y":55
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"n4",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":159
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"n5",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":117,
                                                "y":159
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"n6",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":221,
                                                "y":159
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"idReflashTime0",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "95";
                                             this.bottom = "15";
                                             this.color = 16777215;
                                             this.fontSize = 12;
                                             this.textAlign = "center";
                                             this.fontStyle = "normal";
                                             this.fontWeight = "bold";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"width":67};
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"idSystemAll",
                                 "events":{"mouseDown":"__idSystemAll_mouseDown"},
                                 "stylesFactory":function():void
                                 {
                                    this.top = "60";
                                    this.left = "15";
                                    this.right = "9";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Tile,
                                          "id":"idSystemAllTile",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "7";
                                             this.right = "2";
                                             this.top = "10";
                                             this.bottom = "25";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"childDescriptors":[new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot0"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot1"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot2"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot3"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot4"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot5"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot6"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot7"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot8"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot9"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot10"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot11"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot12"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot13"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot14"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot15"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot16"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot17"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot18"
                                             }),new UIComponentDescriptor({
                                                "type":TreasureSlot,
                                                "id":"shopSlot19"
                                             })]};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":PageSelector,
                                          "id":"pageSelector",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":195,
                                                "y":252
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"idInfoCanvas",
                                 "events":{"mouseDown":"__idInfoCanvas_mouseDown"},
                                 "stylesFactory":function():void
                                 {
                                    this.top = "60";
                                    this.left = "15";
                                    this.right = "9";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"introCon",
                                          "stylesFactory":function():void
                                          {
                                             this.top = "10";
                                             this.left = "15";
                                             this.right = "9";
                                             this.bottom = "10";
                                          }
                                       })]
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"idTabCanvas0",
                           "events":{"click":"__idTabCanvas0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":60,
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "x":10,
                                 "y":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"idTabCanvas1",
                           "events":{"click":"__idTabCanvas1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":60,
                                 "styleName":"HorizontalTab",
                                 "x":70,
                                 "y":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"idTabCanvas2",
                           "events":{"click":"__idTabCanvas2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":60,
                                 "styleName":"HorizontalTab",
                                 "x":130,
                                 "y":40
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function TreasurePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 570;
         this.height = 358;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___TreasurePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TreasurePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas2() : BasicGlowButton
      {
         return this._277229568idTabCanvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idReflash() : Canvas
      {
         return this._133132290idReflash;
      }
      
      private function initTreasureItemObj() : void
      {
         shopItemList = getTreasureItemObj();
      }
      
      public function set idTabCanvas1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229569idTabCanvas1;
         if(_loc2_ !== param1)
         {
            this._277229569idTabCanvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas1",_loc2_,param1));
         }
      }
      
      private function buyTreasureItem(param1:int) : void
      {
         var str:String = null;
         var _tid:Number = NaN;
         var _giid:Number = NaN;
         var _index:Number = NaN;
         var func:Function = null;
         var index:int = param1;
         if(Boolean(this["i" + index]) && Boolean(this["i" + index].slotData) && Boolean(freObj[index]))
         {
            str = Language.TREASURE_PANEL_U[5].replace("{num}",this["p" + index].text).replace("{iname}",this["i" + index].slotData.name);
            _tid = Number(this["i" + index].type);
            _giid = Number(this["i" + index].giid);
            _index = Number(freObj[index]);
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("buyTreasureItemSer",null,_index,_tid,_giid);
               }
            };
            _alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function set idTabCanvas2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229568idTabCanvas2;
         if(_loc2_ !== param1)
         {
            this._277229568idTabCanvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas2",_loc2_,param1));
         }
      }
      
      public function __bt3_click(param1:MouseEvent) : void
      {
         buyTreasureItem(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get p6() : Label
      {
         return this._3526p6;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSystemAll() : Canvas
      {
         return this._960253463idSystemAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt2() : Button
      {
         return this._97824bt2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt3() : Button
      {
         return this._97825bt3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt6() : Button
      {
         return this._97828bt6;
      }
      
      [Bindable(event="propertyChange")]
      public function get idReflashTime0() : RoundedLabel
      {
         return this._1133422559idReflashTime0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt4() : Button
      {
         return this._97826bt4;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas1() : BasicGlowButton
      {
         return this._277229569idTabCanvas1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt1() : Button
      {
         return this._97823bt1;
      }
      
      public function set idReflash(param1:Canvas) : void
      {
         var _loc2_:Object = this._133132290idReflash;
         if(_loc2_ !== param1)
         {
            this._133132290idReflash = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idReflash",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bt5() : Button
      {
         return this._97827bt5;
      }
      
      public function set idSystemAll(param1:Canvas) : void
      {
         var _loc2_:Object = this._960253463idSystemAll;
         if(_loc2_ !== param1)
         {
            this._960253463idSystemAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSystemAll",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t3() : Label
      {
         return this._3647t3;
      }
      
      public function set bt2(param1:Button) : void
      {
         var _loc2_:Object = this._97824bt2;
         if(_loc2_ !== param1)
         {
            this._97824bt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t5() : Label
      {
         return this._3649t5;
      }
      
      [Bindable(event="propertyChange")]
      public function get t4() : Label
      {
         return this._3648t4;
      }
      
      public function set bt6(param1:Button) : void
      {
         var _loc2_:Object = this._97828bt6;
         if(_loc2_ !== param1)
         {
            this._97828bt6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt6",_loc2_,param1));
         }
      }
      
      public function set bt4(param1:Button) : void
      {
         var _loc2_:Object = this._97826bt4;
         if(_loc2_ !== param1)
         {
            this._97826bt4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt4",_loc2_,param1));
         }
      }
      
      public function set bt3(param1:Button) : void
      {
         var _loc2_:Object = this._97825bt3;
         if(_loc2_ !== param1)
         {
            this._97825bt3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt3",_loc2_,param1));
         }
      }
      
      public function onFreshCharTreasureBowl(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         if(param1)
         {
            if(ToolKit.isEqual(param1.type,2))
            {
               _core.sysMidNote(Language.TREASURE_PANEL_U[8]);
               onInitTreasureBowlWithList(param1.info);
            }
            else if(ToolKit.isEqual(param1.type,1))
            {
               _loc2_ = 1;
               while(_loc2_ <= 6)
               {
                  cleanItemSlotData(_loc2_);
                  _loc2_++;
               }
               _loc3_ = 1;
               for(_loc4_ in param1.info)
               {
                  if(param1.info[_loc4_])
                  {
                     setItemSlotData(param1.info[_loc4_],_loc3_);
                     _loc3_++;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t1() : Label
      {
         return this._3645t1;
      }
      
      public function set shopSlot10(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924045shopSlot10;
         if(_loc2_ !== param1)
         {
            this._1141924045shopSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot10",_loc2_,param1));
         }
      }
      
      private function onInitTreasureBowl(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         freObj = null;
         freObj = new Object();
         if(!param1)
         {
            this.visible = false;
         }
         else
         {
            if(Boolean(_core.player) && Boolean(_core.player.id) && !ToolKit.isEqual(_core.player.id,_loadcid))
            {
               _core.remote.call("initTreasureBowlMsgArr",new Responder(onInitTreasureBowlMsgArr));
            }
            if(ToolKit.isSmallThan(_upTime,param1.uTime))
            {
               TreasureItemObj = null;
               TreasureItemObj = new Object();
               _core.remote.call("initTreasureBowlWithList",new Responder(onInitTreasureBowlWithList));
               return;
            }
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               cleanItemSlotData(_loc2_);
               _loc2_++;
            }
            _loc3_ = 1;
            for(_loc4_ in param1.rconf)
            {
               if(param1.rconf[_loc4_])
               {
                  setItemSlotData(param1.rconf[_loc4_],_loc3_);
                  _loc3_++;
               }
            }
            freBtn.enabled = true;
            _fm = param1.fm;
            setFreshTime(_ft,param1.rft);
            if(Boolean(param1.cf) && ToolKit.isEqual(param1.cf,2))
            {
               Language.TREASURE_PANEL_U[2] = Language.TREASURE_PANEL_U[10];
            }
            freBtn.label = Language.TREASURE_PANEL_U[6].replace("{num}",_fm);
            if(_fmt != "g")
            {
               freBtn.label = Language.TREASURE_PANEL_U[16].replace("{num}",_fm);
               if(_isRenRen)
               {
                  freBtn.label = Language.TREASURE_PANEL_U[18].replace("{num}",_fm / 10);
               }
            }
         }
      }
      
      public function set bt5(param1:Button) : void
      {
         var _loc2_:Object = this._97827bt5;
         if(_loc2_ !== param1)
         {
            this._97827bt5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt5",_loc2_,param1));
         }
      }
      
      public function set bt1(param1:Button) : void
      {
         var _loc2_:Object = this._97823bt1;
         if(_loc2_ !== param1)
         {
            this._97823bt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt1",_loc2_,param1));
         }
      }
      
      public function set shopSlot13(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924042shopSlot13;
         if(_loc2_ !== param1)
         {
            this._1141924042shopSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot13",_loc2_,param1));
         }
      }
      
      public function set shopSlot14(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924041shopSlot14;
         if(_loc2_ !== param1)
         {
            this._1141924041shopSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot14",_loc2_,param1));
         }
      }
      
      public function set idInfoCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._2062978849idInfoCanvas;
         if(_loc2_ !== param1)
         {
            this._2062978849idInfoCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idInfoCanvas",_loc2_,param1));
         }
      }
      
      public function __idTabCanvas2_click(param1:MouseEvent) : void
      {
         setTab(2);
      }
      
      public function set shopSlot12(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924043shopSlot12;
         if(_loc2_ !== param1)
         {
            this._1141924043shopSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot12",_loc2_,param1));
         }
      }
      
      public function set shopSlot16(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924039shopSlot16;
         if(_loc2_ !== param1)
         {
            this._1141924039shopSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot16",_loc2_,param1));
         }
      }
      
      public function set shopSlot17(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924038shopSlot17;
         if(_loc2_ !== param1)
         {
            this._1141924038shopSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot17",_loc2_,param1));
         }
      }
      
      public function ___TreasurePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function set shopSlot18(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924037shopSlot18;
         if(_loc2_ !== param1)
         {
            this._1141924037shopSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot18",_loc2_,param1));
         }
      }
      
      public function set shopSlot11(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924044shopSlot11;
         if(_loc2_ !== param1)
         {
            this._1141924044shopSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot11",_loc2_,param1));
         }
      }
      
      public function set shopSlot19(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924036shopSlot19;
         if(_loc2_ !== param1)
         {
            this._1141924036shopSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot19",_loc2_,param1));
         }
      }
      
      public function set idReflashTime0(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1133422559idReflashTime0;
         if(_loc2_ !== param1)
         {
            this._1133422559idReflashTime0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idReflashTime0",_loc2_,param1));
         }
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            this["shopSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      private function setItemSlotData(param1:Object, param2:Number) : void
      {
         if(!param1 || !param1["idx"])
         {
         }
         var _loc3_:Number = Number(param1["idx"]);
         if(!this["i" + param2] || !TreasureItemObj || !TreasureItemObj[_loc3_])
         {
            return;
         }
         if(!ToolKit.isEqual(TreasureItemObj[_loc3_].tid,param1.tid) || !ToolKit.isEqual(TreasureItemObj[_loc3_].iid,param1.iid))
         {
            return;
         }
         this["i" + param2].slotData = TreasureItemObj[_loc3_].temp;
         this["i" + param2].type = TreasureItemObj[_loc3_].tid;
         this["i" + param2].giid = TreasureItemObj[_loc3_].iid;
         this["p" + param2].visible = true;
         this["t" + param2].visible = true;
         this["n" + param2].visible = true;
         if(!_isRenRen)
         {
            this["p" + param2].text = Boolean(String(TreasureItemObj[_loc3_].p)) && ToolKit.isBigThan(TreasureItemObj[_loc3_].p,0) ? TreasureItemObj[_loc3_].p.toString() + Language.TREASURE_PANEL_U[2] : TreasureItemObj[_loc3_].g.toString() + Language.TREASURE_PANEL_U[1];
         }
         else
         {
            this["p" + param2].text = Boolean(String(TreasureItemObj[_loc3_].p / 10)) && ToolKit.isBigThan(TreasureItemObj[_loc3_].p / 10,0) ? (TreasureItemObj[_loc3_].p / 10).toString() + Language.TREASURE_PANEL_U[10] : TreasureItemObj[_loc3_].g.toString() + Language.TREASURE_PANEL_U[1];
         }
         this["bt" + param2].visible = true;
         var _loc4_:Object = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.iid];
         this["n" + param2].text = _loc4_.name;
         freObj[param2] = _loc3_;
      }
      
      public function set shopSlot15(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._1141924040shopSlot15;
         if(_loc2_ !== param1)
         {
            this._1141924040shopSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot15",_loc2_,param1));
         }
      }
      
      public function set t1(param1:Label) : void
      {
         var _loc2_:Object = this._3645t1;
         if(_loc2_ !== param1)
         {
            this._3645t1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1",_loc2_,param1));
         }
      }
      
      public function set t5(param1:Label) : void
      {
         var _loc2_:Object = this._3649t5;
         if(_loc2_ !== param1)
         {
            this._3649t5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t5",_loc2_,param1));
         }
      }
      
      public function set t3(param1:Label) : void
      {
         var _loc2_:Object = this._3647t3;
         if(_loc2_ !== param1)
         {
            this._3647t3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t3",_loc2_,param1));
         }
      }
      
      private function _TreasurePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TreasurePanel_BasicTitleCanvas1.text = param1;
         },"_TreasurePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idReflashTime.text = param1;
         },"idReflashTime.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TreasurePanel_RoundedLabel2.text = param1;
         },"_TreasurePanel_RoundedLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt1.label = param1;
         },"bt1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt2.label = param1;
         },"bt2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt3.label = param1;
         },"bt3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt4.label = param1;
         },"bt4.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt5.label = param1;
         },"bt5.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bt6.label = param1;
         },"bt6.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t1.text = param1;
         },"t1.text");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            t1.filters = param1;
         },"t1.filters");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            p1.filters = param1;
         },"p1.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t2.text = param1;
         },"t2.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            t2.filters = param1;
         },"t2.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            p2.filters = param1;
         },"p2.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t3.text = param1;
         },"t3.text");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            t3.filters = param1;
         },"t3.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            p3.filters = param1;
         },"p3.filters");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t4.text = param1;
         },"t4.text");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            t4.filters = param1;
         },"t4.filters");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            p4.filters = param1;
         },"p4.filters");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t5.text = param1;
         },"t5.text");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            t5.filters = param1;
         },"t5.filters");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            p5.filters = param1;
         },"p5.filters");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t6.text = param1;
         },"t6.text");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            t6.filters = param1;
         },"t6.filters");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            p6.filters = param1;
         },"p6.filters");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            n1.text = param1;
         },"n1.text");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            n1.filters = param1;
         },"n1.filters");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            n2.text = param1;
         },"n2.text");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            n2.filters = param1;
         },"n2.filters");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            n3.text = param1;
         },"n3.text");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            n3.filters = param1;
         },"n3.filters");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            n4.text = param1;
         },"n4.text");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            n4.filters = param1;
         },"n4.filters");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            n5.text = param1;
         },"n5.text");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            n5.filters = param1;
         },"n5.filters");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            n6.text = param1;
         },"n6.text");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            n6.filters = param1;
         },"n6.filters");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idReflashTime0.text = param1;
         },"idReflashTime0.text");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            idReflashTime0.filters = param1;
         },"idReflashTime0.filters");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idSystemAllTile.label = param1;
         },"idSystemAllTile.label");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas0.label = param1;
         },"idTabCanvas0.label");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VIPSHOPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas1.label = param1;
         },"idTabCanvas1.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTabCanvas2.label = param1;
         },"idTabCanvas2.label");
         result[44] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get t6() : Label
      {
         return this._3650t6;
      }
      
      public function __bt5_click(param1:MouseEvent) : void
      {
         buyTreasureItem(5);
      }
      
      public function set t6(param1:Label) : void
      {
         var _loc2_:Object = this._3650t6;
         if(_loc2_ !== param1)
         {
            this._3650t6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t6",_loc2_,param1));
         }
      }
      
      private function freshCanBuyItem() : *
      {
         var str:String;
         var func:Function;
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("freshCharTreasureBowl",new Responder(onFreshCharTreasureBowl),_upTime);
            }
         };
         str = Language.TREASURE_PANEL_U[14];
         if(_fmt != "g")
         {
            str = Language.TREASURE_PANEL_U[15];
            if(_isRenRen)
            {
               str = Language.TREASURE_PANEL_U[17];
            }
         }
         _alert = Alert.show(str,str,Alert.YES | Alert.NO,null,func);
      }
      
      public function set t4(param1:Label) : void
      {
         var _loc2_:Object = this._3648t4;
         if(_loc2_ !== param1)
         {
            this._3648t4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get freBtn() : BasicDelayButton
      {
         return this._1266436477freBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot0() : TreasureSlot
      {
         return this._2115046244shopSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot1() : TreasureSlot
      {
         return this._2115046243shopSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot2() : TreasureSlot
      {
         return this._2115046242shopSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot3() : TreasureSlot
      {
         return this._2115046241shopSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot4() : TreasureSlot
      {
         return this._2115046240shopSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot5() : TreasureSlot
      {
         return this._2115046239shopSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot7() : TreasureSlot
      {
         return this._2115046237shopSlot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot8() : TreasureSlot
      {
         return this._2115046236shopSlot8;
      }
      
      public function onSynTreasureBowlClient(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         if(Boolean(param1 && initialized) && Boolean(visible) && !ToolKit.isEqual(_upTime,0))
         {
            if(ToolKit.isSmallThan(_upTime,param1.uTime))
            {
               TreasureItemObj = null;
               TreasureItemObj = new Object();
               _core.remote.call("initTreasureBowlWithList",new Responder(onInitTreasureBowlWithList));
               return;
            }
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               cleanItemSlotData(_loc2_);
               _loc2_++;
            }
            _loc3_ = 1;
            for(_loc4_ in param1.list)
            {
               if(param1.list[_loc4_])
               {
                  setItemSlotData(param1.list[_loc4_],_loc3_);
                  _loc3_++;
               }
            }
            setFreshTime(_ft,param1.rft);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot6() : TreasureSlot
      {
         return this._2115046238shopSlot6;
      }
      
      public function __freBtn_click(param1:MouseEvent) : void
      {
         freshCanBuyItem();
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot9() : TreasureSlot
      {
         return this._2115046235shopSlot9;
      }
      
      public function set t2(param1:Label) : void
      {
         var _loc2_:Object = this._3646t2;
         if(_loc2_ !== param1)
         {
            this._3646t2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2",_loc2_,param1));
         }
      }
      
      public function broadCastTreasureMsg(param1:Object) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         if(!param1)
         {
            return;
         }
         treasureMsgArr.push(param1);
         if(treasureMsgArr.length > 10)
         {
            treasureMsgArr.shift();
         }
         var _loc2_:String = "";
         var _loc3_:* = ToolKit.minus(treasureMsgArr.length,1);
         while(_loc3_ >= 0)
         {
            _loc4_ = "";
            _loc5_ = _core.data.getGameData(treasureMsgArr[_loc3_].ti,treasureMsgArr[_loc3_].ii);
            if(!_loc5_)
            {
               return;
            }
            if(!_loc5_.color || _loc5_.color < 0)
            {
               _loc5_.color = 0;
            }
            _loc4_ = Language.TREASURE_PANEL_U[11];
            if(!_loc4_)
            {
               return;
            }
            _loc4_ = _loc4_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + treasureMsgArr[_loc3_].c + "|" + treasureMsgArr[_loc3_].name + "|0|0|0]"));
            if(treasureMsgArr[_loc3_].ti == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               if(!treasureMsgArr[_loc3_].cl)
               {
                  if(_loc5_.color > 0)
                  {
                     treasureMsgArr[_loc3_].cl = _loc5_.color;
                  }
                  else
                  {
                     treasureMsgArr[_loc3_].cl = 0;
                  }
               }
               _loc7_ = _core.data.gameData[treasureMsgArr[_loc3_].ti][treasureMsgArr[_loc3_].ii];
               if(_loc7_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
               {
                  _loc8_ = Number(param1.q) * 10 + 6;
                  _loc4_ = _loc4_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + treasureMsgArr[_loc3_].ii + "|" + _loc5_.name + "|" + treasureMsgArr[_loc3_].cl + "|" + 0 + "|" + _loc8_ + "]"));
               }
               else
               {
                  _loc4_ = _loc4_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + treasureMsgArr[_loc3_].ii + "|" + _loc5_.name + "|" + treasureMsgArr[_loc3_].cl + "|" + 0 + "|" + 0 + "]"));
               }
            }
            else if(treasureMsgArr[_loc3_].ti == GamePredef.TBL_ITEM_TEMPLATE)
            {
               if(!treasureMsgArr[_loc3_].cl)
               {
                  if(_loc5_.color > 0)
                  {
                     treasureMsgArr[_loc3_].cl = _loc5_.color;
                  }
                  else
                  {
                     treasureMsgArr[_loc3_].cl = 0;
                  }
               }
               _loc4_ = _loc4_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + treasureMsgArr[_loc3_].ii + "|" + _loc5_.name + "|" + treasureMsgArr[_loc3_].cl + "|" + 0 + "|" + 0 + "]"));
            }
            else if(treasureMsgArr[_loc3_].ti == GamePredef.TBL_CREATURE)
            {
               _loc9_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(treasureMsgArr[_loc3_].q)] + "\'>[" + _loc5_.name + "]</font>";
               _loc4_ = _loc4_.replace("{item}",_loc9_);
            }
            _loc6_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[6] + "\'>" + TextUtil.decode(_loc4_) + "</font><br/>";
            _loc2_ += _loc6_;
            _loc3_--;
         }
         if(initialized)
         {
            clearBuyLog();
            linkTA.htmlText = _loc2_;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      public function set idSystemAllTile(param1:Tile) : void
      {
         var _loc2_:Object = this._2016333467idSystemAllTile;
         if(_loc2_ !== param1)
         {
            this._2016333467idSystemAllTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSystemAllTile",_loc2_,param1));
         }
      }
      
      public function __bt2_click(param1:MouseEvent) : void
      {
         buyTreasureItem(2);
      }
      
      private function _TreasurePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TREASURE_PANEL_U[0];
         _loc1_ = Language.TREASURE_PANEL_U[9];
         _loc1_ = Language.VIPSHOPPANEL_U[3];
         _loc1_ = Language.TREASURE_PANEL_U[4];
         _loc1_ = Language.TREASURE_PANEL_U[4];
         _loc1_ = Language.TREASURE_PANEL_U[4];
         _loc1_ = Language.TREASURE_PANEL_U[4];
         _loc1_ = Language.TREASURE_PANEL_U[4];
         _loc1_ = Language.TREASURE_PANEL_U[4];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[3];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.TREASURE_PANEL_U[9];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.VIPSHOPPANEL_U[1];
         _loc1_ = Language.VIPSHOPPANEL_U[1];
         _loc1_ = Language.VIPSHOPPANEL_U[2];
         _loc1_ = Language.TREASURE_PANEL_U[12];
      }
      
      [Bindable(event="propertyChange")]
      public function get t2() : Label
      {
         return this._3646t2;
      }
      
      public function __idSystemAll_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function setFreshTime(param1:Number, param2:Number) : void
      {
         var _loc3_:Date = new Date(ToolKit.add(param2,param1 * 60 * 1000));
         idReflashTime0.text = _loc3_.getHours() + ":" + _loc3_.getMinutes();
      }
      
      [Bindable(event="propertyChange")]
      public function get i2() : ItemSlot
      {
         return this._3305i2;
      }
      
      [Bindable(event="propertyChange")]
      public function get i3() : ItemSlot
      {
         return this._3306i3;
      }
      
      [Bindable(event="propertyChange")]
      public function get i4() : ItemSlot
      {
         return this._3307i4;
      }
      
      [Bindable(event="propertyChange")]
      public function get i5() : ItemSlot
      {
         return this._3308i5;
      }
      
      [Bindable(event="propertyChange")]
      public function get i6() : ItemSlot
      {
         return this._3309i6;
      }
      
      public function set introCon(param1:IntroText) : void
      {
         var _loc2_:Object = this._582286198introCon;
         if(_loc2_ !== param1)
         {
            this._582286198introCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introCon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i1() : ItemSlot
      {
         return this._3304i1;
      }
      
      private function getTreasureItemObj() : ArrayCollection
      {
         return addDataToList(TreasureItemObj);
      }
      
      private function onInitTreasureBowlWithList(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc6_:* = undefined;
         if(!param1)
         {
            this.visible = false;
            return;
         }
         var _loc2_:Number = 1;
         while(_loc2_ <= 6)
         {
            cleanItemSlotData(_loc2_);
            _loc2_++;
         }
         _upTime = param1.uTime;
         for(_loc3_ in param1.tconf)
         {
            if(param1.tconf[_loc3_])
            {
               _loc6_ = _core.data.gameData[param1.tconf[_loc3_].tid][param1.tconf[_loc3_].iid];
               if(_loc6_)
               {
                  TreasureItemObj[param1.tconf[_loc3_]["i"]] = new Object();
                  TreasureItemObj[param1.tconf[_loc3_]["i"]] = param1.tconf[_loc3_];
                  TreasureItemObj[param1.tconf[_loc3_]["i"]].temp = _loc6_;
               }
            }
         }
         initTreasureItemObj();
         _loc4_ = 1;
         if(Boolean(param1.cf) && ToolKit.isEqual(param1.cf,2))
         {
            _isRenRen = true;
         }
         if(Boolean(param1.fmt) && param1.fmt == "g")
         {
            _fmt = "g";
         }
         else
         {
            _fmt = "p";
         }
         for(_loc3_ in param1.rconf)
         {
            if(param1.rconf[_loc3_])
            {
               setItemSlotData(param1.rconf[_loc3_],_loc4_);
               _loc4_++;
            }
         }
         freBtn.enabled = true;
         freBtn.label = Language.TREASURE_PANEL_U[6].replace("{num}",param1.fm);
         if(_fmt != "g")
         {
            freBtn.label = Language.TREASURE_PANEL_U[16].replace("{num}",param1.fm);
            if(_isRenRen)
            {
               freBtn.label = Language.TREASURE_PANEL_U[18].replace("{num}",param1.fm / 10);
            }
         }
         _fm = param1.fm;
         _ft = param1.ft;
         setFreshTime(_ft,param1.rft);
         var _loc5_:* = Language.TREASURE_PANEL_U[13].replace("{hours}",_ft / 60).replace("{pg}",param1.fm + Language.TREASURE_PANEL_U[1]);
         if(_fmt != "g")
         {
            _loc5_ = Language.TREASURE_PANEL_U[13].replace("{hours}",_ft / 60).replace("{pg}",param1.fm + Language.TREASURE_PANEL_U[2]);
            if(_isRenRen)
            {
               _loc5_ = Language.TREASURE_PANEL_U[13].replace("{hours}",_ft / 60).replace("{pg}",param1.fm / 10 + Language.TREASURE_PANEL_U[10]);
            }
         }
         introCon.htmlText = _loc5_;
      }
      
      public function set n2(param1:Label) : void
      {
         var _loc2_:Object = this._3460n2;
         if(_loc2_ !== param1)
         {
            this._3460n2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"n2",_loc2_,param1));
         }
      }
      
      public function set n4(param1:Label) : void
      {
         var _loc2_:Object = this._3462n4;
         if(_loc2_ !== param1)
         {
            this._3462n4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"n4",_loc2_,param1));
         }
      }
      
      public function set n5(param1:Label) : void
      {
         var _loc2_:Object = this._3463n5;
         if(_loc2_ !== param1)
         {
            this._3463n5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"n5",_loc2_,param1));
         }
      }
      
      public function __idReflash_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set n6(param1:Label) : void
      {
         var _loc2_:Object = this._3464n6;
         if(_loc2_ !== param1)
         {
            this._3464n6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"n6",_loc2_,param1));
         }
      }
      
      public function set n3(param1:Label) : void
      {
         var _loc2_:Object = this._3461n3;
         if(_loc2_ !== param1)
         {
            this._3461n3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"n3",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get idInfoCanvas() : Canvas
      {
         return this._2062978849idInfoCanvas;
      }
      
      public function __idTabCanvas1_click(param1:MouseEvent) : void
      {
         setTab(1);
      }
      
      public function set freBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1266436477freBtn;
         if(_loc2_ !== param1)
         {
            this._1266436477freBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"freBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot12() : TreasureSlot
      {
         return this._1141924043shopSlot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot13() : TreasureSlot
      {
         return this._1141924042shopSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot14() : TreasureSlot
      {
         return this._1141924041shopSlot14;
      }
      
      public function __idInfoCanvas_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot16() : TreasureSlot
      {
         return this._1141924039shopSlot16;
      }
      
      public function set shopSlot1(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046243shopSlot1;
         if(_loc2_ !== param1)
         {
            this._2115046243shopSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot11() : TreasureSlot
      {
         return this._1141924044shopSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot19() : TreasureSlot
      {
         return this._1141924036shopSlot19;
      }
      
      public function set shopSlot3(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046241shopSlot3;
         if(_loc2_ !== param1)
         {
            this._2115046241shopSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot3",_loc2_,param1));
         }
      }
      
      public function set n1(param1:Label) : void
      {
         var _loc2_:Object = this._3459n1;
         if(_loc2_ !== param1)
         {
            this._3459n1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"n1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot17() : TreasureSlot
      {
         return this._1141924038shopSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot10() : TreasureSlot
      {
         return this._1141924045shopSlot10;
      }
      
      public function set shopSlot2(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046242shopSlot2;
         if(_loc2_ !== param1)
         {
            this._2115046242shopSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot2",_loc2_,param1));
         }
      }
      
      public function set shopSlot7(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046237shopSlot7;
         if(_loc2_ !== param1)
         {
            this._2115046237shopSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot7",_loc2_,param1));
         }
      }
      
      public function set shopSlot0(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046244shopSlot0;
         if(_loc2_ !== param1)
         {
            this._2115046244shopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot0",_loc2_,param1));
         }
      }
      
      public function set shopSlot8(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046236shopSlot8;
         if(_loc2_ !== param1)
         {
            this._2115046236shopSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot8",_loc2_,param1));
         }
      }
      
      public function set shopSlot5(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046239shopSlot5;
         if(_loc2_ !== param1)
         {
            this._2115046239shopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot18() : TreasureSlot
      {
         return this._1141924037shopSlot18;
      }
      
      public function __bt4_click(param1:MouseEvent) : void
      {
         buyTreasureItem(4);
      }
      
      public function set shopSlot4(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046240shopSlot4;
         if(_loc2_ !== param1)
         {
            this._2115046240shopSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot15() : TreasureSlot
      {
         return this._1141924040shopSlot15;
      }
      
      public function set shopSlot9(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046235shopSlot9;
         if(_loc2_ !== param1)
         {
            this._2115046235shopSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot9",_loc2_,param1));
         }
      }
      
      public function set shopSlot6(param1:TreasureSlot) : void
      {
         var _loc2_:Object = this._2115046238shopSlot6;
         if(_loc2_ !== param1)
         {
            this._2115046238shopSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot6",_loc2_,param1));
         }
      }
      
      public function initTreasurePanel() : *
      {
         initView();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSystemAllTile() : Tile
      {
         return this._2016333467idSystemAllTile;
      }
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get introCon() : IntroText
      {
         return this._582286198introCon;
      }
      
      private function addDataToList(param1:Object) : ArrayCollection
      {
         var _loc3_:Object = null;
         var _loc4_:SortField = null;
         var _loc5_:Sort = null;
         var _loc6_:Object = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in TreasureItemObj)
         {
            if(_loc3_ != null)
            {
               _loc6_ = new Object();
               _loc6_.slotData = _loc3_.temp;
               _loc6_.type = _loc3_.tid;
               _loc6_.giid = _loc3_.iid;
               _loc6_.position = _loc3_.i;
               _loc2_.addItem(_loc6_);
            }
         }
         _loc4_ = new SortField();
         _loc4_.name = "position";
         _loc5_ = new Sort();
         _loc5_.fields = [_loc4_];
         _loc4_.numeric = true;
         _loc2_.sort = _loc5_;
         _loc2_.refresh();
         return _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get n5() : Label
      {
         return this._3463n5;
      }
      
      public function set p1(param1:Label) : void
      {
         var _loc2_:Object = this._3521p1;
         if(_loc2_ !== param1)
         {
            this._3521p1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get n4() : Label
      {
         return this._3462n4;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      public function __bt1_click(param1:MouseEvent) : void
      {
         buyTreasureItem(1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TreasurePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TreasurePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TreasurePanelWatcherSetupUtil");
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
      public function get n3() : Label
      {
         return this._3461n3;
      }
      
      public function set p3(param1:Label) : void
      {
         var _loc2_:Object = this._3523p3;
         if(_loc2_ !== param1)
         {
            this._3523p3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p3",_loc2_,param1));
         }
      }
      
      private function clearBuyLog() : void
      {
         if(initialized)
         {
            linkTA.htmlText = "";
         }
      }
      
      private function onInitTreasureBowlMsgArr(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(param1)
         {
            treasureMsgArr = new Array();
            for(_loc2_ in param1)
            {
               if(param1[_loc2_])
               {
                  treasureMsgArr.push(param1[_loc2_]);
               }
            }
            _loc3_ = "";
            _loc2_ = ToolKit.minus(treasureMsgArr.length,1);
            while(_loc2_ >= 0)
            {
               _loc4_ = treasureMsgArr[_loc2_];
               _loc5_ = "";
               _loc6_ = _core.data.getGameData(_loc4_.ti,_loc4_.ii);
               if(!_loc6_)
               {
                  return;
               }
               if(!_loc6_.color || _loc6_.color < 0)
               {
                  _loc6_.color = 0;
               }
               _loc5_ = Language.TREASURE_PANEL_U[11];
               if(!_loc5_)
               {
                  return;
               }
               _loc5_ = _loc5_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + _loc4_.c + "|" + _loc4_.name + "|0|0|0]"));
               if(_loc4_.ti == GamePredef.TBL_EQUIPT_TEMPLATE)
               {
                  if(!_loc4_.cl)
                  {
                     if(_loc6_.color > 0)
                     {
                        _loc4_.cl = _loc6_.color;
                     }
                     else
                     {
                        _loc4_.cl = 0;
                     }
                  }
                  _loc8_ = _core.data.gameData[_loc4_.ti][_loc4_.ii];
                  if(_loc8_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
                  {
                     _loc9_ = Number(_loc4_.q) * 10 + 6;
                     _loc5_ = _loc5_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + _loc4_.ii + "|" + _loc6_.name + "|" + _loc4_.cl + "|" + 0 + "|" + _loc9_ + "]"));
                  }
                  else
                  {
                     _loc5_ = _loc5_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + _loc4_.ii + "|" + _loc6_.name + "|" + _loc4_.cl + "|" + 0 + "|" + 0 + "]"));
                  }
               }
               else if(_loc4_.ti == GamePredef.TBL_ITEM_TEMPLATE)
               {
                  if(!_loc4_.cl)
                  {
                     if(_loc6_.color > 0)
                     {
                        _loc4_.cl = _loc6_.color;
                     }
                     else
                     {
                        _loc4_.cl = 0;
                     }
                  }
                  _loc5_ = _loc5_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + _loc4_.ii + "|" + _loc6_.name + "|" + _loc4_.cl + "|" + 0 + "|" + 0 + "]"));
               }
               else if(_loc4_.ti == GamePredef.TBL_CREATURE)
               {
                  _loc10_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(_loc4_.q)] + "\'>[" + _loc6_.name + "]</font>";
                  _loc5_ = _loc5_.replace("{item}",_loc10_);
               }
               _loc7_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[6] + "\'>" + TextUtil.decode(_loc5_) + "</font><br/>";
               _loc3_ += _loc7_;
               _loc2_--;
            }
            if(initialized)
            {
               clearBuyLog();
               linkTA.htmlText = _loc3_;
            }
            _loadcid = _core.player.id;
         }
      }
      
      public function set p5(param1:Label) : void
      {
         var _loc2_:Object = this._3525p5;
         if(_loc2_ !== param1)
         {
            this._3525p5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p5",_loc2_,param1));
         }
      }
      
      public function set p6(param1:Label) : void
      {
         var _loc2_:Object = this._3526p6;
         if(_loc2_ !== param1)
         {
            this._3526p6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get n1() : Label
      {
         return this._3459n1;
      }
      
      [Bindable(event="propertyChange")]
      public function get n2() : Label
      {
         return this._3460n2;
      }
      
      [Bindable(event="propertyChange")]
      public function get n6() : Label
      {
         return this._3464n6;
      }
      
      public function set p2(param1:Label) : void
      {
         var _loc2_:Object = this._3522p2;
         if(_loc2_ !== param1)
         {
            this._3522p2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get p1() : Label
      {
         return this._3521p1;
      }
      
      [Bindable(event="propertyChange")]
      public function get p2() : Label
      {
         return this._3522p2;
      }
      
      [Bindable(event="propertyChange")]
      public function get p4() : Label
      {
         return this._3524p4;
      }
      
      public function __bt6_click(param1:MouseEvent) : void
      {
         buyTreasureItem(6);
      }
      
      public function set i1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3304i1;
         if(_loc2_ !== param1)
         {
            this._3304i1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i1",_loc2_,param1));
         }
      }
      
      public function set i2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3305i2;
         if(_loc2_ !== param1)
         {
            this._3305i2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i2",_loc2_,param1));
         }
      }
      
      private function setTab(param1:int) : void
      {
         vs.selectedIndex = param1;
         var _loc2_:int = 3;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this["idTabCanvas" + _loc3_].selected = false;
            _loc3_++;
         }
         this["idTabCanvas" + param1].selected = true;
         if(param1 == 1)
         {
            initTreasureItemObj();
            pageSelector.onPageChanged = onPageChanged;
            pageSelector.onPageCleared = clearPage;
            pageSelector.initPageSeletor(shopItemList.length,ITEM_COUNT_PER_PAGE);
         }
      }
      
      public function set i3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3306i3;
         if(_loc2_ !== param1)
         {
            this._3306i3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i3",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initTreasureBowl",new Responder(onInitTreasureBowl));
      }
      
      public function set i4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3307i4;
         if(_loc2_ !== param1)
         {
            this._3307i4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i4",_loc2_,param1));
         }
      }
      
      public function set i5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3308i5;
         if(_loc2_ !== param1)
         {
            this._3308i5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get p3() : Label
      {
         return this._3523p3;
      }
      
      public function set p4(param1:Label) : void
      {
         var _loc2_:Object = this._3524p4;
         if(_loc2_ !== param1)
         {
            this._3524p4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p4",_loc2_,param1));
         }
      }
      
      public function set linkTA(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1102666777linkTA;
         if(_loc2_ !== param1)
         {
            this._1102666777linkTA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkTA",_loc2_,param1));
         }
      }
      
      public function set i6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3309i6;
         if(_loc2_ !== param1)
         {
            this._3309i6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i6",_loc2_,param1));
         }
      }
      
      private function cleanItemSlotData(param1:Number) : void
      {
         this["i" + param1].reset();
         freObj[param1] = null;
         this["p" + param1].visible = false;
         this["t" + param1].visible = false;
         this["bt" + param1].visible = false;
         this["n" + param1].visible = false;
      }
      
      public function set idReflashTime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1560582673idReflashTime;
         if(_loc2_ !== param1)
         {
            this._1560582673idReflashTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idReflashTime",_loc2_,param1));
         }
      }
      
      public function __idTabCanvas0_click(param1:MouseEvent) : void
      {
         setTab(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get linkTA() : LinkTextArea
      {
         return this._1102666777linkTA;
      }
      
      [Bindable(event="propertyChange")]
      public function get idReflashTime() : RoundedLabel
      {
         return this._1560582673idReflashTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get p5() : Label
      {
         return this._3525p5;
      }
      
      public function updateAllLineCharTreasureBowl(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         if(initialized && visible)
         {
            if(ToolKit.isSmallThan(_upTime,param1.uTime))
            {
               TreasureItemObj = null;
               TreasureItemObj = new Object();
               _core.remote.call("initTreasureBowlWithList",new Responder(onInitTreasureBowlWithList));
               return;
            }
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               cleanItemSlotData(_loc2_);
               _loc2_++;
            }
            _loc3_ = 1;
            for(_loc4_ in param1.rconf)
            {
               if(param1.rconf[_loc4_])
               {
                  setItemSlotData(param1.rconf[_loc4_],_loc3_);
                  _loc3_++;
               }
            }
            freBtn.enabled = true;
            _fm = param1.fm;
            setFreshTime(_ft,param1.rft);
         }
      }
      
      public function set idTabCanvas0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._277229570idTabCanvas0;
         if(_loc2_ !== param1)
         {
            this._277229570idTabCanvas0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTabCanvas0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idTabCanvas0() : BasicGlowButton
      {
         return this._277229570idTabCanvas0;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["shopSlot" + _loc4_].type = shopItemList[_loc3_].type;
            this["shopSlot" + _loc4_].giid = shopItemList[_loc3_].giid;
            this["shopSlot" + _loc4_].slotData = shopItemList[_loc3_].slotData;
            this["shopSlot" + _loc4_].visible = true;
            _loc4_++;
         }
      }
   }
}

