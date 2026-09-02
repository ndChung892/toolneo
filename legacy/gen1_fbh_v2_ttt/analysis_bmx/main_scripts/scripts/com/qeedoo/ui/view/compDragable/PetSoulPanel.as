package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.CustomMenuItemRenderer;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PetSoulIcon;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.controls.Menu;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetSoulPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _389876312label_color:Label;
      
      private var _3708v2:Button;
      
      private var _470876863petSoul1:PetSoulIcon;
      
      private var _470876865petSoul3:PetSoulIcon;
      
      private var _470876867petSoul5:PetSoulIcon;
      
      private var _470876869petSoul7:PetSoulIcon;
      
      private var _1599591216resolveBtn:BasicGlowButton;
      
      private var selPetDataTemp:Object;
      
      private var _109757473star3:PetSoulIcon;
      
      private var _470876870petSoul8:PetSoulIcon;
      
      private var bgImage:Class = PetSoulPanel_bgImage;
      
      private var _1712280916petSoul13:PetSoulIcon;
      
      private var _1613040912petPageAc:ArrayCollection = new ArrayCollection();
      
      public var _PetSoulPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3707v1:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _177868763styleAddName:String;
      
      private var _892485645star12:PetSoulIcon;
      
      public var _PetSoulPanel_Label1:Label;
      
      private var _1712280918petSoul15:PetSoulIcon;
      
      private const PAGE_MAX_PET_NUM:int = 14;
      
      private var _core:Core = Core.getInstance();
      
      private var _1740021057soulInfo:Label;
      
      private var _553273472bagCanvas:Canvas;
      
      private var _109757477star7:PetSoulIcon;
      
      private var view:ViewManager;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _892485642star15:PetSoulIcon;
      
      private var _109757474star4:PetSoulIcon;
      
      private var SOULNUM_PET_BAG_ADD:Object = {
         1:20000,
         2:25000,
         3:30000,
         4:35000,
         5:40000,
         6:45000,
         7:50000,
         8:55000
      };
      
      public var selectedPetId:int;
      
      private var _109757471star1:PetSoulIcon;
      
      private var _1712280913petSoul10:PetSoulIcon;
      
      private var _307382965showCanvas:CharactorShowCanvas;
      
      private var _892485647star10:PetSoulIcon;
      
      public var _PetSoulPanel_Image1:Image;
      
      private var _470876864petSoul2:PetSoulIcon;
      
      private var _470876866petSoul4:PetSoulIcon;
      
      public var _PetSoulPanel_BasicGlowButton3:BasicGlowButton;
      
      private var _470876868petSoul6:PetSoulIcon;
      
      private var _1712280915petSoul12:PetSoulIcon;
      
      private var _1739836639soulChip:LinkButton;
      
      private var _109757478star8:PetSoulIcon;
      
      private var _470876871petSoul9:PetSoulIcon;
      
      private var _892485644star13:PetSoulIcon;
      
      private var _109757475star5:PetSoulIcon;
      
      private var _1712280917petSoul14:PetSoulIcon;
      
      private var menu:Menu;
      
      private var _892485641star16:PetSoulIcon;
      
      private var _109757472star2:PetSoulIcon;
      
      private var soulTipDict:Dictionary = new Dictionary();
      
      private var petAC:ArrayCollection;
      
      private var _2022083798soulExp:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1712280919petSoul16:PetSoulIcon;
      
      public var menuData:Array = [{"label":Language.PET_SOUL_S[1]},{"label":Language.PET_SOUL_S[4]}];
      
      private var _607339634pageSelector:PageSelector;
      
      private var _892485646star11:PetSoulIcon;
      
      public var selPetData:Object;
      
      private var _1010174295optBtn:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109757479star9:PetSoulIcon;
      
      public var _index:int;
      
      private var _579057063petDataList:List;
      
      private var _892485643star14:PetSoulIcon;
      
      mx_internal var _bindings:Array = [];
      
      private var _109757476star6:PetSoulIcon;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":770,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetSoulPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":450,
                        "y":31,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetSoulPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":38,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":33,
                                 "width":128,
                                 "height":296,
                                 "styleName":"CSSBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"petDataList",
                                    "events":{
                                       "itemClick":"__petDataList_itemClick",
                                       "mouseDown":"__petDataList_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.right = "0";
                                       this.borderStyle = "none";
                                       this.left = "0";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "horizontalScrollPolicy":"off",
                                          "width":120,
                                          "height":286,
                                          "itemRenderer":_PetSoulPanel_ClassFactory1_c()
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.left = "13";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":337,
                                 "width":126,
                                 "height":28
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"bagCanvas",
                           "stylesFactory":function():void
                           {
                              this.left = "140";
                              this.right = "10";
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "height":350,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetSoulPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":45,
                                          "y":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":20,
                                          "x":10,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":112,
                                                   "y":2,
                                                   "_index":101
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":204,
                                                   "y":40,
                                                   "_index":102
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":236,
                                                   "y":123,
                                                   "_index":103
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":204,
                                                   "y":204,
                                                   "_index":104
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":112,
                                                   "y":242,
                                                   "_index":105
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":32,
                                                   "y":204,
                                                   "_index":106
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":123,
                                                   "_index":107
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":32,
                                                   "y":40,
                                                   "_index":108
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul9",
                                             "events":{"click":"__petSoul9_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":112,
                                                   "y":2,
                                                   "_index":109
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul10",
                                             "events":{"click":"__petSoul10_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":204,
                                                   "y":40,
                                                   "_index":110
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul11",
                                             "events":{"click":"__petSoul11_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":236,
                                                   "y":123,
                                                   "_index":111
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul12",
                                             "events":{"click":"__petSoul12_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":204,
                                                   "y":204,
                                                   "_index":112
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul13",
                                             "events":{"click":"__petSoul13_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":112,
                                                   "y":242,
                                                   "_index":113
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul14",
                                             "events":{"click":"__petSoul14_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":32,
                                                   "y":204,
                                                   "_index":114
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul15",
                                             "events":{"click":"__petSoul15_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":123,
                                                   "_index":115
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"petSoul16",
                                             "events":{"click":"__petSoul16_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":32,
                                                   "y":40,
                                                   "_index":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"v1",
                                             "events":{"click":"__v1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":282,
                                                   "label":"1",
                                                   "styleName":"HorizontalTab"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"v2",
                                             "events":{"click":"__v2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":257,
                                                   "y":282,
                                                   "label":"2",
                                                   "styleName":"HorizontalTab"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"showCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":160,
                                          "y":217,
                                          "height":13,
                                          "width":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.right = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":23,
                                          "width":290,
                                          "height":286,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":5,
                                                   "y":5,
                                                   "_index":1
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":5,
                                                   "_index":2
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145,
                                                   "y":5,
                                                   "_index":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":5,
                                                   "_index":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":5,
                                                   "y":75,
                                                   "_index":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":75,
                                                   "_index":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145,
                                                   "y":75,
                                                   "_index":7
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":75,
                                                   "_index":8
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":5,
                                                   "y":145,
                                                   "_index":9
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":145,
                                                   "_index":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145,
                                                   "y":145,
                                                   "_index":11
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":145,
                                                   "_index":12
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":5,
                                                   "y":215,
                                                   "_index":13
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":215,
                                                   "_index":14
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145,
                                                   "y":215,
                                                   "_index":15
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PetSoulIcon,
                                             "id":"star16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":215,
                                                   "_index":16
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"soulInfo",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":30,
                                          "y":9
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"soulExp",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":200,
                                          "y":8,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"soulChip",
                                    "events":{"click":"__soulChip_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16775802;
                                       this.textDecoration = "underline";
                                       this.fontSize = 12;
                                       this.fontWeight = "normal";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":192,
                                          "y":23,
                                          "label":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"resolveBtn",
                                    "events":{"click":"__resolveBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "210";
                                       this.bottom = "10";
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":85,
                                          "height":20,
                                          "styleName":"BtnNormalRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"label_color",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "175";
                                       this.bottom = "10";
                                       this.color = 65280;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"text":"Lục"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.right = "120";
                                       this.bottom = "10";
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"text":"trở xuống"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"optBtn",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "160";
                                       this.bottom = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":16,
                                          "height":18,
                                          "styleName":"soulOperationBtn"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PetSoulPanel_BasicGlowButton3",
                                    "events":{"click":"___PetSoulPanel_BasicGlowButton3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "25";
                                       this.bottom = "10";
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":85,
                                          "height":20,
                                          "styleName":"BtnNormalRed"
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
      
      private var soulBagAC:ArrayCollection;
      
      private var _1712280914petSoul11:PetSoulIcon;
      
      public function PetSoulPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 770;
         this.height = 410;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___PetSoulPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetSoulPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get star12() : PetSoulIcon
      {
         return this._892485645star12;
      }
      
      public function set star15(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485642star15;
         if(_loc2_ !== param1)
         {
            this._892485642star15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star15",_loc2_,param1));
         }
      }
      
      public function __soulChip_click(param1:MouseEvent) : void
      {
         goToExchangePanel();
      }
      
      public function set star16(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485641star16;
         if(_loc2_ !== param1)
         {
            this._892485641star16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star16",_loc2_,param1));
         }
      }
      
      private function onOpenSoulBag(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _core.player.soulExp = param1.soulExp;
            changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
            if(_core.player.petList)
            {
               for each(_loc2_ in _core.player.petList)
               {
                  if(Boolean(_loc2_) && _loc2_.id == param1.pid)
                  {
                     _loc2_.soulInfo["openNum2"] = param1.openNum2;
                     if(selPetData != null && _loc2_.id == selPetData.id)
                     {
                        updatePetSoulBagView();
                     }
                     break;
                  }
               }
            }
         }
      }
      
      public function showBtn() : void
      {
         if(!resolveBtn.enabled)
         {
            resolveBtn.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star2() : PetSoulIcon
      {
         return this._109757472star2;
      }
      
      private function petDataListClick() : void
      {
         if(petAC.length == 0)
         {
            return;
         }
         if(petDataList.selectedItem == null)
         {
            return;
         }
         selPetData = petDataList.selectedItem.petData;
         showSelPet();
         updatePetSoulBagView();
      }
      
      [Bindable(event="propertyChange")]
      public function get star6() : PetSoulIcon
      {
         return this._109757476star6;
      }
      
      [Bindable(event="propertyChange")]
      public function get star4() : PetSoulIcon
      {
         return this._109757474star4;
      }
      
      [Bindable(event="propertyChange")]
      public function get star8() : PetSoulIcon
      {
         return this._109757478star8;
      }
      
      private function set petPageAc(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1613040912petPageAc;
         if(_loc2_ !== param1)
         {
            this._1613040912petPageAc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petPageAc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star3() : PetSoulIcon
      {
         return this._109757473star3;
      }
      
      [Bindable(event="propertyChange")]
      public function get star5() : PetSoulIcon
      {
         return this._109757475star5;
      }
      
      [Bindable(event="propertyChange")]
      public function get star9() : PetSoulIcon
      {
         return this._109757479star9;
      }
      
      [Bindable(event="propertyChange")]
      public function get star1() : PetSoulIcon
      {
         return this._109757471star1;
      }
      
      [Bindable(event="propertyChange")]
      public function get star7() : PetSoulIcon
      {
         return this._109757477star7;
      }
      
      public function __petSoul14_click(param1:MouseEvent) : void
      {
         openPetSoulBag(6);
      }
      
      public function updateSoulSlotView(param1:int) : void
      {
         var _loc2_:Object = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(Boolean(_core.player.soulBagData) && typeof _core.player.soulBagData != "string")
         {
            _loc2_ = new Object();
            if(Boolean(_core.player.soulBagData["data"]) && Boolean(_core.player.soulBagData["data"][param1]))
            {
               _loc2_ = _core.player.soulBagData["data"][param1];
               _loc2_.soulId = _loc2_.sid;
            }
            else
            {
               _loc2_.soulId = -1;
            }
            if(param1 <= _core.player.soulBagData["open"])
            {
               _loc2_.state = 1;
            }
            else
            {
               _loc2_.state = 0;
            }
            _loc2_._index = param1;
            _loc2_.isPet = false;
            this["star" + param1].setSoulData(_loc2_);
         }
      }
      
      public function set star2(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757472star2;
         if(_loc2_ !== param1)
         {
            this._109757472star2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star2",_loc2_,param1));
         }
      }
      
      public function set star3(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757473star3;
         if(_loc2_ !== param1)
         {
            this._109757473star3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star3",_loc2_,param1));
         }
      }
      
      public function set star4(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757474star4;
         if(_loc2_ !== param1)
         {
            this._109757474star4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star4",_loc2_,param1));
         }
      }
      
      private function _PetSoulPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulPanel_BasicTitleCanvas1.text = param1;
         },"_PetSoulPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulPanel_Label1.text = param1;
         },"_PetSoulPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return petPageAc;
         },function(param1:Object):void
         {
            petDataList.dataProvider = param1;
         },"petDataList.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            petDataList.setStyle("borderSkin",param1);
         },"petDataList.borderSkin");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return bgImage;
         },function(param1:Object):void
         {
            _PetSoulPanel_Image1.source = param1;
         },"_PetSoulPanel_Image1.source");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],0) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul9.toolTip = param1;
         },"petSoul9.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],1) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul10.toolTip = param1;
         },"petSoul10.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],2) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul11.toolTip = param1;
         },"petSoul11.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],3) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul12.toolTip = param1;
         },"petSoul12.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],4) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul13.toolTip = param1;
         },"petSoul13.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],5) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul14.toolTip = param1;
         },"petSoul14.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],6) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul15.toolTip = param1;
         },"petSoul15.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],7) ? Language.PET_SOUL_S[55] : "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petSoul16.toolTip = param1;
         },"petSoul16.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulInfo.text = param1;
         },"soulInfo.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulChip.toolTip = param1;
         },"soulChip.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulChip.setStyle("overSkin",param1);
         },"soulChip.overSkin");
         result[15] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulChip.setStyle("upSkin",param1);
         },"soulChip.upSkin");
         result[16] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulChip.setStyle("downSkin",param1);
         },"soulChip.downSkin");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            resolveBtn.toolTip = param1;
         },"resolveBtn.toolTip");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            resolveBtn.label = param1;
         },"resolveBtn.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetSoulPanel_BasicGlowButton3.label = param1;
         },"_PetSoulPanel_BasicGlowButton3.label");
         result[20] = binding;
         return result;
      }
      
      public function set star8(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757478star8;
         if(_loc2_ !== param1)
         {
            this._109757478star8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star8",_loc2_,param1));
         }
      }
      
      public function set star1(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757471star1;
         if(_loc2_ !== param1)
         {
            this._109757471star1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star1",_loc2_,param1));
         }
      }
      
      public function set star9(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757479star9;
         if(_loc2_ !== param1)
         {
            this._109757479star9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star9",_loc2_,param1));
         }
      }
      
      public function changeSoulPanelInfo(param1:int, param2:int) : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         soulExp.text = Language.PET_SOUL_S[11] + param1;
         soulChip.label = Language.PET_SOUL_S[12] + param2;
         this.changeSlotBtnView();
         if(!resolveBtn.enabled)
         {
            resolveBtn.enabled = true;
         }
      }
      
      public function set star7(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757477star7;
         if(_loc2_ !== param1)
         {
            this._109757477star7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star7",_loc2_,param1));
         }
      }
      
      public function set soulExp(param1:Label) : void
      {
         var _loc2_:Object = this._2022083798soulExp;
         if(_loc2_ !== param1)
         {
            this._2022083798soulExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulExp",_loc2_,param1));
         }
      }
      
      public function set star5(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757475star5;
         if(_loc2_ !== param1)
         {
            this._109757475star5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star5",_loc2_,param1));
         }
      }
      
      public function set star6(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._109757476star6;
         if(_loc2_ !== param1)
         {
            this._109757476star6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label_color() : Label
      {
         return this._389876312label_color;
      }
      
      public function onPetLevelUp(param1:int, param2:int) : void
      {
         var _loc3_:* = undefined;
         if(_core.player.petList)
         {
            for each(_loc3_ in _core.player.petList)
            {
               if(Boolean(_loc3_) && _loc3_.id == param2)
               {
                  _loc3_.soulInfo["openNum"] = param1;
                  if(selPetData != null && _loc3_.id == selPetData.id)
                  {
                     updatePetSoulBagView();
                  }
                  break;
               }
            }
         }
      }
      
      public function __petDataList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function changeView(param1:Number) : void
      {
         var _loc2_:Number = 1;
         while(_loc2_ <= 2)
         {
            this["v" + _loc2_].selected = false;
            _loc2_++;
         }
         this["v" + param1].selected = true;
         updatePetSoulBagView();
      }
      
      public function rollOutHandler(param1:Event) : void
      {
         if(Boolean(soulTipDict[selPetData.id]) && Boolean(soulTipDict[selPetData.id].tip))
         {
            soulTipDict[selPetData.id].tip.hide();
         }
      }
      
      private function clearPage() : void
      {
         petPageAc.removeAll();
      }
      
      public function ___PetSoulPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         goToMakeSoulPanel();
      }
      
      public function updateSoulSlot(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         if(param1.sid > 100)
         {
            _loc2_ = this["petSoul" + (param1.sid - 100)].petSoul.acceptObj;
            _loc4_ = param1.sid - 100;
         }
         else
         {
            _loc2_ = this["star" + param1.sid].petSoul.acceptObj;
            _loc4_ = int(param1.sid);
         }
         if(param1.newSid > 100)
         {
            _loc3_ = this["petSoul" + (param1.newSid - 100)].petSoul.acceptObj;
            _loc5_ = param1.newSid - 100;
         }
         else
         {
            _loc3_ = this["star" + param1.newSid].petSoul.acceptObj;
            _loc5_ = int(param1.newSid);
         }
         switch(param1.type)
         {
            case 1:
               if(Boolean(_core.player.soulBagData["data"]) && Boolean(_core.player.soulBagData["data"][_loc4_]))
               {
                  _loc6_ = _core.player.soulBagData["data"][_loc4_];
                  _core.player.soulBagData["data"][_loc4_] = _core.player.soulBagData["data"][_loc5_];
                  _core.player.soulBagData["data"][_loc5_] = _loc6_;
               }
               updateSoulSlotView(_loc4_);
               updateSoulSlotView(_loc5_);
               break;
            case 2:
               if(Boolean(selPetData.soulInfo["data"]) && Boolean(selPetData.soulInfo["data"][_loc4_]))
               {
                  _loc6_ = selPetData.soulInfo["data"][_loc4_];
                  selPetData.soulInfo["data"][_loc4_] = selPetData.soulInfo["data"][_loc5_];
                  selPetData.soulInfo["data"][_loc5_] = _loc6_;
                  _core.player.petList[selPetData.id] = selPetData;
               }
               updatePetSoulSlotView(_loc4_);
               updatePetSoulSlotView(_loc5_);
               break;
            case 3:
               if(Boolean(selPetData.soulInfo["data"]) && Boolean(selPetData.soulInfo["data"][_loc4_]))
               {
                  _loc6_ = selPetData.soulInfo["data"][_loc4_];
                  selPetData.soulInfo["data"][_loc4_] = _core.player.soulBagData["data"][_loc5_];
                  _core.player.soulBagData["data"][_loc5_] = _loc6_;
                  _core.player.petList[selPetData.id] = selPetData;
               }
               if(soulTipDict[selPetData.id])
               {
                  soulTipDict[selPetData.id].isChanged = true;
               }
               updatePetSoulSlotView(_loc4_);
               updateSoulSlotView(_loc5_);
               break;
            case 4:
               if(Boolean(selPetData.soulInfo["data"]) && Boolean(_core.player.soulBagData["data"]) && Boolean(_core.player.soulBagData["data"][_loc4_]))
               {
                  _loc6_ = _core.player.soulBagData["data"][_loc4_];
                  _core.player.soulBagData["data"][_loc4_] = selPetData.soulInfo["data"][_loc5_];
                  selPetData.soulInfo["data"][_loc5_] = _loc6_;
                  _core.player.petList[selPetData.id] = selPetData;
               }
               if(soulTipDict[selPetData.id])
               {
                  soulTipDict[selPetData.id].isChanged = true;
               }
               updateSoulSlotView(_loc4_);
               updatePetSoulSlotView(_loc5_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get v2() : Button
      {
         return this._3708v2;
      }
      
      public function set soulInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1740021057soulInfo;
         if(_loc2_ !== param1)
         {
            this._1740021057soulInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulInfo",_loc2_,param1));
         }
      }
      
      public function __petSoul11_click(param1:MouseEvent) : void
      {
         openPetSoulBag(3);
      }
      
      public function ___PetSoulPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get v1() : Button
      {
         return this._3707v1;
      }
      
      public function set petSoul10(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280913petSoul10;
         if(_loc2_ !== param1)
         {
            this._1712280913petSoul10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul10",_loc2_,param1));
         }
      }
      
      public function __v1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      private function menuHandler1(param1:MenuEvent) : void
      {
         if(param1.item.label == "Trắng")
         {
            label_color.text = param1.item.label;
            label_color.setStyle("color",16777215);
         }
         else if(param1.item.label == "Lục")
         {
            label_color.text = param1.item.label;
            label_color.setStyle("color",65280);
         }
         else if(param1.item.label == "Lam")
         {
            if(!(Boolean(_core.player.pmLevel) && _core.player.pmLevel >= 5))
            {
               Alert.show(Language.PET_SOUL_S[56],"",Alert.YES,null,null);
               return;
            }
            label_color.text = param1.item.label;
            label_color.setStyle("color",6591981);
         }
      }
      
      public function set petSoul13(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280916petSoul13;
         if(_loc2_ !== param1)
         {
            this._1712280916petSoul13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul13",_loc2_,param1));
         }
      }
      
      public function set petSoul14(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280917petSoul14;
         if(_loc2_ !== param1)
         {
            this._1712280917petSoul14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul14",_loc2_,param1));
         }
      }
      
      public function set petSoul15(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280918petSoul15;
         if(_loc2_ !== param1)
         {
            this._1712280918petSoul15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul15",_loc2_,param1));
         }
      }
      
      public function set petSoul12(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280915petSoul12;
         if(_loc2_ !== param1)
         {
            this._1712280915petSoul12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul12",_loc2_,param1));
         }
      }
      
      public function set petSoul16(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280919petSoul16;
         if(_loc2_ !== param1)
         {
            this._1712280919petSoul16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optBtn() : BasicGlowButton
      {
         return this._1010174295optBtn;
      }
      
      public function set petSoul11(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._1712280914petSoul11;
         if(_loc2_ !== param1)
         {
            this._1712280914petSoul11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas() : CharactorShowCanvas
      {
         return this._307382965showCanvas;
      }
      
      public function set label_color(param1:Label) : void
      {
         var _loc2_:Object = this._389876312label_color;
         if(_loc2_ !== param1)
         {
            this._389876312label_color = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label_color",_loc2_,param1));
         }
      }
      
      public function goToMakeSoulPanel() : void
      {
         _core.view.show(ViewManager.POPU_SOUL_PRODUCT);
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul3() : PetSoulIcon
      {
         return this._470876865petSoul3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul4() : PetSoulIcon
      {
         return this._470876866petSoul4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul5() : PetSoulIcon
      {
         return this._470876867petSoul5;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul6() : PetSoulIcon
      {
         return this._470876868petSoul6;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul1() : PetSoulIcon
      {
         return this._470876863petSoul1;
      }
      
      public function __petSoul16_click(param1:MouseEvent) : void
      {
         openPetSoulBag(8);
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul7() : PetSoulIcon
      {
         return this._470876869petSoul7;
      }
      
      private function initPageSelector() : void
      {
         var _loc1_:int = 0;
         pageSelector.lastBtnLabel = Language.PAGE_SELECTOR[2];
         pageSelector.nextBtnLabel = Language.PAGE_SELECTOR[3];
         pageSelector.btnLastPage.width = 32;
         pageSelector.btnNextPage.width = 32;
         if(petAC.length >= PAGE_MAX_PET_NUM)
         {
            _loc1_ = PAGE_MAX_PET_NUM;
         }
         else
         {
            _loc1_ = petAC.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            petPageAc.addItem(petAC.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(petAC.length,PAGE_MAX_PET_NUM);
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveBtn() : BasicGlowButton
      {
         return this._1599591216resolveBtn;
      }
      
      public function updateSoulBagView() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Object = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(Boolean(_core.player.soulBagData) && typeof _core.player.soulBagData != "string")
         {
            _loc1_ = 1;
            while(_loc1_ <= 16)
            {
               _loc2_ = new Object();
               if(Boolean(_core.player.soulBagData["data"]) && Boolean(_core.player.soulBagData["data"][_loc1_]))
               {
                  _loc2_ = _core.player.soulBagData["data"][_loc1_];
                  _loc2_.soulId = _core.player.soulBagData["data"][_loc1_]["sid"];
               }
               else
               {
                  _loc2_.soulId = -1;
               }
               if(_loc1_ <= _core.player.soulBagData["open"])
               {
                  _loc2_.state = 1;
               }
               else
               {
                  _loc2_.state = 0;
               }
               _loc2_._index = _loc1_;
               _loc2_.isPet = false;
               this["star" + _loc1_].setSoulData(_loc2_);
               _loc1_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul8() : PetSoulIcon
      {
         return this._470876870petSoul8;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul2() : PetSoulIcon
      {
         return this._470876864petSoul2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul9() : PetSoulIcon
      {
         return this._470876871petSoul9;
      }
      
      private function openPetSoulBag(param1:Number) : void
      {
         var func:Function;
         var openNum:*;
         var num:Number = param1;
         if(ToolKit.isSmallThan(selPetData.soulInfo["openNum"],5))
         {
            return;
         }
         if(ToolKit.isSmallOrEqual(num,selPetData.soulInfo["openNum2"]))
         {
            return;
         }
         openNum = ToolKit.add(selPetData.soulInfo["openNum2"],1);
         if(!SOULNUM_PET_BAG_ADD[openNum])
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("openPetSoulBag",new Responder(onOpenSoulBag),selPetData.id);
            }
         };
         Alert.show(Language.PET_SOUL_S[54].replace("{num}",SOULNUM_PET_BAG_ADD[openNum]),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function goToExchangePanel() : void
      {
         _core.view.show(ViewManager.PANEL_SOUL_EXCHANGE);
      }
      
      [Bindable(event="propertyChange")]
      public function get soulChip() : LinkButton
      {
         return this._1739836639soulChip;
      }
      
      public function showOperation(param1:MouseEvent) : void
      {
         var _loc2_:Array = [{
            "label":"Trắng",
            "textColor":"0xFFFFFF"
         },{
            "label":"Lục",
            "textColor":"0x00FF00"
         },{
            "label":"Lam",
            "textColor":"0x6495ED"
         }];
         menu = Menu.createMenu(this,_loc2_,false);
         menu.width = 60;
         menu.rowHeight = 20;
         menu.addEventListener(MenuEvent.ITEM_CLICK,menuHandler1);
         menu.itemRenderer = new ClassFactory(CustomMenuItemRenderer);
         menu.show(param1.stageX,param1.stageY);
      }
      
      private function menuHandler(param1:MenuEvent) : void
      {
         var temp:Object = null;
         var view:Object = null;
         var gfunc:Function = null;
         var func:Function = null;
         var exp:int = 0;
         var obj:Object = null;
         var evt:MenuEvent = param1;
         switch(evt.item.label)
         {
            case Language.PET_SOUL_S[1]:
            case Language.PET_SOUL_S[5]:
               lockSoul();
               break;
            case Language.PET_SOUL_S[4]:
               if(!_core.delPass)
               {
                  gfunc = function(param1:String):void
                  {
                     _core.remote.call("unlockMoney",null,MD5.hash(param1));
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
                  return;
               }
               temp = GameData.d[GamePredef.TBL_PET_SOUL][this["star" + _index].petSoul.acceptObj.soulId];
               if(Number(temp.color) > 1)
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("transformExp",null,_index,false);
                     }
                  };
                  Alert.show(Language.PET_SOUL_S[40].replace("{name}",temp.name),"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  _core.remote.call("transformExp",null,_index,false);
               }
               break;
            case Language.PET_SOUL_S[3]:
               view = _core.view.getUI(ViewManager.PANEL_SOUL_EXP);
               if(view)
               {
                  if(Boolean(this["star" + _index].petSoul.acceptObj) && !this["star" + _index].petSoul.acceptObj.lock)
                  {
                     temp = GameData.d[GamePredef.TBL_PET_SOUL][this["star" + _index].petSoul.acceptObj.soulId];
                     if(!temp)
                     {
                        return;
                     }
                     exp = temp.upExp - this["star" + _index].petSoul.acceptObj.exp;
                     if(exp > _core.player.soulExp)
                     {
                        exp = _core.player.soulExp;
                     }
                     if(exp)
                     {
                        obj = new Object();
                        obj.needExp = exp;
                        obj.exp = int(this["star" + _index].petSoul.acceptObj.exp) + int(temp.exp);
                        obj.upExp = int(temp.upExp) + int(temp.exp);
                        obj.color = GamePredef.CODE_SOUL_COLOR[temp.color];
                        obj.name = temp.name + " Lv." + temp.level;
                        view.expData = obj;
                        view.visible = true;
                     }
                     else
                     {
                        Alert.show(Language.PET_SOUL_S[37],"",Alert.YES,null,null);
                     }
                  }
               }
         }
      }
      
      public function set v2(param1:Button) : void
      {
         var _loc2_:Object = this._3708v2;
         if(_loc2_ !== param1)
         {
            this._3708v2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"v2",_loc2_,param1));
         }
      }
      
      public function __petSoul13_click(param1:MouseEvent) : void
      {
         openPetSoulBag(5);
      }
      
      public function set bagCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._553273472bagCanvas;
         if(_loc2_ !== param1)
         {
            this._553273472bagCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagCanvas",_loc2_,param1));
         }
      }
      
      public function set v1(param1:Button) : void
      {
         var _loc2_:Object = this._3707v1;
         if(_loc2_ !== param1)
         {
            this._3707v1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"v1",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            updatePetList();
         }
      }
      
      public function updateView(param1:Number = -1) : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(this.visible)
         {
            updatePetList();
         }
         updateSoulBagView();
         soulExp.text = Language.PET_SOUL_S[11] + _core.player.soulExp;
         soulChip.label = Language.PET_SOUL_S[12] + _core.player.soulChip;
      }
      
      [Bindable(event="propertyChange")]
      private function get petPageAc() : ArrayCollection
      {
         return this._1613040912petPageAc;
      }
      
      public function rollOverHandler(param1:Event) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:Sort = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         if(Boolean(soulTipDict[selPetData.id]) && Boolean(soulTipDict[selPetData.id].tip) && Boolean(soulTipDict[selPetData.id].isChanged) || !soulTipDict[selPetData.id])
         {
            _loc2_ = new ArrayCollection();
            for(_loc3_ in selPetData.soulInfo["data"])
            {
               if(selPetData.soulInfo["data"][_loc3_])
               {
                  _loc7_ = new Object();
                  _loc8_ = GameData.d[GamePredef.TBL_PET_SOUL][selPetData.soulInfo["data"][_loc3_]["sid"]];
                  _loc7_.temp = _loc8_;
                  _loc7_.sort1 = _loc8_.color;
                  _loc7_.sort2 = _loc8_.type;
                  _loc2_.addItem(_loc7_);
               }
            }
            if(_loc2_.length == 0)
            {
               return;
            }
            _loc4_ = new Sort();
            _loc4_.fields = [new SortField("sort1",true,true,true),new SortField("sort2",true,false,true)];
            _loc2_.sort = _loc4_;
            _loc2_.refresh();
            _loc5_ = new Array();
            for(_loc3_ in _loc2_)
            {
               if(_loc2_[_loc3_])
               {
                  _loc7_ = new Object();
                  _loc7_.name = _loc2_[_loc3_].temp.name + " Lv." + _loc2_[_loc3_].temp.level;
                  _loc7_.color = GamePredef.CODE_SOUL_COLOR[_loc2_[_loc3_].temp.color];
                  _loc7_.desc = _loc2_[_loc3_].temp.desc;
                  _loc5_.push(_loc7_);
               }
            }
            _loc6_ = getToolTip();
            _loc6_.object = _loc5_;
            if(!soulTipDict[selPetData.id])
            {
               _loc7_ = new Object();
               _loc7_.tip = _loc6_;
               _loc7_.isChanged = false;
               soulTipDict[selPetData.id] = _loc7_;
            }
            else
            {
               soulTipDict[selPetData.id].tip = _loc6_;
               soulTipDict[selPetData.id].isChanged = false;
            }
         }
         soulTipDict[selPetData.id].tip.show();
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
      public function get soulExp() : Label
      {
         return this._2022083798soulExp;
      }
      
      private function _PetSoulPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PetSoulPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function __resolveBtn_click(param1:MouseEvent) : void
      {
         resolveAllSoul();
      }
      
      public function __petSoul10_click(param1:MouseEvent) : void
      {
         openPetSoulBag(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get soulInfo() : Label
      {
         return this._1740021057soulInfo;
      }
      
      public function set petDataList(param1:List) : void
      {
         var _loc2_:Object = this._579057063petDataList;
         if(_loc2_ !== param1)
         {
            this._579057063petDataList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petDataList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul10() : PetSoulIcon
      {
         return this._1712280913petSoul10;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul12() : PetSoulIcon
      {
         return this._1712280915petSoul12;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul14() : PetSoulIcon
      {
         return this._1712280917petSoul14;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul16() : PetSoulIcon
      {
         return this._1712280919petSoul16;
      }
      
      public function updatePetList() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:* = undefined;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         petAC = new ArrayCollection();
         var _loc1_:int = 0;
         if(_core.player.petList)
         {
            for each(_loc3_ in _core.player.petList)
            {
               if(Boolean(_loc3_) && Boolean(_loc3_.creatureData))
               {
                  _loc1_++;
                  _loc4_ = PetLogic.expToLv(_loc3_.exp);
                  _loc5_ = "";
                  _loc6_ = ToolKit.getSpliceIndex(_loc3_.petName,40);
                  if(_loc6_ >= 0)
                  {
                     _loc5_ = _loc3_.petName.substr(0,_loc6_) + "…";
                  }
                  else
                  {
                     _loc5_ = _loc3_.petName;
                  }
                  _loc5_ += " Lv." + _loc4_;
                  _loc7_ = {
                     "id":_loc3_.id,
                     "text":_loc5_,
                     "sort1":_loc3_.state,
                     "sort2":_loc3_.growRate,
                     "sort3":_loc4_,
                     "color":GamePredef.CODE_SOUL_COLOR[_core.basic.colorByGrowRate(_loc3_.growRate)],
                     "petData":_loc3_
                  };
                  if(_loc3_.state == 1)
                  {
                     _loc7_.icon = ResManager.ICON_PET_BATTLE;
                  }
                  else if(_loc3_.state == 2)
                  {
                     _loc7_.icon = ResManager.ICON_PET_FOLLOW;
                  }
                  else
                  {
                     _loc7_.icon = ResManager.ICON_PET_STANDBY;
                  }
                  petAC.addItem(_loc7_);
               }
            }
         }
         var _loc2_:Sort = new Sort();
         _loc2_.fields = [new SortField("sort1",true,false,true),new SortField("sort2",true,true,true),new SortField("sort3",true,true,true)];
         petAC.sort = _loc2_;
         petAC.refresh();
         initPageSelector();
         if(petAC.length > 0 && Boolean(selectedPetId))
         {
            for(_loc8_ in petAC)
            {
               if(selectedPetId == petAC[_loc8_].id)
               {
                  if(_loc8_ >= PAGE_MAX_PET_NUM)
                  {
                     pageSelector.pageNo = _loc8_ / PAGE_MAX_PET_NUM;
                     petDataList.selectedIndex = _loc8_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
                  }
                  else
                  {
                     pageSelector.pageNo = 0;
                     petDataList.selectedIndex = _loc8_;
                  }
                  selectedPetId = 0;
               }
            }
         }
         petDataListClick();
      }
      
      public function set optBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1010174295optBtn;
         if(_loc2_ !== param1)
         {
            this._1010174295optBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul13() : PetSoulIcon
      {
         return this._1712280916petSoul13;
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul11() : PetSoulIcon
      {
         return this._1712280914petSoul11;
      }
      
      public function putInToExp(param1:Number) : void
      {
         _core.remote.call("putInToExp",null,_index,param1);
      }
      
      public function set showCanvas(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._307382965showCanvas;
         if(_loc2_ !== param1)
         {
            this._307382965showCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas",_loc2_,param1));
         }
      }
      
      public function changeSlotBtnView() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 16)
         {
            if(this["star" + _loc1_])
            {
               this["star" + _loc1_].changeBtnState();
            }
            if(_loc1_ <= 8)
            {
               if(this["petSoul" + _loc1_])
               {
                  this["petSoul" + _loc1_].changeBtnState();
               }
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul15() : PetSoulIcon
      {
         return this._1712280918petSoul15;
      }
      
      public function __petSoul15_click(param1:MouseEvent) : void
      {
         openPetSoulBag(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get bagCanvas() : Canvas
      {
         return this._553273472bagCanvas;
      }
      
      public function set petSoul4(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876866petSoul4;
         if(_loc2_ !== param1)
         {
            this._470876866petSoul4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul4",_loc2_,param1));
         }
      }
      
      public function set petSoul5(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876867petSoul5;
         if(_loc2_ !== param1)
         {
            this._470876867petSoul5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul5",_loc2_,param1));
         }
      }
      
      public function set petSoul2(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876864petSoul2;
         if(_loc2_ !== param1)
         {
            this._470876864petSoul2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul2",_loc2_,param1));
         }
      }
      
      public function set petSoul6(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876868petSoul6;
         if(_loc2_ !== param1)
         {
            this._470876868petSoul6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul6",_loc2_,param1));
         }
      }
      
      public function set petSoul3(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876865petSoul3;
         if(_loc2_ !== param1)
         {
            this._470876865petSoul3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul3",_loc2_,param1));
         }
      }
      
      public function set petSoul7(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876869petSoul7;
         if(_loc2_ !== param1)
         {
            this._470876869petSoul7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul7",_loc2_,param1));
         }
      }
      
      public function set petSoul1(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876863petSoul1;
         if(_loc2_ !== param1)
         {
            this._470876863petSoul1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul1",_loc2_,param1));
         }
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
         var target:PetSoulPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetSoulPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetSoulPanelWatcherSetupUtil");
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
      
      public function updatePetSoulSlotView(param1:int) : void
      {
         var _loc2_:Object = null;
         if(selPetData.soulInfo["data"])
         {
            _loc2_ = new Object();
            if(selPetData.soulInfo["data"][param1])
            {
               _loc2_ = selPetData.soulInfo["data"][param1];
               _loc2_.soulId = _loc2_.sid;
            }
            else
            {
               _loc2_.soulId = -1;
            }
            if(param1 <= Number(selPetData.soulInfo["openNum"]))
            {
               _loc2_.state = 1;
            }
            else if(param1 > 8 && param1 <= ToolKit.add(selPetData.soulInfo["openNum2"],8))
            {
               _loc2_.state = 1;
            }
            else
            {
               _loc2_.state = 0;
            }
            _loc2_._index = param1 + 100;
            _loc2_.isPet = true;
            _loc2_.petId = selPetData.id;
            this["petSoul" + param1].setSoulData(_loc2_);
         }
      }
      
      public function set petSoul9(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876871petSoul9;
         if(_loc2_ !== param1)
         {
            this._470876871petSoul9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul9",_loc2_,param1));
         }
      }
      
      public function set petSoul8(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._470876870petSoul8;
         if(_loc2_ !== param1)
         {
            this._470876870petSoul8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul8",_loc2_,param1));
         }
      }
      
      public function set resolveBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1599591216resolveBtn;
         if(_loc2_ !== param1)
         {
            this._1599591216resolveBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveBtn",_loc2_,param1));
         }
      }
      
      private function _PetSoulPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_SOUL_PANEL[0];
         _loc1_ = Language.PET_SOUL_S[23];
         _loc1_ = petPageAc;
         _loc1_ = null;
         _loc1_ = bgImage;
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],0) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],1) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],2) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],3) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],4) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],5) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],6) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = ToolKit.isBigThan(selPetData.soulInfo["openNum2"],7) ? Language.PET_SOUL_S[55] : "";
         _loc1_ = Language.PET_SOUL_S[26];
         _loc1_ = Language.PET_SOUL_S[42];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.PET_SOUL_S[41];
         _loc1_ = Language.PET_SOUL_PANEL[1];
         _loc1_ = Language.PET_SOUL_PANEL[2];
      }
      
      protected function getToolTip() : Object
      {
         return _core.view.getUI(ViewManager.TOOLTIP_ALL_SOUL);
      }
      
      [Bindable(event="propertyChange")]
      public function get petDataList() : List
      {
         return this._579057063petDataList;
      }
      
      public function resolveAllSoul() : void
      {
         var _loc1_:int = 1;
         if(label_color.text == "Lam")
         {
            _loc1_ = 3;
            if(Boolean(_core.player.pmLevel) && _core.player.pmLevel >= 5)
            {
               _core.remote.call("transformExp",null,_loc1_,true);
            }
            else
            {
               Alert.show(Language.PET_SOUL_S[56],"",Alert.YES,null,null);
            }
         }
         else
         {
            if(label_color.text == "Lục")
            {
               _loc1_ = 2;
            }
            if(Boolean(_core.player.pmLevel) && _core.player.pmLevel > 0)
            {
               _core.remote.call("transformExp",null,_loc1_,true);
            }
            else
            {
               Alert.show(Language.PET_SOUL_S[44],"",Alert.YES,null,null);
            }
         }
      }
      
      public function __petSoul12_click(param1:MouseEvent) : void
      {
         openPetSoulBag(4);
      }
      
      public function __petDataList_itemClick(param1:ListEvent) : void
      {
         petDataListClick();
      }
      
      private function showSelPet() : void
      {
         var _loc1_:String = null;
         if(selPetData)
         {
            selPetDataTemp = selPetData.creatureData;
            if(!selPetDataTemp)
            {
               return;
            }
            _loc1_ = ResManager.getResUrl(selPetDataTemp.resCode);
            if(showCanvas.url != _loc1_)
            {
               showCanvas.url = _loc1_;
            }
            showCanvas.color = selPetData.colorCode ? Number(selPetData.colorCode) : Number(selPetDataTemp.colorCode);
         }
      }
      
      private function lockSoul() : void
      {
         _core.remote.call("lockSoul",null,_index);
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            petPageAc.addItem(petAC.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      private function set styleAddName(param1:String) : void
      {
         var _loc2_:Object = this._177868763styleAddName;
         if(_loc2_ !== param1)
         {
            this._177868763styleAddName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"styleAddName",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         var _loc1_:int = 0;
         v1.selected = true;
         v2.selected = false;
         updateView();
         if(Boolean(petAC && petAC.length > 0) && Boolean(selPetData) && !petDataList.selectedItem)
         {
            _loc1_ = 0;
            while(_loc1_ <= petAC.length)
            {
               if(_loc1_ >= PAGE_MAX_PET_NUM)
               {
                  pageSelector.pageNo = _loc1_ / PAGE_MAX_PET_NUM;
                  petDataList.selectedIndex = _loc1_ - PAGE_MAX_PET_NUM * pageSelector.pageNo;
               }
               else
               {
                  pageSelector.pageNo = 0;
                  petDataList.selectedIndex = _loc1_;
               }
               if(petDataList.selectedItem.petData.id == selPetData.id)
               {
                  petDataListClick();
                  break;
               }
               _loc1_++;
            }
         }
         soulInfo.addEventListener(MouseEvent.ROLL_OVER,rollOverHandler);
         soulInfo.addEventListener(MouseEvent.ROLL_OUT,rollOutHandler);
         optBtn.addEventListener(MouseEvent.CLICK,showOperation);
      }
      
      [Bindable(event="propertyChange")]
      private function get styleAddName() : String
      {
         return this._177868763styleAddName;
      }
      
      public function set soulChip(param1:LinkButton) : void
      {
         var _loc2_:Object = this._1739836639soulChip;
         if(_loc2_ !== param1)
         {
            this._1739836639soulChip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulChip",_loc2_,param1));
         }
      }
      
      public function set star10(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485647star10;
         if(_loc2_ !== param1)
         {
            this._892485647star10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star10",_loc2_,param1));
         }
      }
      
      private function updatePetSoulBagView() : void
      {
         var _loc2_:Object = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 16)
         {
            if(v2.selected && _loc1_ >= 9)
            {
               this["petSoul" + _loc1_].visible = true;
            }
            else if(!v2.selected && _loc1_ < 9)
            {
               this["petSoul" + _loc1_].visible = true;
            }
            else
            {
               this["petSoul" + _loc1_].visible = false;
            }
            _loc2_ = new Object();
            if(Boolean(selPetData.soulInfo["data"]) && Boolean(selPetData.soulInfo["data"][_loc1_]))
            {
               _loc2_ = selPetData.soulInfo["data"][_loc1_];
               _loc2_.soulId = _loc2_.sid;
            }
            else
            {
               _loc2_.soulId = -1;
            }
            if(_loc1_ <= Number(selPetData.soulInfo["openNum"]))
            {
               _loc2_.state = 1;
            }
            else if(_loc1_ > 8 && _loc1_ <= ToolKit.add(selPetData.soulInfo["openNum2"],8))
            {
               _loc2_.state = 1;
            }
            else
            {
               _loc2_.state = 0;
            }
            _loc2_._index = _loc1_ + 100;
            _loc2_.isPet = true;
            _loc2_.petId = selPetData.id;
            this["petSoul" + _loc1_].setSoulData(_loc2_);
            _loc1_++;
         }
      }
      
      public function __v2_click(param1:MouseEvent) : void
      {
         changeView(2);
      }
      
      public function set star12(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485645star12;
         if(_loc2_ !== param1)
         {
            this._892485645star12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star12",_loc2_,param1));
         }
      }
      
      public function set star13(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485644star13;
         if(_loc2_ !== param1)
         {
            this._892485644star13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star13",_loc2_,param1));
         }
      }
      
      public function set star14(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485643star14;
         if(_loc2_ !== param1)
         {
            this._892485643star14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star14",_loc2_,param1));
         }
      }
      
      public function __petSoul9_click(param1:MouseEvent) : void
      {
         openPetSoulBag(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get star10() : PetSoulIcon
      {
         return this._892485647star10;
      }
      
      [Bindable(event="propertyChange")]
      public function get star11() : PetSoulIcon
      {
         return this._892485646star11;
      }
      
      public function set star11(param1:PetSoulIcon) : void
      {
         var _loc2_:Object = this._892485646star11;
         if(_loc2_ !== param1)
         {
            this._892485646star11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star14() : PetSoulIcon
      {
         return this._892485643star14;
      }
      
      [Bindable(event="propertyChange")]
      public function get star13() : PetSoulIcon
      {
         return this._892485644star13;
      }
      
      public function showMenu(param1:int, param2:int, param3:int) : void
      {
         if(param1 < 100)
         {
            if(this["star" + param1].petSoul.acceptObj)
            {
               if(this["star" + param1].petSoul.acceptObj.lock)
               {
                  menuData[0]["label"] = Language.PET_SOUL_S[5];
               }
               else
               {
                  menuData[0]["label"] = Language.PET_SOUL_S[1];
               }
            }
         }
         _index = param1;
         menu = Menu.createMenu(this,menuData,false);
         menu.width = 60;
         menu.rowHeight = 20;
         if(param1 % 4 == 0)
         {
            param2 = param2 - 60 - 15;
         }
         if(Math.floor(param1 / 4) >= 3)
         {
            param3 -= menu.rowHeight * menu.rowCount;
         }
         menu.addEventListener(MenuEvent.ITEM_CLICK,menuHandler);
         menu.show(param2,param3);
      }
      
      [Bindable(event="propertyChange")]
      public function get star15() : PetSoulIcon
      {
         return this._892485642star15;
      }
      
      [Bindable(event="propertyChange")]
      public function get star16() : PetSoulIcon
      {
         return this._892485641star16;
      }
   }
}

