package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PVPRoomListPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3586r4:Canvas;
      
      private var _pageIndex:Number = 1;
      
      public var _PVPRoomListPanel_DataGridColumn1:DataGridColumn;
      
      private var _100283439ilab3:LinkButton;
      
      private var _3313735lab4:Label;
      
      private var _3313739lab8:Label;
      
      private var _3034455btn3:Button;
      
      private var _3034459btn7:Button;
      
      private var _100283444ilab8:LinkButton;
      
      private var _3585r3:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _103054007llab8:Label;
      
      private var _100283441ilab5:LinkButton;
      
      private var _maxPageIndex:Number = 1;
      
      private var _576986750BtnNextPage:Button;
      
      private var _103054004llab5:Label;
      
      private var _3584r2:Canvas;
      
      private var _core:Core = Core.getInstance();
      
      private var _lastInitTime:Number = 0;
      
      private var _3313734lab3:Label;
      
      private var _3313738lab7:Label;
      
      private var _103054001llab2:Label;
      
      private var _firstTimeFlag:* = true;
      
      private var _3034454btn2:Button;
      
      private var _3034458btn6:Button;
      
      public var _PVPRoomListPanel_Button3:Button;
      
      public var _PVPRoomListPanel_Button4:Button;
      
      private var _loadLastRank:Boolean = false;
      
      private var _3583r1:Canvas;
      
      private var _3034461btn9:Button;
      
      private var _100283437ilab1:LinkButton;
      
      private var _100283445ilab9:LinkButton;
      
      private var _roomObj:Object = new Object();
      
      private var _100283442ilab6:LinkButton;
      
      private var _103054008llab9:Label;
      
      private var _103054005llab6:Label;
      
      private var _3313733lab2:Label;
      
      private var _helpAlert:Alert;
      
      private var _3313737lab6:Label;
      
      private var _3034453btn1:Button;
      
      private var _743889664lastPVPRank:DataGrid;
      
      private var _3034457btn5:Button;
      
      private var _1988140193BtnLastPage:Button;
      
      private var _3313740lab9:Label;
      
      private var timer:Timer;
      
      private var _3589r7:Canvas;
      
      private var _103054002llab3:Label;
      
      private var _3034460btn8:Button;
      
      private var _everyPageRoomNum:Number = 9;
      
      private var _roomNum:Number = 0;
      
      private var _100283438ilab2:LinkButton;
      
      private var _173444598roomPage:TextInput;
      
      private var _3588r6:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3313732lab1:Label;
      
      private var _100283443ilab7:LinkButton;
      
      public var _PVPRoomListPanel_Label19:Label;
      
      private var _3313736lab5:Label;
      
      private var _3591r9:Canvas;
      
      private var _3034456btn4:Button;
      
      private var _103054006llab7:Label;
      
      private var _100283440ilab4:LinkButton;
      
      private var _3587r5:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3590r8:Canvas;
      
      private var _103054003llab4:Label;
      
      private var _pvpRoom:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":668,
               "height":380,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"PVPRoomTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":30,
                        "width":515,
                        "height":350,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.verticalAlign = "middle";
                              this.horizontalGap = 5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":178,
                                 "y":319,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"BtnLastPage",
                                    "events":{"click":"__BtnLastPage_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"LastPage",
                                          "autoRepeat":true,
                                          "width":45,
                                          "useHandCursor":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"roomPage",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"PageNoIndicator",
                                          "width":50,
                                          "height":16,
                                          "text":"1/1",
                                          "y":2.5,
                                          "editable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"BtnNextPage",
                                    "events":{"click":"__BtnNextPage_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"NextPage",
                                          "autoRepeat":true,
                                          "width":45,
                                          "useHandCursor":true,
                                          "y":0
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_PVPRoomListPanel_Button3",
                           "events":{"click":"___PVPRoomListPanel_Button3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":64,
                                 "y":320,
                                 "width":65,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_PVPRoomListPanel_Button4",
                           "events":{"click":"___PVPRoomListPanel_Button4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":345,
                                 "y":320,
                                 "width":68,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab1",
                                    "events":{"click":"__ilab1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn1",
                                    "events":{"click":"__btn1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":177,
                                 "y":10,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab2",
                                    "events":{"click":"__ilab2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn2",
                                    "events":{"click":"__btn2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":344,
                                 "y":10,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab3",
                                    "events":{"click":"__ilab3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn3",
                                    "events":{"click":"__btn3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":11,
                                 "y":111,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab4",
                                    "events":{"click":"__ilab4_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn4",
                                    "events":{"click":"__btn4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":178,
                                 "y":111,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab5",
                                    "events":{"click":"__ilab5_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn5",
                                    "events":{"click":"__btn5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":346,
                                 "y":111,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab6",
                                    "events":{"click":"__ilab6_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn6",
                                    "events":{"click":"__btn6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":11,
                                 "y":212,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab7",
                                    "events":{"click":"__ilab7_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn7",
                                    "events":{"click":"__btn7_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":178,
                                 "y":213,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab8",
                                    "events":{"click":"__ilab8_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn8",
                                    "events":{"click":"__btn8_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"r9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":345,
                                 "y":213,
                                 "width":159,
                                 "height":93,
                                 "styleName":"txtArea",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":3,
                                          "text":"Label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"llab9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":20,
                                          "y":27,
                                          "width":125,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"ilab9",
                                    "events":{"click":"__ilab9_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15863835;
                                       this.textDecoration = "underline";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":78,
                                          "y":3,
                                          "label":"label",
                                          "width":81,
                                          "height":28
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btn9",
                                    "events":{"click":"__btn9_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":51,
                                          "width":83,
                                          "styleName":"BtnStdRed"
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
                        "x":514,
                        "y":35,
                        "width":147,
                        "height":340,
                        "styleName":"txtArea",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PVPRoomListPanel_Label19",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":8,
                                 "styleName":"LabelTitle"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HRule,
                           "stylesFactory":function():void
                           {
                              this.left = "3";
                              this.right = "3";
                              this.top = "32";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":5};
                           }
                        }),new UIComponentDescriptor({
                           "type":DataGrid,
                           "id":"lastPVPRank",
                           "stylesFactory":function():void
                           {
                              this.top = "37";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "resizableColumns":false,
                                 "draggableColumns":false,
                                 "doubleClickEnabled":true,
                                 "height":295,
                                 "columns":[_PVPRoomListPanel_DataGridColumn1_i(),_PVPRoomListPanel_DataGridColumn2_i()]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _103054000llab1:Label;
      
      public var _PVPRoomListPanel_DataGridColumn2:DataGridColumn;
      
      private var _92391853PVPRoomTitle:BasicTitleCanvas;
      
      public function PVPRoomListPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 668;
         this.height = 380;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___PVPRoomListPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PVPRoomListPanel._watcherSetupUtil = param1;
      }
      
      public function set lastPVPRank(param1:DataGrid) : void
      {
         var _loc2_:Object = this._743889664lastPVPRank;
         if(_loc2_ !== param1)
         {
            this._743889664lastPVPRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastPVPRank",_loc2_,param1));
         }
      }
      
      public function __btn9_click(param1:MouseEvent) : void
      {
         addPVPGroup(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get r2() : Canvas
      {
         return this._3584r2;
      }
      
      public function set r3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3585r3;
         if(_loc2_ !== param1)
         {
            this._3585r3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r5() : Canvas
      {
         return this._3587r5;
      }
      
      public function set r4(param1:Canvas) : void
      {
         var _loc2_:Object = this._3586r4;
         if(_loc2_ !== param1)
         {
            this._3586r4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r7() : Canvas
      {
         return this._3589r7;
      }
      
      public function set r1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3583r1;
         if(_loc2_ !== param1)
         {
            this._3583r1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r1",_loc2_,param1));
         }
      }
      
      public function set r2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3584r2;
         if(_loc2_ !== param1)
         {
            this._3584r2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r4() : Canvas
      {
         return this._3586r4;
      }
      
      [Bindable(event="propertyChange")]
      public function get r6() : Canvas
      {
         return this._3588r6;
      }
      
      public function set roomPage(param1:TextInput) : void
      {
         var _loc2_:Object = this._173444598roomPage;
         if(_loc2_ !== param1)
         {
            this._173444598roomPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roomPage",_loc2_,param1));
         }
      }
      
      public function set r5(param1:Canvas) : void
      {
         var _loc2_:Object = this._3587r5;
         if(_loc2_ !== param1)
         {
            this._3587r5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r9() : Canvas
      {
         return this._3591r9;
      }
      
      public function set r6(param1:Canvas) : void
      {
         var _loc2_:Object = this._3588r6;
         if(_loc2_ !== param1)
         {
            this._3588r6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r3() : Canvas
      {
         return this._3585r3;
      }
      
      public function __ilab5_click(param1:MouseEvent) : void
      {
         selectRoomInfo(5);
      }
      
      public function set r8(param1:Canvas) : void
      {
         var _loc2_:Object = this._3590r8;
         if(_loc2_ !== param1)
         {
            this._3590r8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r8",_loc2_,param1));
         }
      }
      
      public function set r9(param1:Canvas) : void
      {
         var _loc2_:Object = this._3591r9;
         if(_loc2_ !== param1)
         {
            this._3591r9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r8() : Canvas
      {
         return this._3590r8;
      }
      
      public function set r7(param1:Canvas) : void
      {
         var _loc2_:Object = this._3589r7;
         if(_loc2_ !== param1)
         {
            this._3589r7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r7",_loc2_,param1));
         }
      }
      
      public function onUpdateGroupLimit(param1:Number, param2:Object) : void
      {
         var _loc3_:* = undefined;
         if(_pvpRoom[param1])
         {
            _pvpRoom[param1]["limit"]["lev"] = param2;
         }
         for(_loc3_ in _roomObj)
         {
            if(Boolean(_roomObj[_loc3_]) && ToolKit.isEqual(_roomObj[_loc3_].roomId,param1))
            {
               this["llab" + _loc3_].text = Language.PVP_ROOM_P[5] + "(" + _pvpRoom[param1]["limit"]["lev"]["min"] + "-" + _pvpRoom[param1]["limit"]["lev"]["max"] + ")";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get roomPage() : TextInput
      {
         return this._173444598roomPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab1() : LinkButton
      {
         return this._100283437ilab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab3() : LinkButton
      {
         return this._100283439ilab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab4() : LinkButton
      {
         return this._100283440ilab4;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab5() : LinkButton
      {
         return this._100283441ilab5;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab6() : LinkButton
      {
         return this._100283442ilab6;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab2() : LinkButton
      {
         return this._100283438ilab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab7() : LinkButton
      {
         return this._100283443ilab7;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab9() : LinkButton
      {
         return this._100283445ilab9;
      }
      
      public function initRoomListPanel() : void
      {
         if(!this.initialized)
         {
            this.visible = true;
            addEventListener(FlexEvent.CREATION_COMPLETE,pvpRoomCompleteHandler);
            return;
         }
         if(!_lastInitTime)
         {
            _lastInitTime = new Date().time;
         }
         else
         {
            if(ToolKit.isSmallThan(ToolKit.minus(new Date().time,_lastInitTime),1000))
            {
               return;
            }
            _lastInitTime = new Date().time;
         }
         _core.remote.call("initPVPRoom",new Responder(onInitPVPRoom));
         if(!_loadLastRank)
         {
            _core.remote.call("getLastPVPRank",new Responder(onGetLastPVPRank));
         }
      }
      
      public function __btn6_click(param1:MouseEvent) : void
      {
         addPVPGroup(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab1() : Label
      {
         return this._3313732lab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab2() : Label
      {
         return this._3313733lab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab4() : Label
      {
         return this._3313735lab4;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab5() : Label
      {
         return this._3313736lab5;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab6() : Label
      {
         return this._3313737lab6;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab8() : Label
      {
         return this._3313739lab8;
      }
      
      [Bindable(event="propertyChange")]
      public function get ilab8() : LinkButton
      {
         return this._100283444ilab8;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab3() : Label
      {
         return this._3313734lab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab7() : Label
      {
         return this._3313738lab7;
      }
      
      [Bindable(event="propertyChange")]
      public function get PVPRoomTitle() : BasicTitleCanvas
      {
         return this._92391853PVPRoomTitle;
      }
      
      public function __ilab2_click(param1:MouseEvent) : void
      {
         selectRoomInfo(2);
      }
      
      private function sortAc(param1:ArrayCollection, param2:int) : ArrayCollection
      {
         var _loc3_:Sort = new Sort();
         switch(param2)
         {
            case 1:
               _loc3_.fields = [new SortField("rank")];
               break;
            case 2:
               _loc3_.fields = [new SortField("totalSec",true,true)];
         }
         param1.sort = _loc3_;
         param1.refresh();
         return param1;
      }
      
      public function set ilab1(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283437ilab1;
         if(_loc2_ !== param1)
         {
            this._100283437ilab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab1",_loc2_,param1));
         }
      }
      
      public function set ilab5(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283441ilab5;
         if(_loc2_ !== param1)
         {
            this._100283441ilab5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab5",_loc2_,param1));
         }
      }
      
      public function set ilab3(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283439ilab3;
         if(_loc2_ !== param1)
         {
            this._100283439ilab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab3",_loc2_,param1));
         }
      }
      
      public function set ilab7(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283443ilab7;
         if(_loc2_ !== param1)
         {
            this._100283443ilab7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab7",_loc2_,param1));
         }
      }
      
      public function set ilab4(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283440ilab4;
         if(_loc2_ !== param1)
         {
            this._100283440ilab4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab4",_loc2_,param1));
         }
      }
      
      public function set ilab8(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283444ilab8;
         if(_loc2_ !== param1)
         {
            this._100283444ilab8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab8",_loc2_,param1));
         }
      }
      
      public function inviteByLeader(param1:Object) : void
      {
         var data:Object = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("sureInvite",null,data.cid,data.index,1);
            }
            else
            {
               _core.remote.call("sureInvite",null,data.cid,data.index,-1);
            }
         };
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         _helpAlert = Alert.show(Language.PVP_ROOM_P[9].toString().replace("{num}",data.index).replace("{name}",data.name),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set ilab9(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283445ilab9;
         if(_loc2_ !== param1)
         {
            this._100283445ilab9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab9",_loc2_,param1));
         }
      }
      
      public function set ilab2(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283438ilab2;
         if(_loc2_ !== param1)
         {
            this._100283438ilab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab2",_loc2_,param1));
         }
      }
      
      public function set ilab6(param1:LinkButton) : void
      {
         var _loc2_:Object = this._100283442ilab6;
         if(_loc2_ !== param1)
         {
            this._100283442ilab6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ilab6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab9() : Label
      {
         return this._3313740lab9;
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         addPVPGroup(3);
      }
      
      public function set lab1(param1:Label) : void
      {
         var _loc2_:Object = this._3313732lab1;
         if(_loc2_ !== param1)
         {
            this._3313732lab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab1",_loc2_,param1));
         }
      }
      
      public function set lab3(param1:Label) : void
      {
         var _loc2_:Object = this._3313734lab3;
         if(_loc2_ !== param1)
         {
            this._3313734lab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get BtnNextPage() : Button
      {
         return this._576986750BtnNextPage;
      }
      
      public function set lab5(param1:Label) : void
      {
         var _loc2_:Object = this._3313736lab5;
         if(_loc2_ !== param1)
         {
            this._3313736lab5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab5",_loc2_,param1));
         }
      }
      
      public function __BtnLastPage_click(param1:MouseEvent) : void
      {
         gotoPage(-1);
      }
      
      public function set lab4(param1:Label) : void
      {
         var _loc2_:Object = this._3313735lab4;
         if(_loc2_ !== param1)
         {
            this._3313735lab4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab4",_loc2_,param1));
         }
      }
      
      private function onInitPVPRoom(param1:Object) : void
      {
         var _loc3_:* = undefined;
         cleanRoomCanvas();
         if(!param1)
         {
            return;
         }
         _pvpRoom = new Object();
         _pvpRoom = param1;
         var _loc2_:Number = 0;
         for each(_loc3_ in _pvpRoom)
         {
            if(_loc3_)
            {
               _loc2_++;
            }
         }
         if(Boolean(_loc2_) && !ToolKit.isEqual(_loc2_,0))
         {
            _roomNum = _loc2_;
            _pageIndex = 1;
            _maxPageIndex = Math.ceil(_roomNum / _everyPageRoomNum);
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
            roomPage.text = "1/1";
            initRoomCanvas();
         }
         else
         {
            _pageIndex = 1;
            _maxPageIndex = 1;
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
         }
         var _loc4_:* = _core.view.getUI(ViewManager.SHADE_PVP);
         if((Boolean(_loc4_)) && !_loc4_.visible)
         {
            _loc4_.visible = true;
         }
         this.visible = true;
      }
      
      private function _PVPRoomListPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PVPRoomListPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "pnt";
         BindingManager.executeBindings(this,"_PVPRoomListPanel_DataGridColumn2",_PVPRoomListPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function _PVPRoomListPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PVP_ROOM_P[0];
         _loc1_ = Language.PVP_ROOM_P[14];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.PVP_ROOM_P[15];
         _loc1_ = Language.PVP_ROOM_P[12];
         _loc1_ = Language.PVP_ROOM_P[13];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.PVP_ROOM_P[16];
         _loc1_ = Language.PVP_ROOM_P[17];
         _loc1_ = Language.PVP_ROOM_P[18];
      }
      
      private function gotoPage(param1:Number) : void
      {
         if(ToolKit.isEqual(param1,1))
         {
            if(ToolKit.isBigOrEqual(_pageIndex,_maxPageIndex))
            {
               return;
            }
            ++_pageIndex;
         }
         else
         {
            if(ToolKit.isSmallOrEqual(_pageIndex,1))
            {
               return;
            }
            --_pageIndex;
         }
         cleanRoomCanvas();
         initRoomCanvas();
      }
      
      public function set lab7(param1:Label) : void
      {
         var _loc2_:Object = this._3313738lab7;
         if(_loc2_ !== param1)
         {
            this._3313738lab7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab7",_loc2_,param1));
         }
      }
      
      public function __ilab7_click(param1:MouseEvent) : void
      {
         selectRoomInfo(7);
      }
      
      public function set lab9(param1:Label) : void
      {
         var _loc2_:Object = this._3313740lab9;
         if(_loc2_ !== param1)
         {
            this._3313740lab9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get BtnLastPage() : Button
      {
         return this._1988140193BtnLastPage;
      }
      
      public function set lab2(param1:Label) : void
      {
         var _loc2_:Object = this._3313733lab2;
         if(_loc2_ !== param1)
         {
            this._3313733lab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab2",_loc2_,param1));
         }
      }
      
      public function set PVPRoomTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._92391853PVPRoomTitle;
         if(_loc2_ !== param1)
         {
            this._92391853PVPRoomTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PVPRoomTitle",_loc2_,param1));
         }
      }
      
      public function __BtnNextPage_click(param1:MouseEvent) : void
      {
         gotoPage(1);
      }
      
      public function onDelGroupMember(param1:Object, param2:Number) : void
      {
         var _loc4_:* = undefined;
         if(!param2)
         {
            return;
         }
         if(!_pvpRoom)
         {
            return;
         }
         cleanRoomCanvas();
         _pvpRoom[param2] = param1;
         var _loc3_:Number = 0;
         for each(_loc4_ in _pvpRoom)
         {
            if(_loc4_)
            {
               _loc3_++;
            }
         }
         if(Boolean(_loc3_) && !ToolKit.isEqual(_loc3_,0))
         {
            _roomNum = _loc3_;
            _pageIndex = _pageIndex;
            _maxPageIndex = Math.ceil(_roomNum / _everyPageRoomNum);
            if(ToolKit.isBigThan(_pageIndex,_maxPageIndex))
            {
               _pageIndex = 1;
            }
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
            initRoomCanvas();
            return;
         }
         _pageIndex = 1;
         _maxPageIndex = 1;
         BtnLastPage.enabled = false;
         BtnNextPage.enabled = false;
      }
      
      public function set btn3(param1:Button) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set btn4(param1:Button) : void
      {
         var _loc2_:Object = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      public function set btn1(param1:Button) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn5(param1:Button) : void
      {
         var _loc2_:Object = this._3034457btn5;
         if(_loc2_ !== param1)
         {
            this._3034457btn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:Button) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get llab6() : Label
      {
         return this._103054005llab6;
      }
      
      [Bindable(event="propertyChange")]
      public function get llab1() : Label
      {
         return this._103054000llab1;
      }
      
      public function set btn8(param1:Button) : void
      {
         var _loc2_:Object = this._3034460btn8;
         if(_loc2_ !== param1)
         {
            this._3034460btn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get llab3() : Label
      {
         return this._103054002llab3;
      }
      
      public function set btn9(param1:Button) : void
      {
         var _loc2_:Object = this._3034461btn9;
         if(_loc2_ !== param1)
         {
            this._3034461btn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn9",_loc2_,param1));
         }
      }
      
      public function set btn7(param1:Button) : void
      {
         var _loc2_:Object = this._3034459btn7;
         if(_loc2_ !== param1)
         {
            this._3034459btn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get llab8() : Label
      {
         return this._103054007llab8;
      }
      
      public function set lab6(param1:Label) : void
      {
         var _loc2_:Object = this._3313737lab6;
         if(_loc2_ !== param1)
         {
            this._3313737lab6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab6",_loc2_,param1));
         }
      }
      
      public function __btn8_click(param1:MouseEvent) : void
      {
         addPVPGroup(8);
      }
      
      [Bindable(event="propertyChange")]
      public function get llab2() : Label
      {
         return this._103054001llab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get llab4() : Label
      {
         return this._103054003llab4;
      }
      
      public function set btn6(param1:Button) : void
      {
         var _loc2_:Object = this._3034458btn6;
         if(_loc2_ !== param1)
         {
            this._3034458btn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6",_loc2_,param1));
         }
      }
      
      public function onUpdatePVPGroupPass(param1:Number, param2:String) : void
      {
         var _loc3_:* = undefined;
         if(_pvpRoom[param1])
         {
            _pvpRoom[param1]["pass"] = param2;
         }
         for(_loc3_ in _roomObj)
         {
            if(Boolean(_roomObj[_loc3_]) && ToolKit.isEqual(_roomObj[_loc3_].roomId,param1))
            {
               _roomObj[_loc3_]["pass"] = param2;
            }
         }
      }
      
      private function _PVPRoomListPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PVPRoomListPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_PVPRoomListPanel_DataGridColumn1",_PVPRoomListPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function __ilab4_click(param1:MouseEvent) : void
      {
         selectRoomInfo(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get llab9() : Label
      {
         return this._103054008llab9;
      }
      
      [Bindable(event="propertyChange")]
      public function get llab5() : Label
      {
         return this._103054004llab5;
      }
      
      [Bindable(event="propertyChange")]
      public function get llab7() : Label
      {
         return this._103054006llab7;
      }
      
      private function enterRoomQuickly() : void
      {
         var pattern:RegExp = null;
         pattern = /[0-9]{0,6}/;
         var func:Function = function(param1:String):void
         {
            var bb:Function;
            var result:String = param1;
            if(result == "")
            {
               return;
            }
            if(!pattern.test(result))
            {
               return;
            }
            bb = function(param1:String):void
            {
               if(param1 == "")
               {
                  return;
               }
               if(!pattern.test(param1))
               {
                  return;
               }
               if(_pvpRoom[int(result)]["pass"] == param1)
               {
                  _core.remote.call("quickEnterRoom",null,int(result),int(param1));
                  return;
               }
               if(_helpAlert)
               {
                  PopUpManager.removePopUp(_helpAlert);
                  _helpAlert = null;
               }
               _helpAlert = Alert.show(Language.PVP_ROOM_P[19],"",Alert.YES,null,null);
            };
            if(Boolean(_pvpRoom[int(result)]) && Boolean(_pvpRoom[int(result)]["pass"]) && _pvpRoom[int(result)]["pass"] != "")
            {
               if(timer)
               {
                  timer.stop();
                  timer.removeEventListener(TimerEvent.TIMER,endTimer);
                  timer = null;
               }
               timer = new Timer(500);
               timer.addEventListener(TimerEvent.TIMER,endTimer);
               timer.start();
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PVP_ROOM_P[10].toString().replace("{num}",result),"",bb);
            }
            else
            {
               _core.remote.call("quickEnterRoom",null,int(result));
            }
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PVP_ROOM_P[11],"",func);
      }
      
      private function onCreatePVPRoom(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            _loc2_.showPVPGroupPanel(param1);
         }
      }
      
      public function closePanel() : void
      {
         if(this.visible)
         {
            _core.remote.call("leavePVPRoom",null);
            this.PVPRoomTitle.parentDocument.hide();
         }
      }
      
      public function set lab8(param1:Label) : void
      {
         var _loc2_:Object = this._3313739lab8;
         if(_loc2_ !== param1)
         {
            this._3313739lab8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab8",_loc2_,param1));
         }
      }
      
      public function set BtnNextPage(param1:Button) : void
      {
         var _loc2_:Object = this._576986750BtnNextPage;
         if(_loc2_ !== param1)
         {
            this._576986750BtnNextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BtnNextPage",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastPVPRank() : DataGrid
      {
         return this._743889664lastPVPRank;
      }
      
      public function __btn5_click(param1:MouseEvent) : void
      {
         addPVPGroup(5);
      }
      
      public function ___PVPRoomListPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function init() : void
      {
         this.PVPRoomTitle.closeFunc = closePanel;
      }
      
      public function __ilab1_click(param1:MouseEvent) : void
      {
         selectRoomInfo(1);
      }
      
      public function __ilab9_click(param1:MouseEvent) : void
      {
         selectRoomInfo(9);
      }
      
      public function ___PVPRoomListPanel_Button4_click(param1:MouseEvent) : void
      {
         enterRoomQuickly();
      }
      
      private function endTimer(param1:TimerEvent) : void
      {
         _core.view.getUI(ViewManager.PANEL_INPUT).show();
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,endTimer);
         timer = null;
      }
      
      private function addPVPGroup(param1:Number) : void
      {
         var pattern:RegExp = null;
         var bb:Function = null;
         var index:Number = param1;
         if(!_roomObj[index])
         {
            return;
         }
         if(ToolKit.isEqual(_roomObj[index].roomId,-1) || ToolKit.isEqual(_roomObj[index].leaderId,-1))
         {
            return;
         }
         if(ToolKit.isBigThan(_core.player.level,_roomObj[index].max) || ToolKit.isSmallThan(_core.player.level,_roomObj[index].min))
         {
            _core.sysMidNote(Language.PVP_ROOM_P[8]);
         }
         if(!_roomObj[index]["pass"] || _roomObj[index]["pass"] == "")
         {
            _core.remote.call("addPVPGroup",new Responder(onAddPVPGroup),_roomObj[index].roomId,_roomObj[index].leaderId);
         }
         else
         {
            pattern = /[0-9]{0,6}/;
            bb = function(param1:String):void
            {
               if(param1 == "")
               {
                  return;
               }
               if(!pattern.test(param1))
               {
                  return;
               }
               if(_roomObj[index]["pass"] == param1)
               {
                  _core.remote.call("addPVPGroup",new Responder(onAddPVPGroup),_roomObj[index].roomId,_roomObj[index].leaderId,int(param1));
                  return;
               }
               if(_helpAlert)
               {
                  PopUpManager.removePopUp(_helpAlert);
                  _helpAlert = null;
               }
               _helpAlert = Alert.show(Language.PVP_ROOM_P[19],"",Alert.YES,null,null);
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PVP_ROOM_P[10].toString().replace("{num}",index),"",bb);
         }
      }
      
      public function onAddRoomMember(param1:Object) : void
      {
         var _loc3_:* = undefined;
         if(!param1)
         {
            return;
         }
         if(!_pvpRoom)
         {
            _pvpRoom = new Object();
         }
         _pvpRoom[param1.id] = param1;
         var _loc2_:Number = 0;
         for each(_loc3_ in _pvpRoom)
         {
            if(_loc3_)
            {
               _loc2_++;
            }
         }
         if(Boolean(_loc2_) && !ToolKit.isEqual(_loc2_,0))
         {
            _roomNum = _loc2_;
            _pageIndex = _pageIndex;
            _maxPageIndex = Math.ceil(_roomNum / _everyPageRoomNum);
            if(ToolKit.isBigThan(_pageIndex,_maxPageIndex))
            {
               _pageIndex = 1;
            }
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
            initRoomCanvas();
         }
         else
         {
            _pageIndex = 1;
            _maxPageIndex = 1;
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
         }
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         addPVPGroup(2);
      }
      
      private function cleanRoomCanvas() : void
      {
         var _loc1_:Number = 1;
         while(_loc1_ <= _everyPageRoomNum)
         {
            _roomObj[_loc1_] = new Object();
            _roomObj[_loc1_].roomId = -1;
            _roomObj[_loc1_].leaderId = -1;
            _roomObj[_loc1_].pass = -1;
            _roomObj[_loc1_].info = "";
            _roomObj[_loc1_].min = 0;
            _roomObj[_loc1_].max = 150;
            _roomObj[_loc1_].pass = "";
            this["lab" + _loc1_].visible = false;
            this["llab" + _loc1_].visible = false;
            this["ilab" + _loc1_].visible = false;
            this["btn" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      private function selectRoomInfo(param1:Number) : void
      {
         var _loc2_:String = null;
         if(Boolean(_roomObj[param1]) && _roomObj[param1].info != "")
         {
            if(_helpAlert)
            {
               PopUpManager.removePopUp(_helpAlert);
               _helpAlert = null;
            }
            _loc2_ = _roomObj[param1].info.toString();
            _helpAlert = Alert.show(_loc2_,null,Alert.YES,null,null);
            _helpAlert.alpha = 1;
         }
      }
      
      public function onCreatePVPRoomCast(param1:Object) : void
      {
         var _loc3_:* = undefined;
         if(!param1)
         {
            return;
         }
         if(!_pvpRoom)
         {
            _pvpRoom = new Object();
         }
         _pvpRoom[param1.id] = param1;
         var _loc2_:Number = 0;
         for each(_loc3_ in _pvpRoom)
         {
            if(_loc3_)
            {
               _loc2_++;
            }
         }
         if(Boolean(_loc2_) && !ToolKit.isEqual(_loc2_,0))
         {
            _roomNum = _loc2_;
            _pageIndex = _pageIndex;
            _maxPageIndex = Math.ceil(_roomNum / _everyPageRoomNum);
            if(ToolKit.isBigThan(_pageIndex,_maxPageIndex))
            {
               _pageIndex = 1;
            }
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
            initRoomCanvas();
         }
         else
         {
            _pageIndex = 1;
            _maxPageIndex = 1;
            BtnLastPage.enabled = false;
            BtnNextPage.enabled = false;
         }
      }
      
      public function set BtnLastPage(param1:Button) : void
      {
         var _loc2_:Object = this._1988140193BtnLastPage;
         if(_loc2_ !== param1)
         {
            this._1988140193BtnLastPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BtnLastPage",_loc2_,param1));
         }
      }
      
      private function initRoomCanvas() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         for each(_loc3_ in _pvpRoom)
         {
            if(_loc3_)
            {
               _loc1_++;
               if(ToolKit.isBigOrEqual(_loc2_,_everyPageRoomNum))
               {
                  break;
               }
               if(ToolKit.isSmallOrEqual(_loc1_,_pageIndex * _everyPageRoomNum) && ToolKit.isBigThan(_loc1_,ToolKit.minus(_pageIndex,1) * _everyPageRoomNum))
               {
                  _loc2_++;
                  _roomObj[_loc2_] = new Object();
                  _roomObj[_loc2_].roomId = _loc3_.id;
                  _roomObj[_loc2_].leaderId = _loc3_.leaderId;
                  _roomObj[_loc2_].min = _loc3_["limit"]["lev"]["min"];
                  _roomObj[_loc2_].max = _loc3_["limit"]["lev"]["max"];
                  _roomObj[_loc2_].pass = _loc3_["pass"];
                  _roomObj[_loc2_].info = "";
                  if(Boolean(_loc3_.memberList[1]) && Boolean(_loc3_.memberList[1].cid))
                  {
                     _roomObj[_loc2_].info = _roomObj[_loc2_].info + Language.PVP_ROOM_P[1] + " " + _loc3_.memberList[1].name + "  lv: " + _loc3_.memberList[1].level + "\n";
                  }
                  if(Boolean(_loc3_.memberList[2]) && Boolean(_loc3_.memberList[2].cid))
                  {
                     _roomObj[_loc2_].info = _roomObj[_loc2_].info + Language.PVP_ROOM_P[2] + " " + _loc3_.memberList[2].name + "  lv:" + _loc3_.memberList[2].level + "\n";
                  }
                  if(Boolean(_loc3_.memberList[3]) && Boolean(_loc3_.memberList[3].cid))
                  {
                     _roomObj[_loc2_].info = _roomObj[_loc2_].info + Language.PVP_ROOM_P[3] + " " + _loc3_.memberList[3].name + "  lv:" + _loc3_.memberList[3].level + "\n";
                  }
                  this["lab" + _loc2_].text = Language.PVP_ROOM_P[4] + _loc3_.id;
                  this["llab" + _loc2_].text = Language.PVP_ROOM_P[5] + "(" + _loc3_["limit"]["lev"]["min"] + "-" + _loc3_["limit"]["lev"]["max"] + ")";
                  this["ilab" + _loc2_].label = Language.PVP_ROOM_P[6];
                  this["btn" + _loc2_].label = Language.PVP_ROOM_P[7] + "(1/3)";
                  _loc4_ = 0;
                  for each(_loc5_ in _loc3_.memberList)
                  {
                     if(Boolean(_loc5_) && Boolean(_loc5_.cid))
                     {
                        _loc4_++;
                     }
                  }
                  this["btn" + _loc2_].visible = true;
                  this["btn" + _loc2_].enabled = true;
                  if(Boolean(_loc4_) && ToolKit.isBigThan(_loc4_,0))
                  {
                     this["btn" + _loc2_].label = Language.PVP_ROOM_P[7] + "(" + _loc4_ + "/3)";
                     if(ToolKit.isEqual(_loc4_,3))
                     {
                        this["btn" + _loc2_].enabled = false;
                     }
                  }
                  this["lab" + _loc2_].visible = true;
                  this["llab" + _loc2_].visible = true;
                  this["ilab" + _loc2_].visible = true;
               }
            }
         }
         roomPage.text = _pageIndex + "/" + _maxPageIndex;
         if(ToolKit.isBigThan(_pageIndex,1))
         {
            BtnLastPage.enabled = true;
         }
         if(ToolKit.isBigThan(_maxPageIndex,_pageIndex))
         {
            BtnNextPage.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : Button
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : Button
      {
         return this._3034454btn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : Button
      {
         return this._3034455btn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5() : Button
      {
         return this._3034457btn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6() : Button
      {
         return this._3034458btn6;
      }
      
      public function __ilab6_click(param1:MouseEvent) : void
      {
         selectRoomInfo(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn8() : Button
      {
         return this._3034460btn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn9() : Button
      {
         return this._3034461btn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : Button
      {
         return this._3034456btn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7() : Button
      {
         return this._3034459btn7;
      }
      
      public function set llab3(param1:Label) : void
      {
         var _loc2_:Object = this._103054002llab3;
         if(_loc2_ !== param1)
         {
            this._103054002llab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab3",_loc2_,param1));
         }
      }
      
      public function set llab4(param1:Label) : void
      {
         var _loc2_:Object = this._103054003llab4;
         if(_loc2_ !== param1)
         {
            this._103054003llab4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab4",_loc2_,param1));
         }
      }
      
      public function set llab2(param1:Label) : void
      {
         var _loc2_:Object = this._103054001llab2;
         if(_loc2_ !== param1)
         {
            this._103054001llab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab2",_loc2_,param1));
         }
      }
      
      public function set llab6(param1:Label) : void
      {
         var _loc2_:Object = this._103054005llab6;
         if(_loc2_ !== param1)
         {
            this._103054005llab6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab6",_loc2_,param1));
         }
      }
      
      public function set llab8(param1:Label) : void
      {
         var _loc2_:Object = this._103054007llab8;
         if(_loc2_ !== param1)
         {
            this._103054007llab8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab8",_loc2_,param1));
         }
      }
      
      public function set llab1(param1:Label) : void
      {
         var _loc2_:Object = this._103054000llab1;
         if(_loc2_ !== param1)
         {
            this._103054000llab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab1",_loc2_,param1));
         }
      }
      
      public function set llab7(param1:Label) : void
      {
         var _loc2_:Object = this._103054006llab7;
         if(_loc2_ !== param1)
         {
            this._103054006llab7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab7",_loc2_,param1));
         }
      }
      
      private function _PVPRoomListPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            PVPRoomTitle.text = param1;
         },"PVPRoomTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            BtnLastPage.label = param1;
         },"BtnLastPage.label");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            roomPage.filters = param1;
         },"roomPage.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            BtnNextPage.label = param1;
         },"BtnNextPage.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPRoomListPanel_Button3.label = param1;
         },"_PVPRoomListPanel_Button3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPRoomListPanel_Button4.label = param1;
         },"_PVPRoomListPanel_Button4.label");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab1.filters = param1;
         },"lab1.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab2.filters = param1;
         },"lab2.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab3.filters = param1;
         },"lab3.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab4.filters = param1;
         },"lab4.filters");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab5.filters = param1;
         },"lab5.filters");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab6.filters = param1;
         },"lab6.filters");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab7.filters = param1;
         },"lab7.filters");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab8.filters = param1;
         },"lab8.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            lab9.filters = param1;
         },"lab9.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _PVPRoomListPanel_Label19.filters = param1;
         },"_PVPRoomListPanel_Label19.filters");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPRoomListPanel_Label19.text = param1;
         },"_PVPRoomListPanel_Label19.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPRoomListPanel_DataGridColumn1.headerText = param1;
         },"_PVPRoomListPanel_DataGridColumn1.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPRoomListPanel_DataGridColumn2.headerText = param1;
         },"_PVPRoomListPanel_DataGridColumn2.headerText");
         result[18] = binding;
         return result;
      }
      
      public function set llab9(param1:Label) : void
      {
         var _loc2_:Object = this._103054008llab9;
         if(_loc2_ !== param1)
         {
            this._103054008llab9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab9",_loc2_,param1));
         }
      }
      
      public function set llab5(param1:Label) : void
      {
         var _loc2_:Object = this._103054004llab5;
         if(_loc2_ !== param1)
         {
            this._103054004llab5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"llab5",_loc2_,param1));
         }
      }
      
      private function onGetLastPVPRank(param1:Object) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         _loadLastRank = true;
         if(param1)
         {
            _loc2_ = new ArrayCollection();
            for(_loc3_ in param1)
            {
               if(param1[_loc3_])
               {
                  if(param1[_loc3_].rank)
                  {
                     param1[_loc3_].rank = Number(param1[_loc3_].rank);
                  }
                  _loc2_.addItem(param1[_loc3_]);
               }
            }
            _loc2_ = sortAc(_loc2_,1);
            this.lastPVPRank.dataProvider = _loc2_;
         }
      }
      
      public function __btn7_click(param1:MouseEvent) : void
      {
         addPVPGroup(7);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PVPRoomListPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PVPRoomListPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PVPRoomListPanelWatcherSetupUtil");
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
      
      public function __ilab3_click(param1:MouseEvent) : void
      {
         selectRoomInfo(3);
      }
      
      public function __btn4_click(param1:MouseEvent) : void
      {
         addPVPGroup(4);
      }
      
      public function returnPVPRoom(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         onInitPVPRoom(param1);
      }
      
      public function onAddPVPGroup(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            _loc2_.showPVPGroupPanel(param1);
         }
      }
      
      public function __ilab8_click(param1:MouseEvent) : void
      {
         selectRoomInfo(8);
      }
      
      public function ___PVPRoomListPanel_Button3_click(param1:MouseEvent) : void
      {
         createRoom();
      }
      
      private function pvpRoomCompleteHandler(param1:Event) : void
      {
         if(!_lastInitTime)
         {
            _lastInitTime = new Date().time;
         }
         else
         {
            if(ToolKit.isSmallThan(ToolKit.minus(new Date().time,_lastInitTime),1000))
            {
               return;
            }
            _lastInitTime = new Date().time;
         }
         _core.remote.call("initPVPRoom",new Responder(onInitPVPRoom));
         _core.remote.call("getLastPVPRank",new Responder(onGetLastPVPRank));
      }
      
      private function createRoom() : void
      {
         _core.remote.call("createPVPRoom",new Responder(onCreatePVPRoom));
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         addPVPGroup(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get r1() : Canvas
      {
         return this._3583r1;
      }
   }
}

