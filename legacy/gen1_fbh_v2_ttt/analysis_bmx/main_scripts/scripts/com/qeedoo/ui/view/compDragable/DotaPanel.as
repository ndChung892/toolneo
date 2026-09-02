package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PropertyBar;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compGameStage.NPCView;
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
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DotaPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const DOTA_GAME_INIT_NPC_NUM:int = 5;
      
      public static const DOTA_GAME_INIT_TOWER_NUM:int = 2;
      
      public static const DOTA_GAME_INIT_CENTER_NUM:int = 1;
      
      public static const DOTA_GAME_CENTER_HP:Number = 100000000;
      
      public static var bombArr:Array = null;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":587,
               "height":465,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_DotaPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"infoBtn",
                  "events":{"click":"__infoBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "25";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"rankBtn",
                  "events":{"click":"__rankBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "95";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "enabled":false,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"awardBtn",
                  "events":{"click":"__awardBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "165";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "styleName":"HorizontalTab",
                        "width":88,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"ruleBtn",
                  "events":{"click":"__ruleBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "255";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"awardVs",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":400,
                        "x":0,
                        "y":55,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":572,
                                          "height":370,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_DotaPanel_Image1"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"myScoreLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "57";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":150,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"myScore",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "70";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":150,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"battleScroeA",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "110";
                                                this.top = "60";
                                                this.textAlign = "center";
                                                this.color = 16711680;
                                                this.fontSize = 26;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":60,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PropertyBar,
                                             "id":"centerHPABar",
                                             "stylesFactory":function():void
                                             {
                                                this.cornerRadius = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":95,
                                                   "y":150,
                                                   "width":115,
                                                   "height":12,
                                                   "barCornerRadius":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"centerHPA",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "87";
                                                this.top = "147";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":130,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPA11",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "182";
                                                this.top = "194";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPA10",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "100";
                                                this.top = "194";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPA21",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "182";
                                                this.top = "211";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPA20",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "100";
                                                this.top = "211";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPA31",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "182";
                                                this.top = "228";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPA30",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "100";
                                                this.top = "228";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"NPCLevelA",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "78";
                                                this.top = "328";
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":30,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"NPCAttackA",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "117";
                                                this.top = "328";
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"NPCDefenceA",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "163";
                                                this.top = "328";
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"battleScroeB",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "405";
                                                this.top = "60";
                                                this.textAlign = "center";
                                                this.color = 16711680;
                                                this.fontSize = 26;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":60,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PropertyBar,
                                             "id":"centerHPBBar",
                                             "stylesFactory":function():void
                                             {
                                                this.cornerRadius = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":390,
                                                   "y":150,
                                                   "width":115,
                                                   "height":12,
                                                   "barCornerRadius":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"centerHPB",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "382";
                                                this.top = "147";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":130,
                                                   "height":110,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPB10",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "395";
                                                this.top = "194";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPB11",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "477";
                                                this.top = "194";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPB20",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "395";
                                                this.top = "211";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPB21",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "477";
                                                this.top = "211";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPB30",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "395";
                                                this.top = "228";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"towerHPB31",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "477";
                                                this.top = "228";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"NPCLevelB",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "378";
                                                this.top = "328";
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":30,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"NPCAttackB",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "417";
                                                this.top = "328";
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"NPCDefenceB",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "463";
                                                this.top = "328";
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":45,
                                                   "height":30,
                                                   "mouseEnabled":false
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
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":572,
                                          "height":370,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_DotaPanel_Image2"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rankLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "377";
                                                this.top = "12";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                                this.fontSize = 30;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":20,
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"lineBtn1",
                                             "events":{"click":"__lineBtn1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-200";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selected":true,
                                                   "styleName":"HorizontalTab",
                                                   "width":40,
                                                   "y":15
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"lineBtn2",
                                             "events":{"click":"__lineBtn2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-150";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selected":false,
                                                   "styleName":"HorizontalTab",
                                                   "width":40,
                                                   "y":15
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"lineBtn3",
                                             "events":{"click":"__lineBtn3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "150";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selected":false,
                                                   "visible":false,
                                                   "styleName":"HorizontalTab",
                                                   "width":40,
                                                   "y":15
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"lineBtn4",
                                             "events":{"click":"__lineBtn4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "200";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selected":false,
                                                   "visible":false,
                                                   "styleName":"HorizontalTab",
                                                   "width":40,
                                                   "y":15
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"rankData",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = 5;
                                                this.horizontalCenter = "0";
                                                this.top = "54";
                                                this.textAlign = "center";
                                                this.fontSize = 16;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "selectable":false,
                                                   "height":250,
                                                   "rowHeight":26,
                                                   "width":510,
                                                   "headerHeight":34,
                                                   "columns":[_DotaPanel_DataGridColumn1_i(),_DotaPanel_DataGridColumn2_i(),_DotaPanel_DataGridColumn3_i(),_DotaPanel_DataGridColumn4_i(),_DotaPanel_DataGridColumn5_i()]
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
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":572,
                                          "height":370,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_DotaPanel_Image3",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "2";
                                                this.top = "3";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DotaPanel_Label26",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "15";
                                                this.color = 16776960;
                                                this.fontSize = 26;
                                                this.fontWeight = "bold";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":30,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"slot1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "3";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":122,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_DotaPanel_BasicGlowButton9",
                                             "events":{"click":"___DotaPanel_BasicGlowButton9_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "3";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":162,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"slot2",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "157";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":271,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_DotaPanel_BasicGlowButton10",
                                             "events":{"click":"___DotaPanel_BasicGlowButton10_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "157";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":312,
                                                   "styleName":"BtnStdRed"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"slot3",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "142";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":271,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_DotaPanel_BasicGlowButton11",
                                             "events":{"click":"___DotaPanel_BasicGlowButton11_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "142";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":312,
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
                           "stylesFactory":function():void
                           {
                              this.top = "50";
                              this.left = "5";
                              this.right = "5";
                              this.bottom = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"txt",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "5";
                                       this.top = "5";
                                       this.right = "5";
                                       this.backgroundAlpha = 0;
                                       this.fontStyle = "normal";
                                       this.fontWeight = "bold";
                                       this.textAlign = "left";
                                       this.fontSize = 12;
                                       this.borderThickness = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":310,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"gotoBtn",
                                    "events":{"click":"__gotoBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "3";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "styleName":"BtnStdRed"
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
      
      private var _367456655towerHPB11:Label;
      
      private var _367456625towerHPB20:Label;
      
      private var _655265852centerHPA:Label;
      
      private var centerListB:Object = {};
      
      private var centerListA:Object = {};
      
      public var _DotaPanel_DataGridColumn1:DataGridColumn;
      
      public var _DotaPanel_DataGridColumn2:DataGridColumn;
      
      public var _DotaPanel_DataGridColumn3:DataGridColumn;
      
      public var _DotaPanel_DataGridColumn4:DataGridColumn;
      
      public var _DotaPanel_DataGridColumn5:DataGridColumn;
      
      private var _109532659slot1:ItemSlot;
      
      private var dData:Object = {};
      
      private var _49290079NPCLevelB:Label;
      
      private var _1188124521lineBtn1:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1188124523lineBtn3:BasicGlowButton;
      
      private var resCodeConfig:Object = {
         2146:[2060100001191,2060100001192],
         2147:[2060100001200,2060100001201],
         2149:[2060100001206,2060100001207],
         2150:[2060100001215,2060100001216],
         2157:[2060100001194,2060100001195],
         2158:[2060100001197,2060100001198],
         2159:[2060100001203,2060100001204],
         2160:[2060100001209,2060100001210],
         2161:[2060100001212,2060100001213],
         2162:[2060100001218,2060100001219]
      };
      
      private var _109532661slot3:ItemSlot;
      
      private var _367457586towerHPA20:Label;
      
      private var _367456594towerHPB30:Label;
      
      private var _782850297NPCAttackB:Label;
      
      private var pointsB_tower:Array = [[355,40],[445,40],[355,150],[445,150],[355,265],[445,265]];
      
      private var _core:Core = Core.getInstance();
      
      private var _606510598awardVs:ViewStack;
      
      private var _659816920rankLabel:Label;
      
      private var _367456656towerHPB10:Label;
      
      private var timeNow:Number = 0;
      
      private var pointsB_center:Array = [[525,40],[525,150],[525,265]];
      
      private var npcAttackInfo:Array = ["100%","130%","160%"];
      
      public var _DotaPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _367457554towerHPA31:Label;
      
      private var pointsB_recover:Array = [[595,100],[595,210]];
      
      public var _DotaPanel_Label26:Label;
      
      private var rankList:ArrayCollection = new ArrayCollection();
      
      private var _655265851centerHPB:Label;
      
      private var load:Loader;
      
      private var res_load_state:int = 0;
      
      public var _DotaPanel_BasicGlowButton9:BasicGlowButton;
      
      private var _1392427054NPCDefenceA:Label;
      
      private var npcListB:Object = {};
      
      private var npcListA:Object = {};
      
      private var _49290078NPCLevelA:Label;
      
      private var _367457616towerHPA11:Label;
      
      private var _115312txt:IntroText;
      
      private var _1945385678infoBtn:BasicGlowButton;
      
      private var _2112767838battleScroeB:Label;
      
      private var _1188124522lineBtn2:BasicGlowButton;
      
      private var _1188124524lineBtn4:BasicGlowButton;
      
      private var _367456624towerHPB21:Label;
      
      private var totalRankData:Object;
      
      private var selectRankLine:int = -1;
      
      private var _1497492550myScore:Label;
      
      private var _978074256rankBtn:BasicGlowButton;
      
      private var pointsA_tower:Array = [[255,40],[165,40],[255,150],[165,150],[255,265],[165,265]];
      
      private var npcDefenceInfo:Array = ["100%","150%","250%"];
      
      private var _255572470rankData:DataGrid;
      
      mx_internal var _watchers:Array = [];
      
      private var _398540274centerHPBBar:PropertyBar;
      
      private var _367457585towerHPA21:Label;
      
      private var _367457555towerHPA30:Label;
      
      private var _398570065centerHPABar:PropertyBar;
      
      private var _1392427053NPCDefenceB:Label;
      
      private var isPlaying:Boolean = false;
      
      private var _211936761gotoBtn:BasicGlowButton;
      
      private var _109532660slot2:ItemSlot;
      
      private var _367456593towerHPB31:Label;
      
      private var pointsB:Array = [[490,38],[490,40],[490,42],[495,39],[495,41],[490,148],[490,150],[490,152],[495,149],[495,151],[490,263],[490,265],[490,267],[495,264],[495,266]];
      
      private var pointsA:Array = [[130,38],[130,40],[130,42],[125,39],[125,41],[130,148],[130,150],[130,152],[125,149],[125,151],[130,263],[130,265],[130,267],[125,264],[125,266]];
      
      private var _782850296NPCAttackA:Label;
      
      public var _DotaPanel_Image1:Image;
      
      public var _DotaPanel_Image2:Image;
      
      public var _DotaPanel_Image3:Image;
      
      private var _2112767839battleScroeA:Label;
      
      private var towerListA:Object = {};
      
      private var towerListB:Object = {};
      
      private var pointsA_recover:Array = [[30,100],[30,210]];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2061590094myScoreLabel:Label;
      
      private var _367457617towerHPA10:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var pointsA_center:Array = [[85,40],[85,150],[85,265]];
      
      private var _1548631488ruleBtn:BasicGlowButton;
      
      public var _DotaPanel_BasicGlowButton10:BasicGlowButton;
      
      public var _DotaPanel_BasicGlowButton11:BasicGlowButton;
      
      private var _1621978433awardBtn:BasicGlowButton;
      
      public function DotaPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 587;
         this.height = 465;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___DotaPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DotaPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get gotoBtn() : BasicGlowButton
      {
         return this._211936761gotoBtn;
      }
      
      public function set NPCAttackB(param1:Label) : void
      {
         var _loc2_:Object = this._782850297NPCAttackB;
         if(_loc2_ !== param1)
         {
            this._782850297NPCAttackB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NPCAttackB",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      private function npcSetPosition(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:NPCView = _core.view.getN(param1.index) as NPCView;
         if(_loc2_)
         {
            _loc2_.setSpeed(15);
            _loc2_.walkTo(param1.nx * 10,param1.ny * 10);
         }
      }
      
      public function set awardVs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._606510598awardVs;
         if(_loc2_ !== param1)
         {
            this._606510598awardVs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardVs",_loc2_,param1));
         }
      }
      
      private function centerHurt(param1:int, param2:Number) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Npc = null;
         var _loc7_:NPCView = null;
         if(!dData)
         {
            return;
         }
         if(param1 == 1)
         {
            dData.HPA = param2;
         }
         else
         {
            if(param1 != 2)
            {
               return;
            }
            dData.HPB = param2;
         }
         var _loc3_:Object = null;
         var _loc4_:Number = 0;
         if(param1 == 1)
         {
            _loc3_ = centerListA;
            _loc4_ = Number(dData.HPA);
         }
         else
         {
            _loc3_ = centerListB;
            _loc4_ = Number(dData.HPB);
         }
         for(_loc5_ in _loc3_)
         {
            _loc6_ = _loc3_[_loc5_];
            _loc7_ = _core.view.getN(_loc6_.id) as NPCView;
            if(_loc7_)
            {
               _loc7_.refreshHpBar(_loc4_,DOTA_GAME_CENTER_HP,param1);
            }
         }
      }
      
      private function _DotaPanel_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DotaPanel_inlineComponent4;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankData() : DataGrid
      {
         return this._255572470rankData;
      }
      
      public function set gotoBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._211936761gotoBtn;
         if(_loc2_ !== param1)
         {
            this._211936761gotoBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gotoBtn",_loc2_,param1));
         }
      }
      
      public function onGetDotaData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Charactor = null;
         if(!param1 || !param1.tData)
         {
            return;
         }
         dData = param1.tData;
         timeNow = param1.nt;
         isPlaying = dData.state == 1 ? true : false;
         cleanNpc();
         initNpcs(dData["npcsA"],pointsA,npcListA);
         initNpcs(dData["npcsB"],pointsB,npcListB);
         cleanTower();
         initTowers(dData["towersA"],pointsA_tower,towerListA);
         initTowers(dData["towersB"],pointsB_tower,towerListB);
         cleanCenter();
         initCenters(dData["centersA"],pointsA_center,centerListA);
         initCenters(dData["centersB"],pointsB_center,centerListB);
         initRecover(dData["recoverA"],pointsA_recover);
         initRecover(dData["recoverB"],pointsB_recover);
         if(param1.grouping)
         {
            _loc2_ = param1["cs"];
            for(_loc3_ in _loc2_)
            {
               if(_loc3_ != _core.player.id)
               {
                  _loc4_ = _core.getCharactor(Number(_loc3_));
                  if(_loc4_)
                  {
                     _loc4_.view.posX = -500;
                     _loc4_.view.posY = -500;
                  }
               }
            }
         }
      }
      
      public function onNpcBattleWithPlayerStart(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = null;
         if(param1.npcData.group == 1)
         {
            _loc2_ = npcListA;
         }
         else
         {
            _loc2_ = npcListB;
         }
         var _loc3_:Npc = _loc2_[param1.npcData.index];
         _loc3_.dotaData.inBattle = true;
         _loc3_.dotaData.busy = true;
         var _loc4_:NPCView = _core.view.getN(_loc3_.id) as NPCView;
         if(_loc4_)
         {
            if(resCodeConfig[_loc3_.dotaData.npcId])
            {
               _loc4_.reloadDota(resCodeConfig[_loc3_.dotaData.npcId][1]);
            }
            _loc4_.stop();
         }
      }
      
      public function set towerHPA31(param1:Label) : void
      {
         var _loc2_:Object = this._367457554towerHPA31;
         if(_loc2_ !== param1)
         {
            this._367457554towerHPA31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPA31",_loc2_,param1));
         }
      }
      
      public function set rankData(param1:DataGrid) : void
      {
         var _loc2_:Object = this._255572470rankData;
         if(_loc2_ !== param1)
         {
            this._255572470rankData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankData",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerHPBBar() : PropertyBar
      {
         return this._398540274centerHPBBar;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardVs() : ViewStack
      {
         return this._606510598awardVs;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankLabel() : Label
      {
         return this._659816920rankLabel;
      }
      
      private function refreshInfo(param1:Object, param2:Object) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         battleScroeA.text = dData["totalScoreA"];
         battleScroeB.text = dData["totalScoreB"];
         var _loc3_:int = 1;
         while(_loc3_ <= 3)
         {
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               this["towerHPA" + _loc3_ + _loc4_].text = "0%";
               this["towerHPB" + _loc3_ + _loc4_].text = "0%";
               _loc4_++;
            }
            _loc3_++;
         }
         if(param1)
         {
            _loc3_ = 1;
            while(_loc3_ <= 3)
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  _loc5_ = param1["A" + _loc3_ + _loc4_];
                  _loc6_ = param1["B" + _loc3_ + _loc4_];
                  if(_loc5_)
                  {
                     this["towerHPA" + _loc3_ + _loc4_].text = Math.floor(_loc5_.now * 100 / _loc5_.max) + "%";
                  }
                  if(_loc6_)
                  {
                     this["towerHPB" + _loc3_ + _loc4_].text = Math.floor(_loc6_.now * 100 / _loc6_.max) + "%";
                  }
                  _loc4_++;
               }
               _loc3_++;
            }
         }
         NPCLevelA.text = param2["lvlA"];
         NPCLevelB.text = param2["lvlB"];
         NPCAttackA.text = npcAttackInfo[int(param2["lvlA"])];
         NPCAttackB.text = npcAttackInfo[int(param2["lvlB"])];
         NPCDefenceA.text = npcDefenceInfo[int(param2["lvlA"])];
         NPCDefenceB.text = npcDefenceInfo[int(param2["lvlB"])];
      }
      
      private function initRecover(param1:Object, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(!param1)
         {
            return;
         }
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            for(_loc5_ in _loc4_)
            {
               _loc6_ = _loc4_[_loc5_];
               _loc7_ = _core.data.gameData[GamePredef.TBL_NPC][_loc6_.npcId];
               if(!(!_loc7_ || Boolean(_loc6_.isDead)))
               {
                  _loc7_.id = _loc6_.index;
                  _loc7_.posX = param2[(_loc6_.lineId - 1) * DOTA_GAME_INIT_CENTER_NUM + _loc6_.pIndex][0] * 10;
                  _loc7_.posY = param2[(_loc6_.lineId - 1) * DOTA_GAME_INIT_CENTER_NUM + _loc6_.pIndex][1] * 10;
                  _loc7_.nid = _loc6_.npcId;
                  _core.createNpc(_loc7_);
               }
            }
         }
      }
      
      public function ___DotaPanel_BasicGlowButton11_click(param1:MouseEvent) : void
      {
         getLossAward();
      }
      
      public function set towerHPA30(param1:Label) : void
      {
         var _loc2_:Object = this._367457555towerHPA30;
         if(_loc2_ !== param1)
         {
            this._367457555towerHPA30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPA30",_loc2_,param1));
         }
      }
      
      public function set centerHPBBar(param1:PropertyBar) : void
      {
         var _loc2_:Object = this._398540274centerHPBBar;
         if(_loc2_ !== param1)
         {
            this._398540274centerHPBBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerHPBBar",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc5_:BitmapData = null;
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("bomb") as Class;
         var _loc3_:MovieClip = new _loc2_();
         bombArr = [];
         var _loc4_:int = 1;
         while(_loc4_ <= _loc3_.totalFrames)
         {
            _loc3_.gotoAndStop(_loc4_);
            _loc5_ = new BitmapData(160,160,true,16777215);
            _loc5_.draw(_loc3_);
            bombArr.push(_loc5_);
            _loc4_++;
         }
         res_load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
      }
      
      private function cleanTower() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Npc = null;
         var _loc3_:Object = null;
         var _loc4_:Npc = null;
         if(towerListA)
         {
            for(_loc1_ in towerListA)
            {
               _loc2_ = towerListA[_loc1_];
               _core.view.removeN(_loc2_.id);
            }
            towerListA = {};
         }
         if(towerListB)
         {
            for(_loc3_ in towerListB)
            {
               _loc4_ = towerListB[_loc3_];
               _core.view.removeN(_loc4_.id);
            }
            towerListB = {};
         }
      }
      
      public function onGroupHurtByNpc(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         onNpcBattleWithPlayerEnd({"npcData":param1.npcData});
         centerHurt(param1.npcData.group,param1.lefthp);
      }
      
      private function getLossAward() : void
      {
         _core.remote.call("dotaGetLossAward",null);
      }
      
      public function set towerHPA20(param1:Label) : void
      {
         var _loc2_:Object = this._367457586towerHPA20;
         if(_loc2_ !== param1)
         {
            this._367457586towerHPA20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPA20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myScore() : Label
      {
         return this._1497492550myScore;
      }
      
      [Bindable(event="propertyChange")]
      public function get myScoreLabel() : Label
      {
         return this._2061590094myScoreLabel;
      }
      
      public function set rankLabel(param1:Label) : void
      {
         var _loc2_:Object = this._659816920rankLabel;
         if(_loc2_ !== param1)
         {
            this._659816920rankLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankLabel",_loc2_,param1));
         }
      }
      
      private function npcMove(param1:Npc) : void
      {
         var _loc7_:Number = NaN;
         if(Boolean(!isPlaying || !param1 || !param1.dotaData) || Boolean(param1.dotaData.isDead) || Boolean(param1.dotaData.inBattle))
         {
            return;
         }
         var _loc2_:int = int(param1.dotaData.group);
         var _loc3_:Array = null;
         if(_loc2_ == 1)
         {
            _loc3_ = pointsB_center;
         }
         else
         {
            _loc3_ = pointsA_center;
         }
         var _loc4_:int = int(param1.dotaData.lineId);
         var _loc5_:Array = _loc3_[_loc4_ - 1];
         var _loc6_:NPCView = _core.view.getN(param1.id) as NPCView;
         if(_loc6_)
         {
            _loc7_ = Number(param1.dotaData.speed);
            _loc7_ = _loc7_ / GamePredef.GLOBAL_FRAME_RATE * 10;
            _loc6_.setSpeed(1.7);
            if(resCodeConfig[param1.dotaData.npcId])
            {
               _loc6_.reloadDota(resCodeConfig[param1.dotaData.npcId][0]);
            }
            _loc6_.walkTo(_loc5_[0] * 10,_loc5_[1] * 10);
         }
      }
      
      public function __lineBtn2_click(param1:MouseEvent) : void
      {
         lineChange(4);
      }
      
      private function centerDead(param1:Object) : void
      {
         var _loc4_:NPCView = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Npc = getDotaNpc(param1,centerListA,centerListB);
         if(_loc2_)
         {
            param1.isDead = true;
            _loc4_ = _core.view.getN(_loc2_.id) as NPCView;
            _core.view.removeN(_loc2_.id);
            if(_loc4_)
            {
               _loc4_.dotaDead();
            }
            _loc4_ = _core.view.getN(_loc2_.id) as NPCView;
            if(_loc4_)
            {
               _loc4_.refreshHpBar(0,param1.maxhp,param1.group);
            }
         }
         var _loc3_:Object = null;
         if(param1.group == 1)
         {
            _loc3_ = dData["towersA"];
         }
         else
         {
            _loc3_ = dData["towersB"];
         }
         if(_loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_ = _loc3_[_loc5_];
               if((Boolean(_loc6_)) && _loc6_.index == param1.index)
               {
                  _loc6_.isDead = true;
                  break;
               }
               _loc5_++;
            }
         }
      }
      
      public function onNpcBattleWithPlayerEnd(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Npc = null;
         var _loc5_:NPCView = null;
         if(!param1 || !param1.npcData)
         {
            return;
         }
         var _loc2_:Object = param1.npcData;
         if(_loc2_.isDead)
         {
            npcDead(_loc2_);
         }
         else
         {
            _loc3_ = null;
            if(_loc2_.group == 1)
            {
               _loc3_ = npcListA;
            }
            else
            {
               _loc3_ = npcListB;
            }
            _loc4_ = _loc3_[_loc2_.index];
            _loc4_.dotaData.inBattle = false;
            _loc4_.dotaData.busy = false;
            _loc4_.dotaData.hp = _loc2_.hp;
            _loc5_ = _core.view.getN(_loc4_.id) as NPCView;
            if(_loc5_)
            {
               _loc5_.refreshHpBar(_loc2_.hp,_loc2_.maxhp,_loc2_.group);
            }
            npcMove(_loc4_);
         }
      }
      
      private function _DotaPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DotaPanel_inlineComponent3;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function __ruleBtn_click(param1:MouseEvent) : void
      {
         tabClick(3);
      }
      
      public function onGetRefreshNpc(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Npc = null;
         var _loc8_:NPCView = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Npc = null;
         if(!param1)
         {
            return;
         }
         _core.sysMidMsg(Language.DOTA_PANEL[1]);
         var _loc2_:Array = param1.npcA;
         var _loc3_:Array = param1.npcB;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc6_ = _core.data.gameData[GamePredef.TBL_NPC][_loc5_.npcId];
            if(!(!_loc6_ || Boolean(_loc5_.isDead)))
            {
               _loc6_.id = _loc5_.index;
               _loc6_.posX = pointsA[(_loc5_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc5_.pIndex][0] * 10;
               _loc6_.posY = pointsA[(_loc5_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc5_.pIndex][1] * 10;
               _loc6_.nid = _loc5_.npcId;
               _loc6_.busy = false;
               _core.createNpc(_loc6_);
               _loc7_ = _core.getNpc(_loc6_.id);
               if(_loc7_)
               {
                  _loc7_.dotaData = _loc5_;
                  _loc7_.state = 101;
                  npcListA[_loc5_.index] = _loc7_;
                  npcMove(_loc7_);
                  _loc8_ = _core.view.getN(_loc7_.id) as NPCView;
                  if(_loc8_)
                  {
                     _loc8_.refreshHpBar(_loc5_.hp,_loc5_.maxhp,_loc5_.group);
                     _loc8_.dotaFaceTo(2);
                  }
               }
               dData["npcsA"][_loc5_.index] = _loc5_;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc9_ = _loc3_[_loc4_];
            _loc10_ = _core.data.gameData[GamePredef.TBL_NPC][_loc9_.npcId];
            if(!(!_loc10_ || Boolean(_loc9_.isDead)))
            {
               _loc10_.id = _loc9_.index;
               _loc10_.posX = pointsB[(_loc9_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc9_.pIndex][0] * 10;
               _loc10_.posY = pointsB[(_loc9_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc9_.pIndex][1] * 10;
               _loc10_.nid = _loc9_.npcId;
               _loc10_.busy = false;
               _core.createNpc(_loc10_);
               _loc11_ = _core.getNpc(_loc10_.id);
               if(_loc11_)
               {
                  _loc11_.dotaData = _loc9_;
                  _loc11_.state = 101;
                  npcListB[_loc9_.index] = _loc11_;
                  npcMove(_loc11_);
                  _loc8_ = _core.view.getN(_loc11_.id) as NPCView;
                  if(_loc8_)
                  {
                     _loc8_.refreshHpBar(_loc9_.hp,_loc9_.maxhp,_loc9_.group);
                     _loc8_.dotaFaceTo(6);
                  }
               }
               dData["npcsB"][_loc9_.index] = _loc9_;
            }
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPB10() : Label
      {
         return this._367456656towerHPB10;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPB11() : Label
      {
         return this._367456655towerHPB11;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      public function onCenterBattleWithPlayerEnd(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         centerHurt(param1.group,param1.lefthp);
      }
      
      public function set myScore(param1:Label) : void
      {
         var _loc2_:Object = this._1497492550myScore;
         if(_loc2_ !== param1)
         {
            this._1497492550myScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myScore",_loc2_,param1));
         }
      }
      
      public function onGetPanelData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = param1.battle;
         dData["totalScoreA"] = _loc2_["scoreA"];
         dData["totalScoreB"] = _loc2_["scoreB"];
         totalRankData = param1.rank;
         var _loc3_:Object = param1.state;
         var _loc4_:Object = param1.score;
         myScore.text = _loc4_.toString();
         rankBtn.enabled = totalRankData != null;
         awardBtn.enabled = rankBtn.enabled;
         selectRankLine = 3;
         refreshRank();
         if(int(param1.battle.HPA) < 0)
         {
            param1.battle.HPA = 0;
         }
         if(int(param1.battle.HPB) < 0)
         {
            param1.battle.HPB = 0;
         }
         centerHPABar.value = Math.floor(param1.battle.HPA);
         centerHPBBar.value = Math.floor(param1.battle.HPB);
         centerHPA.text = Math.floor(param1.battle.HPA) + "/" + DOTA_GAME_CENTER_HP;
         centerHPB.text = Math.floor(param1.battle.HPB) + "/" + DOTA_GAME_CENTER_HP;
         refreshInfo(param1["tower"],param1["npc"]);
      }
      
      public function cleanAll() : void
      {
         cleanNpc();
         cleanTower();
         cleanCenter();
      }
      
      private function _DotaPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DotaPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set myScoreLabel(param1:Label) : void
      {
         var _loc2_:Object = this._2061590094myScoreLabel;
         if(_loc2_ !== param1)
         {
            this._2061590094myScoreLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myScoreLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battleScroeA() : Label
      {
         return this._2112767839battleScroeA;
      }
      
      [Bindable(event="propertyChange")]
      public function get battleScroeB() : Label
      {
         return this._2112767838battleScroeB;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPB20() : Label
      {
         return this._367456625towerHPB20;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankBtn() : BasicGlowButton
      {
         return this._978074256rankBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPB30() : Label
      {
         return this._367456594towerHPB30;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPA10() : Label
      {
         return this._367457617towerHPA10;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPA11() : Label
      {
         return this._367457616towerHPA11;
      }
      
      private function refreshNpcConfigData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Npc = null;
         var _loc6_:NPCView = null;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.isDead)
            {
               npcDead(_loc3_);
            }
            else
            {
               _loc4_ = null;
               if(_loc3_.group == 1)
               {
                  _loc4_ = npcListA;
               }
               else
               {
                  _loc4_ = npcListB;
               }
               _loc5_ = _loc4_[_loc3_.index];
               _loc5_.inBattle = _loc3_.inBattle;
               _loc5_.inAttack = _loc3_.inAttack;
               _loc5_.busy = _loc5_.inBattle || Boolean(_loc5_.inAttack);
               _loc5_.hp = _loc3_.hp;
               _loc6_ = _core.view.getN(_loc5_.id) as NPCView;
               if(_loc6_)
               {
                  _loc6_.refreshHpBar(_loc3_.hp,_loc3_.maxhp,_loc3_.group);
                  if(_loc5_.busy)
                  {
                     if(resCodeConfig[_loc3_.npcId])
                     {
                        _loc6_.reloadDota(resCodeConfig[_loc3_.npcId][1]);
                     }
                     _loc6_.stop();
                     npcSetPosition(_loc3_);
                  }
                  else
                  {
                     npcMove(_loc5_);
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPB31() : Label
      {
         return this._367456593towerHPB31;
      }
      
      public function set NPCLevelA(param1:Label) : void
      {
         var _loc2_:Object = this._49290078NPCLevelA;
         if(_loc2_ !== param1)
         {
            this._49290078NPCLevelA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NPCLevelA",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPB21() : Label
      {
         return this._367456624towerHPB21;
      }
      
      public function ___DotaPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn() : BasicGlowButton
      {
         return this._1621978433awardBtn;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" dota load res Error ");
      }
      
      private function lineChange(param1:int) : void
      {
         lineBtn1.selected = param1 == 3;
         lineBtn2.selected = param1 == 4;
         lineBtn3.selected = param1 == 5;
         lineBtn4.selected = param1 == 6;
         selectRankLine = param1;
         refreshRank();
      }
      
      public function set NPCLevelB(param1:Label) : void
      {
         var _loc2_:Object = this._49290079NPCLevelB;
         if(_loc2_ !== param1)
         {
            this._49290079NPCLevelB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NPCLevelB",_loc2_,param1));
         }
      }
      
      private function _DotaPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DotaPanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "pvpWin";
         _loc1_.itemRenderer = _DotaPanel_ClassFactory5_c();
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_DotaPanel_DataGridColumn5",_DotaPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPA21() : Label
      {
         return this._367457585towerHPA21;
      }
      
      private function _DotaPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DotaPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function onDotaGameEnd(param1:Object) : void
      {
         if(!param1 || !isPlaying)
         {
            return;
         }
         dData.state = param1.state;
         dData.HPA = param1.HPA;
         dData.HPB = param1.HPB;
         isPlaying = false;
         if(dData.HPA == 0 && dData.HPB == 0)
         {
            _core.sysMidMsg(Language.DOTA_PANEL[5]);
         }
         else if(dData.HPA == 0)
         {
            _core.sysMidMsg(Language.DOTA_PANEL[3]);
         }
         else if(dData.HPB == 0)
         {
            _core.sysMidMsg(Language.DOTA_PANEL[4]);
         }
      }
      
      public function set lineBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1188124522lineBtn2;
         if(_loc2_ !== param1)
         {
            this._1188124522lineBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lineBtn2",_loc2_,param1));
         }
      }
      
      public function set lineBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1188124523lineBtn3;
         if(_loc2_ !== param1)
         {
            this._1188124523lineBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lineBtn3",_loc2_,param1));
         }
      }
      
      public function set lineBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1188124524lineBtn4;
         if(_loc2_ !== param1)
         {
            this._1188124524lineBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lineBtn4",_loc2_,param1));
         }
      }
      
      public function set lineBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1188124521lineBtn1;
         if(_loc2_ !== param1)
         {
            this._1188124521lineBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lineBtn1",_loc2_,param1));
         }
      }
      
      private function getRankAward() : void
      {
         _core.remote.call("dotaGetRankAward",null);
      }
      
      public function __lineBtn4_click(param1:MouseEvent) : void
      {
         lineChange(6);
      }
      
      public function set towerHPB10(param1:Label) : void
      {
         var _loc2_:Object = this._367456656towerHPB10;
         if(_loc2_ !== param1)
         {
            this._367456656towerHPB10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPB10",_loc2_,param1));
         }
      }
      
      private function initNpcs(param1:Object, param2:Array, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Boolean = false;
         var _loc10_:Npc = null;
         var _loc11_:NPCView = null;
         if(!param1)
         {
            return;
         }
         for(_loc4_ in param1)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = _core.data.gameData[GamePredef.TBL_NPC][_loc5_.npcId];
            if(!(!_loc6_ || Boolean(_loc5_.isDead)))
            {
               _loc6_.id = _loc5_.index;
               _loc7_ = Boolean(_loc5_.inAttack) || Boolean(_loc5_.inBattle);
               _loc8_ = Number(_loc5_.moveTime);
               if(!_loc7_)
               {
                  _loc8_ = _loc5_.moveTime + (timeNow - _loc5_.startMoveTime);
               }
               _loc9_ = false;
               if(_loc5_.group == 2)
               {
                  _loc6_.posX = param2[(_loc5_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc5_.pIndex][0] * 10 + _loc8_ / 1000 * _loc5_.speed * 10;
                  if(_loc6_.posX < pointsA_center[0][0] * 10)
                  {
                     _loc6_.posX = pointsA_center[0][0] * 10;
                     _loc9_ = true;
                  }
               }
               else
               {
                  _loc6_.posX = param2[(_loc5_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc5_.pIndex][0] * 10 - _loc8_ / 1000 * _loc5_.speed * 10;
                  if(_loc6_.posX > pointsB_center[0][0] * 10)
                  {
                     _loc6_.posX = pointsB_center[0][0] * 10;
                     _loc9_ = true;
                  }
               }
               _loc6_.posY = param2[(_loc5_.lineId - 1) * DOTA_GAME_INIT_NPC_NUM + _loc5_.pIndex][1] * 10;
               _loc6_.nid = _loc5_.npcId;
               _loc6_.busy = false;
               _core.createNpc(_loc6_);
               _loc10_ = _core.getNpc(_loc6_.id);
               if(_loc10_)
               {
                  _loc10_.dotaData = _loc5_;
                  _loc10_.state = 101;
                  param3[_loc4_] = _loc10_;
                  if(!_loc9_)
                  {
                     npcMove(_loc10_);
                  }
                  _loc11_ = _core.view.getN(_loc10_.id) as NPCView;
                  if(_loc11_)
                  {
                     _loc11_.refreshHpBar(_loc5_.hp,_loc5_.maxhp,_loc5_.group);
                     if(_loc9_)
                     {
                        if(resCodeConfig[_loc10_.dotaData.npcId])
                        {
                           _loc11_.reloadDota(resCodeConfig[_loc10_.dotaData.npcId][1]);
                        }
                     }
                     else if(resCodeConfig[_loc10_.dotaData.npcId])
                     {
                        _loc11_.reloadDota(resCodeConfig[_loc10_.dotaData.npcId][0]);
                     }
                     if(_loc5_.group == 1)
                     {
                        _loc11_.dotaFaceTo(2);
                     }
                     else
                     {
                        _loc11_.dotaFaceTo(6);
                     }
                  }
               }
            }
         }
      }
      
      public function ___DotaPanel_BasicGlowButton10_click(param1:MouseEvent) : void
      {
         getWinAward();
      }
      
      private function npcDead(param1:Object) : void
      {
         var _loc4_:NPCView = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Npc = getDotaNpc(param1,npcListA,npcListB);
         if(_loc2_)
         {
            param1.isDead = true;
            _loc4_ = _core.view.getN(_loc2_.id) as NPCView;
            _core.view.removeN(_loc2_.id);
            if(_loc4_)
            {
               _loc4_.dotaDead();
            }
         }
         var _loc3_:Object = null;
         if(param1.group == 1)
         {
            _loc3_ = dData["npcsA"];
         }
         else
         {
            _loc3_ = dData["npcsB"];
         }
         if(_loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_ = _loc3_[_loc5_];
               if((Boolean(_loc6_)) && _loc6_.index == param1.index)
               {
                  _loc6_.isDead = true;
                  break;
               }
               _loc5_++;
            }
         }
      }
      
      public function set txt(param1:IntroText) : void
      {
         var _loc2_:Object = this._115312txt;
         if(_loc2_ !== param1)
         {
            this._115312txt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt",_loc2_,param1));
         }
      }
      
      public function set towerHPB11(param1:Label) : void
      {
         var _loc2_:Object = this._367456655towerHPB11;
         if(_loc2_ !== param1)
         {
            this._367456655towerHPB11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPB11",_loc2_,param1));
         }
      }
      
      private function _DotaPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_BasicTitleCanvas1.text = param1;
         },"_DotaPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            infoBtn.label = param1;
         },"infoBtn.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rankBtn.label = param1;
         },"rankBtn.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn.label = param1;
         },"awardBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ruleBtn.label = param1;
         },"ruleBtn.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000394);
         },function(param1:Object):void
         {
            _DotaPanel_Image1.source = param1;
         },"_DotaPanel_Image1.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myScoreLabel.text = param1;
         },"myScoreLabel.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            battleScroeA.filters = param1;
         },"battleScroeA.filters");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return DOTA_GAME_CENTER_HP;
         },function(param1:int):void
         {
            centerHPABar.valueMax = param1;
         },"centerHPABar.valueMax");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            battleScroeB.filters = param1;
         },"battleScroeB.filters");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return DOTA_GAME_CENTER_HP;
         },function(param1:int):void
         {
            centerHPBBar.valueMax = param1;
         },"centerHPBBar.valueMax");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000396);
         },function(param1:Object):void
         {
            _DotaPanel_Image2.source = param1;
         },"_DotaPanel_Image2.source");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            rankLabel.filters = param1;
         },"rankLabel.filters");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lineBtn1.label = param1;
         },"lineBtn1.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lineBtn2.label = param1;
         },"lineBtn2.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lineBtn3.label = param1;
         },"lineBtn3.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lineBtn4.label = param1;
         },"lineBtn4.label");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return rankList;
         },function(param1:Object):void
         {
            rankData.dataProvider = param1;
         },"rankData.dataProvider");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_DataGridColumn1.headerText = param1;
         },"_DotaPanel_DataGridColumn1.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_DataGridColumn2.headerText = param1;
         },"_DotaPanel_DataGridColumn2.headerText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_DataGridColumn3.headerText = param1;
         },"_DotaPanel_DataGridColumn3.headerText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_DataGridColumn4.headerText = param1;
         },"_DotaPanel_DataGridColumn4.headerText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_DataGridColumn5.headerText = param1;
         },"_DotaPanel_DataGridColumn5.headerText");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000395);
         },function(param1:Object):void
         {
            _DotaPanel_Image3.source = param1;
         },"_DotaPanel_Image3.source");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_Label26.text = param1;
         },"_DotaPanel_Label26.text");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_BasicGlowButton9.label = param1;
         },"_DotaPanel_BasicGlowButton9.label");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_BasicGlowButton10.label = param1;
         },"_DotaPanel_BasicGlowButton10.label");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DotaPanel_BasicGlowButton11.label = param1;
         },"_DotaPanel_BasicGlowButton11.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DOTA_PANEL[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gotoBtn.label = param1;
         },"gotoBtn.label");
         result[31] = binding;
         return result;
      }
      
      private function refreshTower(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Npc = null;
         var _loc4_:NPCView = null;
         if(!param1)
         {
            return;
         }
         if(param1.isDead)
         {
            towerDead(param1);
         }
         else
         {
            _loc2_ = null;
            if(param1.group == 1)
            {
               _loc2_ = towerListA;
            }
            else
            {
               _loc2_ = towerListB;
            }
            _loc3_ = _loc2_[param1.index];
            if(_loc3_)
            {
               _loc3_.hp = param1.hp;
               _loc4_ = _core.view.getN(_loc3_.id) as NPCView;
               if(_loc4_)
               {
                  _loc4_.refreshHpBar(param1.hp,param1.maxhp,param1.group);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoBtn() : BasicGlowButton
      {
         return this._1945385678infoBtn;
      }
      
      private function tabClick(param1:int) : void
      {
         awardVs.selectedIndex = param1;
         infoBtn.selected = param1 == 0;
         rankBtn.selected = param1 == 1;
         awardBtn.selected = param1 == 2;
         ruleBtn.selected = param1 == 3;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPA30() : Label
      {
         return this._367457555towerHPA30;
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPA31() : Label
      {
         return this._367457554towerHPA31;
      }
      
      [Bindable(event="propertyChange")]
      public function get NPCAttackA() : Label
      {
         return this._782850296NPCAttackA;
      }
      
      private function gotoMap() : void
      {
         _core.remote.call("dotaGotoMap",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get towerHPA20() : Label
      {
         return this._367457586towerHPA20;
      }
      
      [Bindable(event="propertyChange")]
      public function get NPCAttackB() : Label
      {
         return this._782850297NPCAttackB;
      }
      
      public function __infoBtn_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      private function towerDead(param1:Object) : void
      {
         var _loc4_:NPCView = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Npc = getDotaNpc(param1,towerListA,towerListB);
         if(_loc2_)
         {
            param1.isDead = true;
            _loc4_ = _core.view.getN(_loc2_.id) as NPCView;
            _core.view.removeN(_loc2_.id);
            if(_loc4_)
            {
               _loc4_.dotaDead();
               if(param1.group == 1)
               {
                  _core.sysMidMsg(Language.DOTA_PANEL[2]);
               }
               else
               {
                  _core.sysMidMsg(Language.DOTA_PANEL[6]);
               }
               _loc4_.refreshHpBar(0,param1.maxhp,param1.group);
            }
         }
         var _loc3_:Object = null;
         if(param1.group == 1)
         {
            _loc3_ = dData["towersA"];
         }
         else
         {
            _loc3_ = dData["towersB"];
         }
         if(_loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_ = _loc3_[_loc5_];
               if((Boolean(_loc6_)) && _loc6_.index == param1.index)
               {
                  _loc6_.isDead = true;
                  break;
               }
               _loc5_++;
            }
         }
      }
      
      private function _DotaPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DotaPanel_DataGridColumn4 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "score";
         _loc1_.itemRenderer = _DotaPanel_ClassFactory4_c();
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_DotaPanel_DataGridColumn4",_DotaPanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function init() : void
      {
         txt.htmlText = Language.DOTA_PANEL[36];
         slot1.type = GamePredef.TBL_ITEM_TEMPLATE;
         slot1.giid = 4753;
         slot1.enabled = true;
         slot1.acceptable = false;
         slot2.type = GamePredef.TBL_ITEM_TEMPLATE;
         slot2.giid = 4751;
         slot2.enabled = true;
         slot2.acceptable = false;
         slot3.type = GamePredef.TBL_ITEM_TEMPLATE;
         slot3.giid = 4752;
         slot3.enabled = true;
         slot3.acceptable = false;
      }
      
      public function set towerHPB20(param1:Label) : void
      {
         var _loc2_:Object = this._367456625towerHPB20;
         if(_loc2_ !== param1)
         {
            this._367456625towerHPB20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPB20",_loc2_,param1));
         }
      }
      
      public function set rankBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._978074256rankBtn;
         if(_loc2_ !== param1)
         {
            this._978074256rankBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankBtn",_loc2_,param1));
         }
      }
      
      public function __lineBtn1_click(param1:MouseEvent) : void
      {
         lineChange(3);
      }
      
      public function ___DotaPanel_BasicGlowButton9_click(param1:MouseEvent) : void
      {
         getRankAward();
      }
      
      public function set towerHPB21(param1:Label) : void
      {
         var _loc2_:Object = this._367456624towerHPB21;
         if(_loc2_ !== param1)
         {
            this._367456624towerHPB21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPB21",_loc2_,param1));
         }
      }
      
      public function __rankBtn_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      private function refreshCenterConfigData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:Npc = null;
         var _loc9_:NPCView = null;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               if(_loc5_.isDead)
               {
                  centerDead(_loc5_);
               }
               else
               {
                  _loc6_ = null;
                  _loc7_ = 0;
                  if(_loc5_.group == 1)
                  {
                     _loc6_ = centerListA;
                     _loc7_ = Number(dData.HPA);
                  }
                  else
                  {
                     _loc6_ = centerListB;
                     _loc7_ = Number(dData.HPB);
                  }
                  _loc8_ = _loc6_[_loc5_.index];
                  _loc9_ = _core.view.getN(_loc8_.id) as NPCView;
                  if(_loc9_)
                  {
                     _loc9_.refreshHpBar(_loc7_,DOTA_GAME_CENTER_HP,_loc5_.group);
                  }
               }
            }
         }
      }
      
      public function set battleScroeB(param1:Label) : void
      {
         var _loc2_:Object = this._2112767838battleScroeB;
         if(_loc2_ !== param1)
         {
            this._2112767838battleScroeB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleScroeB",_loc2_,param1));
         }
      }
      
      private function _DotaPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DotaPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "group";
         _loc1_.itemRenderer = _DotaPanel_ClassFactory3_c();
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_DotaPanel_DataGridColumn3",_DotaPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function set battleScroeA(param1:Label) : void
      {
         var _loc2_:Object = this._2112767839battleScroeA;
         if(_loc2_ !== param1)
         {
            this._2112767839battleScroeA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleScroeA",_loc2_,param1));
         }
      }
      
      private function getDotaNpc(param1:Object, param2:Object, param3:Object) : Npc
      {
         if(!param1)
         {
            return null;
         }
         var _loc4_:Object = null;
         if(param1.group == 1)
         {
            _loc4_ = param2;
         }
         else
         {
            _loc4_ = param3;
         }
         return _loc4_[param1.index];
      }
      
      private function getWinAward() : void
      {
         _core.remote.call("dotaGetWinAward",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get NPCLevelB() : Label
      {
         return this._49290079NPCLevelB;
      }
      
      [Bindable(event="propertyChange")]
      public function get NPCLevelA() : Label
      {
         return this._49290078NPCLevelA;
      }
      
      public function set towerHPA11(param1:Label) : void
      {
         var _loc2_:Object = this._367457616towerHPA11;
         if(_loc2_ !== param1)
         {
            this._367457616towerHPA11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPA11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lineBtn1() : BasicGlowButton
      {
         return this._1188124521lineBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lineBtn3() : BasicGlowButton
      {
         return this._1188124523lineBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get lineBtn4() : BasicGlowButton
      {
         return this._1188124524lineBtn4;
      }
      
      public function set centerHPABar(param1:PropertyBar) : void
      {
         var _loc2_:Object = this._398570065centerHPABar;
         if(_loc2_ !== param1)
         {
            this._398570065centerHPABar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerHPABar",_loc2_,param1));
         }
      }
      
      private function getRes() : void
      {
         if(res_load_state != 0)
         {
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130101005)));
            res_load_state = 1;
         }
      }
      
      public function onTowerBattleWithPlayerEnd(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Npc = null;
         var _loc7_:NPCView = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         if(!param1 || !param1.towerData)
         {
            return;
         }
         var _loc2_:Object = param1.towerData;
         if(_loc2_.isDead)
         {
            towerDead(_loc2_);
         }
         else
         {
            _loc5_ = null;
            if(_loc2_.group == 1)
            {
               _loc5_ = towerListA;
            }
            else
            {
               _loc5_ = towerListB;
            }
            _loc6_ = _loc5_[_loc2_.index];
            _loc6_.hp = _loc2_.hp;
            _loc7_ = _core.view.getN(_loc6_.id) as NPCView;
            if(_loc7_)
            {
               _loc7_.refreshHpBar(_loc2_.hp,_loc2_.maxhp,_loc2_.group);
            }
         }
         if(_loc2_.group == 1)
         {
            _loc3_ = dData["towersA"];
         }
         else
         {
            _loc3_ = dData["towersB"];
         }
         for(_loc4_ in _loc3_)
         {
            _loc8_ = _loc3_[_loc4_];
            for(_loc9_ in _loc8_)
            {
               _loc10_ = _loc8_[_loc9_];
               if((Boolean(_loc10_)) && _loc10_.index == _loc2_.index)
               {
                  _loc10_.hp = _loc2_.hp;
                  _loc10_.isDead = _loc2_.isDead;
               }
            }
         }
      }
      
      public function set towerHPB30(param1:Label) : void
      {
         var _loc2_:Object = this._367456594towerHPB30;
         if(_loc2_ !== param1)
         {
            this._367456594towerHPB30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPB30",_loc2_,param1));
         }
      }
      
      public function set towerHPA10(param1:Label) : void
      {
         var _loc2_:Object = this._367457617towerHPA10;
         if(_loc2_ !== param1)
         {
            this._367457617towerHPA10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPA10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lineBtn2() : BasicGlowButton
      {
         return this._1188124522lineBtn2;
      }
      
      public function set ruleBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1548631488ruleBtn;
         if(_loc2_ !== param1)
         {
            this._1548631488ruleBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ruleBtn",_loc2_,param1));
         }
      }
      
      private function _DotaPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DotaPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 100;
         _loc1_.dataField = "playerName";
         _loc1_.itemRenderer = _DotaPanel_ClassFactory2_c();
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_DotaPanel_DataGridColumn2",_DotaPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function set awardBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1621978433awardBtn;
         if(_loc2_ !== param1)
         {
            this._1621978433awardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn",_loc2_,param1));
         }
      }
      
      public function set centerHPA(param1:Label) : void
      {
         var _loc2_:Object = this._655265852centerHPA;
         if(_loc2_ !== param1)
         {
            this._655265852centerHPA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerHPA",_loc2_,param1));
         }
      }
      
      public function set centerHPB(param1:Label) : void
      {
         var _loc2_:Object = this._655265851centerHPB;
         if(_loc2_ !== param1)
         {
            this._655265851centerHPB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerHPB",_loc2_,param1));
         }
      }
      
      private function _DotaPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DOTA_PANEL[0];
         _loc1_ = Language.DOTA_PANEL[7];
         _loc1_ = Language.DOTA_PANEL[8];
         _loc1_ = Language.DOTA_PANEL[9];
         _loc1_ = Language.DOTA_PANEL[10];
         _loc1_ = ResManager.getIconUrl(4130220000394);
         _loc1_ = Language.DOTA_PANEL[34];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = DOTA_GAME_CENTER_HP;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = DOTA_GAME_CENTER_HP;
         _loc1_ = ResManager.getIconUrl(4130220000396);
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.DOTA_PANEL[24];
         _loc1_ = Language.DOTA_PANEL[25];
         _loc1_ = Language.DOTA_PANEL[26];
         _loc1_ = Language.DOTA_PANEL[27];
         _loc1_ = rankList;
         _loc1_ = Language.DOTA_PANEL[19];
         _loc1_ = Language.DOTA_PANEL[20];
         _loc1_ = Language.DOTA_PANEL[21];
         _loc1_ = Language.DOTA_PANEL[22];
         _loc1_ = Language.DOTA_PANEL[23];
         _loc1_ = ResManager.getIconUrl(4130220000395);
         _loc1_ = Language.DOTA_PANEL[13];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.DOTA_PANEL[18];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.DOTA_PANEL[18];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.DOTA_PANEL[18];
         _loc1_ = Language.DOTA_PANEL[35];
      }
      
      private function initCenters(param1:Object, param2:Array, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Npc = null;
         var _loc10_:NPCView = null;
         if(!param1)
         {
            return;
         }
         for(_loc4_ in param1)
         {
            _loc5_ = param1[_loc4_];
            for(_loc6_ in _loc5_)
            {
               _loc7_ = _loc5_[_loc6_];
               _loc8_ = _core.data.gameData[GamePredef.TBL_NPC][_loc7_.npcId];
               if(!(!_loc8_ || Boolean(_loc7_.isDead)))
               {
                  _loc8_.id = _loc7_.index;
                  _loc8_.posX = param2[(_loc7_.lineId - 1) * DOTA_GAME_INIT_CENTER_NUM + _loc7_.pIndex][0] * 10;
                  _loc8_.posY = param2[(_loc7_.lineId - 1) * DOTA_GAME_INIT_CENTER_NUM + _loc7_.pIndex][1] * 10;
                  _loc8_.nid = _loc7_.npcId;
                  _loc8_.busy = false;
                  _core.createNpc(_loc8_);
                  _loc9_ = _core.getNpc(_loc8_.id);
                  if(_loc9_)
                  {
                     _loc9_.dotaData = _loc7_;
                     _loc9_.state = 101;
                     param3[_loc7_.index] = _loc9_;
                     _loc10_ = _core.view.getN(_loc9_.id) as NPCView;
                     if(_loc10_)
                     {
                        if(_loc7_.group == 1)
                        {
                           _loc10_.refreshHpBar(dData.HPA,DOTA_GAME_CENTER_HP,_loc7_.group);
                        }
                        else
                        {
                           _loc10_.refreshHpBar(dData.HPB,DOTA_GAME_CENTER_HP,_loc7_.group);
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DotaPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DotaPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DotaPanelWatcherSetupUtil");
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
      
      private function refreshTowerConfigData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Npc = null;
         var _loc8_:NPCView = null;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               if(_loc5_.isDead)
               {
                  towerDead(_loc5_);
               }
               else
               {
                  _loc6_ = null;
                  if(_loc5_.group == 1)
                  {
                     _loc6_ = towerListA;
                  }
                  else
                  {
                     _loc6_ = towerListB;
                  }
                  _loc7_ = _loc6_[_loc5_.index];
                  _loc7_.hp = _loc5_.hp;
                  _loc8_ = _core.view.getN(_loc7_.id) as NPCView;
                  if(_loc8_)
                  {
                     _loc8_.refreshHpBar(_loc5_.hp,_loc5_.maxhp,_loc5_.group);
                  }
               }
            }
         }
      }
      
      public function __lineBtn3_click(param1:MouseEvent) : void
      {
         lineChange(5);
      }
      
      public function onSynchroData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         refreshNpcConfigData(param1["npcsA"]);
         refreshNpcConfigData(param1["npcsB"]);
         refreshTowerConfigData(param1["towersA"]);
         refreshTowerConfigData(param1["towersB"]);
         dData.HPA = param1.HPA;
         dData.HPB = param1.HPB;
         refreshCenterConfigData(param1["centersA"]);
         refreshCenterConfigData(param1["centersB"]);
      }
      
      public function set towerHPA21(param1:Label) : void
      {
         var _loc2_:Object = this._367457585towerHPA21;
         if(_loc2_ !== param1)
         {
            this._367457585towerHPA21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPA21",_loc2_,param1));
         }
      }
      
      public function set NPCDefenceB(param1:Label) : void
      {
         var _loc2_:Object = this._1392427053NPCDefenceB;
         if(_loc2_ !== param1)
         {
            this._1392427053NPCDefenceB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NPCDefenceB",_loc2_,param1));
         }
      }
      
      private function refreshRank() : void
      {
         var _loc3_:Object = null;
         rankList.removeAll();
         rankLabel.text = Language.DOTA_PANEL[21 + selectRankLine];
         if(!totalRankData)
         {
            rankBtn.enabled = false;
            awardBtn.enabled = rankBtn.enabled;
            return;
         }
         var _loc1_:Array = totalRankData[selectRankLine];
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_];
            if(_loc3_)
            {
               rankList.addItem({
                  "index":_loc2_ + 1,
                  "rank":_loc3_.rank + 1,
                  "playerName":_loc3_.name,
                  "group":_loc3_.group,
                  "score":_loc3_.score,
                  "pvpWin":_loc3_.pvp
               });
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerHPABar() : PropertyBar
      {
         return this._398570065centerHPABar;
      }
      
      public function set towerHPB31(param1:Label) : void
      {
         var _loc2_:Object = this._367456593towerHPB31;
         if(_loc2_ !== param1)
         {
            this._367456593towerHPB31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"towerHPB31",_loc2_,param1));
         }
      }
      
      public function set NPCDefenceA(param1:Label) : void
      {
         var _loc2_:Object = this._1392427054NPCDefenceA;
         if(_loc2_ !== param1)
         {
            this._1392427054NPCDefenceA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NPCDefenceA",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ruleBtn() : BasicGlowButton
      {
         return this._1548631488ruleBtn;
      }
      
      private function initTowers(param1:Object, param2:Array, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Npc = null;
         var _loc10_:NPCView = null;
         if(!param1)
         {
            return;
         }
         for(_loc4_ in param1)
         {
            _loc5_ = param1[_loc4_];
            for(_loc6_ in _loc5_)
            {
               _loc7_ = _loc5_[_loc6_];
               _loc8_ = _core.data.gameData[GamePredef.TBL_NPC][_loc7_.npcId];
               if(!(!_loc8_ || Boolean(_loc7_.isDead)))
               {
                  _loc8_.id = _loc7_.index;
                  _loc8_.posX = param2[(_loc7_.lineId - 1) * DOTA_GAME_INIT_TOWER_NUM + _loc7_.pIndex][0] * 10;
                  _loc8_.posY = param2[(_loc7_.lineId - 1) * DOTA_GAME_INIT_TOWER_NUM + _loc7_.pIndex][1] * 10;
                  _loc8_.nid = _loc7_.npcId;
                  _loc8_.busy = false;
                  _core.createNpc(_loc8_);
                  _loc9_ = _core.getNpc(_loc8_.id);
                  if(_loc9_)
                  {
                     _loc9_.dotaData = _loc7_;
                     _loc9_.state = 101;
                     param3[_loc7_.index] = _loc9_;
                     _loc10_ = _core.view.getN(_loc9_.id) as NPCView;
                     if(_loc10_)
                     {
                        _loc10_.refreshHpBar(_loc7_.hp,_loc7_.maxhp,_loc7_.group);
                     }
                  }
               }
            }
         }
      }
      
      private function _DotaPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DotaPanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "rank";
         _loc1_.itemRenderer = _DotaPanel_ClassFactory1_c();
         _loc1_.setStyle("color",65535);
         BindingManager.executeBindings(this,"_DotaPanel_DataGridColumn1",_DotaPanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get centerHPA() : Label
      {
         return this._655265852centerHPA;
      }
      
      [Bindable(event="propertyChange")]
      public function get NPCDefenceA() : Label
      {
         return this._1392427054NPCDefenceA;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            getRes();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(int(_core.player.mapData.id) == 78)
         {
            infoBtn.enabled = true;
            tabClick(0);
         }
         else
         {
            tabClick(3);
            infoBtn.enabled = false;
         }
         _core.remote.call("dotaGetPanelData",null);
      }
      
      private function cleanNpc() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Npc = null;
         var _loc3_:Object = null;
         var _loc4_:Npc = null;
         if(npcListA)
         {
            for(_loc1_ in npcListA)
            {
               _loc2_ = npcListA[_loc1_];
               _core.view.removeN(_loc2_.id);
            }
            npcListA = {};
         }
         if(npcListB)
         {
            for(_loc3_ in npcListB)
            {
               _loc4_ = npcListB[_loc3_];
               _core.view.removeN(_loc4_.id);
            }
            npcListB = {};
         }
      }
      
      private function _DotaPanel_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DotaPanel_inlineComponent5;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get centerHPB() : Label
      {
         return this._655265851centerHPB;
      }
      
      public function set slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function __awardBtn_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      public function __gotoBtn_click(param1:MouseEvent) : void
      {
         gotoMap();
      }
      
      [Bindable(event="propertyChange")]
      public function get NPCDefenceB() : Label
      {
         return this._1392427053NPCDefenceB;
      }
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set NPCAttackA(param1:Label) : void
      {
         var _loc2_:Object = this._782850296NPCAttackA;
         if(_loc2_ !== param1)
         {
            this._782850296NPCAttackA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NPCAttackA",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ItemSlot
      {
         return this._109532661slot3;
      }
      
      private function cleanCenter() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Npc = null;
         var _loc3_:Object = null;
         var _loc4_:Npc = null;
         if(centerListA)
         {
            for(_loc1_ in centerListA)
            {
               _loc2_ = centerListA[_loc1_];
               _core.view.removeN(_loc2_.id);
            }
            centerListA = {};
         }
         if(centerListB)
         {
            for(_loc3_ in centerListB)
            {
               _loc4_ = centerListB[_loc3_];
               _core.view.removeN(_loc4_.id);
            }
            centerListB = {};
         }
      }
      
      public function set infoBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1945385678infoBtn;
         if(_loc2_ !== param1)
         {
            this._1945385678infoBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoBtn",_loc2_,param1));
         }
      }
   }
}

